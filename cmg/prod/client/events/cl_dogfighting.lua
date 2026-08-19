--[[
    LEVEL 1 BEGINNER GUIDE — Dogfighting
    =========================================

    File: cmg/prod/client/events/cl_dogfighting.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Dogfighting feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 63
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
local cmgOperation, text, workingValue25, workingValue34, workingValue42, workingValue48, workingValue49, workingValue50, workingValue51, workingValue52, workingValue, workingValue2, workingValue4, workingValue5, workingValue6, workingValue7, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue23, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue32, eventHandler, text2, cmgOperation2, eventHandlerRegistration, text3, workingValue35, workingValue36, workingValue37, workingValue38, iterator, number5, workingValue39, workingValue40, workingValue41, workingValue44, workingValue45, number6, workingValue46, workingValue47
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text = "cfg/events/cfg_dogfighting"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text)
text = nil

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = IsNewLoadSceneLoaded
  localValue2 = localValue2()
  localValue3 = HasModelLoaded
  localValue4 = localValue1.selectedVehicleModelHash
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = RequestModel
    localValue5 = localValue1.selectedVehicleModelHash
    localValue4(localValue5)
  end
  if localValue2 and localValue3 then
    localValue4 = localValue1.hasSentLoadedEvent
    if not localValue4 then
      localValue4 = TriggerServerEvent
      localValue5 = "394e95d641"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "394e95d641".
      localValue4(localValue5)
      localValue1.hasSentLoadedEvent = true
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: none) ===
function workingValue34()
  local localValue1, localValue2
  localValue1 = IsScreenFadedOut
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = IsScreenFadingOut
    localValue1 = localValue1()
    if localValue1 then
      goto continueAtStep14
    end
  end
  localValue1 = DoScreenFadeOut
  localValue2 = 500
  localValue1(localValue2)
  localValue1 = false
  return localValue1
  ::continueAtStep14::
  localValue1 = true
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: none) ===
function workingValue42()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isEventSequenceRunning
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = workingValue34
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.stopEventSequence
      localValue1()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: none) ===
function workingValue48()
  local localValue1, localValue2
  localValue1 = IsScreenFadedIn
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = IsScreenFadingIn
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = DoScreenFadeIn
      localValue2 = 500
      localValue1(localValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue1) ===
