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
local dataCollection, dataCollection4, dataCollection5, text12, number2, workingValue3, number3, stateFlag15, stateFlag16, dataCollection8, eventHandlerRegistration, dataCollection2, createVector3, createVector32, text, text2, text3, text4, text5, text6, text7, text8, text9, text10, text11, number
dataCollection = {}
dataCollection4 = {}
dataCollection4.firetruk = 2
dataCollection4.lfb1 = 2
dataCollection4.lfb2 = 2
dataCollection.Vehicles = dataCollection4
dataCollection4 = {}
dataCollection5 = {}
text12 = "no"
number2 = 0
workingValue3 = nil
number3 = 0
stateFlag15 = true
stateFlag16 = false
dataCollection8 = {}
eventHandlerRegistration = {}
dataCollection2 = {}
createVector3 = vector3
createVector32 = 0.0
text = -0.45
text2 = -1.5
createVector3 = createVector3(createVector32, text, text2)
createVector32 = "laddersbase"
text = "get_on_bottom_front_stand_high"
dataCollection2[1] = createVector3
dataCollection2[2] = createVector32
dataCollection2[3] = text
createVector3 = {}
createVector32 = vector3
text = 0.0
text2 = -0.3
text3 = -1.1
createVector32 = createVector32(text, text2, text3)
text = "laddersbase"
text2 = "climb_up"
createVector3[1] = createVector32
createVector3[2] = text
createVector3[3] = text2
createVector32 = {}
text = vector3
text2 = 0.0
text3 = -0.3
text4 = -0.7
text = text(text2, text3, text4)
text2 = "laddersbase"
text3 = "climb_up"
createVector32[1] = text
createVector32[2] = text2
createVector32[3] = text3
text = {}
text2 = vector3
text3 = 0.0
text4 = -0.3
text5 = -0.3
text2 = text2(text3, text4, text5)
text3 = "laddersbase"
text4 = "climb_up"
text[1] = text2
text[2] = text3
text[3] = text4
text2 = {}
text3 = vector3
text4 = 0.0
text5 = -0.3
text6 = 0.1
text3 = text3(text4, text5, text6)
text4 = "laddersbase"
text5 = "climb_up"
text2[1] = text3
text2[2] = text4
text2[3] = text5
text3 = {}
text4 = vector3
text5 = 0.0
text6 = -0.3
text7 = 0.5
text4 = text4(text5, text6, text7)
text5 = "laddersbase"
text6 = "climb_up"
text3[1] = text4
text3[2] = text5
text3[3] = text6
text4 = {}
text5 = vector3
text6 = 0.0
text7 = -0.3
text8 = 0.9
text5 = text5(text6, text7, text8)
text6 = "laddersbase"
text7 = "climb_up"
text4[1] = text5
text4[2] = text6
text4[3] = text7
text5 = {}
text6 = vector3
text7 = 0.0
text8 = -0.3
text9 = 1.3
text6 = text6(text7, text8, text9)
text7 = "laddersbase"
text8 = "climb_up"
text5[1] = text6
text5[2] = text7
text5[3] = text8
text6 = {}
text7 = vector3
text8 = 0.0
text9 = -0.3
text10 = 1.7
text7 = text7(text8, text9, text10)
text8 = "laddersbase"
text9 = "climb_up"
text6[1] = text7
text6[2] = text8
text6[3] = text9
text7 = {}
text8 = vector3
text9 = 0.0
text10 = -0.3
text11 = 2.1
text8 = text8(text9, text10, text11)
text9 = "laddersbase"
text10 = "climb_up"
text7[1] = text8
text7[2] = text9
text7[3] = text10
text8 = {}
text9 = vector3
text10 = 0.0
text11 = -0.4
number = 2.5
text9 = text9(text10, text11, number)
text10 = "laddersbase"
text11 = "get_off_top_back_stand_left_hand"
text8[1] = text9
text8[2] = text10
text8[3] = text11
eventHandlerRegistration[1] = dataCollection2
eventHandlerRegistration[2] = createVector3
eventHandlerRegistration[3] = createVector32
eventHandlerRegistration[4] = text
eventHandlerRegistration[5] = text2
eventHandlerRegistration[6] = text3
eventHandlerRegistration[7] = text4
eventHandlerRegistration[8] = text5
eventHandlerRegistration[9] = text6
eventHandlerRegistration[10] = text7
eventHandlerRegistration[11] = text8
dataCollection8.up = eventHandlerRegistration
eventHandlerRegistration = {}
dataCollection2 = {}
createVector3 = vector3
createVector32 = 0.0
text = -0.4
text2 = 2.5
createVector3 = createVector3(createVector32, text, text2)
createVector32 = "laddersbase"
text = "get_on_top_front"
dataCollection2[1] = createVector3
dataCollection2[2] = createVector32
dataCollection2[3] = text
createVector3 = {}
createVector32 = vector3
text = 0.0
text2 = -0.3
text3 = 2.1
createVector32 = createVector32(text, text2, text3)
text = "laddersbase"
text2 = "climb_down"
createVector3[1] = createVector32
createVector3[2] = text
createVector3[3] = text2
createVector32 = {}
text = vector3
text2 = 0.0
text3 = -0.3
text4 = 1.7
text = text(text2, text3, text4)
text2 = "laddersbase"
text3 = "climb_down"
createVector32[1] = text
createVector32[2] = text2
createVector32[3] = text3
text = {}
text2 = vector3
text3 = 0.0
text4 = -0.3
text5 = 1.3
text2 = text2(text3, text4, text5)
text3 = "laddersbase"
text4 = "climb_down"
text[1] = text2
text[2] = text3
text[3] = text4
text2 = {}
text3 = vector3
text4 = 0.0
text5 = -0.3
text6 = 0.9
text3 = text3(text4, text5, text6)
text4 = "laddersbase"
text5 = "climb_down"
text2[1] = text3
text2[2] = text4
text2[3] = text5
text3 = {}
text4 = vector3
text5 = 0.0
text6 = -0.3
text7 = 0.5
text4 = text4(text5, text6, text7)
text5 = "laddersbase"
text6 = "climb_down"
text3[1] = text4
text3[2] = text5
text3[3] = text6
text4 = {}
text5 = vector3
text6 = 0.0
text7 = -0.3
text8 = 0.1
text5 = text5(text6, text7, text8)
text6 = "laddersbase"
text7 = "climb_down"
text4[1] = text5
text4[2] = text6
text4[3] = text7
text5 = {}
text6 = vector3
text7 = 0.0
text8 = -0.3
text9 = -0.3
text6 = text6(text7, text8, text9)
text7 = "laddersbase"
text8 = "climb_down"
text5[1] = text6
text5[2] = text7
text5[3] = text8
text6 = {}
text7 = vector3
text8 = 0.0
text9 = -0.3
text10 = -0.7
text7 = text7(text8, text9, text10)
text8 = "laddersbase"
text9 = "climb_down"
text6[1] = text7
text6[2] = text8
text6[3] = text9
text7 = {}
text8 = vector3
text9 = 0.0
text10 = -0.3
text11 = -1.1
text8 = text8(text9, text10, text11)
text9 = "laddersbase"
text10 = "climb_down"
text7[1] = text8
text7[2] = text9
text7[3] = text10
text8 = {}
text9 = vector3
text10 = 0.0
text11 = -0.45
number = -1.5
text9 = text9(text10, text11, number)
text10 = "laddersbase"
text11 = "get_off_bottom_front_stand"
text8[1] = text9
text8[2] = text10
text8[3] = text11
eventHandlerRegistration[1] = dataCollection2
eventHandlerRegistration[2] = createVector3
eventHandlerRegistration[3] = createVector32
eventHandlerRegistration[4] = text
eventHandlerRegistration[5] = text2
eventHandlerRegistration[6] = text3
eventHandlerRegistration[7] = text4
eventHandlerRegistration[8] = text5
eventHandlerRegistration[9] = text6
eventHandlerRegistration[10] = text7
eventHandlerRegistration[11] = text8
dataCollection8.down = eventHandlerRegistration
eventHandlerRegistration = AddEventHandler
dataCollection2 = "onClientMapStart"
-- Beginner: this function runs when client event "onClientMapStart" fires.

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, localValue3, localValue4, dataCollection6, dataCollection7
  localValue1 = TriggerServerEvent
  localValue2 = "Ladders:Server:PersonalRequest"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:PersonalRequest".
  localValue1(localValue2)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/ladder"
  localValue4 = "Type an action."
  dataCollection6 = {}
  dataCollection7 = {}
  dataCollection7.name = "action"
  dataCollection7.help = "collect store"
  dataCollection6[1] = dataCollection7
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(localValue2, localValue3, localValue4, dataCollection6)
end
-- Beginner: Register a client-side event handler. Event/command: "onClientMapStart".
eventHandlerRegistration(dataCollection2, createVector3)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityCoords
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = localValue1
  dataCollection6 = 0.0
  dataCollection7 = 10.0
  text13 = 0.0
  localValue3 = localValue3(localValue4, dataCollection6, dataCollection7, text13)
  localValue4 = StartShapeTestRay
  dataCollection6 = localValue2.x
  dataCollection7 = localValue2.y
  text13 = localValue2.z
  workingValue4 = localValue3.x
  workingValue5 = localValue3.y
  modelHash = localValue3.z
  iterator = 10
  workingValue = localValue1
  stateFlag = 0
  localValue4 = localValue4(dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag)
  dataCollection6 = GetRaycastResult
  dataCollection7 = localValue4
  dataCollection6, dataCollection7, text13, workingValue4, workingValue5 = dataCollection6(dataCollection7)
  modelHash = Vdist
  iterator = localValue2.x
  workingValue = localValue2.y
  stateFlag = localValue2.z
  stateFlag2 = text13.x
  stateFlag3 = text13.y
  stateFlag4 = text13.z
  modelHash = modelHash(iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4)
  if modelHash < 3 then
    modelHash = GetEntityModel
    iterator = workingValue5
    -- Beginner: result below is modelHash.
    modelHash = modelHash(iterator)
    iterator = pairs
    workingValue = dataCollection.Vehicles
    iterator, workingValue, stateFlag, stateFlag2 = iterator(workingValue)
    for stateFlag3, stateFlag4 in iterator, workingValue, stateFlag, stateFlag2 do
      hashValue = GetHashKey
      dataCollection3 = stateFlag3
      -- Beginner: result below is hash.
      hashValue = hashValue(dataCollection3)
      if hashValue == modelHash then
        dataCollection3 = {}
        stateFlag5 = workingValue5
        stateFlag6 = stateFlag4
        dataCollection3[1] = stateFlag5
        dataCollection3[2] = stateFlag6
        return dataCollection3
      end
    end
    iterator = notify
    workingValue = "~r~This vehicles does not carry ladders!"
    stateFlag = true
    -- Beginner: Show a notification to the player.
    iterator(workingValue, stateFlag)
    iterator = false
    return iterator
  else
    modelHash = notify
    iterator = "~r~No ladder carrying vehicle found!"
    workingValue = true
    modelHash(iterator, workingValue)
    modelHash = false
    return modelHash
  end
