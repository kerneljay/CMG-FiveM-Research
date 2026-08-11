--[[
    LEVEL 1 BEGINNER GUIDE — Ladders
    =====================================

    File: cmg/prod/client/lfb/cl_ladders.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: fire-service gameplay, specifically the Ladders feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 14
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
local dataTable, dataTable4, dataTable5, textValue12, numberValue2, workValue3, numberValue3, flag15, flag16, dataTable8, eventHandlerRegistration, dataTable2, vector3Builder, vector3Builder2, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, numberValue
dataTable = {}
dataTable4 = {}
dataTable4.firetruk = 2
dataTable4.lfb1 = 2
dataTable4.lfb2 = 2
dataTable.Vehicles = dataTable4
dataTable4 = {}
dataTable5 = {}
textValue12 = "no"
numberValue2 = 0
workValue3 = nil
numberValue3 = 0
flag15 = true
flag16 = false
dataTable8 = {}
eventHandlerRegistration = {}
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 0.0
textValue = -0.45
textValue2 = -1.5
vector3Builder = vector3Builder(vector3Builder2, textValue, textValue2)
vector3Builder2 = "laddersbase"
textValue = "get_on_bottom_front_stand_high"
dataTable2[1] = vector3Builder
dataTable2[2] = vector3Builder2
dataTable2[3] = textValue
vector3Builder = {}
vector3Builder2 = vector3
textValue = 0.0
textValue2 = -0.3
textValue3 = -1.1
vector3Builder2 = vector3Builder2(textValue, textValue2, textValue3)
textValue = "laddersbase"
textValue2 = "climb_up"
vector3Builder[1] = vector3Builder2
vector3Builder[2] = textValue
vector3Builder[3] = textValue2
vector3Builder2 = {}
textValue = vector3
textValue2 = 0.0
textValue3 = -0.3
textValue4 = -0.7
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = "laddersbase"
textValue3 = "climb_up"
vector3Builder2[1] = textValue
vector3Builder2[2] = textValue2
vector3Builder2[3] = textValue3
textValue = {}
textValue2 = vector3
textValue3 = 0.0
textValue4 = -0.3
textValue5 = -0.3
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = "laddersbase"
textValue4 = "climb_up"
textValue[1] = textValue2
textValue[2] = textValue3
textValue[3] = textValue4
textValue2 = {}
textValue3 = vector3
textValue4 = 0.0
textValue5 = -0.3
textValue6 = 0.1
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = "laddersbase"
textValue5 = "climb_up"
textValue2[1] = textValue3
textValue2[2] = textValue4
textValue2[3] = textValue5
textValue3 = {}
textValue4 = vector3
textValue5 = 0.0
textValue6 = -0.3
textValue7 = 0.5
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = "laddersbase"
textValue6 = "climb_up"
textValue3[1] = textValue4
textValue3[2] = textValue5
textValue3[3] = textValue6
textValue4 = {}
textValue5 = vector3
textValue6 = 0.0
textValue7 = -0.3
textValue8 = 0.9
textValue5 = textValue5(textValue6, textValue7, textValue8)
textValue6 = "laddersbase"
textValue7 = "climb_up"
textValue4[1] = textValue5
textValue4[2] = textValue6
textValue4[3] = textValue7
textValue5 = {}
textValue6 = vector3
textValue7 = 0.0
textValue8 = -0.3
textValue9 = 1.3
textValue6 = textValue6(textValue7, textValue8, textValue9)
textValue7 = "laddersbase"
textValue8 = "climb_up"
textValue5[1] = textValue6
textValue5[2] = textValue7
textValue5[3] = textValue8
textValue6 = {}
textValue7 = vector3
textValue8 = 0.0
textValue9 = -0.3
textValue10 = 1.7
textValue7 = textValue7(textValue8, textValue9, textValue10)
textValue8 = "laddersbase"
textValue9 = "climb_up"
textValue6[1] = textValue7
textValue6[2] = textValue8
textValue6[3] = textValue9
textValue7 = {}
textValue8 = vector3
textValue9 = 0.0
textValue10 = -0.3
textValue11 = 2.1
textValue8 = textValue8(textValue9, textValue10, textValue11)
textValue9 = "laddersbase"
textValue10 = "climb_up"
textValue7[1] = textValue8
textValue7[2] = textValue9
textValue7[3] = textValue10
textValue8 = {}
textValue9 = vector3
textValue10 = 0.0
textValue11 = -0.4
numberValue = 2.5
textValue9 = textValue9(textValue10, textValue11, numberValue)
textValue10 = "laddersbase"
textValue11 = "get_off_top_back_stand_left_hand"
textValue8[1] = textValue9
textValue8[2] = textValue10
textValue8[3] = textValue11
eventHandlerRegistration[1] = dataTable2
eventHandlerRegistration[2] = vector3Builder
eventHandlerRegistration[3] = vector3Builder2
eventHandlerRegistration[4] = textValue
eventHandlerRegistration[5] = textValue2
eventHandlerRegistration[6] = textValue3
eventHandlerRegistration[7] = textValue4
eventHandlerRegistration[8] = textValue5
eventHandlerRegistration[9] = textValue6
eventHandlerRegistration[10] = textValue7
eventHandlerRegistration[11] = textValue8
dataTable8.up = eventHandlerRegistration
eventHandlerRegistration = {}
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 0.0
textValue = -0.4
textValue2 = 2.5
vector3Builder = vector3Builder(vector3Builder2, textValue, textValue2)
vector3Builder2 = "laddersbase"
textValue = "get_on_top_front"
dataTable2[1] = vector3Builder
dataTable2[2] = vector3Builder2
dataTable2[3] = textValue
vector3Builder = {}
vector3Builder2 = vector3
textValue = 0.0
textValue2 = -0.3
textValue3 = 2.1
vector3Builder2 = vector3Builder2(textValue, textValue2, textValue3)
textValue = "laddersbase"
textValue2 = "climb_down"
vector3Builder[1] = vector3Builder2
vector3Builder[2] = textValue
vector3Builder[3] = textValue2
vector3Builder2 = {}
textValue = vector3
textValue2 = 0.0
textValue3 = -0.3
textValue4 = 1.7
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = "laddersbase"
textValue3 = "climb_down"
vector3Builder2[1] = textValue
vector3Builder2[2] = textValue2
vector3Builder2[3] = textValue3
textValue = {}
textValue2 = vector3
textValue3 = 0.0
textValue4 = -0.3
textValue5 = 1.3
textValue2 = textValue2(textValue3, textValue4, textValue5)
textValue3 = "laddersbase"
textValue4 = "climb_down"
textValue[1] = textValue2
textValue[2] = textValue3
textValue[3] = textValue4
textValue2 = {}
textValue3 = vector3
textValue4 = 0.0
textValue5 = -0.3
textValue6 = 0.9
textValue3 = textValue3(textValue4, textValue5, textValue6)
textValue4 = "laddersbase"
textValue5 = "climb_down"
textValue2[1] = textValue3
textValue2[2] = textValue4
textValue2[3] = textValue5
textValue3 = {}
textValue4 = vector3
textValue5 = 0.0
textValue6 = -0.3
textValue7 = 0.5
textValue4 = textValue4(textValue5, textValue6, textValue7)
textValue5 = "laddersbase"
textValue6 = "climb_down"
textValue3[1] = textValue4
textValue3[2] = textValue5
textValue3[3] = textValue6
textValue4 = {}
textValue5 = vector3
textValue6 = 0.0
textValue7 = -0.3
textValue8 = 0.1
textValue5 = textValue5(textValue6, textValue7, textValue8)
textValue6 = "laddersbase"
textValue7 = "climb_down"
textValue4[1] = textValue5
textValue4[2] = textValue6
textValue4[3] = textValue7
textValue5 = {}
textValue6 = vector3
textValue7 = 0.0
textValue8 = -0.3
textValue9 = -0.3
textValue6 = textValue6(textValue7, textValue8, textValue9)
textValue7 = "laddersbase"
textValue8 = "climb_down"
textValue5[1] = textValue6
textValue5[2] = textValue7
textValue5[3] = textValue8
textValue6 = {}
textValue7 = vector3
textValue8 = 0.0
textValue9 = -0.3
textValue10 = -0.7
textValue7 = textValue7(textValue8, textValue9, textValue10)
textValue8 = "laddersbase"
textValue9 = "climb_down"
textValue6[1] = textValue7
textValue6[2] = textValue8
textValue6[3] = textValue9
textValue7 = {}
textValue8 = vector3
textValue9 = 0.0
textValue10 = -0.3
textValue11 = -1.1
textValue8 = textValue8(textValue9, textValue10, textValue11)
textValue9 = "laddersbase"
textValue10 = "climb_down"
textValue7[1] = textValue8
textValue7[2] = textValue9
textValue7[3] = textValue10
textValue8 = {}
textValue9 = vector3
textValue10 = 0.0
textValue11 = -0.45
numberValue = -1.5
textValue9 = textValue9(textValue10, textValue11, numberValue)
textValue10 = "laddersbase"
textValue11 = "get_off_bottom_front_stand"
textValue8[1] = textValue9
textValue8[2] = textValue10
textValue8[3] = textValue11
eventHandlerRegistration[1] = dataTable2
eventHandlerRegistration[2] = vector3Builder
eventHandlerRegistration[3] = vector3Builder2
eventHandlerRegistration[4] = textValue
eventHandlerRegistration[5] = textValue2
eventHandlerRegistration[6] = textValue3
eventHandlerRegistration[7] = textValue4
eventHandlerRegistration[8] = textValue5
eventHandlerRegistration[9] = textValue6
eventHandlerRegistration[10] = textValue7
eventHandlerRegistration[11] = textValue8
dataTable8.down = eventHandlerRegistration
eventHandlerRegistration = AddEventHandler
dataTable2 = "onClientMapStart"
-- Beginner: this function runs when client event "onClientMapStart" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, arg4, dataTable6, dataTable7
  arg1 = TriggerServerEvent
  arg2 = "Ladders:Server:PersonalRequest"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:PersonalRequest".
  arg1(arg2)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/ladder"
  arg4 = "Type an action."
  dataTable6 = {}
  dataTable7 = {}
  dataTable7.name = "action"
  dataTable7.help = "collect store"
  dataTable6[1] = dataTable7
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(arg2, arg3, arg4, dataTable6)
end
-- Beginner: Register a client-side event handler. Event/command: "onClientMapStart".
eventHandlerRegistration(dataTable2, vector3Builder)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local arg1, arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityCoords
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, arg4)
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = arg1
  dataTable6 = 0.0
  dataTable7 = 10.0
  textValue13 = 0.0
  arg3 = arg3(arg4, dataTable6, dataTable7, textValue13)
  arg4 = StartShapeTestRay
  dataTable6 = arg2.x
  dataTable7 = arg2.y
  textValue13 = arg2.z
  workValue4 = arg3.x
  workValue5 = arg3.y
  modelHash = arg3.z
  iterator = 10
  workValue = arg1
  flag = 0
  arg4 = arg4(dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag)
  dataTable6 = GetRaycastResult
  dataTable7 = arg4
  dataTable6, dataTable7, textValue13, workValue4, workValue5 = dataTable6(dataTable7)
  modelHash = Vdist
  iterator = arg2.x
  workValue = arg2.y
  flag = arg2.z
  flag2 = textValue13.x
  flag3 = textValue13.y
  flag4 = textValue13.z
  modelHash = modelHash(iterator, workValue, flag, flag2, flag3, flag4)
  if modelHash < 3 then
    modelHash = GetEntityModel
    iterator = workValue5
    -- Beginner: result below is modelHash.
    modelHash = modelHash(iterator)
    iterator = pairs
    workValue = dataTable.Vehicles
    iterator, workValue, flag, flag2 = iterator(workValue)
    for flag3, flag4 in iterator, workValue, flag, flag2 do
      hashValue = GetHashKey
      dataTable3 = flag3
      -- Beginner: result below is hash.
      hashValue = hashValue(dataTable3)
      if hashValue == modelHash then
        dataTable3 = {}
        flag5 = workValue5
        flag6 = flag4
        dataTable3[1] = flag5
        dataTable3[2] = flag6
        return dataTable3
      end
    end
    iterator = notify
    workValue = "~r~This vehicles does not carry ladders!"
    flag = true
    -- Beginner: Show a notification to the player.
    iterator(workValue, flag)
    iterator = false
    return iterator
  else
    modelHash = notify
    iterator = "~r~No ladder carrying vehicle found!"
    workValue = true
    modelHash(iterator, workValue)
    modelHash = false
    return modelHash
  end
end
dataTable2 = RegisterCommand
vector3Builder = "ladder"
-- Beginner: this function is the command handler for "ladder".

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1, arg2) ===
function vector3Builder2(arg1, arg2)
  local arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash
  arg3 = CMG
  arg3 = arg3.hasClientPermission
  arg4 = "lfb.onduty.permission"
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = arg2[1]
  if arg3 then
    arg3 = arg2[1]
    arg4 = arg3
    arg3 = arg3.lower
    arg3 = arg3(arg4)
    if "collect" == arg3 then
      arg4 = numberValue2
      if 0 == arg4 then
        arg4 = eventHandlerRegistration
        arg4 = arg4()
        if arg4 then
          dataTable6 = TriggerServerEvent
          dataTable7 = "Ladders:Server:Vehicles"
          textValue13 = "check"
          workValue4 = VehToNet
          workValue5 = arg4[1]
          workValue4 = workValue4(workValue5)
          workValue5 = arg4[2]
          modelHash = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Vehicles".
          dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash)
        end
      else
        arg4 = notify
        dataTable6 = "~y~You already carrying a ladder!"
        dataTable7 = true
        -- Beginner: Show a notification to the player.
        arg4(dataTable6, dataTable7)
      end
    elseif "store" == arg3 then
      arg4 = numberValue2
      if 0 ~= arg4 then
        arg4 = eventHandlerRegistration
        arg4 = arg4()
        if arg4 then
          dataTable6 = TriggerServerEvent
          dataTable7 = "Ladders:Server:Vehicles"
          textValue13 = "check"
          workValue4 = VehToNet
          workValue5 = arg4[1]
          workValue4 = workValue4(workValue5)
          workValue5 = arg4[2]
          modelHash = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Vehicles".
          dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash)
        end
      else
        arg4 = notify
        dataTable6 = "~y~You do not have a ladder out!"
        dataTable7 = true
        -- Beginner: Show a notification to the player.
        arg4(dataTable6, dataTable7)
      end
    else
      arg4 = notify
      dataTable6 = "~r~Invalid action! Use: collect or store."
      dataTable7 = true
      arg4(dataTable6, dataTable7)
    end
  else
    arg3 = notify
    arg4 = "~r~No action specified!"
    dataTable6 = true
    -- Beginner: Show a notification to the player.
    arg3(arg4, dataTable6)
  end
