--[[
    Beginner Guide: cl_trucking.lua
    ===============================

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
    BEGINNER GUIDE — Trucking
    =========================

    File: cmg/prod/client/jobs/cl_trucking.lua
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
      * cfg/cfg_trucking

    Commands/command-like entries found:
      * setdonecutscene

    Network/hash identifiers found: 12
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Start Job
      * ~r~You are currently doing a job.\n
      * ~r~You ended the job
      * Press ~INPUT_PICKUP~ to open the Trucking menu.
      * ~r~You aren

]]
local cmgCall, textValue, dataTable4, rageUiCall2, dataTable6, cmgCall10, rageUiCall3, rageUiCall4, flag14, textValue16, flag, dataTable, flag2, numberValue3, cmgCall3, workValue, workValue2, workValue3, rageUiCall, cmgCall4, textValue2, workValue4, workValue5, textValue5, cmgCall6, cmgCall7, textValue6, workValue9, textValue7, textValue8, cmgCall8, cmgCall9, textValue9, numberValue6, numberValue7, numberValue8, numberValue9, textValue10, flag8, flag9, textValue11, textValue12, numberValue10, numberValue11, flag10, flag11
cmgCall = RMenu
cmgCall = cmgCall.Add
textValue = "cmgtruckmenu"
dataTable4 = "job"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
dataTable6 = ""
cmgCall10 = "~b~CMG Trucking"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
flag14 = "cmg_truckingjob"
textValue16 = "cmg_truckingjob"
rageUiCall2, dataTable6, cmgCall10, rageUiCall3, rageUiCall4, flag14, textValue16, flag, dataTable, flag2, numberValue3, cmgCall3, workValue, workValue2, workValue3, rageUiCall, cmgCall4, textValue2, workValue4, workValue5, textValue5, cmgCall6, cmgCall7, textValue6, workValue9, textValue7, textValue8, cmgCall8, cmgCall9, textValue9, numberValue6, numberValue7, numberValue8, numberValue9, textValue10, flag8, flag9, textValue11, textValue12, numberValue10, numberValue11, flag10, flag11 = rageUiCall2(dataTable6, cmgCall10, rageUiCall3, rageUiCall4, flag14, textValue16)
cmgCall(textValue, dataTable4, rageUiCall2, dataTable6, cmgCall10, rageUiCall3, rageUiCall4, flag14, textValue16, flag, dataTable, flag2, numberValue3, cmgCall3, workValue, workValue2, workValue3, rageUiCall, cmgCall4, textValue2, workValue4, workValue5, textValue5, cmgCall6, cmgCall7, textValue6, workValue9, textValue7, textValue8, cmgCall8, cmgCall9, textValue9, numberValue6, numberValue7, numberValue8, numberValue9, textValue10, flag8, flag9, textValue11, textValue12, numberValue10, numberValue11, flag10, flag11)
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_trucking"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
textValue = ""
dataTable4 = {}
dataTable4.vehicle = nil
dataTable4.trailer = nil
dataTable4.checkpoint = nil
rageUiCall2 = 1
dataTable6 = {}
cmgCall10 = {}
rageUiCall3 = {}
rageUiCall4 = false
flag14 = false
textValue16 = 0
flag = false
dataTable = {}
flag2 = false
globalTruckingOnDuty = false
numberValue3 = 48
cmgCall3 = CMG
function workValue()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall3.isDoingTruckRoute = workValue
cmgCall3 = pairs
workValue = cmgCall.jobs
cmgCall3, workValue, workValue2, workValue3 = cmgCall3(workValue)
for rageUiCall, cmgCall4 in cmgCall3, workValue, workValue2, workValue3 do
  textValue2 = "Illegal" == rageUiCall
  workValue4 = cmgCall4
  workValue5 = workValue4.config
  if workValue5 then
    workValue5 = workValue4.config
    workValue5 = workValue5[1]
    textValue5 = workValue4.config
    textValue5 = textValue5[2]
    cmgCall6 = type
    cmgCall7 = workValue5
    cmgCall6 = cmgCall6(cmgCall7)
    if "vector3" == cmgCall6 then
      cmgCall6 = tCMG
      cmgCall6 = cmgCall6.addBlip
      cmgCall7 = workValue5.x
      textValue6 = workValue5.y
      workValue9 = workValue5.z
      textValue7 = 67
      textValue8 = 5
      cmgCall8 = textValue5
      cmgCall6 = cmgCall6(cmgCall7, textValue6, workValue9, textValue7, textValue8, cmgCall8)
      if textValue2 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.addBlipContext
        textValue6 = "Civilian"
        workValue9 = cmgCall6
        cmgCall7(textValue6, workValue9)
      end
      cmgCall7 = tCMG
      cmgCall7 = cmgCall7.addMarker
      textValue6 = workValue5.x
      workValue9 = workValue5.y
      textValue7 = workValue5.z
      textValue8 = 0.7
      cmgCall8 = 0.7
      cmgCall9 = 0.5
      textValue9 = 0
      numberValue6 = 255
      numberValue7 = 125
      numberValue8 = 125
      numberValue9 = 50
      textValue10 = 39
      flag8 = true
      flag9 = true
      -- Beginner: Create a world marker.
      cmgCall7(textValue6, workValue9, textValue7, textValue8, cmgCall8, cmgCall9, textValue9, numberValue6, numberValue7, numberValue8, numberValue9, textValue10, flag8, flag9)
    else
      cmgCall6 = pairs
      cmgCall7 = workValue5
      cmgCall6, cmgCall7, textValue6, workValue9 = cmgCall6(cmgCall7)
      for textValue7, textValue8 in cmgCall6, cmgCall7, textValue6, workValue9 do
        cmgCall8 = tCMG
        cmgCall8 = cmgCall8.addBlip
        cmgCall9 = textValue8.x
        textValue9 = textValue8.y
        numberValue6 = textValue8.z
        numberValue7 = 67
        numberValue8 = 5
        numberValue9 = textValue5
        cmgCall8 = cmgCall8(cmgCall9, textValue9, numberValue6, numberValue7, numberValue8, numberValue9)
        if textValue2 then
          cmgCall9 = CMG
          cmgCall9 = cmgCall9.addBlipContext
          textValue9 = "Civilian"
          numberValue6 = cmgCall8
          cmgCall9(textValue9, numberValue6)
        end
        cmgCall9 = tCMG
        cmgCall9 = cmgCall9.addMarker
        textValue9 = textValue8.x
        numberValue6 = textValue8.y
        numberValue7 = textValue8.z
        numberValue8 = 0.7
        numberValue9 = 0.7
        textValue10 = 0.5
        flag8 = 0
        flag9 = 255
        textValue11 = 125
        textValue12 = 125
        numberValue10 = 50
        numberValue11 = 39
        flag10 = true
        flag11 = true
        -- Beginner: Create a world marker.
        cmgCall9(textValue9, numberValue6, numberValue7, numberValue8, numberValue9, textValue10, flag8, flag9, textValue11, textValue12, numberValue10, numberValue11, flag10, flag11)
      end
    end
  end
end
function cmgCall3(arg1)
  local arg2, arg3, arg4, textValue13, iterator
  textValue = arg1
  arg2 = CMG
  arg2 = arg2.TriggerServerCallback
  arg3 = "9a9cb9e8bf"
  arg4 = textValue
  arg2 = arg2(arg3, arg4)
  textValue16 = arg2
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgtruckmenu"
  textValue13 = "job"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue13)
  arg3 = arg2
  arg2 = arg2.SetSubtitle
  arg4 = cmgCall.jobs
  arg4 = arg4[arg1]
  arg4 = arg4.config
  arg4 = arg4[2]
  arg2(arg3, arg4)
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  textValue13 = "cmgtruckmenu"
  iterator = "job"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, textValue13, iterator)
  arg4 = true
  arg2(arg3, arg4)