end
dataCollection2 = RegisterCommand
createVector3 = "ladder"
-- Beginner: this function is the command handler for "ladder".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1, localValue2) ===
function createVector32(localValue1, localValue2)
  local localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash
  localValue3 = CMG
  localValue3 = localValue3.hasClientPermission
  localValue4 = "lfb.onduty.permission"
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = localValue2[1]
  if localValue3 then
    localValue3 = localValue2[1]
    localValue4 = localValue3
    localValue3 = localValue3.lower
    localValue3 = localValue3(localValue4)
    if "collect" == localValue3 then
      localValue4 = number2
      if 0 == localValue4 then
        localValue4 = eventHandlerRegistration
        localValue4 = localValue4()
        if localValue4 then
          dataCollection6 = TriggerServerEvent
          dataCollection7 = "Ladders:Server:Vehicles"
          text13 = "check"
          workingValue4 = VehToNet
          workingValue5 = localValue4[1]
          workingValue4 = workingValue4(workingValue5)
          workingValue5 = localValue4[2]
          modelHash = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Vehicles".
          dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash)
        end
      else
        localValue4 = notify
        dataCollection6 = "~y~You already carrying a ladder!"
        dataCollection7 = true
        -- Beginner: Show a notification to the player.
        localValue4(dataCollection6, dataCollection7)
      end
    elseif "store" == localValue3 then
      localValue4 = number2
      if 0 ~= localValue4 then
        localValue4 = eventHandlerRegistration
        localValue4 = localValue4()
        if localValue4 then
          dataCollection6 = TriggerServerEvent
          dataCollection7 = "Ladders:Server:Vehicles"
          text13 = "check"
          workingValue4 = VehToNet
          workingValue5 = localValue4[1]
          workingValue4 = workingValue4(workingValue5)
          workingValue5 = localValue4[2]
          modelHash = true
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Vehicles".
          dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash)
        end
      else
        localValue4 = notify
        dataCollection6 = "~y~You do not have a ladder out!"
        dataCollection7 = true
        -- Beginner: Show a notification to the player.
        localValue4(dataCollection6, dataCollection7)
      end
    else
      localValue4 = notify
      dataCollection6 = "~r~Invalid action! Use: collect or store."
      dataCollection7 = true
      localValue4(dataCollection6, dataCollection7)
    end
  else
    localValue3 = notify
    localValue4 = "~r~No action specified!"
    dataCollection6 = true
    -- Beginner: Show a notification to the player.
    localValue3(localValue4, dataCollection6)
  end