end
textValue = false
-- Beginner: Register a chat/console command. Event/command: "ladder".
dataTable2(vector3Builder, vector3Builder2, textValue)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:VehicleCheck"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:VehicleCheck".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:VehicleCheck"
-- Beginner: this function runs when client event "Ladders:Client:VehicleCheck" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1, arg2, arg3, arg4) ===
function vector3Builder2(arg1, arg2, arg3, arg4)
  local dataTable6, dataTable7, textValue13, workValue4
  if arg4 then
    if arg2 < arg3 then
      dataTable6 = TriggerServerEvent
      dataTable7 = "Ladders:Server:Ladders:Local"
      textValue13 = "remove"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
      dataTable6(dataTable7, textValue13)
      dataTable6 = TriggerServerEvent
      dataTable7 = "Ladders:Server:Vehicles"
      textValue13 = "add"
      workValue4 = arg1
      dataTable6(dataTable7, textValue13, workValue4)
      dataTable6 = notify
      dataTable7 = "~g~Ladder stored. This vehicle can store "
      textValue13 = arg2 + 1
      textValue13 = arg3 - textValue13
      workValue4 = " more ladders."
      dataTable7 = dataTable7 .. textValue13 .. workValue4
      textValue13 = false
      -- Beginner: Show a notification to the player.
      dataTable6(dataTable7, textValue13)
    else
      dataTable6 = notify
      dataTable7 = "~r~This vehicle can only carry "
      textValue13 = arg3
      workValue4 = " ladders!"
      dataTable7 = dataTable7 .. textValue13 .. workValue4
      textValue13 = true
      dataTable6(dataTable7, textValue13)
    end
  elseif arg2 > 0 then
    dataTable6 = TriggerServerEvent
    dataTable7 = "Ladders:Server:Ladders:Local"
    textValue13 = "add"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    dataTable6(dataTable7, textValue13)
    dataTable6 = TriggerServerEvent
    dataTable7 = "Ladders:Server:Vehicles"
    textValue13 = "remove"
    workValue4 = arg1
    dataTable6(dataTable7, textValue13, workValue4)
    dataTable6 = notify
    dataTable7 = "~g~Ladder collected from vehicle. This vehicle has "
    textValue13 = arg2 - 1
    workValue4 = " more ladders."
    dataTable7 = dataTable7 .. textValue13 .. workValue4
    textValue13 = false
    -- Beginner: Show a notification to the player.
    dataTable6(dataTable7, textValue13)
  else
    dataTable6 = notify
    dataTable7 = "~r~This vehicle has no more ladders!"
    textValue13 = true
    dataTable6(dataTable7, textValue13)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:VehicleCheck".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:Local:Add"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Local:Add".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:Local:Add"
