--[[
    LEVEL 1 BEGINNER GUIDE — Backpacks
    =======================================

    File: cmg/prod/client/misc/cl_backpacks.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Backpacks feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 22
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
local cmgOperation, text5, workingValue12, workingValue14, stateFlag10, dataCollection2, workingValue16, cmgOperation5, workingValue22, workingValue25, workingValue, workingValue3, workingValue6, eventHandler, cmgOperation2, text2, stateFlag4, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text6, text7
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text5 = "cfg/cfg_backpacks"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text5)
text5 = nil
workingValue12 = nil
workingValue14 = nil
stateFlag10 = false
dataCollection2 = {}
workingValue16 = nil
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
function workingValue22()
  local localValue1, localValue2
  localValue1 = text5
  return localValue1
end
cmgOperation5.getCurrentBackpack = workingValue22

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" ~= localValue2 then
    return localValue1
  end
  localValue2 = string
  localValue2 = localValue2.gsub
  localValue3 = localValue1
  localValue4 = "^%s*(.-)%s*$"
  localValue5 = "%1"
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2, localValue3, localValue4
  if nil == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "number" == localValue2 then
    localValue2 = math
    localValue2 = localValue2.floor
    localValue3 = localValue1 + 0.5
    return localValue2(localValue3)
  end
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" == localValue2 then
    localValue2 = tonumber
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue3 = math
      localValue3 = localValue3.floor
      localValue4 = localValue2 + 0.5
      return localValue3(localValue4)
    end
  end
  localValue2 = nil
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2) ===
function workingValue25(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, workingValue17, workingValue19, workingValue23, number12, iterator
  localValue3 = cmgOperation5
  localValue4 = localValue2.collectionName
  localValue3 = localValue3(localValue4)
  localValue4 = workingValue22
  localValue5 = localValue2.localIndex
  localValue4 = localValue4(localValue5)
  if nil == localValue4 then
    return
  end
  localValue5 = SetPedCollectionComponentVariation
  localValue6 = localValue1
  workingValue17 = localValue2.componentId
  workingValue19 = localValue3
  workingValue23 = localValue4
  number12 = localValue2.textureIndex
  if not number12 then
    number12 = 0
  end
  iterator = 0
  localValue5(localValue6, workingValue17, workingValue19, workingValue23, number12, iterator)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, workingValue17, workingValue19, workingValue23, number12, iterator
  localValue3 = localValue2.componentId
  localValue4 = GetPedDrawableVariation
  localValue5 = localValue1
  localValue6 = localValue3
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = cmgOperation5
  localValue6 = GetPedCollectionNameFromDrawable
  workingValue17 = localValue1
  workingValue19 = localValue3
  workingValue23 = localValue4
  localValue6, workingValue17, workingValue19, workingValue23, number12, iterator = localValue6(workingValue17, workingValue19, workingValue23)
  localValue5 = localValue5(localValue6, workingValue17, workingValue19, workingValue23, number12, iterator)
  localValue6 = workingValue22
  workingValue17 = GetPedCollectionLocalIndexFromDrawable
  workingValue19 = localValue1
  workingValue23 = localValue3
  number12 = localValue4
  workingValue17, workingValue19, workingValue23, number12, iterator = workingValue17(workingValue19, workingValue23, number12)
  localValue6 = localValue6(workingValue17, workingValue19, workingValue23, number12, iterator)
  workingValue17 = cmgOperation5
  workingValue19 = localValue2.collectionName
  workingValue17 = workingValue17(workingValue19)
  workingValue19 = workingValue22
  workingValue23 = localValue2.localIndex
  workingValue19 = workingValue19(workingValue23)
  if localValue5 ~= workingValue17 or localValue6 ~= workingValue19 then
    workingValue23 = false
    return workingValue23
  end
  workingValue23 = GetPedTextureVariation
  number12 = localValue1
  iterator = localValue3
  workingValue23 = workingValue23(number12, iterator)
  number12 = localValue2.textureIndex
  if not number12 then
    number12 = 0
  end
  if workingValue23 ~= number12 then
    workingValue23 = false
    return workingValue23
  end
  workingValue23 = true
  return workingValue23
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, workingValue17, workingValue19
  localValue2 = localValue1[1]
  localValue3 = localValue1[2]
  localValue4 = localValue1[3]
  localValue5 = localValue1[4]
  localValue6 = workingValue25
  workingValue17 = CMG
  workingValue17 = workingValue17.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workingValue17 = workingValue17()
  workingValue19 = {}
  workingValue19.componentId = localValue2
  workingValue19.collectionName = localValue3
  workingValue19.localIndex = localValue4
  workingValue19.textureIndex = localValue5
  localValue6(workingValue17, workingValue19)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = text5
  if nil ~= localValue1 then
    localValue1 = SetPedComponentVariation
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = 5
    localValue4 = 0
    localValue5 = 0
    localValue6 = 2
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
    localValue1 = nil
    text5 = localValue1
    localValue1 = nil
    workingValue12 = localValue1
  end
end
eventHandler = RegisterNetEvent
cmgOperation2 = "f0b530372d"
-- Beginner: this function handles network event "f0b530372d".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function text2(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local workingValue17, workingValue19, workingValue23, number12
  text5 = localValue6
  workingValue17 = {}
  workingValue17.componentId = localValue1
  workingValue17.collectionName = localValue2
  workingValue17.localIndex = localValue3
  workingValue17.textureIndex = localValue4
  workingValue12 = workingValue17
  workingValue17 = workingValue25
  workingValue19 = CMG
  workingValue19 = workingValue19.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workingValue19 = workingValue19()
  workingValue23 = workingValue12
  workingValue17(workingValue19, workingValue23)
  workingValue17 = tCMG
  workingValue17 = workingValue17.notify
  workingValue19 = "~g~"
  workingValue23 = localValue6
  number12 = " Purchased"
  workingValue19 = workingValue19 .. workingValue23 .. number12
  -- Beginner: Show a notification to the player.
  workingValue17(workingValue19)
  workingValue17 = nil
  workingValue14 = workingValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f0b530372d".
eventHandler(cmgOperation2, text2)
eventHandler = RegisterNetEvent
cmgOperation2 = "0ffed0ef12"
-- Beginner: this function handles network event "0ffed0ef12".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = workingValue6
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0ffed0ef12".
eventHandler(cmgOperation2, text2)
eventHandler = RegisterCommand
cmgOperation2 = "storebackpack"
-- Beginner: this function is the command handler for "storebackpack".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = text5
  if nil ~= localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "0297cd29eb"
    localValue3 = text5
    localValue4 = true
    localValue5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0297cd29eb".
    localValue1(localValue2, localValue3, localValue4, localValue5)
  end
end
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "storebackpack".
eventHandler(cmgOperation2, text2, stateFlag4)
eventHandler = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, workingValue17, workingValue19, workingValue23, number12, iterator, workingValue4, workingValue7, stateFlag, stateFlag2, stateFlag3, tableHelper, number, number2, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number3, cmgOperation4, text8, createVector3, workingValue11, number4, number5, number6, number7, dataCollection, number8, number9, number10, number11
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3(localValue12) ===
    function localValue3(localValue12)
      local cmgOperation3, workingValue13, stateFlag9, text9, text11
      cmgOperation3 = tCMG
      cmgOperation3 = cmgOperation3.getCustomization
      cmgOperation3 = cmgOperation3()
      workingValue14 = cmgOperation3
      cmgOperation3 = localValue12.storeName
      workingValue16 = cmgOperation3
      cmgOperation3 = RageUI
      cmgOperation3 = cmgOperation3.Visible
      workingValue13 = RMenu
      stateFlag9 = workingValue13
      workingValue13 = workingValue13.Get
      text9 = "backpacks"
      text11 = "mainmenu"
      -- Beginner: result below is menu.
      workingValue13 = workingValue13(stateFlag9, text9, text11)
      stateFlag9 = true
      cmgOperation3(workingValue13, stateFlag9)
    end

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, cmgOperation3, workingValue13, stateFlag9, text9
      localValue12 = RageUI
      localValue12 = localValue12.Visible
      cmgOperation3 = RMenu
      workingValue13 = cmgOperation3
      cmgOperation3 = cmgOperation3.Get
      stateFlag9 = "backpacks"
      text9 = "mainmenu"
      -- Beginner: result below is menu.
      cmgOperation3 = cmgOperation3(workingValue13, stateFlag9, text9)
      workingValue13 = false
      localValue12(cmgOperation3, workingValue13)
      localValue12 = nil
      workingValue16 = localValue12
      localValue12 = workingValue14
      if localValue12 then
        localValue12 = tCMG
        localValue12 = localValue12.setCustomization
        cmgOperation3 = workingValue14
        localValue12(cmgOperation3)
      end
      localValue12 = nil
      workingValue14 = localValue12
    end
    localValue5 = pairs
    localValue6 = cmgOperation.stores
    localValue5, localValue6, workingValue17, workingValue19 = localValue5(localValue6)
    for workingValue23, number12 in localValue5, localValue6, workingValue17, workingValue19 do
      iterator = pairs
      workingValue4 = number12
      iterator, workingValue4, workingValue7, stateFlag = iterator(workingValue4)
      for stateFlag2, stateFlag3 in iterator, workingValue4, workingValue7, stateFlag do
        if "_config" == stateFlag2 then
          tableHelper = table
          tableHelper = tableHelper.unpack
          number = stateFlag3
          tableHelper, number, number2, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number3 = tableHelper(number)
          if number3 then
            cmgOperation4 = tCMG
            cmgOperation4 = cmgOperation4.addBlip
            text8 = tableHelper
            createVector3 = number
            workingValue11 = number2
            number4 = stateFlag5
            number5 = stateFlag6
            number6 = stateFlag7
            -- Beginner: Create a minimap blip.
            cmgOperation4(text8, createVector3, workingValue11, number4, number5, number6)
          end
          cmgOperation4 = tCMG
          cmgOperation4 = cmgOperation4.addMarker
          text8 = tableHelper
          createVector3 = number
          workingValue11 = number2
          number4 = 1.0
          number5 = 1.0
          number6 = 1.0
          number7 = 255
          dataCollection = 0
          number8 = 0
          number9 = 170
          number10 = 50
          number11 = 27
          -- Beginner: Create a world marker.
          cmgOperation4(text8, createVector3, workingValue11, number4, number5, number6, number7, dataCollection, number8, number9, number10, number11)
          cmgOperation4 = CMG
          cmgOperation4 = cmgOperation4.createArea
          text8 = "backpack_"
          createVector3 = workingValue23
          text8 = text8 .. createVector3
          createVector3 = vector3
          workingValue11 = tableHelper
          number4 = number
          number5 = number2
          createVector3 = createVector3(workingValue11, number4, number5)
          workingValue11 = 1.5
          number4 = 6
          number5 = localValue3
          number6 = localValue4

          -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
          function number7()
            local localValue12, cmgOperation3
          end
          dataCollection = {}
          dataCollection.storeName = workingValue23
          -- Beginner: Create an interaction area around a world position.
          cmgOperation4(text8, createVector3, workingValue11, number4, number5, number6, number7, dataCollection)
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandler(cmgOperation2, text2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, workingValue17
  localValue1 = workingValue12
  if not localValue1 then
    localValue1 = stateFlag10
    if localValue1 then
      localValue1 = LocalPlayer
      localValue1 = localValue1.state
      localValue2 = localValue1
      localValue1 = localValue1.set
      localValue3 = "hasBackpack"
      localValue4 = nil
      localValue5 = true
      localValue1(localValue2, localValue3, localValue4, localValue5)
      localValue1 = false
      stateFlag10 = localValue1
    end
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  if 1885233650 == localValue2 then
    localValue3 = stateFlag10
    if localValue3 then
      localValue3 = LocalPlayer
      localValue3 = localValue3.state
      localValue4 = localValue3
      localValue3 = localValue3.set
      localValue5 = "hasBackpack"
      localValue6 = nil
      workingValue17 = true
      localValue3(localValue4, localValue5, localValue6, workingValue17)
      localValue3 = false
      stateFlag10 = localValue3
    end
    localValue3 = workingValue
    localValue4 = localValue1
    localValue5 = workingValue12
    localValue3 = localValue3(localValue4, localValue5)
    if not localValue3 then
      localValue3 = workingValue25
      localValue4 = localValue1
      localValue5 = workingValue12
      localValue3(localValue4, localValue5)
    end
  else
    localValue3 = stateFlag10
    if not localValue3 then
      localValue3 = LocalPlayer
      localValue3 = localValue3.state
      localValue4 = localValue3
      localValue3 = localValue3.set
      localValue5 = "hasBackpack"
      localValue6 = true
      workingValue17 = true
      localValue3(localValue4, localValue5, localValue6, workingValue17)
      localValue3 = true
      stateFlag10 = localValue3
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
text2 = eventHandler
stateFlag4 = "Backpack Object"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(text2, stateFlag4)
cmgOperation2 = AddStateBagChangeHandler
text2 = "hasBackpack"
stateFlag4 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, workingValue17, workingValue19, workingValue23, number12, iterator, workingValue4, workingValue7, stateFlag, stateFlag2, stateFlag3, tableHelper, number, number2, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number3, cmgOperation4
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  workingValue17 = ":"
  localValue5 = localValue5(localValue6, workingValue17)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if localValue4 and localValue3 then
    localValue5 = dataCollection2
    localValue5 = localValue5[localValue4]
    if not localValue5 then
      localValue5 = dataCollection2
      localValue5[localValue4] = 0
      localValue5 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue5 = localValue5()
      while true do
        localValue6 = dataCollection2
        localValue6 = localValue6[localValue4]
        if not localValue6 then
          break
        end
        localValue6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue6 = localValue6()
        localValue6 = localValue6 - localValue5
        workingValue17 = 5000
        if localValue6 > workingValue17 then
          localValue6 = dataCollection2
          localValue6[localValue4] = nil
          return
        end
        localValue6 = GetPlayerFromServerId
        workingValue17 = localValue4
        -- Beginner: result below is playerIndex.
        localValue6 = localValue6(workingValue17)
        if -1 ~= localValue6 then
          workingValue17 = GetPlayerPed
          workingValue19 = localValue6
          -- Beginner: result below is playerPed.
          workingValue17 = workingValue17(workingValue19)
          if 0 ~= workingValue17 then
            workingValue19 = GetEntityCoords
            workingValue23 = workingValue17
            number12 = true
            -- Beginner: result below is entityCoords.
            workingValue19 = workingValue19(workingValue23, number12)
            workingValue23 = CMG
            workingValue23 = workingValue23.loadModel
            number12 = -86518587
            -- Beginner: Request/load a GTA model before spawning or applying it.
            workingValue23(number12)
            workingValue23 = CreateObject
            number12 = -86518587
            iterator = workingValue19.x
            workingValue4 = workingValue19.y
            workingValue7 = workingValue19.z
            stateFlag = false
            stateFlag2 = false
            stateFlag3 = false
            -- Beginner: result below is objectEntity.
            workingValue23 = workingValue23(number12, iterator, workingValue4, workingValue7, stateFlag, stateFlag2, stateFlag3)
            number12 = AttachEntityToEntity
            iterator = workingValue23
            workingValue4 = workingValue17
            workingValue7 = GetPedBoneIndex
            stateFlag = workingValue17
            stateFlag2 = 10706
            workingValue7 = workingValue7(stateFlag, stateFlag2)
            stateFlag = 0.0
            stateFlag2 = -0.25
            stateFlag3 = -0.4
            tableHelper = 0.0
            number = 0.0
            number2 = 0.0
            stateFlag5 = false
            stateFlag6 = false
            stateFlag7 = false
            stateFlag8 = false
            number3 = 2
            cmgOperation4 = true
            -- Beginner: Attach one entity to another entity.
            number12(iterator, workingValue4, workingValue7, stateFlag, stateFlag2, stateFlag3, tableHelper, number, number2, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number3, cmgOperation4)
            number12 = SetModelAsNoLongerNeeded
            iterator = -86518587
            number12(iterator)
            number12 = dataCollection2
            number12[localValue4] = workingValue23
            return
          end
        end
        workingValue17 = Citizen
        workingValue17 = workingValue17.Wait
        workingValue19 = 0
        workingValue17(workingValue19)
      end
  end
  elseif localValue4 and not localValue3 then
    localValue5 = dataCollection2
    localValue5 = localValue5[localValue4]
    if localValue5 then
      localValue5 = DeleteEntity
      localValue6 = dataCollection2
      localValue6 = localValue6[localValue4]
      -- Beginner: Delete a GTA entity.
      localValue5(localValue6)
      localValue5 = dataCollection2
      localValue5[localValue4] = nil
    end
  end
end
cmgOperation2(text2, stateFlag4, rageUiOperation)
cmgOperation2 = AddEventHandler
text2 = "playerDropped"
-- Beginner: this function runs when client event "playerDropped" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue1) ===
function stateFlag4(localValue1)
  local localValue2, localValue3
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = DeleteEntity
    localValue3 = dataCollection2
    localValue3 = localValue3[localValue1]
    -- Beginner: Delete a GTA entity.
    localValue2(localValue3)
    localValue2 = dataCollection2
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a client-side event handler. Event/command: "playerDropped".
cmgOperation2(text2, stateFlag4)
cmgOperation2 = AddEventHandler
text2 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue1) ===
function stateFlag4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, workingValue17, workingValue19, workingValue23
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = dataCollection2
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for localValue6, workingValue17 in localValue2, localValue3, localValue4, localValue5 do
      workingValue19 = DeleteEntity
      workingValue23 = workingValue17
      -- Beginner: Delete a GTA entity.
      workingValue19(workingValue23)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation2(text2, stateFlag4)
cmgOperation2 = RMenu
cmgOperation2 = cmgOperation2.Add
text2 = "backpacks"
stateFlag4 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text3 = ""
text4 = "Backpacks"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text6 = "cmg_backpackui"
text7 = "cmg_backpackui"
rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text6, text7 = rageUiOperation(text3, text4, rageUiOperation2, rageUiOperation3, text6, text7)
cmgOperation2(text2, stateFlag4, rageUiOperation, text3, text4, rageUiOperation2, rageUiOperation3, text6, text7)
cmgOperation2 = RageUI
cmgOperation2 = cmgOperation2.CreateWhile
text2 = 1.0
stateFlag4 = RMenu
rageUiOperation = stateFlag4
stateFlag4 = stateFlag4.Get
text3 = "backpacks"
text4 = "mainmenu"
-- Beginner: result below is menu.
stateFlag4 = stateFlag4(rageUiOperation, text3, text4)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, workingValue17
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "backpacks"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, cmgOperation3, workingValue13, stateFlag9, text9, text11, rageUiOperation4, workingValue20, text12, dataCollection3, stringHelper, text, workingValue8, workingValue10
    localValue12 = pairs
    cmgOperation3 = cmgOperation.stores
    workingValue13 = workingValue16
    cmgOperation3 = cmgOperation3[workingValue13]
    localValue12, cmgOperation3, workingValue13, stateFlag9 = localValue12(cmgOperation3)
    for text9, text11 in localValue12, cmgOperation3, workingValue13, stateFlag9 do
      if "_config" ~= text9 then
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.ButtonWithStyle
        workingValue20 = text9
        text12 = ""
        dataCollection3 = {}
        stringHelper = string
        stringHelper = stringHelper.format
        text = "\194\163%s"
        workingValue8 = getMoneyStringFormatted
        workingValue10 = text11[5]
        workingValue8, workingValue10 = workingValue8(workingValue10)
        stringHelper = stringHelper(text, workingValue8, workingValue10)
        dataCollection3.RightLabel = stringHelper
        stringHelper = true

        -- === HELPER FUNCTION (decompiler name: text; parameters: localValue13, localValue22, localValue32) ===
        function text(localValue13, localValue22, localValue32)
          local serverEventCall, text10, workingValue15, workingValue18, workingValue21, workingValue24, workingValue26, workingValue2, workingValue5, workingValue9
          if localValue22 then
            serverEventCall = workingValue3
            text10 = text11
            serverEventCall(text10)
          end
          if localValue32 then
            serverEventCall = TriggerServerEvent
            text10 = "a52bcd08f0"
            workingValue15 = text11
            workingValue15 = workingValue15[1]
            workingValue18 = text11
            workingValue18 = workingValue18[2]
            workingValue21 = text11
            workingValue21 = workingValue21[3]
            workingValue24 = text11
            workingValue24 = workingValue24[4]
            workingValue26 = text9
            workingValue2 = text11
            workingValue2 = workingValue2[5]
            workingValue5 = text11
            workingValue5 = workingValue5[6]
            workingValue9 = workingValue16
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a52bcd08f0".
            serverEventCall(text10, workingValue15, workingValue18, workingValue21, workingValue24, workingValue26, workingValue2, workingValue5, workingValue9)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiOperation4(workingValue20, text12, dataCollection3, stringHelper, text)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
  function workingValue17()
    local localValue12, cmgOperation3
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, workingValue17)
end
cmgOperation2(text2, stateFlag4, rageUiOperation, text3)
