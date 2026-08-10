--[[
    Beginner Guide: cl_policedog.lua
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
    BEGINNER GUIDE — Policedog
    ==========================

    File: cmg/prod/client/police/cl_policedog.lua
    Purpose: This file contains police gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Commands/command-like entries found:
      * /k9
      * /k9attack

    Network/hash identifiers found: 9
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * Start a police dog attack
      * You must be outside the vehicle.
      * You have been bitten by a police dog.
      * Press INSERT to attack another player without having the menu open.
      * Select Breed

]]
local flag, dataTable6, dataTable7, rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, textValue10, textValue11, workValue, dataTable, workValue2, workValue3, workValue4, workValue5, dataTable3, dataTable4, dataTable5, textValue3, workValue7, workValue9, eventRegistration, eventRegistration2, textValue4, rageUiCall, eventRegistration3, workValue11, workValue13, textValue5, textValue7
flag = RMenu
flag = flag.Add
dataTable6 = "policedog"
dataTable7 = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
dataTable8 = "Dog Support Unit"
dataTable9 = "~b~Dog Management"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, textValue10, textValue11, workValue, dataTable, workValue2, workValue3, workValue4, workValue5, dataTable3, dataTable4, dataTable5, textValue3, workValue7, workValue9, eventRegistration, eventRegistration2, textValue4, rageUiCall, eventRegistration3, workValue11, workValue13, textValue5, textValue7 = rageUiCall4()
rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, textValue10, textValue11, workValue, dataTable, workValue2, workValue3, workValue4, workValue5, dataTable3, dataTable4, dataTable5, textValue3, workValue7, workValue9, eventRegistration, eventRegistration2, textValue4, rageUiCall, eventRegistration3, workValue11, workValue13, textValue5, textValue7 = rageUiCall2(dataTable8, dataTable9, rageUiCall3, rageUiCall4, textValue10, textValue11, workValue, dataTable, workValue2, workValue3, workValue4, workValue5, dataTable3, dataTable4, dataTable5, textValue3, workValue7, workValue9, eventRegistration, eventRegistration2, textValue4, rageUiCall, eventRegistration3, workValue11, workValue13, textValue5, textValue7)
flag(dataTable6, dataTable7, rageUiCall2, dataTable8, dataTable9, rageUiCall3, rageUiCall4, textValue10, textValue11, workValue, dataTable, workValue2, workValue3, workValue4, workValue5, dataTable3, dataTable4, dataTable5, textValue3, workValue7, workValue9, eventRegistration, eventRegistration2, textValue4, rageUiCall, eventRegistration3, workValue11, workValue13, textValue5, textValue7)
flag = false
dataTable6 = {}
dataTable6.Follow = 1
dataTable6.Stay = 2
dataTable6.Attack = 3
dataTable6.Sit = 4
dataTable6.Trick = 5
dataTable6.SearchNearby = 6
dataTable6.Indicate = 7
dataTable6.SearchVehicle = 8
dataTable7 = {}
dataTable7.Success = 1
dataTable7.Error = 2
dataTable7.Alert = 3
dataTable7.Info = 4
dataTable7.Unknown = 5
rageUiCall2 = {}
rageUiCall2.active = false
rageUiCall2.handle = 0
dataTable8 = dataTable6.Follow
rageUiCall2.currentAction = dataTable8
rageUiCall2.insideVehicle = false
rageUiCall2.insideVehicleHandle = 0
rageUiCall2.isAttacking = false
dataTable8 = {}
dataTable9 = {}
dataTable9.dict = "creatures@rottweiler@amb@world_dog_sitting@base"
rageUiCall3 = {}
rageUiCall3.base = "base"
dataTable9.anims = rageUiCall3
dataTable8.Sit = dataTable9
dataTable9 = {}
dataTable9.dict = "creatures@dog@move"
rageUiCall3 = {}
rageUiCall3.base = "beg_enter"
dataTable9.anims = rageUiCall3
dataTable8.TrickBeg = dataTable9
dataTable9 = {}
dataTable9.dict = "creatures@rottweiler@tricks@"
rageUiCall3 = {}
rageUiCall3.base = "paw_right_loop"
dataTable9.anims = rageUiCall3
dataTable8.TrickPawRight = dataTable9
dataTable9 = RegisterKeyMapping
rageUiCall3 = "k9attack"
rageUiCall4 = "Police Dog Attack"
textValue10 = "keyboard"
textValue11 = "INSERT"
-- Beginner: Bind a command to a keyboard/controller key.
dataTable9(rageUiCall3, rageUiCall4, textValue10, textValue11)
dataTable9 = TriggerEvent
rageUiCall3 = "chat:addSuggestion"
rageUiCall4 = "/k9"
textValue10 = "Manage your Police Dog"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
dataTable9(rageUiCall3, rageUiCall4, textValue10)
dataTable9 = TriggerEvent
rageUiCall3 = "chat:addSuggestion"
rageUiCall4 = "/k9attack"
textValue10 = "Start a police dog attack"
dataTable9(rageUiCall3, rageUiCall4, textValue10)
dataTable9 = RegisterNetEvent
rageUiCall3 = "0ca8b17662"
-- Beginner: this function handles network event "0ca8b17662".
function rageUiCall4()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.hasPoliceCallsign
    arg1 = arg1()
    if arg1 then
      arg1 = RMenu
      arg2 = arg1
      arg1 = arg1.Get
      arg3 = "cmgscenemenu"
      cmgCall = "main"
      -- Beginner: result below is menu.
      arg1 = arg1(arg2, arg3, cmgCall)
      arg2 = arg1
      arg1 = arg1.SetSubtitle
      arg3 = "~b~MPD~w~: "
      cmgCall = CMG
      cmgCall = cmgCall.getPoliceCallsign
      cmgCall = cmgCall()
      textValue8 = " - "
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPoliceRank
      cmgCall2 = cmgCall2()
      textValue9 = " - "
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getPlayerName
      workValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workValue18 = workValue18()
      cmgCall3 = cmgCall3(workValue18)
      arg3 = arg3 .. cmgCall .. textValue8 .. cmgCall2 .. textValue9 .. cmgCall3
      arg1(arg2, arg3)
    end
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "prisonguard.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.hasHmpCallsign
    arg1 = arg1()
    if arg1 then
      arg1 = RMenu
      arg2 = arg1
      arg1 = arg1.Get
      arg3 = "cmgscenemenu"
      cmgCall = "main"
      -- Beginner: result below is menu.
      arg1 = arg1(arg2, arg3, cmgCall)
      arg2 = arg1
      arg1 = arg1.SetSubtitle
      arg3 = "~b~HMP~w~: "
      cmgCall = CMG
      cmgCall = cmgCall.getHmpCallsign
      cmgCall = cmgCall()
      textValue8 = " - "
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getHmpRank
      cmgCall2 = cmgCall2()
      textValue9 = " - "
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getPlayerName
      workValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workValue18 = workValue18()
      cmgCall3 = cmgCall3(workValue18)
      arg3 = arg3 .. cmgCall .. textValue8 .. cmgCall2 .. textValue9 .. cmgCall3
      arg1(arg2, arg3)
    end
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "borderforce.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.hasBorderForceCallsign
    arg1 = arg1()
    if arg1 then
      arg1 = RMenu
      arg2 = arg1
      arg1 = arg1.Get
      arg3 = "cmgscenemenu"
      cmgCall = "main"
      -- Beginner: result below is menu.
      arg1 = arg1(arg2, arg3, cmgCall)
      arg2 = arg1
      arg1 = arg1.SetSubtitle
      arg3 = "~b~HMP~w~: "
      cmgCall = CMG
      cmgCall = cmgCall.getBorderForceCallsign
      cmgCall = cmgCall()
      textValue8 = " - "
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getBorderForceRank
      cmgCall2 = cmgCall2()
      textValue9 = " - "
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getPlayerName
      workValue18 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workValue18 = workValue18()
      cmgCall3 = cmgCall3(workValue18)
      arg3 = arg3 .. cmgCall .. textValue8 .. cmgCall2 .. textValue9 .. cmgCall3
      arg1(arg2, arg3)
    end
  end
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall = "policedog"
  textValue8 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall, textValue8)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0ca8b17662".