function workingValue49(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = IsPlayerControlOn
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = SetPlayerControl
    localValue4 = localValue2
    localValue5 = false
    localValue6 = 0
    localValue3(localValue4, localValue5, localValue6)
  end
  if localValue1 then
    localValue3 = DisableAllControlActions
    localValue4 = 0
    localValue3(localValue4)
    localValue3 = CMG
    localValue3 = localValue3.hideAllDisplays
    localValue4 = "dogfighting"
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: localValue1) ===
function workingValue50(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue42
  localValue2()
  localValue2 = workingValue25
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue49
  localValue3 = true
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue51; parameters: none) ===
function workingValue51()
  local localValue1, localValue2
  localValue1 = workingValue42
  localValue1()
  localValue1 = workingValue49
  localValue2 = true
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: localValue1) ===
function workingValue52(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = pairs
  localValue3 = cmgOperation.teams
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.name
    if localValue8 == localValue1 then
      return localValue7
    end
  end
  localValue2 = nil
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = workingValue48
  localValue2()
  localValue2 = workingValue49
  localValue3 = false
  localValue2(localValue3)
  localValue2 = localValue1.hasSetupCustomisation
  if localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.startVehicleSelection
  localValue3 = localValue1.spawnPosition
  localValue3 = localValue3.xyz
  localValue4 = localValue1.spawnPosition
  localValue4 = localValue4.w
  localValue5 = {}
  localValue6 = localValue1.vehicleName
  localValue7 = {}
  localValue7.level = 0
  localValue8 = localValue1.selectedVehicleModelHash
  localValue7.model = localValue8
  localValue5[localValue6] = localValue7
  localValue6 = math
  localValue6 = localValue6.floor
  localValue7 = cmgOperation.customVehicleTimeMsec
  localValue7 = localValue7 / 1000
  localValue6 = localValue6(localValue7)

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end

  -- === HELPER FUNCTION: localValue8(localValue12) ===
  function localValue8(localValue12)
    local localValue22, localValue32, localValue42
    localValue22 = CMG
    localValue22 = localValue22.getEventLocalPlayer
    localValue22 = localValue22()
    if localValue22 then
      localValue32 = localValue22.data
      localValue32 = localValue32.teamName
      if localValue32 then
        localValue32 = workingValue52
        localValue42 = localValue22.data
        localValue42 = localValue42.teamName
        localValue32 = localValue32(localValue42)
        if localValue32 then
          localValue42 = localValue32.vehicleColour
          localValue1.selectedVehicleColour = localValue42
          return
        end
      end
    end
    localValue1.selectedVehicleColour = localValue12
  end
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  localValue1.hasSetupCustomisation = true
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17
  localValue2 = CMG
  localValue2 = localValue2.requestEntitySpawn
  localValue3 = "dogfighting"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.spawnVehicle
  localValue3 = localValue1.selectedVehicleModelHash
  localValue4 = localValue1.spawnPosition
  localValue4 = localValue4.x
  localValue5 = localValue1.spawnPosition
  localValue5 = localValue5.y
  localValue6 = localValue1.spawnPosition
  localValue6 = localValue6.z
  localValue7 = localValue1.spawnPosition
  localValue7 = localValue7.w
  localValue8 = true
  coords = true
  stateFlag17 = true
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17)
  localValue1.vehicle = localValue2
  localValue2 = FreezeEntityPosition
  localValue3 = localValue1.vehicle
  localValue4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = SetVehicleEngineOn
  localValue3 = localValue1.vehicle
  localValue4 = true
  localValue5 = true
  localValue6 = false
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = SetHeliBladesFullSpeed
  localValue3 = localValue1.vehicle
  localValue2(localValue3)
  localValue2 = ControlLandingGear
  localValue3 = localValue1.vehicle
  localValue4 = 3
  localValue2(localValue3, localValue4)
  localValue2 = SetVehicleFlightNozzlePositionImmediate
  localValue3 = localValue1.vehicle
  localValue4 = 0.0
  localValue2(localValue3, localValue4)
  localValue2 = SetVehicleColours
  localValue3 = localValue1.vehicle
  localValue4 = localValue1.selectedVehicleColour
  localValue5 = localValue1.selectedVehicleColour
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = localValue1.spawnProtectEndTime
  if not localValue2 then
    localValue2 = 0
  end
  localValue3 = math
  localValue3 = localValue3.max
  localValue4 = GetNetworkTime
  -- Beginner: result below is networkTime.
  localValue4 = localValue4()
  localValue5 = cmgOperation.respawnProtectionTimeMsec
  localValue4 = localValue4 + localValue5
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  localValue1.spawnProtectEndTime = localValue3
  localValue1.isRequestVehicle = false
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3
  localValue2 = DoesEntityExist
  localValue3 = localValue1.vehicle
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = localValue1.isRequestVehicle
    if not localValue2 then
      localValue2 = Citizen
      localValue2 = localValue2.CreateThreadNow

      -- === HELPER FUNCTION: localValue3() ===
      function localValue3()
        local localValue12, localValue22
        localValue12 = workingValue2
        localValue22 = localValue1
        localValue12(localValue22)
      end
      localValue2(localValue3)
      localValue1.isRequestVehicle = true
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6
  localValue2 = workingValue48
  localValue2()
  localValue2 = workingValue49
  localValue3 = true
  localValue2(localValue3)
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = GetFrameCount
  localValue3 = localValue3()
  localValue4 = localValue1.flyInStartTime
  if not localValue4 then
    localValue1.flyInStartTime = localValue2
  end
  localValue4 = localValue1.flyInStartTime
  localValue4 = localValue2 - localValue4
  localValue5 = cmgOperation.flyInIntroTimeMsec
  localValue5 = localValue5 / 2
  localValue5 = localValue4 < localValue5
  localValue6 = GetTogglePausedRenderphasesStatus
  localValue6 = localValue6()
  if localValue5 then
    localValue7 = 1
    if localValue7 then
      goto continueAtStep32
    end
  end
  localValue7 = false
  ::continueAtStep32::
  if localValue6 == localValue7 then
    localValue6 = TogglePausedRenderphases
    localValue7 = not localValue5
    localValue6(localValue7)
    localValue1.toggledRenderPhaseFrame = localValue3
  end
  localValue6 = localValue1.hasSetupCustomisation
  if localValue6 then
    localValue6 = localValue1.toggledRenderPhaseFrame
    if 0 ~= localValue6 then
      localValue6 = localValue1.toggledRenderPhaseFrame
      if localValue3 > localValue6 then
        localValue6 = CMG
        localValue6 = localValue6.endVehicleSelection
        localValue6()
        localValue6 = AnimpostfxPlay
        localValue7 = "SuccessNeutral"
        localValue8 = -1
        coords = false
        localValue6(localValue7, localValue8, coords)
        localValue6 = PlaySoundFrontend
        localValue7 = -1
        localValue8 = "Become_Attacker"
        coords = "DLC_IE_JN_Player_Sounds"
        stateFlag17 = false
        localValue6(localValue7, localValue8, coords, stateFlag17)
        localValue1.hasSetupCustomisation = false
      end
    end
  end
  localValue6 = workingValue4
  localValue7 = localValue1
  localValue6(localValue7)
  if localValue5 then
    return
  end
  localValue6 = AnimpostfxIsRunning
  localValue7 = "SuccessNeutral"
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = AnimpostfxStop
    localValue7 = "SuccessNeutral"
    localValue6(localValue7)
  end
  localValue6 = GetFrameTime
  localValue6 = localValue6()
  localValue7 = GetEntityMatrix
  localValue8 = localValue1.vehicle
  localValue7, localValue8 = localValue7(localValue8)
  coords = GetEntityCoords
  stateFlag17 = localValue1.vehicle
  stateFlag = true
  -- Beginner: result below is entityCoords.
  coords = coords(stateFlag17, stateFlag)
  stateFlag17 = localValue7 * 50.0
  stateFlag = stateFlag17 * localValue6
  stateFlag = coords + stateFlag
  workingValue3 = SetEntityCoordsNoOffset
  networkTime = localValue1.vehicle
  stateFlag2 = stateFlag.x
  stateFlag3 = stateFlag.y
  workingValue8 = stateFlag.z
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue3(networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6)
  workingValue3 = SetEntityVelocity
  networkTime = localValue1.vehicle
  stateFlag2 = stateFlag17.x
  stateFlag3 = stateFlag17.y
  workingValue8 = stateFlag17.z
  workingValue3(networkTime, stateFlag2, stateFlag3, workingValue8)
  workingValue3 = localValue1.flyInCamera
  if 0 ~= workingValue3 then
    workingValue3 = localValue1.easingFlyInCamera
    if not workingValue3 then
      workingValue3 = localValue1.flyInEndTime
      if workingValue3 then
        workingValue3 = localValue1.flyInEndTime
        networkTime = GetNetworkTime
        -- Beginner: result below is networkTime.
        networkTime = networkTime()
        workingValue3 = workingValue3 - networkTime
        if workingValue3 then
          goto continueAtStep123
        end
      end
      workingValue3 = 0
      ::continueAtStep123::
      if workingValue3 < 0 then
        workingValue3 = 0
      end
      networkTime = RenderScriptCams
      stateFlag2 = false
      stateFlag3 = true
      workingValue8 = workingValue3
      stateFlag4 = false
      stateFlag5 = false
      networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5)
      localValue1.easingFlyInCamera = true
    end
    return
  end
  workingValue3 = CreateCam
  networkTime = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag2 = true
  -- Beginner: result below is cameraHandle.
  workingValue3 = workingValue3(networkTime, stateFlag2)
  localValue1.flyInCamera = workingValue3
  workingValue3 = localValue1.spawnPosition
  workingValue3 = workingValue3.xyz
  networkTime = localValue7 * -30.0
  workingValue3 = workingValue3 + networkTime
  networkTime = localValue8 * 20.0
  workingValue3 = workingValue3 + networkTime
  networkTime = vector3
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  workingValue8 = 10.0
  networkTime = networkTime(stateFlag2, stateFlag3, workingValue8)
  workingValue3 = workingValue3 + networkTime
  networkTime = SetCamCoord
  stateFlag2 = localValue1.flyInCamera
  stateFlag3 = workingValue3.x
  workingValue8 = workingValue3.y
  stateFlag4 = workingValue3.z
  networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4)
  networkTime = PointCamAtEntity
  stateFlag2 = localValue1.flyInCamera
  stateFlag3 = localValue1.vehicle
  workingValue8 = 0.0
  stateFlag4 = 0.0
  stateFlag5 = 0.0
  stateFlag6 = false
  networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6)
  networkTime = SetCamActive
  stateFlag2 = localValue1.flyInCamera
  stateFlag3 = true
  networkTime(stateFlag2, stateFlag3)
  networkTime = RenderScriptCams
  stateFlag2 = true
  stateFlag3 = false
  workingValue8 = 0
  stateFlag4 = false
  stateFlag5 = false
  networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = CMG
  localValue2 = localValue2.getClientEventData
  localValue3 = "DogFightingClientData"
  localValue2 = localValue2(localValue3)
  localValue3 = localValue1.timers
  localValue3 = localValue3.push
  localValue4 = "~y~PLAYERS"
  localValue5 = tostring
  localValue6 = localValue2.players
  localValue6 = #localValue6
  localValue5, localValue6, localValue7 = localValue5(localValue6)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = CMG
  localValue3 = localValue3.getEventLocalPlayer
  localValue3 = localValue3()
  if not localValue3 then
    return
  end
  localValue4 = localValue1.timers
  localValue4 = localValue4.push
  localValue5 = "~r~LIVES"
  localValue6 = tostring
  localValue7 = localValue3.data
  localValue7 = localValue7.numLives
  localValue6, localValue7 = localValue6(localValue7)
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = localValue1.timers
  localValue4 = localValue4.push
  localValue5 = "~g~KILLS"
  localValue6 = tostring
  localValue7 = localValue3.data
  localValue7 = localValue7.numKills
  localValue6, localValue7 = localValue6(localValue7)
  localValue4(localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = IsPlayerControlOn
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue4 = localValue1.isRequestVehicle
  if localValue3 == localValue4 then
    localValue3 = SetPlayerControl
    localValue4 = localValue2
    localValue5 = localValue1.isRequestVehicle
    localValue5 = not localValue5
    localValue6 = 0
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = DisableAllControlActions
    localValue4 = 0
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = IsEntityPositionFrozen
  localValue3 = localValue1.vehicle
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = FreezeEntityPosition
    localValue3 = localValue1.vehicle
    localValue4 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, localValue4)
    localValue2 = GetEntityForwardVector
    localValue3 = localValue1.vehicle
    localValue2 = localValue2(localValue3)
    localValue2 = localValue2 * 50.0
    localValue3 = SetEntityVelocity
    localValue4 = localValue1.vehicle
    localValue5 = localValue2.x
    localValue6 = localValue2.y
    localValue7 = localValue2.z
    localValue3(localValue4, localValue5, localValue6, localValue7)
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 == localValue2 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1.vehicle
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = GetVehicleEngineHealth
      localValue4 = localValue1.vehicle
      localValue3 = localValue3(localValue4)
      if localValue3 > 0 then
        localValue3 = SetPedIntoVehicle
        localValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue4 = localValue4()
        localValue5 = localValue1.vehicle
        localValue6 = -1
        localValue3(localValue4, localValue5, localValue6)
      else
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = localValue1.allowGuns
  if not localValue3 then
    localValue3 = pairs
    localValue4 = cmgOperation.gunHashes
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      coords = DisableVehicleWeapon
      stateFlag17 = true
      stateFlag = localValue8
      workingValue3 = localValue1.vehicle
      networkTime = localValue2
      coords(stateFlag17, stateFlag, workingValue3, networkTime)
    end
  end
  localValue3 = localValue1.allowRockets
  if not localValue3 then
    localValue3 = pairs
    localValue4 = cmgOperation.missileHashes
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      coords = DisableVehicleWeapon
      stateFlag17 = true
      stateFlag = localValue8
      workingValue3 = localValue1.vehicle
      networkTime = localValue2
      coords(stateFlag17, stateFlag, workingValue3, networkTime)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = SetEntityInvincible
  localValue4 = localValue2
  localValue5 = localValue1
  localValue3(localValue4, localValue5)
  localValue3 = SetEntityVisible
  localValue4 = localValue2
  localValue5 = not localValue1
  localValue6 = not localValue1
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = SetEntityProofs
  localValue4 = localValue2
  localValue5 = localValue1
  localValue6 = localValue1
  localValue7 = localValue1
  localValue8 = localValue1
  coords = localValue1
  stateFlag17 = localValue1
  stateFlag = localValue1
  workingValue3 = localValue1
  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3)
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = not localValue1
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = workingValue11
  localValue3 = localValue1.hasRespawned
  localValue2(localValue3)
  localValue2 = localValue1.hasRespawned
  if not localValue2 then
    localValue2 = workingValue48
    localValue2()
    return
  end
  localValue2 = IsScreenFadedOut
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = IsScreenFadingOut
    localValue2 = localValue2()
    if localValue2 then
      goto continueAtStep21
    end
  end
  localValue2 = DoScreenFadeOut
  localValue3 = 500
  localValue2(localValue3)
  ::continueAtStep21::
  localValue2 = localValue1.wantsNewVehicle
  if localValue2 then
    localValue2 = localValue1.isRequestVehicle
    if not localValue2 then
      localValue2 = IsScreenFadedOut
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = DoScreenFadeOut
        localValue3 = 0
        localValue2(localValue3)
      end
      localValue2 = CMG
      localValue2 = localValue2.getEventKillCamera
      localValue2 = localValue2()
      if localValue2 then
        localValue3 = RenderScriptCams
        localValue4 = false
        localValue5 = false
        localValue6 = 0
        localValue7 = false
        localValue8 = false
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8)
        localValue3 = SetCamActive
        localValue4 = localValue2
        localValue5 = false
        localValue3(localValue4, localValue5)
        localValue3 = DestroyCam
        localValue4 = localValue2
        localValue5 = false
        localValue3(localValue4, localValue5)
      end
      localValue3 = Citizen
      localValue3 = localValue3.CreateThreadNow

      -- === HELPER FUNCTION: localValue4() ===
      function localValue4()
        local localValue12, localValue22
        localValue12 = workingValue2
        localValue22 = localValue1
        localValue12(localValue22)
        localValue1.hasRespawned = false
        localValue1.wantsNewVehicle = false
      end
      localValue3(localValue4)
      localValue1.isRequestVehicle = true
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.vehicle
  if 0 ~= localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1.vehicle
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = localValue1.vehicle
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 49
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 75
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.getClientEventData
  localValue2 = "DogFightingClientData"
  localValue1 = localValue1(localValue2)
  localValue2 = pairs
  localValue3 = localValue1.players
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.blip
    if localValue8 then
      localValue8 = GetPlayerFromServerId
      coords = localValue7.source
      -- Beginner: result below is playerIndex.
      localValue8 = localValue8(coords)
      if localValue8 >= 0 then
        coords = GetPlayerPed
        stateFlag17 = localValue8
        -- Beginner: result below is playerPed.
        coords = coords(stateFlag17)
        if 0 ~= coords then
          stateFlag17 = SetBlipSprite
          stateFlag = localValue7.blip
          workingValue3 = 16
          stateFlag17(stateFlag, workingValue3)
          stateFlag17 = SetBlipRotation
          stateFlag = localValue7.blip
          workingValue3 = math
          workingValue3 = workingValue3.ceil
          networkTime = GetEntityHeading
          stateFlag2 = coords
          networkTime, stateFlag2 = networkTime(stateFlag2)
          workingValue3, networkTime, stateFlag2 = workingValue3(networkTime, stateFlag2)
          stateFlag17(stateFlag, workingValue3, networkTime, stateFlag2)
          stateFlag17 = workingValue52
          stateFlag = localValue7.data
          stateFlag = stateFlag.teamName
          stateFlag17 = stateFlag17(stateFlag)
          if stateFlag17 then
            stateFlag = SetBlipColour
            workingValue3 = localValue7.blip
            networkTime = stateFlag17.blipColour
            stateFlag(workingValue3, networkTime)
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.getEventLocalPlayer
  localValue1 = localValue1()
  localValue2 = cmgOperation.defaultRelationshipHash
  if localValue1 then
    localValue3 = localValue1.data
    localValue3 = localValue3.teamName
    if localValue3 then
      localValue3 = workingValue52
      localValue4 = localValue1.data
      localValue4 = localValue4.teamName
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue2 = localValue3.relationshipHash
      end
    end
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = SetPedRelationshipGroupHash
  localValue5 = localValue3
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
  localValue4 = SetPedConfigFlag
  localValue5 = localValue3
  localValue6 = 44
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = SetPedConfigFlag
  localValue5 = localValue3
  localValue6 = 45
  localValue7 = false
  localValue4(localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13
  localValue2 = cmgOperation.locations
  localValue3 = localValue1.mapName
  localValue2 = localValue2[localValue3]
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 == localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = localValue2.centerPosition
  localValue4 = localValue4 - localValue5
  localValue4 = #localValue4
  localValue5 = localValue2.initialRadius
  localValue5 = localValue5 - localValue4
  localValue6 = localValue2.initialRadius
  localValue6 = localValue6 * 0.15
  if localValue5 >= localValue6 then
    return
  end
  localValue7 = DrawMarker
  localValue8 = 1
  coords = localValue2.centerPosition
  coords = coords.x
  stateFlag17 = localValue2.centerPosition
  stateFlag17 = stateFlag17.y
  stateFlag = 0.0
  workingValue3 = 0.0
  networkTime = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  workingValue8 = 0.0
  stateFlag4 = 0.0
  stateFlag5 = localValue2.initialRadius
  stateFlag5 = stateFlag5 * 2.0
  stateFlag6 = localValue2.initialRadius
  stateFlag6 = stateFlag6 * 2.0
  stateFlag7 = localValue2.initialRadius
  stateFlag7 = stateFlag7 * 2.0
  stateFlag8 = 255
  number = 0
  stateFlag9 = 0
  number2 = 75
  stateFlag10 = false
  stateFlag11 = false
  number3 = 2
  stateFlag12 = false
  workingValue22 = nil
  workingValue24 = nil
  stateFlag13 = false
  localValue7(localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.hideAllDisplays
  localValue3 = "dogfighting"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.showDisplay
  localValue3 = "radar"
  localValue4 = "dogfighting"
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.showDisplay
  localValue3 = "compass"
  localValue4 = "dogfighting"
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCanOpenLeaderboard
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.getEventLocalPlayer
  localValue2 = localValue2()
  localValue3 = workingValue6
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = workingValue7
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = workingValue9
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = workingValue10
  localValue4 = localValue1
  localValue3(localValue4)
  if localValue2 then
    localValue3 = localValue2.active
    if localValue3 then
      localValue3 = workingValue12
      localValue4 = localValue1
      localValue3(localValue4)
  end
  else
    localValue3 = workingValue13
    localValue4 = localValue1
    localValue3(localValue4)
  end
  localValue3 = workingValue15
  localValue3()
  localValue3 = workingValue14
  localValue3()
  localValue3 = workingValue16
  localValue3()
  localValue3 = workingValue17
  localValue4 = localValue1
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1, localValue2) ===
function workingValue19(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = SetLocalPlayerAsGhost
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = SetNetworkVehicleAsGhost
  localValue4 = localValue1.vehicle
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = localValue1.spawnProtectEndTime
  if localValue2 then
    localValue2 = localValue1.spawnProtectEndTime
    localValue3 = GetNetworkTime
    -- Beginner: result below is networkTime.
    localValue3 = localValue3()
    localValue2 = localValue2 - localValue3
    if localValue2 >= 0 then
      localValue3 = localValue1.timers
      localValue3 = localValue3.push
      localValue4 = "~q~PROTECTION"
      localValue5 = tostring
      localValue6 = math
      localValue6 = localValue6.rounddp
      localValue7 = localValue2 / 1000.0
      localValue8 = 1
      localValue6, localValue7, localValue8 = localValue6(localValue7, localValue8)
      localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7, localValue8)
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8)
      localValue3 = true
      return localValue3
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2, localValue3
  localValue1 = drawNativeNotification
  localValue2 = [[
Press ~INPUT_VEH_FLY_ATTACK2~ to fire your weapon.
Press ~INPUT_VEH_SELECT_NEXT_WEAPON~ to switch weapons.
Press ~INPUT_VEH_ROOF~ to toggle stealth.
Hold ~INPUT_VEH_FLY_UNDERCARRIAGE~ to toggle VTOL.]]
  localValue3 = true
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue18
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue19
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = workingValue20
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue21
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1) ===
function workingValue26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11
  localValue2 = DrawMarker
  localValue3 = 6
  localValue4 = localValue1.x
  localValue5 = localValue1.y
  localValue6 = localValue1.z
  localValue7 = 0.0
  localValue8 = 0.0
  coords = 0.0
  stateFlag17 = 0.0
  stateFlag = 0.0
  workingValue3 = 0.0
  networkTime = 20.0
  stateFlag2 = 20.0
  stateFlag3 = 20.0
  workingValue8 = 255
  stateFlag4 = 255
  stateFlag5 = 0
  stateFlag6 = 180
  stateFlag7 = false
  stateFlag8 = true
  number = 2
  stateFlag9 = false
  number2 = nil
  stateFlag10 = nil
  stateFlag11 = false
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11)
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1) ===
function workingValue27(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3
  localValue2 = cmgOperation.locations
  localValue3 = localValue1.mapName
  localValue2 = localValue2[localValue3]
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue4 = pairs
  localValue5 = localValue1.activeCollectableIndicies
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8 in localValue4, localValue5, localValue6, localValue7 do
    coords = localValue2.collectableSpawns
    coords = coords[localValue8]
    stateFlag17 = workingValue26
    stateFlag = coords
    stateFlag17(stateFlag)
    stateFlag17 = localValue3 - coords
    stateFlag17 = #stateFlag17
    if stateFlag17 < 20.0 then
      stateFlag17 = TriggerServerEvent
      stateFlag = "d6a062ef9a"
      workingValue3 = localValue8
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d6a062ef9a".
      stateFlag17(stateFlag, workingValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue18
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = workingValue19
  localValue3 = localValue1
  localValue4 = workingValue20
  localValue5 = localValue1
  localValue4, localValue5 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = workingValue27
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = localValue1.isFirstGame
  if localValue2 then
    localValue2 = workingValue21
    localValue2()
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: none) ===
function workingValue29()
  local localValue1, localValue2
  localValue1 = text
  if not localValue1 then
    return
  end
  localValue1 = text.timers
  localValue1 = localValue1.reset
  localValue1()
  localValue1 = text.serverState
  if "SETUP" == localValue1 then
    localValue1 = workingValue25
    localValue2 = text
    localValue1(localValue2)
  else
    localValue1 = text.serverState
    if "WAITING_FOR_PLAYERS" == localValue1 then
      localValue1 = workingValue50
      localValue2 = text
      localValue1(localValue2)
    else
      localValue1 = text.serverState
      if "ASSIGN_PLAYER_TEAMS" == localValue1 then
        localValue1 = workingValue51
        localValue1()
      else
        localValue1 = text.serverState
        if "CUSTOMISE_VEHICLE" == localValue1 then
          localValue1 = workingValue
          localValue2 = text
          localValue1(localValue2)
        else
          localValue1 = text.serverState
          if "FLY_IN_INTRO" == localValue1 then
            localValue1 = workingValue5
            localValue2 = text
            localValue1(localValue2)
          else
            localValue1 = text.serverState
            if "INITIAL_SPAWN_PROTECTION" == localValue1 then
              localValue1 = workingValue23
              localValue2 = text
              localValue1(localValue2)
            else
              localValue1 = text.serverState
              if "MAIN_GAME_ZONE_STATIC" == localValue1 then
                localValue1 = workingValue28
                localValue2 = text
                localValue1(localValue2)
              end
            end
          end
        end
      end
    end
  end
  localValue1 = text.timers
  localValue1 = localValue1.draw
  localValue1()
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
function workingValue30(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag
  localValue2 = text
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = text.enableEnemyBlips
  if localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.getEventLocalPlayer
  localValue2 = localValue2()
  if localValue2 then
    localValue3 = localValue2.data
    localValue3 = localValue3.teamName
    if localValue3 then
      goto continueAtStep22
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep22::
  localValue3 = CMG
  localValue3 = localValue3.getClientEventData
  localValue4 = "DogFightingClientData"
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  localValue5 = localValue3.players
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, coords in localValue4, localValue5, localValue6, localValue7 do
    stateFlag17 = coords.source
    if stateFlag17 == localValue1 then
      stateFlag17 = coords.data
      stateFlag17 = stateFlag17.teamName
      stateFlag = localValue2.data
      stateFlag = stateFlag.teamName
      if stateFlag17 == stateFlag then
        stateFlag17 = true
        return stateFlag17
      end
    end
  end
  localValue4 = false
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: localValue1) ===
function workingValue32(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17
  localValue2 = CMG
  localValue2 = localValue2.getClientEventData
  localValue3 = "DogFightingClientData"
  localValue2 = localValue2(localValue3)
  localValue3 = pairs
  localValue4 = localValue2.players
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    coords = localValue8.source
    if coords == localValue1 then
      coords = localValue8.data
      coords = coords.teamName
      if coords then
        coords = workingValue52
        stateFlag17 = localValue8.data
        stateFlag17 = stateFlag17.teamName
        coords = coords(stateFlag17)
        if coords then
          stateFlag17 = coords.tagColour
          return stateFlag17
        end
      end
    end
  end
  localValue3 = 0
  return localValue3
end
eventHandler = RegisterNetEvent
text2 = "7b173da89d"
-- Beginner: this function handles network event "7b173da89d".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function cmgOperation2(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5
  coords = cmgOperation.locations
  coords = coords[localValue1]
  stateFlag17 = coords.spawnPositions
  stateFlag17 = stateFlag17[localValue3]
  stateFlag = AddBlipForRadius
  workingValue3 = coords.centerPosition
  workingValue3 = workingValue3.x
  networkTime = coords.centerPosition
  networkTime = networkTime.y
  stateFlag2 = coords.centerPosition
  stateFlag2 = stateFlag2.z
  stateFlag3 = coords.initialRadius
  -- Beginner: result below is blipHandle.
  stateFlag = stateFlag(workingValue3, networkTime, stateFlag2, stateFlag3)
  workingValue3 = SetBlipColour
  networkTime = stateFlag
  stateFlag2 = 1
  workingValue3(networkTime, stateFlag2)
  workingValue3 = SetBlipAlpha
  networkTime = stateFlag
  stateFlag2 = 75
  workingValue3(networkTime, stateFlag2)
  workingValue3 = {}
  workingValue3.mapName = localValue1
  networkTime = GetHashKey
  stateFlag2 = localValue2
  -- Beginner: result below is hash.
  networkTime = networkTime(stateFlag2)
  workingValue3.selectedVehicleModelHash = networkTime
  workingValue3.hasSentLoadedEvent = false
  workingValue3.spawnPosition = stateFlag17
  workingValue3.serverState = "SETUP"
  workingValue3.vehicleName = localValue4
  workingValue3.hasSetupCustomisation = false
  workingValue3.selectedVehicleColour = 0
  workingValue3.vehicle = 0
  workingValue3.isRequestVehicle = false
  workingValue3.toggledRenderPhaseFrame = 0
  workingValue3.flyInCamera = 0
  workingValue3.easingFlyInCamera = false
  networkTime = CMG
  networkTime = networkTime.createTimerBars
  -- Beginner: result below is timerBars.
  networkTime = networkTime()
  workingValue3.timers = networkTime
  workingValue3.hasRespawned = false
  workingValue3.wantsNewVehicle = false
  workingValue3.enableEnemyBlips = localValue5
  workingValue3.allowGuns = localValue6
  workingValue3.allowRockets = localValue7
  networkTime = {}
  workingValue3.activeCollectableIndicies = networkTime
  networkTime = GetResourceKvpInt
  stateFlag2 = "cmg_has_played_dogfighting"
  networkTime = networkTime(stateFlag2)
  networkTime = 1 ~= networkTime
  workingValue3.isFirstGame = networkTime
  workingValue3.areaBlip = stateFlag
  text = workingValue3
  workingValue3 = CMG
  workingValue3 = workingValue3.getClientEventData
  networkTime = "DogFightingClientData"
  workingValue3 = workingValue3(networkTime)
  workingValue3.drawPlayersTimeBar = false
  networkTime = CMG
  networkTime = networkTime.enableDriveBy
  stateFlag2 = true
  networkTime(stateFlag2)
  networkTime = CMG
  networkTime = networkTime.setEventsUsingNetworkResurrect
  stateFlag2 = true
  networkTime(stateFlag2)
  networkTime = CMG
  networkTime = networkTime.setIgnoreEventRespawns
  stateFlag2 = true
  networkTime(stateFlag2)
  networkTime = CMG
  networkTime = networkTime.enableMinigamePlayerBlips
  stateFlag2 = true
  stateFlag3 = nil
  workingValue8 = workingValue30
  stateFlag4 = true
  networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4)
  networkTime = CMG
  networkTime = networkTime.enableMinigamePlayerTags
  stateFlag2 = true
  stateFlag3 = false
  workingValue8 = workingValue32
  networkTime(stateFlag2, stateFlag3, workingValue8)
  networkTime = CMG
  networkTime = networkTime.setFriendlyFire
  stateFlag2 = localValue8 <= 1
  networkTime(stateFlag2)
  networkTime = NewLoadSceneStartSphere
  stateFlag2 = stateFlag17.x
  stateFlag3 = stateFlag17.y
  workingValue8 = stateFlag17.z
  stateFlag4 = 100.0
  stateFlag5 = 0
  networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5)
  networkTime = CMG
  networkTime = networkTime.createThreadOnTick
  stateFlag2 = workingValue29
  stateFlag3 = "Dog Fighting"
  -- Beginner: Run a helper every game frame while this script is active.
  networkTime(stateFlag2, stateFlag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7b173da89d".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "5dbce82101"
-- Beginner: this function handles network event "5dbce82101".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = text
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isDevMode
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = print
      localValue3 = string
      localValue3 = localValue3.format
      localValue4 = "[Dog Fighting] Server state updated to %s"
      localValue5 = localValue1
      localValue3, localValue4, localValue5 = localValue3(localValue4, localValue5)
      localValue2(localValue3, localValue4, localValue5)
    end
    text.serverState = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5dbce82101".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "a66ea189a9"
-- Beginner: this function handles network event "a66ea189a9".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2
  localValue2 = text
  if localValue2 then
    text.flyInEndTime = localValue1
  end
end
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "c43761eb3c"
-- Beginner: this function handles network event "c43761eb3c".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2
  localValue2 = text
  if localValue2 then
    text.spawnProtectEndTime = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c43761eb3c".
eventHandler(text2, cmgOperation2)
eventHandler = RegisterNetEvent
text2 = "65bce35065"
-- Beginner: this function handles network event "65bce35065".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag
  localValue3 = CMG
  localValue3 = localValue3.getClientEventData
  localValue4 = "DogFightingClientData"
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  localValue5 = localValue3.players
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, coords in localValue4, localValue5, localValue6, localValue7 do
    stateFlag17 = coords.data
    stateFlag = coords.source
    stateFlag = localValue1[stateFlag]
    stateFlag17.teamName = stateFlag
    stateFlag17 = coords.data
    stateFlag17.numLives = localValue2
    stateFlag17 = coords.data
    stateFlag17.numKills = 0
  end
end
eventHandler(text2, cmgOperation2)
eventHandler = CMG
eventHandler = eventHandler.registerMinigameCleanupHandler
text2 = "Dog Fighting"

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.deleteThreadOnTick
  localValue2 = workingValue29
  localValue1(localValue2)
  localValue1 = text
  if not localValue1 then
    return
  end
  localValue1 = RemoveBlip
  localValue2 = text.areaBlip
  localValue1(localValue2)
  localValue1 = text.hasSetupCustomisation
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.endVehicleSelection
    localValue1()
  end
  localValue1 = SetPedRelationshipGroupHash
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 1862763509
  localValue1(localValue2, localValue3)
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = text.selectedVehicleModelHash
  localValue1(localValue2)
  localValue1 = NewLoadSceneStop
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.enableDriveBy
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.setEventsUsingNetworkResurrect
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerBlips
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.enableMinigamePlayerTags
  localValue2 = false
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setFriendlyFire
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCanOpenLeaderboard
  localValue2 = false
  localValue1(localValue2)
  localValue1 = SetResourceKvpInt
  localValue2 = "cmg_has_played_dogfighting"
  localValue3 = 1
  localValue1(localValue2, localValue3)
  localValue1 = IsScreenFadedIn
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = IsScreenFadedOut
    localValue1 = localValue1()
    if not localValue1 then
      goto continueAtStep68
    end
  end
  localValue1 = DoScreenFadeIn
  localValue2 = 500
  localValue1(localValue2)
  ::continueAtStep68::
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "dogfighting"
  localValue1(localValue2)
  localValue1 = nil
  text = localValue1
end
eventHandler(text2, cmgOperation2)
eventHandler = {}
eventHandler.vehicleCategoryIndex = 1
eventHandler.vehicleSpawncodeIndex = 1
eventHandler.numTeams = 1
eventHandler.vehicleWeaponIndex = 1
eventHandler.startFlying = true
eventHandler.numLives = 3
eventHandler.enableCollectables = true
eventHandler.enableEnemyBlips = true
text2 = CMG
text2 = text2.registerMinigameOptionsHandler
cmgOperation2 = "Dog Fighting"

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords
  localValue1 = RageUI
  localValue1 = localValue1.List
  localValue2 = "Aircraft Category"
  localValue3 = cmgOperation.categoryNames
  localValue4 = eventHandler.vehicleCategoryIndex
  localValue5 = "The category of aircraft to use. When changed, will reset the option below."
  localValue6 = {}
  localValue7 = true

  -- === HELPER FUNCTION: localValue8(localValue12, localValue22, localValue32, localValue42) ===
  function localValue8(localValue12, localValue22, localValue32, localValue42)
    local workingValue43
    workingValue43 = eventHandler.vehicleCategoryIndex
    if localValue42 ~= workingValue43 then
      eventHandler.vehicleCategoryIndex = localValue42
      eventHandler.vehicleSpawncodeIndex = 1
    end
  end
  -- Beginner: Draw a RageUI list selector.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  localValue1 = cmgOperation.categoryNames
  localValue2 = eventHandler.vehicleCategoryIndex
  localValue1 = localValue1[localValue2]
  localValue2 = RageUI
  localValue2 = localValue2.List
  localValue3 = "Aircraft Type"
  localValue4 = cmgOperation.categoryVehicleNames
  localValue4 = localValue4[localValue1]
  localValue5 = eventHandler.vehicleSpawncodeIndex
  localValue6 = "The specific aircraft to use from the above category."
  localValue7 = {}
  localValue8 = true

  -- === HELPER FUNCTION: coords(localValue12, localValue22, localValue32, localValue42) ===
  function coords(localValue12, localValue22, localValue32, localValue42)
    local workingValue43
    workingValue43 = eventHandler.vehicleSpawncodeIndex
    if localValue42 ~= workingValue43 then
      eventHandler.vehicleSpawncodeIndex = localValue42
    end
  end
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords)
  localValue2 = RageUI
  localValue2 = localValue2.List
  localValue3 = "Num Teams"
  localValue4 = cmgOperation.numTeamsList
  localValue5 = eventHandler.numTeams
  localValue6 = "The number of teams to have. If set to one, it will be every player vs every player."
  localValue7 = {}
  localValue8 = true

  -- === HELPER FUNCTION: coords(localValue12, localValue22, localValue32, localValue42) ===
  function coords(localValue12, localValue22, localValue32, localValue42)
    local workingValue43
    workingValue43 = eventHandler.numTeams
    if localValue42 ~= workingValue43 then
      eventHandler.numTeams = localValue42
    end
  end
  -- Beginner: Draw a RageUI list selector.
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords)
  localValue2 = RageUI
  localValue2 = localValue2.List
  localValue3 = "Allowed Weapons"
  localValue4 = cmgOperation.vehicleWeaponsList
  localValue5 = eventHandler.vehicleWeaponIndex
  localValue6 = "The weapons which are allowed to be used in fighting."
  localValue7 = {}
  localValue8 = true

  -- === HELPER FUNCTION: coords(localValue12, localValue22, localValue32, localValue42) ===
  function coords(localValue12, localValue22, localValue32, localValue42)
    local workingValue43
    workingValue43 = eventHandler.vehicleWeaponIndex
    if localValue42 ~= workingValue43 then
      eventHandler.vehicleWeaponIndex = localValue42
    end
  end
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords)
  localValue2 = RageUI
  localValue2 = localValue2.List
  localValue3 = "Num Lives"
  localValue4 = cmgOperation.numLivesList
  localValue5 = eventHandler.numLives
  localValue6 = "The amount of lives each player should have. When killed, if having extra lives they will respawn in another aircraft."
  localValue7 = {}
  localValue8 = true

  -- === HELPER FUNCTION: coords(localValue12, localValue22, localValue32, localValue42) ===
  function coords(localValue12, localValue22, localValue32, localValue42)
    local workingValue43
    workingValue43 = eventHandler.numLives
    if localValue42 ~= workingValue43 then
      eventHandler.numLives = localValue42
    end
  end
  -- Beginner: Draw a RageUI list selector.
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords)
  localValue2 = RageUI
  localValue2 = localValue2.Checkbox
  localValue3 = "Enable Collectables"
  localValue4 = "Enables mid air collectables which can be flown through to collect and receive special effects."
  localValue5 = eventHandler.enableCollectables
  localValue6 = {}

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32, localValue42) ===
  function localValue7(localValue12, localValue22, localValue32, localValue42)
    eventHandler.enableCollectables = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue2 = RageUI
  localValue2 = localValue2.Checkbox
  localValue3 = "Show Enemy Blips"
  localValue4 = "Whether to show the blips of enemy aircraft. Your own teams blip will always be shown."
  localValue5 = eventHandler.enableEnemyBlips
  localValue6 = {}

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32, localValue42) ===
  function localValue7(localValue12, localValue22, localValue32, localValue42)
    eventHandler.enableEnemyBlips = localValue42
  end
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue2 = eventHandler
  return localValue2
