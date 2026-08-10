--[[
    Beginner Guide: cl_manhunt.lua
    ==============================

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
    BEGINNER GUIDE — Manhunt
    ========================

    File: cmg/prod/client/events/cl_manhunt.lua
    Purpose: This file contains event/minigame logic.

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

    Config/data used:
      * cfg/events/cfg_manhunt

    Network/hash identifiers found: 8
      They are intentionally left unchanged because matching server code may use them.
      * e69f053374
      * ea7595f298
      * 29ff279987
      * 5d4175e240
      * 821e2325c4
      * 893a2a1aff
      * c387394ea4
      * 3e5fdec374

    Example player-facing text in this file:
      * You are a ~r~hunter~w~. Hit a player to kill them

]]
local cmgCall, dataTable, cmgCall2, workValue13, workValue14, eventRegistration, textValue3, eventRegistration2, textValue4, eventRegistration3, textValue, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, threadCall, workValue12
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/events/cfg_manhunt"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
cmgCall2 = CMG
cmgCall2 = cmgCall2.createTimerBars
-- Beginner: result below is timerBars.
cmgCall2 = cmgCall2()
function workValue13()
  local arg1, arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12
  arg1 = SetPedIntoVehicle
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.vehicle
  numberValue = -1
  arg1(arg2, arg3, numberValue)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = dataTable
  while true do
    arg3 = NetworkHasControlOfEntity
    numberValue = dataTable.vehicle
    arg3 = arg3(numberValue)
    if arg3 then
      break
    end
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg1
    numberValue = 2000
    if not (arg3 < numberValue) then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue = 0
    arg3(numberValue)
    arg3 = dataTable
    if arg2 ~= arg3 then
      return
    end
  end
  arg3 = dataTable.position
  if nil == arg3 then
    arg3 = print
    numberValue = "[Manhunt] Deleting vehicle on spawn, no position was set."
    arg3(numberValue)
    arg3 = DeleteEntity
    numberValue = dataTable.vehicle
    -- Beginner: Delete a GTA entity.
    arg3(numberValue)
    return
  end
  arg3 = SetEntityCoordsNoOffset
  numberValue = dataTable.vehicle
  flag7 = dataTable.position
  flag7 = flag7.x
  flag8 = dataTable.position
  flag8 = flag8.y
  numberValue5 = dataTable.position
  numberValue5 = numberValue5.z
  flag10 = true
  flag11 = false
  flag12 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12)
  arg3 = SetVehicleOnGroundProperly
  numberValue = dataTable.vehicle
  arg3(numberValue)
  arg3 = FreezeEntityPosition
  numberValue = dataTable.vehicle
  flag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(numberValue, flag7)
  arg3 = SetVehRadioStation
  numberValue = dataTable.vehicle
  flag7 = "OFF"
  arg3(numberValue, flag7)
  arg3 = SetVehicleRadioEnabled
  numberValue = dataTable.vehicle
  flag7 = false
  arg3(numberValue, flag7)