dataTable9(rageUiCall3, rageUiCall4)
function dataTable9()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15
  arg1 = rageUiCall2.active
  if not arg1 then
    return
  end
  arg1 = rageUiCall2.currentAction
  arg2 = dataTable6.Follow
  if arg1 ~= arg2 then
    arg1 = ClearPedTasks
    arg2 = rageUiCall2.handle
    arg1(arg2)
    arg1 = TaskFollowToOffsetOfEntity
    arg2 = rageUiCall2.handle
    arg3 = CMG
    arg3 = arg3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    cmgCall = 0.0
    textValue8 = 0.0
    cmgCall2 = 0.0
    textValue9 = 7.0
    cmgCall3 = -1
    workValue18 = 10.0
    flag15 = true
    arg1(arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15)
    arg1 = dataTable6.Follow
    rageUiCall2.currentAction = arg1
  else
    arg1 = ClearPedTasks
    arg2 = rageUiCall2.handle
    arg1(arg2)
    arg1 = dataTable6.Follow
    rageUiCall2.currentAction = arg1
    arg1 = TaskFollowToOffsetOfEntity
    arg2 = rageUiCall2.handle
    arg3 = CMG
    arg3 = arg3.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    cmgCall = 0.0
    textValue8 = 0.0
    cmgCall2 = 0.0
    textValue9 = 7.0
    cmgCall3 = -1
    workValue18 = 10.0
    flag15 = true
    arg1(arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15)
  end
end
function rageUiCall3()
  local arg1, arg2
  arg1 = rageUiCall2.active
  if not arg1 then
    return
  end
  arg1 = ClearPedTasks
  arg2 = rageUiCall2.handle
  arg1(arg2)
  arg1 = dataTable6.Stay
  rageUiCall2.currentAction = arg1
end
function rageUiCall4()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2
  arg1 = rageUiCall2.active
  if not arg1 then
    return
  end
  arg1 = ClearPedTasks
  arg2 = rageUiCall2.handle
  arg1(arg2)
  arg1 = dataTable8.Sit
  arg1 = arg1.dict
  arg2 = dataTable8.Sit
  arg2 = arg2.anims
  arg2 = arg2.base
  arg3 = RequestAnimDict
  cmgCall = arg1
  arg3(cmgCall)
  while true do
    arg3 = HasAnimDictLoaded
    cmgCall = arg1
    arg3 = arg3(cmgCall)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    cmgCall = 0
    arg3(cmgCall)
  end
  arg3 = TaskPlayAnim
  cmgCall = rageUiCall2.handle
  textValue8 = arg1
  cmgCall2 = arg2
  textValue9 = 8.0
  cmgCall3 = -8.0
  workValue18 = -1
  flag15 = 2
  numberValue = 0.0
  flag2 = false
  flag3 = false
  dataTable2 = false
  -- Beginner: Play an animation on a ped.
  arg3(cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2)
  arg3 = RemoveAnimDict
  cmgCall = arg1
  arg3(cmgCall)
  arg3 = dataTable6.Sit
  rageUiCall2.currentAction = arg3
end
function textValue10(arg1, arg2)
  local arg3, cmgCall
  arg3 = notify
  cmgCall = arg2
  -- Beginner: Show a notification to the player.
  arg3(cmgCall)
end
function textValue11(arg1)
  local arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4
  arg2 = dataTable6.Trick
  rageUiCall2.currentAction = arg2
  arg2 = ClearPedTasks
  arg3 = rageUiCall2.handle
  arg2(arg3)
  arg2 = arg1.dict
  arg3 = arg1.anims
  arg3 = arg3.base
  cmgCall = RequestAnimDict
  textValue8 = arg2
  cmgCall(textValue8)
  while true do
    cmgCall = HasAnimDictLoaded
    textValue8 = arg2
    cmgCall = cmgCall(textValue8)
    if cmgCall then
      break
    end
    cmgCall = Citizen
    cmgCall = cmgCall.Wait
    textValue8 = 0
    cmgCall(textValue8)
  end
  cmgCall = TaskPlayAnim
  textValue8 = rageUiCall2.handle
  cmgCall2 = arg2
  textValue9 = arg3
  cmgCall3 = 8.0
  workValue18 = -8.0
  flag15 = -1
  numberValue = 2
  flag2 = 0.0
  flag3 = false
  dataTable2 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  cmgCall(textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4)
  cmgCall = RemoveAnimDict
  textValue8 = arg2
  cmgCall(textValue8)
end
function workValue()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15
  arg1 = GetEntityCoords
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3)
  arg2 = SetEntityCoords
  arg3 = rageUiCall2.handle
  cmgCall = arg1.x
  textValue8 = arg1.y
  cmgCall2 = arg1.z
  cmgCall2 = cmgCall2 - 1.0
  textValue9 = false
  cmgCall3 = false
  workValue18 = false
  flag15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15)
end
dataTable = {}
function workValue2()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2
  arg1 = rageUiCall2.currentAction
  arg2 = dataTable6.SearchNearby
  if arg1 == arg2 then
    return
  end
  arg1 = dataTable6.SearchNearby
  rageUiCall2.currentAction = arg1
  while true do
    arg1 = rageUiCall2.currentAction
    arg2 = dataTable6.SearchNearby
    if arg1 ~= arg2 then
      break
    end
    arg1 = DoesEntityExist
    arg2 = rageUiCall2.handle
    arg1 = arg1(arg2)
    if not arg1 then
      break
    end
    arg1 = {}
    arg2 = GetEntityCoords
    arg3 = rageUiCall2.handle
    cmgCall = true
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3, cmgCall)
    arg3 = GetScriptTaskStatus
    cmgCall = rageUiCall2.handle
    textValue8 = 1056466932
    arg3 = arg3(cmgCall, textValue8)
    if 7 == arg3 then
      arg3 = TaskFollowToOffsetOfEntity
      cmgCall = rageUiCall2.handle
      textValue8 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue8 = textValue8()
      cmgCall2 = 0.0
      textValue9 = 0.0
      cmgCall3 = 0.0
      workValue18 = 7.0
      flag15 = -1
      numberValue = 2.0
      flag2 = true
      arg3(cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2)
    end
    arg3 = pairs
    cmgCall = GetActivePlayers
    cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2 = cmgCall()
    arg3, cmgCall, textValue8, cmgCall2 = arg3(cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2)
    for textValue9, cmgCall3 in arg3, cmgCall, textValue8, cmgCall2 do
      workValue18 = GetPlayerPed
      flag15 = cmgCall3
      -- Beginner: result below is playerPed.
      workValue18 = workValue18(flag15)
      flag15 = GetVehiclePedIsUsing
      numberValue = workValue18
      flag15 = flag15(numberValue)
      if 0 == flag15 then
        flag15 = IsEntityVisible
        numberValue = workValue18
        flag15 = flag15(numberValue)
        if flag15 then
          flag15 = GetEntityCoords
          numberValue = workValue18
          flag2 = true
          -- Beginner: result below is entityCoords.
          flag15 = flag15(numberValue, flag2)
          flag15 = flag15 - arg2
          flag15 = #flag15
          if flag15 < 5.0 then
            flag15 = GetPlayerServerId
            numberValue = cmgCall3
            -- Beginner: result below is serverId.
            flag15 = flag15(numberValue)
            numberValue = CMG
            numberValue = numberValue.clientGetUserIdFromSource
            flag2 = flag15
            -- Beginner: result below is userId.
            numberValue = numberValue(flag2)
            flag2 = CMG
            flag2 = flag2.getJobType
            flag3 = numberValue
            flag2 = flag2(flag3)
            if "" == flag2 then
              flag2 = table
              flag2 = flag2.insert
              flag3 = arg1
              dataTable2 = {}
              dataTable2.source = flag15
              dataTable2.ped = workValue18
              flag2(flag3, dataTable2)
            end
          end
        end
      end
    end
    arg3 = #arg1
    if arg3 > 0 then
      arg3 = nil
      cmgCall = pairs
      textValue8 = arg1
      cmgCall, textValue8, cmgCall2, textValue9 = cmgCall(textValue8)
      for cmgCall3, workValue18 in cmgCall, textValue8, cmgCall2, textValue9 do
        numberValue = workValue18.source
        flag15 = dataTable
        flag15 = flag15[numberValue]
        if not flag15 then
          arg3 = workValue18
          break
        end
      end
      if not arg3 then
        cmgCall = math
        cmgCall = cmgCall.random
        textValue8 = 1
        cmgCall2 = #arg1
        cmgCall = cmgCall(textValue8, cmgCall2)
        arg3 = arg1[cmgCall]
      end
      textValue8 = arg3.source
      cmgCall = dataTable
      cmgCall = cmgCall[textValue8]
      if not cmgCall then
        cmgCall = notify
        textValue8 = "~y~Dog is smelling a nearby pedestrian..."
        -- Beginner: Show a notification to the player.
        cmgCall(textValue8)
        textValue8 = arg3.source
        cmgCall = dataTable
        cmgCall[textValue8] = true
        cmgCall = Citizen
        cmgCall = cmgCall.CreateThread
        function textValue8()
          local waitCall, numberValue9
          waitCall = Citizen
          waitCall = waitCall.Wait
          numberValue9 = 30000
          waitCall(numberValue9)
          numberValue9 = arg3.source
          waitCall = dataTable
          waitCall[numberValue9] = nil
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        cmgCall(textValue8)
        cmgCall = TaskFollowToOffsetOfEntity
        textValue8 = rageUiCall2.handle
        cmgCall2 = arg3.ped
        textValue9 = 0.0
        cmgCall3 = 0.0
        workValue18 = 0.0
        flag15 = 7.0
        numberValue = 4500
        flag2 = 1.0
        flag3 = false
        cmgCall(textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3)
      end
      cmgCall = tCMG
      cmgCall = cmgCall.isInGreenzone
      textValue8 = false
      cmgCall = cmgCall(textValue8)
      if not cmgCall then
        cmgCall = TriggerServerEvent
        textValue8 = "a6a898d91c"
        cmgCall2 = arg3.source
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6a898d91c".
        cmgCall(textValue8, cmgCall2)
      end
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    cmgCall = 5000
    arg3(cmgCall)
  end