-- Beginner: this function runs when client event "Ladders:Client:Local:Add" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1) ===
function vector3Builder2(arg1)
  local arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if -1 ~= arg3 then
    arg4 = dataTable5
    arg4 = arg4[arg3]
    if not arg4 then
      arg4 = GetOffsetFromEntityInWorldCoords
      dataTable6 = arg3
      dataTable7 = 0.0
      textValue13 = 1.2
      workValue4 = 1.32
      arg4 = arg4(dataTable6, dataTable7, textValue13, workValue4)
      dataTable6 = CreateObjectNoOffset
      dataTable7 = GetHashKey
      textValue13 = "prop_byard_ladder01"
      -- Beginner: result below is hash.
      dataTable7 = dataTable7(textValue13)
      textValue13 = arg4.x
      workValue4 = arg4.y
      workValue5 = arg4.z
      modelHash = false
      iterator = false
      workValue = false
      -- Beginner: result below is objectEntity.
      dataTable6 = dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue)
      dataTable7 = SetEntityAsMissionEntity
      textValue13 = dataTable6
      workValue4 = false
      workValue5 = false
      dataTable7(textValue13, workValue4, workValue5)
      dataTable7 = SetEntityCollision
      textValue13 = dataTable6
      workValue4 = false
      workValue5 = true
      dataTable7(textValue13, workValue4, workValue5)
      dataTable7 = dataTable5
      dataTable7[arg3] = dataTable6
      dataTable7 = GetPlayerServerId
      textValue13 = PlayerId
      textValue13, workValue4, workValue5, modelHash, iterator, workValue = textValue13()
      -- Beginner: result below is serverId.
      dataTable7 = dataTable7(textValue13, workValue4, workValue5, modelHash, iterator, workValue)
      if dataTable7 == arg1 then
        numberValue2 = dataTable6
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Local:Add".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:Local:Remove"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Local:Remove".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:Local:Remove"
-- Beginner: this function runs when client event "Ladders:Client:Local:Remove" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1) ===
function vector3Builder2(arg1)
  local arg2, arg3, arg4, dataTable6
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if -1 ~= arg3 then
    arg4 = dataTable5
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = DeleteObject
      dataTable6 = dataTable5
      dataTable6 = dataTable6[arg3]
      arg4(dataTable6)
      arg4 = SetEntityAsNoLongerNeeded
      dataTable6 = dataTable5
      dataTable6 = dataTable6[arg3]
      arg4(dataTable6)
      arg4 = ClearPedTasksImmediately
      dataTable6 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataTable6 = dataTable6()
      arg4(dataTable6)
      arg4 = dataTable5
      arg4[arg3] = nil
      arg4 = GetPlayerServerId
      dataTable6 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      dataTable6 = dataTable6()
      -- Beginner: result below is serverId.
      arg4 = arg4(dataTable6)
      if arg4 == arg1 then
        arg4 = 0
        numberValue2 = arg4
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Local:Remove".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Bounce:ServerValues"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Bounce:ServerValues".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Bounce:ServerValues"
-- Beginner: this function runs when client event "Ladders:Bounce:ServerValues" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1) ===
function vector3Builder2(arg1)
  local arg2
  dataTable4 = arg1
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Bounce:ServerValues".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:DropLadder"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:DropLadder".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:DropLadder"
-- Beginner: this function runs when client event "Ladders:Client:DropLadder" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: none) ===
function vector3Builder2()
  local arg1, arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6
  arg1 = numberValue2
  if 0 ~= arg1 then
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.requestEntitySpawn
    arg3 = "lfb_ladder_object"
    arg2(arg3)
    arg2 = GetOffsetFromEntityInWorldCoords
    arg3 = arg1
    arg4 = 0.0
    dataTable6 = 0.0
    dataTable7 = -500.0
    arg2 = arg2(arg3, arg4, dataTable6, dataTable7)
    arg3 = CreateObjectNoOffset
    arg4 = GetHashKey
    dataTable6 = "prop_byard_ladder01"
    -- Beginner: result below is hash.
    arg4 = arg4(dataTable6)
    dataTable6 = arg2.x
    dataTable7 = arg2.y
    textValue13 = arg2.z
    workValue4 = true
    workValue5 = false
    modelHash = false
    -- Beginner: result below is objectEntity.
    arg3 = arg3(arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash)
    arg4 = ObjToNet
    dataTable6 = arg3
    arg4 = arg4(dataTable6)
    dataTable6 = SetEntityAsMissionEntity
    dataTable7 = arg3
    textValue13 = false
    workValue4 = false
    dataTable6(dataTable7, textValue13, workValue4)
    dataTable6 = ClearPedTasksImmediately
    dataTable7 = arg1
    dataTable6(dataTable7)
    dataTable6 = SetEntityRotation
    dataTable7 = arg3
    textValue13 = 0.0
    workValue4 = 90.0
    workValue5 = 90.0
    modelHash = 2
    iterator = false
    dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash, iterator)
    dataTable6 = GetOffsetFromEntityInWorldCoords
    dataTable7 = arg1
    textValue13 = 0.5
    workValue4 = 0.0
    workValue5 = 0.0
    dataTable6 = dataTable6(dataTable7, textValue13, workValue4, workValue5)
    dataTable7 = SetEntityCoords
    textValue13 = arg3
    workValue4 = dataTable6.x
    workValue5 = dataTable6.y
    modelHash = dataTable6.z
    iterator = false
    workValue = false
    flag = false
    flag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    dataTable7(textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2)
    dataTable7 = ApplyForceToEntity
    textValue13 = arg3
    workValue4 = 4
    workValue5 = 0.001
    modelHash = 0.001
    iterator = 0.001
    workValue = 0.0
    flag = 0.0
    flag2 = 0.0
    flag3 = 0
    flag4 = false
    hashValue = true
    dataTable3 = true
    flag5 = false
    flag6 = true
    dataTable7(textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6)
    dataTable7 = TriggerServerEvent
    textValue13 = "Ladders:Server:Ladders:Local"
    workValue4 = "remove"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    dataTable7(textValue13, workValue4)
    dataTable7 = TriggerServerEvent
    textValue13 = "Ladders:Server:Ladders"
    workValue4 = "store"
    workValue5 = arg4
    dataTable7(textValue13, workValue4, workValue5)
    dataTable7 = TriggerServerEvent
    textValue13 = "Ladders:Server:Ladders"
    workValue4 = "update"
    workValue5 = arg4
    modelHash = "BeingCarried"
    iterator = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataTable7(textValue13, workValue4, workValue5, modelHash, iterator)
    dataTable7 = Citizen
    dataTable7 = dataTable7.Wait
    textValue13 = 1000
    dataTable7(textValue13)
    dataTable7 = GetEntityCoords
    textValue13 = arg3
    -- Beginner: result below is entityCoords.
    dataTable7 = dataTable7(textValue13)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "BeingCarried"
    workValue = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "BeingClimbed"
    workValue = false
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "Dropped"
    workValue = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "Placed"
    workValue = false
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "x"
    workValue = dataTable7.x
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "y"
    workValue = dataTable7.y
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "update"
    modelHash = arg4
    iterator = "z"
    workValue = dataTable7.z
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    textValue13(workValue4, workValue5, modelHash, iterator, workValue)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:DropLadder".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:Pickup"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Pickup".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:Pickup"
-- Beginner: this function runs when client event "Ladders:Client:Pickup" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1) ===
function vector3Builder2(arg1)
  local arg2, arg3, arg4, dataTable6, dataTable7
  arg2 = numberValue2
  if 0 == arg2 then
    arg2 = NetworkDoesNetworkIdExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = NetworkRequestControlOfNetworkId
      arg3 = arg1
      arg2(arg3)
      while true do
        arg2 = NetworkHasControlOfNetworkId
        arg3 = arg1
        arg2 = arg2(arg3)
        if arg2 then
          break
        end
        arg2 = Citizen
        arg2 = arg2.Wait
        arg3 = 0
        arg2(arg3)
      end
      arg2 = NetToObj
      arg3 = arg1
      arg2 = arg2(arg3)
      arg3 = DeleteObject
      arg4 = arg2
      arg3(arg4)
      arg3 = SetEntityAsNoLongerNeeded
      arg4 = arg2
      arg3(arg4)
      arg3 = TriggerServerEvent
      arg4 = "Ladders:Server:Ladders:Local"
      dataTable6 = "add"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
      arg3(arg4, dataTable6)
      arg3 = TriggerServerEvent
      arg4 = "Ladders:Server:Ladders"
      dataTable6 = "delete"
      dataTable7 = arg1
      arg3(arg4, dataTable6, dataTable7)
      arg3 = ClearPedTasksImmediately
      arg4 = PlayerPedId
      arg4, dataTable6, dataTable7 = arg4()
      arg3(arg4, dataTable6, dataTable7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Pickup".
dataTable2(vector3Builder, vector3Builder2)
dataTable2 = RegisterNetEvent
vector3Builder = "Ladders:Client:PlaceLadder"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:PlaceLadder".
dataTable2(vector3Builder)
dataTable2 = AddEventHandler
vector3Builder = "Ladders:Client:PlaceLadder"
-- Beginner: this function runs when client event "Ladders:Client:PlaceLadder" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: none) ===
function vector3Builder2()
  local arg1, arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3
  arg1 = numberValue2
  if 0 ~= arg1 then
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = GetEntityRotation
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = CMG
    arg3 = arg3.requestEntitySpawn
    arg4 = "lfb_ladder_object"
    arg3(arg4)
    arg3 = GetOffsetFromEntityInWorldCoords
    arg4 = arg1
    dataTable6 = 0.0
    dataTable7 = 1.0
    textValue13 = 0.0
    arg3 = arg3(arg4, dataTable6, dataTable7, textValue13)
    arg4 = CreateObjectNoOffset
    dataTable6 = GetHashKey
    dataTable7 = "prop_byard_ladder01"
    -- Beginner: result below is hash.
    dataTable6 = dataTable6(dataTable7)
    dataTable7 = arg3.x
    textValue13 = arg3.y
    workValue4 = arg3.z
    workValue5 = true
    modelHash = false
    iterator = false
    -- Beginner: result below is objectEntity.
    arg4 = arg4(dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator)
    dataTable6 = ObjToNet
    dataTable7 = arg4
    dataTable6 = dataTable6(dataTable7)
    dataTable7 = GetOffsetFromEntityInWorldCoords
    textValue13 = arg1
    workValue4 = 0.0
    workValue5 = 1.2
    modelHash = 1.32
    dataTable7 = dataTable7(textValue13, workValue4, workValue5, modelHash)
    textValue13 = SetEntityAsMissionEntity
    workValue4 = arg4
    workValue5 = false
    modelHash = false
    textValue13(workValue4, workValue5, modelHash)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders:Local"
    workValue5 = "remove"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    textValue13(workValue4, workValue5)
    textValue13 = TriggerServerEvent
    workValue4 = "Ladders:Server:Ladders"
    workValue5 = "store"
    modelHash = dataTable6
    textValue13(workValue4, workValue5, modelHash)
    textValue13 = SetEntityCoords
    workValue4 = arg4
    workValue5 = dataTable7.x
    modelHash = dataTable7.y
    iterator = dataTable7.z
    workValue = false
    flag = false
    flag2 = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    textValue13(workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3)
    textValue13 = vector3
    workValue4 = arg2.x
    workValue4 = workValue4 - 20.0
    workValue5 = arg2.y
    modelHash = arg2.z
    textValue13 = textValue13(workValue4, workValue5, modelHash)
    workValue4 = SetEntityRotation
    workValue5 = arg4
    modelHash = textValue13.x
    iterator = textValue13.y
    workValue = textValue13.z
    flag = 2
    flag2 = false
    workValue4(workValue5, modelHash, iterator, workValue, flag, flag2)
    workValue4 = FreezeEntityPosition
    workValue5 = arg4
    modelHash = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue4(workValue5, modelHash)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "BeingCarried"
    flag = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "BeingClimbed"
    flag = false
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "Dropped"
    flag = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "Placed"
    flag = true
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "x"
    flag = dataTable7.x
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "y"
    flag = dataTable7.y
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "z"
    flag = dataTable7.z
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "Topz"
    flag = dataTable7.z
    flag = flag + 5.0
    workValue4(workValue5, modelHash, iterator, workValue, flag)
    workValue4 = TriggerServerEvent
    workValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataTable6
    workValue = "Bottomz"
    flag = dataTable7.z
    flag = flag - 5.0
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workValue4(workValue5, modelHash, iterator, workValue, flag)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:PlaceLadder".
dataTable2(vector3Builder, vector3Builder2)

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1) ===
function dataTable2(arg1)
  local arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4
  arg2 = 1
  arg3 = 10
  arg4 = 1
  for dataTable6 = arg2, arg3, arg4 do
    dataTable7 = GetOffsetFromEntityInWorldCoords
    textValue13 = arg1
    workValue4 = 0.0
    workValue5 = dataTable6 / 5.0
    workValue5 = 0.5 + workValue5
    modelHash = 4.0
    dataTable7 = dataTable7(textValue13, workValue4, workValue5, modelHash)
    textValue13 = _ENV
    workValue4 = "StartExpensiveSynchronousShapeTestLosProbe"
    textValue13 = textValue13[workValue4]
    workValue4 = dataTable7.x
    workValue5 = dataTable7.y
    modelHash = dataTable7.z
    iterator = dataTable7.x
    workValue = dataTable7.y
    flag = dataTable7.z
    flag = flag - 10.0
    flag2 = -1
    flag3 = 0
    flag4 = 4
    textValue13 = textValue13(workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4)
    workValue4 = GetShapeTestResult
    workValue5 = textValue13
    workValue4, workValue5, modelHash = workValue4(workValue5)
    if workValue5 then
      iterator = dataTable7 - modelHash
      iterator = #iterator
      if iterator < 6.0 then
        iterator = vector3
        workValue = 0.0
        flag = 0.0
        flag2 = 1.0
        iterator = iterator(workValue, flag, flag2)
        iterator = modelHash + iterator
        return iterator
      end
    end
  end
  arg2 = GetOffsetFromEntityInWorldCoords
  arg3 = arg1
  arg4 = 0.0
  dataTable6 = 0.5
  dataTable7 = 4.0
  return arg2(arg3, arg4, dataTable6, dataTable7)
