--[[
    Beginner Guide: cl_dogfighting.lua
    ==================================

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
    BEGINNER GUIDE — Dogfighting
    ============================

    File: cmg/prod/client/events/cl_dogfighting.lua
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
      * cfg/events/cfg_dogfighting

    Network/hash identifiers found: 15
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * DLC_IE_JN_Player_Sounds

]]
local cmgCall, textValue, workValue25, workValue34, workValue42, workValue48, workValue49, workValue50, workValue51, workValue52, workValue, workValue2, workValue4, workValue5, workValue6, workValue7, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue23, workValue26, workValue27, workValue28, workValue29, workValue30, workValue32, eventRegistration, textValue2, cmgCall2, eventHandlerRegistration, textValue3, workValue35, workValue36, workValue37, workValue38, iterator, numberValue5, workValue39, workValue40, workValue41, workValue44, workValue45, numberValue6, workValue46, workValue47
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/events/cfg_dogfighting"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
textValue = nil
function workValue25(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = IsNewLoadSceneLoaded
  arg2 = arg2()
  arg3 = HasModelLoaded
  arg4 = arg1.selectedVehicleModelHash
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = RequestModel
    arg5 = arg1.selectedVehicleModelHash
    arg4(arg5)
  end
  if arg2 and arg3 then
    arg4 = arg1.hasSentLoadedEvent
    if not arg4 then
      arg4 = TriggerServerEvent
      arg5 = "394e95d641"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "394e95d641".
      arg4(arg5)
      arg1.hasSentLoadedEvent = true
    end
  end
end
function workValue34()
  local arg1, arg2
  arg1 = IsScreenFadedOut
  arg1 = arg1()
  if arg1 then
    arg1 = IsScreenFadingOut
    arg1 = arg1()
    if arg1 then
      goto flow_label_14
    end
  end
  arg1 = DoScreenFadeOut
  arg2 = 500
  arg1(arg2)
  arg1 = false
  return arg1
  ::flow_label_14::
  arg1 = true
  return arg1
end
function workValue42()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isEventSequenceRunning
  arg1 = arg1()
  if arg1 then
    arg1 = workValue34
    arg1 = arg1()
    if arg1 then
      arg1 = CMG
      arg1 = arg1.stopEventSequence
      arg1()
    end
  end
end
function workValue48()
  local arg1, arg2
  arg1 = IsScreenFadedIn
  arg1 = arg1()
  if not arg1 then
    arg1 = IsScreenFadingIn
    arg1 = arg1()
    if not arg1 then
      arg1 = DoScreenFadeIn
      arg2 = 500
      arg1(arg2)
    end
  end
end
function workValue49(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = IsPlayerControlOn
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = SetPlayerControl
    arg4 = arg2
    arg5 = false
    arg6 = 0
    arg3(arg4, arg5, arg6)
  end
  if arg1 then
    arg3 = DisableAllControlActions
    arg4 = 0
    arg3(arg4)
    arg3 = CMG
    arg3 = arg3.hideAllDisplays
    arg4 = "dogfighting"
    arg3(arg4)
  end
end
function workValue50(arg1)
  local arg2, arg3
  arg2 = workValue42
  arg2()
  arg2 = workValue25
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue49
  arg3 = true
  arg2(arg3)
end
function workValue51()
  local arg1, arg2
  arg1 = workValue42
  arg1()
  arg1 = workValue49
  arg2 = true
  arg1(arg2)
end
function workValue52(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = pairs
  arg3 = cmgCall.teams
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.name
    if arg8 == arg1 then
      return arg7
    end
  end
  arg2 = nil
  return arg2
end
function workValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = workValue48
  arg2()
  arg2 = workValue49
  arg3 = false
  arg2(arg3)
  arg2 = arg1.hasSetupCustomisation
  if arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.startVehicleSelection
  arg3 = arg1.spawnPosition
  arg3 = arg3.xyz
  arg4 = arg1.spawnPosition
  arg4 = arg4.w
  arg5 = {}
  arg6 = arg1.vehicleName
  arg7 = {}
  arg7.level = 0
  arg8 = arg1.selectedVehicleModelHash
  arg7.model = arg8
  arg5[arg6] = arg7
  arg6 = math
  arg6 = arg6.floor
  arg7 = cmgCall.customVehicleTimeMsec
  arg7 = arg7 / 1000
  arg6 = arg6(arg7)
  function arg7()
    local arg12, arg22
  end
  function arg8(arg12)
    local arg22, arg32, arg42
    arg22 = CMG
    arg22 = arg22.getEventLocalPlayer
    arg22 = arg22()
    if arg22 then
      arg32 = arg22.data
      arg32 = arg32.teamName
      if arg32 then
        arg32 = workValue52
        arg42 = arg22.data
        arg42 = arg42.teamName
        arg32 = arg32(arg42)
        if arg32 then
          arg42 = arg32.vehicleColour
          arg1.selectedVehicleColour = arg42
          return
        end
      end
    end
    arg1.selectedVehicleColour = arg12
  end
  arg2(arg3, arg4, arg5, arg6, arg7, arg8)
  arg1.hasSetupCustomisation = true
end
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17
  arg2 = CMG
  arg2 = arg2.requestEntitySpawn
  arg3 = "dogfighting"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.spawnVehicle
  arg3 = arg1.selectedVehicleModelHash
  arg4 = arg1.spawnPosition
  arg4 = arg4.x
  arg5 = arg1.spawnPosition
  arg5 = arg5.y
  arg6 = arg1.spawnPosition
  arg6 = arg6.z
  arg7 = arg1.spawnPosition
  arg7 = arg7.w
  arg8 = true
  coords = true
  flag17 = true
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17)
  arg1.vehicle = arg2
  arg2 = FreezeEntityPosition
  arg3 = arg1.vehicle
  arg4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = SetVehicleEngineOn
  arg3 = arg1.vehicle
  arg4 = true
  arg5 = true
  arg6 = false
  arg2(arg3, arg4, arg5, arg6)
  arg2 = SetHeliBladesFullSpeed
  arg3 = arg1.vehicle
  arg2(arg3)
  arg2 = ControlLandingGear
  arg3 = arg1.vehicle
  arg4 = 3
  arg2(arg3, arg4)
  arg2 = SetVehicleFlightNozzlePositionImmediate
  arg3 = arg1.vehicle
  arg4 = 0.0
  arg2(arg3, arg4)
  arg2 = SetVehicleColours
  arg3 = arg1.vehicle
  arg4 = arg1.selectedVehicleColour
  arg5 = arg1.selectedVehicleColour
  arg2(arg3, arg4, arg5)
  arg2 = arg1.spawnProtectEndTime
  if not arg2 then
    arg2 = 0
  end
  arg3 = math
  arg3 = arg3.max
  arg4 = GetNetworkTime
  -- Beginner: result below is networkTime.
  arg4 = arg4()
  arg5 = cmgCall.respawnProtectionTimeMsec
  arg4 = arg4 + arg5
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  arg1.spawnProtectEndTime = arg3
  arg1.isRequestVehicle = false
end
function workValue4(arg1)
  local arg2, arg3
  arg2 = DoesEntityExist
  arg3 = arg1.vehicle
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = arg1.isRequestVehicle
    if not arg2 then
      arg2 = Citizen
      arg2 = arg2.CreateThreadNow
      function arg3()
        local arg12, arg22
        arg12 = workValue2
        arg22 = arg1
        arg12(arg22)
      end
      arg2(arg3)
      arg1.isRequestVehicle = true
    end
  end
end
function workValue5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6
  arg2 = workValue48
  arg2()
  arg2 = workValue49
  arg3 = true
  arg2(arg3)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = GetFrameCount
  arg3 = arg3()
  arg4 = arg1.flyInStartTime
  if not arg4 then
    arg1.flyInStartTime = arg2
  end
  arg4 = arg1.flyInStartTime
  arg4 = arg2 - arg4
  arg5 = cmgCall.flyInIntroTimeMsec
  arg5 = arg5 / 2
  arg5 = arg4 < arg5
  arg6 = GetTogglePausedRenderphasesStatus
  arg6 = arg6()
  if arg5 then
    arg7 = 1
    if arg7 then
      goto flow_label_32
    end
  end
  arg7 = false
  ::flow_label_32::
  if arg6 == arg7 then
    arg6 = TogglePausedRenderphases
    arg7 = not arg5
    arg6(arg7)
    arg1.toggledRenderPhaseFrame = arg3
  end
  arg6 = arg1.hasSetupCustomisation
  if arg6 then
    arg6 = arg1.toggledRenderPhaseFrame
    if 0 ~= arg6 then
      arg6 = arg1.toggledRenderPhaseFrame
      if arg3 > arg6 then
        arg6 = CMG
        arg6 = arg6.endVehicleSelection
        arg6()
        arg6 = AnimpostfxPlay
        arg7 = "SuccessNeutral"
        arg8 = -1
        coords = false
        arg6(arg7, arg8, coords)
        arg6 = PlaySoundFrontend
        arg7 = -1
        arg8 = "Become_Attacker"
        coords = "DLC_IE_JN_Player_Sounds"
        flag17 = false
        arg6(arg7, arg8, coords, flag17)
        arg1.hasSetupCustomisation = false
      end
    end
  end
  arg6 = workValue4
  arg7 = arg1
  arg6(arg7)
  if arg5 then
    return
  end
  arg6 = AnimpostfxIsRunning
  arg7 = "SuccessNeutral"
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = AnimpostfxStop
    arg7 = "SuccessNeutral"
    arg6(arg7)
  end
  arg6 = GetFrameTime
  arg6 = arg6()
  arg7 = GetEntityMatrix
  arg8 = arg1.vehicle
  arg7, arg8 = arg7(arg8)
  coords = GetEntityCoords
  flag17 = arg1.vehicle
  flag = true
  -- Beginner: result below is entityCoords.
  coords = coords(flag17, flag)
  flag17 = arg7 * 50.0
  flag = flag17 * arg6
  flag = coords + flag
  workValue3 = SetEntityCoordsNoOffset
  networkTime = arg1.vehicle
  flag2 = flag.x
  flag3 = flag.y
  workValue8 = flag.z
  flag4 = true
  flag5 = false
  flag6 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue3(networkTime, flag2, flag3, workValue8, flag4, flag5, flag6)
  workValue3 = SetEntityVelocity
  networkTime = arg1.vehicle
  flag2 = flag17.x
  flag3 = flag17.y
  workValue8 = flag17.z
  workValue3(networkTime, flag2, flag3, workValue8)
  workValue3 = arg1.flyInCamera
  if 0 ~= workValue3 then
    workValue3 = arg1.easingFlyInCamera
    if not workValue3 then
      workValue3 = arg1.flyInEndTime
      if workValue3 then
        workValue3 = arg1.flyInEndTime
        networkTime = GetNetworkTime
        -- Beginner: result below is networkTime.
        networkTime = networkTime()
        workValue3 = workValue3 - networkTime
        if workValue3 then
          goto flow_label_123
        end
      end
      workValue3 = 0
      ::flow_label_123::
      if workValue3 < 0 then
        workValue3 = 0
      end
      networkTime = RenderScriptCams
      flag2 = false
      flag3 = true
      workValue8 = workValue3
      flag4 = false
      flag5 = false
      networkTime(flag2, flag3, workValue8, flag4, flag5)
      arg1.easingFlyInCamera = true
    end
    return
  end
  workValue3 = CreateCam
  networkTime = "DEFAULT_SCRIPTED_CAMERA"
  flag2 = true
  -- Beginner: result below is cameraHandle.
  workValue3 = workValue3(networkTime, flag2)
  arg1.flyInCamera = workValue3
  workValue3 = arg1.spawnPosition
  workValue3 = workValue3.xyz
  networkTime = arg7 * -30.0
  workValue3 = workValue3 + networkTime
  networkTime = arg8 * 20.0
  workValue3 = workValue3 + networkTime
  networkTime = vector3
  flag2 = 0.0
  flag3 = 0.0
  workValue8 = 10.0
  networkTime = networkTime(flag2, flag3, workValue8)
  workValue3 = workValue3 + networkTime
  networkTime = SetCamCoord
  flag2 = arg1.flyInCamera
  flag3 = workValue3.x
  workValue8 = workValue3.y
  flag4 = workValue3.z
  networkTime(flag2, flag3, workValue8, flag4)
  networkTime = PointCamAtEntity
  flag2 = arg1.flyInCamera
  flag3 = arg1.vehicle
  workValue8 = 0.0
  flag4 = 0.0
  flag5 = 0.0
  flag6 = false
  networkTime(flag2, flag3, workValue8, flag4, flag5, flag6)
  networkTime = SetCamActive
  flag2 = arg1.flyInCamera
  flag3 = true
  networkTime(flag2, flag3)
  networkTime = RenderScriptCams
  flag2 = true
  flag3 = false
  workValue8 = 0
  flag4 = false
  flag5 = false
  networkTime(flag2, flag3, workValue8, flag4, flag5)
end
function workValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = CMG
  arg2 = arg2.getClientEventData
  arg3 = "DogFightingClientData"
  arg2 = arg2(arg3)
  arg3 = arg1.timers
  arg3 = arg3.push
  arg4 = "~y~PLAYERS"
  arg5 = tostring
  arg6 = arg2.players
  arg6 = #arg6
  arg5, arg6, arg7 = arg5(arg6)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = CMG
  arg3 = arg3.getEventLocalPlayer
  arg3 = arg3()
  if not arg3 then
    return
  end
  arg4 = arg1.timers
  arg4 = arg4.push
  arg5 = "~r~LIVES"
  arg6 = tostring
  arg7 = arg3.data
  arg7 = arg7.numLives
  arg6, arg7 = arg6(arg7)
  arg4(arg5, arg6, arg7)
  arg4 = arg1.timers
  arg4 = arg4.push
  arg5 = "~g~KILLS"
  arg6 = tostring
  arg7 = arg3.data
  arg7 = arg7.numKills
  arg6, arg7 = arg6(arg7)
  arg4(arg5, arg6, arg7)
end
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = IsPlayerControlOn
  arg4 = arg2
  arg3 = arg3(arg4)
  arg4 = arg1.isRequestVehicle
  if arg3 == arg4 then
    arg3 = SetPlayerControl
    arg4 = arg2
    arg5 = arg1.isRequestVehicle
    arg5 = not arg5
    arg6 = 0
    arg3(arg4, arg5, arg6)
    arg3 = DisableAllControlActions
    arg4 = 0
    arg3(arg4)
  end
end
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = IsEntityPositionFrozen
  arg3 = arg1.vehicle
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = FreezeEntityPosition
    arg3 = arg1.vehicle
    arg4 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, arg4)
    arg2 = GetEntityForwardVector
    arg3 = arg1.vehicle
    arg2 = arg2(arg3)
    arg2 = arg2 * 50.0
    arg3 = SetEntityVelocity
    arg4 = arg1.vehicle
    arg5 = arg2.x
    arg6 = arg2.y
    arg7 = arg2.z
    arg3(arg4, arg5, arg6, arg7)
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 == arg2 then
    arg3 = DoesEntityExist
    arg4 = arg1.vehicle
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = GetVehicleEngineHealth
      arg4 = arg1.vehicle
      arg3 = arg3(arg4)
      if arg3 > 0 then
        arg3 = SetPedIntoVehicle
        arg4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg4 = arg4()
        arg5 = arg1.vehicle
        arg6 = -1
        arg3(arg4, arg5, arg6)
      else
      end
    end
  end
end
function workValue10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = arg1.allowGuns
  if not arg3 then
    arg3 = pairs
    arg4 = cmgCall.gunHashes
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      coords = DisableVehicleWeapon
      flag17 = true
      flag = arg8
      workValue3 = arg1.vehicle
      networkTime = arg2
      coords(flag17, flag, workValue3, networkTime)
    end
  end
  arg3 = arg1.allowRockets
  if not arg3 then
    arg3 = pairs
    arg4 = cmgCall.missileHashes
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      coords = DisableVehicleWeapon
      flag17 = true
      flag = arg8
      workValue3 = arg1.vehicle
      networkTime = arg2
      coords(flag17, flag, workValue3, networkTime)
    end
  end
end
function workValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = SetEntityInvincible
  arg4 = arg2
  arg5 = arg1
  arg3(arg4, arg5)
  arg3 = SetEntityVisible
  arg4 = arg2
  arg5 = not arg1
  arg6 = not arg1
  arg3(arg4, arg5, arg6)
  arg3 = SetEntityProofs
  arg4 = arg2
  arg5 = arg1
  arg6 = arg1
  arg7 = arg1
  arg8 = arg1
  coords = arg1
  flag17 = arg1
  flag = arg1
  workValue3 = arg1
  arg3(arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3)
  arg3 = FreezeEntityPosition
  arg4 = arg2
  arg5 = not arg1
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(arg4, arg5)
end
function workValue12(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = workValue11
  arg3 = arg1.hasRespawned
  arg2(arg3)
  arg2 = arg1.hasRespawned
  if not arg2 then
    arg2 = workValue48
    arg2()
    return
  end
  arg2 = IsScreenFadedOut
  arg2 = arg2()
  if arg2 then
    arg2 = IsScreenFadingOut
    arg2 = arg2()
    if arg2 then
      goto flow_label_21
    end
  end
  arg2 = DoScreenFadeOut
  arg3 = 500
  arg2(arg3)
  ::flow_label_21::
  arg2 = arg1.wantsNewVehicle
  if arg2 then
    arg2 = arg1.isRequestVehicle
    if not arg2 then
      arg2 = IsScreenFadedOut
      arg2 = arg2()
      if not arg2 then
        arg2 = DoScreenFadeOut
        arg3 = 0
        arg2(arg3)
      end
      arg2 = CMG
      arg2 = arg2.getEventKillCamera
      arg2 = arg2()
      if arg2 then
        arg3 = RenderScriptCams
        arg4 = false
        arg5 = false
        arg6 = 0
        arg7 = false
        arg8 = false
        arg3(arg4, arg5, arg6, arg7, arg8)
        arg3 = SetCamActive
        arg4 = arg2
        arg5 = false
        arg3(arg4, arg5)
        arg3 = DestroyCam
        arg4 = arg2
        arg5 = false
        arg3(arg4, arg5)
      end
      arg3 = Citizen
      arg3 = arg3.CreateThreadNow
      function arg4()
        local arg12, arg22
        arg12 = workValue2
        arg22 = arg1
        arg12(arg22)
        arg1.hasRespawned = false
        arg1.wantsNewVehicle = false
      end
      arg3(arg4)
      arg1.isRequestVehicle = true
    end
  end
end
function workValue13(arg1)
  local arg2, arg3
  arg2 = arg1.vehicle
  if 0 ~= arg2 then
    arg2 = DoesEntityExist
    arg3 = arg1.vehicle
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = arg1.vehicle
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
end
function workValue14()
  local arg1, arg2, arg3, arg4
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 49
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 75
  arg4 = true
  arg1(arg2, arg3, arg4)
end
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2
  arg1 = CMG
  arg1 = arg1.getClientEventData
  arg2 = "DogFightingClientData"
  arg1 = arg1(arg2)
  arg2 = pairs
  arg3 = arg1.players
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.blip
    if arg8 then
      arg8 = GetPlayerFromServerId
      coords = arg7.source
      -- Beginner: result below is playerIndex.
      arg8 = arg8(coords)
      if arg8 >= 0 then
        coords = GetPlayerPed
        flag17 = arg8
        -- Beginner: result below is playerPed.
        coords = coords(flag17)
        if 0 ~= coords then
          flag17 = SetBlipSprite
          flag = arg7.blip
          workValue3 = 16
          flag17(flag, workValue3)
          flag17 = SetBlipRotation
          flag = arg7.blip
          workValue3 = math
          workValue3 = workValue3.ceil
          networkTime = GetEntityHeading
          flag2 = coords
          networkTime, flag2 = networkTime(flag2)
          workValue3, networkTime, flag2 = workValue3(networkTime, flag2)
          flag17(flag, workValue3, networkTime, flag2)
          flag17 = workValue52
          flag = arg7.data
          flag = flag.teamName
          flag17 = flag17(flag)
          if flag17 then
            flag = SetBlipColour
            workValue3 = arg7.blip
            networkTime = flag17.blipColour
            flag(workValue3, networkTime)
          end
        end
      end
    end
  end
end
function workValue16()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.getEventLocalPlayer
  arg1 = arg1()
  arg2 = cmgCall.defaultRelationshipHash
  if arg1 then
    arg3 = arg1.data
    arg3 = arg3.teamName
    if arg3 then
      arg3 = workValue52
      arg4 = arg1.data
      arg4 = arg4.teamName
      arg3 = arg3(arg4)
      if arg3 then
        arg2 = arg3.relationshipHash
      end
    end
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = SetPedRelationshipGroupHash
  arg5 = arg3
  arg6 = arg2
  arg4(arg5, arg6)
  arg4 = SetPedConfigFlag
  arg5 = arg3
  arg6 = 44
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = SetPedConfigFlag
  arg5 = arg3
  arg6 = 45
  arg7 = false
  arg4(arg5, arg6, arg7)
end
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13
  arg2 = cmgCall.locations
  arg3 = arg1.mapName
  arg2 = arg2[arg3]
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 == arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = arg2.centerPosition
  arg4 = arg4 - arg5
  arg4 = #arg4
  arg5 = arg2.initialRadius
  arg5 = arg5 - arg4
  arg6 = arg2.initialRadius
  arg6 = arg6 * 0.15
  if arg5 >= arg6 then
    return
  end
  arg7 = DrawMarker
  arg8 = 1
  coords = arg2.centerPosition
  coords = coords.x
  flag17 = arg2.centerPosition
  flag17 = flag17.y
  flag = 0.0
  workValue3 = 0.0
  networkTime = 0.0
  flag2 = 0.0
  flag3 = 0.0
  workValue8 = 0.0
  flag4 = 0.0
  flag5 = arg2.initialRadius
  flag5 = flag5 * 2.0
  flag6 = arg2.initialRadius
  flag6 = flag6 * 2.0
  flag7 = arg2.initialRadius
  flag7 = flag7 * 2.0
  flag8 = 255
  numberValue = 0
  flag9 = 0
  numberValue2 = 75
  flag10 = false
  flag11 = false
  numberValue3 = 2
  flag12 = false
  workValue22 = nil
  workValue24 = nil
  flag13 = false
  arg7(arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13)
end
function workValue18(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  arg3 = "dogfighting"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.showDisplay
  arg3 = "radar"
  arg4 = "dogfighting"
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.showDisplay
  arg3 = "compass"
  arg4 = "dogfighting"
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.setPlayerCanOpenLeaderboard
  arg3 = true
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.getEventLocalPlayer
  arg2 = arg2()
  arg3 = workValue6
  arg4 = arg1
  arg3(arg4)
  arg3 = workValue7
  arg4 = arg1
  arg3(arg4)
  arg3 = workValue9
  arg4 = arg1
  arg3(arg4)
  arg3 = workValue10
  arg4 = arg1
  arg3(arg4)
  if arg2 then
    arg3 = arg2.active
    if arg3 then
      arg3 = workValue12
      arg4 = arg1
      arg3(arg4)
  end
  else
    arg3 = workValue13
    arg4 = arg1
    arg3(arg4)
  end
  arg3 = workValue15
  arg3()
  arg3 = workValue14
  arg3()
  arg3 = workValue16
  arg3()
  arg3 = workValue17
  arg4 = arg1
  arg3(arg4)
end
function workValue19(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = SetLocalPlayerAsGhost
  arg4 = arg2
  arg3(arg4)
  arg3 = SetNetworkVehicleAsGhost
  arg4 = arg1.vehicle
  arg5 = arg2
  arg3(arg4, arg5)
end
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = arg1.spawnProtectEndTime
  if arg2 then
    arg2 = arg1.spawnProtectEndTime
    arg3 = GetNetworkTime
    -- Beginner: result below is networkTime.
    arg3 = arg3()
    arg2 = arg2 - arg3
    if arg2 >= 0 then
      arg3 = arg1.timers
      arg3 = arg3.push
      arg4 = "~q~PROTECTION"
      arg5 = tostring
      arg6 = math
      arg6 = arg6.rounddp
      arg7 = arg2 / 1000.0
      arg8 = 1
      arg6, arg7, arg8 = arg6(arg7, arg8)
      arg5, arg6, arg7, arg8 = arg5(arg6, arg7, arg8)
      arg3(arg4, arg5, arg6, arg7, arg8)
      arg3 = true
      return arg3
    end
  end
  arg2 = false
  return arg2
end
function workValue21()
  local arg1, arg2, arg3
  arg1 = drawNativeNotification
  arg2 = [[
Press ~INPUT_VEH_FLY_ATTACK2~ to fire your weapon.
Press ~INPUT_VEH_SELECT_NEXT_WEAPON~ to switch weapons.
Press ~INPUT_VEH_ROOF~ to toggle stealth.
Hold ~INPUT_VEH_FLY_UNDERCARRIAGE~ to toggle VTOL.]]
  arg3 = true
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2, arg3)
end
function workValue23(arg1)
  local arg2, arg3, arg4
  arg2 = workValue18
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue19
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
  arg2 = workValue20
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue21
  arg2()
end
function workValue26(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11
  arg2 = DrawMarker
  arg3 = 6
  arg4 = arg1.x
  arg5 = arg1.y
  arg6 = arg1.z
  arg7 = 0.0
  arg8 = 0.0
  coords = 0.0
  flag17 = 0.0
  flag = 0.0
  workValue3 = 0.0
  networkTime = 20.0
  flag2 = 20.0
  flag3 = 20.0
  workValue8 = 255
  flag4 = 255
  flag5 = 0
  flag6 = 180
  flag7 = false
  flag8 = true
  numberValue = 2
  flag9 = false
  numberValue2 = nil
  flag10 = nil
  flag11 = false
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11)
end
function workValue27(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3
  arg2 = cmgCall.locations
  arg3 = arg1.mapName
  arg2 = arg2[arg3]
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg4 = pairs
  arg5 = arg1.activeCollectableIndicies
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8 in arg4, arg5, arg6, arg7 do
    coords = arg2.collectableSpawns
    coords = coords[arg8]
    flag17 = workValue26
    flag = coords
    flag17(flag)
    flag17 = arg3 - coords
    flag17 = #flag17
    if flag17 < 20.0 then
      flag17 = TriggerServerEvent
      flag = "d6a062ef9a"
      workValue3 = arg8
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d6a062ef9a".
      flag17(flag, workValue3)
    end
  end
end
function workValue28(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue18
  arg3 = arg1
  arg2(arg3)
  arg2 = workValue19
  arg3 = arg1
  arg4 = workValue20
  arg5 = arg1
  arg4, arg5 = arg4(arg5)
  arg2(arg3, arg4, arg5)
  arg2 = workValue27
  arg3 = arg1
  arg2(arg3)
  arg2 = arg1.isFirstGame
  if arg2 then
    arg2 = workValue21
    arg2()
  end
end
function workValue29()
  local arg1, arg2
  arg1 = textValue
  if not arg1 then
    return
  end
  arg1 = textValue.timers
  arg1 = arg1.reset
  arg1()
  arg1 = textValue.serverState
  if "SETUP" == arg1 then
    arg1 = workValue25
    arg2 = textValue
    arg1(arg2)
  else
    arg1 = textValue.serverState
    if "WAITING_FOR_PLAYERS" == arg1 then
      arg1 = workValue50
      arg2 = textValue
      arg1(arg2)
    else
      arg1 = textValue.serverState
      if "ASSIGN_PLAYER_TEAMS" == arg1 then
        arg1 = workValue51
        arg1()
      else
        arg1 = textValue.serverState
        if "CUSTOMISE_VEHICLE" == arg1 then
          arg1 = workValue
          arg2 = textValue
          arg1(arg2)
        else
          arg1 = textValue.serverState
          if "FLY_IN_INTRO" == arg1 then
            arg1 = workValue5
            arg2 = textValue
            arg1(arg2)
          else
            arg1 = textValue.serverState
            if "INITIAL_SPAWN_PROTECTION" == arg1 then
              arg1 = workValue23
              arg2 = textValue
              arg1(arg2)
            else
              arg1 = textValue.serverState
              if "MAIN_GAME_ZONE_STATIC" == arg1 then
                arg1 = workValue28
                arg2 = textValue
                arg1(arg2)
              end
            end
          end
        end
      end
    end
  end
  arg1 = textValue.timers
  arg1 = arg1.draw
  arg1()
end
function workValue30(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag
  arg2 = textValue
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = textValue.enableEnemyBlips
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.getEventLocalPlayer
  arg2 = arg2()
  if arg2 then
    arg3 = arg2.data
    arg3 = arg3.teamName
    if arg3 then
      goto flow_label_22
    end
  end
  arg3 = false
  return arg3
  ::flow_label_22::
  arg3 = CMG
  arg3 = arg3.getClientEventData
  arg4 = "DogFightingClientData"
  arg3 = arg3(arg4)
  arg4 = pairs
  arg5 = arg3.players
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, coords in arg4, arg5, arg6, arg7 do
    flag17 = coords.source
    if flag17 == arg1 then
      flag17 = coords.data
      flag17 = flag17.teamName
      flag = arg2.data
      flag = flag.teamName
      if flag17 == flag then
        flag17 = true
        return flag17
      end
    end
  end
  arg4 = false
  return arg4
end
function workValue32(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17
  arg2 = CMG
  arg2 = arg2.getClientEventData
  arg3 = "DogFightingClientData"
  arg2 = arg2(arg3)
  arg3 = pairs
  arg4 = arg2.players
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    coords = arg8.source
    if coords == arg1 then
      coords = arg8.data
      coords = coords.teamName
      if coords then
        coords = workValue52
        flag17 = arg8.data
        flag17 = flag17.teamName
        coords = coords(flag17)
        if coords then
          flag17 = coords.tagColour
          return flag17
        end
      end
    end
  end
  arg3 = 0
  return arg3
end
eventRegistration = RegisterNetEvent
textValue2 = "7b173da89d"
-- Beginner: this function handles network event "7b173da89d".
function cmgCall2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5
  coords = cmgCall.locations
  coords = coords[arg1]
  flag17 = coords.spawnPositions
  flag17 = flag17[arg3]
  flag = AddBlipForRadius
  workValue3 = coords.centerPosition
  workValue3 = workValue3.x
  networkTime = coords.centerPosition
  networkTime = networkTime.y
  flag2 = coords.centerPosition
  flag2 = flag2.z
  flag3 = coords.initialRadius
  -- Beginner: result below is blipHandle.
  flag = flag(workValue3, networkTime, flag2, flag3)
  workValue3 = SetBlipColour
  networkTime = flag
  flag2 = 1
  workValue3(networkTime, flag2)
  workValue3 = SetBlipAlpha
  networkTime = flag
  flag2 = 75
  workValue3(networkTime, flag2)
  workValue3 = {}
  workValue3.mapName = arg1
  networkTime = GetHashKey
  flag2 = arg2
  -- Beginner: result below is hash.
  networkTime = networkTime(flag2)
  workValue3.selectedVehicleModelHash = networkTime
  workValue3.hasSentLoadedEvent = false
  workValue3.spawnPosition = flag17
  workValue3.serverState = "SETUP"
  workValue3.vehicleName = arg4
  workValue3.hasSetupCustomisation = false
  workValue3.selectedVehicleColour = 0
  workValue3.vehicle = 0
  workValue3.isRequestVehicle = false
  workValue3.toggledRenderPhaseFrame = 0
  workValue3.flyInCamera = 0
  workValue3.easingFlyInCamera = false
  networkTime = CMG
  networkTime = networkTime.createTimerBars
  -- Beginner: result below is timerBars.
  networkTime = networkTime()
  workValue3.timers = networkTime
  workValue3.hasRespawned = false
  workValue3.wantsNewVehicle = false
  workValue3.enableEnemyBlips = arg5
  workValue3.allowGuns = arg6
  workValue3.allowRockets = arg7
  networkTime = {}
  workValue3.activeCollectableIndicies = networkTime
  networkTime = GetResourceKvpInt
  flag2 = "cmg_has_played_dogfighting"
  networkTime = networkTime(flag2)
  networkTime = 1 ~= networkTime
  workValue3.isFirstGame = networkTime
  workValue3.areaBlip = flag
  textValue = workValue3
  workValue3 = CMG
  workValue3 = workValue3.getClientEventData
  networkTime = "DogFightingClientData"
  workValue3 = workValue3(networkTime)
  workValue3.drawPlayersTimeBar = false
  networkTime = CMG
  networkTime = networkTime.enableDriveBy
  flag2 = true
  networkTime(flag2)
  networkTime = CMG
  networkTime = networkTime.setEventsUsingNetworkResurrect
  flag2 = true
  networkTime(flag2)
  networkTime = CMG
  networkTime = networkTime.setIgnoreEventRespawns
  flag2 = true
  networkTime(flag2)
  networkTime = CMG
  networkTime = networkTime.enableMinigamePlayerBlips
  flag2 = true
  flag3 = nil
  workValue8 = workValue30
  flag4 = true
  networkTime(flag2, flag3, workValue8, flag4)
  networkTime = CMG
  networkTime = networkTime.enableMinigamePlayerTags
  flag2 = true
  flag3 = false
  workValue8 = workValue32
  networkTime(flag2, flag3, workValue8)
  networkTime = CMG
  networkTime = networkTime.setFriendlyFire
  flag2 = arg8 <= 1
  networkTime(flag2)
  networkTime = NewLoadSceneStartSphere
  flag2 = flag17.x
  flag3 = flag17.y
  workValue8 = flag17.z
  flag4 = 100.0
  flag5 = 0
  networkTime(flag2, flag3, workValue8, flag4, flag5)
  networkTime = CMG
  networkTime = networkTime.createThreadOnTick
  flag2 = workValue29
  flag3 = "Dog Fighting"
  -- Beginner: Run a helper every game frame while this script is active.
  networkTime(flag2, flag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7b173da89d".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "5dbce82101"
-- Beginner: this function handles network event "5dbce82101".
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = textValue
  if arg2 then
    arg2 = CMG
    arg2 = arg2.isDevMode
    arg2 = arg2()
    if arg2 then
      arg2 = print
      arg3 = string
      arg3 = arg3.format
      arg4 = "[Dog Fighting] Server state updated to %s"
      arg5 = arg1
      arg3, arg4, arg5 = arg3(arg4, arg5)
      arg2(arg3, arg4, arg5)
    end
    textValue.serverState = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5dbce82101".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "a66ea189a9"
-- Beginner: this function handles network event "a66ea189a9".
function cmgCall2(arg1)
  local arg2
  arg2 = textValue
  if arg2 then
    textValue.flyInEndTime = arg1
  end
end
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "c43761eb3c"
-- Beginner: this function handles network event "c43761eb3c".
function cmgCall2(arg1)
  local arg2
  arg2 = textValue
  if arg2 then
    textValue.spawnProtectEndTime = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c43761eb3c".
eventRegistration(textValue2, cmgCall2)
eventRegistration = RegisterNetEvent
textValue2 = "65bce35065"
-- Beginner: this function handles network event "65bce35065".
function cmgCall2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag
  arg3 = CMG
  arg3 = arg3.getClientEventData
  arg4 = "DogFightingClientData"
  arg3 = arg3(arg4)
  arg4 = pairs
  arg5 = arg3.players
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, coords in arg4, arg5, arg6, arg7 do
    flag17 = coords.data
    flag = coords.source
    flag = arg1[flag]
    flag17.teamName = flag
    flag17 = coords.data
    flag17.numLives = arg2
    flag17 = coords.data
    flag17.numKills = 0
  end
end
eventRegistration(textValue2, cmgCall2)
eventRegistration = CMG
eventRegistration = eventRegistration.registerMinigameCleanupHandler
textValue2 = "Dog Fighting"
function cmgCall2()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.deleteThreadOnTick
  arg2 = workValue29
  arg1(arg2)
  arg1 = textValue
  if not arg1 then
    return
  end
  arg1 = RemoveBlip
  arg2 = textValue.areaBlip
  arg1(arg2)
  arg1 = textValue.hasSetupCustomisation
  if arg1 then
    arg1 = CMG
    arg1 = arg1.endVehicleSelection
    arg1()
  end
  arg1 = SetPedRelationshipGroupHash
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 1862763509
  arg1(arg2, arg3)
  arg1 = SetModelAsNoLongerNeeded
  arg2 = textValue.selectedVehicleModelHash
  arg1(arg2)
  arg1 = NewLoadSceneStop
  arg1()
  arg1 = CMG
  arg1 = arg1.enableDriveBy
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.setEventsUsingNetworkResurrect
  arg2 = false
  arg1(arg2)
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
  arg1 = arg1.setFriendlyFire
  arg2 = true
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.setPlayerCanOpenLeaderboard
  arg2 = false
  arg1(arg2)
  arg1 = SetResourceKvpInt
  arg2 = "cmg_has_played_dogfighting"
  arg3 = 1
  arg1(arg2, arg3)
  arg1 = IsScreenFadedIn
  arg1 = arg1()
  if arg1 then
    arg1 = IsScreenFadedOut
    arg1 = arg1()
    if not arg1 then
      goto flow_label_68
    end
  end
  arg1 = DoScreenFadeIn
  arg2 = 500
  arg1(arg2)
  ::flow_label_68::
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "dogfighting"
  arg1(arg2)
  arg1 = nil
  textValue = arg1
end
eventRegistration(textValue2, cmgCall2)
eventRegistration = {}
eventRegistration.vehicleCategoryIndex = 1
eventRegistration.vehicleSpawncodeIndex = 1
eventRegistration.numTeams = 1
eventRegistration.vehicleWeaponIndex = 1
eventRegistration.startFlying = true
eventRegistration.numLives = 3
eventRegistration.enableCollectables = true
eventRegistration.enableEnemyBlips = true
textValue2 = CMG
textValue2 = textValue2.registerMinigameOptionsHandler
cmgCall2 = "Dog Fighting"
function eventHandlerRegistration()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords
  arg1 = RageUI
  arg1 = arg1.List
  arg2 = "Aircraft Category"
  arg3 = cmgCall.categoryNames
  arg4 = eventRegistration.vehicleCategoryIndex
  arg5 = "The category of aircraft to use. When changed, will reset the option below."
  arg6 = {}
  arg7 = true
  function arg8(arg12, arg22, arg32, arg42)
    local workValue43
    workValue43 = eventRegistration.vehicleCategoryIndex
    if arg42 ~= workValue43 then
      eventRegistration.vehicleCategoryIndex = arg42
      eventRegistration.vehicleSpawncodeIndex = 1
    end
  end
  -- Beginner: Draw a RageUI list selector.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  arg1 = cmgCall.categoryNames
  arg2 = eventRegistration.vehicleCategoryIndex
  arg1 = arg1[arg2]
  arg2 = RageUI
  arg2 = arg2.List
  arg3 = "Aircraft Type"
  arg4 = cmgCall.categoryVehicleNames
  arg4 = arg4[arg1]
  arg5 = eventRegistration.vehicleSpawncodeIndex
  arg6 = "The specific aircraft to use from the above category."
  arg7 = {}
  arg8 = true
  function coords(arg12, arg22, arg32, arg42)
    local workValue43
    workValue43 = eventRegistration.vehicleSpawncodeIndex
    if arg42 ~= workValue43 then
      eventRegistration.vehicleSpawncodeIndex = arg42
    end
  end
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords)
  arg2 = RageUI
  arg2 = arg2.List
  arg3 = "Num Teams"
  arg4 = cmgCall.numTeamsList
  arg5 = eventRegistration.numTeams
  arg6 = "The number of teams to have. If set to one, it will be every player vs every player."
  arg7 = {}
  arg8 = true
  function coords(arg12, arg22, arg32, arg42)
    local workValue43
    workValue43 = eventRegistration.numTeams
    if arg42 ~= workValue43 then
      eventRegistration.numTeams = arg42
    end
  end
  -- Beginner: Draw a RageUI list selector.
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords)
  arg2 = RageUI
  arg2 = arg2.List
  arg3 = "Allowed Weapons"
  arg4 = cmgCall.vehicleWeaponsList
  arg5 = eventRegistration.vehicleWeaponIndex
  arg6 = "The weapons which are allowed to be used in fighting."
  arg7 = {}
  arg8 = true
  function coords(arg12, arg22, arg32, arg42)
    local workValue43
    workValue43 = eventRegistration.vehicleWeaponIndex
    if arg42 ~= workValue43 then
      eventRegistration.vehicleWeaponIndex = arg42
    end
  end
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords)
  arg2 = RageUI
  arg2 = arg2.List
  arg3 = "Num Lives"
  arg4 = cmgCall.numLivesList
  arg5 = eventRegistration.numLives
  arg6 = "The amount of lives each player should have. When killed, if having extra lives they will respawn in another aircraft."
  arg7 = {}
  arg8 = true
  function coords(arg12, arg22, arg32, arg42)
    local workValue43
    workValue43 = eventRegistration.numLives
    if arg42 ~= workValue43 then
      eventRegistration.numLives = arg42
    end
  end
  -- Beginner: Draw a RageUI list selector.
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, coords)
  arg2 = RageUI
  arg2 = arg2.Checkbox
  arg3 = "Enable Collectables"
  arg4 = "Enables mid air collectables which can be flown through to collect and receive special effects."
  arg5 = eventRegistration.enableCollectables
  arg6 = {}
  function arg7(arg12, arg22, arg32, arg42)
    eventRegistration.enableCollectables = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg2(arg3, arg4, arg5, arg6, arg7)
  arg2 = RageUI
  arg2 = arg2.Checkbox
  arg3 = "Show Enemy Blips"
  arg4 = "Whether to show the blips of enemy aircraft. Your own teams blip will always be shown."
  arg5 = eventRegistration.enableEnemyBlips
  arg6 = {}
  function arg7(arg12, arg22, arg32, arg42)
    eventRegistration.enableEnemyBlips = arg42
  end
  arg2(arg3, arg4, arg5, arg6, arg7)
  arg2 = eventRegistration
  return arg2
end
textValue2(cmgCall2, eventHandlerRegistration)
textValue2 = CMG
textValue2 = textValue2.registerDevMenuState
cmgCall2 = "Dog Fighting"
eventHandlerRegistration = {}
eventHandlerRegistration.drawMaps = false
textValue2 = textValue2(cmgCall2, eventHandlerRegistration)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuItems
eventHandlerRegistration = "Events/Dog Fighting"
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Draw Maps"
  arg3 = "Draw debug information for each location."
  arg4 = textValue2.drawMaps
  arg5 = {}
  function arg6(arg12, arg22, arg32, arg42)
    textValue2.drawMaps = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
end
cmgCall2(eventHandlerRegistration, textValue3)
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuThread
eventHandlerRegistration = "Dog Fighting"
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13, flag14, numberValue4, flag15, workValue31, workValue33, flag16
  arg1 = textValue2.drawMaps
  if arg1 then
    arg1 = pairs
    arg2 = cmgCall.locations
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      arg7 = DrawMarker
      arg8 = 28
      coords = arg6.centerPosition
      coords = coords.x
      flag17 = arg6.centerPosition
      flag17 = flag17.y
      flag = arg6.centerPosition
      flag = flag.z
      workValue3 = 0.0
      networkTime = 0.0
      flag2 = 0.0
      flag3 = 0.0
      workValue8 = 0.0
      flag4 = 0.0
      flag5 = 10.0
      flag6 = 10.0
      flag7 = 10.0
      flag8 = 0
      numberValue = 0
      flag9 = 255
      numberValue2 = 180
      flag10 = false
      flag11 = false
      numberValue3 = 2
      flag12 = false
      workValue22 = nil
      workValue24 = nil
      flag13 = false
      arg7(arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13)
      arg7 = DrawMarker
      arg8 = 1
      coords = arg6.centerPosition
      coords = coords.x
      flag17 = arg6.centerPosition
      flag17 = flag17.y
      flag = 0.0
      workValue3 = 0.0
      networkTime = 0.0
      flag2 = 0.0
      flag3 = 0.0
      workValue8 = 0.0
      flag4 = 0.0
      flag5 = arg6.initialRadius
      flag5 = flag5 * 2.0
      flag6 = arg6.initialRadius
      flag6 = flag6 * 2.0
      flag7 = arg6.initialRadius
      flag7 = flag7 * 2.0
      flag8 = 255
      numberValue = 0
      flag9 = 0
      numberValue2 = 75
      flag10 = false
      flag11 = false
      numberValue3 = 2
      flag12 = false
      workValue22 = nil
      workValue24 = nil
      flag13 = false
      arg7(arg8, coords, flag17, flag, workValue3, networkTime, flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13)
      arg7 = pairs
      arg8 = arg6.spawnPositions
      arg7, arg8, coords, flag17 = arg7(arg8)
      for flag, workValue3 in arg7, arg8, coords, flag17 do
        networkTime = DrawMarker
        flag2 = 28
        flag3 = workValue3.x
        workValue8 = workValue3.y
        flag4 = workValue3.z
        flag5 = 0.0
        flag6 = 0.0
        flag7 = 0.0
        flag8 = 0.0
        numberValue = 0.0
        flag9 = 0.0
        numberValue2 = 10.0
        flag10 = 10.0
        flag11 = 10.0
        numberValue3 = 0
        flag12 = 255
        workValue22 = 0
        workValue24 = 180
        flag13 = false
        flag14 = false
        numberValue4 = 2
        flag15 = false
        workValue31 = nil
        workValue33 = nil
        flag16 = false
        networkTime(flag2, flag3, workValue8, flag4, flag5, flag6, flag7, flag8, numberValue, flag9, numberValue2, flag10, flag11, numberValue3, flag12, workValue22, workValue24, flag13, flag14, numberValue4, flag15, workValue31, workValue33, flag16)
        networkTime = CMG
        networkTime = networkTime.drawHeadingFromPoint
        flag2 = workValue3.xyz
        flag3 = math
        flag3 = flag3.rad
        workValue8 = workValue3.w
        flag3 = flag3(workValue8)
        workValue8 = 50.0
        networkTime(flag2, flag3, workValue8)
      end
      arg7 = pairs
      arg8 = arg6.collectableSpawns
      arg7, arg8, coords, flag17 = arg7(arg8)
      for flag, workValue3 in arg7, arg8, coords, flag17 do
        networkTime = workValue26
        flag2 = workValue3
        networkTime(flag2)
      end
    end
  end
end
cmgCall2(eventHandlerRegistration, textValue3)
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1.vehicle
  if 0 == arg2 then
    return
  end
  arg2 = SetEntityAsNoLongerNeeded
  arg3 = arg1.vehicle
  arg2(arg3)
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1.vehicle
  arg2 = arg2(arg3)
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = TriggerServerEvent
  arg4 = "3ab272a10d"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3ab272a10d".
  arg3(arg4, arg5)
end
eventHandlerRegistration = AddEventHandler
textValue3 = "5dac3d7c66"
-- Beginner: this function runs when client event "5dac3d7c66" fires.
function workValue35()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = textValue
  if arg1 then
    arg1 = cmgCall2
    arg2 = textValue
    arg1(arg2)
    arg1 = SetEntityCoordsNoOffset
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 0.0
    arg4 = 0.0
    arg5 = 0.0
    arg6 = true
    arg7 = false
    arg8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    arg1 = workValue11
    arg2 = true
    arg1(arg2)
    textValue.hasRespawned = true
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5dac3d7c66".
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = RegisterNetEvent
textValue3 = "546310b6b7"
-- Beginner: this function handles network event "546310b6b7".
function workValue35()
  local arg1, arg2
  arg1 = textValue
  if arg1 then
    arg1 = cmgCall2
    arg2 = textValue
    arg1(arg2)
    textValue.wantsNewVehicle = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "546310b6b7".
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = RegisterNetEvent
textValue3 = "4960beeb90"
-- Beginner: this function handles network event "4960beeb90".
function workValue35(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17
  arg3 = CMG
  arg3 = arg3.getClientEventData
  arg4 = "DogFightingClientData"
  arg3 = arg3(arg4)
  arg4 = pairs
  arg5 = arg3.players
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, coords in arg4, arg5, arg6, arg7 do
    flag17 = coords.source
    if flag17 == arg1 then
      flag17 = coords.data
      flag17.numLives = arg2
      break
    end
  end
end
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = RegisterNetEvent
textValue3 = "ae38cbb08d"
-- Beginner: this function handles network event "ae38cbb08d".
function workValue35(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, coords, flag17
  arg3 = CMG
  arg3 = arg3.getClientEventData
  arg4 = "DogFightingClientData"
  arg3 = arg3(arg4)
  arg4 = pairs
  arg5 = arg3.players
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, coords in arg4, arg5, arg6, arg7 do
    flag17 = coords.source
    if flag17 == arg1 then
      flag17 = coords.data
      flag17.numKills = arg2
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae38cbb08d".
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = RegisterNetEvent
textValue3 = "c7b4793225"
-- Beginner: this function handles network event "c7b4793225".
function workValue35(arg1)
  local arg2
  arg2 = textValue
  if arg2 then
    arg2 = textValue.activeCollectableIndicies
    arg2[arg1] = true
  end
end
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = RegisterNetEvent
textValue3 = "0544b9386d"
-- Beginner: this function handles network event "0544b9386d".
function workValue35(arg1)
  local arg2
  arg2 = textValue
  if arg2 then
    arg2 = textValue.activeCollectableIndicies
    arg2[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0544b9386d".
eventHandlerRegistration(textValue3, workValue35)
eventHandlerRegistration = AddRelationshipGroup
textValue3 = cmgCall.defaultRelationshipName
eventHandlerRegistration(textValue3)
eventHandlerRegistration = pairs
textValue3 = cmgCall.teams
eventHandlerRegistration, textValue3, workValue35, workValue36 = eventHandlerRegistration(textValue3)
for workValue37, workValue38 in eventHandlerRegistration, textValue3, workValue35, workValue36 do
  iterator = AddRelationshipGroup
  numberValue5 = workValue38.relationshipName
  iterator(numberValue5)
  iterator = pairs
  numberValue5 = cmgCall.teams
  iterator, numberValue5, workValue39, workValue40 = iterator(numberValue5)
  for workValue41, workValue44 in iterator, numberValue5, workValue39, workValue40 do
    workValue45 = workValue38.relationshipHash
    numberValue6 = workValue44.relationshipHash
    if workValue45 == numberValue6 then
      workValue45 = SetRelationshipBetweenGroups
      numberValue6 = 0
      workValue46 = workValue38.relationshipHash
      workValue47 = workValue44.relationshipHash
      workValue45(numberValue6, workValue46, workValue47)
    else
      workValue45 = SetRelationshipBetweenGroups
      numberValue6 = 5
      workValue46 = workValue38.relationshipHash
      workValue47 = workValue44.relationshipHash
      workValue45(numberValue6, workValue46, workValue47)
    end
  end
  iterator = SetRelationshipBetweenGroups
  numberValue5 = 5
  workValue39 = workValue38.relationshipHash
  workValue40 = cmgCall.defaultRelationshipHash
  iterator(numberValue5, workValue39, workValue40)
  iterator = SetRelationshipBetweenGroups
  numberValue5 = 5
  workValue39 = cmgCall.defaultRelationshipHash
  workValue40 = workValue38.relationshipHash
  iterator(numberValue5, workValue39, workValue40)
end
eventHandlerRegistration = RegisterNetEvent
textValue3 = "c229477440"
-- Beginner: this function handles network event "c229477440".
function workValue35(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, coords, flag17
  arg5 = string
  arg5 = arg5.format
  arg6 = "%s%s~w~ has killed %s%s~w~"
  arg7 = CMG
  arg7 = arg7.getPlayerColour
  arg8 = arg2
  arg7 = arg7(arg8)
  arg8 = arg4
  coords = CMG
  coords = coords.getPlayerColour
  flag17 = arg1
  coords = coords(flag17)
  flag17 = arg3
  arg5 = arg5(arg6, arg7, arg8, coords, flag17)
  arg6 = notify
  arg7 = arg5
  -- Beginner: Show a notification to the player.
  arg6(arg7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c229477440".
eventHandlerRegistration(textValue3, workValue35)