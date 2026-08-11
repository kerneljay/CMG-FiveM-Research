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
local cmgCall, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, workValue8, numberValue6, workValue13, flag5, cmgCall2, textValue, rageUiCall, rageUiCall2, textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_gunmods"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
dataTable3 = {}
dataTable4 = {}
dataTable5 = {}
dataTable6 = {}
workValue8 = nil
numberValue6 = 0
workValue13 = nil
flag5 = false
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = flag5
  return arg1
end
cmgCall2.isInModShop = textValue
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = dataTable5
  return arg1
end
cmgCall2.getGivenAttachmentsToRemove = textValue
cmgCall2 = RMenu
cmgCall2 = cmgCall2.Add
textValue = "cmggunmods"
rageUiCall = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue3 = ""
textValue5 = "Gun Mods"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_gunstoreui"
textValue6 = "cmg_gunstoreui"
rageUiCall2, textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7 = rageUiCall2(textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6)
cmgCall2(textValue, rageUiCall, rageUiCall2, textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7)
cmgCall2 = RMenu
cmgCall2 = cmgCall2.Add
textValue = "cmggunmods"
rageUiCall = "attachments"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue3 = RMenu
textValue5 = textValue3
textValue3 = textValue3.Get
rageUiCall3 = "cmggunmods"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue3 = textValue3(textValue5, rageUiCall3, rageUiCall4)
textValue5 = ""
rageUiCall3 = "Gun Mods"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue6 = "cmg_gunstoreui"
textValue7 = "cmg_gunstoreui"
rageUiCall2, textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7 = rageUiCall2(textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7)
cmgCall2(textValue, rageUiCall, rageUiCall2, textValue3, textValue5, rageUiCall3, rageUiCall4, rageUiCall5, textValue6, textValue7)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, iterator, workValue3, flag4, textValue8
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = RageUI
  arg2 = arg2.Visible
  iterator = RMenu
  workValue3 = iterator
  iterator = iterator.Get
  flag4 = "cmggunmods"
  textValue8 = "main"
  -- Beginner: result below is menu.
  iterator = iterator(workValue3, flag4, textValue8)
  workValue3 = arg1
  arg2(iterator, workValue3)
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, iterator, workValue3, flag4, textValue8, workValue9, workValue11, hashValue5, hashValue7, cmgCall3
  arg2 = {}
  iterator = pairs
  workValue3 = cmgCall.components
  iterator, workValue3, flag4, textValue8 = iterator(workValue3)
  for workValue9 in iterator, workValue3, flag4, textValue8 do
    workValue11 = DoesWeaponTakeWeaponComponent
    hashValue5 = GetHashKey
    hashValue7 = arg1
    -- Beginner: result below is hash.
    hashValue5 = hashValue5(hashValue7)
    hashValue7 = GetHashKey
    cmgCall3 = workValue9
    hashValue7, cmgCall3 = hashValue7(cmgCall3)
    workValue11 = workValue11(hashValue5, hashValue7, cmgCall3)
    if workValue11 then
      workValue11 = #arg2
      workValue11 = workValue11 + 1
      arg2[workValue11] = workValue9
    end
  end
  return arg2
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
rageUiCall2 = 1.0
textValue3 = RMenu
textValue5 = textValue3
textValue3 = textValue3.Get
rageUiCall3 = "cmggunmods"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue3 = textValue3(textValue5, rageUiCall3, rageUiCall4)
textValue5 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, iterator, workValue3, flag4, textValue8
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  iterator = arg2
  arg2 = arg2.Get
  workValue3 = "cmggunmods"
  flag4 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(iterator, workValue3, flag4)
  iterator = true
  workValue3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
  function textValue8()
    local arg12, workValue2, numberValue5, workValue4, workValue6, rageUiCall6, textValue9, stringHelper, hashValue6, hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4
    arg12 = 1
    workValue2 = dataTable2
    workValue2 = #workValue2
    numberValue5 = 1
    for workValue4 = arg12, workValue2, numberValue5 do
      workValue6 = dataTable2
      workValue6 = workValue6[workValue4]
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.ButtonWithStyle
      textValue9 = WeaponNames
      stringHelper = tostring
      hashValue6 = GetHashKey
      hashValue8 = workValue6
      hashValue6, hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4 = hashValue6(hashValue8)
      stringHelper = stringHelper(hashValue6, hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4)
      textValue9 = textValue9[stringHelper]
      stringHelper = WeaponNames
      hashValue6 = tostring
      hashValue8 = GetHashKey
      tableHelper = workValue6
      hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4 = hashValue8(tableHelper)
      hashValue6 = hashValue6(hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4)
      stringHelper = stringHelper[hashValue6]
      hashValue6 = {}
      hashValue6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      hashValue8 = true

      -- === HELPER FUNCTION: tableHelper(arg13, arg22, arg3) ===
      function tableHelper(arg13, arg22, arg3)
        local workValue5, workValue7, dataTable7, workValue10, workValue12
        if arg3 then
          workValue5 = textValue
          workValue7 = workValue6
          workValue5 = workValue5(workValue7)
          dataTable3 = workValue5
          workValue5 = workValue6
          workValue13 = workValue5
          workValue7 = workValue6
          workValue5 = dataTable6
          workValue5 = workValue5[workValue7]
          if nil == workValue5 then
            workValue7 = workValue6
            workValue5 = dataTable6
            dataTable7 = {}
            workValue5[workValue7] = dataTable7
          end
          workValue7 = workValue6
          workValue5 = dataTable5
          workValue5 = workValue5[workValue7]
          if nil == workValue5 then
            workValue7 = workValue13
            workValue5 = dataTable5
            dataTable7 = {}
            workValue5[workValue7] = dataTable7
          end
          workValue5 = CMG
          workValue5 = workValue5.spawnWeaponObject
          workValue7 = workValue6
          dataTable7 = dataTable4
          dataTable7 = dataTable7[4]
          dataTable7 = dataTable7.x
          workValue10 = dataTable4
          workValue10 = workValue10[4]
          workValue10 = workValue10.y
          workValue12 = dataTable4
          workValue12 = workValue12[4]
          workValue12 = workValue12.z
          workValue5 = workValue5(workValue7, dataTable7, workValue10, workValue12)
          workValue8 = workValue5
        end
      end
      workValue = RMenu
      hashValue2 = workValue
      workValue = workValue.Get
      hashValue4 = "cmggunmods"
      textValue4 = "attachments"
      workValue, hashValue2, hashValue4, textValue4 = workValue(hashValue2, hashValue4, textValue4)
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall6(textValue9, stringHelper, hashValue6, hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4)
    end
  end
  arg1(arg2, iterator, workValue3, flag4, textValue8)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  iterator = arg2
  arg2 = arg2.Get
  workValue3 = "cmggunmods"
  flag4 = "attachments"
  -- Beginner: result below is menu.
  arg2 = arg2(iterator, workValue3, flag4)
  iterator = true
  workValue3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
  function textValue8()
    local arg12, workValue2, numberValue5, workValue4, workValue6, rageUiCall6, textValue9, stringHelper, hashValue6, hashValue8, tableHelper, workValue
    arg12 = 1
    workValue2 = dataTable3
    workValue2 = #workValue2
    numberValue5 = 1
    for workValue4 = arg12, workValue2, numberValue5 do
      workValue6 = dataTable3
      workValue6 = workValue6[workValue4]
      rageUiCall6 = {}
      textValue9 = "\194\163"
      stringHelper = getMoneyStringFormatted
      hashValue6 = cmgCall.components
      hashValue6 = hashValue6[workValue6]
      hashValue6 = hashValue6[2]
      stringHelper = stringHelper(hashValue6)
      textValue9 = textValue9 .. stringHelper
      rageUiCall6.RightLabel = textValue9
      textValue9 = table
      textValue9 = textValue9.has
      hashValue6 = workValue13
      stringHelper = dataTable6
      stringHelper = stringHelper[hashValue6]
      hashValue6 = workValue6
      textValue9 = textValue9(stringHelper, hashValue6)
      if textValue9 then
        textValue9 = {}
        stringHelper = RageUI
        stringHelper = stringHelper.BadgeStyle
        stringHelper = stringHelper.Gun
        textValue9.RightBadge = stringHelper
        rageUiCall6 = textValue9
      end
      textValue9 = RageUI
      textValue9 = textValue9.ButtonWithStyle
      stringHelper = cmgCall.components
      stringHelper = stringHelper[workValue6]
      stringHelper = stringHelper[1]
      hashValue6 = cmgCall.components
      hashValue6 = hashValue6[workValue6]
      hashValue6 = hashValue6[1]
      hashValue8 = rageUiCall6
      tableHelper = true

      -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg13, arg22, arg3) ===
      function workValue(arg13, arg22, arg3)
        local workValue5, workValue7, dataTable7, workValue10, workValue12, workValue14
        if arg3 then
          workValue5 = table
          workValue5 = workValue5.has
          dataTable7 = workValue13
          workValue7 = dataTable6
          workValue7 = workValue7[dataTable7]
          dataTable7 = workValue6
          workValue5 = workValue5(workValue7, dataTable7)
          if not workValue5 then
            workValue5 = TriggerServerEvent
            workValue7 = "c76176f1de"
            dataTable7 = workValue13
            workValue10 = workValue6
            workValue12 = cmgCall.components
            workValue14 = workValue6
            workValue12 = workValue12[workValue14]
            workValue12 = workValue12[2]
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c76176f1de".
            workValue5(workValue7, dataTable7, workValue10, workValue12)
          else
            workValue5 = tCMG
            workValue5 = workValue5.notify
            workValue7 = "~r~You already have this attachment"
            -- Beginner: Show a notification to the player.
            workValue5(workValue7)
          end
        end
        if arg22 then
          workValue5 = numberValue6
          workValue7 = workValue4
          if workValue5 ~= workValue7 then
            workValue5 = HasPedGotWeaponComponent
            workValue7 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workValue7 = workValue7()
            dataTable7 = workValue13
            workValue10 = workValue6
            workValue5 = workValue5(workValue7, dataTable7, workValue10)
            if not workValue5 then
              workValue5 = tCMG
              workValue5 = workValue5.giveWeaponComponent
              workValue7 = workValue13
              dataTable7 = workValue6
              workValue5(workValue7, dataTable7)
              workValue7 = workValue13
              workValue5 = dataTable5
              workValue5 = workValue5[workValue7]
              dataTable7 = workValue13
              workValue7 = dataTable5
              workValue7 = workValue7[dataTable7]
              workValue7 = #workValue7
              workValue7 = workValue7 + 1
              dataTable7 = workValue6
              workValue5[workValue7] = dataTable7
            end
            workValue5 = numberValue6
            if nil ~= workValue5 then
              workValue5 = table
              workValue5 = workValue5.has
              dataTable7 = workValue13
              workValue7 = dataTable5
              workValue7 = workValue7[dataTable7]
              workValue10 = numberValue6
              dataTable7 = dataTable3
              dataTable7 = dataTable7[workValue10]
              workValue5 = workValue5(workValue7, dataTable7)
              if workValue5 then
                workValue5 = table
                workValue5 = workValue5.has
                dataTable7 = workValue13
                workValue7 = dataTable6
                workValue7 = workValue7[dataTable7]
                workValue10 = numberValue6
                dataTable7 = dataTable3
                dataTable7 = dataTable7[workValue10]
                workValue5 = workValue5(workValue7, dataTable7)
                if not workValue5 then
                  workValue5 = RemoveWeaponComponentFromPed
                  workValue7 = PlayerPedId
                  -- Beginner: result below is localPlayerPed.
                  workValue7 = workValue7()
                  dataTable7 = GetHashKey
                  workValue10 = workValue13
                  -- Beginner: result below is hash.
                  dataTable7 = dataTable7(workValue10)
                  workValue10 = GetHashKey
                  workValue14 = numberValue6
                  workValue12 = dataTable3
                  workValue12 = workValue12[workValue14]
                  workValue10, workValue12, workValue14 = workValue10(workValue12)
                  workValue5(workValue7, dataTable7, workValue10, workValue12, workValue14)
                end
              end
              workValue5 = RemoveWeaponComponentFromWeaponObject
              workValue7 = workValue8
              dataTable7 = GetHashKey
              workValue12 = numberValue6
              workValue10 = dataTable3
              workValue10 = workValue10[workValue12]
              dataTable7, workValue10, workValue12, workValue14 = dataTable7(workValue10)
              workValue5(workValue7, dataTable7, workValue10, workValue12, workValue14)
            end
            workValue5 = GiveWeaponComponentToWeaponObject
            workValue7 = workValue8
            dataTable7 = workValue6
            workValue5(workValue7, dataTable7)
            workValue5 = workValue4
            numberValue6 = workValue5
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      textValue9(stringHelper, hashValue6, hashValue8, tableHelper, workValue)
    end
  end
  arg1(arg2, iterator, workValue3, flag4, textValue8)