end
function workValue3()
  local arg1, arg2, arg3, cmgCall, textValue8
  arg1 = CMG
  arg1 = arg1.getClosestVehicle
  arg2 = 5.0
  arg1 = arg1(arg2)
  if not arg1 then
    arg2 = notify
    arg3 = "~r~No nearby vehicle to search"
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 > 0 then
    arg3 = TriggerServerEvent
    cmgCall = "ca94823c64"
    textValue8 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca94823c64".
    arg3(cmgCall, textValue8)
  end
end
function workValue4()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5, flag6, flag7
  arg1 = tCMG
  arg1 = arg1.getNearestVehicle
  arg2 = 7.0
  arg1 = arg1(arg2)
  arg2 = Citizen
  arg2 = arg2.Trace
  arg3 = arg1
  arg2(arg3)
  if -1 ~= arg1 and nil ~= arg1 and 0 ~= arg1 then
    arg2 = ClearPedTasks
    arg3 = rageUiCall2.handle
    arg2(arg3)
    arg2 = GetEntityBoneIndexByName
    arg3 = arg1
    cmgCall = "seat_dside_r"
    arg2 = arg2(arg3, cmgCall)
    if -1 == arg2 then
      arg3 = GetEntityBoneIndexByName
      cmgCall = arg1
      textValue8 = "seat_pside_f"
      arg3 = arg3(cmgCall, textValue8)
      arg2 = arg3
    end
    arg3 = dataTable6.Sit
    rageUiCall2.currentAction = arg3
    arg3 = rageUiCall4
    arg3()
    arg3 = AttachEntityToEntity
    cmgCall = rageUiCall2.handle
    textValue8 = arg1
    cmgCall2 = arg2
    textValue9 = 0.0
    cmgCall3 = -0.1
    workValue18 = 0.4
    flag15 = 0.0
    numberValue = 0.0
    flag2 = 0.0
    flag3 = false
    dataTable2 = false
    flag4 = false
    flag5 = true
    flag6 = 0
    flag7 = true
    -- Beginner: Attach one entity to another entity.
    arg3(cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5, flag6, flag7)
    rageUiCall2.insideVehicle = true
    rageUiCall2.insideVehicleHandle = arg1
    arg3 = textValue10
    cmgCall = dataTable7.Info
    textValue8 = "Dog is now inside the vehicle"
    arg3(cmgCall, textValue8)
  else
    arg2 = textValue10
    arg3 = dataTable7.Error
    cmgCall = "No nearby vehicle found."
    arg2(arg3, cmgCall)
  end
end
function workValue5()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15
  arg1 = IsPedInAnyVehicle
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = textValue10
    arg2 = dataTable7.Error
    arg3 = "You must be outside the vehicle."
    arg1(arg2, arg3)
  else
    arg1 = ClearPedTasks
    arg2 = rageUiCall2.handle
    arg1(arg2)
    arg1 = GetEntityCoords
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = true
    -- Beginner: result below is entityCoords.
    arg1 = arg1(arg2, arg3)
    arg2 = DetachEntity
    arg3 = rageUiCall2.handle
    cmgCall = true
    textValue8 = true
    arg2(arg3, cmgCall, textValue8)
    arg2 = SetEntityCoords
    arg3 = rageUiCall2.handle
    cmgCall = arg1.x
    textValue8 = arg1.y
    cmgCall2 = arg1.z
    cmgCall2 = cmgCall2 - 1.0
    textValue9 = false
    cmgCall3 = false
    workValue18 = false
    flag15 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg2(arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15)
    rageUiCall2.insideVehicle = false
    rageUiCall2.insideVehicleHandle = 0
    arg2 = dataTable6.Follow
    rageUiCall2.currentAction = arg2
    arg2 = dataTable9
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg2()
  end
end
dataTable3 = {}
dataTable4 = "Shepherd"
dataTable5 = "Husky"
dataTable3[1] = dataTable4
dataTable3[2] = dataTable5
dataTable4 = {}
dataTable5 = "a_c_shepherd"
textValue3 = "a_c_husky"
dataTable4[1] = dataTable5
dataTable4[2] = textValue3
dataTable5 = {}
dataTable5.breed = 1
function textValue3()
  local arg1, arg2, arg3, cmgCall
  arg1 = GetResourceKvpString
  arg2 = "cmg_policedog_customisations"
  arg1 = arg1(arg2)
  if nil ~= arg1 and "" ~= arg1 and "null" ~= arg1 then
    arg2 = json
    arg2 = arg2.decode
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      cmgCall = dataTable5.breed
      arg3 = dataTable3
      arg3 = arg3[cmgCall]
      cmgCall = arg2[arg3]
      if nil ~= cmgCall then
        cmgCall = arg2[arg3]
        return cmgCall
      end
    end
  end
  arg2 = {}
  arg2.furColour = 0
  arg2.vestColour = 0
  arg2.vestDesign = 0
  return arg2