end
text = false
-- Beginner: Register a chat/console command. Event/command: "ladder".
dataCollection2(createVector3, createVector32, text)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:VehicleCheck"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:VehicleCheck".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:VehicleCheck"
-- Beginner: this function runs when client event "Ladders:Client:VehicleCheck" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1, localValue2, localValue3, localValue4) ===
function createVector32(localValue1, localValue2, localValue3, localValue4)
  local dataCollection6, dataCollection7, text13, workingValue4
  if localValue4 then
    if localValue2 < localValue3 then
      dataCollection6 = TriggerServerEvent
      dataCollection7 = "Ladders:Server:Ladders:Local"
      text13 = "remove"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
      dataCollection6(dataCollection7, text13)
      dataCollection6 = TriggerServerEvent
      dataCollection7 = "Ladders:Server:Vehicles"
      text13 = "add"
      workingValue4 = localValue1
      dataCollection6(dataCollection7, text13, workingValue4)
      dataCollection6 = notify
      dataCollection7 = "~g~Ladder stored. This vehicle can store "
      text13 = localValue2 + 1
      text13 = localValue3 - text13
      workingValue4 = " more ladders."
      dataCollection7 = dataCollection7 .. text13 .. workingValue4
      text13 = false
      -- Beginner: Show a notification to the player.
      dataCollection6(dataCollection7, text13)
    else
      dataCollection6 = notify
      dataCollection7 = "~r~This vehicle can only carry "
      text13 = localValue3
      workingValue4 = " ladders!"
      dataCollection7 = dataCollection7 .. text13 .. workingValue4
      text13 = true
      dataCollection6(dataCollection7, text13)
    end
  elseif localValue2 > 0 then
    dataCollection6 = TriggerServerEvent
    dataCollection7 = "Ladders:Server:Ladders:Local"
    text13 = "add"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    dataCollection6(dataCollection7, text13)
    dataCollection6 = TriggerServerEvent
    dataCollection7 = "Ladders:Server:Vehicles"
    text13 = "remove"
    workingValue4 = localValue1
    dataCollection6(dataCollection7, text13, workingValue4)
    dataCollection6 = notify
    dataCollection7 = "~g~Ladder collected from vehicle. This vehicle has "
    text13 = localValue2 - 1
    workingValue4 = " more ladders."
    dataCollection7 = dataCollection7 .. text13 .. workingValue4
    text13 = false
    -- Beginner: Show a notification to the player.
    dataCollection6(dataCollection7, text13)
  else
    dataCollection6 = notify
    dataCollection7 = "~r~This vehicle has no more ladders!"
    text13 = true
    dataCollection6(dataCollection7, text13)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:VehicleCheck".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:Local:Add"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Local:Add".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:Local:Add"
