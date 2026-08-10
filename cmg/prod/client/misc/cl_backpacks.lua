--[[
    Beginner Guide: cl_backpacks.lua
    ================================

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
    BEGINNER GUIDE — Backpacks
    ==========================

    File: cmg/prod/client/misc/cl_backpacks.lua
    Purpose: This file contains general gameplay utility.

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
      * cfg/cfg_backpacks

    Commands/command-like entries found:
      * storebackpack

    Network/hash identifiers found: 4
      They are intentionally left unchanged because matching server code may use them.
      * f0b530372d
      * 0ffed0ef12
      * 0297cd29eb
      * a52bcd08f0

    Named framework/network events found:
      * CMG:onClientSpawn

]]
local cmgCall, textValue5, workValue12, workValue14, flag10, dataTable2, workValue16, cmgCall5, workValue22, workValue25, workValue, workValue3, workValue6, eventRegistration, cmgCall2, textValue2, flag4, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue6, textValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue5 = "cfg/cfg_backpacks"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue5)
textValue5 = nil
workValue12 = nil
workValue14 = nil
flag10 = false
dataTable2 = {}
workValue16 = nil
cmgCall5 = CMG
function workValue22()
  local arg1, arg2
  arg1 = textValue5
  return arg1
end
cmgCall5.getCurrentBackpack = workValue22
function cmgCall5(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" ~= arg2 then
    return arg1
  end
  arg2 = string
  arg2 = arg2.gsub
  arg3 = arg1
  arg4 = "^%s*(.-)%s*$"
  arg5 = "%1"
  arg2 = arg2(arg3, arg4, arg5)
  return arg2
end
function workValue22(arg1)
  local arg2, arg3, arg4
  if nil == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "number" == arg2 then
    arg2 = math
    arg2 = arg2.floor
    arg3 = arg1 + 0.5
    return arg2(arg3)
  end
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" == arg2 then
    arg2 = tonumber
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg3 = math
      arg3 = arg3.floor
      arg4 = arg2 + 0.5
      return arg3(arg4)
    end
  end
  arg2 = nil
  return arg2
end
function workValue25(arg1, arg2)
  local arg3, arg4, arg5, arg6, workValue17, workValue19, workValue23, numberValue12, iterator
  arg3 = cmgCall5
  arg4 = arg2.collectionName
  arg3 = arg3(arg4)
  arg4 = workValue22
  arg5 = arg2.localIndex
  arg4 = arg4(arg5)
  if nil == arg4 then
    return
  end
  arg5 = SetPedCollectionComponentVariation
  arg6 = arg1
  workValue17 = arg2.componentId
  workValue19 = arg3
  workValue23 = arg4
  numberValue12 = arg2.textureIndex
  if not numberValue12 then
    numberValue12 = 0
  end
  iterator = 0
  arg5(arg6, workValue17, workValue19, workValue23, numberValue12, iterator)
end
function workValue(arg1, arg2)
  local arg3, arg4, arg5, arg6, workValue17, workValue19, workValue23, numberValue12, iterator
  arg3 = arg2.componentId
  arg4 = GetPedDrawableVariation
  arg5 = arg1
  arg6 = arg3
  arg4 = arg4(arg5, arg6)
  arg5 = cmgCall5
  arg6 = GetPedCollectionNameFromDrawable
  workValue17 = arg1
  workValue19 = arg3
  workValue23 = arg4
  arg6, workValue17, workValue19, workValue23, numberValue12, iterator = arg6(workValue17, workValue19, workValue23)
  arg5 = arg5(arg6, workValue17, workValue19, workValue23, numberValue12, iterator)
  arg6 = workValue22
  workValue17 = GetPedCollectionLocalIndexFromDrawable
  workValue19 = arg1
  workValue23 = arg3
  numberValue12 = arg4
  workValue17, workValue19, workValue23, numberValue12, iterator = workValue17(workValue19, workValue23, numberValue12)
  arg6 = arg6(workValue17, workValue19, workValue23, numberValue12, iterator)
  workValue17 = cmgCall5
  workValue19 = arg2.collectionName
  workValue17 = workValue17(workValue19)
  workValue19 = workValue22
  workValue23 = arg2.localIndex
  workValue19 = workValue19(workValue23)
  if arg5 ~= workValue17 or arg6 ~= workValue19 then
    workValue23 = false
    return workValue23
  end
  workValue23 = GetPedTextureVariation
  numberValue12 = arg1
  iterator = arg3
  workValue23 = workValue23(numberValue12, iterator)
  numberValue12 = arg2.textureIndex
  if not numberValue12 then
    numberValue12 = 0
  end
  if workValue23 ~= numberValue12 then
    workValue23 = false
    return workValue23
  end
  workValue23 = true
  return workValue23
end
function workValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, workValue17, workValue19
  arg2 = arg1[1]
  arg3 = arg1[2]
  arg4 = arg1[3]
  arg5 = arg1[4]
  arg6 = workValue25
  workValue17 = CMG
  workValue17 = workValue17.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue17 = workValue17()
  workValue19 = {}
  workValue19.componentId = arg2
  workValue19.collectionName = arg3
  workValue19.localIndex = arg4
  workValue19.textureIndex = arg5
  arg6(workValue17, workValue19)
end
function workValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = textValue5
  if nil ~= arg1 then
    arg1 = SetPedComponentVariation
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 5
    arg4 = 0
    arg5 = 0
    arg6 = 2
    arg1(arg2, arg3, arg4, arg5, arg6)
    arg1 = nil
    textValue5 = arg1
    arg1 = nil
    workValue12 = arg1
  end
end
eventRegistration = RegisterNetEvent
cmgCall2 = "f0b530372d"
-- Beginner: this function handles network event "f0b530372d".
function textValue2(arg1, arg2, arg3, arg4, arg5, arg6)
  local workValue17, workValue19, workValue23, numberValue12
  textValue5 = arg6
  workValue17 = {}
  workValue17.componentId = arg1
  workValue17.collectionName = arg2
  workValue17.localIndex = arg3
  workValue17.textureIndex = arg4
  workValue12 = workValue17
  workValue17 = workValue25
  workValue19 = CMG
  workValue19 = workValue19.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue19 = workValue19()
  workValue23 = workValue12
  workValue17(workValue19, workValue23)
  workValue17 = tCMG
  workValue17 = workValue17.notify
  workValue19 = "~g~"
  workValue23 = arg6
  numberValue12 = " Purchased"
  workValue19 = workValue19 .. workValue23 .. numberValue12
  -- Beginner: Show a notification to the player.
  workValue17(workValue19)
  workValue17 = nil
  workValue14 = workValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f0b530372d".
eventRegistration(cmgCall2, textValue2)
eventRegistration = RegisterNetEvent
cmgCall2 = "0ffed0ef12"
-- Beginner: this function handles network event "0ffed0ef12".
function textValue2()
  local arg1, arg2
  arg1 = workValue6
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0ffed0ef12".
eventRegistration(cmgCall2, textValue2)
eventRegistration = RegisterCommand
cmgCall2 = "storebackpack"
-- Beginner: this function is the command handler for "storebackpack".
function textValue2()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = textValue5
  if nil ~= arg1 then
    arg1 = TriggerServerEvent
    arg2 = "0297cd29eb"
    arg3 = textValue5
    arg4 = true
    arg5 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0297cd29eb".
    arg1(arg2, arg3, arg4, arg5)
  end
end
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "storebackpack".
eventRegistration(cmgCall2, textValue2, flag4)
eventRegistration = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, workValue17, workValue19, workValue23, numberValue12, iterator, workValue4, workValue7, flag, flag2, flag3, tableHelper, numberValue, numberValue2, flag5, flag6, flag7, flag8, numberValue3, cmgCall4, textValue8, vector3Builder, workValue11, numberValue4, numberValue5, numberValue6, numberValue7, dataTable, numberValue8, numberValue9, numberValue10, numberValue11
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg3(arg12)
      local cmgCall3, workValue13, flag9, textValue9, textValue11
      cmgCall3 = tCMG
      cmgCall3 = cmgCall3.getCustomization
      cmgCall3 = cmgCall3()
      workValue14 = cmgCall3
      cmgCall3 = arg12.storeName
      workValue16 = cmgCall3
      cmgCall3 = RageUI
      cmgCall3 = cmgCall3.Visible
      workValue13 = RMenu
      flag9 = workValue13
      workValue13 = workValue13.Get
      textValue9 = "backpacks"
      textValue11 = "mainmenu"
      -- Beginner: result below is menu.
      workValue13 = workValue13(flag9, textValue9, textValue11)
      flag9 = true
      cmgCall3(workValue13, flag9)
    end
    function arg4()
      local arg12, cmgCall3, workValue13, flag9, textValue9
      arg12 = RageUI
      arg12 = arg12.Visible
      cmgCall3 = RMenu
      workValue13 = cmgCall3
      cmgCall3 = cmgCall3.Get
      flag9 = "backpacks"
      textValue9 = "mainmenu"
      -- Beginner: result below is menu.
      cmgCall3 = cmgCall3(workValue13, flag9, textValue9)
      workValue13 = false
      arg12(cmgCall3, workValue13)
      arg12 = nil
      workValue16 = arg12
      arg12 = workValue14
      if arg12 then
        arg12 = tCMG
        arg12 = arg12.setCustomization
        cmgCall3 = workValue14
        arg12(cmgCall3)
      end
      arg12 = nil
      workValue14 = arg12
    end
    arg5 = pairs
    arg6 = cmgCall.stores
    arg5, arg6, workValue17, workValue19 = arg5(arg6)
    for workValue23, numberValue12 in arg5, arg6, workValue17, workValue19 do
      iterator = pairs
      workValue4 = numberValue12
      iterator, workValue4, workValue7, flag = iterator(workValue4)
      for flag2, flag3 in iterator, workValue4, workValue7, flag do
        if "_config" == flag2 then
          tableHelper = table
          tableHelper = tableHelper.unpack
          numberValue = flag3
          tableHelper, numberValue, numberValue2, flag5, flag6, flag7, flag8, numberValue3 = tableHelper(numberValue)
          if numberValue3 then
            cmgCall4 = tCMG
            cmgCall4 = cmgCall4.addBlip
            textValue8 = tableHelper
            vector3Builder = numberValue
            workValue11 = numberValue2
            numberValue4 = flag5
            numberValue5 = flag6
            numberValue6 = flag7
            -- Beginner: Create a minimap blip.
            cmgCall4(textValue8, vector3Builder, workValue11, numberValue4, numberValue5, numberValue6)
          end
          cmgCall4 = tCMG
          cmgCall4 = cmgCall4.addMarker
          textValue8 = tableHelper
          vector3Builder = numberValue
          workValue11 = numberValue2
          numberValue4 = 1.0
          numberValue5 = 1.0
          numberValue6 = 1.0
          numberValue7 = 255
          dataTable = 0
          numberValue8 = 0
          numberValue9 = 170
          numberValue10 = 50
          numberValue11 = 27
          -- Beginner: Create a world marker.
          cmgCall4(textValue8, vector3Builder, workValue11, numberValue4, numberValue5, numberValue6, numberValue7, dataTable, numberValue8, numberValue9, numberValue10, numberValue11)
          cmgCall4 = CMG
          cmgCall4 = cmgCall4.createArea
          textValue8 = "backpack_"
          vector3Builder = workValue23
          textValue8 = textValue8 .. vector3Builder
          vector3Builder = vector3
          workValue11 = tableHelper
          numberValue4 = numberValue
          numberValue5 = numberValue2
          vector3Builder = vector3Builder(workValue11, numberValue4, numberValue5)
          workValue11 = 1.5
          numberValue4 = 6
          numberValue5 = arg3
          numberValue6 = arg4
          function numberValue7()
            local arg12, cmgCall3
          end
          dataTable = {}
          dataTable.storeName = workValue23
          -- Beginner: Create an interaction area around a world position.
          cmgCall4(textValue8, vector3Builder, workValue11, numberValue4, numberValue5, numberValue6, numberValue7, dataTable)
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration(cmgCall2, textValue2)
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, arg6, workValue17
  arg1 = workValue12
  if not arg1 then
    arg1 = flag10
    if arg1 then
      arg1 = LocalPlayer
      arg1 = arg1.state
      arg2 = arg1
      arg1 = arg1.set
      arg3 = "hasBackpack"
      arg4 = nil
      arg5 = true
      arg1(arg2, arg3, arg4, arg5)
      arg1 = false
      flag10 = arg1
    end
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  if 1885233650 == arg2 then
    arg3 = flag10
    if arg3 then
      arg3 = LocalPlayer
      arg3 = arg3.state
      arg4 = arg3
      arg3 = arg3.set
      arg5 = "hasBackpack"
      arg6 = nil
      workValue17 = true
      arg3(arg4, arg5, arg6, workValue17)
      arg3 = false
      flag10 = arg3
    end
    arg3 = workValue
    arg4 = arg1
    arg5 = workValue12
    arg3 = arg3(arg4, arg5)
    if not arg3 then
      arg3 = workValue25
      arg4 = arg1
      arg5 = workValue12
      arg3(arg4, arg5)
    end
  else
    arg3 = flag10
    if not arg3 then
      arg3 = LocalPlayer
      arg3 = arg3.state
      arg4 = arg3
      arg3 = arg3.set
      arg5 = "hasBackpack"
      arg6 = true
      workValue17 = true
      arg3(arg4, arg5, arg6, workValue17)
      arg3 = true
      flag10 = arg3
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
textValue2 = eventRegistration
flag4 = "Backpack Object"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(textValue2, flag4)
cmgCall2 = AddStateBagChangeHandler
textValue2 = "hasBackpack"
flag4 = nil
function rageUiCall(arg1, arg2, arg3)
  local arg4, arg5, arg6, workValue17, workValue19, workValue23, numberValue12, iterator, workValue4, workValue7, flag, flag2, flag3, tableHelper, numberValue, numberValue2, flag5, flag6, flag7, flag8, numberValue3, cmgCall4
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  workValue17 = ":"
  arg5 = arg5(arg6, workValue17)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if arg4 and arg3 then
    arg5 = dataTable2
    arg5 = arg5[arg4]
    if not arg5 then
      arg5 = dataTable2
      arg5[arg4] = 0
      arg5 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg5 = arg5()
      while true do
        arg6 = dataTable2
        arg6 = arg6[arg4]
        if not arg6 then
          break
        end
        arg6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg6 = arg6()
        arg6 = arg6 - arg5
        workValue17 = 5000
        if arg6 > workValue17 then
          arg6 = dataTable2
          arg6[arg4] = nil
          return
        end
        arg6 = GetPlayerFromServerId
        workValue17 = arg4
        -- Beginner: result below is playerIndex.
        arg6 = arg6(workValue17)
        if -1 ~= arg6 then
          workValue17 = GetPlayerPed
          workValue19 = arg6
          -- Beginner: result below is playerPed.
          workValue17 = workValue17(workValue19)
          if 0 ~= workValue17 then
            workValue19 = GetEntityCoords
            workValue23 = workValue17
            numberValue12 = true
            -- Beginner: result below is entityCoords.
            workValue19 = workValue19(workValue23, numberValue12)
            workValue23 = CMG
            workValue23 = workValue23.loadModel
            numberValue12 = -86518587
            -- Beginner: Request/load a GTA model before spawning or applying it.
            workValue23(numberValue12)
            workValue23 = CreateObject
            numberValue12 = -86518587
            iterator = workValue19.x
            workValue4 = workValue19.y
            workValue7 = workValue19.z
            flag = false
            flag2 = false
            flag3 = false
            -- Beginner: result below is objectEntity.
            workValue23 = workValue23(numberValue12, iterator, workValue4, workValue7, flag, flag2, flag3)
            numberValue12 = AttachEntityToEntity
            iterator = workValue23
            workValue4 = workValue17
            workValue7 = GetPedBoneIndex
            flag = workValue17
            flag2 = 10706
            workValue7 = workValue7(flag, flag2)
            flag = 0.0
            flag2 = -0.25
            flag3 = -0.4
            tableHelper = 0.0
            numberValue = 0.0
            numberValue2 = 0.0
            flag5 = false
            flag6 = false
            flag7 = false
            flag8 = false
            numberValue3 = 2
            cmgCall4 = true
            -- Beginner: Attach one entity to another entity.
            numberValue12(iterator, workValue4, workValue7, flag, flag2, flag3, tableHelper, numberValue, numberValue2, flag5, flag6, flag7, flag8, numberValue3, cmgCall4)
            numberValue12 = SetModelAsNoLongerNeeded
            iterator = -86518587
            numberValue12(iterator)
            numberValue12 = dataTable2
            numberValue12[arg4] = workValue23
            return
          end
        end
        workValue17 = Citizen
        workValue17 = workValue17.Wait
        workValue19 = 0
        workValue17(workValue19)
      end
  end
  elseif arg4 and not arg3 then
    arg5 = dataTable2
    arg5 = arg5[arg4]
    if arg5 then
      arg5 = DeleteEntity
      arg6 = dataTable2
      arg6 = arg6[arg4]
      -- Beginner: Delete a GTA entity.
      arg5(arg6)
      arg5 = dataTable2
      arg5[arg4] = nil
    end
  end
end
cmgCall2(textValue2, flag4, rageUiCall)
cmgCall2 = AddEventHandler
textValue2 = "playerDropped"
-- Beginner: this function runs when client event "playerDropped" fires.
function flag4(arg1)
  local arg2, arg3
  arg2 = dataTable2
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = DeleteEntity
    arg3 = dataTable2
    arg3 = arg3[arg1]
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    arg2 = dataTable2
    arg2[arg1] = nil
  end
end
-- Beginner: Register a client-side event handler. Event/command: "playerDropped".
cmgCall2(textValue2, flag4)
cmgCall2 = AddEventHandler
textValue2 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function flag4(arg1)
  local arg2, arg3, arg4, arg5, arg6, workValue17, workValue19, workValue23
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = dataTable2
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, workValue17 in arg2, arg3, arg4, arg5 do
      workValue19 = DeleteEntity
      workValue23 = workValue17
      -- Beginner: Delete a GTA entity.
      workValue19(workValue23)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall2(textValue2, flag4)
cmgCall2 = RMenu
cmgCall2 = cmgCall2.Add
textValue2 = "backpacks"
flag4 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue3 = ""
textValue4 = "Backpacks"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue6 = "cmg_backpackui"
textValue7 = "cmg_backpackui"
rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue6, textValue7 = rageUiCall(textValue3, textValue4, rageUiCall2, rageUiCall3, textValue6, textValue7)
cmgCall2(textValue2, flag4, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue6, textValue7)
cmgCall2 = RageUI
cmgCall2 = cmgCall2.CreateWhile
textValue2 = 1.0
flag4 = RMenu
rageUiCall = flag4
flag4 = flag4.Get
textValue3 = "backpacks"
textValue4 = "mainmenu"
-- Beginner: result below is menu.
flag4 = flag4(rageUiCall, textValue3, textValue4)
rageUiCall = nil
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, workValue17
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "backpacks"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true
  function arg6()
    local arg12, cmgCall3, workValue13, flag9, textValue9, textValue11, rageUiCall4, workValue20, textValue12, dataTable3, stringHelper, textValue, workValue8, workValue10
    arg12 = pairs
    cmgCall3 = cmgCall.stores
    workValue13 = workValue16
    cmgCall3 = cmgCall3[workValue13]
    arg12, cmgCall3, workValue13, flag9 = arg12(cmgCall3)
    for textValue9, textValue11 in arg12, cmgCall3, workValue13, flag9 do
      if "_config" ~= textValue9 then
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.ButtonWithStyle
        workValue20 = textValue9
        textValue12 = ""
        dataTable3 = {}
        stringHelper = string
        stringHelper = stringHelper.format
        textValue = "\194\163%s"
        workValue8 = getMoneyStringFormatted
        workValue10 = textValue11[5]
        workValue8, workValue10 = workValue8(workValue10)
        stringHelper = stringHelper(textValue, workValue8, workValue10)
        dataTable3.RightLabel = stringHelper
        stringHelper = true
        function textValue(arg13, arg22, arg32)
          local serverEventCall, textValue10, workValue15, workValue18, workValue21, workValue24, workValue26, workValue2, workValue5, workValue9
          if arg22 then
            serverEventCall = workValue3
            textValue10 = textValue11
            serverEventCall(textValue10)
          end
          if arg32 then
            serverEventCall = TriggerServerEvent
            textValue10 = "a52bcd08f0"
            workValue15 = textValue11
            workValue15 = workValue15[1]
            workValue18 = textValue11
            workValue18 = workValue18[2]
            workValue21 = textValue11
            workValue21 = workValue21[3]
            workValue24 = textValue11
            workValue24 = workValue24[4]
            workValue26 = textValue9
            workValue2 = textValue11
            workValue2 = workValue2[5]
            workValue5 = textValue11
            workValue5 = workValue5[6]
            workValue9 = workValue16
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a52bcd08f0".
            serverEventCall(textValue10, workValue15, workValue18, workValue21, workValue24, workValue26, workValue2, workValue5, workValue9)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiCall4(workValue20, textValue12, dataTable3, stringHelper, textValue)
      end
    end
  end
  function workValue17()
    local arg12, cmgCall3
  end
  arg1(arg2, arg3, arg4, arg5, arg6, workValue17)
end
cmgCall2(textValue2, flag4, rageUiCall, textValue3)