end
function workValue7(arg1, arg2)
  local arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5, flag6
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall = IsPedInAnyPoliceVehicle
  textValue8 = arg3
  cmgCall = cmgCall(textValue8)
  if not cmgCall then
    cmgCall = CMG
    cmgCall = cmgCall.loadModel
    textValue8 = arg1
    cmgCall = cmgCall(textValue8)
    if not cmgCall then
      return
    end
    textValue8 = GetOffsetFromEntityInWorldCoords
    cmgCall2 = arg3
    textValue9 = 0.0
    cmgCall3 = 1.0
    workValue18 = 0.0
    textValue8 = textValue8(cmgCall2, textValue9, cmgCall3, workValue18)
    cmgCall2 = GetEntityHeading
    textValue9 = arg3
    -- Beginner: result below is heading.
    cmgCall2 = cmgCall2(textValue9)
    textValue9 = CMG
    textValue9 = textValue9.requestEntitySpawn
    cmgCall3 = "policedog_ped"
    workValue18 = textValue8
    flag15 = cmgCall
    textValue9(cmgCall3, workValue18, flag15)
    textValue9 = CreatePed
    cmgCall3 = 28
    workValue18 = cmgCall
    flag15 = textValue8.x
    numberValue = textValue8.y
    flag2 = textValue8.z
    flag3 = cmgCall2
    dataTable2 = true
    flag4 = true
    -- Beginner: result below is pedEntity.
    textValue9 = textValue9(cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4)
    rageUiCall2.handle = textValue9
    textValue9 = SetModelAsNoLongerNeeded
    cmgCall3 = cmgCall
    textValue9(cmgCall3)
    textValue9 = Wait
    cmgCall3 = 2000
    textValue9(cmgCall3)
    textValue9 = DoesEntityExist
    cmgCall3 = rageUiCall2.handle
    textValue9 = textValue9(cmgCall3)
    if textValue9 then
      rageUiCall2.active = true
      textValue9 = SetBlockingOfNonTemporaryEvents
      cmgCall3 = rageUiCall2.handle
      workValue18 = true
      textValue9(cmgCall3, workValue18)
      textValue9 = SetPedMoveRateOverride
      cmgCall3 = rageUiCall2.handle
      workValue18 = 60.0
      textValue9(cmgCall3, workValue18)
      textValue9 = GiveWeaponToPed
      cmgCall3 = rageUiCall2.handle
      workValue18 = -100946242
      flag15 = 200
      numberValue = true
      flag2 = true
      textValue9(cmgCall3, workValue18, flag15, numberValue, flag2)
      textValue9 = SetCanAttackFriendly
      cmgCall3 = rageUiCall2.handle
      workValue18 = false
      flag15 = false
      textValue9(cmgCall3, workValue18, flag15)
      textValue9 = {}
      cmgCall3 = 0
      workValue18 = 3
      flag15 = 5
      numberValue = 46
      textValue9[1] = cmgCall3
      textValue9[2] = workValue18
      textValue9[3] = flag15
      textValue9[4] = numberValue
      cmgCall3 = pairs
      workValue18 = textValue9
      cmgCall3, workValue18, flag15, numberValue = cmgCall3(workValue18)
      for flag2, flag3 in cmgCall3, workValue18, flag15, numberValue do
        dataTable2 = SetPedFleeAttributes
        flag4 = rageUiCall2.handle
        flag5 = flag3
        flag6 = true
        dataTable2(flag4, flag5, flag6)
      end
      cmgCall3 = ClearPedTasks
      workValue18 = rageUiCall2.handle
      cmgCall3(workValue18)
      cmgCall3 = dataTable9
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      cmgCall3()
      cmgCall3 = AddBlipForEntity
      workValue18 = rageUiCall2.handle
      -- Beginner: result below is blipHandle.
      cmgCall3 = cmgCall3(workValue18)
      workValue18 = 61
      flag15 = SetBlipSprite
      numberValue = cmgCall3
      flag2 = 526
      flag15(numberValue, flag2)
      flag15 = SetBlipColour
      numberValue = cmgCall3
      flag2 = workValue18
      flag15(numberValue, flag2)
      flag15 = SetBlipScale
      numberValue = cmgCall3
      flag2 = 1.0
      flag15(numberValue, flag2)
      flag15 = BeginTextCommandSetBlipName
      numberValue = "STRING"
      flag15(numberValue)
      flag15 = AddTextComponentSubstringPlayerName
      numberValue = "Police Dog"
      flag15(numberValue)
      flag15 = EndTextCommandSetBlipName
      numberValue = cmgCall3
      flag15(numberValue)
      flag15 = SetBlipAsFriendly
      numberValue = cmgCall3
      flag2 = true
      flag15(numberValue, flag2)
      flag15 = SetBlipBright
      numberValue = cmgCall3
      flag2 = true
      flag15(numberValue, flag2)
      flag15 = textValue3
      flag15 = flag15()
      numberValue = SetPedComponentVariation
      flag2 = rageUiCall2.handle
      flag3 = 0
      dataTable2 = 0
      flag4 = flag15.furColour
      flag5 = 0
      numberValue(flag2, flag3, dataTable2, flag4, flag5)
      numberValue = SetPedComponentVariation
      flag2 = rageUiCall2.handle
      flag3 = 3
      dataTable2 = 0
      flag4 = flag15.vestColour
      flag5 = 0
      numberValue(flag2, flag3, dataTable2, flag4, flag5)
      numberValue = SetPedComponentVariation
      flag2 = rageUiCall2.handle
      flag3 = 8
      dataTable2 = 0
      flag4 = flag15.vestDesign
      flag5 = 0
      numberValue(flag2, flag3, dataTable2, flag4, flag5)
      numberValue = dataTable9
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      numberValue()
      numberValue = textValue10
      flag2 = dataTable7.Success
      flag3 = "Police Dog has been created. Breed: "
      dataTable2 = arg2
      flag3 = flag3 .. dataTable2
      numberValue(flag2, flag3)
      numberValue = TriggerServerEvent
      flag2 = "9c88f7070e"
      flag3 = "Created a new police dog"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
      numberValue(flag2, flag3)
    end
  end
end
function workValue9()
  local arg1, arg2, arg3
  arg1 = DeleteEntity
  arg2 = rageUiCall2.handle
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  rageUiCall2.active = false
  rageUiCall2.handle = 0
  arg1 = TriggerServerEvent
  arg2 = "9c88f7070e"
  arg3 = "Deleted dog"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
  arg1(arg2, arg3)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "21403d7958"
-- Beginner: this function handles network event "21403d7958".
function textValue4()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3
  arg1 = SetPedToRagdoll
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 12000
  cmgCall = 12000
  textValue8 = 0
  cmgCall2 = false
  textValue9 = false
  cmgCall3 = false
  arg1(arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3)
  arg1 = textValue10
  arg2 = "~y~~h~Alert~h~~s~: "
  arg3 = "You have been bitten by a police dog."
  arg2 = arg2 .. arg3
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "21403d7958".
eventRegistration(eventRegistration2, textValue4)
eventRegistration = nil
eventRegistration2 = RegisterNetEvent
textValue4 = "3d3cfdde5b"
-- Beginner: this function handles network event "3d3cfdde5b".
function rageUiCall()
  local arg1, arg2
  arg1 = rageUiCall2.active
  if arg1 then
    arg1 = rageUiCall2.currentAction
    arg2 = dataTable6.Attack
    if arg1 ~= arg2 then
      arg1 = eventRegistration
      arg1()
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3d3cfdde5b".
eventRegistration2(textValue4, rageUiCall)
function eventRegistration2(arg1)
  local arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3
  arg2 = {}
  arg3 = GetResourceKvpString
  cmgCall = "cmg_policedog_customisations"
  arg3 = arg3(cmgCall)
  if nil ~= arg3 and "" ~= arg3 and "null" ~= arg3 then
    cmgCall = json
    cmgCall = cmgCall.decode
    textValue8 = arg3
    cmgCall = cmgCall(textValue8)
    arg2 = cmgCall or arg2
    if not cmgCall then
      cmgCall = {}
      arg2 = cmgCall
    end
  end
  textValue8 = dataTable5.breed
  cmgCall = dataTable3
  cmgCall = cmgCall[textValue8]
  arg2[cmgCall] = arg1
  textValue8 = SetResourceKvp
  cmgCall2 = "cmg_policedog_customisations"
  textValue9 = json
  textValue9 = textValue9.encode
  cmgCall3 = arg2
  textValue9, cmgCall3 = textValue9(cmgCall3)
  textValue8(cmgCall2, textValue9, cmgCall3)