-- Beginner: this function runs when client event "Ladders:Client:Local:Add" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if -1 ~= localValue3 then
    localValue4 = dataCollection5
    localValue4 = localValue4[localValue3]
    if not localValue4 then
      localValue4 = GetOffsetFromEntityInWorldCoords
      dataCollection6 = localValue3
      dataCollection7 = 0.0
      text13 = 1.2
      workingValue4 = 1.32
      localValue4 = localValue4(dataCollection6, dataCollection7, text13, workingValue4)
      dataCollection6 = CreateObjectNoOffset
      dataCollection7 = GetHashKey
      text13 = "prop_byard_ladder01"
      -- Beginner: result below is hash.
      dataCollection7 = dataCollection7(text13)
      text13 = localValue4.x
      workingValue4 = localValue4.y
      workingValue5 = localValue4.z
      modelHash = false
      iterator = false
      workingValue = false
      -- Beginner: result below is objectEntity.
      dataCollection6 = dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue)
      dataCollection7 = SetEntityAsMissionEntity
      text13 = dataCollection6
      workingValue4 = false
      workingValue5 = false
      dataCollection7(text13, workingValue4, workingValue5)
      dataCollection7 = SetEntityCollision
      text13 = dataCollection6
      workingValue4 = false
      workingValue5 = true
      dataCollection7(text13, workingValue4, workingValue5)
      dataCollection7 = dataCollection5
      dataCollection7[localValue3] = dataCollection6
      dataCollection7 = GetPlayerServerId
      text13 = PlayerId
      text13, workingValue4, workingValue5, modelHash, iterator, workingValue = text13()
      -- Beginner: result below is serverId.
      dataCollection7 = dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator, workingValue)
      if dataCollection7 == localValue1 then
        number2 = dataCollection6
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Local:Add".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:Local:Remove"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Local:Remove".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:Local:Remove"
-- Beginner: this function runs when client event "Ladders:Client:Local:Remove" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, localValue3, localValue4, dataCollection6
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if -1 ~= localValue3 then
    localValue4 = dataCollection5
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = DeleteObject
      dataCollection6 = dataCollection5
      dataCollection6 = dataCollection6[localValue3]
      localValue4(dataCollection6)
      localValue4 = SetEntityAsNoLongerNeeded
      dataCollection6 = dataCollection5
      dataCollection6 = dataCollection6[localValue3]
      localValue4(dataCollection6)
      localValue4 = ClearPedTasksImmediately
      dataCollection6 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      dataCollection6 = dataCollection6()
      localValue4(dataCollection6)
      localValue4 = dataCollection5
      localValue4[localValue3] = nil
      localValue4 = GetPlayerServerId
      dataCollection6 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      dataCollection6 = dataCollection6()
      -- Beginner: result below is serverId.
      localValue4 = localValue4(dataCollection6)
      if localValue4 == localValue1 then
        localValue4 = 0
        number2 = localValue4
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Local:Remove".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Bounce:ServerValues"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Bounce:ServerValues".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Bounce:ServerValues"
-- Beginner: this function runs when client event "Ladders:Bounce:ServerValues" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2
  dataCollection4 = localValue1
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Bounce:ServerValues".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:DropLadder"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:DropLadder".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:DropLadder"
-- Beginner: this function runs when client event "Ladders:Client:DropLadder" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
function createVector32()
  local localValue1, localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6
  localValue1 = number2
  if 0 ~= localValue1 then
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.requestEntitySpawn
    localValue3 = "lfb_ladder_object"
    localValue2(localValue3)
    localValue2 = GetOffsetFromEntityInWorldCoords
    localValue3 = localValue1
    localValue4 = 0.0
    dataCollection6 = 0.0
    dataCollection7 = -500.0
    localValue2 = localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
    localValue3 = CreateObjectNoOffset
    localValue4 = GetHashKey
    dataCollection6 = "prop_byard_ladder01"
    -- Beginner: result below is hash.
    localValue4 = localValue4(dataCollection6)
    dataCollection6 = localValue2.x
    dataCollection7 = localValue2.y
    text13 = localValue2.z
    workingValue4 = true
    workingValue5 = false
    modelHash = false
    -- Beginner: result below is objectEntity.
    localValue3 = localValue3(localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash)
    localValue4 = ObjToNet
    dataCollection6 = localValue3
    localValue4 = localValue4(dataCollection6)
    dataCollection6 = SetEntityAsMissionEntity
    dataCollection7 = localValue3
    text13 = false
    workingValue4 = false
    dataCollection6(dataCollection7, text13, workingValue4)
    dataCollection6 = ClearPedTasksImmediately
    dataCollection7 = localValue1
    dataCollection6(dataCollection7)
    dataCollection6 = SetEntityRotation
    dataCollection7 = localValue3
    text13 = 0.0
    workingValue4 = 90.0
    workingValue5 = 90.0
    modelHash = 2
    iterator = false
    dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator)
    dataCollection6 = GetOffsetFromEntityInWorldCoords
    dataCollection7 = localValue1
    text13 = 0.5
    workingValue4 = 0.0
    workingValue5 = 0.0
    dataCollection6 = dataCollection6(dataCollection7, text13, workingValue4, workingValue5)
    dataCollection7 = SetEntityCoords
    text13 = localValue3
    workingValue4 = dataCollection6.x
    workingValue5 = dataCollection6.y
    modelHash = dataCollection6.z
    iterator = false
    workingValue = false
    stateFlag = false
    stateFlag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2)
    dataCollection7 = ApplyForceToEntity
    text13 = localValue3
    workingValue4 = 4
    workingValue5 = 0.001
    modelHash = 0.001
    iterator = 0.001
    workingValue = 0.0
    stateFlag = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0
    stateFlag4 = false
    hashValue = true
    dataCollection3 = true
    stateFlag5 = false
    stateFlag6 = true
    dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6)
    dataCollection7 = TriggerServerEvent
    text13 = "Ladders:Server:Ladders:Local"
    workingValue4 = "remove"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    dataCollection7(text13, workingValue4)
    dataCollection7 = TriggerServerEvent
    text13 = "Ladders:Server:Ladders"
    workingValue4 = "store"
    workingValue5 = localValue4
    dataCollection7(text13, workingValue4, workingValue5)
    dataCollection7 = TriggerServerEvent
    text13 = "Ladders:Server:Ladders"
    workingValue4 = "update"
    workingValue5 = localValue4
    modelHash = "BeingCarried"
    iterator = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator)
    dataCollection7 = Citizen
    dataCollection7 = dataCollection7.Wait
    text13 = 1000
    dataCollection7(text13)
    dataCollection7 = GetEntityCoords
    text13 = localValue3
    -- Beginner: result below is entityCoords.
    dataCollection7 = dataCollection7(text13)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "BeingCarried"
    workingValue = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "BeingClimbed"
    workingValue = false
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "Dropped"
    workingValue = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "Placed"
    workingValue = false
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "x"
    workingValue = dataCollection7.x
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "y"
    workingValue = dataCollection7.y
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "update"
    modelHash = localValue4
    iterator = "z"
    workingValue = dataCollection7.z
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:DropLadder".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:Pickup"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Pickup".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:Pickup"
-- Beginner: this function runs when client event "Ladders:Client:Pickup" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, localValue3, localValue4, dataCollection6, dataCollection7
  localValue2 = number2
  if 0 == localValue2 then
    localValue2 = NetworkDoesNetworkIdExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = NetworkRequestControlOfNetworkId
      localValue3 = localValue1
      localValue2(localValue3)
      while true do
        localValue2 = NetworkHasControlOfNetworkId
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        if localValue2 then
          break
        end
        localValue2 = Citizen
        localValue2 = localValue2.Wait
        localValue3 = 0
        localValue2(localValue3)
      end
      localValue2 = NetToObj
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      localValue3 = DeleteObject
      localValue4 = localValue2
      localValue3(localValue4)
      localValue3 = SetEntityAsNoLongerNeeded
      localValue4 = localValue2
      localValue3(localValue4)
      localValue3 = TriggerServerEvent
      localValue4 = "Ladders:Server:Ladders:Local"
      dataCollection6 = "add"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
      localValue3(localValue4, dataCollection6)
      localValue3 = TriggerServerEvent
      localValue4 = "Ladders:Server:Ladders"
      dataCollection6 = "delete"
      dataCollection7 = localValue1
      localValue3(localValue4, dataCollection6, dataCollection7)
      localValue3 = ClearPedTasksImmediately
      localValue4 = PlayerPedId
      localValue4, dataCollection6, dataCollection7 = localValue4()
      localValue3(localValue4, dataCollection6, dataCollection7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Pickup".
dataCollection2(createVector3, createVector32)
dataCollection2 = RegisterNetEvent
createVector3 = "Ladders:Client:PlaceLadder"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:PlaceLadder".
dataCollection2(createVector3)
dataCollection2 = AddEventHandler
createVector3 = "Ladders:Client:PlaceLadder"
-- Beginner: this function runs when client event "Ladders:Client:PlaceLadder" fires.

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
function createVector32()
  local localValue1, localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3
  localValue1 = number2
  if 0 ~= localValue1 then
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = GetEntityRotation
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = CMG
    localValue3 = localValue3.requestEntitySpawn
    localValue4 = "lfb_ladder_object"
    localValue3(localValue4)
    localValue3 = GetOffsetFromEntityInWorldCoords
    localValue4 = localValue1
    dataCollection6 = 0.0
    dataCollection7 = 1.0
    text13 = 0.0
    localValue3 = localValue3(localValue4, dataCollection6, dataCollection7, text13)
    localValue4 = CreateObjectNoOffset
    dataCollection6 = GetHashKey
    dataCollection7 = "prop_byard_ladder01"
    -- Beginner: result below is hash.
    dataCollection6 = dataCollection6(dataCollection7)
    dataCollection7 = localValue3.x
    text13 = localValue3.y
    workingValue4 = localValue3.z
    workingValue5 = true
    modelHash = false
    iterator = false
    -- Beginner: result below is objectEntity.
    localValue4 = localValue4(dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator)
    dataCollection6 = ObjToNet
    dataCollection7 = localValue4
    dataCollection6 = dataCollection6(dataCollection7)
    dataCollection7 = GetOffsetFromEntityInWorldCoords
    text13 = localValue1
    workingValue4 = 0.0
    workingValue5 = 1.2
    modelHash = 1.32
    dataCollection7 = dataCollection7(text13, workingValue4, workingValue5, modelHash)
    text13 = SetEntityAsMissionEntity
    workingValue4 = localValue4
    workingValue5 = false
    modelHash = false
    text13(workingValue4, workingValue5, modelHash)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders:Local"
    workingValue5 = "remove"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders:Local".
    text13(workingValue4, workingValue5)
    text13 = TriggerServerEvent
    workingValue4 = "Ladders:Server:Ladders"
    workingValue5 = "store"
    modelHash = dataCollection6
    text13(workingValue4, workingValue5, modelHash)
    text13 = SetEntityCoords
    workingValue4 = localValue4
    workingValue5 = dataCollection7.x
    modelHash = dataCollection7.y
    iterator = dataCollection7.z
    workingValue = false
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    text13(workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3)
    text13 = vector3
    workingValue4 = localValue2.x
    workingValue4 = workingValue4 - 20.0
    workingValue5 = localValue2.y
    modelHash = localValue2.z
    text13 = text13(workingValue4, workingValue5, modelHash)
    workingValue4 = SetEntityRotation
    workingValue5 = localValue4
    modelHash = text13.x
    iterator = text13.y
    workingValue = text13.z
    stateFlag = 2
    stateFlag2 = false
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2)
    workingValue4 = FreezeEntityPosition
    workingValue5 = localValue4
    modelHash = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workingValue4(workingValue5, modelHash)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "BeingCarried"
    stateFlag = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "BeingClimbed"
    stateFlag = false
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "Dropped"
    stateFlag = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "Placed"
    stateFlag = true
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "x"
    stateFlag = dataCollection7.x
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "y"
    stateFlag = dataCollection7.y
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "z"
    stateFlag = dataCollection7.z
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "Topz"
    stateFlag = dataCollection7.z
    stateFlag = stateFlag + 5.0
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
    workingValue4 = TriggerServerEvent
    workingValue5 = "Ladders:Server:Ladders"
    modelHash = "update"
    iterator = dataCollection6
    workingValue = "Bottomz"
    stateFlag = dataCollection7.z
    stateFlag = stateFlag - 5.0
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:PlaceLadder".
dataCollection2(createVector3, createVector32)

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4
  localValue2 = 1
  localValue3 = 10
  localValue4 = 1
  for dataCollection6 = localValue2, localValue3, localValue4 do
    dataCollection7 = GetOffsetFromEntityInWorldCoords
    text13 = localValue1
    workingValue4 = 0.0
    workingValue5 = dataCollection6 / 5.0
    workingValue5 = 0.5 + workingValue5
    modelHash = 4.0
    dataCollection7 = dataCollection7(text13, workingValue4, workingValue5, modelHash)
    text13 = _ENV
    workingValue4 = "StartExpensiveSynchronousShapeTestLosProbe"
    text13 = text13[workingValue4]
    workingValue4 = dataCollection7.x
    workingValue5 = dataCollection7.y
    modelHash = dataCollection7.z
    iterator = dataCollection7.x
    workingValue = dataCollection7.y
    stateFlag = dataCollection7.z
    stateFlag = stateFlag - 10.0
    stateFlag2 = -1
    stateFlag3 = 0
    stateFlag4 = 4
    text13 = text13(workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4)
    workingValue4 = GetShapeTestResult
    workingValue5 = text13
    workingValue4, workingValue5, modelHash = workingValue4(workingValue5)
    if workingValue5 then
      iterator = dataCollection7 - modelHash
      iterator = #iterator
      if iterator < 6.0 then
        iterator = vector3
        workingValue = 0.0
        stateFlag = 0.0
        stateFlag2 = 1.0
        iterator = iterator(workingValue, stateFlag, stateFlag2)
        iterator = modelHash + iterator
        return iterator
      end
    end
  end
  localValue2 = GetOffsetFromEntityInWorldCoords
  localValue3 = localValue1
  localValue4 = 0.0
  dataCollection6 = 0.5
  dataCollection7 = 4.0
  return localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