end
rageUiCall(rageUiCall2, textValue3, textValue5, rageUiCall3)
rageUiCall = AddEventHandler
rageUiCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local iterator, workValue3, flag4, textValue8, workValue9, workValue11, hashValue5, hashValue7, cmgCall3, textValue2, hashValue, hashValue3, numberValue, numberValue2, numberValue3, numberValue4, dataTable
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: iterator(arg12) ===
    function iterator(arg12)
      local workValue2, numberValue5, workValue4, workValue6, rageUiCall6, textValue9, stringHelper, hashValue6, hashValue8
      workValue2 = arg12.shop
      dataTable4 = workValue2
      workValue2 = CMG
      workValue2 = workValue2.getWeapons
      workValue2 = workValue2()
      dataTable2 = workValue2
      workValue2 = pairs
      numberValue5 = dataTable2
      workValue2, numberValue5, workValue4, workValue6 = workValue2(numberValue5)
      for rageUiCall6, textValue9 in workValue2, numberValue5, workValue4, workValue6 do
        stringHelper = dataTable6
        hashValue6 = CMG
        hashValue6 = hashValue6.getAllWeaponAttachments
        hashValue8 = textValue9
        hashValue6 = hashValue6(hashValue8)
        stringHelper[rageUiCall6] = hashValue6
      end
      workValue2 = cmgCall2
      numberValue5 = true
      workValue2(numberValue5)
      workValue2 = true
      flag5 = workValue2
    end

    -- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
    function workValue3()
      local arg12, workValue2, numberValue5, workValue4, workValue6, rageUiCall6, textValue9, stringHelper, hashValue6, hashValue8, tableHelper, workValue, hashValue2, hashValue4, textValue4
      arg12 = false
      flag5 = arg12
      arg12 = workValue8
      if nil ~= arg12 then
        arg12 = DeleteObject
        workValue2 = workValue8
        arg12(workValue2)
      end
      arg12 = pairs
      workValue2 = dataTable5
      arg12, workValue2, numberValue5, workValue4 = arg12(workValue2)
      for workValue6 in arg12, workValue2, numberValue5, workValue4 do
        rageUiCall6 = 1
        textValue9 = dataTable5
        textValue9 = textValue9[workValue6]
        textValue9 = #textValue9
        stringHelper = 1
        for hashValue6 = rageUiCall6, textValue9, stringHelper do
          hashValue8 = dataTable5
          hashValue8 = hashValue8[workValue6]
          hashValue8 = hashValue8[hashValue6]
          tableHelper = table
          tableHelper = tableHelper.has
          workValue = dataTable6
          workValue = workValue[workValue6]
          hashValue2 = hashValue8
          tableHelper = tableHelper(workValue, hashValue2)
          if not tableHelper then
            tableHelper = RemoveWeaponComponentFromPed
            workValue = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            workValue = workValue()
            hashValue2 = GetHashKey
            hashValue4 = workValue6
            -- Beginner: result below is hash.
            hashValue2 = hashValue2(hashValue4)
            hashValue4 = GetHashKey
            textValue4 = hashValue8
            hashValue4, textValue4 = hashValue4(textValue4)
            tableHelper(workValue, hashValue2, hashValue4, textValue4)
          end
        end
      end
      arg12 = cmgCall2
      workValue2 = false
      arg12(workValue2)
    end

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local arg12, workValue2
    end
    textValue8 = 1
    workValue9 = cmgCall.shops
    workValue9 = #workValue9
    workValue11 = 1
    for hashValue5 = textValue8, workValue9, workValue11 do
      hashValue7 = cmgCall.shops
      hashValue7 = hashValue7[hashValue5]
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.createArea
      textValue2 = "gunmods_"
      hashValue = hashValue5
      textValue2 = textValue2 .. hashValue
      hashValue = hashValue7[2]
      hashValue3 = 1.5
      numberValue = 6
      numberValue2 = iterator
      numberValue3 = workValue3
      numberValue4 = flag4
      dataTable = {}
      dataTable.shop = hashValue7
      -- Beginner: Create an interaction area around a world position.
      cmgCall3(textValue2, hashValue, hashValue3, numberValue, numberValue2, numberValue3, numberValue4, dataTable)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiCall(rageUiCall2, textValue3)