end
vector3Builder = RegisterNetEvent
vector3Builder2 = "Ladders:Client:Climb"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Climb".
vector3Builder(vector3Builder2)
vector3Builder = AddEventHandler
vector3Builder2 = "Ladders:Client:Climb"
-- Beginner: this function runs when client event "Ladders:Client:Climb" fires.

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14
  arg3 = numberValue2
  if 0 == arg3 then
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    arg4 = NetToObj
    dataTable6 = arg1
    arg4 = arg4(dataTable6)
    dataTable6 = TriggerServerEvent
    dataTable7 = "Ladders:Server:Ladders"
    textValue13 = "update"
    workValue4 = arg1
    workValue5 = "BeingClimbed"
    modelHash = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash)
    dataTable6 = "yes"
    textValue12 = dataTable6
    dataTable6 = GetEntityRotation
    dataTable7 = arg4
    dataTable6 = dataTable6(dataTable7)
    workValue3 = dataTable6
    dataTable6 = HasAnimDictLoaded
    dataTable7 = "laddersbase"
    dataTable6 = dataTable6(dataTable7)
    if not dataTable6 then
      dataTable6 = RequestAnimDict
      dataTable7 = "laddersbase"
      dataTable6(dataTable7)
      while true do
        dataTable6 = HasAnimDictLoaded
        dataTable7 = "laddersbase"
        dataTable6 = dataTable6(dataTable7)
        if dataTable6 then
          break
        end
        dataTable6 = Citizen
        dataTable6 = dataTable6.Wait
        dataTable7 = 0
        dataTable6(dataTable7)
      end
    end
    dataTable6 = ClearPedTasksImmediately
    dataTable7 = arg3
    dataTable6(dataTable7)
    dataTable6 = FreezeEntityPosition
    dataTable7 = arg3
    textValue13 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    dataTable6(dataTable7, textValue13)
    dataTable6 = SetEntityCollision
    dataTable7 = arg4
    textValue13 = false
    workValue4 = true
    dataTable6(dataTable7, textValue13, workValue4)
    dataTable6 = "rot"
    textValue12 = dataTable6
    dataTable6 = pairs
    dataTable7 = dataTable8
    dataTable6, dataTable7, textValue13, workValue4 = dataTable6(dataTable7)
    for workValue5, modelHash in dataTable6, dataTable7, textValue13, workValue4 do
      if arg2 == workValue5 then
        iterator = pairs
        workValue = modelHash
        iterator, workValue, flag, flag2 = iterator(workValue)
        for flag3, flag4 in iterator, workValue, flag, flag2 do
          hashValue = GetOffsetFromEntityInWorldCoords
          dataTable3 = arg4
          flag5 = flag4[1]
          flag5 = flag5.x
          flag6 = flag4[1]
          flag6 = flag6.y
          workValue2 = flag4[1]
          workValue2 = workValue2.z
          hashValue = hashValue(dataTable3, flag5, flag6, workValue2)
          dataTable3 = SetEntityCoordsNoOffset
          flag5 = arg3
          flag6 = hashValue.x
          workValue2 = hashValue.y
          flag7 = hashValue.z
          flag8 = false
          flag9 = false
          flag10 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          dataTable3(flag5, flag6, workValue2, flag7, flag8, flag9, flag10)
          dataTable3 = TaskPlayAnim
          flag5 = arg3
          flag6 = flag4[2]
          workValue2 = flag4[3]
          flag7 = 2.0
          flag8 = 0.0
          flag9 = -1
          flag10 = 15
          flag11 = 0
          flag12 = false
          flag13 = false
          flag14 = false
          -- Beginner: Play an animation on a ped.
          dataTable3(flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11, flag12, flag13, flag14)
          dataTable3 = Citizen
          dataTable3 = dataTable3.Wait
          flag5 = 850
          dataTable3(flag5)
        end
      end
    end
    if "up" == arg2 then
      dataTable6 = dataTable2
      dataTable7 = arg4
      dataTable6 = dataTable6(dataTable7)
      dataTable7 = SetEntityCoordsNoOffset
      textValue13 = arg3
      workValue4 = dataTable6.x
      workValue5 = dataTable6.y
      modelHash = dataTable6.z
      iterator = false
      workValue = false
      flag = false
      -- Beginner: Move/teleport an entity to new coordinates.
      dataTable7(textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag)
    elseif "down" == arg2 then
      dataTable6 = GetOffsetFromEntityInWorldCoords
      dataTable7 = arg4
      textValue13 = 0.0
      workValue4 = -0.9
      workValue5 = -1.4
      dataTable6 = dataTable6(dataTable7, textValue13, workValue4, workValue5)
      dataTable7 = SetEntityCoordsNoOffset
      textValue13 = arg3
      workValue4 = dataTable6.x
      workValue5 = dataTable6.y
      modelHash = dataTable6.z
      iterator = false
      workValue = false
      flag = false
      dataTable7(textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag)
    end
    dataTable6 = ClearPedTasksImmediately
    dataTable7 = arg3
    dataTable6(dataTable7)
    dataTable6 = FreezeEntityPosition
    dataTable7 = arg3
    textValue13 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    dataTable6(dataTable7, textValue13)
    dataTable6 = SetEntityCollision
    dataTable7 = arg4
    textValue13 = true
    workValue4 = true
    dataTable6(dataTable7, textValue13, workValue4)
    dataTable6 = "no"
    textValue12 = dataTable6
    dataTable6 = TriggerServerEvent
    dataTable7 = "Ladders:Server:Ladders"
    textValue13 = "update"
    workValue4 = arg1
    workValue5 = "BeingClimbed"
    modelHash = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Climb".