end
function workValue14(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11
  arg2 = 0
  arg3 = pairs
  numberValue = currentEvent
  numberValue = numberValue.players
  arg3, numberValue, flag7, flag8 = arg3(numberValue)
  for numberValue5, flag10 in arg3, numberValue, flag7, flag8 do
    flag11 = flag10.team
    if flag11 == arg1 then
      arg2 = arg2 + 1
    end
  end
  return arg2
end
eventRegistration = RegisterNetEvent
textValue3 = "e69f053374"
-- Beginner: this function handles network event "e69f053374".
function eventRegistration2(arg1)
  local arg2, arg3, numberValue
  arg2 = dataTable
  while true do
    arg3 = DoesEntityExist
    numberValue = dataTable.vehicle
    arg3 = arg3(numberValue)
    if arg3 then
      break
    end
    arg3 = NetworkDoesEntityExistWithNetworkId
    numberValue = arg1
    arg3 = arg3(numberValue)
    if arg3 then
      arg3 = NetworkGetEntityFromNetworkId
      numberValue = arg1
      arg3 = arg3(numberValue)
      dataTable.vehicle = arg3
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    numberValue = 0
    arg3(numberValue)
    arg3 = dataTable
    if arg2 ~= arg3 then
      return
    end
  end
  arg3 = workValue13
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e69f053374".
eventRegistration(textValue3, eventRegistration2)
eventRegistration = RegisterNetEvent
textValue3 = "ea7595f298"
-- Beginner: this function handles network event "ea7595f298".
function eventRegistration2(arg1, arg2, arg3)
  local numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12, flag, flag3, flag5
  numberValue = {}
  dataTable = numberValue
  numberValue = currentEvent
  numberValue.drawPlayersTimeBar = false
  numberValue = SetPlayerControl
  flag7 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  flag7 = flag7()
  flag8 = false
  numberValue5 = 0
  numberValue(flag7, flag8, numberValue5)
  numberValue = cmgCall.locations
  numberValue = numberValue[arg1]
  flag7 = numberValue.vehicles
  dataTable.vehicles = flag7
  flag7 = numberValue.bounds
  dataTable.bounds = flag7
  flag7 = CMG
  flag7 = flag7.setEventMusic
  flag8 = "AH3B_EVADE_COPS_RT"
  flag7(flag8)
  flag7 = CMG
  flag7 = flag7.loadClientRockstarMap
  flag8 = arg2
  flag7(flag8)
  flag7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag7 = flag7()
  flag8 = SetEntityCoordsNoOffset
  numberValue5 = flag7
  flag10 = arg3.x
  flag11 = arg3.y
  flag12 = arg3.z
  flag = true
  flag3 = false
  flag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag8(numberValue5, flag10, flag11, flag12, flag, flag3, flag5)
  flag8 = SetEntityHeading
  numberValue5 = flag7
  flag10 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  flag8(numberValue5, flag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ea7595f298".
eventRegistration(textValue3, eventRegistration2)
eventRegistration = RegisterNetEvent
textValue3 = "29ff279987"
-- Beginner: this function handles network event "29ff279987".
function eventRegistration2(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10
  arg2 = CMG
  arg2 = arg2.stopEventSequence
  arg2()
  arg2 = BusyspinnerOff
  arg2()
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  numberValue = true
  flag7 = 0
  arg2(arg3, numberValue, flag7)
  arg2 = CMG
  arg2 = arg2.startVehicleSelection
  arg3 = arg1.xyz
  numberValue = arg1.w
  flag7 = dataTable.vehicles
  flag8 = 20
  function numberValue5(arg12)
    local serverEventCall, textValue2, numberValue2
    serverEventCall = TriggerServerEvent
    textValue2 = "5d4175e240"
    numberValue2 = arg12
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d4175e240".
    serverEventCall(textValue2, numberValue2)
  end
  flag10 = nil
  arg2(arg3, numberValue, flag7, flag8, numberValue5, flag10)
  dataTable.state = "SELECT"
  dataTable.position = arg1
  arg2 = CMG
  arg2 = arg2.setEventRespawnPosition
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "29ff279987".
eventRegistration(textValue3, eventRegistration2)
function eventRegistration(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, numberValue, flag7 = arg2(arg3)
  for flag8, numberValue5 in arg2, arg3, numberValue, flag7 do
    flag10 = numberValue5.source
    if flag10 == arg1 then
      flag10 = numberValue5.team
      if "civilian" == flag10 then
        flag10 = 3
        return flag10
      else
        flag10 = 1
        return flag10
      end
    end
  end
end
function textValue3(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, numberValue, flag7 = arg2(arg3)
  for flag8, numberValue5 in arg2, arg3, numberValue, flag7 do
    flag10 = numberValue5.source
    if flag10 == arg1 then
      flag10 = numberValue5.team
      if "civilian" == flag10 then
        flag10 = 9
        return flag10
      else
        flag10 = 6
        return flag10
      end
    end
  end
end
eventRegistration2 = RegisterNetEvent
textValue4 = "821e2325c4"
-- Beginner: this function handles network event "821e2325c4".
function eventRegistration3(arg1)
  local arg2, arg3, numberValue, flag7
  arg2 = CMG
  arg2 = arg2.endVehicleSelection
  arg2()
  arg2 = SetFollowPedCamViewMode
  arg3 = 2
  arg2(arg3)
  arg2 = ExecuteCommand
  arg3 = "showui"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerBlips
  arg3 = true
  numberValue = eventRegistration
  arg2(arg3, numberValue)
  arg2 = CMG
  arg2 = arg2.enableMinigamePlayerTags
  arg3 = true
  numberValue = false
  flag7 = textValue3
  arg2(arg3, numberValue, flag7)
  dataTable.state = "BEFORE_START"
  arg2 = CMG
  arg2 = arg2.showCountdownTimer
  arg3 = 3
  arg2(arg3)
  arg2 = dataTable.state
  if "BEFORE_START" ~= arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.setPlayerCanOpenLeaderboard
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setMinigameBounds
  arg3 = dataTable.bounds
  arg2(arg3)
  dataTable.state = "START"
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  dataTable.startTime = arg2
  dataTable.gameTime = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "821e2325c4".
eventRegistration2(textValue4, eventRegistration3)
function eventRegistration2(arg1)
  local arg2, arg3, numberValue, flag7, flag8
  arg2 = GetPlayerFromServerId
  arg3 = arg1.source
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  arg3 = dataTable.state
  if "START" ~= arg3 or -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  numberValue = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(numberValue)
  if 0 == arg3 then
    return
  end
  numberValue = GetVehiclePedIsUsing
  flag7 = arg3
  numberValue = numberValue(flag7)
  if 0 == numberValue then
    return
  end
  flag7 = Citizen
  flag7 = flag7.CreateThreadNow
  function flag8()
    local arg12, serverEventCall, textValue2, numberValue2, numberValue3, numberValue4, flag9, numberValue6, numberValue7, numberValue8, flag2, flag4, flag6
    arg12 = CMG
    arg12 = arg12.loadPtfx
    serverEventCall = "scr_as_trans"
    arg12(serverEventCall)
    arg12 = UseParticleFxAsset
    serverEventCall = "scr_as_trans"
    arg12(serverEventCall)
    arg12 = StartParticleFxLoopedOnEntity
    serverEventCall = "scr_as_trans_smoke"
    textValue2 = numberValue
    numberValue2 = 0.0
    numberValue3 = 0.0
    numberValue4 = 0.0
    flag9 = 0.0
    numberValue6 = 0.0
    numberValue7 = 0.0
    numberValue8 = 2.0
    flag2 = false
    flag4 = false
    flag6 = false
    arg12 = arg12(serverEventCall, textValue2, numberValue2, numberValue3, numberValue4, flag9, numberValue6, numberValue7, numberValue8, flag2, flag4, flag6)
    serverEventCall = SetParticleFxLoopedColour
    textValue2 = arg12
    numberValue2 = 1.0
    numberValue3 = 0.0
    numberValue4 = 0.0
    flag9 = false
    serverEventCall(textValue2, numberValue2, numberValue3, numberValue4, flag9)
    serverEventCall = Citizen
    serverEventCall = serverEventCall.Wait
    textValue2 = 3000
    serverEventCall(textValue2)
    serverEventCall = StopParticleFxLooped
    textValue2 = arg12
    numberValue2 = false
    serverEventCall(textValue2, numberValue2)
    serverEventCall = RemoveNamedPtfxAsset
    textValue2 = "scr_as_trans"
    serverEventCall(textValue2)
  end
  flag7(flag8)
end
function textValue4(arg1)
  local arg2, arg3
  arg2 = arg1.blip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.blip
    arg2(arg3)
    arg1.blip = nil
  end
  arg2 = arg1.tag
  if arg2 then
    arg2 = RemoveMpGamerTag
    arg3 = arg1.tag
    arg2(arg3)
    arg1.tag = nil
  end
end
eventRegistration3 = RegisterNetEvent
textValue = "893a2a1aff"
-- Beginner: this function handles network event "893a2a1aff".
function workValue(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, numberValue, flag7 = arg2(arg3)
  for flag8, numberValue5 in arg2, arg3, numberValue, flag7 do
    flag10 = table
    flag10 = flag10.has
    flag11 = arg1
    flag12 = numberValue5.source
    flag10 = flag10(flag11, flag12)
    if flag10 then
      flag10 = numberValue5.team
      if "hunter" ~= flag10 then
        numberValue5.team = "hunter"
        flag10 = textValue4
        flag11 = numberValue5
        flag10(flag11)
        flag10 = eventRegistration2
        flag11 = numberValue5
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        flag10(flag11)
      end
    else
      flag10 = numberValue5.team
      if "civilian" ~= flag10 then
        numberValue5.team = "civilian"
        flag10 = textValue4
        flag11 = numberValue5
        flag10(flag11)
        flag10 = eventRegistration2
        flag11 = numberValue5
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        flag10(flag11)
      end
    end
  end
end
eventRegistration3(textValue, workValue)
eventRegistration3 = RegisterNetEvent
textValue = "c387394ea4"
-- Beginner: this function handles network event "c387394ea4".
function workValue(arg1)
  local arg2
  dataTable.gameTime = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c387394ea4".
eventRegistration3(textValue, workValue)
-- Beginner: this function handles network event "c387394ea4".
function eventRegistration3()
  local arg1, arg2, arg3, numberValue
  arg1 = SetCurrentPedWeapon
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = -1569615261
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 21
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 23
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 47
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 58
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 75
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 140
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 141
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 142
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 143
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 257
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 263
  numberValue = true
  arg1(arg2, arg3, numberValue)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 264
  numberValue = true
  arg1(arg2, arg3, numberValue)
end
function textValue(arg1, arg2)
  local arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12, flag, flag3, flag5
  arg3 = arg1.team
  if "civilian" == arg3 then
    arg3 = SetVehicleColours
    numberValue = arg2
    flag7 = 64
    flag8 = 64
    arg3(numberValue, flag7, flag8)
  else
    arg3 = SetVehicleColours
    numberValue = arg2
    flag7 = 29
    flag8 = 29
    arg3(numberValue, flag7, flag8)
  end
  arg3 = dataTable.state
  if "START" ~= arg3 then
    arg3 = FreezeEntityPosition
    numberValue = arg2
    flag7 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(numberValue, flag7)
  else
    arg3 = arg1.team
    if "civilian" == arg3 then
      arg3 = FreezeEntityPosition
      numberValue = arg2
      flag7 = false
      arg3(numberValue, flag7)
    else
      arg3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg3 = arg3()
      numberValue = dataTable.startTime
      arg3 = arg3 - numberValue
      numberValue = 20000
      if arg3 > numberValue then
        arg3 = FreezeEntityPosition
        numberValue = arg2
        flag7 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        arg3(numberValue, flag7)
      else
        arg3 = FreezeEntityPosition
        numberValue = arg2
        flag7 = true
        arg3(numberValue, flag7)
      end
    end
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  numberValue = SetEntityProofs
  flag7 = arg3
  flag8 = true
  numberValue5 = true
  flag10 = true
  flag11 = true
  flag12 = true
  flag = true
  flag3 = true
  flag5 = true
  numberValue(flag7, flag8, numberValue5, flag10, flag11, flag12, flag, flag3, flag5)
  numberValue = SetVehicleEngineOn
  flag7 = arg2
  flag8 = true
  numberValue5 = true
  flag10 = false
  numberValue(flag7, flag8, numberValue5, flag10)
end
function workValue(arg1, arg2)
  local arg3, numberValue, flag7, flag8
  arg3 = HasEntityBeenDamagedByEntity
  numberValue = arg1
  flag7 = arg2
  flag8 = true
  arg3 = arg3(numberValue, flag7, flag8)
  if not arg3 then
    arg3 = HasEntityBeenDamagedByEntity
    numberValue = arg2
    flag7 = arg1
    flag8 = true
    arg3 = arg3(numberValue, flag7, flag8)
    if not arg3 then
      arg3 = IsEntityTouchingEntity
      numberValue = arg1
      flag7 = arg2
      arg3 = arg3(numberValue, flag7)
      if not arg3 then
        arg3 = IsEntityTouchingEntity
        numberValue = arg2
        flag7 = arg1
        arg3 = arg3(numberValue, flag7)
      end
    end
  end
  return arg3
end
function workValue2(arg1)
  local arg2, arg3
  arg2 = arg1.lastCaptured
  if not arg2 then
    arg2 = true
    return arg2
  else
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg3 = arg1.lastCaptured
    arg2 = arg2 - arg3
    arg3 = 1000
    arg2 = arg2 > arg3
    return arg2
  end
end
function workValue3(arg1, arg2)
  local arg3, numberValue, flag7, flag8, numberValue5, flag10
  arg3 = arg1.team
  if "civilian" == arg3 then
    arg3 = workValue2
    numberValue = arg1
    arg3 = arg3(numberValue)
    if arg3 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg3 = GetPlayerFromServerId
  numberValue = arg1.source
  -- Beginner: result below is playerIndex.
  arg3 = arg3(numberValue)
  if -1 == arg3 then
    return
  end
  numberValue = GetPlayerPed
  flag7 = arg3
  -- Beginner: result below is playerPed.
  numberValue = numberValue(flag7)
  if 0 == numberValue then
    return
  end
  flag7 = GetVehiclePedIsUsing
  flag8 = numberValue
  flag7 = flag7(flag8)
  if 0 == flag7 then
    return
  end
  flag8 = workValue
  numberValue5 = flag7
  flag10 = arg2
  flag8 = flag8(numberValue5, flag10)
  if not flag8 then
    return
  end
  flag8 = ClearEntityLastDamageEntity
  numberValue5 = flag7
  flag8(numberValue5)
  flag8 = ClearEntityLastDamageEntity
  numberValue5 = arg2
  flag8(numberValue5)
  flag8 = TriggerServerEvent
  numberValue5 = "3e5fdec374"
  flag10 = arg1.source
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3e5fdec374".
  flag8(numberValue5, flag10)
  flag8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag8 = flag8()
  arg1.lastCaptured = flag8
end
function workValue4(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12
  arg2 = pairs
  arg3 = currentEvent
  arg3 = arg3.players
  arg2, arg3, numberValue, flag7 = arg2(arg3)
  for flag8, numberValue5 in arg2, arg3, numberValue, flag7 do
    flag10 = workValue3
    flag11 = numberValue5
    flag12 = arg1
    flag10(flag11, flag12)
  end
end
function workValue5(arg1, arg2)
  local arg3, numberValue, flag7, flag8, numberValue5, flag10, flag11, flag12
  arg3 = dataTable.countdownScaleform
  if not arg3 then
    arg3 = RequestScaleformMovie
    numberValue = "mp_big_message_freemode"
    -- Beginner: result below is scaleformHandle.
    arg3 = arg3(numberValue)
    dataTable.countdownScaleform = arg3
  else
    arg3 = HasScaleformMovieLoaded
    numberValue = dataTable.countdownScaleform
    arg3 = arg3(numberValue)
    if not arg3 then
      return
    end
  end
  arg3 = cmgCall.startHunterDelay
  numberValue = math
  numberValue = numberValue.floor
  flag7 = arg2 / 1000
  numberValue = numberValue(flag7)
  arg3 = arg3 - numberValue
  numberValue = BeginScaleformMovieMethod
  flag7 = dataTable.countdownScaleform
  flag8 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  numberValue(flag7, flag8)
  numberValue = arg1.team
  if "hunter" == numberValue then
    numberValue = _ENV
    flag7 = "ScaleformMovieMethodAddParamTextureNameString"
    numberValue = numberValue[flag7]
    flag7 = "~r~YOU ARE A HUNTER"
    numberValue(flag7)
    numberValue = _ENV
    flag7 = "ScaleformMovieMethodAddParamTextureNameString"
    numberValue = numberValue[flag7]
    flag7 = string
    flag7 = flag7.format
    flag8 = "Chase begins in %d seconds"
    numberValue5 = arg3
    flag7, flag8, numberValue5, flag10, flag11, flag12 = flag7(flag8, numberValue5)
    numberValue(flag7, flag8, numberValue5, flag10, flag11, flag12)
  else
    numberValue = _ENV
    flag7 = "ScaleformMovieMethodAddParamTextureNameString"
    numberValue = numberValue[flag7]
    flag7 = "~r~GET READY"
    numberValue(flag7)
    numberValue = _ENV
    flag7 = "ScaleformMovieMethodAddParamTextureNameString"
    numberValue = numberValue[flag7]
    flag7 = string
    flag7 = flag7.format
    flag8 = "Hunters released in %d seconds"
    numberValue5 = arg3
    flag7, flag8, numberValue5, flag10, flag11, flag12 = flag7(flag8, numberValue5)
    numberValue(flag7, flag8, numberValue5, flag10, flag11, flag12)
  end
  numberValue = ScaleformMovieMethodAddParamInt
  flag7 = 7
  numberValue(flag7)
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = DrawScaleformMovieFullscreen
  flag7 = dataTable.countdownScaleform
  flag8 = 255
  numberValue5 = 255
  flag10 = 255
  flag11 = 255
  flag12 = 0
  numberValue(flag7, flag8, numberValue5, flag10, flag11, flag12)
end
function workValue6(arg1)
  local arg2, arg3
  arg2 = SetScaleformMovieAsNoLongerNeeded
  arg3 = dataTable.countdownScaleform
  arg2(arg3)
  dataTable.countdownScaleform = nil
  arg2 = arg1.team
  if "civilian" == arg2 then
    arg2 = notify
    arg3 = "The hunters have now been released, be on the lookout!"
    -- Beginner: Show a notification to the player.
    arg2(arg3)
  else
    arg2 = notify
    arg3 = "The chase begins, you can now hunt people down!"
    arg2(arg3)
  end
end
function workValue7(arg1)
  local arg2, arg3, numberValue, flag7, flag8
  arg2 = arg1.team
  if "civilian" == arg2 then
    arg2 = workValue14
    arg3 = "hunter"
    arg2 = arg2(arg3)
    if arg2 > 1 then
      arg2 = "hunters"
      if arg2 then
        goto flow_label_13
      end
    end
    arg2 = "hunter"
    ::flow_label_13::
    arg3 = drawNativeText
    numberValue = string
    numberValue = numberValue.format
    flag7 = "Escape the ~r~%s~w~"
    flag8 = arg2
    numberValue, flag7, flag8 = numberValue(flag7, flag8)
    -- Beginner: Draw GTA-style text on screen.
    arg3(numberValue, flag7, flag8)
  else
    arg2 = drawNativeText
    arg3 = "You are a ~r~hunter~w~. Hit a player to kill them"
    arg2(arg3)
  end
end
function workValue8(arg1)
  local arg2, arg3, numberValue, flag7, flag8
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1 / 60
  arg2 = arg2(arg3)
  if arg2 > 0 then
    arg3 = string
    arg3 = arg3.format
    numberValue = "%02d:%02d"
    flag7 = arg2
    flag8 = arg2 * 60
    flag8 = arg1 - flag8
    return arg3(numberValue, flag7, flag8)
  else
    arg3 = string
    arg3 = arg3.format
    numberValue = "%02d"
    flag7 = arg1
    return arg3(numberValue, flag7)
  end
end
function workValue9(arg1)
  local arg2, arg3, numberValue, flag7, flag8, numberValue5
  arg2 = dataTable.winnerFound
  if arg2 then
    return
  end
  arg2 = cmgCall2.reset
  arg2()
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = dataTable.startTime
  arg2 = arg2 - arg3
  arg3 = 20000
  if arg2 < arg3 then
    arg3 = workValue5
    numberValue = arg1
    flag7 = arg2
    arg3(numberValue, flag7)
  else
    arg3 = dataTable.countdownScaleform
    if arg3 then
      arg3 = workValue6
      numberValue = arg1
      arg3(numberValue)
    else
      arg3 = workValue7
      numberValue = arg1
      arg3(numberValue)
    end
  end
  arg3 = cmgCall2.push
  numberValue = "~b~CIVILIANS~w~"
  flag7 = tostring
  flag8 = workValue14
  numberValue5 = "civilian"
  flag8, numberValue5 = flag8(numberValue5)
  flag7, flag8, numberValue5 = flag7(flag8, numberValue5)
  arg3(numberValue, flag7, flag8, numberValue5)
  arg3 = cmgCall2.push
  numberValue = "~r~HUNTERS~w~"
  flag7 = tostring
  flag8 = workValue14
  numberValue5 = "hunter"
  flag8, numberValue5 = flag8(numberValue5)
  flag7, flag8, numberValue5 = flag7(flag8, numberValue5)
  arg3(numberValue, flag7, flag8, numberValue5)
  arg3 = dataTable.gameTime
  numberValue = math
  numberValue = numberValue.floor
  flag7 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag7 = flag7()
  flag8 = dataTable.startTime
  flag7 = flag7 - flag8
  flag7 = flag7 / 1000
  numberValue = numberValue(flag7)
  arg3 = arg3 - numberValue
  if arg3 < 0 then
    arg3 = 0
  end
  numberValue = cmgCall2.push
  flag7 = "~y~TIME LEFT~w~"
  flag8 = workValue8
  numberValue5 = arg3
  flag8, numberValue5 = flag8(numberValue5)
  numberValue(flag7, flag8, numberValue5)
  numberValue = cmgCall2.draw
  numberValue()
end
function workValue10()
  local arg1, arg2, arg3, numberValue, flag7, flag8, numberValue5
  arg1 = table
  arg1 = arg1.count
  arg2 = dataTable
  -- Beginner: result below is count.
  arg1 = arg1(arg2)
  if 0 == arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getEventLocalPlayer
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetVehiclePedIsUsing
  numberValue = arg2
  arg3 = arg3(numberValue)
  if 0 ~= arg3 then
    numberValue = textValue
    flag7 = arg1
    flag8 = arg3
    numberValue(flag7, flag8)
  end
  numberValue = eventRegistration3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  numberValue()
  numberValue = dataTable.state
  if "START" == numberValue then
    numberValue = SetPlayerControl
    flag7 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    flag7 = flag7()
    flag8 = true
    numberValue5 = 0
    numberValue(flag7, flag8, numberValue5)
    numberValue = workValue9
    flag7 = arg1
    numberValue(flag7)
    if 0 ~= arg3 then
      numberValue = workValue4
      flag7 = arg3
      numberValue(flag7)
    end
  end
end
function workValue11()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.enableMinigamePlayerBlips
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.enableMinigamePlayerTags
  arg2 = false
  arg3 = false
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.cleanupRockstarMaps
  arg1()
  arg1 = TriggerMusicEvent
  arg2 = "BST_STOP"
  arg1(arg2)
  arg1 = {}
  dataTable = arg1
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function workValue12()
  local arg1, arg2, arg3, numberValue
  arg1 = "Manhunt"
  arg2 = CMG
  arg2 = arg2.registerMinigameCleanupHandler
  arg3 = arg1
  numberValue = workValue11
  arg2(arg3, numberValue)
  arg2 = CMG
  arg2 = arg2.createThreadOnTick
  arg3 = workValue10
  numberValue = "Manhunt"
  -- Beginner: Run a helper every game frame while this script is active.
  arg2(arg3, numberValue)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue12)