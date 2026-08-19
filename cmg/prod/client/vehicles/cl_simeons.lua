--[[
    LEVEL 1 BEGINNER GUIDE — Simeons
    =====================================

    File: cmg/prod/client/vehicles/cl_simeons.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Simeons feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 44
      * Background threads: 0
      * Always-running loops: 9
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
local dataCollection, dataCollection4, dataCollection6, workingValue23, workingValue26, number4, number5, stateFlag13, workingValue29, workingValue30, stateFlag, cmgOperation, eventHandler, text2, workingValue5, cmgOperation3, stateFlag7, workingValue7, cmgOperation4, workingValue8, text5, workingValue11, workingValue12, workingValue13, workingValue14, workingValue16, workingValue18, text8, text9, rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14
dataCollection = {}
dataCollection4 = {}
dataCollection6 = {}
workingValue23 = nil
workingValue26 = nil
number4 = 0
number5 = 0
stateFlag13 = false
workingValue29 = nil
workingValue30 = nil
stateFlag = false
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
eventHandler = "cfg/cfg_simeons"
-- Beginner: result below is config.
cmgOperation = cmgOperation(eventHandler)
eventHandler = RegisterNetEvent
text2 = "c4761cc0c0"
-- Beginner: this function handles network event "c4761cc0c0".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2
  dataCollection = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c4761cc0c0".
eventHandler(text2, workingValue5)
eventHandler = RegisterNetEvent
text2 = "c873778784"
-- Beginner: this function handles network event "c873778784".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2
  dataCollection4 = localValue1
end
eventHandler(text2, workingValue5)
eventHandler = RegisterNetEvent
text2 = "15907965ab"
-- Beginner: this function handles network event "15907965ab".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18
  localValue1 = DeleteVehicle
  localValue2 = number4
  localValue1(localValue2)
  localValue1 = 0
  number4 = localValue1
  localValue1 = 0
  number5 = localValue1
  localValue1 = false
  stateFlag13 = localValue1
  localValue2 = workingValue23
  localValue1 = dataCollection
  localValue1 = localValue1[localValue2]
  localValue1 = localValue1.posVector
  localValue2 = SetEntityCoords
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1.x
  text15 = localValue1.y
  vehicle3 = localValue1.z
  cmgOperation7 = false
  stateFlag14 = false
  stateFlag16 = false
  stateFlag18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue2(localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "15907965ab".
eventHandler(text2, workingValue5)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, text15, vehicle3
  if nil ~= localValue1 then
    workingValue23 = localValue1
  end
  if "Simeons" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.getPlayerBucket
    localValue2 = localValue2()
    if 0 == localValue2 then
      localValue2 = TriggerServerEvent
      localValue3 = "ba41f4a575"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ba41f4a575".
      localValue2(localValue3)
    end
  end
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  text15 = "cardealer"
  vehicle3 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, text15, vehicle3)
  localValue4 = true
  localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, text15
  localValue1 = TriggerServerEvent
  localValue2 = "2d4f7f8a9f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cardealer"
  text15 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text15)
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = nil
  workingValue23 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue5(localValue1, localValue2, localValue3, localValue4)
  local text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6
  text15 = DeleteVehicle
  vehicle3 = GetVehiclePedIsIn
  cmgOperation7 = CMG
  cmgOperation7 = cmgOperation7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation7 = cmgOperation7()
  stateFlag14 = false
  vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6 = vehicle3(cmgOperation7, stateFlag14)
  text15(vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6)
  text15 = GetHashKey
  vehicle3 = localValue1
  -- Beginner: result below is hash.
  text15 = text15(vehicle3)
  vehicle3 = RequestModel
  cmgOperation7 = text15
  vehicle3(cmgOperation7)
  vehicle3 = 0
  while true do
    cmgOperation7 = HasModelLoaded
    stateFlag14 = text15
    cmgOperation7 = cmgOperation7(stateFlag14)
    if not (not cmgOperation7 and vehicle3 < 100) then
      break
    end
    cmgOperation7 = Citizen
    cmgOperation7 = cmgOperation7.Wait
    stateFlag14 = 10
    cmgOperation7(stateFlag14)
    vehicle3 = vehicle3 + 1
  end
  cmgOperation7 = HasModelLoaded
  stateFlag14 = text15
  cmgOperation7 = cmgOperation7(stateFlag14)
  if cmgOperation7 then
    cmgOperation7 = CreateVehicle
    stateFlag14 = text15
    stateFlag16 = localValue2
    stateFlag18 = localValue3
    stateFlag2 = localValue4
    heading = GetEntityHeading
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.getPlayerPed
    cmgOperation2, stateFlag5, stateFlag6 = cmgOperation2()
    -- Beginner: result below is heading.
    heading = heading(cmgOperation2, stateFlag5, stateFlag6)
    cmgOperation2 = false
    stateFlag5 = false
    -- Beginner: result below is vehicleEntity.
    cmgOperation7 = cmgOperation7(stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5)
    stateFlag14 = CMG
    stateFlag14 = stateFlag14.initLocalVehicle
    stateFlag16 = cmgOperation7
    stateFlag14(stateFlag16)
    stateFlag14 = SetEntityAsMissionEntity
    stateFlag16 = cmgOperation7
    stateFlag18 = false
    stateFlag2 = false
    stateFlag14(stateFlag16, stateFlag18, stateFlag2)
    stateFlag14 = FreezeEntityPosition
    stateFlag16 = cmgOperation7
    stateFlag18 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag14(stateFlag16, stateFlag18)
    stateFlag14 = SetEntityInvincible
    stateFlag16 = cmgOperation7
    stateFlag18 = true
    stateFlag14(stateFlag16, stateFlag18)
    stateFlag14 = SetVehicleDoorsLocked
    stateFlag16 = cmgOperation7
    stateFlag18 = 4
    stateFlag14(stateFlag16, stateFlag18)
    stateFlag14 = SetModelAsNoLongerNeeded
    stateFlag16 = text15
    stateFlag14(stateFlag16)
    stateFlag14 = TaskWarpPedIntoVehicle
    stateFlag16 = CMG
    stateFlag16 = stateFlag16.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag16 = stateFlag16()
    stateFlag18 = cmgOperation7
    stateFlag2 = -1
    stateFlag14(stateFlag16, stateFlag18, stateFlag2)
    stateFlag14 = IsThisModelAHeli
    stateFlag16 = text15
    stateFlag14 = stateFlag14(stateFlag16)
    if stateFlag14 then
      stateFlag14 = Citizen
      stateFlag14 = stateFlag14.Wait
      stateFlag16 = 0
      stateFlag14(stateFlag16)
      stateFlag14 = SetEntityCoordsNoOffset
      stateFlag16 = cmgOperation7
      stateFlag18 = localValue2
      stateFlag2 = localValue3
      heading = localValue4
      cmgOperation2 = false
      stateFlag5 = false
      stateFlag6 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      stateFlag14(stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6)
      stateFlag14 = FreezeEntityPosition
      stateFlag16 = cmgOperation7
      stateFlag18 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag14(stateFlag16, stateFlag18)
    end
    stateFlag14 = Citizen
    stateFlag14 = stateFlag14.CreateThread

    -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
    function stateFlag16()
      local localValue12, localValue22, heading2, workingValue24
      while true do
        localValue12 = DoesEntityExist
        localValue22 = cmgOperation7
        localValue12 = localValue12(localValue22)
        if not localValue12 then
          break
        end
        localValue12 = Citizen
        localValue12 = localValue12.Wait
        localValue22 = 25
        localValue12(localValue22)
        localValue12 = SetEntityHeading
        localValue22 = cmgOperation7
        heading2 = GetEntityHeading
        workingValue24 = cmgOperation7
        -- Beginner: result below is heading.
        heading2 = heading2(workingValue24)
        heading2 = heading2 + 1
        -- Beginner: Change the direction an entity is facing.
        localValue12(localValue22, heading2)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    stateFlag14(stateFlag16)
    stateFlag14 = true
    stateFlag13 = stateFlag14
    return cmgOperation7
  else
    cmgOperation7 = tCMG
    cmgOperation7 = cmgOperation7.notify
    stateFlag14 = "~r~Could not load vehicle"
    -- Beginner: Show a notification to the player.
    cmgOperation7(stateFlag14)
    cmgOperation7 = -1
    return cmgOperation7
  end
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
function stateFlag7()
  local localValue1, localValue2
  localValue1 = stateFlag13
  if not localValue1 then
    localValue1 = stateFlag
  end
  return localValue1
end
cmgOperation3.isSimeonsVehiclePreviewActive = stateFlag7
cmgOperation3 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
function stateFlag7()
  local localValue1, localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6, text3
  localValue1 = pairs
  localValue2 = cmgOperation.simeonsInstances
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for text15, vehicle3 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation7 = vehicle3.posVector
    stateFlag14 = vehicle3.blipId
    stateFlag16 = vehicle3.blipColour
    stateFlag18 = tCMG
    stateFlag18 = stateFlag18.addBlip
    stateFlag2 = cmgOperation7.x
    heading = cmgOperation7.y
    cmgOperation2 = cmgOperation7.z
    stateFlag5 = stateFlag14
    stateFlag6 = stateFlag16
    text3 = "Simeons"
    -- Beginner: Create a minimap blip.
    stateFlag18(stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6, text3)
    stateFlag18 = tCMG
    stateFlag18 = stateFlag18.addPropMarker
    stateFlag2 = "bzzz_marker_shop_blue_anim"
    heading = cmgOperation7.x
    cmgOperation2 = cmgOperation7.y
    stateFlag5 = cmgOperation7.z
    stateFlag6 = 50.0
    -- Beginner: Create a prop-style world marker.
    stateFlag18(stateFlag2, heading, cmgOperation2, stateFlag5, stateFlag6)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(stateFlag7)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3
  localValue2 = GetEntityCoords
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3)
  localValue2 = localValue2 - localValue1
  localValue2 = #localValue2
  if localValue2 < 5.0 then
    localValue2 = true
    return localValue2
  end
  localValue2 = false
  return localValue2