end
function workValue()
  local arg1, arg2, arg3, arg4, textValue13
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgtruckmenu"
  textValue13 = "job"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue13)
  arg3 = false
  arg1(arg2, arg3)
end
function workValue2(arg1)
  local arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, textValue13 = arg2(arg3)
  for iterator, numberValue13 in arg2, arg3, arg4, textValue13 do
    workValue11 = IsPositionOccupied
    numberValue14 = numberValue13[2]
    numberValue14 = numberValue14.x
    numberValue15 = numberValue13[2]
    numberValue15 = numberValue15.y
    numberValue = numberValue13[2]
    numberValue = numberValue.z
    numberValue2 = 1.8
    flag3 = false
    cmgCall2 = true
    flag4 = false
    flag5 = false
    flag6 = false
    numberValue4 = 0
    flag7 = false
    workValue11 = workValue11(numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7)
    if not workValue11 then
      workValue11 = numberValue13[2]
      return workValue11
    end
  end
  arg2 = nil
  return arg2
end
workValue3 = nil
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
cmgCall4 = 1.0
textValue2 = RMenu
workValue4 = textValue2
textValue2 = textValue2.Get
workValue5 = "cmgtruckmenu"
textValue5 = "job"
-- Beginner: result below is menu.
textValue2 = textValue2(workValue4, workValue5, textValue5)
workValue4 = nil
function workValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgtruckmenu"
  textValue13 = "job"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue13)
  arg3 = true
  arg4 = false
  textValue13 = true
  function iterator()
    local arg12, arg22, arg32, dataTable5, flag12, textValue15, workValue10
    arg12 = textValue
    if "" ~= arg12 then
      arg12 = flag
      if false == arg12 then
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = "Start Job"
        arg32 = nil
        dataTable5 = {}
        dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag12 = true
        function textValue15(arg13, arg23, arg33)
          local serverEventCall, textValue14, numberValue12, flag13
          if arg33 then
            serverEventCall = GetResourceKvpInt
            textValue14 = "cmg_trucking_done_cutscene"
            serverEventCall = serverEventCall(textValue14)
            if 1 == serverEventCall then
              serverEventCall = TriggerServerEvent
              textValue14 = "881ad8757a"
              numberValue12 = textValue
              flag13 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
              serverEventCall(textValue14, numberValue12, flag13)
            else
              serverEventCall = workValue3
              serverEventCall()
              serverEventCall = TriggerServerEvent
              textValue14 = "881ad8757a"
              numberValue12 = textValue
              flag13 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
              serverEventCall(textValue14, numberValue12, flag13)
              serverEventCall = SetResourceKvpInt
              textValue14 = "cmg_trucking_done_cutscene"
              numberValue12 = 1
              serverEventCall(textValue14, numberValue12)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, dataTable5, flag12, textValue15)
      else
        arg12 = flag
        if arg12 then
          arg12 = RageUI
          arg12 = arg12.Separator
          arg22 = "~r~You are currently doing a job.\n"
          arg12(arg22)
          arg12 = RageUI
          arg12 = arg12.Separator
          arg22 = [[
~r~ Please finish the current one to 
start a new one!]]
          arg12(arg22)
          arg12 = RageUI
          arg12 = arg12.Separator
          arg22 = ""
          arg12(arg22)
          arg12 = RageUI
          arg12 = arg12.Separator
          arg22 = ""
          arg12(arg22)
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          arg22 = "End Job"
          arg32 = nil
          dataTable5 = {}
          dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag12 = true
          function textValue15(arg13, arg23, arg33)
            local serverEventCall, textValue14, numberValue12
            if arg33 then
              serverEventCall = TriggerServerEvent
              textValue14 = "6f29153e97"
              numberValue12 = "~r~You ended the job"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
              serverEventCall(textValue14, numberValue12)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(arg22, arg32, dataTable5, flag12, textValue15)
        end
      end
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "Current Level: "
      arg32 = tostring
      dataTable5 = textValue16
      dataTable5 = dataTable5[1]
      arg32 = arg32(dataTable5)
      arg22 = arg22 .. arg32
      arg12(arg22)
      arg12 = getMoneyStringFormatted
      arg22 = tostring
      arg32 = math
      arg32 = arg32.floor
      dataTable5 = textValue16
      dataTable5 = dataTable5[2]
      arg32, dataTable5, flag12, textValue15, workValue10 = arg32(dataTable5)
      arg22, arg32, dataTable5, flag12, textValue15, workValue10 = arg22(arg32, dataTable5, flag12, textValue15, workValue10)
      arg12 = arg12(arg22, arg32, dataTable5, flag12, textValue15, workValue10)
      arg22 = getMoneyStringFormatted
      arg32 = tostring
      dataTable5 = math
      dataTable5 = dataTable5.floor
      flag12 = textValue16
      flag12 = flag12[3]
      dataTable5, flag12, textValue15, workValue10 = dataTable5(flag12)
      arg32, dataTable5, flag12, textValue15, workValue10 = arg32(dataTable5, flag12, textValue15, workValue10)
      arg22 = arg22(arg32, dataTable5, flag12, textValue15, workValue10)
      arg32 = RageUI
      arg32 = arg32.Separator
      dataTable5 = textValue16
      dataTable5 = dataTable5[2]
      flag12 = textValue16
      flag12 = flag12[3]
      if dataTable5 ~= flag12 then
        dataTable5 = "Payout: \194\163"
        flag12 = arg12
        textValue15 = "-\194\163"
        workValue10 = arg22
        dataTable5 = dataTable5 .. flag12 .. textValue15 .. workValue10
        if dataTable5 then
          goto flow_label_92
        end
      end
      dataTable5 = "Payout: \194\163"
      flag12 = arg12
      dataTable5 = dataTable5 .. flag12
      ::flow_label_92::
      arg32(dataTable5)
    end
  end
  arg1(arg2, arg3, arg4, textValue13, iterator)
end
rageUiCall(cmgCall4, textValue2, workValue4, workValue5)
rageUiCall = AddEventHandler
cmgCall4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue2(arg1, arg2)
  local arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5, textValue3, dataTable2, textValue4, numberValue5, workValue6, workValue7, workValue8, dataTable3
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg3()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_PICKUP~ to open the Trucking menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg4()
      local arg12, arg22
      arg12 = workValue
      arg12()
    end
    function textValue13(arg12)
      local arg22, arg32, dataTable5
      arg22 = IsControlJustReleased
      arg32 = 1
      dataTable5 = 38
      arg22 = arg22(arg32, dataTable5)
      if arg22 then
        arg22 = CMG
        arg22 = arg22.hasClientGroup
        arg32 = "Trucking"
        arg22 = arg22(arg32)
        if arg22 then
          arg22 = cmgCall3
          arg32 = arg12.job
          arg22(arg32)
        else
          arg22 = tCMG
          arg22 = arg22.notify
          arg32 = "~r~You aren't clocked on as a Trucking, head to cityhall to sign up."
          -- Beginner: Show a notification to the player.
          arg22(arg32)
        end
      end
    end
    iterator = pairs
    numberValue13 = cmgCall.jobs
    iterator, numberValue13, workValue11, numberValue14 = iterator(numberValue13)
    for numberValue15, numberValue in iterator, numberValue13, workValue11, numberValue14 do
      numberValue2 = numberValue.config
      flag3 = numberValue2[1]
      cmgCall2 = type
      flag4 = flag3
      cmgCall2 = cmgCall2(flag4)
      if "vector3" == cmgCall2 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.createArea
        flag4 = "trucking_"
        flag5 = numberValue15
        flag4 = flag4 .. flag5
        flag5 = numberValue2[1]
        flag6 = 1.15
        numberValue4 = 6
        flag7 = arg3
        cmgCall5 = arg4
        textValue3 = textValue13
        dataTable2 = {}
        dataTable2.job = numberValue15
        -- Beginner: Create an interaction area around a world position.
        cmgCall2(flag4, flag5, flag6, numberValue4, flag7, cmgCall5, textValue3, dataTable2)
      else
        cmgCall2 = pairs
        flag4 = flag3
        cmgCall2, flag4, flag5, flag6 = cmgCall2(flag4)
        for numberValue4, flag7 in cmgCall2, flag4, flag5, flag6 do
          cmgCall5 = CMG
          cmgCall5 = cmgCall5.createArea
          textValue3 = "trucking_"
          dataTable2 = numberValue15
          textValue4 = "_"
          numberValue5 = numberValue4
          textValue3 = textValue3 .. dataTable2 .. textValue4 .. numberValue5
          dataTable2 = flag7
          textValue4 = 1.15
          numberValue5 = 6
          workValue6 = arg3
          workValue7 = arg4
          workValue8 = textValue13
          dataTable3 = {}
          dataTable3.job = numberValue15
          cmgCall5(textValue3, dataTable2, textValue4, numberValue5, workValue6, workValue7, workValue8, dataTable3)
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiCall(cmgCall4, textValue2)
function rageUiCall(arg1)
  local arg2, arg3, arg4, textValue13
  arg2 = math
  arg2 = arg2.randomseed
  arg3 = GetGameTimer
  arg3, arg4, textValue13 = arg3()
  arg2(arg3, arg4, textValue13)
  arg2 = math
  arg2 = arg2.random
  arg3 = 1
  arg4 = #arg1
  arg2 = arg2(arg3, arg4)
  arg3 = math
  arg3 = arg3.random
  arg4 = 1
  textValue13 = #arg1
  arg3 = arg3(arg4, textValue13)
  arg2 = arg3
  arg3 = math
  arg3 = arg3.random
  arg4 = 1
  textValue13 = #arg1
  arg3 = arg3(arg4, textValue13)
  arg2 = arg3
  return arg2