end
text2(cmgOperation2, eventHandlerRegistration)
text2 = CMG
text2 = text2.registerDevMenuState
cmgOperation2 = "Dog Fighting"
eventHandlerRegistration = {}
eventHandlerRegistration.drawMaps = false
text2 = text2(cmgOperation2, eventHandlerRegistration)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuItems
eventHandlerRegistration = "Events/Dog Fighting"

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Draw Maps"
  localValue3 = "Draw debug information for each location."
  localValue4 = text2.drawMaps
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    text2.drawMaps = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
cmgOperation2(eventHandlerRegistration, text3)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuThread
eventHandlerRegistration = "Dog Fighting"

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13, stateFlag14, number4, stateFlag15, workingValue31, workingValue33, stateFlag16
  localValue1 = text2.drawMaps
  if localValue1 then
    localValue1 = pairs
    localValue2 = cmgOperation.locations
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      localValue7 = DrawMarker
      localValue8 = 28
      coords = localValue6.centerPosition
      coords = coords.x
      stateFlag17 = localValue6.centerPosition
      stateFlag17 = stateFlag17.y
      stateFlag = localValue6.centerPosition
      stateFlag = stateFlag.z
      workingValue3 = 0.0
      networkTime = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      workingValue8 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = 10.0
      stateFlag6 = 10.0
      stateFlag7 = 10.0
      stateFlag8 = 0
      number = 0
      stateFlag9 = 255
      number2 = 180
      stateFlag10 = false
      stateFlag11 = false
      number3 = 2
      stateFlag12 = false
      workingValue22 = nil
      workingValue24 = nil
      stateFlag13 = false
      localValue7(localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13)
      localValue7 = DrawMarker
      localValue8 = 1
      coords = localValue6.centerPosition
      coords = coords.x
      stateFlag17 = localValue6.centerPosition
      stateFlag17 = stateFlag17.y
      stateFlag = 0.0
      workingValue3 = 0.0
      networkTime = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      workingValue8 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = localValue6.initialRadius
      stateFlag5 = stateFlag5 * 2.0
      stateFlag6 = localValue6.initialRadius
      stateFlag6 = stateFlag6 * 2.0
      stateFlag7 = localValue6.initialRadius
      stateFlag7 = stateFlag7 * 2.0
      stateFlag8 = 255
      number = 0
      stateFlag9 = 0
      number2 = 75
      stateFlag10 = false
      stateFlag11 = false
      number3 = 2
      stateFlag12 = false
      workingValue22 = nil
      workingValue24 = nil
      stateFlag13 = false
      localValue7(localValue8, coords, stateFlag17, stateFlag, workingValue3, networkTime, stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13)
      localValue7 = pairs
      localValue8 = localValue6.spawnPositions
      localValue7, localValue8, coords, stateFlag17 = localValue7(localValue8)
      for stateFlag, workingValue3 in localValue7, localValue8, coords, stateFlag17 do
        networkTime = DrawMarker
        stateFlag2 = 28
        stateFlag3 = workingValue3.x
        workingValue8 = workingValue3.y
        stateFlag4 = workingValue3.z
        stateFlag5 = 0.0
        stateFlag6 = 0.0
        stateFlag7 = 0.0
        stateFlag8 = 0.0
        number = 0.0
        stateFlag9 = 0.0
        number2 = 10.0
        stateFlag10 = 10.0
        stateFlag11 = 10.0
        number3 = 0
        stateFlag12 = 255
        workingValue22 = 0
        workingValue24 = 180
        stateFlag13 = false
        stateFlag14 = false
        number4 = 2
        stateFlag15 = false
        workingValue31 = nil
        workingValue33 = nil
        stateFlag16 = false
        networkTime(stateFlag2, stateFlag3, workingValue8, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number, stateFlag9, number2, stateFlag10, stateFlag11, number3, stateFlag12, workingValue22, workingValue24, stateFlag13, stateFlag14, number4, stateFlag15, workingValue31, workingValue33, stateFlag16)
        networkTime = CMG
        networkTime = networkTime.drawHeadingFromPoint
        stateFlag2 = workingValue3.xyz
        stateFlag3 = math
        stateFlag3 = stateFlag3.rad
        workingValue8 = workingValue3.w
        stateFlag3 = stateFlag3(workingValue8)
        workingValue8 = 50.0
        networkTime(stateFlag2, stateFlag3, workingValue8)
      end
      localValue7 = pairs
      localValue8 = localValue6.collectableSpawns
      localValue7, localValue8, coords, stateFlag17 = localValue7(localValue8)
      for stateFlag, workingValue3 in localValue7, localValue8, coords, stateFlag17 do
        networkTime = workingValue26
        stateFlag2 = workingValue3
        networkTime(stateFlag2)
      end
    end
  end