end
stateFlag7 = false

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16
  localValue1 = dataCollection
  if nil ~= localValue1 then
    localValue1 = pairs
    localValue2 = dataCollection
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for text15, vehicle3 in localValue1, localValue2, localValue3, localValue4 do
      cmgOperation7 = vehicle3.previewVector
      stateFlag14 = dataCollection6
      stateFlag14 = stateFlag14[text15]
      if nil ~= stateFlag14 then
        stateFlag14 = dataCollection6
        stateFlag14 = stateFlag14[text15]
        if stateFlag14 < 2.0 then
          stateFlag14 = stateFlag7
          if not stateFlag14 then
            stateFlag14 = TriggerServerEvent
            stateFlag16 = "ce1e6df4e8"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce1e6df4e8".
            stateFlag14(stateFlag16)
            stateFlag14 = eventHandler
            stateFlag16 = text15
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            stateFlag14(stateFlag16)
            stateFlag14 = true
            stateFlag7 = stateFlag14
            stateFlag14 = Citizen
            stateFlag14 = stateFlag14.CreateThread

            -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
            function stateFlag16()
              local localValue12, localValue22
              while true do
                localValue22 = text15
                localValue12 = dataCollection6
                localValue12 = localValue12[localValue22]
                if not (localValue12 < 2.0) then
                  localValue12 = stateFlag13
                  if not localValue12 then
                    localValue12 = cmgOperation3
                    localValue22 = cmgOperation7
                    localValue12 = localValue12(localValue22)
                    if not localValue12 then
                      localValue12 = stateFlag
                      if not localValue12 then
                        break
                      end
                    end
                  end
                end
                localValue12 = Wait
                localValue22 = 0
                localValue12(localValue22)
              end
              localValue12 = text2
              localValue12()
              localValue12 = false
              stateFlag7 = localValue12
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            stateFlag14(stateFlag16)
          end
        end
      end
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
workingValue8 = workingValue7
text5 = "Simeons"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(workingValue8, text5)
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18
  while true do
    localValue1 = dataCollection
    if nil ~= localValue1 then
      localValue1 = pairs
      localValue2 = dataCollection
      localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
      for text15, vehicle3 in localValue1, localValue2, localValue3, localValue4 do
        cmgOperation7 = vehicle3.posVector
        stateFlag14 = dataCollection6
        stateFlag16 = GetEntityCoords
        stateFlag18 = CMG
        stateFlag18 = stateFlag18.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        stateFlag18 = stateFlag18()
        -- Beginner: result below is entityCoords.
        stateFlag16 = stateFlag16(stateFlag18)
        stateFlag16 = stateFlag16 - cmgOperation7
        stateFlag16 = #stateFlag16
        stateFlag14[text15] = stateFlag16
      end
    end
    localValue1 = Wait
    localValue2 = 250
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(workingValue8)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, text15, vehicle3 = localValue3(localValue4)
  for cmgOperation7, stateFlag14 in localValue3, localValue4, text15, vehicle3 do
    if "_config" ~= cmgOperation7 then
      stateFlag16 = table
      stateFlag16 = stateFlag16.insert
      stateFlag18 = localValue2
      stateFlag2 = {}
      heading = cmgOperation7
      cmgOperation2 = stateFlag14
      stateFlag2[1] = heading
      stateFlag2[2] = cmgOperation2
      stateFlag16(stateFlag18, stateFlag2)
    end
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue2

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12, localValue22) ===
  function text15(localValue12, localValue22)
    local heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2
    heading2 = localValue12[2]
    heading2 = heading2[2]
    if not heading2 then
      heading2 = 0
    end
    workingValue24 = localValue22[2]
    workingValue24 = workingValue24[2]
    if not workingValue24 then
      workingValue24 = 0
    end
    if heading2 ~= workingValue24 then
      workingValue27 = heading2 < workingValue24
      return workingValue27
    end
    workingValue27 = tonumber
    workingValue28 = localValue12[2]
    workingValue28 = workingValue28.levelRequired
    workingValue27 = workingValue27(workingValue28)
    if not workingValue27 then
      workingValue27 = 0
    end
    workingValue28 = tonumber
    stringHelper = localValue22[2]
    stringHelper = stringHelper.levelRequired
    workingValue28 = workingValue28(stringHelper)
    if not workingValue28 then
      workingValue28 = 0
    end
    if workingValue27 ~= workingValue28 then
      stringHelper = workingValue27 < workingValue28
      return stringHelper
    end
    stringHelper = tostring
    iterator = localValue12[1]
    stringHelper = stringHelper(iterator)
    iterator = tostring
    iterator2 = localValue22[1]
    iterator = iterator(iterator2)
    stringHelper = stringHelper < iterator
    return stringHelper
  end
  localValue3(localValue4, text15)
  localValue3 = 0

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local localValue12, localValue22, heading2
    localValue12 = localValue3
    localValue12 = localValue12 + 1
    localValue3 = localValue12
    localValue22 = localValue3
    localValue12 = localValue2
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue22 = localValue3
      localValue12 = localValue2
      localValue12 = localValue12[localValue22]
      localValue12 = localValue12[1]
      heading2 = localValue3
      localValue22 = localValue2
      localValue22 = localValue22[heading2]
      localValue22 = localValue22[2]
      return localValue12, localValue22
    else
      localValue12 = nil
      localValue22 = nil
      return localValue12, localValue22
    end
  end
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" ~= localValue2 or "" == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = cmgOperation.simeonsLevelNameToType
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = localValue2[localValue1]
  if not localValue3 then
    localValue3 = localValue1
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  if "cmg_mechanic" == localValue1 then
    localValue2 = "Mechanic job"
    return localValue2
  end
  if "cmg_health_service" == localValue1 then
    localValue2 = "Health Service"
    return localValue2
  end
  localValue2 = nil
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, text15
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = tonumber
    localValue3 = localValue1.levelRequired
    localValue2 = localValue2(localValue3)
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = workingValue8
    localValue4 = localValue1.levelName
    localValue3 = localValue3(localValue4)
  end
  if not localValue2 or localValue2 <= 0 then
    localValue4 = true
    return localValue4
  end
  if not localValue3 then
    localValue4 = false
    return localValue4
  end
  localValue4 = CMG
  localValue4 = localValue4.getClientJobLevel
  text15 = localValue3
  localValue4 = localValue4(text15)
  localValue4 = localValue2 <= localValue4
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.skillRequired
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 or "" == localValue2 then
    localValue3 = true
    return localValue3
  end
  localValue3 = CMG
  localValue3 = localValue3.hasClientSkill
  localValue4 = localValue2
  return localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue11
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = workingValue12
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1[3]
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = tonumber
    localValue4 = localValue1.levelRequired
    localValue3 = localValue3(localValue4)
  end
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = workingValue8
    text15 = localValue1.levelName
    localValue4 = localValue4(text15)
  end
  text15 = {}
  vehicle3 = "Boot size (%skg)"
  cmgOperation7 = vehicle3
  vehicle3 = vehicle3.format
  stateFlag14 = tostring
  stateFlag16 = localValue2
  stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2 = stateFlag14(stateFlag16)
  vehicle3, cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2 = vehicle3(cmgOperation7, stateFlag14, stateFlag16, stateFlag18, stateFlag2, heading, cmgOperation2)
  text15[1] = vehicle3
  text15[2] = cmgOperation7
  text15[3] = stateFlag14
  text15[4] = stateFlag16
  text15[5] = stateFlag18
  text15[6] = stateFlag2
  text15[7] = heading
  text15[8] = cmgOperation2
  if localValue3 and localValue3 > 0 then
    if not localValue4 then
      vehicle3 = #text15
      vehicle3 = vehicle3 + 1
      text15[vehicle3] = "~r~Listing misconfigured (levelName / level type)"
    else
      vehicle3 = CMG
      vehicle3 = vehicle3.getClientJobLevel
      cmgOperation7 = localValue4
      vehicle3 = vehicle3(cmgOperation7)
      cmgOperation7 = text5
      stateFlag14 = localValue4
      cmgOperation7 = cmgOperation7(stateFlag14)
      if not cmgOperation7 then
        cmgOperation7 = tostring
        stateFlag14 = localValue1.levelName
        cmgOperation7 = cmgOperation7(stateFlag14)
      end
      if localValue3 <= vehicle3 then
        stateFlag14 = #text15
        stateFlag14 = stateFlag14 + 1
        stateFlag16 = "~g~%s Level %d / %d"
        stateFlag18 = stateFlag16
        stateFlag16 = stateFlag16.format
        stateFlag2 = cmgOperation7
        heading = vehicle3
        cmgOperation2 = localValue3
        stateFlag16 = stateFlag16(stateFlag18, stateFlag2, heading, cmgOperation2)
        text15[stateFlag14] = stateFlag16
      else
        stateFlag14 = #text15
        stateFlag14 = stateFlag14 + 1
        stateFlag16 = "~r~%s Level %d required (Your Level: %d)"
        stateFlag18 = stateFlag16
        stateFlag16 = stateFlag16.format
        stateFlag2 = cmgOperation7
        heading = localValue3
        cmgOperation2 = vehicle3
        stateFlag16 = stateFlag16(stateFlag18, stateFlag2, heading, cmgOperation2)
        text15[stateFlag14] = stateFlag16
      end
    end
  end
  vehicle3 = localValue1 or vehicle3
  if localValue1 then
    vehicle3 = localValue1.skillRequired
  end
  cmgOperation7 = type
  stateFlag14 = vehicle3
  cmgOperation7 = cmgOperation7(stateFlag14)
  if "string" == cmgOperation7 and "" ~= vehicle3 then
    cmgOperation7 = localValue1.skillHint
    if not cmgOperation7 then
      cmgOperation7 = "skill tree perk"
    end
    stateFlag14 = CMG
    stateFlag14 = stateFlag14.hasClientSkill
    stateFlag16 = vehicle3
    stateFlag14 = stateFlag14(stateFlag16)
    if stateFlag14 then
      stateFlag14 = #text15
      stateFlag14 = stateFlag14 + 1
      stateFlag16 = "~g~%s unlocked"
      stateFlag18 = stateFlag16
      stateFlag16 = stateFlag16.format
      stateFlag2 = cmgOperation7
      stateFlag16 = stateFlag16(stateFlag18, stateFlag2)
      text15[stateFlag14] = stateFlag16
    else
      stateFlag14 = #text15
      stateFlag14 = stateFlag14 + 1
      stateFlag16 = "~r~Requires %s skill unlocked"
      stateFlag18 = stateFlag16
      stateFlag16 = stateFlag16.format
      stateFlag2 = cmgOperation7
      stateFlag16 = stateFlag16(stateFlag18, stateFlag2)
      text15[stateFlag14] = stateFlag16
    end
  end
  cmgOperation7 = table
  cmgOperation7 = cmgOperation7.concat
  stateFlag14 = text15
  stateFlag16 = "\n"
  return cmgOperation7(stateFlag14, stateFlag16)
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4, text15, vehicle3, cmgOperation7, stateFlag14
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "number" ~= localValue3 or localValue2 <= 0 then
    return localValue2
  end
  localValue3 = dataCollection4
  localValue3 = localValue3[localValue1]
  localValue4 = localValue3 or localValue4
  if localValue3 then
    localValue4 = localValue3._config
  end
  if localValue4 then
    text15 = localValue4.gangVehicleStore
    if true == text15 then
      goto continueAtStep20
    end
  end
  return localValue2
  ::continueAtStep20::
  text15 = CMG
  text15 = text15.getClientGangRpWlVehiclesDiscountPercent
  text15 = text15()
  if text15 <= 0 then
    return localValue2
  end
  vehicle3 = math
  vehicle3 = vehicle3.floor
  cmgOperation7 = text15 / 100
  stateFlag14 = 1
  cmgOperation7 = stateFlag14 - cmgOperation7
  cmgOperation7 = localValue2 * cmgOperation7
  return vehicle3(cmgOperation7)