end
function cmgCall4()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6
  arg1 = dataTable
  arg2 = arg1[2]
  arg3 = AddBlipForCoord
  arg4 = arg2.x
  textValue13 = arg2.y
  iterator = arg2.z
  -- Beginner: result below is blipHandle.
  arg3 = arg3(arg4, textValue13, iterator)
  dataTable6.job = arg3
  arg3 = false
  flag2 = arg3
  arg3 = SetBlipSprite
  arg4 = dataTable6.job
  textValue13 = arg1.blip
  arg3(arg4, textValue13)
  arg3 = SetBlipRoute
  arg4 = dataTable6.job
  textValue13 = true
  arg3(arg4, textValue13)
  arg3 = NetworkGetNetworkIdFromEntity
  arg4 = GetVehiclePedIsIn
  textValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue13 = textValue13()
  iterator = false
  arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6 = arg4(textValue13, iterator)
  arg3 = arg3(arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6)
  arg4 = TriggerServerEvent
  textValue13 = "22348440e3"
  iterator = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "22348440e3".
  arg4(textValue13, iterator)
  arg4 = DeleteCheckpoint
  textValue13 = cmgCall10.trailer
  arg4(textValue13)
  arg4 = GetVehiclePedIsIn
  textValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue13 = textValue13()
  iterator = false
  -- Beginner: result below is currentVehicle.
  arg4 = arg4(textValue13, iterator)
  dataTable4.vehicle = arg4
  arg4 = CreateCheckpoint
  textValue13 = numberValue3
  iterator = arg2.x
  numberValue13 = arg2.y
  workValue11 = arg2.z
  workValue11 = workValue11 - 1.0
  numberValue14 = 0
  numberValue15 = 0
  numberValue = 0
  numberValue2 = 10.0
  flag3 = 0
  cmgCall2 = 255
  flag4 = 0
  flag5 = 127
  flag6 = 0
  -- Beginner: result below is checkpointHandle.
  arg4 = arg4(textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6)
  dataTable4.checkpoint = arg4
  arg4 = SetCheckpointCylinderHeight
  textValue13 = dataTable4.checkpoint
  iterator = 50.0
  numberValue13 = 100.0
  workValue11 = 25.0
  arg4(textValue13, iterator, numberValue13, workValue11)
end
function textValue2(arg1, arg2, arg3, arg4)
  local textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3
  textValue13 = CMG
  textValue13 = textValue13.requestEntitySpawn
  iterator = "truckjob_trailer"
  numberValue13 = arg1
  workValue11 = arg2
  textValue13(iterator, numberValue13, workValue11)
  textValue13 = CMG
  textValue13 = textValue13.spawnVehicle
  iterator = arg1
  numberValue13 = arg2.x
  workValue11 = arg2.y
  numberValue14 = arg2.z
  numberValue15 = arg3
  numberValue = false
  numberValue2 = true
  flag3 = true
  textValue13 = textValue13(iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3)
  iterator = TriggerServerEvent
  numberValue13 = "1e0bbaf6cd"
  workValue11 = arg1
  numberValue14 = "trucking_job"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e0bbaf6cd".
  iterator(numberValue13, workValue11, numberValue14)
  iterator = NetworkGetEntityIsNetworked
  numberValue13 = textValue13
  iterator = iterator(numberValue13)
  if iterator then
    iterator = NetworkGetNetworkIdFromEntity
    numberValue13 = textValue13
    iterator = iterator(numberValue13)
    if iterator > 0 then
      numberValue13 = TriggerServerEvent
      workValue11 = "e32e549079"
      numberValue14 = iterator
      numberValue13(workValue11, numberValue14)
    end
  end
  if nil ~= arg4 then
    iterator = 1
    numberValue13 = 9
    workValue11 = 1
    for numberValue14 = iterator, numberValue13, workValue11 do
      numberValue15 = SetVehicleExtra
      numberValue = textValue13
      numberValue2 = numberValue14
      flag3 = true
      numberValue15(numberValue, numberValue2, flag3)
    end
    iterator = SetVehicleExtra
    numberValue13 = textValue13
    workValue11 = arg4
    numberValue14 = false
    iterator(numberValue13, workValue11, numberValue14)
  end
  iterator = SetTrailerLegsLowered
  iterator()
  return textValue13
end
workValue4 = Citizen
workValue4 = workValue4.CreateThread
function workValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    if 0 ~= arg1 then
      arg2 = pairs
      arg3 = CMG
      arg3 = arg3.getAllVehicles
      arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue = arg3()
      arg2, arg3, arg4, textValue13 = arg2(arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue)
      for iterator, numberValue13 in arg2, arg3, arg4, textValue13 do
        workValue11 = DoesEntityExist
        numberValue14 = numberValue13
        workValue11 = workValue11(numberValue14)
        if workValue11 then
          workValue11 = Entity
          numberValue14 = numberValue13
          workValue11 = workValue11(numberValue14)
          workValue11 = workValue11.state
          workValue11 = workValue11.truckJob
          if workValue11 then
            workValue11 = SetEntityNoCollisionEntity
            numberValue14 = numberValue13
            numberValue15 = arg1
            numberValue = false
            workValue11(numberValue14, numberValue15, numberValue)
            workValue11 = SetEntityNoCollisionEntity
            numberValue14 = arg1
            numberValue15 = numberValue13
            numberValue = false
            workValue11(numberValue14, numberValue15, numberValue)
          end
        end
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 500
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue4(workValue5)
function workValue4(arg1, arg2, arg3)
  local arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5
  arg4 = tCMG
  arg4 = arg4.removeArea
  textValue13 = "trucking_spawn"
  arg4(textValue13)
  arg4 = rageUiCall3
  arg4 = #arg4
  arg4 = arg4 + 1
  textValue13 = rageUiCall3
  textValue13[arg4] = true
  function textValue13()
    local arg12, arg22, arg32, dataTable5
    arg22 = arg4
    arg12 = rageUiCall3
    arg12 = arg12[arg22]
    if arg12 then
      arg12 = textValue2
      arg22 = arg2
      arg32 = arg1
      dataTable5 = arg3
      arg12 = arg12(arg22, arg32, dataTable5)
      dataTable4.trailer = arg12
      arg22 = arg4
      arg12 = rageUiCall3
      arg12[arg22] = false
    end
  end
  function iterator()
    local arg12, arg22
  end
  function numberValue13()
    local arg12, arg22
  end
  workValue11 = CMG
  workValue11 = workValue11.createArea
  numberValue14 = "trucking_spawn"
  numberValue15 = arg1
  numberValue = 106
  numberValue2 = 6
  flag3 = textValue13
  cmgCall2 = iterator
  flag4 = numberValue13
  flag5 = {}
  -- Beginner: Create an interaction area around a world position.
  workValue11(numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5)
  return arg4
