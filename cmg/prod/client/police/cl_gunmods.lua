--[[
    LEVEL 1 BEGINNER GUIDE — Gunmods
    =====================================

    File: cmg/prod/client/police/cl_gunmods.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Gunmods feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 19
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
local cmgOperation, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, workingValue8, number6, workingValue13, stateFlag5, cmgOperation2, text, rageUiOperation, rageUiOperation2, text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_gunmods"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = {}
workingValue8 = nil
number6 = 0
workingValue13 = nil
stateFlag5 = false
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = stateFlag5
  return localValue1
end
cmgOperation2.isInModShop = text
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = dataCollection5
  return localValue1
end
cmgOperation2.getGivenAttachmentsToRemove = text
cmgOperation2 = RMenu
cmgOperation2 = cmgOperation2.Add
text = "cmggunmods"
rageUiOperation = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text3 = ""
text5 = "Gun Mods"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_gunstoreui"
text6 = "cmg_gunstoreui"
rageUiOperation2, text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7 = rageUiOperation2(text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6)
cmgOperation2(text, rageUiOperation, rageUiOperation2, text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7)
cmgOperation2 = RMenu
cmgOperation2 = cmgOperation2.Add
text = "cmggunmods"
rageUiOperation = "attachments"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text3 = RMenu
text5 = text3
text3 = text3.Get
rageUiOperation3 = "cmggunmods"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text3 = text3(text5, rageUiOperation3, rageUiOperation4)
text5 = ""
rageUiOperation3 = "Gun Mods"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text6 = "cmg_gunstoreui"
text7 = "cmg_gunstoreui"
rageUiOperation2, text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7 = rageUiOperation2(text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7)
cmgOperation2(text, rageUiOperation, rageUiOperation2, text3, text5, rageUiOperation3, rageUiOperation4, rageUiOperation5, text6, text7)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, iterator, workingValue3, stateFlag4, text8
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  iterator = RMenu
  workingValue3 = iterator
  iterator = iterator.Get
  stateFlag4 = "cmggunmods"
  text8 = "main"
  -- Beginner: result below is menu.
  iterator = iterator(workingValue3, stateFlag4, text8)
  workingValue3 = localValue1
  localValue2(iterator, workingValue3)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, iterator, workingValue3, stateFlag4, text8, workingValue9, workingValue11, hashValue5, hashValue7, cmgOperation3
  localValue2 = {}
  iterator = pairs
  workingValue3 = cmgOperation.components
  iterator, workingValue3, stateFlag4, text8 = iterator(workingValue3)
  for workingValue9 in iterator, workingValue3, stateFlag4, text8 do
    workingValue11 = DoesWeaponTakeWeaponComponent
    hashValue5 = GetHashKey
    hashValue7 = localValue1
    -- Beginner: result below is hash.
    hashValue5 = hashValue5(hashValue7)
    hashValue7 = GetHashKey
    cmgOperation3 = workingValue9
    hashValue7, cmgOperation3 = hashValue7(cmgOperation3)
    workingValue11 = workingValue11(hashValue5, hashValue7, cmgOperation3)
    if workingValue11 then
      workingValue11 = #localValue2
      workingValue11 = workingValue11 + 1
      localValue2[workingValue11] = workingValue9
    end
  end
  return localValue2
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
rageUiOperation2 = 1.0
text3 = RMenu
text5 = text3
text3 = text3.Get
rageUiOperation3 = "cmggunmods"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text3 = text3(text5, rageUiOperation3, rageUiOperation4)
text5 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, iterator, workingValue3, stateFlag4, text8
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  iterator = localValue2
  localValue2 = localValue2.Get
  workingValue3 = "cmggunmods"
  stateFlag4 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(iterator, workingValue3, stateFlag4)
  iterator = true
  workingValue3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
  function text8()
    local localValue12, workingValue2, number5, workingValue4, workingValue6, rageUiOperation6, text9, stringHelper, hashValue6, hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4
    localValue12 = 1
    workingValue2 = dataCollection2
    workingValue2 = #workingValue2
    number5 = 1
    for workingValue4 = localValue12, workingValue2, number5 do
      workingValue6 = dataCollection2
      workingValue6 = workingValue6[workingValue4]
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.ButtonWithStyle
      text9 = WeaponNames
      stringHelper = tostring
      hashValue6 = GetHashKey
      hashValue8 = workingValue6
      hashValue6, hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4 = hashValue6(hashValue8)
      stringHelper = stringHelper(hashValue6, hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4)
      text9 = text9[stringHelper]
      stringHelper = WeaponNames
      hashValue6 = tostring
      hashValue8 = GetHashKey
      tableHelper = workingValue6
      hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4 = hashValue8(tableHelper)
      hashValue6 = hashValue6(hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4)
      stringHelper = stringHelper[hashValue6]
      hashValue6 = {}
      hashValue6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      hashValue8 = true

      -- === HELPER FUNCTION: tableHelper(localValue13, localValue22, localValue3) ===
      function tableHelper(localValue13, localValue22, localValue3)
        local workingValue5, workingValue7, dataCollection7, workingValue10, workingValue12
        if localValue3 then
          workingValue5 = text
          workingValue7 = workingValue6
          workingValue5 = workingValue5(workingValue7)
          dataCollection3 = workingValue5
          workingValue5 = workingValue6
          workingValue13 = workingValue5
          workingValue7 = workingValue6
          workingValue5 = dataCollection6
          workingValue5 = workingValue5[workingValue7]
          if nil == workingValue5 then
            workingValue7 = workingValue6
            workingValue5 = dataCollection6
            dataCollection7 = {}
            workingValue5[workingValue7] = dataCollection7
          end
          workingValue7 = workingValue6
          workingValue5 = dataCollection5
          workingValue5 = workingValue5[workingValue7]
          if nil == workingValue5 then
            workingValue7 = workingValue13
            workingValue5 = dataCollection5
            dataCollection7 = {}
            workingValue5[workingValue7] = dataCollection7
          end
          workingValue5 = CMG
          workingValue5 = workingValue5.spawnWeaponObject
          workingValue7 = workingValue6
          dataCollection7 = dataCollection4
          dataCollection7 = dataCollection7[4]
          dataCollection7 = dataCollection7.x
          workingValue10 = dataCollection4
          workingValue10 = workingValue10[4]
          workingValue10 = workingValue10.y
          workingValue12 = dataCollection4
          workingValue12 = workingValue12[4]
          workingValue12 = workingValue12.z
          workingValue5 = workingValue5(workingValue7, dataCollection7, workingValue10, workingValue12)
          workingValue8 = workingValue5
        end
      end
      workingValue = RMenu
      hashValue2 = workingValue
      workingValue = workingValue.Get
      hashValue4 = "cmggunmods"
      text4 = "attachments"
      workingValue, hashValue2, hashValue4, text4 = workingValue(hashValue2, hashValue4, text4)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation6(text9, stringHelper, hashValue6, hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4)
    end
  end
  localValue1(localValue2, iterator, workingValue3, stateFlag4, text8)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  iterator = localValue2
  localValue2 = localValue2.Get
  workingValue3 = "cmggunmods"
  stateFlag4 = "attachments"
  -- Beginner: result below is menu.
  localValue2 = localValue2(iterator, workingValue3, stateFlag4)
  iterator = true
  workingValue3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
  function text8()
    local localValue12, workingValue2, number5, workingValue4, workingValue6, rageUiOperation6, text9, stringHelper, hashValue6, hashValue8, tableHelper, workingValue
    localValue12 = 1
    workingValue2 = dataCollection3
    workingValue2 = #workingValue2
    number5 = 1
    for workingValue4 = localValue12, workingValue2, number5 do
      workingValue6 = dataCollection3
      workingValue6 = workingValue6[workingValue4]
      rageUiOperation6 = {}
      text9 = "\194\163"
      stringHelper = getMoneyStringFormatted
      hashValue6 = cmgOperation.components
      hashValue6 = hashValue6[workingValue6]
      hashValue6 = hashValue6[2]
      stringHelper = stringHelper(hashValue6)
      text9 = text9 .. stringHelper
      rageUiOperation6.RightLabel = text9
      text9 = table
      text9 = text9.has
      hashValue6 = workingValue13
      stringHelper = dataCollection6
      stringHelper = stringHelper[hashValue6]
      hashValue6 = workingValue6
      text9 = text9(stringHelper, hashValue6)
      if text9 then
        text9 = {}
        stringHelper = RageUI
        stringHelper = stringHelper.BadgeStyle
        stringHelper = stringHelper.Gun
        text9.RightBadge = stringHelper
        rageUiOperation6 = text9
      end
      text9 = RageUI
      text9 = text9.ButtonWithStyle
      stringHelper = cmgOperation.components
      stringHelper = stringHelper[workingValue6]
      stringHelper = stringHelper[1]
      hashValue6 = cmgOperation.components
      hashValue6 = hashValue6[workingValue6]
      hashValue6 = hashValue6[1]
      hashValue8 = rageUiOperation6
      tableHelper = true

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue22, localValue3) ===
      function workingValue(localValue13, localValue22, localValue3)
        local workingValue5, workingValue7, dataCollection7, workingValue10, workingValue12, workingValue14
        if localValue3 then
          workingValue5 = table
          workingValue5 = workingValue5.has
          dataCollection7 = workingValue13
          workingValue7 = dataCollection6
          workingValue7 = workingValue7[dataCollection7]
          dataCollection7 = workingValue6
          workingValue5 = workingValue5(workingValue7, dataCollection7)
          if not workingValue5 then
            workingValue5 = TriggerServerEvent
            workingValue7 = "c76176f1de"
            dataCollection7 = workingValue13
            workingValue10 = workingValue6
            workingValue12 = cmgOperation.components
            workingValue14 = workingValue6
            workingValue12 = workingValue12[workingValue14]
            workingValue12 = workingValue12[2]
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c76176f1de".
            workingValue5(workingValue7, dataCollection7, workingValue10, workingValue12)
          else
            workingValue5 = tCMG
            workingValue5 = workingValue5.notify
            workingValue7 = "~r~You already have this attachment"
            -- Beginner: Show a notification to the player.
            workingValue5(workingValue7)
          end
        end
        if localValue22 then
          workingValue5 = number6
          workingValue7 = workingValue4
          if workingValue5 ~= workingValue7 then
            workingValue5 = HasPedGotWeaponComponent
            workingValue7 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workingValue7 = workingValue7()
            dataCollection7 = workingValue13
            workingValue10 = workingValue6
            workingValue5 = workingValue5(workingValue7, dataCollection7, workingValue10)
            if not workingValue5 then
              workingValue5 = tCMG
              workingValue5 = workingValue5.giveWeaponComponent
              workingValue7 = workingValue13
              dataCollection7 = workingValue6
              workingValue5(workingValue7, dataCollection7)
              workingValue7 = workingValue13
              workingValue5 = dataCollection5
              workingValue5 = workingValue5[workingValue7]
              dataCollection7 = workingValue13
              workingValue7 = dataCollection5
              workingValue7 = workingValue7[dataCollection7]
              workingValue7 = #workingValue7
              workingValue7 = workingValue7 + 1
              dataCollection7 = workingValue6
              workingValue5[workingValue7] = dataCollection7
            end
            workingValue5 = number6
            if nil ~= workingValue5 then
              workingValue5 = table
              workingValue5 = workingValue5.has
              dataCollection7 = workingValue13
              workingValue7 = dataCollection5
              workingValue7 = workingValue7[dataCollection7]
              workingValue10 = number6
              dataCollection7 = dataCollection3
              dataCollection7 = dataCollection7[workingValue10]
              workingValue5 = workingValue5(workingValue7, dataCollection7)
              if workingValue5 then
                workingValue5 = table
                workingValue5 = workingValue5.has
                dataCollection7 = workingValue13
                workingValue7 = dataCollection6
                workingValue7 = workingValue7[dataCollection7]
                workingValue10 = number6
                dataCollection7 = dataCollection3
                dataCollection7 = dataCollection7[workingValue10]
                workingValue5 = workingValue5(workingValue7, dataCollection7)
                if not workingValue5 then
                  workingValue5 = RemoveWeaponComponentFromPed
                  workingValue7 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workingValue7 = workingValue7()
                  dataCollection7 = GetHashKey
                  workingValue10 = workingValue13
                  -- Beginner: result below is hash.
                  dataCollection7 = dataCollection7(workingValue10)
                  workingValue10 = GetHashKey
                  workingValue14 = number6
                  workingValue12 = dataCollection3
                  workingValue12 = workingValue12[workingValue14]
                  workingValue10, workingValue12, workingValue14 = workingValue10(workingValue12)
                  workingValue5(workingValue7, dataCollection7, workingValue10, workingValue12, workingValue14)
                end
              end
              workingValue5 = RemoveWeaponComponentFromWeaponObject
              workingValue7 = workingValue8
              dataCollection7 = GetHashKey
              workingValue12 = number6
              workingValue10 = dataCollection3
              workingValue10 = workingValue10[workingValue12]
              dataCollection7, workingValue10, workingValue12, workingValue14 = dataCollection7(workingValue10)
              workingValue5(workingValue7, dataCollection7, workingValue10, workingValue12, workingValue14)
            end
            workingValue5 = GiveWeaponComponentToWeaponObject
            workingValue7 = workingValue8
            dataCollection7 = workingValue6
            workingValue5(workingValue7, dataCollection7)
            workingValue5 = workingValue4
            number6 = workingValue5
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      text9(stringHelper, hashValue6, hashValue8, tableHelper, workingValue)
    end
  end
  localValue1(localValue2, iterator, workingValue3, stateFlag4, text8)
end
rageUiOperation(rageUiOperation2, text3, text5, rageUiOperation3)
rageUiOperation = AddEventHandler
rageUiOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local iterator, workingValue3, stateFlag4, text8, workingValue9, workingValue11, hashValue5, hashValue7, cmgOperation3, text2, hashValue, hashValue3, number, number2, number3, number4, dataCollection
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: iterator(localValue12) ===
    function iterator(localValue12)
      local workingValue2, number5, workingValue4, workingValue6, rageUiOperation6, text9, stringHelper, hashValue6, hashValue8
      workingValue2 = localValue12.shop
      dataCollection4 = workingValue2
      workingValue2 = CMG
      workingValue2 = workingValue2.getWeapons
      workingValue2 = workingValue2()
      dataCollection2 = workingValue2
      workingValue2 = pairs
      number5 = dataCollection2
      workingValue2, number5, workingValue4, workingValue6 = workingValue2(number5)
      for rageUiOperation6, text9 in workingValue2, number5, workingValue4, workingValue6 do
        stringHelper = dataCollection6
        hashValue6 = CMG
        hashValue6 = hashValue6.getAllWeaponAttachments
        hashValue8 = text9
        hashValue6 = hashValue6(hashValue8)
        stringHelper[rageUiOperation6] = hashValue6
      end
      workingValue2 = cmgOperation2
      number5 = true
      workingValue2(number5)
      workingValue2 = true
      stateFlag5 = workingValue2
    end

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
    function workingValue3()
      local localValue12, workingValue2, number5, workingValue4, workingValue6, rageUiOperation6, text9, stringHelper, hashValue6, hashValue8, tableHelper, workingValue, hashValue2, hashValue4, text4
      localValue12 = false
      stateFlag5 = localValue12
      localValue12 = workingValue8
      if nil ~= localValue12 then
        localValue12 = DeleteObject
        workingValue2 = workingValue8
        localValue12(workingValue2)
      end
      localValue12 = pairs
      workingValue2 = dataCollection5
      localValue12, workingValue2, number5, workingValue4 = localValue12(workingValue2)
      for workingValue6 in localValue12, workingValue2, number5, workingValue4 do
        rageUiOperation6 = 1
        text9 = dataCollection5
        text9 = text9[workingValue6]
        text9 = #text9
        stringHelper = 1
        for hashValue6 = rageUiOperation6, text9, stringHelper do
          hashValue8 = dataCollection5
          hashValue8 = hashValue8[workingValue6]
          hashValue8 = hashValue8[hashValue6]
          tableHelper = table
          tableHelper = tableHelper.has
          workingValue = dataCollection6
          workingValue = workingValue[workingValue6]
          hashValue2 = hashValue8
          tableHelper = tableHelper(workingValue, hashValue2)
          if not tableHelper then
            tableHelper = RemoveWeaponComponentFromPed
            workingValue = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workingValue = workingValue()
            hashValue2 = GetHashKey
            hashValue4 = workingValue6
            -- Beginner: result below is hash.
            hashValue2 = hashValue2(hashValue4)
            hashValue4 = GetHashKey
            text4 = hashValue8
            hashValue4, text4 = hashValue4(text4)
            tableHelper(workingValue, hashValue2, hashValue4, text4)
          end
        end
      end
      localValue12 = cmgOperation2
      workingValue2 = false
      localValue12(workingValue2)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local localValue12, workingValue2
    end
    text8 = 1
    workingValue9 = cmgOperation.shops
    workingValue9 = #workingValue9
    workingValue11 = 1
    for hashValue5 = text8, workingValue9, workingValue11 do
      hashValue7 = cmgOperation.shops
      hashValue7 = hashValue7[hashValue5]
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.createArea
      text2 = "gunmods_"
      hashValue = hashValue5
      text2 = text2 .. hashValue
      hashValue = hashValue7[2]
      hashValue3 = 1.5
      number = 6
      number2 = iterator
      number3 = workingValue3
      number4 = stateFlag4
      dataCollection = {}
      dataCollection.shop = hashValue7
      -- Beginner: Create an interaction area around a world position.
      cmgOperation3(text2, hashValue, hashValue3, number, number2, number3, number4, dataCollection)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiOperation(rageUiOperation2, text3)
rageUiOperation = RegisterNetEvent
rageUiOperation2 = "04e149ba5e"
-- Beginner: this function handles network event "04e149ba5e".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local iterator, workingValue3
  iterator = dataCollection6
  iterator = iterator[localValue2]
  workingValue3 = dataCollection6
  workingValue3 = workingValue3[localValue2]
  workingValue3 = #workingValue3
  workingValue3 = workingValue3 + 1
  iterator[workingValue3] = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "04e149ba5e".
rageUiOperation(rageUiOperation2, text3)
rageUiOperation = RMenu
rageUiOperation2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text3 = "cmggunmods"
text5 = "attachments"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(rageUiOperation2, text3, text5)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, iterator, workingValue3, stateFlag4, text8, workingValue9, workingValue11, hashValue5, hashValue7, cmgOperation3, text2, hashValue, hashValue3, number
  localValue1 = DeleteObject
  localValue2 = workingValue8
  localValue1(localValue2)
  localValue1 = nil
  workingValue8 = localValue1
  localValue1 = pairs
  localValue2 = dataCollection5
  localValue1, localValue2, iterator, workingValue3 = localValue1(localValue2)
  for stateFlag4 in localValue1, localValue2, iterator, workingValue3 do
    text8 = 1
    workingValue9 = dataCollection5
    workingValue9 = workingValue9[stateFlag4]
    workingValue9 = #workingValue9
    workingValue11 = 1
    for hashValue5 = text8, workingValue9, workingValue11 do
      hashValue7 = dataCollection5
      hashValue7 = hashValue7[stateFlag4]
      hashValue7 = hashValue7[hashValue5]
      cmgOperation3 = table
      cmgOperation3 = cmgOperation3.has
      text2 = dataCollection6
      text2 = text2[stateFlag4]
      hashValue = hashValue7
      cmgOperation3 = cmgOperation3(text2, hashValue)
      if not cmgOperation3 then
        cmgOperation3 = RemoveWeaponComponentFromPed
        text2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        text2 = text2()
        hashValue = GetHashKey
        hashValue3 = stateFlag4
        -- Beginner: result below is hash.
        hashValue = hashValue(hashValue3)
        hashValue3 = GetHashKey
        number = hashValue7
        hashValue3, number = hashValue3(number)
        cmgOperation3(text2, hashValue, hashValue3, number)
      end
    end
  end
end
rageUiOperation.Closed = rageUiOperation2
rageUiOperation = RMenu
rageUiOperation2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text3 = "cmggunmods"
text5 = "main"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(rageUiOperation2, text3, text5)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = DeleteObject
  localValue2 = workingValue8
  localValue1(localValue2)
  localValue1 = nil
  workingValue8 = localValue1
end
rageUiOperation.Closed = rageUiOperation2
rageUiOperation = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local iterator, workingValue3, stateFlag4, text8
  iterator = GiveWeaponComponentToPed
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  stateFlag4 = GetHashKey
  text8 = localValue1
  -- Beginner: result below is hash.
  stateFlag4 = stateFlag4(text8)
  text8 = localValue2
  iterator(workingValue3, stateFlag4, text8)
end
rageUiOperation.giveWeaponComponent = rageUiOperation2
rageUiOperation = Citizen
rageUiOperation = rageUiOperation.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, iterator, workingValue3, stateFlag4, text8, workingValue9, workingValue11, hashValue5, hashValue7, cmgOperation3, text2, hashValue, hashValue3, number, number2, number3, number4, dataCollection, stateFlag, stateFlag2, stateFlag3
  localValue1 = 1
  localValue2 = cmgOperation.shops
  localValue2 = #localValue2
  iterator = 1
  for workingValue3 = localValue1, localValue2, iterator do
    stateFlag4 = cmgOperation.shops
    stateFlag4 = stateFlag4[workingValue3]
    text8 = stateFlag4[2]
    workingValue9 = tCMG
    workingValue9 = workingValue9.addMarker
    workingValue11 = text8.x
    hashValue5 = text8.y
    hashValue7 = text8.z
    cmgOperation3 = 0.5
    text2 = 0.5
    hashValue = 0.5
    hashValue3 = 10
    number = 255
    number2 = 81
    number3 = 170
    number4 = 50
    dataCollection = 2
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = true
    -- Beginner: Create a world marker.
    workingValue9(workingValue11, hashValue5, hashValue7, cmgOperation3, text2, hashValue, hashValue3, number, number2, number3, number4, dataCollection, stateFlag, stateFlag2, stateFlag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation(rageUiOperation2)
rageUiOperation = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, iterator, workingValue3, stateFlag4, text8, workingValue9, workingValue11, hashValue5, hashValue7, cmgOperation3, text2
  localValue2 = tCMG
  localValue2 = localValue2.getWeapons
  localValue2 = localValue2()
  iterator = pairs
  workingValue3 = localValue2
  iterator, workingValue3, stateFlag4, text8 = iterator(workingValue3)
  for workingValue9 in iterator, workingValue3, stateFlag4, text8 do
    workingValue11 = GetHashKey
    hashValue5 = workingValue9
    -- Beginner: result below is hash.
    workingValue11 = workingValue11(hashValue5)
    hashValue5 = DoesWeaponTakeWeaponComponent
    hashValue7 = workingValue11
    cmgOperation3 = localValue1
    hashValue5 = hashValue5(hashValue7, cmgOperation3)
    if hashValue5 then
      hashValue5 = GiveWeaponComponentToPed
      hashValue7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      hashValue7 = hashValue7()
      cmgOperation3 = workingValue11
      text2 = localValue1
      hashValue5(hashValue7, cmgOperation3, text2)
      return
    end
  end
end
rageUiOperation.giveAttachment = rageUiOperation2