end
createVector3 = RegisterNetEvent
createVector32 = "Ladders:Client:Climb"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "Ladders:Client:Climb".
createVector3(createVector32)
createVector3 = AddEventHandler
createVector32 = "Ladders:Client:Climb"
-- Beginner: this function runs when client event "Ladders:Client:Climb" fires.

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14
  localValue3 = number2
  if 0 == localValue3 then
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    localValue4 = NetToObj
    dataCollection6 = localValue1
    localValue4 = localValue4(dataCollection6)
    dataCollection6 = TriggerServerEvent
    dataCollection7 = "Ladders:Server:Ladders"
    text13 = "update"
    workingValue4 = localValue1
    workingValue5 = "BeingClimbed"
    modelHash = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash)
    dataCollection6 = "yes"
    text12 = dataCollection6
    dataCollection6 = GetEntityRotation
    dataCollection7 = localValue4
    dataCollection6 = dataCollection6(dataCollection7)
    workingValue3 = dataCollection6
    dataCollection6 = HasAnimDictLoaded
    dataCollection7 = "laddersbase"
    dataCollection6 = dataCollection6(dataCollection7)
    if not dataCollection6 then
      dataCollection6 = RequestAnimDict
      dataCollection7 = "laddersbase"
      dataCollection6(dataCollection7)
      while true do
        dataCollection6 = HasAnimDictLoaded
        dataCollection7 = "laddersbase"
        dataCollection6 = dataCollection6(dataCollection7)
        if dataCollection6 then
          break
        end
        dataCollection6 = Citizen
        dataCollection6 = dataCollection6.Wait
        dataCollection7 = 0
        dataCollection6(dataCollection7)
      end
    end
    dataCollection6 = ClearPedTasksImmediately
    dataCollection7 = localValue3
    dataCollection6(dataCollection7)
    dataCollection6 = FreezeEntityPosition
    dataCollection7 = localValue3
    text13 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    dataCollection6(dataCollection7, text13)
    dataCollection6 = SetEntityCollision
    dataCollection7 = localValue4
    text13 = false
    workingValue4 = true
    dataCollection6(dataCollection7, text13, workingValue4)
    dataCollection6 = "rot"
    text12 = dataCollection6
    dataCollection6 = pairs
    dataCollection7 = dataCollection8
    dataCollection6, dataCollection7, text13, workingValue4 = dataCollection6(dataCollection7)
    for workingValue5, modelHash in dataCollection6, dataCollection7, text13, workingValue4 do
      if localValue2 == workingValue5 then
        iterator = pairs
        workingValue = modelHash
        iterator, workingValue, stateFlag, stateFlag2 = iterator(workingValue)
        for stateFlag3, stateFlag4 in iterator, workingValue, stateFlag, stateFlag2 do
          hashValue = GetOffsetFromEntityInWorldCoords
          dataCollection3 = localValue4
          stateFlag5 = stateFlag4[1]
          stateFlag5 = stateFlag5.x
          stateFlag6 = stateFlag4[1]
          stateFlag6 = stateFlag6.y
          workingValue2 = stateFlag4[1]
          workingValue2 = workingValue2.z
          hashValue = hashValue(dataCollection3, stateFlag5, stateFlag6, workingValue2)
          dataCollection3 = SetEntityCoordsNoOffset
          stateFlag5 = localValue3
          stateFlag6 = hashValue.x
          workingValue2 = hashValue.y
          stateFlag7 = hashValue.z
          stateFlag8 = false
          stateFlag9 = false
          stateFlag10 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          dataCollection3(stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
          dataCollection3 = TaskPlayAnim
          stateFlag5 = localValue3
          stateFlag6 = stateFlag4[2]
          workingValue2 = stateFlag4[3]
          stateFlag7 = 2.0
          stateFlag8 = 0.0
          stateFlag9 = -1
          stateFlag10 = 15
          stateFlag11 = 0
          stateFlag12 = false
          stateFlag13 = false
          stateFlag14 = false
          -- Beginner: Play an animation on a ped.
          dataCollection3(stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
          dataCollection3 = Citizen
          dataCollection3 = dataCollection3.Wait
          stateFlag5 = 850
          dataCollection3(stateFlag5)
        end
      end
    end
    if "up" == localValue2 then
      dataCollection6 = dataCollection2
      dataCollection7 = localValue4
      dataCollection6 = dataCollection6(dataCollection7)
      dataCollection7 = SetEntityCoordsNoOffset
      text13 = localValue3
      workingValue4 = dataCollection6.x
      workingValue5 = dataCollection6.y
      modelHash = dataCollection6.z
      iterator = false
      workingValue = false
      stateFlag = false
      -- Beginner: Move/teleport an entity to new coordinates.
      dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag)
    elseif "down" == localValue2 then
      dataCollection6 = GetOffsetFromEntityInWorldCoords
      dataCollection7 = localValue4
      text13 = 0.0
      workingValue4 = -0.9
      workingValue5 = -1.4
      dataCollection6 = dataCollection6(dataCollection7, text13, workingValue4, workingValue5)
      dataCollection7 = SetEntityCoordsNoOffset
      text13 = localValue3
      workingValue4 = dataCollection6.x
      workingValue5 = dataCollection6.y
      modelHash = dataCollection6.z
      iterator = false
      workingValue = false
      stateFlag = false
      dataCollection7(text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag)
    end
    dataCollection6 = ClearPedTasksImmediately
    dataCollection7 = localValue3
    dataCollection6(dataCollection7)
    dataCollection6 = FreezeEntityPosition
    dataCollection7 = localValue3
    text13 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    dataCollection6(dataCollection7, text13)
    dataCollection6 = SetEntityCollision
    dataCollection7 = localValue4
    text13 = true
    workingValue4 = true
    dataCollection6(dataCollection7, text13, workingValue4)
    dataCollection6 = "no"
    text12 = dataCollection6
    dataCollection6 = TriggerServerEvent
    dataCollection7 = "Ladders:Server:Ladders"
    text13 = "update"
    workingValue4 = localValue1
    workingValue5 = "BeingClimbed"
    modelHash = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
    dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "Ladders:Client:Climb".
createVector3(createVector32, text)

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, localValue4, dataCollection6, dataCollection7
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = vector3
  localValue4 = localValue1.x
  dataCollection6 = localValue1.y
  dataCollection7 = localValue1.z
  localValue3 = localValue3(localValue4, dataCollection6, dataCollection7)
  localValue2 = localValue2 - localValue3
  localValue2 = #localValue2
  localValue2 = localValue2 + 0.01
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
function createVector32()
  local localValue1, localValue2, localValue3, localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = number2
  if 0 == localValue2 then
    localValue2 = stateFlag16
    if localValue2 then
      localValue2 = false
      stateFlag16 = localValue2
      localValue2 = ResetPedMovementClipset
      localValue3 = localValue1
      localValue4 = 0
      localValue2(localValue3, localValue4)
    end
    localValue2 = pairs
    localValue3 = dataCollection4
    localValue2, localValue3, localValue4, dataCollection6 = localValue2(localValue3)
    for dataCollection7, text13 in localValue2, localValue3, localValue4, dataCollection6 do
      workingValue4 = type
      workingValue5 = text13
      workingValue4 = workingValue4(workingValue5)
      if "table" == workingValue4 then
        workingValue4 = text13.BeingCarried
        if not workingValue4 then
          workingValue4 = text13.x
          if workingValue4 then
            workingValue4 = text13.y
            if workingValue4 then
              workingValue4 = text13.z
              if workingValue4 then
                workingValue4 = text13.Dropped
                if workingValue4 then
                  workingValue4 = createVector3
                  workingValue5 = text13
                  workingValue4 = workingValue4(workingValue5)
                  if not (workingValue4 <= 2.0) then
                    goto continueAtStep142
                  end
                  workingValue4 = CMG
                  workingValue4 = workingValue4.hasClientPermission
                  workingValue5 = "lfb.onduty.permission"
                  workingValue4 = workingValue4(workingValue5)
                  if workingValue4 then
                    workingValue4 = drawNativeNotification
                    workingValue5 = "~INPUT_PICKUP~ Pick up ladder"
                    -- Beginner: Show a GTA-style notification/help prompt.
                    workingValue4(workingValue5)
                    workingValue4 = IsControlJustPressed
                    workingValue5 = 0
                    modelHash = 38
                    workingValue4 = workingValue4(workingValue5, modelHash)
                    if workingValue4 then
                      workingValue4 = TriggerServerEvent
                      workingValue5 = "Ladders:Server:Ladders"
                      modelHash = "pickup"
                      iterator = text13.ID
                      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                      workingValue4(workingValue5, modelHash, iterator)
                    end
                  end
                  break
                else
                  workingValue4 = text13.Dropped
                  if not workingValue4 then
                    workingValue4 = text13.Placed
                    if workingValue4 then
                      workingValue4 = text12
                      if "no" == workingValue4 then
                        workingValue4 = createVector3
                        workingValue5 = text13
                        workingValue4 = workingValue4(workingValue5)
                        if workingValue4 <= 4 then
                          workingValue4 = DisableControlAction
                          workingValue5 = 0
                          modelHash = 23
                          iterator = true
                          workingValue4(workingValue5, modelHash, iterator)
                          workingValue4 = CMG
                          workingValue4 = workingValue4.hasClientPermission
                          workingValue5 = "lfb.onduty.permission"
                          workingValue4 = workingValue4(workingValue5)
                          if workingValue4 then
                            workingValue4 = createVector3
                            workingValue5 = vector3
                            modelHash = text13.x
                            iterator = text13.y
                            workingValue = text13.Topz
                            workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11 = workingValue5(modelHash, iterator, workingValue)
                            workingValue4 = workingValue4(workingValue5, modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
                            workingValue5 = createVector3
                            modelHash = vector3
                            iterator = text13.x
                            workingValue = text13.y
                            stateFlag = text13.Bottomz
                            modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11 = modelHash(iterator, workingValue, stateFlag)
                            workingValue5 = workingValue5(modelHash, iterator, workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
                            modelHash = drawNativeNotification
                            iterator = [[
~INPUT_PICKUP~ Climb ladder
~INPUT_ENTER~ Pick up ladder]]
                            -- Beginner: Show a GTA-style notification/help prompt.
                            modelHash(iterator)
                            modelHash = IsControlJustPressed
                            iterator = 0
                            workingValue = 38
                            modelHash = modelHash(iterator, workingValue)
                            if modelHash then
                              if workingValue4 > workingValue5 then
                                modelHash = TriggerServerEvent
                                iterator = "Ladders:Server:Ladders"
                                workingValue = "climb"
                                stateFlag = text13.ID
                                stateFlag2 = "up"
                                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                                modelHash(iterator, workingValue, stateFlag, stateFlag2)
                                break
                              end
                              modelHash = TriggerServerEvent
                              iterator = "Ladders:Server:Ladders"
                              workingValue = "climb"
                              stateFlag = text13.ID
                              stateFlag2 = "down"
                              modelHash(iterator, workingValue, stateFlag, stateFlag2)
                              break
                            end
                            modelHash = IsDisabledControlJustPressed
                            iterator = 0
                            workingValue = 23
                            modelHash = modelHash(iterator, workingValue)
                            if modelHash then
                              modelHash = TriggerServerEvent
                              iterator = "Ladders:Server:Ladders"
                              workingValue = "pickup"
                              stateFlag = text13.ID
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "Ladders:Server:Ladders".
                              modelHash(iterator, workingValue, stateFlag)
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
      ::continueAtStep142::
    end
    localValue2 = number3
    if 0 ~= localValue2 then
      localValue2 = ResetEntityAlpha
      localValue3 = number3
      localValue2(localValue3)
      localValue2 = DeleteObject
      localValue3 = number3
      localValue2(localValue3)
      localValue2 = SetEntityAsNoLongerNeeded
      localValue3 = number3
      localValue2(localValue3)
      localValue2 = 0
      number3 = localValue2
    end
  else
    localValue2 = IsPedRunning
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = IsPedSprinting
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        goto continueAtStep198
      end
    end
    localValue2 = stateFlag16
    if not localValue2 then
      localValue2 = true
      stateFlag16 = localValue2
      localValue2 = HasAnimSetLoaded
      localValue3 = "MOVE_M@BAIL_BOND_TAZERED"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = RequestAnimSet
        localValue3 = "MOVE_M@BAIL_BOND_TAZERED"
        localValue2(localValue3)
        while true do
          localValue2 = HasAnimSetLoaded
          localValue3 = "MOVE_M@BAIL_BOND_TAZERED"
          localValue2 = localValue2(localValue3)
          if localValue2 then
            break
          end
          localValue2 = Wait
          localValue3 = 0
          localValue2(localValue3)
        end
      end
      localValue2 = SetPedMovementClipset
      localValue3 = localValue1
      localValue4 = "MOVE_M@BAIL_BOND_TAZERED"
      dataCollection6 = 1.0
      localValue2(localValue3, localValue4, dataCollection6)
      goto continueAtStep207
      ::continueAtStep198::
      localValue2 = stateFlag16
      if localValue2 then
        localValue2 = false
        stateFlag16 = localValue2
        localValue2 = ResetPedMovementClipset
        localValue3 = localValue1
        localValue4 = 1.0
        localValue2(localValue3, localValue4)
      end
    end
    ::continueAtStep207::
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "lfb.onduty.permission"
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = drawNativeNotification
      localValue3 = [[
~INPUT_PICKUP~ Place ladder
~INPUT_ENTER~ Drop ladder
~INPUT_MP_TEXT_CHAT_TEAM~ Toggle preview]]
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue2(localValue3)
      localValue2 = IsControlJustPressed
      localValue3 = 0
      localValue4 = 38
      localValue2 = localValue2(localValue3, localValue4)
      if localValue2 then
        localValue2 = TriggerEvent
        localValue3 = "Ladders:Client:PlaceLadder"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "Ladders:Client:PlaceLadder".
        localValue2(localValue3)
      else
        localValue2 = IsDisabledControlJustPressed
        localValue3 = 0
        localValue4 = 23
        localValue2 = localValue2(localValue3, localValue4)
        if localValue2 then
          localValue2 = TriggerEvent
          localValue3 = "Ladders:Client:DropLadder"
          localValue2(localValue3)
        else
          localValue2 = IsControlJustPressed
          localValue3 = 0
          localValue4 = 246
          localValue2 = localValue2(localValue3, localValue4)
          if localValue2 then
            localValue2 = stateFlag15
            if localValue2 then
              localValue2 = false
              stateFlag15 = localValue2
              localValue2 = PlaySoundFrontend
              localValue3 = -1
              localValue4 = "NO"
              dataCollection6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              dataCollection7 = true
              localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
            else
              localValue2 = true
              stateFlag15 = localValue2
              localValue2 = PlaySoundFrontend
              localValue3 = -1
              localValue4 = "YES"
              dataCollection6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              dataCollection7 = true
              localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
            end
          end
        end
      end
    end
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 22
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 23
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 24
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 44
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 140
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 141
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 142
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 257
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 263
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 264
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = number3
    if 0 == localValue2 then
      localValue2 = stateFlag15
      if localValue2 then
        localValue2 = GetOffsetFromEntityInWorldCoords
        localValue3 = localValue1
        localValue4 = 0.0
        dataCollection6 = 1.2
        dataCollection7 = 1.32
        localValue2 = localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
        localValue3 = CreateObjectNoOffset
        localValue4 = GetHashKey
        dataCollection6 = "prop_byard_ladder01"
        -- Beginner: result below is hash.
        localValue4 = localValue4(dataCollection6)
        dataCollection6 = localValue2.x
        dataCollection7 = localValue2.y
        text13 = localValue2.z
        workingValue4 = false
        workingValue5 = false
        modelHash = false
        -- Beginner: result below is objectEntity.
        localValue3 = localValue3(localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash)
        number3 = localValue3
        localValue3 = SetEntityCollision
        localValue4 = number3
        dataCollection6 = false
        dataCollection7 = false
        localValue3(localValue4, dataCollection6, dataCollection7)
        localValue3 = SetEntityAlpha
        localValue4 = number3
        dataCollection6 = 100
        dataCollection7 = false
        localValue3(localValue4, dataCollection6, dataCollection7)
      end
    end
    localValue2 = number3
    if 0 ~= localValue2 then
      localValue2 = stateFlag15
      if localValue2 then
        localValue2 = GetOffsetFromEntityInWorldCoords
        localValue3 = localValue1
        localValue4 = 0.0
        dataCollection6 = 1.2
        dataCollection7 = 1.32
        localValue2 = localValue2(localValue3, localValue4, dataCollection6, dataCollection7)
        localValue3 = GetEntityRotation
        localValue4 = localValue1
        localValue3 = localValue3(localValue4)
        localValue4 = SetEntityCoords
        dataCollection6 = number3
        dataCollection7 = localValue2.x
        text13 = localValue2.y
        workingValue4 = localValue2.z
        workingValue5 = true
        modelHash = false
        iterator = false
        workingValue = true
        -- Beginner: Move/teleport an entity to new coordinates.
        localValue4(dataCollection6, dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator, workingValue)
        localValue4 = vector3
        dataCollection6 = localValue3.x
        dataCollection6 = dataCollection6 - 20.0
        dataCollection7 = localValue3.y
        text13 = localValue3.z
        localValue4 = localValue4(dataCollection6, dataCollection7, text13)
        dataCollection6 = SetEntityRotation
        dataCollection7 = number3
        text13 = localValue4.x
        workingValue4 = localValue4.y
        workingValue5 = localValue4.z
        modelHash = 2
        iterator = true
        dataCollection6(dataCollection7, text13, workingValue4, workingValue5, modelHash, iterator)
      end
    end
    localValue2 = number3
    if 0 ~= localValue2 then
      localValue2 = stateFlag15
      if not localValue2 then
        localValue2 = ResetEntityAlpha
        localValue3 = number3
        localValue2(localValue3)
        localValue2 = DeleteObject
        localValue3 = number3
        localValue2(localValue3)
        localValue2 = SetEntityAsNoLongerNeeded
        localValue3 = number3
        localValue2(localValue3)
        localValue2 = 0
        number3 = localValue2
      end
    end
  end
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, localValue4, dataCollection6 = localValue2(localValue3)
  for dataCollection7, text13 in localValue2, localValue3, localValue4, dataCollection6 do
    if -1 ~= dataCollection7 then
      workingValue4 = GetEntityBoneIndexByName
      workingValue5 = dataCollection7
      modelHash = "BONETAG_NECK"
      workingValue4 = workingValue4(workingValue5, modelHash)
      workingValue5 = GetEntityBoneIndexByName
      modelHash = dataCollection7
      iterator = "BONETAG_R_HAND"
      workingValue5 = workingValue5(modelHash, iterator)
      modelHash = GetWorldRotationOfEntityBone
      iterator = dataCollection7
      workingValue = workingValue4
      modelHash = modelHash(iterator, workingValue)
      iterator = AttachEntityToEntity
      workingValue = text13
      stateFlag = dataCollection7
      stateFlag2 = workingValue5
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      hashValue = 0.0
      dataCollection3 = modelHash.x
      dataCollection3 = dataCollection3 + 20.0
      stateFlag5 = modelHash.y
      stateFlag5 = stateFlag5 + 180.0
      stateFlag6 = modelHash.z
      stateFlag6 = stateFlag6 + 90.0
      workingValue2 = false
      stateFlag7 = false
      stateFlag8 = false
      stateFlag9 = true
      stateFlag10 = 0
      stateFlag11 = false
      -- Beginner: Attach one entity to another entity.
      iterator(workingValue, stateFlag, stateFlag2, stateFlag3, stateFlag4, hashValue, dataCollection3, stateFlag5, stateFlag6, workingValue2, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag11)
    end
  end
  localValue2 = text12
  if "no" ~= localValue2 then
    localValue2 = text12
    if "rot" == localValue2 then
      localValue2 = workingValue3
      if localValue2 then
        localValue2 = vector3
        localValue3 = workingValue3.x
        localValue4 = workingValue3.y
        dataCollection6 = workingValue3.z
        localValue2 = localValue2(localValue3, localValue4, dataCollection6)
        localValue3 = SetEntityRotation
        localValue4 = localValue1
        dataCollection6 = localValue2.x
        dataCollection7 = localValue2.y
        text13 = localValue2.z
        workingValue4 = 2
        workingValue5 = true
        localValue3(localValue4, dataCollection6, dataCollection7, text13, workingValue4, workingValue5)
      end
    end
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 21
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 22
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 23
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 24
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 25
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 30
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 31
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 32
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 33
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 34
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 35
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 44
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 140
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 141
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 142
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 257
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 263
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 264
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 266
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 267
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 268
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 269
    dataCollection6 = true
    localValue2(localValue3, localValue4, dataCollection6)
  end
end
text = CMG
text = text.createThreadOnTick
text2 = createVector32
text3 = "LFB Ladders"
-- Beginner: Run a helper every game frame while this script is active.
text(text2, text3)