end
workValue5 = RegisterNetEvent
textValue5 = "3216f44327"
-- Beginner: this function handles network event "3216f44327".
function cmgCall6(arg1, arg2)
  local arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5
  dataTable = arg1
  arg1 = arg1[1]
  arg3 = rageUiCall
  arg4 = arg1.trailers
  arg3 = arg3(arg4)
  if not arg2 then
    arg4 = workValue2
    textValue13 = arg1.trailerSpawns
    textValue13 = textValue13.docks
    arg4 = arg4(textValue13)
    if arg4 then
      textValue13 = notify
      iterator = "~y~Notice: Government regulations have limited trucking to 150 MPH"
      -- Beginner: Show a notification to the player.
      textValue13(iterator)
      textValue13 = GetEntityModel
      iterator = CMG
      iterator = iterator.getPlayerPed
      iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5 = iterator()
      -- Beginner: result below is modelHash.
      textValue13 = textValue13(iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5)
      if 1885233650 == textValue13 then
        textValue13 = CMG
        textValue13 = textValue13.loadCustomisationPreset
        iterator = "TruckerMale"
        textValue13(iterator)
      else
        textValue13 = GetEntityModel
        iterator = CMG
        iterator = iterator.getPlayerPed
        iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5 = iterator()
        -- Beginner: result below is modelHash.
        textValue13 = textValue13(iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5)
        if -1667301416 == textValue13 then
          textValue13 = CMG
          textValue13 = textValue13.loadCustomisationPreset
          iterator = "TruckerFemale"
          textValue13(iterator)
        else
          textValue13 = CMG
          textValue13 = textValue13.loadCustomisationPreset
          iterator = "TruckerMale"
          textValue13(iterator)
        end
      end
      textValue13 = textValue2
      iterator = arg1.trailers
      iterator = iterator[arg3]
      iterator = iterator[1]
      numberValue13 = arg4
      workValue11 = arg1.trailerSpawns
      workValue11 = workValue11.docks
      numberValue14 = rageUiCall2
      workValue11 = workValue11[numberValue14]
      workValue11 = workValue11[1]
      numberValue14 = arg1.trailers
      numberValue14 = numberValue14[arg3]
      numberValue14 = numberValue14[2]
      textValue13 = textValue13(iterator, numberValue13, workValue11, numberValue14)
      dataTable4.trailer = textValue13
      textValue13 = GetEntityCoords
      iterator = dataTable4.trailer
      -- Beginner: result below is entityCoords.
      textValue13 = textValue13(iterator)
      iterator = AddBlipForCoord
      numberValue13 = textValue13.x
      workValue11 = textValue13.y
      numberValue14 = textValue13.z
      -- Beginner: result below is blipHandle.
      iterator = iterator(numberValue13, workValue11, numberValue14)
      dataTable6.trailer = iterator
      iterator = SetBlipSprite
      numberValue13 = dataTable6.trailer
      workValue11 = 479
      iterator(numberValue13, workValue11)
      iterator = SetBlipRoute
      numberValue13 = dataTable6.trailer
      workValue11 = true
      iterator(numberValue13, workValue11)
      iterator = SetBlipAsShortRange
      numberValue13 = dataTable6.trailer
      workValue11 = false
      iterator(numberValue13, workValue11)
      iterator = CreateCheckpoint
      numberValue13 = numberValue3
      workValue11 = arg4.x
      numberValue14 = arg4.y
      numberValue15 = arg4.z
      numberValue15 = numberValue15 - 1.0
      numberValue = 0
      numberValue2 = 0
      flag3 = 0
      cmgCall2 = 10.0
      flag4 = 0
      flag5 = 255
      flag6 = 0
      numberValue4 = 127
      flag7 = 0
      -- Beginner: result below is checkpointHandle.
      iterator = iterator(numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7)
      cmgCall10.trailer = iterator
      iterator = SetCheckpointCylinderHeight
      numberValue13 = cmgCall10.trailer
      workValue11 = 50.0
      numberValue14 = 100.0
      numberValue15 = 25.0
      iterator(numberValue13, workValue11, numberValue14, numberValue15)
      iterator = Citizen
      iterator = iterator.CreateThread
      function numberValue13()
        local arg12, arg22, arg32
        while true do
          arg12 = GetVehiclePedIsIn
          arg22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg22 = arg22()
          arg32 = false
          -- Beginner: result below is currentVehicle.
          arg12 = arg12(arg22, arg32)
          if 0 ~= arg12 then
            break
          end
          arg12 = flag
          if not arg12 then
            break
          end
          arg12 = drawNativeText
          arg22 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
          -- Beginner: Draw GTA-style text on screen.
          arg12(arg22)
          arg12 = Wait
          arg22 = 0
          arg12(arg22)
        end
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      iterator(numberValue13)
      iterator = CreateScaleform
      numberValue13 = 2
      workValue11 = "~y~Job Started!"
      numberValue14 = "Pick up your trailer outside!"
      iterator(numberValue13, workValue11, numberValue14)
      iterator = true
      flag = iterator
    else
      textValue13 = TriggerServerEvent
      iterator = "6f29153e97"
      numberValue13 = "Job Cancelled!"
      workValue11 = "No space for trailers outside!"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
      textValue13(iterator, numberValue13, workValue11)
    end
  else
    arg4 = rageUiCall
    textValue13 = arg1.trailerSpawns
    textValue13 = textValue13.pickup
    arg4 = arg4(textValue13)
    textValue13 = arg1.trailerSpawns
    textValue13 = textValue13.pickup
    textValue13 = textValue13[arg4]
    textValue13 = textValue13[2]
    iterator = workValue4
    numberValue13 = arg1.trailerSpawns
    numberValue13 = numberValue13.pickup
    numberValue13 = numberValue13[arg4]
    numberValue13 = numberValue13[2]
    workValue11 = arg1.trailers
    workValue11 = workValue11[arg3]
    workValue11 = workValue11[1]
    numberValue14 = arg1.trailerSpawns
    numberValue14 = numberValue14.pickup
    numberValue14 = numberValue14[arg4]
    numberValue14 = numberValue14[1]
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator(numberValue13, workValue11, numberValue14)
    iterator = arg1.trailerSpawns
    iterator = iterator.pickup
    iterator = iterator[arg4]
    iterator = iterator[2]
    numberValue13 = AddBlipForCoord
    workValue11 = iterator.x
    numberValue14 = iterator.y
    numberValue15 = iterator.z
    -- Beginner: result below is blipHandle.
    numberValue13 = numberValue13(workValue11, numberValue14, numberValue15)
    dataTable6.trailer = numberValue13
    numberValue13 = SetBlipSprite
    workValue11 = dataTable6.trailer
    numberValue14 = 479
    numberValue13(workValue11, numberValue14)
    numberValue13 = SetBlipRoute
    workValue11 = dataTable6.trailer
    numberValue14 = true
    numberValue13(workValue11, numberValue14)
    numberValue13 = SetBlipAsShortRange
    workValue11 = dataTable6.trailer
    numberValue14 = false
    numberValue13(workValue11, numberValue14)
    numberValue13 = CreateCheckpoint
    workValue11 = numberValue3
    numberValue14 = textValue13.x
    numberValue15 = textValue13.y
    numberValue = textValue13.z
    numberValue = numberValue - 1.0
    numberValue2 = 0
    flag3 = 0
    cmgCall2 = 0
    flag4 = 10.0
    flag5 = 0
    flag6 = 255
    numberValue4 = 0
    flag7 = 127
    cmgCall5 = 0
    -- Beginner: result below is checkpointHandle.
    numberValue13 = numberValue13(workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5)
    cmgCall10.trailer = numberValue13
    numberValue13 = SetCheckpointCylinderHeight
    workValue11 = cmgCall10.trailer
    numberValue14 = 50.0
    numberValue15 = 100.0
    numberValue = 25.0
    numberValue13(workValue11, numberValue14, numberValue15, numberValue)
    numberValue13 = DeleteCheckpoint
    workValue11 = dataTable4.checkpoint
    numberValue13(workValue11)
    numberValue13 = false
    flag14 = numberValue13
    numberValue13 = Citizen
    numberValue13 = numberValue13.CreateThread
    function workValue11()
      local arg12, arg22, arg32
      while true do
        arg12 = GetVehiclePedIsIn
        arg22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        arg32 = false
        -- Beginner: result below is currentVehicle.
        arg12 = arg12(arg22, arg32)
        if 0 ~= arg12 then
          break
        end
        arg12 = flag
        if not arg12 then
          break
        end
        arg12 = drawNativeText
        arg22 = "~g~Rent or buy a truck outside then pickup your trailer to complete the job."
        -- Beginner: Draw GTA-style text on screen.
        arg12(arg22)
        arg12 = Wait
        arg22 = 0
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    numberValue13(workValue11)
    numberValue13 = CreateScaleform
    workValue11 = 2
    numberValue14 = "~y~Job Started!"
    numberValue15 = "Pick up your trailer at the blip on the map!"
    numberValue13(workValue11, numberValue14, numberValue15)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3216f44327".