end
cmgOperation2(eventHandlerRegistration, text3)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1.vehicle
  if 0 == localValue2 then
    return
  end
  localValue2 = SetEntityAsNoLongerNeeded
  localValue3 = localValue1.vehicle
  localValue2(localValue3)
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1.vehicle
  localValue2 = localValue2(localValue3)
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = TriggerServerEvent
  localValue4 = "3ab272a10d"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3ab272a10d".
  localValue3(localValue4, localValue5)
end
eventHandlerRegistration = AddEventHandler
text3 = "5dac3d7c66"
-- Beginner: this function runs when client event "5dac3d7c66" fires.

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: none) ===
function workingValue35()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = text
  if localValue1 then
    localValue1 = cmgOperation2
    localValue2 = text
    localValue1(localValue2)
    localValue1 = SetEntityCoordsNoOffset
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = 0.0
    localValue4 = 0.0
    localValue5 = 0.0
    localValue6 = true
    localValue7 = false
    localValue8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
    localValue1 = workingValue11
    localValue2 = true
    localValue1(localValue2)
    text.hasRespawned = true
  end
end
-- Beginner: Register a client-side event handler. Event/command: "5dac3d7c66".
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = RegisterNetEvent
text3 = "546310b6b7"
-- Beginner: this function handles network event "546310b6b7".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: none) ===
function workingValue35()
  local localValue1, localValue2
  localValue1 = text
  if localValue1 then
    localValue1 = cmgOperation2
    localValue2 = text
    localValue1(localValue2)
    text.wantsNewVehicle = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "546310b6b7".
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = RegisterNetEvent
text3 = "4960beeb90"
-- Beginner: this function handles network event "4960beeb90".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2) ===
function workingValue35(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17
  localValue3 = CMG
  localValue3 = localValue3.getClientEventData
  localValue4 = "DogFightingClientData"
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  localValue5 = localValue3.players
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, coords in localValue4, localValue5, localValue6, localValue7 do
    stateFlag17 = coords.source
    if stateFlag17 == localValue1 then
      stateFlag17 = coords.data
      stateFlag17.numLives = localValue2
      break
    end
  end
end
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = RegisterNetEvent
text3 = "ae38cbb08d"
-- Beginner: this function handles network event "ae38cbb08d".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2) ===
function workingValue35(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, coords, stateFlag17
  localValue3 = CMG
  localValue3 = localValue3.getClientEventData
  localValue4 = "DogFightingClientData"
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  localValue5 = localValue3.players
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, coords in localValue4, localValue5, localValue6, localValue7 do
    stateFlag17 = coords.source
    if stateFlag17 == localValue1 then
      stateFlag17 = coords.data
      stateFlag17.numKills = localValue2
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae38cbb08d".
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = RegisterNetEvent
text3 = "c7b4793225"
-- Beginner: this function handles network event "c7b4793225".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1) ===
function workingValue35(localValue1)
  local localValue2
  localValue2 = text
  if localValue2 then
    localValue2 = text.activeCollectableIndicies
    localValue2[localValue1] = true
  end