vector3Builder(vector3Builder2, textValue)

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1) ===
function vector3Builder(arg1)
  local arg2, arg3, arg4, dataTable6, dataTable7
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = vector3
  arg4 = arg1.x
  dataTable6 = arg1.y
  dataTable7 = arg1.z
  arg3 = arg3(arg4, dataTable6, dataTable7)
  arg2 = arg2 - arg3
  arg2 = #arg2
  arg2 = arg2 + 0.01
  return arg2
end

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: none) ===
function vector3Builder2()
  local arg1, arg2, arg3, arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = numberValue2
  if 0 == arg2 then
    arg2 = flag16
    if arg2 then
      arg2 = false
      flag16 = arg2
      arg2 = ResetPedMovementClipset
      arg3 = arg1
      arg4 = 0
      arg2(arg3, arg4)
    end
    arg2 = pairs
    arg3 = dataTable4
    arg2, arg3, arg4, dataTable6 = arg2(arg3)
    for dataTable7, textValue13 in arg2, arg3, arg4, dataTable6 do
      workValue4 = type
      workValue5 = textValue13
      workValue4 = workValue4(workValue5)
      if "table" == workValue4 then
        workValue4 = textValue13.BeingCarried
        if not workValue4 then
          workValue4 = textValue13.x
          if workValue4 then
            workValue4 = textValue13.y
            if workValue4 then
              workValue4 = textValue13.z
              if workValue4 then
                workValue4 = textValue13.Dropped
                if workValue4 then
                  workValue4 = vector3Builder
                  workValue5 = textValue13
                  workValue4 = workValue4(workValue5)
                  if not (workValue4 <= 2.0) then
                    goto flow_label_142
                  end
                  workValue4 = CMG
                  workValue4 = workValue4.hasClientPermission
                  workValue5 = "lfb.onduty.permission"
                  workValue4 = workValue4(workValue5)
                  if workValue4 then
                    workValue4 = drawNativeNotification
                    workValue5 = "~INPUT_PICKUP~ Pick up ladder"
                    -- Beginner: Show a GTA-style notification/help prompt.
                    workValue4(workValue5)
                    workValue4 = IsControlJustPressed
                    workValue5 = 0
                    modelHash = 38
                    workValue4 = workValue4(workValue5, modelHash)
                    if workValue4 then
                      workValue4 = TriggerServerEvent
                      workValue5 = "Ladders:Server:Ladders"
                      modelHash = "pickup"
                      iterator = textValue13.ID
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                      workValue4(workValue5, modelHash, iterator)
                    end
                  end
                  break
                else
                  workValue4 = textValue13.Dropped
                  if not workValue4 then
                    workValue4 = textValue13.Placed
                    if workValue4 then
                      workValue4 = textValue12
                      if "no" == workValue4 then
                        workValue4 = vector3Builder
                        workValue5 = textValue13
                        workValue4 = workValue4(workValue5)
                        if workValue4 <= 4 then
                          workValue4 = DisableControlAction
                          workValue5 = 0
                          modelHash = 23
                          iterator = true
                          workValue4(workValue5, modelHash, iterator)
                          workValue4 = CMG
                          workValue4 = workValue4.hasClientPermission
                          workValue5 = "lfb.onduty.permission"
                          workValue4 = workValue4(workValue5)
                          if workValue4 then
                            workValue4 = vector3Builder
                            workValue5 = vector3
                            modelHash = textValue13.x
                            iterator = textValue13.y
                            workValue = textValue13.Topz
                            workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11 = workValue5(modelHash, iterator, workValue)
                            workValue4 = workValue4(workValue5, modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11)
                            workValue5 = vector3Builder
                            modelHash = vector3
                            iterator = textValue13.x
                            workValue = textValue13.y
                            flag = textValue13.Bottomz
                            modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11 = modelHash(iterator, workValue, flag)
                            workValue5 = workValue5(modelHash, iterator, workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11)
                            modelHash = drawNativeNotification
                            iterator = [[
~INPUT_PICKUP~ Climb ladder
~INPUT_ENTER~ Pick up ladder]]
                            -- Beginner: Show a GTA-style notification/help prompt.
                            modelHash(iterator)
                            modelHash = IsControlJustPressed
                            iterator = 0
                            workValue = 38
                            modelHash = modelHash(iterator, workValue)
                            if modelHash then
                              if workValue4 > workValue5 then
                                modelHash = TriggerServerEvent
                                iterator = "Ladders:Server:Ladders"
                                workValue = "climb"
                                flag = textValue13.ID
                                flag2 = "up"
                                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                                modelHash(iterator, workValue, flag, flag2)
                                break
                              end
                              modelHash = TriggerServerEvent
                              iterator = "Ladders:Server:Ladders"
                              workValue = "climb"
                              flag = textValue13.ID
                              flag2 = "down"
                              modelHash(iterator, workValue, flag, flag2)
                              break
                            end
                            modelHash = IsDisabledControlJustPressed
                            iterator = 0
                            workValue = 23
                            modelHash = modelHash(iterator, workValue)
                            if modelHash then
                              modelHash = TriggerServerEvent
                              iterator = "Ladders:Server:Ladders"
                              workValue = "pickup"
                              flag = textValue13.ID
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                              modelHash(iterator, workValue, flag)
                            end
                          end
                          break
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      ::flow_label_142::
    end
    arg2 = numberValue3
    if 0 ~= arg2 then
      arg2 = ResetEntityAlpha
      arg3 = numberValue3
      arg2(arg3)
      arg2 = DeleteObject
      arg3 = numberValue3
      arg2(arg3)
      arg2 = SetEntityAsNoLongerNeeded
      arg3 = numberValue3
      arg2(arg3)
      arg2 = 0
      numberValue3 = arg2
    end
  else
    arg2 = IsPedRunning
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = IsPedSprinting
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        goto flow_label_198
      end
    end
    arg2 = flag16
    if not arg2 then
      arg2 = true
      flag16 = arg2
      arg2 = HasAnimSetLoaded
      arg3 = "MOVE_M@BAIL_BOND_TAZERED"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = RequestAnimSet
        arg3 = "MOVE_M@BAIL_BOND_TAZERED"
        arg2(arg3)
        while true do
          arg2 = HasAnimSetLoaded
          arg3 = "MOVE_M@BAIL_BOND_TAZERED"
          arg2 = arg2(arg3)
          if arg2 then
            break
          end
          arg2 = Wait
          arg3 = 0
          arg2(arg3)
        end
      end
      arg2 = SetPedMovementClipset
      arg3 = arg1
      arg4 = "MOVE_M@BAIL_BOND_TAZERED"
      dataTable6 = 1.0
      arg2(arg3, arg4, dataTable6)
      goto flow_label_207
      ::flow_label_198::
      arg2 = flag16
      if arg2 then
        arg2 = false
        flag16 = arg2
        arg2 = ResetPedMovementClipset
        arg3 = arg1
        arg4 = 1.0
        arg2(arg3, arg4)
      end
    end
    ::flow_label_207::
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "lfb.onduty.permission"
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = drawNativeNotification
      arg3 = [[
~INPUT_PICKUP~ Place ladder
~INPUT_ENTER~ Drop ladder
~INPUT_MP_TEXT_CHAT_TEAM~ Toggle preview]]
      -- Beginner: Show a GTA-style notification/help prompt.
      arg2(arg3)
      arg2 = IsControlJustPressed
      arg3 = 0
      arg4 = 38
      arg2 = arg2(arg3, arg4)
      if arg2 then
        arg2 = TriggerEvent
        arg3 = "Ladders:Client:PlaceLadder"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "Ladders:Client:PlaceLadder".
        arg2(arg3)
      else
        arg2 = IsDisabledControlJustPressed
        arg3 = 0
        arg4 = 23
        arg2 = arg2(arg3, arg4)
        if arg2 then
          arg2 = TriggerEvent
          arg3 = "Ladders:Client:DropLadder"
          arg2(arg3)
        else
          arg2 = IsControlJustPressed
          arg3 = 0
          arg4 = 246
          arg2 = arg2(arg3, arg4)
          if arg2 then
            arg2 = flag15
            if arg2 then
              arg2 = false
              flag15 = arg2
              arg2 = PlaySoundFrontend
              arg3 = -1
              arg4 = "NO"
              dataTable6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              dataTable7 = true
              arg2(arg3, arg4, dataTable6, dataTable7)
            else
              arg2 = true
              flag15 = arg2
              arg2 = PlaySoundFrontend
              arg3 = -1
              arg4 = "YES"
              dataTable6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              dataTable7 = true
              arg2(arg3, arg4, dataTable6, dataTable7)
            end
          end
        end
      end
    end
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 22
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 23
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 24
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 44
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 140
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 141
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 142
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 257
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 263
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 264
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = numberValue3
    if 0 == arg2 then
      arg2 = flag15
      if arg2 then
        arg2 = GetOffsetFromEntityInWorldCoords
        arg3 = arg1
        arg4 = 0.0
        dataTable6 = 1.2
        dataTable7 = 1.32
        arg2 = arg2(arg3, arg4, dataTable6, dataTable7)
        arg3 = CreateObjectNoOffset
        arg4 = GetHashKey
        dataTable6 = "prop_byard_ladder01"
        -- Beginner: result below is hash.
        arg4 = arg4(dataTable6)
        dataTable6 = arg2.x
        dataTable7 = arg2.y
        textValue13 = arg2.z
        workValue4 = false
        workValue5 = false
        modelHash = false
        -- Beginner: result below is objectEntity.
        arg3 = arg3(arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash)
        numberValue3 = arg3
        arg3 = SetEntityCollision
        arg4 = numberValue3
        dataTable6 = false
        dataTable7 = false
        arg3(arg4, dataTable6, dataTable7)
        arg3 = SetEntityAlpha
        arg4 = numberValue3
        dataTable6 = 100
        dataTable7 = false
        arg3(arg4, dataTable6, dataTable7)
      end
    end
    arg2 = numberValue3
    if 0 ~= arg2 then
      arg2 = flag15
      if arg2 then
        arg2 = GetOffsetFromEntityInWorldCoords
        arg3 = arg1
        arg4 = 0.0
        dataTable6 = 1.2
        dataTable7 = 1.32
        arg2 = arg2(arg3, arg4, dataTable6, dataTable7)
        arg3 = GetEntityRotation
        arg4 = arg1
        arg3 = arg3(arg4)
        arg4 = SetEntityCoords
        dataTable6 = numberValue3
        dataTable7 = arg2.x
        textValue13 = arg2.y
        workValue4 = arg2.z
        workValue5 = true
        modelHash = false
        iterator = false
        workValue = true
        -- Beginner: Move/teleport an entity to new coordinates.
        arg4(dataTable6, dataTable7, textValue13, workValue4, workValue5, modelHash, iterator, workValue)
        arg4 = vector3
        dataTable6 = arg3.x
        dataTable6 = dataTable6 - 20.0
        dataTable7 = arg3.y
        textValue13 = arg3.z
        arg4 = arg4(dataTable6, dataTable7, textValue13)
        dataTable6 = SetEntityRotation
        dataTable7 = numberValue3
        textValue13 = arg4.x
        workValue4 = arg4.y
        workValue5 = arg4.z
        modelHash = 2
        iterator = true
        dataTable6(dataTable7, textValue13, workValue4, workValue5, modelHash, iterator)
      end
    end
    arg2 = numberValue3
    if 0 ~= arg2 then
      arg2 = flag15
      if not arg2 then
        arg2 = ResetEntityAlpha
        arg3 = numberValue3
        arg2(arg3)
        arg2 = DeleteObject
        arg3 = numberValue3
        arg2(arg3)
        arg2 = SetEntityAsNoLongerNeeded
        arg3 = numberValue3
        arg2(arg3)
        arg2 = 0
        numberValue3 = arg2
      end
    end
  end
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, arg4, dataTable6 = arg2(arg3)
  for dataTable7, textValue13 in arg2, arg3, arg4, dataTable6 do
    if -1 ~= dataTable7 then
      workValue4 = GetEntityBoneIndexByName
      workValue5 = dataTable7
      modelHash = "BONETAG_NECK"
      workValue4 = workValue4(workValue5, modelHash)
      workValue5 = GetEntityBoneIndexByName
      modelHash = dataTable7
      iterator = "BONETAG_R_HAND"
      workValue5 = workValue5(modelHash, iterator)
      modelHash = GetWorldRotationOfEntityBone
      iterator = dataTable7
      workValue = workValue4
      modelHash = modelHash(iterator, workValue)
      iterator = AttachEntityToEntity
      workValue = textValue13
      flag = dataTable7
      flag2 = workValue5
      flag3 = 0.0
      flag4 = 0.0
      hashValue = 0.0
      dataTable3 = modelHash.x
      dataTable3 = dataTable3 + 20.0
      flag5 = modelHash.y
      flag5 = flag5 + 180.0
      flag6 = modelHash.z
      flag6 = flag6 + 90.0
      workValue2 = false
      flag7 = false
      flag8 = false
      flag9 = true
      flag10 = 0
      flag11 = false
      -- Beginner: Attach one entity to another entity.
      iterator(workValue, flag, flag2, flag3, flag4, hashValue, dataTable3, flag5, flag6, workValue2, flag7, flag8, flag9, flag10, flag11)
    end
  end
  arg2 = textValue12
  if "no" ~= arg2 then
    arg2 = textValue12
    if "rot" == arg2 then
      arg2 = workValue3
      if arg2 then
        arg2 = vector3
        arg3 = workValue3.x
        arg4 = workValue3.y
        dataTable6 = workValue3.z
        arg2 = arg2(arg3, arg4, dataTable6)
        arg3 = SetEntityRotation
        arg4 = arg1
        dataTable6 = arg2.x
        dataTable7 = arg2.y
        textValue13 = arg2.z
        workValue4 = 2
        workValue5 = true
        arg3(arg4, dataTable6, dataTable7, textValue13, workValue4, workValue5)
      end
    end
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 21
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 22
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 23
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 24
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 25
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 30
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 31
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 32
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 33
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 34
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 35
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 44
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 140
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 141
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 142
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 257
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 263
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 264
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 266
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 267
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 268
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 269
    dataTable6 = true
    arg2(arg3, arg4, dataTable6)
  end
end
textValue = CMG
textValue = textValue.createThreadOnTick
textValue2 = vector3Builder2
textValue3 = "LFB Ladders"
-- Beginner: Run a helper every game frame while this script is active.
textValue(textValue2, textValue3)
