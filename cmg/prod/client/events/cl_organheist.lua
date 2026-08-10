--[[
    Beginner Guide: cl_organheist.lua
    =================================

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
    BEGINNER GUIDE — Organheist
    ===========================

    File: cmg/prod/client/events/cl_organheist.lua
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
      * cfg/cfg_organheist

    Network/hash identifiers found: 17
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * ~r~Press ~INPUT_PICKUP~ to play the Organ Heist!
      * ~r~You are police, please use the other entrance!
      * ~b~Press ~INPUT_PICKUP~ to play the Organ Heist!
      * ~r~You are a civilian, please use the other entrance!
      * ~r~You got too far from the organ heist and have been teleported back.

]]
local cmgCall, flag8, vector3Builder, vector3Builder2, numberValue17, flag16, flag18, flag19, textValue11, dataTable11, dataTable, workValue, workValue3, textValue, workValue4, textValue2, dataTable2, dataTable3, numberValue10, flag6, flag9, dataTable4, eventHandlerRegistration, hashValue, textValue3, flag13, numberValue11, cmgCall3, eventRegistration, textValue4, cmgCall4, textValue5, textValue6, eventRegistration2, textValue7, cmgCall5, textValue8, dataTable5, dataTable6, flag15, workValue7, workValue8, workValue9, dataTable7, dataTable8, cmgCall6, dataTable9, numberValue14, numberValue15, numberValue16, numberValue18, numberValue19, workValue10, dataTable10
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag8 = "cfg/cfg_organheist"
-- Beginner: result below is config.
cmgCall = cmgCall(flag8)
flag8 = false
vector3Builder = vector3
vector3Builder2 = 240.31098937988
numberValue17 = -1379.8699951172
flag16 = 33.741794586182
vector3Builder = vector3Builder(vector3Builder2, numberValue17, flag16)
vector3Builder2 = vector3
numberValue17 = 231.51065063477
flag16 = -1360.6903076172
flag18 = 28.651802062988
vector3Builder2 = vector3Builder2(numberValue17, flag16, flag18)
numberValue17 = 600
flag16 = false
flag18 = false
flag19 = false
textValue11 = ""
dataTable11 = {}
dataTable = {}
workValue = nil
workValue3 = AddRelationshipGroup
textValue = "ORGANHEIST_POLICE"
workValue3, textValue = workValue3(textValue)
workValue4 = AddRelationshipGroup
textValue2 = "ORGANHEIST_CRIMINAL"
workValue4, textValue2 = workValue4(textValue2)
dataTable2 = {}
dataTable3 = {}
numberValue10 = 0
flag6 = false
flag9 = false
dataTable4 = {}
eventHandlerRegistration = {}
hashValue = GetHashKey
textValue3 = "prop_gate_military_01"
-- Beginner: result below is hash.
hashValue = hashValue(textValue3)
eventHandlerRegistration.objectHash = hashValue
hashValue = vector3
textValue3 = 251.2504
flag13 = -1361.306
numberValue11 = 23.54731
hashValue = hashValue(textValue3, flag13, numberValue11)
eventHandlerRegistration.objectPos = hashValue
eventHandlerRegistration.objectHeading = 322.19732666016
eventHandlerRegistration.objectHandler = 0
dataTable4.civs = eventHandlerRegistration
eventHandlerRegistration = {}
hashValue = GetHashKey
textValue3 = "prop_gate_military_01"
-- Beginner: result below is hash.
hashValue = hashValue(textValue3)
eventHandlerRegistration.objectHash = hashValue
hashValue = vector3
textValue3 = 251.1472
flag13 = -1361.884
numberValue11 = 38.54385
hashValue = hashValue(textValue3, flag13, numberValue11)
eventHandlerRegistration.objectPos = hashValue
eventHandlerRegistration.objectHeading = 318.79
eventHandlerRegistration.objectHandler = 0
dataTable4.cops = eventHandlerRegistration
eventHandlerRegistration = AddEventHandler
hashValue = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4
  if arg2 then
    arg3 = tCMG
    arg3 = arg3.addMarker
    arg4 = vector3Builder.x
    arg5 = vector3Builder.y
    workValue11 = vector3Builder.z
    numberValue20 = 0.7
    numberValue21 = 0.7
    textValue12 = 0.5
    numberValue22 = 0
    numberValue = 125
    numberValue3 = 255
    flag = 125
    cmgCall2 = 150
    numberValue6 = 20
    flag2 = false
    flag3 = false
    flag4 = true
    -- Beginner: Create a world marker.
    arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4)
    arg3 = tCMG
    arg3 = arg3.addBlip
    arg4 = vector3Builder.x
    arg5 = vector3Builder.y
    workValue11 = vector3Builder.z
    numberValue20 = 378
    numberValue21 = 3
    textValue12 = "Organ Heist Police"
    -- Beginner: Create a minimap blip.
    arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12)
    arg3 = tCMG
    arg3 = arg3.addMarker
    arg4 = vector3Builder2.x
    arg5 = vector3Builder2.y
    workValue11 = vector3Builder2.z
    numberValue20 = 0.7
    numberValue21 = 0.7
    textValue12 = 0.5
    numberValue22 = 255
    numberValue = 0
    numberValue3 = 0
    flag = 125
    cmgCall2 = 150
    numberValue6 = 20
    flag2 = false
    flag3 = false
    flag4 = true
    -- Beginner: Create a world marker.
    arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4)
    arg3 = tCMG
    arg3 = arg3.addBlip
    arg4 = vector3Builder2.x
    arg5 = vector3Builder2.y
    workValue11 = vector3Builder2.z
    numberValue20 = 378
    numberValue21 = 1
    textValue12 = "Organ Heist Criminals"
    -- Beginner: Create a minimap blip.
    arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(hashValue, textValue3)
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread
function hashValue()
  local arg1, arg2, arg3, arg4
  while true do
    arg1 = GetPlayerPed
    arg2 = -1
    -- Beginner: result below is playerPed.
    arg1 = arg1(arg2)
    arg2 = GetEntityCoords
    arg3 = arg1
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3)
    arg3 = vector3Builder2
    arg3 = arg2 - arg3
    arg3 = #arg3
    if arg3 < 1.0 then
      arg3 = true
      flag18 = arg3
    else
      arg3 = false
      flag18 = arg3
    end
    arg3 = vector3Builder
    arg3 = arg2 - arg3
    arg3 = #arg3
    if arg3 < 1.0 then
      arg3 = true
      flag16 = arg3
    else
      arg3 = false
      flag16 = arg3
    end
    arg3 = Wait
    arg4 = 250
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(hashValue)
function eventHandlerRegistration()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = workValue
  if arg1 then
    arg1 = workValue.interiorId
    if arg1 then
      arg1 = workValue.roomKey
      if arg1 then
        arg1 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg1 = arg1()
        while true do
          arg2 = GetRoomKeyFromEntity
          arg3 = PlayerPedId
          arg3, arg4, arg5 = arg3()
          arg2 = arg2(arg3, arg4, arg5)
          if 0 ~= arg2 then
            break
          end
          arg2 = workValue
          if not arg2 then
            break
          end
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          arg2 = arg2 - arg1
          arg3 = 1000
          if arg2 > arg3 then
            return
          end
          arg2 = PinInteriorInMemory
          arg3 = workValue.interiorId
          arg2(arg3)
          arg2 = ForceRoomForEntity
          arg3 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg3 = arg3()
          arg4 = workValue.interiorId
          arg5 = workValue.roomKey
          arg2(arg3, arg4, arg5)
          arg2 = ForceRoomForGameViewport
          arg3 = workValue.interiorId
          arg4 = workValue.roomKey
          arg2(arg3, arg4)
          arg2 = Citizen
          arg2 = arg2.Wait
          arg3 = 0
          arg2(arg3)
        end
      end
    end
  end
