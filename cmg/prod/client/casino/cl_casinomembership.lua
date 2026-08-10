--[[
    Beginner Guide: cl_casinomembership.lua
    =======================================

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
    BEGINNER GUIDE — Casinomembership
    =================================

    File: cmg/prod/client/casino/cl_casinomembership.lua
    Purpose: This file contains FiveM client/resource logic.

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

    Network/hash identifiers found: 2
      They are intentionally left unchanged because matching server code may use them.
      * 9ba72c4963
      * 10427dae18

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Purchase High Rollers Membership (\194\16310,000,000)

]]
local dataTable, dataTable3, vector3Builder, textValue6, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue
dataTable = {}
dataTable3 = {}
vector3Builder = vector3
textValue6 = 944.34539794922
rageUiCall = 61.159976959229
textValue8 = 80.902641296387
vector3Builder = vector3Builder(textValue6, rageUiCall, textValue8)
dataTable3.pedPosition = vector3Builder
dataTable3.pedHeading = 150.0
vector3Builder = vector3
textValue6 = 943.46997070312
rageUiCall = 59.663074493408
textValue8 = 79.922641296387
vector3Builder = vector3Builder(textValue6, rageUiCall, textValue8)
dataTable3.entryPosition = vector3Builder
dataTable[1] = dataTable3
dataTable3 = RMenu
dataTable3 = dataTable3.Add
vector3Builder = "cmgcasinomembership"
textValue6 = "casino"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue8 = ""
textValue9 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "shopui_title_casino"
textValue = "shopui_title_casino"
rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue = rageUiCall(textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3(vector3Builder, textValue6, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3 = RMenu
vector3Builder = dataTable3
dataTable3 = dataTable3.Get
textValue6 = "cmgcasinomembership"
rageUiCall = "casino"
-- Beginner: result below is menu.
dataTable3 = dataTable3(vector3Builder, textValue6, rageUiCall)
vector3Builder = dataTable3
dataTable3 = dataTable3.SetSubtitle
textValue6 = "~b~MEMBERSHIP"
dataTable3(vector3Builder, textValue6)
dataTable3 = RMenu
dataTable3 = dataTable3.Add
vector3Builder = "cmgcasinomembership"
textValue6 = "confirmadd"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue9 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmgcasinomembership"
rageUiCall3 = "casino"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue9, rageUiCall2, rageUiCall3)
textValue9 = ""
rageUiCall2 = "~b~Are you sure?"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue = rageUiCall4()
rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue = rageUiCall(textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3(vector3Builder, textValue6, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3 = RMenu
dataTable3 = dataTable3.Add
vector3Builder = "cmgcasinomembership"
textValue6 = "confirmremove"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue8 = RMenu
textValue9 = textValue8
textValue8 = textValue8.Get
rageUiCall2 = "cmgcasinomembership"
rageUiCall3 = "casino"
-- Beginner: result below is menu.
textValue8 = textValue8(textValue9, rageUiCall2, rageUiCall3)
textValue9 = ""
rageUiCall2 = "~b~Are you sure?"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue = rageUiCall4()
rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue = rageUiCall(textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3(vector3Builder, textValue6, rageUiCall, textValue8, textValue9, rageUiCall2, rageUiCall3, rageUiCall4, textValue)
dataTable3 = RageUI
dataTable3 = dataTable3.CreateWhile
vector3Builder = 1.0
textValue6 = RMenu
rageUiCall = textValue6
textValue6 = textValue6.Get
textValue8 = "cmgcasinomembership"
textValue9 = "casino"
-- Beginner: result below is menu.
textValue6 = textValue6(rageUiCall, textValue8, textValue9)
rageUiCall = nil
function textValue8()
  local arg1, arg2, flag2, flag3, flag4, iterator, cmgCall3
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag2 = arg2
  arg2 = arg2.Get
  flag3 = "cmgcasinomembership"
  flag4 = "casino"
  -- Beginner: result below is menu.
  arg2 = arg2(flag2, flag3, flag4)
  flag2 = true
  flag3 = true
  flag4 = true
  function iterator()
    local arg12, textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "Purchase High Rollers Membership (\194\16310,000,000)"
    textValue5 = "~g~Allows you to sit at High-Rollers only seats."
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "confirmadd"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "Remove High Rollers Membership (\194\1630)"
    textValue5 = "~r~This is an irrevocable action, you will not receive any money in return."
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "confirmremove"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
  end
  function cmgCall3()
    local arg12, textValue4
  end
  arg1(arg2, flag2, flag3, flag4, iterator, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag2 = arg2
  arg2 = arg2.Get
  flag3 = "cmgcasinomembership"
  flag4 = "confirmadd"
  -- Beginner: result below is menu.
  arg2 = arg2(flag2, flag3, flag4)
  flag2 = true
  flag3 = false
  flag4 = false
  function iterator()
    local arg12, textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "No"
    textValue5 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
      local cmgCall2, textValue7
      if arg3 then
        cmgCall2 = tCMG
        cmgCall2 = cmgCall2.notify
        textValue7 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        cmgCall2(textValue7)
      end
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "casino"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "Yes"
    textValue5 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
      local cmgCall2, textValue7
      if arg3 then
        cmgCall2 = TriggerServerEvent
        textValue7 = "9ba72c4963"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ba72c4963".
        cmgCall2(textValue7)
      end
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "casino"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
  end
  function cmgCall3()
    local arg12, textValue4
  end
  arg1(arg2, flag2, flag3, flag4, iterator, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag2 = arg2
  arg2 = arg2.Get
  flag3 = "cmgcasinomembership"
  flag4 = "confirmremove"
  -- Beginner: result below is menu.
  arg2 = arg2(flag2, flag3, flag4)
  flag2 = true
  flag3 = false
  flag4 = false
  function iterator()
    local arg12, textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "No"
    textValue5 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
      local cmgCall2, textValue7
      if arg3 then
        cmgCall2 = tCMG
        cmgCall2 = cmgCall2.notify
        textValue7 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        cmgCall2(textValue7)
      end
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "casino"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue4 = "Yes"
    textValue5 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true
    function workValue2(arg13, arg22, arg3)
      local cmgCall2, textValue7
      if arg3 then
        cmgCall2 = TriggerServerEvent
        textValue7 = "10427dae18"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10427dae18".
        cmgCall2(textValue7)
      end
    end
    workValue3 = RMenu
    workValue4 = workValue3
    workValue3 = workValue3.Get
    textValue10 = "cmgcasinomembership"
    textValue11 = "casino"
    workValue3, workValue4, textValue10, textValue11 = workValue3(workValue4, textValue10, textValue11)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10, textValue11)
  end
  function cmgCall3()
    local arg12, textValue4
  end
  arg1(arg2, flag2, flag3, flag4, iterator, cmgCall3)
end
dataTable3(vector3Builder, textValue6, rageUiCall, textValue8)
function dataTable3(arg1)
  local arg2, flag2, flag3, flag4, iterator
  arg2 = RageUI
  arg2 = arg2.Visible
  flag2 = RMenu
  flag3 = flag2
  flag2 = flag2.Get
  flag4 = "cmgcasinomembership"
  iterator = "casino"
  -- Beginner: result below is menu.
  flag2 = flag2(flag3, flag4, iterator)
  flag3 = arg1
  arg2(flag2, flag3)
end
vector3Builder = Citizen
vector3Builder = vector3Builder.CreateThread
function textValue6()
  local arg1, arg2, flag2, flag3, flag4, iterator, cmgCall3, numberValue9, workValue5, numberValue10, flag, cmgCall, textValue2, numberValue, workValue, numberValue2
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, flag2, flag3 = arg1(arg2)
  for flag4, iterator in arg1, arg2, flag2, flag3 do
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.createDynamicPed
    numberValue9 = -1156746507
    workValue5 = iterator.pedPosition
    numberValue10 = 175.0
    flag = true
    cmgCall = "mini@strip_club@idles@bouncer@base"
    textValue2 = "base"
    numberValue = 75.0
    workValue = nil
    function numberValue2(arg12)
      local textValue4, textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10
      textValue4 = SetEntityCanBeDamaged
      textValue5 = arg12
      dataTable4 = false
      textValue4(textValue5, dataTable4)
      textValue4 = SetPedAsEnemy
      textValue5 = arg12
      dataTable4 = false
      textValue4(textValue5, dataTable4)
      textValue4 = SetBlockingOfNonTemporaryEvents
      textValue5 = arg12
      dataTable4 = true
      textValue4(textValue5, dataTable4)
      textValue4 = SetPedResetFlag
      textValue5 = arg12
      dataTable4 = 249
      flag5 = true
      textValue4(textValue5, dataTable4, flag5)
      textValue4 = SetPedConfigFlag
      textValue5 = arg12
      dataTable4 = 185
      flag5 = true
      textValue4(textValue5, dataTable4, flag5)
      textValue4 = SetPedConfigFlag
      textValue5 = arg12
      dataTable4 = 108
      flag5 = true
      textValue4(textValue5, dataTable4, flag5)
      textValue4 = SetPedCanEvasiveDive
      textValue5 = arg12
      dataTable4 = false
      textValue4(textValue5, dataTable4)
      textValue4 = SetPedCanRagdollFromPlayerImpact
      textValue5 = arg12
      dataTable4 = false
      textValue4(textValue5, dataTable4)
      textValue4 = SetPedConfigFlag
      textValue5 = arg12
      dataTable4 = 208
      flag5 = true
      textValue4(textValue5, dataTable4, flag5)
      textValue4 = SetEntityCoordsNoOffset
      textValue5 = arg12
      dataTable4 = iterator.pedPosition
      dataTable4 = dataTable4.x
      flag5 = iterator.pedPosition
      flag5 = flag5.y
      workValue2 = iterator.pedPosition
      workValue2 = workValue2.z
      workValue3 = true
      workValue4 = false
      textValue10 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      textValue4(textValue5, dataTable4, flag5, workValue2, workValue3, workValue4, textValue10)
      textValue4 = SetEntityHeading
      textValue5 = arg12
      dataTable4 = iterator.pedHeading
      -- Beginner: Change the direction an entity is facing.
      textValue4(textValue5, dataTable4)
      textValue4 = FreezeEntityPosition
      textValue5 = arg12
      dataTable4 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      textValue4(textValue5, dataTable4)
    end
    cmgCall3(numberValue9, workValue5, numberValue10, flag, cmgCall, textValue2, numberValue, workValue, numberValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
vector3Builder(textValue6)
vector3Builder = AddEventHandler
textValue6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function rageUiCall(arg1, arg2)
  local flag2, flag3, flag4, iterator, cmgCall3, numberValue9, workValue5, numberValue10, flag, cmgCall, textValue2, numberValue, workValue, numberValue2, numberValue3, textValue3, numberValue4, dataTable2, numberValue5, numberValue6, numberValue7, numberValue8
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function flag2()
      local arg12, textValue4
      arg12 = dataTable3
      textValue4 = true
      arg12(textValue4)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function flag3()
      local arg12, textValue4
      arg12 = dataTable3
      textValue4 = false
      arg12(textValue4)
    end
    function flag4()
      local arg12, textValue4
    end
    iterator = pairs
    cmgCall3 = dataTable
    iterator, cmgCall3, numberValue9, workValue5 = iterator(cmgCall3)
    for numberValue10, flag in iterator, cmgCall3, numberValue9, workValue5 do
      cmgCall = tCMG
      cmgCall = cmgCall.addBlip
      textValue2 = flag.entryPosition
      textValue2 = textValue2.x
      numberValue = flag.entryPosition
      numberValue = numberValue.y
      workValue = flag.entryPosition
      workValue = workValue.z
      numberValue2 = 682
      numberValue3 = 0
      textValue3 = "Casino Memberships"
      numberValue4 = 0.7
      dataTable2 = true
      -- Beginner: Create a minimap blip.
      cmgCall(textValue2, numberValue, workValue, numberValue2, numberValue3, textValue3, numberValue4, dataTable2)
      cmgCall = tCMG
      cmgCall = cmgCall.addMarker
      textValue2 = flag.entryPosition
      textValue2 = textValue2.x
      numberValue = flag.entryPosition
      numberValue = numberValue.y
      workValue = flag.entryPosition
      workValue = workValue.z
      numberValue2 = 1.0
      numberValue3 = 1.0
      textValue3 = 1.0
      numberValue4 = 138
      dataTable2 = 43
      numberValue5 = 226
      numberValue6 = 70
      numberValue7 = 50
      numberValue8 = 27
      -- Beginner: Create a world marker.
      cmgCall(textValue2, numberValue, workValue, numberValue2, numberValue3, textValue3, numberValue4, dataTable2, numberValue5, numberValue6, numberValue7, numberValue8)
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      textValue2 = "casinomembership_"
      numberValue = numberValue10
      textValue2 = textValue2 .. numberValue
      numberValue = flag.entryPosition
      workValue = 1.5
      numberValue2 = 6
      numberValue3 = flag2
      textValue3 = flag3
      numberValue4 = flag4
      dataTable2 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgCall(textValue2, numberValue, workValue, numberValue2, numberValue3, textValue3, numberValue4, dataTable2)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder(textValue6, rageUiCall)