workValue5(textValue5, cmgCall6)
workValue5 = RegisterNetEvent
textValue5 = "1374215996"
-- Beginner: this function handles network event "1374215996".
function cmgCall6()
  local arg1, arg2, arg3, arg4
  arg1 = TriggerServerEvent
  arg2 = "881ad8757a"
  arg3 = textValue
  arg4 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "881ad8757a".
  arg1(arg2, arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1374215996".
workValue5(textValue5, cmgCall6)
workValue5 = Citizen
workValue5 = workValue5.CreateThread
function textValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11
  while true do
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = IsPedInAnyVehicle
    arg3 = arg1
    arg4 = false
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = flag14
      if not arg2 then
        arg2 = GetVehiclePedIsIn
        arg3 = arg1
        arg4 = false
        -- Beginner: result below is currentVehicle.
        arg2 = arg2(arg3, arg4)
        arg3 = GetVehicleTrailerVehicle
        arg4 = arg2
        arg3, arg4 = arg3(arg4)
        textValue13 = IsVehicleAttachedToTrailer
        iterator = arg2
        textValue13 = textValue13(iterator)
        if textValue13 then
          textValue13 = dataTable4.trailer
          if arg4 == textValue13 then
            textValue13 = true
            flag14 = textValue13
            textValue13 = true
            rageUiCall4 = textValue13
            textValue13 = CreateScaleform
            iterator = 2
            numberValue13 = "~g~Trailer Attached!"
            workValue11 = "Continue to your destination"
            textValue13(iterator, numberValue13, workValue11)
            textValue13 = SetBlipRoute
            iterator = dataTable6.trailer
            numberValue13 = false
            textValue13(iterator, numberValue13)
            textValue13 = RemoveBlip
            iterator = dataTable6.trailer
            textValue13(iterator)
            textValue13 = cmgCall4
            textValue13()
          end
        end
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 150
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue5(textValue5)
function workValue5(arg1, arg2, arg3)
  local arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15
  arg4 = true
  textValue13 = Scaleform
  iterator = "MIDSIZED_MESSAGE"
  textValue13 = textValue13(iterator)
  iterator = textValue13.RunFunction
  numberValue13 = "SHOW_SHARD_MIDSIZED_MESSAGE"
  workValue11 = {}
  numberValue14 = arg2
  numberValue15 = arg3
  workValue11[1] = numberValue14
  workValue11[2] = numberValue15
  iterator(numberValue13, workValue11)
  iterator = Citizen
  iterator = iterator.CreateThread
  function numberValue13()
    local arg12, arg22
    while true do
      arg12 = arg4
      if not arg12 then
        break
      end
      arg12 = textValue13.Render2D
      arg12()
      arg12 = Citizen
      arg12 = arg12.Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  iterator(numberValue13)
  iterator = SetTimeout
  numberValue13 = arg1 * 1000
  function workValue11()
    local arg12, arg22
    arg12 = false
    arg4 = arg12
  end
  iterator(numberValue13, workValue11)
  return textValue13
end
CreateScaleform = workValue5
workValue5 = Citizen
workValue5 = workValue5.CreateThread
function textValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13
  while true do
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = IsPedInAnyVehicle
    arg3 = arg1
    arg4 = false
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = GetEntityCoords
      arg3 = dataTable4.trailer
      -- Beginner: result below is entityCoords.
      arg2 = arg2(arg3)
      arg3 = GetVehiclePedIsIn
      arg4 = arg1
      textValue13 = false
      -- Beginner: result below is currentVehicle.
      arg3 = arg3(arg4, textValue13)
      arg4 = GetEntityCoords
      textValue13 = arg3
      -- Beginner: result below is entityCoords.
      arg4 = arg4(textValue13)
      arg4 = arg2 - arg4
      arg4 = #arg4
      textValue13 = 9.75
      if arg4 <= textValue13 then
        arg4 = IsControlPressed
        textValue13 = 0
        iterator = 74
        arg4 = arg4(textValue13, iterator)
        if not arg4 then
          arg4 = IsVehicleAttachedToTrailer
          textValue13 = arg3
          arg4 = arg4(textValue13)
          if not arg4 then
            arg4 = rageUiCall4
            if not arg4 then
              arg4 = AttachVehicleToTrailer
              textValue13 = arg3
              iterator = dataTable4.trailer
              numberValue13 = 1.0
              arg4(textValue13, iterator, numberValue13)
            end
          end
        end
      end
    end
    arg2 = Wait
    arg3 = 1000
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue5(textValue5)
workValue5 = Citizen
workValue5 = workValue5.CreateThread
function textValue5()
  local arg1, arg2, arg3, arg4
  while true do
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = IsPedInAnyVehicle
    arg3 = arg1
    arg4 = false
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = GetVehiclePedIsIn
      arg3 = arg1
      arg4 = false
      -- Beginner: result below is currentVehicle.
      arg2 = arg2(arg3, arg4)
      arg3 = IsVehicleAttachedToTrailer
      arg4 = arg2
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = rageUiCall4
        if arg3 then
          arg3 = false
          rageUiCall4 = arg3
        end
      end
    end
    arg2 = Wait
    arg3 = 1500
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue5(textValue5)
workValue5 = tCMG
function textValue5(arg1)
  local arg2, arg3, arg4, textValue13, iterator, numberValue13
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  arg4 = "isTrailerAttached"
  arg2 = arg2(arg3, arg4)
  arg3 = GetVehicleTrailerVehicle
  arg4 = arg2
  arg3, arg4 = arg3(arg4)
  textValue13 = 0
  if arg3 and 0 ~= arg4 then
    iterator = NetworkGetNetworkIdFromEntity
    numberValue13 = arg4
    iterator = iterator(numberValue13)
    textValue13 = iterator
  end
  iterator = arg3
  numberValue13 = textValue13
  return iterator, numberValue13
end
workValue5.isTrailerAttached = textValue5
workValue5 = Citizen
workValue5 = workValue5.CreateThread
function textValue5()
  local arg1, arg2, arg3
  while true do
    arg1 = flag
    if arg1 then
      arg1 = dataTable4.vehicle
      if arg1 then
        arg1 = GetVehicleEngineHealth
        arg2 = dataTable4.vehicle
        arg1 = arg1(arg2)
        if not (arg1 < 0.0) then
          arg1 = DoesEntityExist
          arg2 = dataTable4.vehicle
          arg1 = arg1(arg2)
          if arg1 then
            goto flow_label_21
          end
        end
        arg1 = TriggerServerEvent
        arg2 = "6f29153e97"
        arg3 = "Truck was destroyed!"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
        arg1(arg2, arg3)
      end
      ::flow_label_21::
      arg1 = globalInPrison
      if arg1 then
        arg1 = TriggerServerEvent
        arg2 = "6f29153e97"
        arg3 = "You were sent to jail!"
        arg1(arg2, arg3)
      end
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue5(textValue5)
workValue5 = RegisterNetEvent
textValue5 = "0db0e450dd"
-- Beginner: this function handles network event "0db0e450dd".
function cmgCall6(arg1, arg2)
  local arg3, arg4, textValue13, iterator, numberValue13
  arg3 = CMG
  arg3 = arg3.hasClientGroup
  arg4 = "Trucking"
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = DeleteEntity
    arg4 = dataTable4.trailer
    -- Beginner: Delete a GTA entity.
    arg3(arg4)
    arg3 = DeleteCheckpoint
    arg4 = cmgCall10.trailer
    arg3(arg4)
    arg3 = false
    flag = arg3
    arg3 = {}
    dataTable = arg3
    arg3 = true
    flag2 = arg3
    arg3 = false
    rageUiCall4 = arg3
    arg3 = false
    flag14 = arg3
    arg3 = 1
    arg4 = rageUiCall3
    arg4 = #arg4
    textValue13 = 1
    for iterator = arg3, arg4, textValue13 do
      numberValue13 = rageUiCall3
      numberValue13[iterator] = false
    end
    arg3 = CreateScaleform
    arg4 = 2
    textValue13 = "~r~"
    iterator = arg1
    textValue13 = textValue13 .. iterator
    if not textValue13 then
      textValue13 = "JOB ENDED!"
    end
    iterator = arg2
    arg3(arg4, textValue13, iterator)
    arg3 = SetBlipRoute
    arg4 = dataTable6.job
    textValue13 = false
    arg3(arg4, textValue13)
    arg3 = RemoveBlip
    arg4 = dataTable6.job
    arg3(arg4)
    arg3 = RemoveBlip
    arg4 = dataTable6.trailer
    arg3(arg4)
    dataTable4.vehicle = nil
    dataTable4.trailer = nil
    arg3 = dataTable4.checkpoint
    if arg3 then
      arg3 = DeleteCheckpoint
      arg4 = dataTable4.checkpoint
      arg3(arg4)
      dataTable4.checkpoint = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0db0e450dd".
workValue5(textValue5, cmgCall6)
workValue5 = RegisterNetEvent
textValue5 = "052449cb64"
-- Beginner: this function handles network event "052449cb64".
function cmgCall6(arg1)
  local arg2
  flag2 = arg1
end
workValue5(textValue5, cmgCall6)
workValue5 = Citizen
workValue5 = workValue5.CreateThread
-- Beginner: this function handles network event "052449cb64".
function textValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator
  while true do
    arg1 = flag2
    if arg1 then
      break
    end
    arg1 = IsEntityAVehicle
    arg2 = dataTable4.trailer
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = GetEntityCoords
      arg3 = arg1
      -- Beginner: result below is entityCoords.
      arg2 = arg2(arg3)
      arg3 = GetEntityCoords
      arg4 = dataTable4.trailer
      -- Beginner: result below is entityCoords.
      arg3 = arg3(arg4)
      arg4 = arg2 - arg3
      arg4 = #arg4
      textValue13 = 450.0
      if arg4 > textValue13 then
        arg4 = TriggerServerEvent
        textValue13 = "6f29153e97"
        iterator = "You left the trailer behind"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6f29153e97".
        arg4(textValue13, iterator)
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue5(textValue5)
workValue5 = RegisterNetEvent
textValue5 = "6d852a57fc"
-- Beginner: this function handles network event "6d852a57fc".
function cmgCall6(arg1)
  local arg2
  rageUiCall2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d852a57fc".
workValue5(textValue5, cmgCall6)
workValue5 = {}
textValue5 = "trailers"
cmgCall6 = "trflat"
cmgCall7 = "heli1"
textValue6 = "tr4"
workValue9 = "tr3"
textValue7 = "docktrailer"
textValue8 = "bvttanker"
cmgCall8 = "tanker"
cmgCall9 = "tanker2"
textValue9 = "trailers3"
numberValue6 = "trailers2"
numberValue7 = "ArmyTrailer2"
numberValue8 = "TrailerLogs"
numberValue9 = "militaire1"
textValue10 = "ArmyTanker"
flag8 = "docktrailer"
flag9 = "tr3"
textValue11 = "tr4"
textValue12 = "bvttanker"
workValue5[1] = textValue5
workValue5[2] = cmgCall6
workValue5[3] = cmgCall7
workValue5[4] = textValue6
workValue5[5] = workValue9
workValue5[6] = textValue7
workValue5[7] = textValue8
workValue5[8] = cmgCall8
workValue5[9] = cmgCall9
workValue5[10] = textValue9
workValue5[11] = numberValue6
workValue5[12] = numberValue7
workValue5[13] = numberValue8
workValue5[14] = numberValue9
workValue5[15] = textValue10
workValue5[16] = flag8
workValue5[17] = flag9
workValue5[18] = textValue11
workValue5[19] = textValue12
function textValue5()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4
  arg1 = 0
  arg2 = {}
  arg3 = 1
  arg4 = 19
  textValue13 = 1
  for iterator = arg3, arg4, textValue13 do
    numberValue13 = CMG
    numberValue13 = numberValue13.spawnVehicle
    workValue11 = workValue5
    workValue11 = workValue11[iterator]
    numberValue14 = 896.7 + arg1
    numberValue15 = -3153.494
    numberValue = 5.892334
    numberValue2 = 177.1
    flag3 = false
    cmgCall2 = false
    flag4 = false
    numberValue13 = numberValue13(workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4)
    workValue11 = FreezeEntityPosition
    numberValue14 = numberValue13
    numberValue15 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    workValue11(numberValue14, numberValue15)
    workValue11 = table
    workValue11 = workValue11.add
    numberValue14 = arg2
    numberValue15 = numberValue13
    workValue11(numberValue14, numberValue15)
    arg1 = arg1 + 4
  end
  return arg2
end
function cmgCall6()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4
  arg1 = TriggerServerEvent
  arg2 = "54143cc8e2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54143cc8e2".
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.hideAllDisplays
  arg2 = "trucking_intro"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = SetEntityCoords
  arg4 = arg1
  textValue13 = 856.022
  iterator = -3188.11
  numberValue13 = 4.05127
  workValue11 = false
  numberValue14 = false
  numberValue15 = false
  numberValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue)
  arg3 = SetFocusPosAndVel
  arg4 = 862.5825
  textValue13 = -3195.493
  iterator = 6.002151
  numberValue13 = 0.0
  workValue11 = 0.0
  numberValue14 = 0.0
  arg3(arg4, textValue13, iterator, numberValue13, workValue11, numberValue14)
  arg3 = CreateCameraWithParams
  arg4 = "DEFAULT_SCRIPTED_CAMERA"
  textValue13 = 866.1363
  iterator = -3191.314
  numberValue13 = 7.14502
  workValue11 = 0.0
  numberValue14 = 0.0
  numberValue15 = 0.0
  numberValue = 65.0
  numberValue2 = false
  flag3 = 2
  arg3 = arg3(arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3)
  arg4 = PointCamAtCoord
  textValue13 = arg3
  iterator = 862.5825
  numberValue13 = -3195.493
  workValue11 = 6.002151
  arg4(textValue13, iterator, numberValue13, workValue11)
  arg4 = SetCamActive
  textValue13 = arg3
  iterator = true
  arg4(textValue13, iterator)
  arg4 = RenderScriptCams
  textValue13 = true
  iterator = true
  numberValue13 = 0
  workValue11 = true
  numberValue14 = false
  arg4(textValue13, iterator, numberValue13, workValue11, numberValue14)
  arg4 = CreateCameraWithParams
  textValue13 = "DEFAULT_SCRIPTED_CAMERA"
  iterator = 862.5231
  numberValue13 = -3190.259
  workValue11 = 7.14502
  numberValue14 = 0.0
  numberValue15 = 0.0
  numberValue = 0.0
  numberValue2 = 65.0
  flag3 = false
  cmgCall2 = 2
  arg4 = arg4(textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2)
  textValue13 = PointCamAtCoord
  iterator = arg4
  numberValue13 = 862.5825
  workValue11 = -3195.493
  numberValue14 = 6.002151
  textValue13(iterator, numberValue13, workValue11, numberValue14)
  textValue13 = SetCamActiveWithInterp
  iterator = arg4
  numberValue13 = arg3
  workValue11 = 10000
  numberValue14 = 5
  numberValue15 = 5
  textValue13(iterator, numberValue13, workValue11, numberValue14, numberValue15)
  textValue13 = drawNativeNotification
  iterator = "This is where you will start your trucking job. You can also come here to end the shift."
  -- Beginner: Show a GTA-style notification/help prompt.
  textValue13(iterator)
  textValue13 = Wait
  iterator = 10000
  textValue13(iterator)
  textValue13 = vector3
  iterator = 901.9878
  numberValue13 = -3185.827
  workValue11 = 5.898679
  textValue13 = textValue13(iterator, numberValue13, workValue11)
  iterator = PointCamAtCoord
  numberValue13 = arg3
  workValue11 = textValue13.x
  numberValue14 = textValue13.y
  numberValue15 = textValue13.z
  iterator(numberValue13, workValue11, numberValue14, numberValue15)
  iterator = vector3
  numberValue13 = 901.9878
  workValue11 = -3185.827
  numberValue14 = 5.898679
  iterator = iterator(numberValue13, workValue11, numberValue14)
  textValue13 = iterator
  iterator = PointCamAtCoord
  numberValue13 = arg4
  workValue11 = textValue13.x
  numberValue14 = textValue13.y
  numberValue15 = textValue13.z
  iterator(numberValue13, workValue11, numberValue14, numberValue15)
  iterator = vector3
  numberValue13 = 897.033
  workValue11 = -3189.376
  numberValue14 = 5.892334
  iterator = iterator(numberValue13, workValue11, numberValue14)
  textValue13 = iterator
  iterator = SetCamCoord
  numberValue13 = arg3
  workValue11 = textValue13.x
  numberValue14 = textValue13.y
  numberValue15 = textValue13.z
  iterator(numberValue13, workValue11, numberValue14, numberValue15)
  iterator = vector3
  numberValue13 = 904.6154
  workValue11 = -3189.428
  numberValue14 = 5.892334
  iterator = iterator(numberValue13, workValue11, numberValue14)
  textValue13 = iterator
  iterator = SetCamCoord
  numberValue13 = arg4
  workValue11 = textValue13.x
  numberValue14 = textValue13.y
  numberValue15 = textValue13.z
  iterator(numberValue13, workValue11, numberValue14, numberValue15)
  iterator = SetCamActiveWithInterp
  numberValue13 = arg4
  workValue11 = arg3
  numberValue14 = 10000
  numberValue15 = 5
  numberValue = 5
  iterator(numberValue13, workValue11, numberValue14, numberValue15, numberValue)
  iterator = drawNativeNotification
  numberValue13 = "Come here to rent or buy yourself a brand new truck to complete the trucking job with."
  -- Beginner: Show a GTA-style notification/help prompt.
  iterator(numberValue13)
  iterator = Wait
  numberValue13 = 10000
  iterator(numberValue13)
  iterator = textValue5
  iterator = iterator()
  numberValue13 = vector3
  workValue11 = 934.8527
  numberValue14 = -3154.536
  numberValue15 = 5.892334
  numberValue13 = numberValue13(workValue11, numberValue14, numberValue15)
  textValue13 = numberValue13
  numberValue13 = PointCamAtCoord
  workValue11 = arg3
  numberValue14 = textValue13.x
  numberValue15 = textValue13.y
  numberValue = textValue13.z
  numberValue13(workValue11, numberValue14, numberValue15, numberValue)
  numberValue13 = vector3
  workValue11 = 934.8527
  numberValue14 = -3154.536
  numberValue15 = 5.892334
  numberValue13 = numberValue13(workValue11, numberValue14, numberValue15)
  textValue13 = numberValue13
  numberValue13 = PointCamAtCoord
  workValue11 = arg4
  numberValue14 = textValue13.x
  numberValue15 = textValue13.y
  numberValue = textValue13.z
  numberValue13(workValue11, numberValue14, numberValue15, numberValue)
  numberValue13 = vector3
  workValue11 = 886.589
  numberValue14 = -3165.547
  numberValue15 = 9.892334
  numberValue13 = numberValue13(workValue11, numberValue14, numberValue15)
  textValue13 = numberValue13
  numberValue13 = SetCamCoord
  workValue11 = arg3
  numberValue14 = textValue13.x
  numberValue15 = textValue13.y
  numberValue = textValue13.z
  numberValue13(workValue11, numberValue14, numberValue15, numberValue)
  numberValue13 = vector3
  workValue11 = 975.2308
  numberValue14 = -3166.602
  numberValue15 = 9.892334
  numberValue13 = numberValue13(workValue11, numberValue14, numberValue15)
  textValue13 = numberValue13
  numberValue13 = SetCamCoord
  workValue11 = arg4
  numberValue14 = textValue13.x
  numberValue15 = textValue13.y
  numberValue = textValue13.z
  numberValue13(workValue11, numberValue14, numberValue15, numberValue)
  numberValue13 = SetCamActiveWithInterp
  workValue11 = arg4
  numberValue14 = arg3
  numberValue15 = 25000
  numberValue = 5
  numberValue2 = 5
  numberValue13(workValue11, numberValue14, numberValue15, numberValue, numberValue2)
  numberValue13 = drawNativeNotification
  workValue11 = "You will be driving a wide selection of trailers around the city of CMG!"
  -- Beginner: Show a GTA-style notification/help prompt.
  numberValue13(workValue11)
  numberValue13 = Wait
  workValue11 = 25000
  numberValue13(workValue11)
  numberValue13 = 1
  workValue11 = #iterator
  numberValue14 = 1
  for numberValue15 = numberValue13, workValue11, numberValue14 do
    numberValue = DeleteEntity
    numberValue2 = iterator[numberValue15]
    -- Beginner: Delete a GTA entity.
    numberValue(numberValue2)
  end
  numberValue13 = DestroyCam
  workValue11 = arg3
  numberValue14 = false
  numberValue13(workValue11, numberValue14)
  numberValue13 = DestroyCam
  workValue11 = arg4
  numberValue14 = false
  numberValue13(workValue11, numberValue14)
  numberValue13 = RenderScriptCams
  workValue11 = false
  numberValue14 = true
  numberValue15 = 3000
  numberValue = true
  numberValue2 = false
  numberValue13(workValue11, numberValue14, numberValue15, numberValue, numberValue2)
  numberValue13 = ClearFocus
  numberValue13()
  numberValue13 = FreezeEntityPosition
  workValue11 = arg1
  numberValue14 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue13(workValue11, numberValue14)
  numberValue13 = TriggerServerEvent
  workValue11 = "54143cc8e2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "54143cc8e2".
  numberValue13(workValue11)
  numberValue13 = SetEntityCoords
  workValue11 = arg1
  numberValue14 = arg2.x
  numberValue15 = arg2.y
  numberValue = arg2.z
  numberValue2 = false
  flag3 = false
  cmgCall2 = false
  flag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  numberValue13(workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4)
  numberValue13 = CMG
  numberValue13 = numberValue13.showAllDisplays
  workValue11 = "trucking_intro"
  numberValue13(workValue11)