end
function hashValue(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = ""
  arg4 = arg2 % 60
  if arg4 <= 9 then
    arg3 = "0"
  else
    arg3 = ""
  end
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg2 / 60
  arg4 = arg4(arg5)
  arg5 = ":"
  workValue11 = arg3
  numberValue20 = arg2 % 60
  arg4 = arg4 .. arg5 .. workValue11 .. numberValue20
  return arg4
end
textValue3 = false
flag13 = false
function numberValue11()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg1 = flag18
  if arg1 then
    arg1 = drawNativeNotification
    arg2 = "~r~Press ~INPUT_PICKUP~ to play the Organ Heist!"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 38
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = textValue3
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "police.onduty.permission"
        arg1 = arg1(arg2)
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.hasClientPermission
          arg2 = "prisonguard.onduty.permission"
          arg1 = arg1(arg2)
          if not arg1 then
            arg1 = flag19
            if not arg1 then
              arg1 = TriggerServerEvent
              arg2 = "a4e8cb308c"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a4e8cb308c".
              arg1(arg2)
              arg1 = true
              textValue3 = arg1
              arg1 = SetTimeout
              arg2 = 100
              function arg3()
                local waitCall, playerPed
                waitCall = false
                textValue3 = waitCall
              end
              arg1(arg2, arg3)
            else
              arg1 = tCMG
              arg1 = arg1.notify
              arg2 = "~r~Already joined the Organ Heist!"
              -- Beginner: Show a notification to the player.
              arg1(arg2)
            end
        end
        else
          arg1 = tCMG
          arg1 = arg1.notify
          arg2 = "~r~You are police, please use the other entrance!"
          arg1(arg2)
        end
      end
    end
  else
    arg1 = flag16
    if arg1 then
      arg1 = drawNativeNotification
      arg2 = "~b~Press ~INPUT_PICKUP~ to play the Organ Heist!"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
      arg1 = IsControlJustPressed
      arg2 = 0
      arg3 = 38
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = textValue3
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.hasClientPermission
          arg2 = "police.onduty.permission"
          arg1 = arg1(arg2)
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.hasClientPermission
            arg2 = "prisonguard.onduty.permission"
            arg1 = arg1(arg2)
            if not arg1 then
              goto flow_label_96
            end
          end
          arg1 = flag19
          if not arg1 then
            arg1 = TriggerServerEvent
            arg2 = "a4e8cb308c"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a4e8cb308c".
            arg1(arg2)
            arg1 = true
            textValue3 = arg1
            arg1 = SetTimeout
            arg2 = 100
            function arg3()
              local waitCall, playerPed
              waitCall = false
              textValue3 = waitCall
            end
            arg1(arg2, arg3)
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~Already joined the Organ Heist!"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
            goto flow_label_100
            ::flow_label_96::
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You are a civilian, please use the other entrance!"
            arg1(arg2)
          end
        end
      end
    end
  end
  ::flow_label_100::
  arg1 = CMG
  arg1 = arg1.createTimerBars
  -- Beginner: result below is timerBars.
  arg1 = arg1()
  arg2 = flag8
  if arg2 then
    arg2 = flag6
    if arg2 then
      arg2 = arg1.push
      arg3 = "STARTS IN:"
      arg4 = hashValue
      arg5 = numberValue17
      arg4, arg5, workValue11, numberValue20, numberValue21 = arg4(arg5)
      arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21)
      arg2 = DisablePlayerFiring
      arg3 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg3 = arg3()
      arg4 = true
      arg2(arg3, arg4)
    end
  end
  arg2 = flag9
  if not arg2 then
    arg2 = flag6
    if not arg2 then
      goto flow_label_217
    end
  end
  arg2 = arg1.push
  arg3 = "~r~Criminals:"
  arg4 = tostring
  arg5 = table
  arg5 = arg5.count
  workValue11 = dataTable
  arg5, workValue11, numberValue20, numberValue21 = arg5(workValue11)
  arg4, arg5, workValue11, numberValue20, numberValue21 = arg4(arg5, workValue11, numberValue20, numberValue21)
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21)
  arg2 = arg1.push
  arg3 = "~b~Police:"
  arg4 = tostring
  arg5 = table
  arg5 = arg5.count
  workValue11 = dataTable11
  arg5, workValue11, numberValue20, numberValue21 = arg5(workValue11)
  arg4, arg5, workValue11, numberValue20, numberValue21 = arg4(arg5, workValue11, numberValue20, numberValue21)
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21)
  arg2 = arg1.push
  arg3 = "~y~Kills:"
  arg4 = tostring
  arg5 = numberValue10
  arg4, arg5, workValue11, numberValue20, numberValue21 = arg4(arg5)
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21)
  arg2 = drawNativeText
  arg3 = "~b~Kill the enemy team and survive."
  -- Beginner: Draw GTA-style text on screen.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = RemoveWeaponFromPed
  arg4 = arg2
  arg5 = 615608432
  arg3(arg4, arg5)
  arg3 = RemoveWeaponFromPed
  arg4 = arg2
  arg5 = -73270376
  arg3(arg4, arg5)
  arg3 = RemoveWeaponFromPed
  arg4 = arg2
  arg5 = -2144752413
  arg3(arg4, arg5)
  arg3 = RemoveWeaponFromPed
  arg4 = arg2
  arg5 = -795216620
  arg3(arg4, arg5)
  arg3 = GetSelectedPedWeapon
  arg4 = arg2
  -- Beginner: result below is weaponHash.
  arg3 = arg3(arg4)
  if 911657153 == arg3 then
    arg3 = CMG
    arg3 = arg3.setWeapon
    arg4 = arg2
    arg5 = -1569615261
    workValue11 = true
    arg3(arg4, arg5, workValue11)
  end
  arg3 = GetInteriorFromEntity
  arg4 = PlayerPedId
  arg4, arg5, workValue11, numberValue20, numberValue21 = arg4()
  -- Beginner: result below is interiorId.
  arg3 = arg3(arg4, arg5, workValue11, numberValue20, numberValue21)
  arg4 = workValue
  if arg4 and 0 == arg3 then
    arg4 = flag13
    if not arg4 then
      arg4 = true
      flag13 = arg4
      arg4 = SetTimeout
      arg5 = 1000
      function workValue11()
        local waitCall, playerPed
        waitCall = false
        flag13 = waitCall
      end
      arg4(arg5, workValue11)
      arg4 = workValue.safePositions
      arg4 = arg4[1]
      arg5 = DoScreenFadeOut
      workValue11 = 1000
      arg5(workValue11)
      arg5 = NetworkFadeOutEntity
      workValue11 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue11 = workValue11()
      numberValue20 = true
      numberValue21 = false
      arg5(workValue11, numberValue20, numberValue21)
      arg5 = Citizen
      arg5 = arg5.CreateThread
      function workValue11()
        local waitCall, playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21
        waitCall = Wait
        playerPed = 1000
        waitCall(playerPed)
        waitCall = SetEntityCoords
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        flag14 = arg4.x
        numberValue12 = arg4.y
        textValue9 = arg4.z
        flag17 = true
        waitCall2 = false
        flag20 = false
        flag21 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        waitCall(playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21)
        waitCall = eventHandlerRegistration
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall()
        waitCall = NetworkFadeInEntity
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        flag14 = false
        waitCall(playerPed, flag14)
        waitCall = DoScreenFadeIn
        playerPed = 1000
        waitCall(playerPed)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(workValue11)
    end
  end
  ::flow_label_217::
  arg2 = arg1.rowCount
  arg2 = arg2()
  if arg2 > 0 then
    arg2 = arg1.draw
    arg2()
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
eventRegistration = numberValue11
textValue4 = "Organ Heist Enter"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(eventRegistration, textValue4)
function cmgCall3()
  local arg1, arg2, arg3, arg4
  arg1 = true
  arg2 = SetTimeout
  arg3 = 5000
  function arg4()
    local waitCall, playerPed
    waitCall = false
    arg1 = waitCall
  end
  arg2(arg3, arg4)
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local waitCall, playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22, numberValue2, workValue2, numberValue4, numberValue5, numberValue7, numberValue8, numberValue9
    function waitCall(arg12)
      local workValue5, workValue6, numberValue13, textValue10
      workValue5 = RequestScaleformMovie
      workValue6 = arg12
      -- Beginner: result below is scaleformHandle.
      workValue5 = workValue5(workValue6)
      while true do
        workValue6 = HasScaleformMovieLoaded
        numberValue13 = workValue5
        workValue6 = workValue6(numberValue13)
        if workValue6 then
          break
        end
        workValue6 = Citizen
        workValue6 = workValue6.Wait
        numberValue13 = 0
        workValue6(numberValue13)
      end
      workValue6 = BeginScaleformMovieMethod
      numberValue13 = workValue5
      textValue10 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      workValue6(numberValue13, textValue10)
      workValue6 = _ENV
      numberValue13 = "ScaleformMovieMethodAddParamTextureNameString"
      workValue6 = workValue6[numberValue13]
      numberValue13 = "~g~ORGAN HEIST!"
      workValue6(numberValue13)
      workValue6 = _ENV
      numberValue13 = "ScaleformMovieMethodAddParamTextureNameString"
      workValue6 = workValue6[numberValue13]
      numberValue13 = "Survive the Organ Heist and win \194\163250,000"
      workValue6(numberValue13)
      workValue6 = EndScaleformMovieMethod
      workValue6()
      return workValue5
    end
    playerPed = waitCall
    flag14 = "mp_big_message_freemode"
    playerPed = playerPed(flag14)
    flag14 = PlaySound
    numberValue12 = -1
    textValue9 = "Hit"
    flag17 = "RESPAWN_SOUNDSET"
    waitCall2 = false
    flag20 = 0
    flag21 = true
    flag14(numberValue12, textValue9, flag17, waitCall2, flag20, flag21)
    while true do
      flag14 = arg1
      if not flag14 then
        break
      end
      flag14 = 0.5
      numberValue12 = 0.35
      textValue9 = 1.0
      flag17 = textValue9
      waitCall2 = DrawScaleformMovie
      flag20 = playerPed
      flag21 = flag14
      flag22 = numberValue12
      numberValue2 = textValue9
      workValue2 = flag17
      numberValue4 = 0
      numberValue5 = 0
      numberValue7 = 0
      numberValue8 = 0
      numberValue9 = 0
      waitCall2(flag20, flag21, flag22, numberValue2, workValue2, numberValue4, numberValue5, numberValue7, numberValue8, numberValue9)
      waitCall2 = Wait
      flag20 = 0
      waitCall2(flag20)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