rageUiCall = RegisterNetEvent
rageUiCall2 = "04e149ba5e"
-- Beginner: this function handles network event "04e149ba5e".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local iterator, workValue3
  iterator = dataTable6
  iterator = iterator[arg2]
  workValue3 = dataTable6
  workValue3 = workValue3[arg2]
  workValue3 = #workValue3
  workValue3 = workValue3 + 1
  iterator[workValue3] = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "04e149ba5e".
rageUiCall(rageUiCall2, textValue3)
rageUiCall = RMenu
rageUiCall2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue3 = "cmggunmods"
textValue5 = "attachments"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(rageUiCall2, textValue3, textValue5)

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, iterator, workValue3, flag4, textValue8, workValue9, workValue11, hashValue5, hashValue7, cmgCall3, textValue2, hashValue, hashValue3, numberValue
  arg1 = DeleteObject
  arg2 = workValue8
  arg1(arg2)
  arg1 = nil
  workValue8 = arg1
  arg1 = pairs
  arg2 = dataTable5
  arg1, arg2, iterator, workValue3 = arg1(arg2)
  for flag4 in arg1, arg2, iterator, workValue3 do
    textValue8 = 1
    workValue9 = dataTable5
    workValue9 = workValue9[flag4]
    workValue9 = #workValue9
    workValue11 = 1
    for hashValue5 = textValue8, workValue9, workValue11 do
      hashValue7 = dataTable5
      hashValue7 = hashValue7[flag4]
      hashValue7 = hashValue7[hashValue5]
      cmgCall3 = table
      cmgCall3 = cmgCall3.has
      textValue2 = dataTable6
      textValue2 = textValue2[flag4]
      hashValue = hashValue7
      cmgCall3 = cmgCall3(textValue2, hashValue)
      if not cmgCall3 then
        cmgCall3 = RemoveWeaponComponentFromPed
        textValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        textValue2 = textValue2()
        hashValue = GetHashKey
        hashValue3 = flag4
        -- Beginner: result below is hash.
        hashValue = hashValue(hashValue3)
        hashValue3 = GetHashKey
        numberValue = hashValue7
        hashValue3, numberValue = hashValue3(numberValue)
        cmgCall3(textValue2, hashValue, hashValue3, numberValue)
      end
    end
  end