end
workValue3 = cmgCall6
cmgCall6 = RegisterCommand
cmgCall7 = "setdonecutscene"
-- Beginner: this function is the command handler for "setdonecutscene".
function textValue6(arg1, arg2)
  local arg3, arg4, textValue13, iterator, numberValue13
  arg3 = CMG
  arg3 = arg3.getClientUserId
  -- Beginner: result below is userId.
  arg3 = arg3()
  if arg3 then
    arg4 = CMG
    arg4 = arg4.isDeveloper
    textValue13 = arg3
    arg4 = arg4(textValue13)
    if arg4 then
      arg4 = SetResourceKvpInt
      textValue13 = "cmg_trucking_done_cutscene"
      iterator = tonumber
      numberValue13 = arg2[1]
      iterator = iterator(numberValue13)
      if not iterator then
        iterator = 0
      end
      arg4(textValue13, iterator)
      arg4 = print
      textValue13 = "set cmg_trucking_done_cutscene to "
      iterator = arg2[1]
      textValue13 = textValue13 .. iterator
      arg4(textValue13)
    end
  end
end
workValue9 = false
-- Beginner: Register a chat/console command. Event/command: "setdonecutscene".
cmgCall6(cmgCall7, textValue6, workValue9)
cmgCall6 = vector3
cmgCall7 = 949.37835693359
textValue6 = -3185.8244628906
workValue9 = 5.901008605957
cmgCall6 = cmgCall6(cmgCall7, textValue6, workValue9)
cmgCall7 = vector3
textValue6 = 949.20098876953
workValue9 = -3154.0915527344
textValue7 = 5.9010066986084
cmgCall7 = cmgCall7(textValue6, workValue9, textValue7)
textValue6 = {}
function workValue9()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = 25.0
  arg3 = 0
  arg4 = pairs
  textValue13 = CMG
  textValue13 = textValue13.getAllVehicles
  textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2 = textValue13()
  arg4, textValue13, iterator, numberValue13 = arg4(textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2)
  for workValue11, numberValue14 in arg4, textValue13, iterator, numberValue13 do
    numberValue15 = GetVehicleType
    numberValue = numberValue14
    numberValue15 = numberValue15(numberValue)
    if "trailer" == numberValue15 then
      numberValue15 = GetEntityCoords
      numberValue = numberValue14
      numberValue2 = true
      -- Beginner: result below is entityCoords.
      numberValue15 = numberValue15(numberValue, numberValue2)
      numberValue15 = arg1 - numberValue15
      numberValue15 = #numberValue15
      if arg2 > numberValue15 then
        arg2 = numberValue15
        arg3 = numberValue14
      end
    end
  end
  if 0 == arg3 then
    arg4 = notify
    textValue13 = "~r~No nearby trailer found."
    -- Beginner: Show a notification to the player.
    arg4(textValue13)
    return
  end
  arg4 = AttachVehicleToTrailer
  textValue13 = CMG
  textValue13 = textValue13.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  textValue13 = textValue13()
  iterator = arg3
  numberValue13 = 1.0
  arg4(textValue13, iterator, numberValue13)
  arg4 = notify
  textValue13 = "~g~Attached closest trailer."
  -- Beginner: Show a notification to the player.
  arg4(textValue13)