eventRegistration = RegisterNetEvent
textValue4 = "f97f1fc29a"
-- Beginner: this function handles network event "f97f1fc29a".
function cmgCall4(arg1, arg2, arg3, arg4, arg5)
  local workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11, flag12
  workValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue11 = workValue11()
  numberValue17 = arg2
  textValue11 = arg3
  numberValue20 = cmgCall.locations
  numberValue20 = numberValue20[arg4]
  numberValue21 = numberValue20.requestIpls
  if numberValue21 then
    numberValue21 = pairs
    textValue12 = numberValue20.requestIpls
    numberValue21, textValue12, numberValue22, numberValue = numberValue21(textValue12)
    for numberValue3, flag in numberValue21, textValue12, numberValue22, numberValue do
      cmgCall2 = RequestIpl
      numberValue6 = flag
      cmgCall2(numberValue6)
    end
  end
  numberValue21 = numberValue20.sides
  numberValue21 = numberValue21[arg5]
  workValue = numberValue21
  numberValue21 = true
  flag19 = numberValue21
  numberValue21 = tCMG
  numberValue21 = numberValue21.setCanAnim
  textValue12 = false
  numberValue21(textValue12)
  numberValue21 = Citizen
  numberValue21 = numberValue21.CreateThread
  function textValue12()
    local waitCall, playerPed
    while true do
      waitCall = numberValue17
      waitCall = waitCall - 1
      numberValue17 = waitCall
      waitCall = Wait
      playerPed = 1000
      waitCall(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue21(textValue12)
  numberValue21 = true
  flag8 = numberValue21
  numberValue21 = true
  flag6 = numberValue21
  numberValue21 = CMG
  numberValue21 = numberValue21.deleteGreenzone
  textValue12 = "organ"
  numberValue21(textValue12)
  numberValue21 = SetRelationshipBetweenGroups
  textValue12 = 5
  numberValue22 = textValue
  numberValue = textValue2
  numberValue21(textValue12, numberValue22, numberValue)
  numberValue21 = SetRelationshipBetweenGroups
  textValue12 = 5
  numberValue22 = textValue2
  numberValue = textValue
  numberValue21(textValue12, numberValue22, numberValue)
  if "civ" == arg3 then
    numberValue21 = SetPedRelationshipGroupHash
    textValue12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue12 = textValue12()
    numberValue22 = textValue2
    numberValue21(textValue12, numberValue22)
    numberValue21 = CMG
    numberValue21 = numberValue21.createAtm
    textValue12 = "Organ Heist"
    numberValue22 = workValue.atmLocation
    numberValue21(textValue12, numberValue22)
  elseif "police" == arg3 then
    numberValue21 = SetPedRelationshipGroupHash
    textValue12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue12 = textValue12()
    numberValue22 = textValue
    numberValue21(textValue12, numberValue22)
  end
  numberValue21 = pairs
  textValue12 = workValue.gunStores
  numberValue22 = textValue11
  textValue12 = textValue12[numberValue22]
  numberValue21, textValue12, numberValue22, numberValue = numberValue21(textValue12)
  for numberValue3, flag in numberValue21, textValue12, numberValue22, numberValue do
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.createGunStore
    numberValue6 = flag[1]
    flag2 = flag[2]
    flag3 = flag[3]
    cmgCall2(numberValue6, flag2, flag3)
  end
  numberValue21 = CMG
  numberValue21 = numberValue21.isEmergencyService
  numberValue21 = numberValue21()
  if numberValue21 then
    numberValue21 = TriggerEvent
    textValue12 = "24a888d2b3"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "24a888d2b3".
    numberValue21(textValue12)
  end
  numberValue21 = CMG
  numberValue21 = numberValue21.setFriendlyFire
  textValue12 = false
  numberValue21(textValue12)
  numberValue21 = DoScreenFadeOut
  textValue12 = 1000
  numberValue21(textValue12)
  numberValue21 = NetworkFadeOutEntity
  textValue12 = workValue11
  numberValue22 = true
  numberValue = false
  numberValue21(textValue12, numberValue22, numberValue)
  numberValue21 = Wait
  textValue12 = 1000
  numberValue21(textValue12)
  numberValue21 = SetEntityCoords
  textValue12 = workValue11
  numberValue22 = arg1.x
  numberValue = arg1.y
  numberValue3 = arg1.z
  flag = true
  cmgCall2 = false
  numberValue6 = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  numberValue21(textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2)
  numberValue21 = eventHandlerRegistration
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue21()
  numberValue21 = NetworkFadeInEntity
  textValue12 = workValue11
  numberValue22 = false
  numberValue21(textValue12, numberValue22)
  numberValue21 = DoScreenFadeIn
  textValue12 = 1000
  numberValue21(textValue12)
  numberValue21 = cmgCall3
  -- Beginner: Run a helper every game frame while this script is active.
  numberValue21()
  numberValue21 = PrepareMusicEvent
  textValue12 = "AH3B_HALF_RAPPEL"
  numberValue21(textValue12)
  numberValue21 = TriggerMusicEvent
  textValue12 = "AH3B_HALF_RAPPEL"
  numberValue21(textValue12)
  numberValue21 = numberValue20.fakeCollisions
  if numberValue21 then
    numberValue21 = pairs
    textValue12 = numberValue20.fakeCollisions
    numberValue21, textValue12, numberValue22, numberValue = numberValue21(textValue12)
    for numberValue3, flag in numberValue21, textValue12, numberValue22, numberValue do
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.loadModel
      numberValue6 = flag[1]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgCall2(numberValue6)
      cmgCall2 = flag[2]
      numberValue6 = flag[3]
      flag2 = CreateObjectNoOffset
      flag3 = flag[1]
      flag4 = cmgCall2.x
      flag5 = cmgCall2.y
      flag7 = cmgCall2.z
      flag10 = false
      flag11 = false
      flag12 = false
      -- Beginner: result below is objectEntity.
      flag2 = flag2(flag3, flag4, flag5, flag7, flag10, flag11, flag12)
      flag3 = SetEntityQuaternion
      flag4 = flag2
      flag5 = numberValue6.x
      flag7 = numberValue6.y
      flag10 = numberValue6.z
      flag11 = numberValue6.w
      flag3(flag4, flag5, flag7, flag10, flag11)
      flag3 = FreezeEntityPosition
      flag4 = flag2
      flag5 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      flag3(flag4, flag5)
      flag3 = SetEntityVisible
      flag4 = flag2
      flag5 = false
      flag7 = false
      flag3(flag4, flag5, flag7)
      flag3 = table
      flag3 = flag3.insert
      flag4 = dataTable2
      flag5 = flag2
      flag3(flag4, flag5)
    end
  end
  numberValue21 = numberValue20.customObjects
  if numberValue21 then
    numberValue21 = pairs
    textValue12 = numberValue20.customObjects
    numberValue21, textValue12, numberValue22, numberValue = numberValue21(textValue12)
    for numberValue3, flag in numberValue21, textValue12, numberValue22, numberValue do
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.loadModel
      numberValue6 = flag[1]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgCall2(numberValue6)
      cmgCall2 = flag[2]
      numberValue6 = flag[3]
      flag2 = CreateObjectNoOffset
      flag3 = flag[1]
      flag4 = cmgCall2.x
      flag5 = cmgCall2.y
      flag7 = cmgCall2.z
      flag10 = false
      flag11 = false
      flag12 = false
      -- Beginner: result below is objectEntity.
      flag2 = flag2(flag3, flag4, flag5, flag7, flag10, flag11, flag12)
      flag3 = SetEntityQuaternion
      flag4 = flag2
      flag5 = numberValue6.x
      flag7 = numberValue6.y
      flag10 = numberValue6.z
      flag11 = numberValue6.w
      flag3(flag4, flag5, flag7, flag10, flag11)
      flag3 = FreezeEntityPosition
      flag4 = flag2
      flag5 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      flag3(flag4, flag5)
      flag3 = table
      flag3 = flag3.insert
      flag4 = dataTable3
      flag5 = flag2
      flag3(flag4, flag5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f97f1fc29a".
eventRegistration(textValue4, cmgCall4)
eventRegistration = RegisterNetEvent
textValue4 = "d1ed3013ed"
-- Beginner: this function handles network event "d1ed3013ed".
function cmgCall4(arg1, arg2)
  local arg3
  if "civ" == arg2 then
    arg3 = dataTable
    arg3[arg1] = true
  elseif "police" == arg2 then
    arg3 = dataTable11
    arg3[arg1] = true
  end
end
eventRegistration(textValue4, cmgCall4)
eventRegistration = RegisterNetEvent
textValue4 = "f74fa40acb"
-- Beginner: this function handles network event "f74fa40acb".
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg2 = PlaySoundFrontend
  arg3 = -1
  arg4 = "Weapon_Upgrade"
  arg5 = "DLC_GR_Weapon_Upgrade_Soundset"
  workValue11 = true
  arg2(arg3, arg4, arg5, workValue11)
  arg2 = tCMG
  arg2 = arg2.playScreenEffect
  arg3 = "MP_Celeb_Win"
  arg4 = 0.25
  arg2(arg3, arg4)
  arg2 = tCMG
  arg2 = arg2.notify
  arg3 = "~g~Killed "
  arg4 = arg1
  arg5 = " received \194\16325,000"
  arg3 = arg3 .. arg4 .. arg5
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = tCMG
  arg2 = arg2.isInComa
  arg2 = arg2()
  if not arg2 then
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = GetEntityHealth
    arg4 = arg2
    -- Beginner: result below is health.
    arg3 = arg3(arg4)
    arg4 = 200
    if arg3 < arg4 then
      arg4 = SetEntityHealth
      arg5 = arg2
      workValue11 = math
      workValue11 = workValue11.min
      numberValue20 = arg3 + 25
      numberValue21 = 200
      workValue11, numberValue20, numberValue21 = workValue11(numberValue20, numberValue21)
      arg4(arg5, workValue11, numberValue20, numberValue21)
      arg4 = notify
      arg5 = "~b~25% health given for kill!"
      -- Beginner: Show a notification to the player.
      arg4(arg5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f74fa40acb".
eventRegistration(textValue4, cmgCall4)
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22
  arg1 = workValue
  if not arg1 then
    return
  end
  arg1 = 1000.0
  arg2 = 0.0
  arg3 = GetEntityCoords
  arg4 = PlayerPedId
  arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22 = arg4()
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22)
  arg4 = pairs
  arg5 = workValue.pastGates
  arg4, arg5, workValue11, numberValue20 = arg4(arg5)
  for numberValue21, textValue12 in arg4, arg5, workValue11, numberValue20 do
    numberValue22 = arg3 - textValue12
    numberValue22 = #numberValue22
    if arg1 > numberValue22 then
      arg1 = numberValue22
    end
    if arg2 < numberValue22 then
      arg2 = numberValue22
    end
  end
  arg4 = arg1
  arg5 = arg2
  return arg4, arg5
end
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, workValue11
  arg1 = flag6
  if arg1 then
    arg1 = eventRegistration
    arg1 = arg1()
    if arg1 < 3.0 then
      arg2 = flag13
      if not arg2 then
        arg2 = true
        flag13 = arg2
        arg2 = SetTimeout
        arg3 = 1000
        function arg4()
          local waitCall, playerPed
          waitCall = false
          flag13 = waitCall
        end
        arg2(arg3, arg4)
        arg2 = DoScreenFadeOut
        arg3 = 1000
        arg2(arg3)
        arg2 = NetworkFadeOutEntity
        arg3 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg3 = arg3()
        arg4 = true
        arg5 = false
        arg2(arg3, arg4, arg5)
        arg2 = Citizen
        arg2 = arg2.CreateThread
        function arg3()
          local waitCall, playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22
          waitCall = Wait
          playerPed = 1000
          waitCall(playerPed)
          waitCall = workValue
          if waitCall then
            waitCall = flag6
            if waitCall then
              waitCall = workValue.safePositions
              waitCall = waitCall[1]
              playerPed = SetEntityCoords
              flag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              flag14 = flag14()
              numberValue12 = waitCall.x
              textValue9 = waitCall.y
              flag17 = waitCall.z
              waitCall2 = true
              flag20 = false
              flag21 = false
              flag22 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              playerPed(flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22)
              playerPed = eventHandlerRegistration
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              playerPed()
              playerPed = NetworkFadeInEntity
              flag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              flag14 = flag14()
              numberValue12 = false
              playerPed(flag14, numberValue12)
              playerPed = DoScreenFadeIn
              flag14 = 1000
              playerPed(flag14)
              playerPed = tCMG
              playerPed = playerPed.notify
              flag14 = "~r~You got too far from the organ heist and have been teleported back."
              -- Beginner: Show a notification to the player.
              playerPed(flag14)
          end
          else
            waitCall = NetworkFadeInEntity
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            flag14 = false
            waitCall(playerPed, flag14)
            waitCall = DoScreenFadeIn
            playerPed = 1000
            waitCall(playerPed)
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg2(arg3)
      end
    end
  end
  arg1 = flag9
  if arg1 then
    arg1 = eventRegistration
    arg1, arg2 = arg1()
    arg3 = 350.0
    if arg2 > arg3 then
      arg3 = flag13
      if not arg3 then
        arg3 = true
        flag13 = arg3
        arg3 = SetTimeout
        arg4 = 1000
        function arg5()
          local waitCall, playerPed
          waitCall = false
          flag13 = waitCall
        end
        arg3(arg4, arg5)
        arg3 = DoScreenFadeOut
        arg4 = 1000
        arg3(arg4)
        arg3 = NetworkFadeOutEntity
        arg4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg4 = arg4()
        arg5 = true
        workValue11 = false
        arg3(arg4, arg5, workValue11)
        arg3 = Citizen
        arg3 = arg3.CreateThread
        function arg4()
          local waitCall, playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22
          waitCall = Wait
          playerPed = 1000
          waitCall(playerPed)
          waitCall = workValue
          if waitCall then
            waitCall = flag9
            if waitCall then
              waitCall = workValue.safePositions
              waitCall = waitCall[1]
              playerPed = SetEntityCoords
              flag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              flag14 = flag14()
              numberValue12 = waitCall.x
              textValue9 = waitCall.y
              flag17 = waitCall.z
              waitCall2 = true
              flag20 = false
              flag21 = false
              flag22 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              playerPed(flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22)
              playerPed = eventHandlerRegistration
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              playerPed()
              playerPed = NetworkFadeInEntity
              flag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              flag14 = flag14()
              numberValue12 = false
              playerPed(flag14, numberValue12)
              playerPed = DoScreenFadeIn
              flag14 = 1000
              playerPed(flag14)
              playerPed = tCMG
              playerPed = playerPed.notify
              flag14 = "~r~You got too far from the organ heist and have been teleported back."
              -- Beginner: Show a notification to the player.
              playerPed(flag14)
            end
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg3(arg4)
      end
    end
    arg3 = textValue11
    if "civ" == arg3 then
      arg3 = CMG
      arg3 = arg3.getPlayerCombatTimer
      arg3 = arg3()
      if arg3 <= 5 then
        arg3 = CMG
        arg3 = arg3.setPlayerCombatTimer
        arg4 = 60
        arg5 = false
        arg3(arg4, arg5)
      end
    end
    arg3 = CMG
    arg3 = arg3.getPlayerBucket
    arg3 = arg3()
    if 1 == arg3 then
      arg3 = CMG
      arg3 = arg3.isClientAFK
      arg3 = arg3()
      if not arg3 then
        goto flow_label_90
      end
    end
    arg3 = TriggerServerEvent
    arg4 = "3c0a39132b"
    arg5 = nil
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c0a39132b".
    arg3(arg4, arg5)
    arg3 = CMG
    arg3 = arg3.setDeathInOrganHeist
    arg3()
  end
  ::flow_label_90::
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue5 = textValue4
textValue6 = "Organ Heist Bounds"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue5, textValue6)
cmgCall4 = RegisterNetEvent
textValue5 = "fa5b816697"
-- Beginner: this function handles network event "fa5b816697".
function textValue6()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = false
  flag6 = arg1
  arg1 = true
  flag9 = arg1
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "5s_To_Event_Start_Countdown"
  arg4 = "GTAO_FM_Events_Soundset"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = DisablePlayerFiring
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = false
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.setMaximumLeaderboardRows
  arg2 = 10
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fa5b816697".
cmgCall4(textValue5, textValue6)
cmgCall4 = RegisterNetEvent
textValue5 = "651c377c85"
-- Beginner: this function handles network event "651c377c85".
function textValue6(arg1)
  local arg2
  arg2 = dataTable11
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable11
    arg2[arg1] = nil
  end
  arg2 = dataTable
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable
    arg2[arg1] = nil
  end
end
cmgCall4(textValue5, textValue6)
cmgCall4 = AddEventHandler
textValue5 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    arg3 = dataTable4
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for workValue11 in arg2, arg3, arg4, arg5 do
      numberValue20 = DeleteObject
      numberValue21 = dataTable4
      numberValue21 = numberValue21[workValue11]
      numberValue21 = numberValue21.objectHandler
      numberValue20(numberValue21)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall4(textValue5, textValue6)
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, workValue11 in arg1, arg2, arg3, arg4 do
    numberValue20 = DeleteEntity
    numberValue21 = workValue11
    -- Beginner: Delete a GTA entity.
    numberValue20(numberValue21)
  end
  arg1 = {}
  dataTable2 = arg1
end
function textValue5()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, workValue11 in arg1, arg2, arg3, arg4 do
    numberValue20 = DeleteEntity
    numberValue21 = workValue11
    numberValue20(numberValue21)
  end
  arg1 = {}
  dataTable3 = arg1
end
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue
  arg1 = 0
  while true do
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = FreezeEntityPosition
    arg4 = arg2
    arg5 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg3(arg4, arg5)
    arg3 = GetEntityCoords
    arg4 = arg2
    arg5 = true
    -- Beginner: result below is entityCoords.
    arg3 = arg3(arg4, arg5)
    arg4 = vector3Builder
    arg3 = arg3 - arg4
    arg3 = #arg3
    if arg3 < 5.0 then
      arg3 = IsEntityVisible
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        if 0 == arg1 then
          arg3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg3 = arg3()
          arg1 = arg3
        else
          arg3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg3 = arg3()
          arg3 = arg3 - arg1
          arg4 = 2000
          if arg3 > arg4 then
            break
          end
        end
    end
    else
      arg3 = SetEntityCoords
      arg4 = arg2
      arg5 = vector3Builder.x
      workValue11 = vector3Builder.y
      numberValue20 = vector3Builder.z
      numberValue20 = numberValue20 - 1.0
      numberValue21 = true
      textValue12 = false
      numberValue22 = false
      numberValue = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg3(arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue)
      arg3 = SetEntityVisible
      arg4 = arg2
      arg5 = true
      workValue11 = true
      arg3(arg4, arg5, workValue11)
      arg1 = 0
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
end
eventRegistration2 = RegisterNetEvent
textValue7 = "feee42063b"
-- Beginner: this function handles network event "feee42063b".
function cmgCall5(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12
  arg2 = CMG
  arg2 = arg2.createGreenzone
  arg3 = "organ"
  arg4 = vector3
  arg5 = 236.02685546875
  workValue11 = -1373.7049560547
  numberValue20 = 33.010623931885
  arg4 = arg4(arg5, workValue11, numberValue20)
  arg5 = 40.0
  arg2(arg3, arg4, arg5)
  arg2 = {}
  dataTable11 = arg2
  arg2 = {}
  dataTable = arg2
  arg2 = false
  flag19 = arg2
  arg2 = false
  flag8 = arg2
  arg2 = false
  flag6 = arg2
  arg2 = false
  flag9 = arg2
  arg2 = 600
  numberValue17 = arg2
  arg2 = CMG
  arg2 = arg2.deleteAtm
  arg3 = "Organ Heist"
  arg2(arg3)
  arg2 = workValue
  if arg2 then
    arg2 = pairs
    arg3 = workValue.gunStores
    arg4 = textValue11
    arg3 = arg3[arg4]
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for workValue11, numberValue20 in arg2, arg3, arg4, arg5 do
      numberValue21 = CMG
      numberValue21 = numberValue21.deleteGunStore
      textValue12 = numberValue20[1]
      numberValue21(textValue12)
    end
  end
  arg2 = ""
  textValue11 = arg2
  arg2 = workValue
  if arg2 then
    arg2 = workValue.interiorId
    if arg2 then
      arg2 = UnpinInterior
      arg3 = workValue.interiorId
      arg2(arg3)
    end
  end
  arg2 = nil
  workValue = arg2
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setFriendlyFire
  arg3 = true
  arg2(arg3)
  arg2 = PrepareMusicEvent
  arg3 = "BST_STOP"
  arg2(arg3)
  arg2 = TriggerMusicEvent
  arg3 = "BST_STOP"
  arg2(arg3)
  arg2 = ExecuteCommand
  arg3 = "storeallweapons"
  arg2(arg3)
  arg2 = Wait
  arg3 = 10000
  arg2(arg3)
  arg2 = GetEntityHealth
  arg3 = PlayerPedId
  arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12 = arg3()
  -- Beginner: result below is health.
  arg2 = arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12)
  if arg2 <= 102 or arg1 then
    arg2 = TriggerEvent
    arg3 = "193ee4e15e"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
    arg2(arg3)
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = DoScreenFadeOut
    arg4 = 1000
    arg3(arg4)
    arg3 = NetworkFadeOutEntity
    arg4 = arg2
    arg5 = true
    workValue11 = false
    arg3(arg4, arg5, workValue11)
    arg3 = Wait
    arg4 = 1000
    arg3(arg4)
    arg3 = Citizen
    arg3 = arg3.CreateThread
    arg4 = textValue6
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(arg4)
    arg3 = NetworkFadeInEntity
    arg4 = arg2
    arg5 = false
    arg3(arg4, arg5)
    arg3 = DoScreenFadeIn
    arg4 = 1000
    arg3(arg4)
  end
  arg2 = cmgCall4
  -- Beginner: Register a client-side event handler.
  arg2()
  arg2 = textValue5
  arg2()
  arg2 = CMG
  arg2 = arg2.setPlayerCanOpenLeaderboard
  arg3 = false
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.clearLeaderboardData
  arg2()
  arg2 = Wait
  arg3 = 1000
  arg2(arg3)
  arg2 = ClearRelationshipBetweenGroups
  arg3 = 5
  arg4 = textValue2
  arg5 = textValue
  arg2(arg3, arg4, arg5)
  arg2 = ClearRelationshipBetweenGroups
  arg3 = 5
  arg4 = textValue
  arg5 = textValue2
  arg2(arg3, arg4, arg5)
  arg2 = SetPedRelationshipGroupHash
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = 1862763509
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "feee42063b".
eventRegistration2(textValue7, cmgCall5)
function eventRegistration2(arg1, arg2, arg3, arg4)
  local arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11
  arg5 = ClearTimecycleModifier
  arg5()
  arg5 = {}
  workValue11 = Scaleform
  numberValue20 = "MP_CELEBRATION"
  workValue11 = workValue11(numberValue20)
  arg5.handle = workValue11
  workValue11 = Scaleform
  numberValue20 = "MP_CELEBRATION_BG"
  workValue11 = workValue11(numberValue20)
  arg5.handle2 = workValue11
  workValue11 = Scaleform
  numberValue20 = "MP_CELEBRATION_FG"
  workValue11 = workValue11(numberValue20)
  arg5.handle3 = workValue11
  workValue11 = pairs
  numberValue20 = arg5
  workValue11, numberValue20, numberValue21, textValue12 = workValue11(numberValue20)
  for numberValue22, numberValue in workValue11, numberValue20, numberValue21, textValue12 do
    numberValue3 = numberValue.RunFunction
    flag = "CLEANUP"
    cmgCall2 = {}
    numberValue6 = "WINNER"
    cmgCall2[1] = numberValue6
    numberValue3(flag, cmgCall2)
    numberValue3 = numberValue.RunFunction
    flag = "CREATE_STAT_WALL"
    cmgCall2 = {}
    numberValue6 = "WINNER"
    flag2 = "HUD_COLOUR_BLACK"
    flag3 = "70.0"
    cmgCall2[1] = numberValue6
    cmgCall2[2] = flag2
    cmgCall2[3] = flag3
    numberValue3(flag, cmgCall2)
    numberValue3 = numberValue.RunFunction
    flag = "SET_PAUSE_DURATION"
    cmgCall2 = {}
    function numberValue6()
      local waitCall, playerPed
      waitCall = ScaleformMovieMethodAddParamFloat
      playerPed = 2.5
      waitCall(playerPed)
    end
    cmgCall2[1] = numberValue6
    numberValue3(flag, cmgCall2)
    if 0 ~= arg4 then
      numberValue3 = numberValue.RunFunction
      flag = "ADD_CASH_TO_WALL"
      cmgCall2 = {}
      numberValue6 = "WINNER"
      flag2 = arg4
      flag3 = true
      cmgCall2[1] = numberValue6
      cmgCall2[2] = flag2
      cmgCall2[3] = flag3
      numberValue3(flag, cmgCall2)
    end
    numberValue3 = numberValue.RunFunction
    flag = "ADD_WINNER_TO_WALL"
    cmgCall2 = {}
    numberValue6 = "WINNER"
    flag2 = "CELEB_WINNER"
    flag3 = arg1
    flag4 = ""
    flag5 = 0
    flag7 = false
    flag10 = ""
    flag11 = false
    cmgCall2[1] = numberValue6
    cmgCall2[2] = flag2
    cmgCall2[3] = flag3
    cmgCall2[4] = flag4
    cmgCall2[5] = flag5
    cmgCall2[6] = flag7
    cmgCall2[7] = flag10
    cmgCall2[8] = flag11
    numberValue3(flag, cmgCall2)
    numberValue3 = numberValue.RunFunction
    flag = "ADD_BACKGROUND_TO_WALL"
    cmgCall2 = {}
    numberValue6 = "WINNER"
    flag2 = 75
    flag3 = 0
    cmgCall2[1] = numberValue6
    cmgCall2[2] = flag2
    cmgCall2[3] = flag3
    numberValue3(flag, cmgCall2)
    numberValue3 = numberValue.RunFunction
    flag = "SHOW_STAT_WALL"
    cmgCall2 = {}
    numberValue6 = "WINNER"
    cmgCall2[1] = numberValue6
    numberValue3(flag, cmgCall2)
  end
  workValue11 = arg5.handle
  numberValue20 = arg5.handle2
  numberValue21 = arg5.handle3
  return workValue11, numberValue20, numberValue21
end
function textValue7(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local waitCall, playerPed, flag14, numberValue12, textValue9, flag17, waitCall2, flag20, flag21, flag22, numberValue2
    waitCall = false
    playerPed = eventRegistration2
    flag14 = arg1
    numberValue12 = 2
    textValue9 = 100
    flag17 = 250000
    playerPed, flag14, numberValue12 = playerPed(flag14, numberValue12, textValue9, flag17)
    if not waitCall then
      waitCall = true
    end
    textValue9 = SetTimeout
    flag17 = 10000
    function waitCall2()
      local arg12, workValue5
      arg12 = false
      waitCall = arg12
    end
    textValue9(flag17, waitCall2)
    while waitCall do
      textValue9 = Wait
      flag17 = 0
      textValue9(flag17)
      textValue9 = HideHudAndRadarThisFrame
      textValue9()
      textValue9 = DrawScaleformMovieFullscreenMasked
      flag17 = flag14.Handle
      waitCall2 = numberValue12.Handle
      flag20 = 255
      flag21 = 255
      flag22 = 255
      numberValue2 = 255
      textValue9(flag17, waitCall2, flag20, flag21, flag22, numberValue2)
      textValue9 = playerPed.Render2D
      textValue9()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
cmgCall5 = RegisterNetEvent
textValue8 = "b4412012ff"
-- Beginner: this function handles network event "b4412012ff".
function dataTable5(arg1)
  local arg2, arg3, arg4, arg5, workValue11
  arg2 = Wait
  arg3 = 10000
  arg2(arg3)
  arg2 = textValue7
  arg3 = arg1
  arg2(arg3)
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.setFriendlyFire
  arg4 = true
  arg3(arg4)
  arg3 = DoScreenFadeOut
  arg4 = 1000
  arg3(arg4)
  arg3 = NetworkFadeOutEntity
  arg4 = arg2
  arg5 = true
  workValue11 = false
  arg3(arg4, arg5, workValue11)
  arg3 = Wait
  arg4 = 1000
  arg3(arg4)
  arg3 = Citizen
  arg3 = arg3.CreateThread
  arg4 = textValue6
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg3(arg4)
  arg3 = NetworkFadeInEntity
  arg4 = arg2
  arg5 = false
  arg3(arg4, arg5)
  arg3 = DoScreenFadeIn
  arg4 = 1000
  arg3(arg4)
  arg3 = cmgCall4
  -- Beginner: Register a client-side event handler.
  arg3()
  arg3 = textValue5
  arg3()
  arg3 = CMG
  arg3 = arg3.setPlayerCanOpenLeaderboard
  arg4 = false
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.clearLeaderboardData
  arg3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b4412012ff".
cmgCall5(textValue8, dataTable5)
cmgCall5 = CMG
function textValue8()
  local arg1, arg2
  arg1 = false
  flag8 = arg1
  arg1 = false
  flag6 = arg1
  arg1 = false
  flag9 = arg1
end
cmgCall5.setDeathInOrganHeist = textValue8
cmgCall5 = CMG
function textValue8()
  local arg1, arg2
  arg1 = flag8
  return arg1
end
cmgCall5.inOrganHesit = textValue8
cmgCall5 = RegisterNetEvent
textValue8 = "2981026492"
-- Beginner: this function handles network event "2981026492".
function dataTable5(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20
  if arg1 then
    arg2 = CMG
    arg2 = arg2.createGreenzone
    arg3 = "organ"
    arg4 = vector3
    arg5 = 236.02685546875
    workValue11 = -1373.7049560547
    numberValue20 = 33.010623931885
    arg4 = arg4(arg5, workValue11, numberValue20)
    arg5 = 40.0
    workValue11 = true
    arg2(arg3, arg4, arg5, workValue11)
  else
    arg2 = CMG
    arg2 = arg2.deleteGreenzone
    arg3 = "organ"
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2981026492".
cmgCall5(textValue8, dataTable5)
cmgCall5 = RegisterNetEvent
textValue8 = "7196c1daff"
-- Beginner: this function handles network event "7196c1daff".
function dataTable5(arg1, arg2)
  local arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22
  arg3 = CMG
  arg3 = arg3.getLocalPlayerSrc
  arg3 = arg3()
  if arg3 == arg1 then
    numberValue10 = arg2
  end
  arg3 = GetPlayerFromServerId
  arg4 = arg1
  -- Beginner: result below is playerIndex.
  arg3 = arg3(arg4)
  if -1 == arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.addPlayerToLeaderboard
  arg5 = {}
  workValue11 = CMG
  workValue11 = workValue11.getPlayerName
  numberValue20 = arg3
  workValue11 = workValue11(numberValue20)
  numberValue20 = ""
  numberValue21 = ""
  textValue12 = true
  numberValue22 = 0
  arg5.playerSrc = arg1
  arg5[1] = workValue11
  arg5[2] = numberValue20
  arg5[3] = numberValue21
  arg5[4] = textValue12
  arg5[5] = numberValue22
  arg4(arg5)
  arg4 = CMG
  arg4 = arg4.updateScoreboard
  arg5 = arg1
  workValue11 = 5
  numberValue20 = arg2
  arg4(arg5, workValue11, numberValue20)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7196c1daff".
cmgCall5(textValue8, dataTable5)
cmgCall5 = 0
textValue8 = 0
dataTable5 = {}
dataTable6 = {}
flag15 = false
function workValue7(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = IsNamedRendertargetRegistered
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = RegisterNamedRendertarget
    arg4 = arg1
    arg5 = false
    arg3(arg4, arg5)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = LinkNamedRendertarget
    arg4 = arg2
    arg3(arg4)
  end
  arg3 = IsNamedRendertargetLinked
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = GetNamedRendertargetRenderId
    arg4 = arg1
    return arg3(arg4)
  else
    arg3 = 0
    return arg3
  end
end
function workValue8()
  local arg1, arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = cmgCall.tvModelHash
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CreateObject
  arg2 = cmgCall.tvModelHash
  arg3 = cmgCall.tvPosition
  arg3 = arg3.x
  arg4 = cmgCall.tvPosition
  arg4 = arg4.y
  arg5 = cmgCall.tvPosition
  arg5 = arg5.z
  workValue11 = false
  numberValue20 = false
  numberValue21 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21)
  cmgCall5 = arg1
  arg1 = SetModelAsNoLongerNeeded
  arg2 = cmgCall.tvModelHash
  arg1(arg2)
  arg1 = SetEntityHeading
  arg2 = cmgCall5
  arg3 = cmgCall.tvPosition
  arg3 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  arg1(arg2, arg3)
  arg1 = SetEntityLodDist
  arg2 = cmgCall5
  arg3 = 75
  arg1(arg2, arg3)
  arg1 = workValue7
  arg2 = "cmgtv9"
  arg3 = cmgCall.tvModelHash
  arg1 = arg1(arg2, arg3)
  textValue8 = arg1
  arg1 = TriggerServerEvent
  arg2 = "c2fd3b9175"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c2fd3b9175".
  arg1(arg2)
end
function workValue9()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = cmgCall5
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  cmgCall5 = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  textValue8 = arg1
end
dataTable7 = {}
dataTable8 = {}
cmgCall6 = 255
dataTable9 = 215
numberValue14 = 0
dataTable8[1] = cmgCall6
dataTable8[2] = dataTable9
dataTable8[3] = numberValue14
cmgCall6 = {}
dataTable9 = 192
numberValue14 = 192
numberValue15 = 192
cmgCall6[1] = dataTable9
cmgCall6[2] = numberValue14
cmgCall6[3] = numberValue15
dataTable9 = {}
numberValue14 = 140
numberValue15 = 120
numberValue16 = 83
dataTable9[1] = numberValue14
dataTable9[2] = numberValue15
dataTable9[3] = numberValue16
numberValue14 = {}
numberValue15 = 140
numberValue16 = 120
numberValue18 = 83
numberValue14[1] = numberValue15
numberValue14[2] = numberValue16
numberValue14[3] = numberValue18
numberValue15 = {}
numberValue16 = 140
numberValue18 = 120
numberValue19 = 83
numberValue15[1] = numberValue16
numberValue15[2] = numberValue18
numberValue15[3] = numberValue19
dataTable7[1] = dataTable8
dataTable7[2] = cmgCall6
dataTable7[3] = dataTable9
dataTable7[4] = numberValue14
dataTable7[5] = numberValue15
function dataTable8(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11
  arg2 = arg1.distance
  if arg2 > 50.0 then
    return
  end
  arg2 = SetTextRenderId
  arg3 = textValue8
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = DrawAdvancedText
  arg3 = 0.6
  arg4 = 0.0
  arg5 = 0.005
  workValue11 = 0.0028
  numberValue20 = 0.7
  numberValue21 = flag15
  if numberValue21 then
    numberValue21 = "Top Earnings"
    if numberValue21 then
      goto flow_label_27
    end
  end
  numberValue21 = "Top Streaks"
  ::flow_label_27::
  textValue12 = 248
  numberValue22 = 246
  numberValue = 240
  numberValue3 = 200
  flag = 4
  cmgCall2 = 0
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2)
  arg2 = DrawAdvancedText
  arg3 = 0.15
  arg4 = 0.17
  arg5 = 0.005
  workValue11 = 0.0028
  numberValue20 = 0.4
  numberValue21 = "Name"
  textValue12 = 248
  numberValue22 = 246
  numberValue = 240
  numberValue3 = 255
  flag = 4
  cmgCall2 = 1
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2)
  arg2 = DrawAdvancedText
  arg3 = 0.5
  arg4 = 0.17
  arg5 = 0.005
  workValue11 = 0.0028
  numberValue20 = 0.4
  numberValue21 = "Perm ID"
  textValue12 = 248
  numberValue22 = 246
  numberValue = 240
  numberValue3 = 255
  flag = 4
  cmgCall2 = 1
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2)
  arg2 = DrawAdvancedText
  arg3 = 0.9
  arg4 = 0.17
  arg5 = 0.005
  workValue11 = 0.0028
  numberValue20 = 0.4
  numberValue21 = flag15
  if numberValue21 then
    numberValue21 = "Amount"
    if numberValue21 then
      goto flow_label_75
    end
  end
  numberValue21 = "Days"
  ::flow_label_75::
  textValue12 = 248
  numberValue22 = 246
  numberValue = 240
  numberValue3 = 255
  flag = 4
  cmgCall2 = 1
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2)
  arg2 = DrawRect
  arg3 = 0.5
  arg4 = 0.26
  arg5 = 0.95
  workValue11 = 0.005
  numberValue20 = 248
  numberValue21 = 246
  textValue12 = 240
  numberValue22 = 255
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22)
  arg2 = pairs
  arg3 = flag15
  if arg3 then
    arg3 = dataTable6
    if arg3 then
      goto flow_label_100
    end
  end
  arg3 = dataTable5
  ::flow_label_100::
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for workValue11, numberValue20 in arg2, arg3, arg4, arg5 do
    numberValue21 = dataTable7
    numberValue21 = numberValue21[workValue11]
    if numberValue21 and numberValue20 then
      textValue12 = DrawAdvancedText
      numberValue22 = 0.15
      numberValue = 0.07 * workValue11
      numberValue = 0.205 + numberValue
      numberValue3 = 0.005
      flag = 0.0028
      cmgCall2 = 0.34
      numberValue6 = numberValue20[1]
      flag2 = numberValue21[1]
      flag3 = numberValue21[2]
      flag4 = numberValue21[3]
      flag5 = 255
      flag7 = 4
      flag10 = 1
      textValue12(numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10)
      textValue12 = DrawAdvancedText
      numberValue22 = 0.5
      numberValue = 0.07 * workValue11
      numberValue = 0.205 + numberValue
      numberValue3 = 0.005
      flag = 0.0028
      cmgCall2 = 0.35
      numberValue6 = numberValue20[2]
      flag2 = numberValue21[1]
      flag3 = numberValue21[2]
      flag4 = numberValue21[3]
      flag5 = 255
      flag7 = 4
      flag10 = 1
      textValue12(numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10)
      textValue12 = flag15
      if textValue12 then
        textValue12 = "\194\163"
        numberValue22 = getMoneyStringFormatted
        numberValue = numberValue20[3]
        numberValue22 = numberValue22(numberValue)
        textValue12 = textValue12 .. numberValue22
        if textValue12 then
          goto flow_label_153
        end
      end
      textValue12 = numberValue20[3]
      ::flow_label_153::
      numberValue22 = DrawAdvancedText
      numberValue = 0.9
      numberValue3 = 0.07 * workValue11
      numberValue3 = 0.205 + numberValue3
      flag = 0.005
      cmgCall2 = 0.0028
      numberValue6 = 0.35
      flag2 = textValue12
      flag3 = numberValue21[1]
      flag4 = numberValue21[2]
      flag5 = numberValue21[3]
      flag7 = 255
      flag10 = 4
      flag11 = 1
      numberValue22(numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11)
    end
  end
  arg2 = SetTextRenderId
  arg3 = GetDefaultScriptRendertargetRenderId
  arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11 = arg3()
  arg2(arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2, numberValue6, flag2, flag3, flag4, flag5, flag7, flag10, flag11)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = false
  arg2(arg3)
  arg2 = arg1.distance
  arg3 = 2.5
  if arg2 < arg3 then
    arg2 = drawNativeNotification
    arg3 = "Press ~INPUT_CONTEXT~ to switch to "
    arg4 = flag15
    if arg4 then
      arg4 = "streaks"
      if arg4 then
        goto flow_label_193
      end
    end
    arg4 = "earnings"
    ::flow_label_193::
    arg3 = arg3 .. arg4
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(arg3)
    arg2 = IsControlJustPressed
    arg3 = 0
    arg4 = 51
    arg2 = arg2(arg3, arg4)
    if arg2 then
      arg2 = TriggerServerEvent
      arg3 = "e680167e6a"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e680167e6a".
      arg2(arg3)
    end
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createArea
dataTable9 = "organheist_tv"
numberValue14 = cmgCall.tvPosition
numberValue14 = numberValue14.xyz
numberValue15 = 100.0
numberValue16 = 500.0
numberValue18 = workValue8
numberValue19 = workValue9
workValue10 = dataTable8
dataTable10 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall6(dataTable9, numberValue14, numberValue15, numberValue16, numberValue18, numberValue19, workValue10, dataTable10)
cmgCall6 = AddEventHandler
dataTable9 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function numberValue14(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = DoesEntityExist
    arg3 = cmgCall5
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = cmgCall5
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall6(dataTable9, numberValue14)
cmgCall6 = RegisterNetEvent
dataTable9 = "b606d9a2c6"
-- Beginner: this function handles network event "b606d9a2c6".
function numberValue14(arg1, arg2, arg3)
  dataTable5 = arg1
  dataTable6 = arg2
  flag15 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b606d9a2c6".
cmgCall6(dataTable9, numberValue14)
cmgCall6 = RegisterNetEvent
dataTable9 = "4d03144adf"
-- Beginner: this function handles network event "4d03144adf".
function numberValue14(arg1)
  local arg2
  flag15 = arg1
end
cmgCall6(dataTable9, numberValue14)
cmgCall6 = CMG
-- Beginner: this function handles network event "4d03144adf".
function dataTable9(arg1)
  local arg2, arg3, arg4, arg5, workValue11, numberValue20, numberValue21, textValue12, numberValue22, numberValue, numberValue3, flag, cmgCall2
  arg2 = pairs
  arg3 = cmgCall.locations
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for workValue11, numberValue20 in arg2, arg3, arg4, arg5 do
    numberValue21 = pairs
    textValue12 = numberValue20.sides
    numberValue21, textValue12, numberValue22, numberValue = numberValue21(textValue12)
    for numberValue3, flag in numberValue21, textValue12, numberValue22, numberValue do
      cmgCall2 = flag.interiorId
      if cmgCall2 then
        cmgCall2 = flag.interiorId
        if cmgCall2 == arg1 then
          cmgCall2 = flag.roomKey
          return cmgCall2
        end
      end
    end
  end
  arg2 = nil
  return arg2
end
cmgCall6.getOrganRoomKeyFromInteriorId = dataTable9