end
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = RegisterNetEvent
text3 = "0544b9386d"
-- Beginner: this function handles network event "0544b9386d".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1) ===
function workingValue35(localValue1)
  local localValue2
  localValue2 = text
  if localValue2 then
    localValue2 = text.activeCollectableIndicies
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0544b9386d".
eventHandlerRegistration(text3, workingValue35)
eventHandlerRegistration = AddRelationshipGroup
text3 = cmgOperation.defaultRelationshipName
eventHandlerRegistration(text3)
eventHandlerRegistration = pairs
text3 = cmgOperation.teams
eventHandlerRegistration, text3, workingValue35, workingValue36 = eventHandlerRegistration(text3)
for workingValue37, workingValue38 in eventHandlerRegistration, text3, workingValue35, workingValue36 do
  iterator = AddRelationshipGroup
  number5 = workingValue38.relationshipName
  iterator(number5)
  iterator = pairs
  number5 = cmgOperation.teams
  iterator, number5, workingValue39, workingValue40 = iterator(number5)
  for workingValue41, workingValue44 in iterator, number5, workingValue39, workingValue40 do
    workingValue45 = workingValue38.relationshipHash
    number6 = workingValue44.relationshipHash
    if workingValue45 == number6 then
      workingValue45 = SetRelationshipBetweenGroups
      number6 = 0
      workingValue46 = workingValue38.relationshipHash
      workingValue47 = workingValue44.relationshipHash
      workingValue45(number6, workingValue46, workingValue47)
    else
      workingValue45 = SetRelationshipBetweenGroups
      number6 = 5
      workingValue46 = workingValue38.relationshipHash
      workingValue47 = workingValue44.relationshipHash
      workingValue45(number6, workingValue46, workingValue47)
    end
  end
  iterator = SetRelationshipBetweenGroups
  number5 = 5
  workingValue39 = workingValue38.relationshipHash
  workingValue40 = cmgOperation.defaultRelationshipHash
  iterator(number5, workingValue39, workingValue40)
  iterator = SetRelationshipBetweenGroups
  number5 = 5
  workingValue39 = cmgOperation.defaultRelationshipHash
  workingValue40 = workingValue38.relationshipHash
  iterator(number5, workingValue39, workingValue40)
end
eventHandlerRegistration = RegisterNetEvent
text3 = "c229477440"
-- Beginner: this function handles network event "c229477440".

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue35(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, coords, stateFlag17
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "%s%s~w~ has killed %s%s~w~"
  localValue7 = CMG
  localValue7 = localValue7.getPlayerColour
  localValue8 = localValue2
  localValue7 = localValue7(localValue8)
  localValue8 = localValue4
  coords = CMG
  coords = coords.getPlayerColour
  stateFlag17 = localValue1
  coords = coords(stateFlag17)
  stateFlag17 = localValue3
  localValue5 = localValue5(localValue6, localValue7, localValue8, coords, stateFlag17)
  localValue6 = notify
  localValue7 = localValue5
  -- Beginner: Show a notification to the player.
  localValue6(localValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c229477440".
eventHandlerRegistration(text3, workingValue35)