end
rageUiCall.Closed = rageUiCall2
rageUiCall = RMenu
rageUiCall2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue3 = "cmggunmods"
textValue5 = "main"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(rageUiCall2, textValue3, textValue5)

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2
  arg1 = DeleteObject
  arg2 = workValue8
  arg1(arg2)
  arg1 = nil
  workValue8 = arg1
end
rageUiCall.Closed = rageUiCall2
rageUiCall = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1, arg2) ===
function rageUiCall2(arg1, arg2)
  local iterator, workValue3, flag4, textValue8
  iterator = GiveWeaponComponentToPed
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  flag4 = GetHashKey
  textValue8 = arg1
  -- Beginner: result below is hash.
  flag4 = flag4(textValue8)
  textValue8 = arg2
  iterator(workValue3, flag4, textValue8)
end
rageUiCall.giveWeaponComponent = rageUiCall2
rageUiCall = Citizen
rageUiCall = rageUiCall.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, iterator, workValue3, flag4, textValue8, workValue9, workValue11, hashValue5, hashValue7, cmgCall3, textValue2, hashValue, hashValue3, numberValue, numberValue2, numberValue3, numberValue4, dataTable, flag, flag2, flag3
  arg1 = 1
  arg2 = cmgCall.shops
  arg2 = #arg2
  iterator = 1
  for workValue3 = arg1, arg2, iterator do
    flag4 = cmgCall.shops
    flag4 = flag4[workValue3]
    textValue8 = flag4[2]
    workValue9 = tCMG
    workValue9 = workValue9.addMarker
    workValue11 = textValue8.x
    hashValue5 = textValue8.y
    hashValue7 = textValue8.z
    cmgCall3 = 0.5
    textValue2 = 0.5
    hashValue = 0.5
    hashValue3 = 10
    numberValue = 255
    numberValue2 = 81
    numberValue3 = 170
    numberValue4 = 50
    dataTable = 2
    flag = false
    flag2 = false
    flag3 = true
    -- Beginner: Create a world marker.
    workValue9(workValue11, hashValue5, hashValue7, cmgCall3, textValue2, hashValue, hashValue3, numberValue, numberValue2, numberValue3, numberValue4, dataTable, flag, flag2, flag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall(rageUiCall2)
rageUiCall = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1) ===
function rageUiCall2(arg1)
  local arg2, iterator, workValue3, flag4, textValue8, workValue9, workValue11, hashValue5, hashValue7, cmgCall3, textValue2
  arg2 = tCMG
  arg2 = arg2.getWeapons
  arg2 = arg2()
  iterator = pairs
  workValue3 = arg2
  iterator, workValue3, flag4, textValue8 = iterator(workValue3)
  for workValue9 in iterator, workValue3, flag4, textValue8 do
    workValue11 = GetHashKey
    hashValue5 = workValue9
    -- Beginner: result below is hash.
    workValue11 = workValue11(hashValue5)
    hashValue5 = DoesWeaponTakeWeaponComponent
    hashValue7 = workValue11
    cmgCall3 = arg1
    hashValue5 = hashValue5(hashValue7, cmgCall3)
    if hashValue5 then
      hashValue5 = GiveWeaponComponentToPed
      hashValue7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      hashValue7 = hashValue7()
      cmgCall3 = workValue11
      textValue2 = arg1
      hashValue5(hashValue7, cmgCall3, textValue2)
      return
    end
  end
end
rageUiCall.giveAttachment = rageUiCall2