end
function textValue7()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11, numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5, flag6, numberValue4, flag7, cmgCall5, textValue3
  arg1 = 0
  arg2 = pairs
  arg3 = cmgCall.trucks
  arg2, arg3, arg4, textValue13 = arg2(arg3)
  for iterator, numberValue13 in arg2, arg3, arg4, textValue13 do
    workValue11 = numberValue13.custom
    if not workValue11 then
      workValue11 = CMG
      workValue11 = workValue11.spawnVehicle
      numberValue14 = iterator
      numberValue15 = cmgCall6.x
      numberValue = arg1 * -4.1
      numberValue15 = numberValue15 + numberValue
      numberValue = cmgCall6.y
      numberValue2 = cmgCall6.z
      flag3 = 180.0
      cmgCall2 = false
      flag4 = false
      flag5 = false
      workValue11 = workValue11(numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5)
      numberValue14 = table
      numberValue14 = numberValue14.insert
      numberValue15 = textValue6
      numberValue = workValue11
      numberValue14(numberValue15, numberValue)
      arg1 = arg1 + 1
    end
  end
  arg2 = {}
  arg3 = pairs
  arg4 = cmgCall.jobs
  arg3, arg4, textValue13, iterator = arg3(arg4)
  for numberValue13, workValue11 in arg3, arg4, textValue13, iterator do
    numberValue14 = pairs
    numberValue15 = workValue11
    numberValue14, numberValue15, numberValue, numberValue2 = numberValue14(numberValue15)
    for flag3, cmgCall2 in numberValue14, numberValue15, numberValue, numberValue2 do
      flag4 = type
      flag5 = flag3
      flag4 = flag4(flag5)
      if "number" == flag4 then
        flag4 = pairs
        flag5 = cmgCall2.trailers
        flag4, flag5, flag6, numberValue4 = flag4(flag5)
        for flag7, cmgCall5 in flag4, flag5, flag6, numberValue4 do
          textValue3 = cmgCall5[1]
          arg2[textValue3] = true
        end
      end
    end
  end
  arg1 = 0
  arg3 = pairs
  arg4 = arg2
  arg3, arg4, textValue13, iterator = arg3(arg4)
  for numberValue13 in arg3, arg4, textValue13, iterator do
    workValue11 = CMG
    workValue11 = workValue11.spawnVehicle
    numberValue14 = numberValue13
    numberValue15 = cmgCall7.x
    numberValue = arg1 * -4.1
    numberValue15 = numberValue15 + numberValue
    numberValue = cmgCall7.y
    numberValue2 = cmgCall7.z
    flag3 = 180.0
    cmgCall2 = false
    flag4 = false
    flag5 = false
    workValue11 = workValue11(numberValue14, numberValue15, numberValue, numberValue2, flag3, cmgCall2, flag4, flag5)
    numberValue14 = table
    numberValue14 = numberValue14.insert
    numberValue15 = textValue6
    numberValue = workValue11
    numberValue14(numberValue15, numberValue)
    arg1 = arg1 + 1
  end