end
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text8 = "cardealer"
text9 = "mainmenu"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
text10 = ""
text11 = ""
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = "cmg_simeonsui"
text14 = "cmg_simeonsui"
rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14 = rageUiOperation3(text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18(text8, text9, rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18 = RMenu
text8 = workingValue18
workingValue18 = workingValue18.Get
text9 = "cardealer"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
workingValue18 = workingValue18(text8, text9, rageUiOperation3)
text8 = workingValue18
workingValue18 = workingValue18.SetSubtitle
text9 = "~b~Categories"
workingValue18(text8, text9)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text8 = "cardealer"
text9 = "categories"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text10 = RMenu
text11 = text10
text10 = text10.Get
rageUiOperation4 = "cardealer"
rageUiOperation5 = "mainmenu"
-- Beginner: result below is menu.
text10 = text10(text11, rageUiOperation4, rageUiOperation5)
text11 = ""
rageUiOperation4 = "~b~Vehicles"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6, text14 = rageUiOperation6()
rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14 = rageUiOperation3(text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18(text8, text9, rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text8 = "cardealer"
text9 = "vehicle"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text10 = RMenu
text11 = text10
text10 = text10.Get
rageUiOperation4 = "cardealer"
rageUiOperation5 = "categories"
-- Beginner: result below is menu.
text10 = text10(text11, rageUiOperation4, rageUiOperation5)
text11 = ""
rageUiOperation4 = "~b~Options"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6, text14 = rageUiOperation6()
rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14 = rageUiOperation3(text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18(text8, text9, rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18 = RMenu
workingValue18 = workingValue18.Add
text8 = "cardealer"
text9 = "confirm"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
text10 = RMenu
text11 = text10
text10 = text10.Get
rageUiOperation4 = "cardealer"
rageUiOperation5 = "vehicle"
-- Beginner: result below is menu.
text10 = text10(text11, rageUiOperation4, rageUiOperation5)
text11 = ""
rageUiOperation4 = "~b~Are you sure?"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuHeight
rageUiOperation6, text14 = rageUiOperation6()
rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14 = rageUiOperation3(text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18(text8, text9, rageUiOperation3, text10, text11, rageUiOperation4, rageUiOperation5, rageUiOperation6, text14)
workingValue18 = RageUI
workingValue18 = workingValue18.CreateWhile
text8 = 1.0
text9 = RMenu
rageUiOperation3 = text9
text9 = text9.Get
text10 = "cardealer"
text11 = "mainmenu"
-- Beginner: result below is menu.
text9 = text9(rageUiOperation3, text10, text11)
rageUiOperation3 = nil

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cardealer"
  text15 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text15)
  localValue3 = true
  localValue4 = true
  text15 = true

  -- === HELPER FUNCTION: vehicle3() ===
  function vehicle3()
    local localValue12, localValue22, heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text, workingValue2, workingValue3, rageUiOperation, workingValue6, text4, dataCollection2, dataCollection3, stateFlag8, workingValue9, workingValue10, text6, text7
    localValue12 = workingValue23
    if nil ~= localValue12 then
      localValue12 = pairs
      localValue22 = dataCollection
      localValue12, localValue22, heading2, workingValue24 = localValue12(localValue22)
      for workingValue27, workingValue28 in localValue12, localValue22, heading2, workingValue24 do
        stringHelper = workingValue23
        if stringHelper == workingValue27 then
          stringHelper = workingValue28.categorys
          iterator = pairs
          iterator2 = stringHelper
          iterator, iterator2, text16, text = iterator(iterator2)
          for workingValue2, workingValue3 in iterator, iterator2, text16, text do
            rageUiOperation = dataCollection4
            rageUiOperation = rageUiOperation[workingValue3]
            if rageUiOperation then
              rageUiOperation = RageUI
              rageUiOperation = rageUiOperation.ButtonWithStyle
              workingValue6 = workingValue3
              text4 = ""
              dataCollection2 = {}
              dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              dataCollection3 = true

              -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue13, localValue23, localValue32) ===
              function stateFlag8(localValue13, localValue23, localValue32)
                local workingValue25
                if localValue32 then
                  workingValue25 = workingValue3
                  workingValue26 = workingValue25
                end
              end
              workingValue9 = RMenu
              workingValue10 = workingValue9
              workingValue9 = workingValue9.Get
              text6 = "cardealer"
              text7 = "categories"
              workingValue9, workingValue10, text6, text7 = workingValue9(workingValue10, text6, text7)
              -- Beginner: Draw a selectable RageUI menu button.
              rageUiOperation(workingValue6, text4, dataCollection2, dataCollection3, stateFlag8, workingValue9, workingValue10, text6, text7)
            end
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
  function cmgOperation7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cardealer"
  text15 = "categories"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text15)
  localValue3 = true
  localValue4 = true
  text15 = true

  -- === HELPER FUNCTION: vehicle3() ===
  function vehicle3()
    local localValue12, localValue22, heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text, workingValue2, workingValue3, rageUiOperation, workingValue6, text4, dataCollection2, dataCollection3, stateFlag8, workingValue9, workingValue10, text6, text7, rageUiOperation2, workingValue15, workingValue17, dataCollection5, workingValue19, workingValue20, workingValue21, workingValue22, text12, text13
    localValue12 = workingValue23
    if nil ~= localValue12 then
      localValue12 = pairs
      localValue22 = dataCollection
      localValue12, localValue22, heading2, workingValue24 = localValue12(localValue22)
      for workingValue27, workingValue28 in localValue12, localValue22, heading2, workingValue24 do
        stringHelper = workingValue23
        if stringHelper == workingValue27 then
          stringHelper = workingValue28.previewVector
          iterator = workingValue28.categorys
          iterator2 = pairs
          text16 = iterator
          iterator2, text16, text, workingValue2 = iterator2(text16)
          for workingValue3, rageUiOperation in iterator2, text16, text, workingValue2 do
            workingValue6 = workingValue26
            if workingValue6 == rageUiOperation then
              workingValue6 = dataCollection4
              workingValue6 = workingValue6[rageUiOperation]
              if nil ~= workingValue6 then
                workingValue6 = cmgOperation4
                text4 = dataCollection4
                text4 = text4[rageUiOperation]
                workingValue6, text4, dataCollection2, dataCollection3 = workingValue6(text4)
                for stateFlag8, workingValue9 in workingValue6, text4, dataCollection2, dataCollection3 do
                  if "_config" ~= stateFlag8 then
                    workingValue10 = workingValue16
                    text6 = rageUiOperation
                    text7 = workingValue9[2]
                    workingValue10 = workingValue10(text6, text7)
                    text6 = "\194\163"
                    text7 = getMoneyStringFormatted
                    rageUiOperation2 = workingValue10
                    text7 = text7(rageUiOperation2)
                    text6 = text6 .. text7
                    text7 = workingValue13
                    rageUiOperation2 = workingValue9
                    text7 = text7(rageUiOperation2)
                    rageUiOperation2 = RageUI
                    rageUiOperation2 = rageUiOperation2.ButtonWithStyle
                    workingValue15 = workingValue9[1]
                    workingValue17 = workingValue14
                    dataCollection5 = workingValue9
                    workingValue17 = workingValue17(dataCollection5)
                    dataCollection5 = {}
                    dataCollection5.RightLabel = text6
                    workingValue19 = text7

                    -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue13, localValue23, localValue32) ===
                    function workingValue20(localValue13, localValue23, localValue32)
                      local workingValue25, vehicle2, cmgOperation6, stateFlag11, number6
                      if localValue23 then
                        workingValue25 = number4
                        if 0 ~= workingValue25 then
                          workingValue25 = number5
                          vehicle2 = stateFlag8
                          if workingValue25 == vehicle2 then
                            goto continueAtStep22
                          end
                        end
                        workingValue25 = DeleteVehicle
                        vehicle2 = number4
                        workingValue25(vehicle2)
                        workingValue25 = workingValue5
                        vehicle2 = stateFlag8
                        cmgOperation6 = stringHelper.x
                        stateFlag11 = stringHelper.y
                        number6 = stringHelper.z
                        workingValue25 = workingValue25(vehicle2, cmgOperation6, stateFlag11, number6)
                        number4 = workingValue25
                        workingValue25 = stateFlag8
                        number5 = workingValue25
                      end
                      ::continueAtStep22::
                      if localValue32 then
                        workingValue25 = stateFlag8
                        workingValue30 = workingValue25
                        workingValue25 = workingValue9
                        workingValue29 = workingValue25
                      end
                    end
                    workingValue21 = RMenu
                    workingValue22 = workingValue21
                    workingValue21 = workingValue21.Get
                    text12 = "cardealer"
                    text13 = "vehicle"
                    workingValue21, workingValue22, text12, text13 = workingValue21(workingValue22, text12, text13)
                    -- Beginner: Draw a selectable RageUI menu button.
                    rageUiOperation2(workingValue15, workingValue17, dataCollection5, workingValue19, workingValue20, workingValue21, workingValue22, text12, text13)
                  end
                end
              else
                workingValue6 = RageUI
                workingValue6 = workingValue6.ButtonWithStyle
                text4 = "~r~No permission"
                dataCollection2 = ""
                dataCollection3 = {}
                dataCollection3.RightLabel = ""
                stateFlag8 = true

                -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue13, localValue23, localValue32) ===
                function workingValue9(localValue13, localValue23, localValue32)
                end
                workingValue10 = RMenu
                text6 = workingValue10
                workingValue10 = workingValue10.Get
                text7 = "cardealer"
                rageUiOperation2 = "categories"
                workingValue10, text6, text7, rageUiOperation2, workingValue15, workingValue17, dataCollection5, workingValue19, workingValue20, workingValue21, workingValue22, text12, text13 = workingValue10(text6, text7, rageUiOperation2)
                workingValue6(text4, dataCollection2, dataCollection3, stateFlag8, workingValue9, workingValue10, text6, text7, rageUiOperation2, workingValue15, workingValue17, dataCollection5, workingValue19, workingValue20, workingValue21, workingValue22, text12, text13)
              end
            end
          end
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
  function cmgOperation7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cardealer"
  text15 = "vehicle"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text15)
  localValue3 = true
  localValue4 = false
  text15 = false

  -- === HELPER FUNCTION: vehicle3() ===
  function vehicle3()
    local localValue12, localValue22, heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text
    localValue12 = workingValue23
    if nil ~= localValue12 then
      localValue12 = workingValue29
      if localValue12 then
        localValue12 = workingValue13
        localValue22 = workingValue29
        localValue12 = localValue12(localValue22)
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        heading2 = "Purchase "
        workingValue24 = workingValue29
        workingValue24 = workingValue24[1]
        heading2 = heading2 .. workingValue24
        workingValue24 = ""
        workingValue27 = {}
        workingValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workingValue28 = localValue12

        -- === HELPER FUNCTION: stringHelper(localValue13, localValue23, localValue32) ===
        function stringHelper(localValue13, localValue23, localValue32)
        end
        iterator = RMenu
        iterator2 = iterator
        iterator = iterator.Get
        text16 = "cardealer"
        text = "confirm"
        iterator, iterator2, text16, text = iterator(iterator2, text16, text)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text)
        localValue22 = RageUI
        localValue22 = localValue22.ButtonWithStyle
        heading2 = "Test Drive "
        workingValue24 = workingValue29
        workingValue24 = workingValue24[1]
        heading2 = heading2 .. workingValue24
        workingValue24 = ""
        workingValue27 = {}
        workingValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workingValue28 = localValue12

        -- === HELPER FUNCTION: stringHelper(localValue13, localValue23, localValue32) ===
        function stringHelper(localValue13, localValue23, localValue32)
          local workingValue25, vehicle2, cmgOperation6, stateFlag11, number6, cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4, workingValue4, number2
          if localValue32 then
            workingValue25 = DeleteVehicle
            vehicle2 = GetVehiclePedIsIn
            cmgOperation6 = CMG
            cmgOperation6 = cmgOperation6.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgOperation6 = cmgOperation6()
            stateFlag11 = false
            vehicle2, cmgOperation6, stateFlag11, number6, cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4, workingValue4, number2 = vehicle2(cmgOperation6, stateFlag11)
            workingValue25(vehicle2, cmgOperation6, stateFlag11, number6, cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4, workingValue4, number2)
            workingValue25 = stateFlag
            if not workingValue25 then
              workingValue25 = RageUI
              workingValue25 = workingValue25.CloseAll
              workingValue25()
              workingValue25 = GetHashKey
              vehicle2 = workingValue30
              -- Beginner: result below is hash.
              workingValue25 = workingValue25(vehicle2)
              while true do
                vehicle2 = HasModelLoaded
                cmgOperation6 = workingValue25
                vehicle2 = vehicle2(cmgOperation6)
                if vehicle2 then
                  break
                end
                vehicle2 = RequestModel
                cmgOperation6 = workingValue25
                vehicle2(cmgOperation6)
                vehicle2 = Citizen
                vehicle2 = vehicle2.Wait
                cmgOperation6 = 10
                vehicle2(cmgOperation6)
              end
              vehicle2 = HasModelLoaded
              cmgOperation6 = workingValue25
              vehicle2 = vehicle2(cmgOperation6)
              if vehicle2 then
                vehicle2 = true
                stateFlag = vehicle2
                vehicle2 = DeleteEntity
                cmgOperation6 = number4
                -- Beginner: Delete a GTA entity.
                vehicle2(cmgOperation6)
                vehicle2 = vector3
                cmgOperation6 = -914.83026123046
                stateFlag11 = -3287.1538085938
                number6 = 13.521618843078
                vehicle2 = vehicle2(cmgOperation6, stateFlag11, number6)
                cmgOperation6 = IsThisModelABoat
                stateFlag11 = workingValue25
                cmgOperation6 = cmgOperation6(stateFlag11)
                if cmgOperation6 then
                  cmgOperation6 = vector3
                  stateFlag11 = -330.306
                  number6 = -3366.949
                  cmgOperation8 = 0.953
                  cmgOperation6 = cmgOperation6(stateFlag11, number6, cmgOperation8)
                  vehicle2 = cmgOperation6
                end
                cmgOperation6 = CreateVehicle
                stateFlag11 = workingValue25
                number6 = vehicle2.x
                cmgOperation8 = vehicle2.y
                cmgOperation9 = vehicle2.z
                number = 60.962993621826
                stateFlag3 = false
                stateFlag4 = false
                -- Beginner: result below is vehicleEntity.
                cmgOperation6 = cmgOperation6(stateFlag11, number6, cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4)
                stateFlag11 = 60
                number6 = GetEntityCoords
                cmgOperation8 = CMG
                cmgOperation8 = cmgOperation8.getPlayerPed
                cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4, workingValue4, number2 = cmgOperation8()
                -- Beginner: result below is entityCoords.
                number6 = number6(cmgOperation8, cmgOperation9, number, stateFlag3, stateFlag4, workingValue4, number2)
                cmgOperation8 = CMG
                cmgOperation8 = cmgOperation8.initLocalVehicle
                cmgOperation9 = cmgOperation6
                cmgOperation8(cmgOperation9)
                cmgOperation8 = SetModelAsNoLongerNeeded
                cmgOperation9 = workingValue25
                cmgOperation8(cmgOperation9)
                cmgOperation8 = TaskWarpPedIntoVehicle
                cmgOperation9 = CMG
                cmgOperation9 = cmgOperation9.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgOperation9 = cmgOperation9()
                number = cmgOperation6
                stateFlag3 = -1
                cmgOperation8(cmgOperation9, number, stateFlag3)
                cmgOperation8 = CMG
                cmgOperation8 = cmgOperation8.setVehicleFuel
                cmgOperation9 = cmgOperation6
                number = 100
                cmgOperation8(cmgOperation9, number)
                cmgOperation8 = tCMG
                cmgOperation8 = cmgOperation8.notify
                cmgOperation9 = "~g~You have 1 minute to test drive this vehicle!"
                -- Beginner: Show a notification to the player.
                cmgOperation8(cmgOperation9)
                cmgOperation8 = 0
                cmgOperation9 = 24
                number = 1
                for stateFlag3 = cmgOperation8, cmgOperation9, number do
                  stateFlag4 = SetVehicleModKit
                  workingValue4 = cmgOperation6
                  number2 = 0
                  stateFlag4(workingValue4, number2)
                  stateFlag4 = RemoveVehicleMod
                  workingValue4 = cmgOperation6
                  number2 = stateFlag3
                  stateFlag4(workingValue4, number2)
                end
                cmgOperation8 = SetTimeout
                cmgOperation9 = 60000

                -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
                function number()
                  local workingValue, vehicle, cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17
                  workingValue = stateFlag
                  if workingValue then
                    workingValue = DeleteVehicle
                    vehicle = GetVehiclePedIsIn
                    cmgOperation5 = CMG
                    cmgOperation5 = cmgOperation5.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    cmgOperation5 = cmgOperation5()
                    stateFlag9 = false
                    vehicle, cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17 = vehicle(cmgOperation5, stateFlag9)
                    workingValue(vehicle, cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17)
                    workingValue = DeleteVehicle
                    vehicle = cmgOperation6
                    workingValue(vehicle)
                    workingValue = SetEntityCoords
                    vehicle = CMG
                    vehicle = vehicle.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    vehicle = vehicle()
                    cmgOperation5 = number6.x
                    stateFlag9 = number6.y
                    number3 = number6.z
                    stateFlag10 = false
                    stateFlag12 = false
                    stateFlag15 = false
                    stateFlag17 = false
                    -- Beginner: Move/teleport an entity to new coordinates.
                    workingValue(vehicle, cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17)
                    workingValue = TriggerServerEvent
                    vehicle = "2d4f7f8a9f"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
                    workingValue(vehicle)
                    workingValue = false
                    stateFlag = workingValue
                    workingValue = tCMG
                    workingValue = workingValue.notify
                    vehicle = "~b~Test drive over!"
                    -- Beginner: Show a notification to the player.
                    workingValue(vehicle)
                    workingValue = eventHandler
                    -- Beginner: Register a network event handler that the server/other clients can trigger.
                    workingValue()
                  end
                end
                cmgOperation8(cmgOperation9, number)
                cmgOperation8 = Citizen
                cmgOperation8 = cmgOperation8.CreateThread

                -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
                function cmgOperation9()
                  local workingValue, vehicle
                  while true do
                    workingValue = stateFlag
                    if not workingValue then
                      break
                    end
                    workingValue = stateFlag11
                    workingValue = workingValue - 1
                    stateFlag11 = workingValue
                    workingValue = Wait
                    vehicle = 1000
                    workingValue(vehicle)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgOperation8(cmgOperation9)
                cmgOperation8 = Citizen
                cmgOperation8 = cmgOperation8.CreateThread

                -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
                function cmgOperation9()
                  local workingValue, vehicle, cmgOperation5, stateFlag9, number3, stateFlag10
                  while true do
                    workingValue = stateFlag
                    if not workingValue then
                      break
                    end
                    workingValue = stateFlag11
                    if workingValue < 60 then
                      workingValue = CMG
                      workingValue = workingValue.DrawText
                      vehicle = 0.8
                      cmgOperation5 = 0.9049999999999999
                      stateFlag9 = "~y~"
                      number3 = stateFlag11
                      stateFlag10 = " seconds left."
                      stateFlag9 = stateFlag9 .. number3 .. stateFlag10
                      number3 = 0.35
                      workingValue(vehicle, cmgOperation5, stateFlag9, number3)
                    end
                    workingValue = Wait
                    vehicle = 0
                    workingValue(vehicle)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgOperation8(cmgOperation9)
                cmgOperation8 = Citizen
                cmgOperation8 = cmgOperation8.CreateThread

                -- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
                function cmgOperation9()
                  local workingValue, vehicle, cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17, stateFlag19
                  while true do
                    workingValue = stateFlag
                    if not workingValue then
                      break
                    end
                    workingValue = GetVehiclePedIsIn
                    vehicle = CMG
                    vehicle = vehicle.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    vehicle = vehicle()
                    cmgOperation5 = false
                    -- Beginner: result below is currentVehicle.
                    workingValue = workingValue(vehicle, cmgOperation5)
                    if nil ~= workingValue then
                      vehicle = cmgOperation6
                      if vehicle ~= workingValue then
                        vehicle = DeleteVehicle
                        cmgOperation5 = GetVehiclePedIsIn
                        stateFlag9 = CMG
                        stateFlag9 = stateFlag9.getPlayerPed
                        -- Beginner: result below is localPlayerPed.
                        stateFlag9 = stateFlag9()
                        number3 = false
                        cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17, stateFlag19 = cmgOperation5(stateFlag9, number3)
                        vehicle(cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17, stateFlag19)
                        vehicle = DeleteVehicle
                        cmgOperation5 = cmgOperation6
                        vehicle(cmgOperation5)
                        vehicle = SetEntityCoords
                        cmgOperation5 = CMG
                        cmgOperation5 = cmgOperation5.getPlayerPed
                        -- Beginner: result below is localPlayerPed.
                        cmgOperation5 = cmgOperation5()
                        stateFlag9 = number6.x
                        number3 = number6.y
                        stateFlag10 = number6.z
                        stateFlag12 = false
                        stateFlag15 = false
                        stateFlag17 = false
                        stateFlag19 = false
                        -- Beginner: Move/teleport an entity to new coordinates.
                        vehicle(cmgOperation5, stateFlag9, number3, stateFlag10, stateFlag12, stateFlag15, stateFlag17, stateFlag19)
                        vehicle = TriggerServerEvent
                        cmgOperation5 = "2d4f7f8a9f"
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
                        vehicle(cmgOperation5)
                        vehicle = tCMG
                        vehicle = vehicle.notify
                        cmgOperation5 = "~b~Test drive over!"
                        -- Beginner: Show a notification to the player.
                        vehicle(cmgOperation5)
                        vehicle = false
                        stateFlag = vehicle
                        vehicle = eventHandler
                        -- Beginner: Register a network event handler that the server/other clients can trigger.
                        vehicle()
                      end
                    end
                    vehicle = Wait
                    cmgOperation5 = 0
                    vehicle(cmgOperation5)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgOperation8(cmgOperation9)
              end
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        localValue22(heading2, workingValue24, workingValue27, workingValue28, stringHelper)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
  function cmgOperation7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cardealer"
  text15 = "confirm"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, text15)
  localValue3 = true
  localValue4 = false
  text15 = false

  -- === HELPER FUNCTION: vehicle3() ===
  function vehicle3()
    local localValue12, localValue22, heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text
    localValue12 = workingValue29
    if localValue12 then
      localValue12 = workingValue13
      localValue22 = workingValue29
      localValue12 = localValue12(localValue22)
      if localValue12 then
        goto continueAtStep10
      end
    end
    localValue12 = false
    ::continueAtStep10::
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    heading2 = "Yes"
    workingValue24 = ""
    workingValue27 = {}
    workingValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue28 = localValue12

    -- === HELPER FUNCTION: stringHelper(localValue13, localValue23, localValue32) ===
    function stringHelper(localValue13, localValue23, localValue32)
      local workingValue25, vehicle2, cmgOperation6, stateFlag11
      if localValue32 then
        workingValue25 = TriggerServerEvent
        vehicle2 = "0f93bb7bac"
        cmgOperation6 = workingValue26
        stateFlag11 = workingValue30
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f93bb7bac".
        workingValue25(vehicle2, cmgOperation6, stateFlag11)
      end
    end
    iterator = RMenu
    iterator2 = iterator
    iterator = iterator.Get
    text16 = "cardealer"
    text = "mainmenu"
    iterator, iterator2, text16, text = iterator(iterator2, text16, text)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text)
    localValue22 = RageUI
    localValue22 = localValue22.ButtonWithStyle
    heading2 = "No"
    workingValue24 = ""
    workingValue27 = {}
    workingValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue28 = true

    -- === HELPER FUNCTION: stringHelper(localValue13, localValue23, localValue32) ===
    function stringHelper(localValue13, localValue23, localValue32)
      local workingValue25, vehicle2
      if localValue32 then
        workingValue25 = tCMG
        workingValue25 = workingValue25.notify
        vehicle2 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        workingValue25(vehicle2)
      end
    end
    iterator = RMenu
    iterator2 = iterator
    iterator = iterator.Get
    text16 = "cardealer"
    text = "mainmenu"
    iterator, iterator2, text16, text = iterator(iterator2, text16, text)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(heading2, workingValue24, workingValue27, workingValue28, stringHelper, iterator, iterator2, text16, text)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: none) ===
  function cmgOperation7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, text15, vehicle3, cmgOperation7)
end
workingValue18(text8, text9, rageUiOperation3, text10)

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3
  localValue1 = stateFlag13
  if localValue1 then
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 177
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      while true do
        localValue1 = DoesEntityExist
        localValue2 = number4
        localValue1 = localValue1(localValue2)
        if not localValue1 then
          break
        end
        localValue1 = DeleteVehicle
        localValue2 = number4
        localValue1(localValue2)
        localValue1 = Wait
        localValue2 = 50
        localValue1(localValue2)
      end
      localValue1 = 0
      number4 = localValue1
      localValue1 = 0
      number5 = localValue1
      localValue1 = false
      stateFlag13 = localValue1
    end
  end
end
text8 = CMG
text8 = text8.createThreadOnTick
text9 = workingValue18
rageUiOperation3 = "Simeons Preview"
-- Beginner: Run a helper every game frame while this script is active.
text8(text9, rageUiOperation3)