end
textValue4 = 0
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
eventRegistration3 = 1.0
workValue11 = RMenu
workValue13 = workValue11
workValue11 = workValue11.Get
textValue5 = "policedog"
textValue7 = "main"
-- Beginner: result below is menu.
workValue11 = workValue11(workValue13, textValue5, textValue7)
workValue13 = nil
function textValue5()
  local arg1, arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall = "policedog"
  textValue8 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall, textValue8)
  arg3 = true
  cmgCall = false
  textValue8 = true
  function cmgCall2()
    local waitCall, numberValue9, textValue6, flag12, workValue15, dataTable10, flag13, numberValue13
    waitCall = flag
    if false == waitCall then
      waitCall = true
      flag = waitCall
      waitCall = textValue10
      numberValue9 = dataTable7.Info
      textValue6 = "Press INSERT to attack another player without having the menu open."
      waitCall(numberValue9, textValue6)
    end
    waitCall = rageUiCall2.active
    if not waitCall then
      waitCall = RageUI
      waitCall = waitCall.List
      numberValue9 = "Select Breed"
      textValue6 = dataTable3
      flag12 = dataTable5.breed
      workValue15 = nil
      dataTable10 = {}
      flag13 = true
      function numberValue13(arg12, arg22, arg32, arg4)
        local workValue16, workValue17
        if arg32 then
          workValue16 = Citizen
          workValue16 = workValue16.Trace
          workValue17 = dataTable3
          workValue17 = workValue17[arg4]
          workValue16(workValue17)
        end
        if arg22 then
          dataTable5.breed = arg4
        end
      end
      -- Beginner: Draw a RageUI list selector.
      waitCall(numberValue9, textValue6, flag12, workValue15, dataTable10, flag13, numberValue13)
      waitCall = RageUI
      waitCall = waitCall.Button
      numberValue9 = "Create Dog"
      textValue6 = "Create a police dog"
      flag12 = true
      function workValue15(arg12, arg22, arg32)
        local arg4, workValue16, workValue17, numberValue12
        if arg32 then
          arg4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg4 = arg4()
          workValue16 = textValue4
          arg4 = arg4 - workValue16
          workValue16 = 10000
          if arg4 > workValue16 then
            arg4 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg4 = arg4()
            textValue4 = arg4
            arg4 = workValue7
            workValue17 = dataTable5.breed
            workValue16 = dataTable4
            workValue16 = workValue16[workValue17]
            numberValue12 = dataTable5.breed
            workValue17 = dataTable3
            workValue17 = workValue17[numberValue12]
            arg4(workValue16, workValue17)
          else
            arg4 = notify
            workValue16 = "~r~Please wait 10 seconds before spawning another dog."
            -- Beginner: Show a notification to the player.
            arg4(workValue16)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      waitCall(numberValue9, textValue6, flag12, workValue15)
    else
      waitCall = rageUiCall2.insideVehicle
      if not waitCall then
        waitCall = rageUiCall2.currentAction
        numberValue9 = dataTable6.Follow
        if waitCall ~= numberValue9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Follow"
          textValue6 = "Dog will follow you"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17
            if arg32 then
              arg4 = textValue10
              workValue16 = dataTable7.Info
              workValue17 = "Dog is now following."
              arg4(workValue16, workValue17)
              arg4 = dataTable9
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              arg4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        end
        waitCall = rageUiCall2.currentAction
        numberValue9 = dataTable6.Stay
        if waitCall ~= numberValue9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Stay"
          textValue6 = "Dog will stay"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17
            if arg32 then
              arg4 = textValue10
              workValue16 = dataTable7.Info
              workValue17 = "Dog is now staying."
              arg4(workValue16, workValue17)
              arg4 = rageUiCall3
              arg4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        end
        waitCall = rageUiCall2.currentAction
        numberValue9 = dataTable6.Sit
        if waitCall ~= numberValue9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Sit"
          textValue6 = "Dog will sit"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17
            if arg32 then
              arg4 = textValue10
              workValue16 = dataTable7.Info
              workValue17 = "Dog is now sitting."
              arg4(workValue16, workValue17)
              arg4 = rageUiCall4
              arg4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        end
        waitCall = rageUiCall2.currentAction
        numberValue9 = dataTable6.Attack
        if waitCall ~= numberValue9 then
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Attack"
          textValue6 = "Begin a dog attack"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4
            if arg32 then
              arg4 = eventRegistration
              arg4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        else
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Stop Attack"
          textValue6 = "Stop the current attack"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17
            if arg32 then
              arg4 = textValue10
              workValue16 = dataTable7.Alert
              workValue17 = "The attack has been cancelled."
              arg4(workValue16, workValue17)
              arg4 = ClearPedTasks
              workValue16 = rageUiCall2.handle
              arg4(workValue16)
              arg4 = dataTable6.Follow
              rageUiCall2.currentAction = arg4
              arg4 = textValue10
              workValue16 = dataTable7.Info
              workValue17 = "Dog is now following."
              arg4(workValue16, workValue17)
              arg4 = dataTable9
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              arg4()
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        end
      else
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Remove from vehicle"
        textValue6 = "Remove the dog from the vehicle"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16, workValue17
          if arg32 then
            arg4 = textValue10
            workValue16 = dataTable7.Info
            workValue17 = "Dog is now out of the vehicle."
            arg4(workValue16, workValue17)
            arg4 = workValue5
            arg4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
      end
      waitCall = rageUiCall2.insideVehicle
      if not waitCall then
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Put in vehicle"
        textValue6 = "Put the dog in a vehicle"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4
          if arg32 then
            arg4 = workValue4
            arg4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Paw Trick"
        textValue6 = "Perform the paw trick"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16
          if arg32 then
            arg4 = textValue11
            workValue16 = dataTable8.TrickPawRight
            arg4(workValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Beg Trick"
        textValue6 = "Perform the beg trick"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16
          if arg32 then
            arg4 = textValue11
            workValue16 = dataTable8.TrickBeg
            arg4(workValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Search Nearby"
        textValue6 = "Dog will follow and sniff close pedestrians"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16, workValue17
          if arg32 then
            arg4 = textValue10
            workValue16 = dataTable7.Info
            workValue17 = "Dog is now searching."
            arg4(workValue16, workValue17)
            arg4 = Citizen
            arg4 = arg4.CreateThread
            workValue16 = workValue2
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg4(workValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Search Nearby Vehicle"
        textValue6 = "Dog will search the nearest vehicle. This does not include people inside vehicle."
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16
          if arg32 then
            arg4 = Citizen
            arg4 = arg4.CreateThread
            workValue16 = workValue3
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg4(workValue16)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Teleport Dog"
        textValue6 = "Teleport the dog to you"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16, workValue17
          if arg32 then
            arg4 = textValue10
            workValue16 = dataTable7.Success
            workValue17 = "Dog has now been teleported"
            arg4(workValue16, workValue17)
            arg4 = workValue
            arg4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Change Fur Colour"
        textValue6 = "Cycle through colours"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16, workValue17, numberValue12, numberValue14, numberValue15, numberValue17, numberValue3, numberValue5
          if arg32 then
            arg4 = GetPedTextureVariation
            workValue16 = rageUiCall2.handle
            workValue17 = 0
            arg4 = arg4(workValue16, workValue17)
            workValue16 = GetNumberOfPedTextureVariations
            workValue17 = rageUiCall2.handle
            numberValue12 = 0
            numberValue14 = 0
            workValue16 = workValue16(workValue17, numberValue12, numberValue14)
            workValue17 = textValue3
            workValue17 = workValue17()
            numberValue12 = arg4 + 1
            if workValue16 > numberValue12 then
              numberValue12 = SetPedComponentVariation
              numberValue14 = rageUiCall2.handle
              numberValue15 = 0
              numberValue17 = 0
              numberValue3 = arg4 + 1
              numberValue5 = 0
              numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
              numberValue12 = arg4 + 1
              workValue17.furColour = numberValue12
            else
              numberValue12 = arg4 + 1
              if numberValue12 == workValue16 then
                numberValue12 = SetPedComponentVariation
                numberValue14 = rageUiCall2.handle
                numberValue15 = 0
                numberValue17 = 0
                numberValue3 = 0
                numberValue5 = 0
                numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
                workValue17.furColour = 0
              end
            end
            numberValue12 = eventRegistration2
            numberValue14 = workValue17
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            numberValue12(numberValue14)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
        waitCall = dataTable5.breed
        if 1 == waitCall then
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Change Vest Colour"
          textValue6 = "Cycle through colours"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17, numberValue12, numberValue14, numberValue15, numberValue17, numberValue3, numberValue5
            if arg32 then
              arg4 = GetPedTextureVariation
              workValue16 = rageUiCall2.handle
              workValue17 = 3
              arg4 = arg4(workValue16, workValue17)
              workValue16 = GetNumberOfPedTextureVariations
              workValue17 = rageUiCall2.handle
              numberValue12 = 3
              numberValue14 = 0
              workValue16 = workValue16(workValue17, numberValue12, numberValue14)
              workValue17 = textValue3
              workValue17 = workValue17()
              numberValue12 = arg4 + 1
              if workValue16 > numberValue12 then
                numberValue12 = SetPedComponentVariation
                numberValue14 = rageUiCall2.handle
                numberValue15 = 3
                numberValue17 = 0
                numberValue3 = arg4 + 1
                numberValue5 = 0
                numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
                numberValue12 = arg4 + 1
                workValue17.vestColour = numberValue12
              else
                numberValue12 = arg4 + 1
                if numberValue12 == workValue16 then
                  numberValue12 = SetPedComponentVariation
                  numberValue14 = rageUiCall2.handle
                  numberValue15 = 3
                  numberValue17 = 0
                  numberValue3 = 0
                  numberValue5 = 0
                  numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
                  workValue17.vestColour = 0
                end
              end
              numberValue12 = eventRegistration2
              numberValue14 = workValue17
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              numberValue12(numberValue14)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
          waitCall = RageUI
          waitCall = waitCall.Button
          numberValue9 = "Change Vest Design"
          textValue6 = "Cycle through designs"
          flag12 = true
          function workValue15(arg12, arg22, arg32)
            local arg4, workValue16, workValue17, numberValue12, numberValue14, numberValue15, numberValue17, numberValue3, numberValue5
            if arg32 then
              arg4 = GetPedTextureVariation
              workValue16 = rageUiCall2.handle
              workValue17 = 8
              arg4 = arg4(workValue16, workValue17)
              workValue16 = GetNumberOfPedTextureVariations
              workValue17 = rageUiCall2.handle
              numberValue12 = 8
              numberValue14 = 0
              workValue16 = workValue16(workValue17, numberValue12, numberValue14)
              workValue17 = textValue3
              workValue17 = workValue17()
              numberValue12 = arg4 + 1
              if workValue16 > numberValue12 then
                numberValue12 = SetPedComponentVariation
                numberValue14 = rageUiCall2.handle
                numberValue15 = 8
                numberValue17 = 0
                numberValue3 = arg4 + 1
                numberValue5 = 0
                numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
                numberValue12 = arg4 + 1
                workValue17.vestDesign = numberValue12
              else
                numberValue12 = arg4 + 1
                if numberValue12 == workValue16 then
                  numberValue12 = SetPedComponentVariation
                  numberValue14 = rageUiCall2.handle
                  numberValue15 = 8
                  numberValue17 = 0
                  numberValue3 = 0
                  numberValue5 = 0
                  numberValue12(numberValue14, numberValue15, numberValue17, numberValue3, numberValue5)
                  workValue17.vestDesign = 0
                end
              end
              numberValue12 = eventRegistration2
              numberValue14 = workValue17
              -- Beginner: Register a network event handler that the server/other clients can trigger.
              numberValue12(numberValue14)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          waitCall(numberValue9, textValue6, flag12, workValue15)
        end
        waitCall = RageUI
        waitCall = waitCall.Button
        numberValue9 = "Delete Dog"
        textValue6 = "Delete the dog"
        flag12 = true
        function workValue15(arg12, arg22, arg32)
          local arg4, workValue16, workValue17
          if arg32 then
            arg4 = textValue10
            workValue16 = dataTable7.Success
            workValue17 = "Dog has now been deleted."
            arg4(workValue16, workValue17)
            arg4 = workValue9
            arg4()
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        waitCall(numberValue9, textValue6, flag12, workValue15)
      else
      end
    end
  end
  function textValue9()
    local waitCall, numberValue9
  end
  arg1(arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9)
end
rageUiCall(eventRegistration3, workValue11, workValue13, textValue5)
function rageUiCall(arg1)
  local arg2, arg3
  arg2 = BeginTextCommandScaleformString
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringKeyboardDisplay
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
end
ButtonMessage = rageUiCall
function rageUiCall(arg1)
  local arg2, arg3
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[arg3]
  arg3 = arg1
  arg2(arg3)
end
Button = rageUiCall
rageUiCall = CMG
function eventRegistration3(arg1)
  local arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9
  arg2 = RequestScaleformMovie
  arg3 = arg1
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  while true do
    arg3 = HasScaleformMovieLoaded
    cmgCall = arg2
    arg3 = arg3(cmgCall)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    cmgCall = 0
    arg3(cmgCall)
  end
  arg3 = BeginScaleformMovieMethod
  cmgCall = arg2
  textValue8 = "CLEAR_ALL"
  arg3(cmgCall, textValue8)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  cmgCall = arg2
  textValue8 = "SET_CLEAR_SPACE"
  arg3(cmgCall, textValue8)
  arg3 = ScaleformMovieMethodAddParamInt
  cmgCall = 200
  arg3(cmgCall)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = rageUiCall2.isAttacking
  if arg3 then
    arg3 = BeginScaleformMovieMethod
    cmgCall = arg2
    textValue8 = "SET_DATA_SLOT"
    arg3(cmgCall, textValue8)
    arg3 = ScaleformMovieMethodAddParamInt
    cmgCall = 1
    arg3(cmgCall)
    arg3 = Button
    cmgCall = GetControlInstructionalButton
    textValue8 = 1
    cmgCall2 = 178
    textValue9 = true
    cmgCall, textValue8, cmgCall2, textValue9 = cmgCall(textValue8, cmgCall2, textValue9)
    arg3(cmgCall, textValue8, cmgCall2, textValue9)
    arg3 = ButtonMessage
    cmgCall = "Cancel Attack"
    arg3(cmgCall)
    arg3 = EndScaleformMovieMethod
    arg3()
  else
    arg3 = BeginScaleformMovieMethod
    cmgCall = arg2
    textValue8 = "SET_DATA_SLOT"
    arg3(cmgCall, textValue8)
    arg3 = ScaleformMovieMethodAddParamInt
    cmgCall = 0
    arg3(cmgCall)
    arg3 = Button
    cmgCall = GetControlInstructionalButton
    textValue8 = 2
    cmgCall2 = 191
    textValue9 = true
    cmgCall, textValue8, cmgCall2, textValue9 = cmgCall(textValue8, cmgCall2, textValue9)
    arg3(cmgCall, textValue8, cmgCall2, textValue9)
    arg3 = ButtonMessage
    cmgCall = "Select Target"
    arg3(cmgCall)
    arg3 = EndScaleformMovieMethod
    arg3()
    arg3 = BeginScaleformMovieMethod
    cmgCall = arg2
    textValue8 = "SET_DATA_SLOT"
    arg3(cmgCall, textValue8)
    arg3 = ScaleformMovieMethodAddParamInt
    cmgCall = 1
    arg3(cmgCall)
    arg3 = Button
    cmgCall = GetControlInstructionalButton
    textValue8 = 1
    cmgCall2 = 178
    textValue9 = true
    cmgCall, textValue8, cmgCall2, textValue9 = cmgCall(textValue8, cmgCall2, textValue9)
    arg3(cmgCall, textValue8, cmgCall2, textValue9)
    arg3 = ButtonMessage
    cmgCall = "Cancel Attack"
    arg3(cmgCall)
    arg3 = EndScaleformMovieMethod
    arg3()
  end
  arg3 = BeginScaleformMovieMethod
  cmgCall = arg2
  textValue8 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg3(cmgCall, textValue8)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  cmgCall = arg2
  textValue8 = "SET_BACKGROUND_COLOUR"
  arg3(cmgCall, textValue8)
  arg3 = ScaleformMovieMethodAddParamInt
  cmgCall = 0
  arg3(cmgCall)
  arg3 = ScaleformMovieMethodAddParamInt
  cmgCall = 0
  arg3(cmgCall)
  arg3 = ScaleformMovieMethodAddParamInt
  cmgCall = 0
  arg3(cmgCall)
  arg3 = ScaleformMovieMethodAddParamInt
  cmgCall = 80
  arg3(cmgCall)
  arg3 = EndScaleformMovieMethod
  arg3()
  return arg2
end
rageUiCall.setupDogScaleform = eventRegistration3
function rageUiCall(arg1)
  local arg2, arg3, cmgCall, textValue8, cmgCall2
  arg2 = {}
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg3 = arg3 / 200
  cmgCall = math
  cmgCall = cmgCall.floor
  textValue8 = math
  textValue8 = textValue8.sin
  cmgCall2 = arg3 * arg1
  cmgCall2 = cmgCall2 + 0
  textValue8 = textValue8(cmgCall2)
  textValue8 = textValue8 * 127
  textValue8 = textValue8 + 128
  cmgCall = cmgCall(textValue8)
  arg2.r = cmgCall
  cmgCall = math
  cmgCall = cmgCall.floor
  textValue8 = math
  textValue8 = textValue8.sin
  cmgCall2 = arg3 * arg1
  cmgCall2 = cmgCall2 + 2
  textValue8 = textValue8(cmgCall2)
  textValue8 = textValue8 * 127
  textValue8 = textValue8 + 128
  cmgCall = cmgCall(textValue8)
  arg2.g = cmgCall
  cmgCall = math
  cmgCall = cmgCall.floor
  textValue8 = math
  textValue8 = textValue8.sin
  cmgCall2 = arg3 * arg1
  cmgCall2 = cmgCall2 + 4
  textValue8 = textValue8(cmgCall2)
  textValue8 = textValue8 * 127
  textValue8 = textValue8 + 128
  cmgCall = cmgCall(textValue8)
  arg2.b = cmgCall
  return arg2
end
function eventRegistration3()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local waitCall, numberValue9, textValue6, flag12, workValue15, dataTable10, flag13, numberValue13, flag14, numberValue16, numberValue2, numberValue4, numberValue6, numberValue7, numberValue8, playerPed, serverEventCall, textValue, textValue2, workValue6, workValue8, workValue10, numberValue10, flag8, flag9, numberValue11, flag10, workValue12, workValue14, flag11
    waitCall = dataTable6.Attack
    rageUiCall2.currentAction = waitCall
    waitCall = CMG
    waitCall = waitCall.setupDogScaleform
    numberValue9 = "instructional_buttons"
    waitCall = waitCall(numberValue9)
    numberValue9 = textValue10
    textValue6 = dataTable7.Info
    flag12 = "Aim at the ~b~target ~s~and press ENTER to begin the attack."
    numberValue9(textValue6, flag12)
    while true do
      numberValue9 = rageUiCall2.currentAction
      textValue6 = dataTable6.Attack
      if numberValue9 == textValue6 then
        numberValue9 = GetEntityPlayerIsFreeAimingAt
        textValue6 = PlayerId
        textValue6, flag12, workValue15, dataTable10, flag13, numberValue13, flag14, numberValue16, numberValue2, numberValue4, numberValue6, numberValue7, numberValue8, playerPed, serverEventCall, textValue, textValue2, workValue6, workValue8, workValue10, numberValue10, flag8, flag9, numberValue11, flag10, workValue12, workValue14, flag11 = textValue6()
        numberValue9, textValue6 = numberValue9(textValue6, flag12, workValue15, dataTable10, flag13, numberValue13, flag14, numberValue16, numberValue2, numberValue4, numberValue6, numberValue7, numberValue8, playerPed, serverEventCall, textValue, textValue2, workValue6, workValue8, workValue10, numberValue10, flag8, flag9, numberValue11, flag10, workValue12, workValue14, flag11)
        if numberValue9 then
          flag12 = IsEntityAPed
          workValue15 = textValue6
          flag12 = flag12(workValue15)
          if flag12 then
            flag12 = rageUiCall2.handle
            if textValue6 ~= flag12 then
              flag12 = DrawScaleformMovieFullscreen
              workValue15 = waitCall
              dataTable10 = 255
              flag13 = 255
              numberValue13 = 255
              flag14 = 255
              numberValue16 = 0
              flag12(workValue15, dataTable10, flag13, numberValue13, flag14, numberValue16)
              flag12 = GetEntityCoords
              workValue15 = textValue6
              dataTable10 = true
              -- Beginner: result below is entityCoords.
              flag12 = flag12(workValue15, dataTable10)
              workValue15 = rageUiCall
              dataTable10 = 0.5
              workValue15 = workValue15(dataTable10)
              dataTable10 = DrawMarker
              flag13 = 1
              numberValue13 = flag12.x
              flag14 = flag12.y
              numberValue16 = flag12.z
              numberValue16 = numberValue16 - 1.02
              numberValue2 = 0
              numberValue4 = 0
              numberValue6 = 0
              numberValue7 = 0
              numberValue8 = 0
              playerPed = 0
              serverEventCall = 0.7
              textValue = 0.7
              textValue2 = 1.5
              workValue6 = workValue15.r
              workValue8 = workValue15.g
              workValue10 = workValue15.b
              numberValue10 = 200
              flag8 = false
              flag9 = false
              numberValue11 = 2
              flag10 = false
              workValue12 = nil
              workValue14 = nil
              flag11 = false
              dataTable10(flag13, numberValue13, flag14, numberValue16, numberValue2, numberValue4, numberValue6, numberValue7, numberValue8, playerPed, serverEventCall, textValue, textValue2, workValue6, workValue8, workValue10, numberValue10, flag8, flag9, numberValue11, flag10, workValue12, workValue14, flag11)
              dataTable10 = IsControlJustPressed
              flag13 = 1
              numberValue13 = 18
              dataTable10 = dataTable10(flag13, numberValue13)
              if dataTable10 then
                dataTable10 = SetCanAttackFriendly
                flag13 = rageUiCall2.handle
                numberValue13 = true
                flag14 = true
                dataTable10(flag13, numberValue13, flag14)
                dataTable10 = TaskCombatPed
                flag13 = rageUiCall2.handle
                numberValue13 = textValue6
                flag14 = 0
                numberValue16 = 16
                dataTable10(flag13, numberValue13, flag14, numberValue16)
                rageUiCall2.isAttacking = true
                dataTable10 = CMG
                dataTable10 = dataTable10.setupDogScaleform
                flag13 = "instructional_buttons"
                dataTable10 = dataTable10(flag13)
                waitCall = dataTable10
                dataTable10 = textValue10
                flag13 = dataTable7.Info
                numberValue13 = "Attack has started, press ~b~DEL ~s~to stop the attack."
                dataTable10(flag13, numberValue13)
                numberValue9 = false
                while true do
                  dataTable10 = DrawScaleformMovieFullscreen
                  flag13 = waitCall
                  numberValue13 = 255
                  flag14 = 255
                  numberValue16 = 255
                  numberValue2 = 255
                  numberValue4 = 0
                  dataTable10(flag13, numberValue13, flag14, numberValue16, numberValue2, numberValue4)
                  if false == numberValue9 then
                    dataTable10 = GetEntityCoords
                    flag13 = textValue6
                    numberValue13 = true
                    -- Beginner: result below is entityCoords.
                    dataTable10 = dataTable10(flag13, numberValue13)
                    flag13 = GetEntityCoords
                    numberValue13 = rageUiCall2.handle
                    flag14 = true
                    -- Beginner: result below is entityCoords.
                    flag13 = flag13(numberValue13, flag14)
                    numberValue13 = flag13 - dataTable10
                    numberValue13 = #numberValue13
                    if numberValue13 < 2.0 then
                      flag14 = GetActivePlayers
                      flag14 = flag14()
                      numberValue16 = pairs
                      numberValue2 = flag14
                      numberValue16, numberValue2, numberValue4, numberValue6 = numberValue16(numberValue2)
                      for numberValue7, numberValue8 in numberValue16, numberValue2, numberValue4, numberValue6 do
                        playerPed = GetPlayerPed
                        serverEventCall = numberValue8
                        -- Beginner: result below is playerPed.
                        playerPed = playerPed(serverEventCall)
                        if textValue6 == playerPed then
                          playerPed = GetPlayerServerId
                          serverEventCall = numberValue8
                          -- Beginner: result below is serverId.
                          playerPed = playerPed(serverEventCall)
                          serverEventCall = TriggerServerEvent
                          textValue = "9c88f7070e"
                          textValue2 = "Instructed dog to attack ID: "
                          workValue6 = playerPed
                          textValue2 = textValue2 .. workValue6
                          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c88f7070e".
                          serverEventCall(textValue, textValue2)
                          serverEventCall = TriggerServerEvent
                          textValue = "d033961afd"
                          textValue2 = playerPed
                          serverEventCall(textValue, textValue2)
                          numberValue9 = true
                          serverEventCall = Wait
                          textValue = 1000
                          serverEventCall(textValue)
                          serverEventCall = ClearPedTasksImmediately
                          textValue = rageUiCall2.handle
                          serverEventCall(textValue)
                          serverEventCall = dataTable6.Follow
                          rageUiCall2.currentAction = serverEventCall
                          serverEventCall = dataTable9
                          -- Beginner: Register a network event handler that the server/other clients can trigger.
                          serverEventCall()
                          serverEventCall = textValue10
                          textValue = dataTable7.Alert
                          textValue2 = "The attack has successfully finished."
                          serverEventCall(textValue, textValue2)
                          break
                        end
                      end
                    end
                  end
                  dataTable10 = IsControlJustPressed
                  flag13 = 1
                  numberValue13 = 178
                  dataTable10 = dataTable10(flag13, numberValue13)
                  if dataTable10 then
                    dataTable10 = ClearPedTasksImmediately
                    flag13 = rageUiCall2.handle
                    dataTable10(flag13)
                    dataTable10 = textValue10
                    flag13 = dataTable7.Alert
                    numberValue13 = "You have now stopped the attack."
                    dataTable10(flag13, numberValue13)
                    dataTable10 = dataTable6.Follow
                    rageUiCall2.currentAction = dataTable10
                    dataTable10 = dataTable9
                    -- Beginner: Register a network event handler that the server/other clients can trigger.
                    dataTable10()
                    break
                  end
                  dataTable10 = Wait
                  flag13 = 0
                  dataTable10(flag13)
                end
                dataTable10 = SetCanAttackFriendly
                flag13 = rageUiCall2.handle
                numberValue13 = false
                flag14 = false
                dataTable10(flag13, numberValue13, flag14)
                rageUiCall2.isAttacking = false
                break
              else
                dataTable10 = IsControlJustPressed
                flag13 = 1
                numberValue13 = 178
                dataTable10 = dataTable10(flag13, numberValue13)
                if dataTable10 then
                  dataTable10 = dataTable9
                  -- Beginner: Register a network event handler that the server/other clients can trigger.
                  dataTable10()
                  break
                end
              end
            end
          end
        end
      else
        break
      end
      numberValue9 = Wait
      textValue6 = 0
      numberValue9(textValue6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
eventRegistration = eventRegistration3
eventRegistration3 = RegisterNetEvent
workValue11 = "f89085dfdd"
-- Beginner: this function handles network event "f89085dfdd".
function workValue13(arg1)
  local arg2, arg3, cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5, flag6
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  cmgCall = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(cmgCall)
  if 0 == arg3 then
    return
  end
  cmgCall = rageUiCall2.active
  if cmgCall then
    cmgCall = DoesEntityExist
    textValue8 = rageUiCall2.handle
    cmgCall = cmgCall(textValue8)
    if cmgCall then
      goto flow_label_22
    end
  end
  return
  ::flow_label_22::
  cmgCall = rageUiCall2.currentAction
  textValue8 = dataTable6.SearchNearby
  if cmgCall ~= textValue8 then
    return
  end
  cmgCall = dataTable6.Indicate
  rageUiCall2.currentAction = cmgCall
  cmgCall = notify
  textValue8 = "~b~Your dog starts indicating."
  -- Beginner: Show a notification to the player.
  cmgCall(textValue8)
  cmgCall = ClearPedTasks
  textValue8 = rageUiCall2.handle
  cmgCall(textValue8)
  cmgCall = 0
  while true do
    textValue8 = rageUiCall2.currentAction
    cmgCall2 = dataTable6.Indicate
    if textValue8 ~= cmgCall2 then
      break
    end
    textValue8 = DoesEntityExist
    cmgCall2 = arg3
    textValue8 = textValue8(cmgCall2)
    if not textValue8 then
      break
    end
    textValue8 = GetEntityCoords
    cmgCall2 = arg3
    textValue9 = true
    -- Beginner: result below is entityCoords.
    textValue8 = textValue8(cmgCall2, textValue9)
    cmgCall2 = GetEntityCoords
    textValue9 = rageUiCall2.handle
    cmgCall3 = true
    -- Beginner: result below is entityCoords.
    cmgCall2 = cmgCall2(textValue9, cmgCall3)
    textValue8 = textValue8 - cmgCall2
    textValue8 = #textValue8
    cmgCall2 = 1.5
    if textValue8 > cmgCall2 then
      cmgCall2 = GetScriptTaskStatus
      textValue9 = rageUiCall2.handle
      cmgCall3 = 1056466932
      cmgCall2 = cmgCall2(textValue9, cmgCall3)
      if 7 == cmgCall2 then
        cmgCall2 = TaskFollowToOffsetOfEntity
        textValue9 = rageUiCall2.handle
        cmgCall3 = arg3
        workValue18 = 0.0
        flag15 = 0.0
        numberValue = 0.0
        flag2 = 7.0
        flag3 = -1
        dataTable2 = 2.0
        flag4 = true
        cmgCall2(textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4)
        cmgCall = 0
      end
    else
      cmgCall2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgCall2 = cmgCall2()
      cmgCall2 = cmgCall2 - cmgCall
      textValue9 = 3500
      if cmgCall2 > textValue9 then
        cmgCall2 = IsEntityPlayingAnim
        textValue9 = rageUiCall2.handle
        cmgCall3 = dataTable8.Sit
        cmgCall3 = cmgCall3.dict
        workValue18 = dataTable8.Sit
        workValue18 = workValue18.anims
        workValue18 = workValue18.base
        flag15 = 3
        cmgCall2 = cmgCall2(textValue9, cmgCall3, workValue18, flag15)
        if not cmgCall2 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.loadAnimDict
          textValue9 = dataTable8.Sit
          textValue9 = textValue9.dict
          -- Beginner: Load a GTA animation dictionary before using it.
          cmgCall2(textValue9)
          cmgCall2 = TaskPlayAnim
          textValue9 = rageUiCall2.handle
          cmgCall3 = dataTable8.Sit
          cmgCall3 = cmgCall3.dict
          workValue18 = dataTable8.Sit
          workValue18 = workValue18.anims
          workValue18 = workValue18.base
          flag15 = 8.0
          numberValue = -8.0
          flag2 = -1
          flag3 = 2
          dataTable2 = 0.0
          flag4 = false
          flag5 = false
          flag6 = false
          -- Beginner: Play an animation on a ped.
          cmgCall2(textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5, flag6)
          cmgCall2 = RemoveAnimDict
          textValue9 = dataTable8.Sit
          textValue9 = textValue9.dict
          cmgCall2(textValue9)
        end
      else
        cmgCall2 = GetScriptTaskStatus
        textValue9 = rageUiCall2.handle
        cmgCall3 = -875674219
        cmgCall2 = cmgCall2(textValue9, cmgCall3)
        if 7 == cmgCall2 then
          cmgCall2 = TaskTurnPedToFaceEntity
          textValue9 = rageUiCall2.handle
          cmgCall3 = arg3
          workValue18 = 4000
          cmgCall2(textValue9, cmgCall3, workValue18)
          cmgCall2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          cmgCall2 = cmgCall2()
          cmgCall = cmgCall2
        end
      end
    end
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue9 = 0
    cmgCall2(textValue9)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f89085dfdd".
eventRegistration3(workValue11, workValue13)
eventRegistration3 = RegisterNetEvent
workValue11 = "d63a2502ab"
-- Beginner: this function handles network event "d63a2502ab".
function workValue13(arg1, arg2, arg3)
  local cmgCall, textValue8, cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5
  cmgCall = dataTable6.SearchVehicle
  rageUiCall2.currentAction = cmgCall
  cmgCall = NetworkDoesNetworkIdExist
  textValue8 = arg1
  cmgCall = cmgCall(textValue8)
  if not cmgCall then
    return
  end
  cmgCall = NetworkGetEntityFromNetworkId
  textValue8 = arg1
  cmgCall = cmgCall(textValue8)
  if 0 == cmgCall then
    return
  end
  textValue8 = rageUiCall2
  if textValue8 then
    textValue8 = rageUiCall2.active
    if textValue8 then
      textValue8 = DoesEntityExist
      cmgCall2 = rageUiCall2.handle
      textValue8 = textValue8(cmgCall2)
      if textValue8 then
        goto flow_label_27
      end
    end
  end
  return
  ::flow_label_27::
  textValue8 = textValue10
  cmgCall2 = dataTable7.Info
  textValue9 = "Your dog is now searching the vehicle."
  textValue8(cmgCall2, textValue9)
  textValue8 = TaskFollowToOffsetOfEntity
  cmgCall2 = rageUiCall2.handle
  textValue9 = cmgCall
  cmgCall3 = 0.0
  workValue18 = 0.0
  flag15 = 0.0
  numberValue = 7.0
  flag2 = -1
  flag3 = 2.0
  dataTable2 = true
  textValue8(cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2)
  textValue8 = Citizen
  textValue8 = textValue8.Wait
  cmgCall2 = 8000
  textValue8(cmgCall2)
  textValue8 = rageUiCall2
  if textValue8 then
    textValue8 = rageUiCall2.active
    if textValue8 then
      textValue8 = DoesEntityExist
      cmgCall2 = rageUiCall2.handle
      textValue8 = textValue8(cmgCall2)
      if textValue8 then
        goto flow_label_58
      end
    end
  end
  return
  ::flow_label_58::
  if arg2 or arg3 then
    textValue8 = textValue10
    cmgCall2 = dataTable7.Alert
    textValue9 = "Your dog is indicating!"
    textValue8(cmgCall2, textValue9)
    textValue8 = CMG
    textValue8 = textValue8.loadAnimDict
    cmgCall2 = dataTable8.Sit
    cmgCall2 = cmgCall2.dict
    -- Beginner: Load a GTA animation dictionary before using it.
    textValue8(cmgCall2)
    textValue8 = TaskPlayAnim
    cmgCall2 = rageUiCall2.handle
    textValue9 = dataTable8.Sit
    textValue9 = textValue9.dict
    cmgCall3 = dataTable8.Sit
    cmgCall3 = cmgCall3.anims
    cmgCall3 = cmgCall3.base
    workValue18 = 8.0
    flag15 = -8.0
    numberValue = -1
    flag2 = 2
    flag3 = 0.0
    dataTable2 = false
    flag4 = false
    flag5 = false
    -- Beginner: Play an animation on a ped.
    textValue8(cmgCall2, textValue9, cmgCall3, workValue18, flag15, numberValue, flag2, flag3, dataTable2, flag4, flag5)
    textValue8 = RemoveAnimDict
    cmgCall2 = dataTable8.Sit
    cmgCall2 = cmgCall2.dict
    textValue8(cmgCall2)
  else
    textValue8 = textValue10
    cmgCall2 = dataTable7.Info
    textValue9 = "Your dog did not indicate."
    textValue8(cmgCall2, textValue9)
    textValue8 = ClearPedTasks
    cmgCall2 = rageUiCall2.handle
    textValue8(cmgCall2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d63a2502ab".
eventRegistration3(workValue11, workValue13)