end
function textValue8()
  local arg1, arg2, arg3, arg4, textValue13, iterator, numberValue13, workValue11
  arg1 = pairs
  arg2 = textValue6
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for textValue13, iterator in arg1, arg2, arg3, arg4 do
    numberValue13 = DeleteEntity
    workValue11 = iterator
    -- Beginner: Delete a GTA entity.
    numberValue13(workValue11)
  end
  arg1 = table
  arg1 = arg1.clear
  arg2 = textValue6
  arg1(arg2)
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.registerDevMenuItems
cmgCall9 = "Trucking"
function textValue9()
  local arg1, arg2, arg3, arg4, textValue13
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Attach Closest Trailer"
  arg3 = ""
  arg4 = true
  function textValue13(arg12, arg22, arg32)
    local dataTable5
    if arg32 then
      dataTable5 = workValue9
      dataTable5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, textValue13)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spawn All Trucks & Trailers"
  arg3 = ""
  arg4 = true
  function textValue13(arg12, arg22, arg32)
    local dataTable5
    if arg32 then
      dataTable5 = textValue7
      dataTable5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, textValue13)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Delete All Trucks & Trailers"
  arg3 = ""
  arg4 = true
  function textValue13(arg12, arg22, arg32)
    local dataTable5
    if arg32 then
      dataTable5 = textValue8
      dataTable5()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, textValue13)
end
cmgCall8(cmgCall9, textValue9)