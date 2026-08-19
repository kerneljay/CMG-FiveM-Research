--[[
    LEVEL 1 BEGINNER GUIDE — Organheist
    ========================================

    File: cmg/prod/client/events/cl_organheist.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Organheist feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 48
      * Background threads: 0
      * Always-running loops: 6
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
local cmgOperation, stateFlag8, createVector3, createVector32, number17, stateFlag16, stateFlag18, stateFlag19, text11, dataCollection11, dataCollection, workingValue, workingValue3, text, workingValue4, text2, dataCollection2, dataCollection3, number10, stateFlag6, stateFlag9, dataCollection4, eventHandlerRegistration, hashValue, text3, stateFlag13, number11, cmgOperation3, eventHandler, text4, cmgOperation4, text5, text6, eventHandler2, text7, cmgOperation5, text8, dataCollection5, dataCollection6, stateFlag15, workingValue7, workingValue8, workingValue9, dataCollection7, dataCollection8, cmgOperation6, dataCollection9, number14, number15, number16, number18, number19, workingValue10, dataCollection10
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag8 = "cfg/cfg_organheist"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag8)
stateFlag8 = false
createVector3 = vector3
createVector32 = 240.31098937988
number17 = -1379.8699951172
stateFlag16 = 33.741794586182
createVector3 = createVector3(createVector32, number17, stateFlag16)
createVector32 = vector3
number17 = 231.51065063477
stateFlag16 = -1360.6903076172
stateFlag18 = 28.651802062988
createVector32 = createVector32(number17, stateFlag16, stateFlag18)
number17 = 600
stateFlag16 = false
stateFlag18 = false
stateFlag19 = false
text11 = ""
dataCollection11 = {}
dataCollection = {}
workingValue = nil
workingValue3 = AddRelationshipGroup
text = "ORGANHEIST_POLICE"
workingValue3, text = workingValue3(text)
workingValue4 = AddRelationshipGroup
text2 = "ORGANHEIST_CRIMINAL"
workingValue4, text2 = workingValue4(text2)
dataCollection2 = {}
dataCollection3 = {}
number10 = 0
stateFlag6 = false
stateFlag9 = false
dataCollection4 = {}
eventHandlerRegistration = {}
hashValue = GetHashKey
text3 = "prop_gate_military_01"
-- Beginner: result below is hash.
hashValue = hashValue(text3)
eventHandlerRegistration.objectHash = hashValue
hashValue = vector3
text3 = 251.2504
stateFlag13 = -1361.306
number11 = 23.54731
hashValue = hashValue(text3, stateFlag13, number11)
eventHandlerRegistration.objectPos = hashValue
eventHandlerRegistration.objectHeading = 322.19732666016
eventHandlerRegistration.objectHandler = 0
dataCollection4.civs = eventHandlerRegistration
eventHandlerRegistration = {}
hashValue = GetHashKey
text3 = "prop_gate_military_01"
-- Beginner: result below is hash.
hashValue = hashValue(text3)
eventHandlerRegistration.objectHash = hashValue
hashValue = vector3
text3 = 251.1472
stateFlag13 = -1361.884
number11 = 38.54385
hashValue = hashValue(text3, stateFlag13, number11)
eventHandlerRegistration.objectPos = hashValue
eventHandlerRegistration.objectHeading = 318.79
eventHandlerRegistration.objectHandler = 0
dataCollection4.cops = eventHandlerRegistration
eventHandlerRegistration = AddEventHandler
hashValue = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4
  if localValue2 then
    localValue3 = tCMG
    localValue3 = localValue3.addMarker
    localValue4 = createVector3.x
    localValue5 = createVector3.y
    workingValue11 = createVector3.z
    number20 = 0.7
    number21 = 0.7
    text12 = 0.5
    number22 = 0
    number = 125
    number3 = 255
    stateFlag = 125
    cmgOperation2 = 150
    number6 = 20
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = true
    -- Beginner: Create a world marker.
    localValue3(localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4)
    localValue3 = tCMG
    localValue3 = localValue3.addBlip
    localValue4 = createVector3.x
    localValue5 = createVector3.y
    workingValue11 = createVector3.z
    number20 = 378
    number21 = 3
    text12 = "Organ Heist Police"
    -- Beginner: Create a minimap blip.
    localValue3(localValue4, localValue5, workingValue11, number20, number21, text12)
    localValue3 = tCMG
    localValue3 = localValue3.addMarker
    localValue4 = createVector32.x
    localValue5 = createVector32.y
    workingValue11 = createVector32.z
    number20 = 0.7
    number21 = 0.7
    text12 = 0.5
    number22 = 255
    number = 0
    number3 = 0
    stateFlag = 125
    cmgOperation2 = 150
    number6 = 20
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = true
    -- Beginner: Create a world marker.
    localValue3(localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4)
    localValue3 = tCMG
    localValue3 = localValue3.addBlip
    localValue4 = createVector32.x
    localValue5 = createVector32.y
    workingValue11 = createVector32.z
    number20 = 378
    number21 = 1
    text12 = "Organ Heist Criminals"
    -- Beginner: Create a minimap blip.
    localValue3(localValue4, localValue5, workingValue11, number20, number21, text12)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(hashValue, text3)
eventHandlerRegistration = Citizen
eventHandlerRegistration = eventHandlerRegistration.CreateThread

-- === HELPER FUNCTION: hashValue() ===
function hashValue()
  local localValue1, localValue2, localValue3, localValue4
  while true do
    localValue1 = GetPlayerPed
    localValue2 = -1
    -- Beginner: result below is playerPed.
    localValue1 = localValue1(localValue2)
    localValue2 = GetEntityCoords
    localValue3 = localValue1
    -- Beginner: result below is entityCoords.
    localValue2 = localValue2(localValue3)
    localValue3 = createVector32
    localValue3 = localValue2 - localValue3
    localValue3 = #localValue3
    if localValue3 < 1.0 then
      localValue3 = true
      stateFlag18 = localValue3
    else
      localValue3 = false
      stateFlag18 = localValue3
    end
    localValue3 = createVector3
    localValue3 = localValue2 - localValue3
    localValue3 = #localValue3
    if localValue3 < 1.0 then
      localValue3 = true
      stateFlag16 = localValue3
    else
      localValue3 = false
      stateFlag16 = localValue3
    end
    localValue3 = Wait
    localValue4 = 250
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandlerRegistration(hashValue)

-- === HELPER FUNCTION: eventHandlerRegistration() ===
function eventHandlerRegistration()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = workingValue
  if localValue1 then
    localValue1 = workingValue.interiorId
    if localValue1 then
      localValue1 = workingValue.roomKey
      if localValue1 then
        localValue1 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue1 = localValue1()
        while true do
          localValue2 = GetRoomKeyFromEntity
          localValue3 = PlayerPedId
          localValue3, localValue4, localValue5 = localValue3()
          localValue2 = localValue2(localValue3, localValue4, localValue5)
          if 0 ~= localValue2 then
            break
          end
          localValue2 = workingValue
          if not localValue2 then
            break
          end
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          localValue2 = localValue2 - localValue1
          localValue3 = 1000
          if localValue2 > localValue3 then
            return
          end
          localValue2 = PinInteriorInMemory
          localValue3 = workingValue.interiorId
          localValue2(localValue3)
          localValue2 = ForceRoomForEntity
          localValue3 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue3 = localValue3()
          localValue4 = workingValue.interiorId
          localValue5 = workingValue.roomKey
          localValue2(localValue3, localValue4, localValue5)
          localValue2 = ForceRoomForGameViewport
          localValue3 = workingValue.interiorId
          localValue4 = workingValue.roomKey
          localValue2(localValue3, localValue4)
          localValue2 = Citizen
          localValue2 = localValue2.Wait
          localValue3 = 0
          localValue2(localValue3)
        end
      end
    end
  end
end

-- === HELPER FUNCTION: hashValue(localValue1) ===
function hashValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = ""
  localValue4 = localValue2 % 60
  if localValue4 <= 9 then
    localValue3 = "0"
  else
    localValue3 = ""
  end
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue2 / 60
  localValue4 = localValue4(localValue5)
  localValue5 = ":"
  workingValue11 = localValue3
  number20 = localValue2 % 60
  localValue4 = localValue4 .. localValue5 .. workingValue11 .. number20
  return localValue4
end
text3 = false
stateFlag13 = false

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue1 = stateFlag18
  if localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = "~r~Press ~INPUT_PICKUP~ to play the Organ Heist!"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 38
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = text3
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "police.onduty.permission"
        localValue1 = localValue1(localValue2)
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.hasClientPermission
          localValue2 = "prisonguard.onduty.permission"
          localValue1 = localValue1(localValue2)
          if not localValue1 then
            localValue1 = stateFlag19
            if not localValue1 then
              localValue1 = TriggerServerEvent
              localValue2 = "a4e8cb308c"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a4e8cb308c".
              localValue1(localValue2)
              localValue1 = true
              text3 = localValue1
              localValue1 = SetTimeout
              localValue2 = 100

              -- === HELPER FUNCTION: localValue3() ===
              function localValue3()
                local waitCall, playerPed
                waitCall = false
                text3 = waitCall
              end
              localValue1(localValue2, localValue3)
            else
              localValue1 = tCMG
              localValue1 = localValue1.notify
              localValue2 = "~r~Already joined the Organ Heist!"
              -- Beginner: Show a notification to the player.
              localValue1(localValue2)
            end
        end
        else
          localValue1 = tCMG
          localValue1 = localValue1.notify
          localValue2 = "~r~You are police, please use the other entrance!"
          localValue1(localValue2)
        end
      end
    end
  else
    localValue1 = stateFlag16
    if localValue1 then
      localValue1 = drawNativeNotification
      localValue2 = "~b~Press ~INPUT_PICKUP~ to play the Organ Heist!"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
      localValue1 = IsControlJustPressed
      localValue2 = 0
      localValue3 = 38
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = text3
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.hasClientPermission
          localValue2 = "police.onduty.permission"
          localValue1 = localValue1(localValue2)
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.hasClientPermission
            localValue2 = "prisonguard.onduty.permission"
            localValue1 = localValue1(localValue2)
            if not localValue1 then
              goto continueAtStep96
            end
          end
          localValue1 = stateFlag19
          if not localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "a4e8cb308c"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a4e8cb308c".
            localValue1(localValue2)
            localValue1 = true
            text3 = localValue1
            localValue1 = SetTimeout
            localValue2 = 100

            -- === HELPER FUNCTION: localValue3() ===
            function localValue3()
              local waitCall, playerPed
              waitCall = false
              text3 = waitCall
            end
            localValue1(localValue2, localValue3)
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~Already joined the Organ Heist!"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
            goto continueAtStep100
            ::continueAtStep96::
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You are a civilian, please use the other entrance!"
            localValue1(localValue2)
          end
        end
      end
    end
  end
  ::continueAtStep100::
  localValue1 = CMG
  localValue1 = localValue1.createTimerBars
  -- Beginner: result below is timerBars.
  localValue1 = localValue1()
  localValue2 = stateFlag8
  if localValue2 then
    localValue2 = stateFlag6
    if localValue2 then
      localValue2 = localValue1.push
      localValue3 = "STARTS IN:"
      localValue4 = hashValue
      localValue5 = number17
      localValue4, localValue5, workingValue11, number20, number21 = localValue4(localValue5)
      localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21)
      localValue2 = DisablePlayerFiring
      localValue3 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue3 = localValue3()
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
  localValue2 = stateFlag9
  if not localValue2 then
    localValue2 = stateFlag6
    if not localValue2 then
      goto continueAtStep217
    end
  end
  localValue2 = localValue1.push
  localValue3 = "~r~Criminals:"
  localValue4 = tostring
  localValue5 = table
  localValue5 = localValue5.count
  workingValue11 = dataCollection
  localValue5, workingValue11, number20, number21 = localValue5(workingValue11)
  localValue4, localValue5, workingValue11, number20, number21 = localValue4(localValue5, workingValue11, number20, number21)
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21)
  localValue2 = localValue1.push
  localValue3 = "~b~Police:"
  localValue4 = tostring
  localValue5 = table
  localValue5 = localValue5.count
  workingValue11 = dataCollection11
  localValue5, workingValue11, number20, number21 = localValue5(workingValue11)
  localValue4, localValue5, workingValue11, number20, number21 = localValue4(localValue5, workingValue11, number20, number21)
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21)
  localValue2 = localValue1.push
  localValue3 = "~y~Kills:"
  localValue4 = tostring
  localValue5 = number10
  localValue4, localValue5, workingValue11, number20, number21 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21)
  localValue2 = drawNativeText
  localValue3 = "~b~Kill the enemy team and survive."
  -- Beginner: Draw GTA-style text on screen.
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = RemoveWeaponFromPed
  localValue4 = localValue2
  localValue5 = 615608432
  localValue3(localValue4, localValue5)
  localValue3 = RemoveWeaponFromPed
  localValue4 = localValue2
  localValue5 = -73270376
  localValue3(localValue4, localValue5)
  localValue3 = RemoveWeaponFromPed
  localValue4 = localValue2
  localValue5 = -2144752413
  localValue3(localValue4, localValue5)
  localValue3 = RemoveWeaponFromPed
  localValue4 = localValue2
  localValue5 = -795216620
  localValue3(localValue4, localValue5)
  localValue3 = GetSelectedPedWeapon
  localValue4 = localValue2
  -- Beginner: result below is weaponHash.
  localValue3 = localValue3(localValue4)
  if 911657153 == localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.setWeapon
    localValue4 = localValue2
    localValue5 = -1569615261
    workingValue11 = true
    localValue3(localValue4, localValue5, workingValue11)
  end
  localValue3 = GetInteriorFromEntity
  localValue4 = PlayerPedId
  localValue4, localValue5, workingValue11, number20, number21 = localValue4()
  -- Beginner: result below is interiorId.
  localValue3 = localValue3(localValue4, localValue5, workingValue11, number20, number21)
  localValue4 = workingValue
  if localValue4 and 0 == localValue3 then
    localValue4 = stateFlag13
    if not localValue4 then
      localValue4 = true
      stateFlag13 = localValue4
      localValue4 = SetTimeout
      localValue5 = 1000

      -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
      function workingValue11()
        local waitCall, playerPed
        waitCall = false
        stateFlag13 = waitCall
      end
      localValue4(localValue5, workingValue11)
      localValue4 = workingValue.safePositions
      localValue4 = localValue4[1]
      localValue5 = DoScreenFadeOut
      workingValue11 = 1000
      localValue5(workingValue11)
      localValue5 = NetworkFadeOutEntity
      workingValue11 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue11 = workingValue11()
      number20 = true
      number21 = false
      localValue5(workingValue11, number20, number21)
      localValue5 = Citizen
      localValue5 = localValue5.CreateThread

      -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
      function workingValue11()
        local waitCall, playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21
        waitCall = Wait
        playerPed = 1000
        waitCall(playerPed)
        waitCall = SetEntityCoords
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        stateFlag14 = localValue4.x
        number12 = localValue4.y
        text9 = localValue4.z
        stateFlag17 = true
        waitCall2 = false
        stateFlag20 = false
        stateFlag21 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        waitCall(playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21)
        waitCall = eventHandlerRegistration
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall()
        waitCall = NetworkFadeInEntity
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        stateFlag14 = false
        waitCall(playerPed, stateFlag14)
        waitCall = DoScreenFadeIn
        playerPed = 1000
        waitCall(playerPed)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(workingValue11)
    end
  end
  ::continueAtStep217::
  localValue2 = localValue1.rowCount
  localValue2 = localValue2()
  if localValue2 > 0 then
    localValue2 = localValue1.draw
    localValue2()
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
eventHandler = number11
text4 = "Organ Heist Enter"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(eventHandler, text4)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = true
  localValue2 = SetTimeout
  localValue3 = 5000

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local waitCall, playerPed
    waitCall = false
    localValue1 = waitCall
  end
  localValue2(localValue3, localValue4)
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local waitCall, playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22, number2, workingValue2, number4, number5, number7, number8, number9

    -- === HELPER FUNCTION: waitCall(localValue12) ===
    function waitCall(localValue12)
      local workingValue5, workingValue6, number13, text10
      workingValue5 = RequestScaleformMovie
      workingValue6 = localValue12
      -- Beginner: result below is scaleformHandle.
      workingValue5 = workingValue5(workingValue6)
      while true do
        workingValue6 = HasScaleformMovieLoaded
        number13 = workingValue5
        workingValue6 = workingValue6(number13)
        if workingValue6 then
          break
        end
        workingValue6 = Citizen
        workingValue6 = workingValue6.Wait
        number13 = 0
        workingValue6(number13)
      end
      workingValue6 = BeginScaleformMovieMethod
      number13 = workingValue5
      text10 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      workingValue6(number13, text10)
      workingValue6 = _ENV
      number13 = "ScaleformMovieMethodAddParamTextureNameString"
      workingValue6 = workingValue6[number13]
      number13 = "~g~ORGAN HEIST!"
      workingValue6(number13)
      workingValue6 = _ENV
      number13 = "ScaleformMovieMethodAddParamTextureNameString"
      workingValue6 = workingValue6[number13]
      number13 = "Survive the Organ Heist and win \194\163250,000"
      workingValue6(number13)
      workingValue6 = EndScaleformMovieMethod
      workingValue6()
      return workingValue5
    end
    playerPed = waitCall
    stateFlag14 = "mp_big_message_freemode"
    playerPed = playerPed(stateFlag14)
    stateFlag14 = PlaySound
    number12 = -1
    text9 = "Hit"
    stateFlag17 = "RESPAWN_SOUNDSET"
    waitCall2 = false
    stateFlag20 = 0
    stateFlag21 = true
    stateFlag14(number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21)
    while true do
      stateFlag14 = localValue1
      if not stateFlag14 then
        break
      end
      stateFlag14 = 0.5
      number12 = 0.35
      text9 = 1.0
      stateFlag17 = text9
      waitCall2 = DrawScaleformMovie
      stateFlag20 = playerPed
      stateFlag21 = stateFlag14
      stateFlag22 = number12
      number2 = text9
      workingValue2 = stateFlag17
      number4 = 0
      number5 = 0
      number7 = 0
      number8 = 0
      number9 = 0
      waitCall2(stateFlag20, stateFlag21, stateFlag22, number2, workingValue2, number4, number5, number7, number8, number9)
      waitCall2 = Wait
      stateFlag20 = 0
      waitCall2(stateFlag20)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
eventHandler = RegisterNetEvent
text4 = "f97f1fc29a"
-- Beginner: this function handles network event "f97f1fc29a".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4, localValue5)
  local workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11, stateFlag12
  workingValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue11 = workingValue11()
  number17 = localValue2
  text11 = localValue3
  number20 = cmgOperation.locations
  number20 = number20[localValue4]
  number21 = number20.requestIpls
  if number21 then
    number21 = pairs
    text12 = number20.requestIpls
    number21, text12, number22, number = number21(text12)
    for number3, stateFlag in number21, text12, number22, number do
      cmgOperation2 = RequestIpl
      number6 = stateFlag
      cmgOperation2(number6)
    end
  end
  number21 = number20.sides
  number21 = number21[localValue5]
  workingValue = number21
  number21 = true
  stateFlag19 = number21
  number21 = tCMG
  number21 = number21.setCanAnim
  text12 = false
  number21(text12)
  number21 = Citizen
  number21 = number21.CreateThread

  -- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
  function text12()
    local waitCall, playerPed
    while true do
      waitCall = number17
      waitCall = waitCall - 1
      number17 = waitCall
      waitCall = Wait
      playerPed = 1000
      waitCall(playerPed)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number21(text12)
  number21 = true
  stateFlag8 = number21
  number21 = true
  stateFlag6 = number21
  number21 = CMG
  number21 = number21.deleteGreenzone
  text12 = "organ"
  number21(text12)
  number21 = SetRelationshipBetweenGroups
  text12 = 5
  number22 = text
  number = text2
  number21(text12, number22, number)
  number21 = SetRelationshipBetweenGroups
  text12 = 5
  number22 = text2
  number = text
  number21(text12, number22, number)
  if "civ" == localValue3 then
    number21 = SetPedRelationshipGroupHash
    text12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text12 = text12()
    number22 = text2
    number21(text12, number22)
    number21 = CMG
    number21 = number21.createAtm
    text12 = "Organ Heist"
    number22 = workingValue.atmLocation
    number21(text12, number22)
  elseif "police" == localValue3 then
    number21 = SetPedRelationshipGroupHash
    text12 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text12 = text12()
    number22 = text
    number21(text12, number22)
  end
  number21 = pairs
  text12 = workingValue.gunStores
  number22 = text11
  text12 = text12[number22]
  number21, text12, number22, number = number21(text12)
  for number3, stateFlag in number21, text12, number22, number do
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.createGunStore
    number6 = stateFlag[1]
    stateFlag2 = stateFlag[2]
    stateFlag3 = stateFlag[3]
    cmgOperation2(number6, stateFlag2, stateFlag3)
  end
  number21 = CMG
  number21 = number21.isEmergencyService
  number21 = number21()
  if number21 then
    number21 = TriggerEvent
    text12 = "24a888d2b3"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "24a888d2b3".
    number21(text12)
  end
  number21 = CMG
  number21 = number21.setFriendlyFire
  text12 = false
  number21(text12)
  number21 = DoScreenFadeOut
  text12 = 1000
  number21(text12)
  number21 = NetworkFadeOutEntity
  text12 = workingValue11
  number22 = true
  number = false
  number21(text12, number22, number)
  number21 = Wait
  text12 = 1000
  number21(text12)
  number21 = SetEntityCoords
  text12 = workingValue11
  number22 = localValue1.x
  number = localValue1.y
  number3 = localValue1.z
  stateFlag = true
  cmgOperation2 = false
  number6 = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  number21(text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2)
  number21 = eventHandlerRegistration
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number21()
  number21 = NetworkFadeInEntity
  text12 = workingValue11
  number22 = false
  number21(text12, number22)
  number21 = DoScreenFadeIn
  text12 = 1000
  number21(text12)
  number21 = cmgOperation3
  -- Beginner: Run a helper every game frame while this script is active.
  number21()
  number21 = PrepareMusicEvent
  text12 = "AH3B_HALF_RAPPEL"
  number21(text12)
  number21 = TriggerMusicEvent
  text12 = "AH3B_HALF_RAPPEL"
  number21(text12)
  number21 = number20.fakeCollisions
  if number21 then
    number21 = pairs
    text12 = number20.fakeCollisions
    number21, text12, number22, number = number21(text12)
    for number3, stateFlag in number21, text12, number22, number do
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.loadModel
      number6 = stateFlag[1]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgOperation2(number6)
      cmgOperation2 = stateFlag[2]
      number6 = stateFlag[3]
      stateFlag2 = CreateObjectNoOffset
      stateFlag3 = stateFlag[1]
      stateFlag4 = cmgOperation2.x
      stateFlag5 = cmgOperation2.y
      stateFlag7 = cmgOperation2.z
      stateFlag10 = false
      stateFlag11 = false
      stateFlag12 = false
      -- Beginner: result below is objectEntity.
      stateFlag2 = stateFlag2(stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11, stateFlag12)
      stateFlag3 = SetEntityQuaternion
      stateFlag4 = stateFlag2
      stateFlag5 = number6.x
      stateFlag7 = number6.y
      stateFlag10 = number6.z
      stateFlag11 = number6.w
      stateFlag3(stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11)
      stateFlag3 = FreezeEntityPosition
      stateFlag4 = stateFlag2
      stateFlag5 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag3(stateFlag4, stateFlag5)
      stateFlag3 = SetEntityVisible
      stateFlag4 = stateFlag2
      stateFlag5 = false
      stateFlag7 = false
      stateFlag3(stateFlag4, stateFlag5, stateFlag7)
      stateFlag3 = table
      stateFlag3 = stateFlag3.insert
      stateFlag4 = dataCollection2
      stateFlag5 = stateFlag2
      stateFlag3(stateFlag4, stateFlag5)
    end
  end
  number21 = number20.customObjects
  if number21 then
    number21 = pairs
    text12 = number20.customObjects
    number21, text12, number22, number = number21(text12)
    for number3, stateFlag in number21, text12, number22, number do
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.loadModel
      number6 = stateFlag[1]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgOperation2(number6)
      cmgOperation2 = stateFlag[2]
      number6 = stateFlag[3]
      stateFlag2 = CreateObjectNoOffset
      stateFlag3 = stateFlag[1]
      stateFlag4 = cmgOperation2.x
      stateFlag5 = cmgOperation2.y
      stateFlag7 = cmgOperation2.z
      stateFlag10 = false
      stateFlag11 = false
      stateFlag12 = false
      -- Beginner: result below is objectEntity.
      stateFlag2 = stateFlag2(stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11, stateFlag12)
      stateFlag3 = SetEntityQuaternion
      stateFlag4 = stateFlag2
      stateFlag5 = number6.x
      stateFlag7 = number6.y
      stateFlag10 = number6.z
      stateFlag11 = number6.w
      stateFlag3(stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11)
      stateFlag3 = FreezeEntityPosition
      stateFlag4 = stateFlag2
      stateFlag5 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag3(stateFlag4, stateFlag5)
      stateFlag3 = table
      stateFlag3 = stateFlag3.insert
      stateFlag4 = dataCollection3
      stateFlag5 = stateFlag2
      stateFlag3(stateFlag4, stateFlag5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f97f1fc29a".
eventHandler(text4, cmgOperation4)
eventHandler = RegisterNetEvent
text4 = "d1ed3013ed"
-- Beginner: this function handles network event "d1ed3013ed".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3
  if "civ" == localValue2 then
    localValue3 = dataCollection
    localValue3[localValue1] = true
  elseif "police" == localValue2 then
    localValue3 = dataCollection11
    localValue3[localValue1] = true
  end
end
eventHandler(text4, cmgOperation4)
eventHandler = RegisterNetEvent
text4 = "f74fa40acb"
-- Beginner: this function handles network event "f74fa40acb".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue2 = PlaySoundFrontend
  localValue3 = -1
  localValue4 = "Weapon_Upgrade"
  localValue5 = "DLC_GR_Weapon_Upgrade_Soundset"
  workingValue11 = true
  localValue2(localValue3, localValue4, localValue5, workingValue11)
  localValue2 = tCMG
  localValue2 = localValue2.playScreenEffect
  localValue3 = "MP_Celeb_Win"
  localValue4 = 0.25
  localValue2(localValue3, localValue4)
  localValue2 = tCMG
  localValue2 = localValue2.notify
  localValue3 = "~g~Killed "
  localValue4 = localValue1
  localValue5 = " received \194\16325,000"
  localValue3 = localValue3 .. localValue4 .. localValue5
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = tCMG
  localValue2 = localValue2.isInComa
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = GetEntityHealth
    localValue4 = localValue2
    -- Beginner: result below is health.
    localValue3 = localValue3(localValue4)
    localValue4 = 200
    if localValue3 < localValue4 then
      localValue4 = SetEntityHealth
      localValue5 = localValue2
      workingValue11 = math
      workingValue11 = workingValue11.min
      number20 = localValue3 + 25
      number21 = 200
      workingValue11, number20, number21 = workingValue11(number20, number21)
      localValue4(localValue5, workingValue11, number20, number21)
      localValue4 = notify
      localValue5 = "~b~25% health given for kill!"
      -- Beginner: Show a notification to the player.
      localValue4(localValue5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f74fa40acb".
eventHandler(text4, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22
  localValue1 = workingValue
  if not localValue1 then
    return
  end
  localValue1 = 1000.0
  localValue2 = 0.0
  localValue3 = GetEntityCoords
  localValue4 = PlayerPedId
  localValue4, localValue5, workingValue11, number20, number21, text12, number22 = localValue4()
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5, workingValue11, number20, number21, text12, number22)
  localValue4 = pairs
  localValue5 = workingValue.pastGates
  localValue4, localValue5, workingValue11, number20 = localValue4(localValue5)
  for number21, text12 in localValue4, localValue5, workingValue11, number20 do
    number22 = localValue3 - text12
    number22 = #number22
    if localValue1 > number22 then
      localValue1 = number22
    end
    if localValue2 < number22 then
      localValue2 = number22
    end
  end
  localValue4 = localValue1
  localValue5 = localValue2
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11
  localValue1 = stateFlag6
  if localValue1 then
    localValue1 = eventHandler
    localValue1 = localValue1()
    if localValue1 < 3.0 then
      localValue2 = stateFlag13
      if not localValue2 then
        localValue2 = true
        stateFlag13 = localValue2
        localValue2 = SetTimeout
        localValue3 = 1000

        -- === HELPER FUNCTION: localValue4() ===
        function localValue4()
          local waitCall, playerPed
          waitCall = false
          stateFlag13 = waitCall
        end
        localValue2(localValue3, localValue4)
        localValue2 = DoScreenFadeOut
        localValue3 = 1000
        localValue2(localValue3)
        localValue2 = NetworkFadeOutEntity
        localValue3 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue3 = localValue3()
        localValue4 = true
        localValue5 = false
        localValue2(localValue3, localValue4, localValue5)
        localValue2 = Citizen
        localValue2 = localValue2.CreateThread

        -- === HELPER FUNCTION: localValue3() ===
        function localValue3()
          local waitCall, playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22
          waitCall = Wait
          playerPed = 1000
          waitCall(playerPed)
          waitCall = workingValue
          if waitCall then
            waitCall = stateFlag6
            if waitCall then
              waitCall = workingValue.safePositions
              waitCall = waitCall[1]
              playerPed = SetEntityCoords
              stateFlag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              stateFlag14 = stateFlag14()
              number12 = waitCall.x
              text9 = waitCall.y
              stateFlag17 = waitCall.z
              waitCall2 = true
              stateFlag20 = false
              stateFlag21 = false
              stateFlag22 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              playerPed(stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22)
              playerPed = eventHandlerRegistration
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              playerPed()
              playerPed = NetworkFadeInEntity
              stateFlag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              stateFlag14 = stateFlag14()
              number12 = false
              playerPed(stateFlag14, number12)
              playerPed = DoScreenFadeIn
              stateFlag14 = 1000
              playerPed(stateFlag14)
              playerPed = tCMG
              playerPed = playerPed.notify
              stateFlag14 = "~r~You got too far from the organ heist and have been teleported back."
              -- Beginner: Show a notification to the player.
              playerPed(stateFlag14)
          end
          else
            waitCall = NetworkFadeInEntity
            playerPed = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            playerPed = playerPed()
            stateFlag14 = false
            waitCall(playerPed, stateFlag14)
            waitCall = DoScreenFadeIn
            playerPed = 1000
            waitCall(playerPed)
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue2(localValue3)
      end
    end
  end
  localValue1 = stateFlag9
  if localValue1 then
    localValue1 = eventHandler
    localValue1, localValue2 = localValue1()
    localValue3 = 350.0
    if localValue2 > localValue3 then
      localValue3 = stateFlag13
      if not localValue3 then
        localValue3 = true
        stateFlag13 = localValue3
        localValue3 = SetTimeout
        localValue4 = 1000

        -- === HELPER FUNCTION: localValue5() ===
        function localValue5()
          local waitCall, playerPed
          waitCall = false
          stateFlag13 = waitCall
        end
        localValue3(localValue4, localValue5)
        localValue3 = DoScreenFadeOut
        localValue4 = 1000
        localValue3(localValue4)
        localValue3 = NetworkFadeOutEntity
        localValue4 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue4 = localValue4()
        localValue5 = true
        workingValue11 = false
        localValue3(localValue4, localValue5, workingValue11)
        localValue3 = Citizen
        localValue3 = localValue3.CreateThread

        -- === HELPER FUNCTION: localValue4() ===
        function localValue4()
          local waitCall, playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22
          waitCall = Wait
          playerPed = 1000
          waitCall(playerPed)
          waitCall = workingValue
          if waitCall then
            waitCall = stateFlag9
            if waitCall then
              waitCall = workingValue.safePositions
              waitCall = waitCall[1]
              playerPed = SetEntityCoords
              stateFlag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              stateFlag14 = stateFlag14()
              number12 = waitCall.x
              text9 = waitCall.y
              stateFlag17 = waitCall.z
              waitCall2 = true
              stateFlag20 = false
              stateFlag21 = false
              stateFlag22 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              playerPed(stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22)
              playerPed = eventHandlerRegistration
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              playerPed()
              playerPed = NetworkFadeInEntity
              stateFlag14 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              stateFlag14 = stateFlag14()
              number12 = false
              playerPed(stateFlag14, number12)
              playerPed = DoScreenFadeIn
              stateFlag14 = 1000
              playerPed(stateFlag14)
              playerPed = tCMG
              playerPed = playerPed.notify
              stateFlag14 = "~r~You got too far from the organ heist and have been teleported back."
              -- Beginner: Show a notification to the player.
              playerPed(stateFlag14)
            end
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue3(localValue4)
      end
    end
    localValue3 = text11
    if "civ" == localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getPlayerCombatTimer
      localValue3 = localValue3()
      if localValue3 <= 5 then
        localValue3 = CMG
        localValue3 = localValue3.setPlayerCombatTimer
        localValue4 = 60
        localValue5 = false
        localValue3(localValue4, localValue5)
      end
    end
    localValue3 = CMG
    localValue3 = localValue3.getPlayerBucket
    localValue3 = localValue3()
    if 1 == localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.isClientAFK
      localValue3 = localValue3()
      if not localValue3 then
        goto continueAtStep90
      end
    end
    localValue3 = TriggerServerEvent
    localValue4 = "3c0a39132b"
    localValue5 = nil
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c0a39132b".
    localValue3(localValue4, localValue5)
    localValue3 = CMG
    localValue3 = localValue3.setDeathInOrganHeist
    localValue3()
  end
  ::continueAtStep90::
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text5 = text4
text6 = "Organ Heist Bounds"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text5, text6)
cmgOperation4 = RegisterNetEvent
text5 = "fa5b816697"
-- Beginner: this function handles network event "fa5b816697".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = false
  stateFlag6 = localValue1
  localValue1 = true
  stateFlag9 = localValue1
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "5s_To_Event_Start_Countdown"
  localValue4 = "GTAO_FM_Events_Soundset"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = DisablePlayerFiring
  localValue2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue2 = localValue2()
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCanOpenLeaderboard
  localValue2 = true
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.setMaximumLeaderboardRows
  localValue2 = 10
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fa5b816697".
cmgOperation4(text5, text6)
cmgOperation4 = RegisterNetEvent
text5 = "651c377c85"
-- Beginner: this function handles network event "651c377c85".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2
  localValue2 = dataCollection11
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection11
    localValue2[localValue1] = nil
  end
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection
    localValue2[localValue1] = nil
  end
end
cmgOperation4(text5, text6)
cmgOperation4 = AddEventHandler
text5 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    localValue3 = dataCollection4
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for workingValue11 in localValue2, localValue3, localValue4, localValue5 do
      number20 = DeleteObject
      number21 = dataCollection4
      number21 = number21[workingValue11]
      number21 = number21.objectHandler
      number20(number21)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation4(text5, text6)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, workingValue11 in localValue1, localValue2, localValue3, localValue4 do
    number20 = DeleteEntity
    number21 = workingValue11
    -- Beginner: Delete a GTA entity.
    number20(number21)
  end
  localValue1 = {}
  dataCollection2 = localValue1
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, workingValue11 in localValue1, localValue2, localValue3, localValue4 do
    number20 = DeleteEntity
    number21 = workingValue11
    number20(number21)
  end
  localValue1 = {}
  dataCollection3 = localValue1
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number
  localValue1 = 0
  while true do
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = FreezeEntityPosition
    localValue4 = localValue2
    localValue5 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue3(localValue4, localValue5)
    localValue3 = GetEntityCoords
    localValue4 = localValue2
    localValue5 = true
    -- Beginner: result below is entityCoords.
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = createVector3
    localValue3 = localValue3 - localValue4
    localValue3 = #localValue3
    if localValue3 < 5.0 then
      localValue3 = IsEntityVisible
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        if 0 == localValue1 then
          localValue3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue3 = localValue3()
          localValue1 = localValue3
        else
          localValue3 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue3 = localValue3()
          localValue3 = localValue3 - localValue1
          localValue4 = 2000
          if localValue3 > localValue4 then
            break
          end
        end
    end
    else
      localValue3 = SetEntityCoords
      localValue4 = localValue2
      localValue5 = createVector3.x
      workingValue11 = createVector3.y
      number20 = createVector3.z
      number20 = number20 - 1.0
      number21 = true
      text12 = false
      number22 = false
      number = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue3(localValue4, localValue5, workingValue11, number20, number21, text12, number22, number)
      localValue3 = SetEntityVisible
      localValue4 = localValue2
      localValue5 = true
      workingValue11 = true
      localValue3(localValue4, localValue5, workingValue11)
      localValue1 = 0
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue2 = FreezeEntityPosition
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
end
eventHandler2 = RegisterNetEvent
text7 = "feee42063b"
-- Beginner: this function handles network event "feee42063b".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21, text12
  localValue2 = CMG
  localValue2 = localValue2.createGreenzone
  localValue3 = "organ"
  localValue4 = vector3
  localValue5 = 236.02685546875
  workingValue11 = -1373.7049560547
  number20 = 33.010623931885
  localValue4 = localValue4(localValue5, workingValue11, number20)
  localValue5 = 40.0
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = {}
  dataCollection11 = localValue2
  localValue2 = {}
  dataCollection = localValue2
  localValue2 = false
  stateFlag19 = localValue2
  localValue2 = false
  stateFlag8 = localValue2
  localValue2 = false
  stateFlag6 = localValue2
  localValue2 = false
  stateFlag9 = localValue2
  localValue2 = 600
  number17 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.deleteAtm
  localValue3 = "Organ Heist"
  localValue2(localValue3)
  localValue2 = workingValue
  if localValue2 then
    localValue2 = pairs
    localValue3 = workingValue.gunStores
    localValue4 = text11
    localValue3 = localValue3[localValue4]
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for workingValue11, number20 in localValue2, localValue3, localValue4, localValue5 do
      number21 = CMG
      number21 = number21.deleteGunStore
      text12 = number20[1]
      number21(text12)
    end
  end
  localValue2 = ""
  text11 = localValue2
  localValue2 = workingValue
  if localValue2 then
    localValue2 = workingValue.interiorId
    if localValue2 then
      localValue2 = UnpinInterior
      localValue3 = workingValue.interiorId
      localValue2(localValue3)
    end
  end
  localValue2 = nil
  workingValue = localValue2
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  localValue3 = true
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.setFriendlyFire
  localValue3 = true
  localValue2(localValue3)
  localValue2 = PrepareMusicEvent
  localValue3 = "BST_STOP"
  localValue2(localValue3)
  localValue2 = TriggerMusicEvent
  localValue3 = "BST_STOP"
  localValue2(localValue3)
  localValue2 = ExecuteCommand
  localValue3 = "storeallweapons"
  localValue2(localValue3)
  localValue2 = Wait
  localValue3 = 10000
  localValue2(localValue3)
  localValue2 = GetEntityHealth
  localValue3 = PlayerPedId
  localValue3, localValue4, localValue5, workingValue11, number20, number21, text12 = localValue3()
  -- Beginner: result below is health.
  localValue2 = localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12)
  if localValue2 <= 102 or localValue1 then
    localValue2 = TriggerEvent
    localValue3 = "193ee4e15e"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
    localValue2(localValue3)
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = DoScreenFadeOut
    localValue4 = 1000
    localValue3(localValue4)
    localValue3 = NetworkFadeOutEntity
    localValue4 = localValue2
    localValue5 = true
    workingValue11 = false
    localValue3(localValue4, localValue5, workingValue11)
    localValue3 = Wait
    localValue4 = 1000
    localValue3(localValue4)
    localValue3 = Citizen
    localValue3 = localValue3.CreateThread
    localValue4 = text6
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(localValue4)
    localValue3 = NetworkFadeInEntity
    localValue4 = localValue2
    localValue5 = false
    localValue3(localValue4, localValue5)
    localValue3 = DoScreenFadeIn
    localValue4 = 1000
    localValue3(localValue4)
  end
  localValue2 = cmgOperation4
  -- Beginner: Register a client-side event handler.
  localValue2()
  localValue2 = text5
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.setPlayerCanOpenLeaderboard
  localValue3 = false
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.clearLeaderboardData
  localValue2()
  localValue2 = Wait
  localValue3 = 1000
  localValue2(localValue3)
  localValue2 = ClearRelationshipBetweenGroups
  localValue3 = 5
  localValue4 = text2
  localValue5 = text
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = ClearRelationshipBetweenGroups
  localValue3 = 5
  localValue4 = text
  localValue5 = text2
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = SetPedRelationshipGroupHash
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = 1862763509
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "feee42063b".
eventHandler2(text7, cmgOperation5)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler2(localValue1, localValue2, localValue3, localValue4)
  local localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11
  localValue5 = ClearTimecycleModifier
  localValue5()
  localValue5 = {}
  workingValue11 = Scaleform
  number20 = "MP_CELEBRATION"
  workingValue11 = workingValue11(number20)
  localValue5.handle = workingValue11
  workingValue11 = Scaleform
  number20 = "MP_CELEBRATION_BG"
  workingValue11 = workingValue11(number20)
  localValue5.handle2 = workingValue11
  workingValue11 = Scaleform
  number20 = "MP_CELEBRATION_FG"
  workingValue11 = workingValue11(number20)
  localValue5.handle3 = workingValue11
  workingValue11 = pairs
  number20 = localValue5
  workingValue11, number20, number21, text12 = workingValue11(number20)
  for number22, number in workingValue11, number20, number21, text12 do
    number3 = number.RunFunction
    stateFlag = "CLEANUP"
    cmgOperation2 = {}
    number6 = "WINNER"
    cmgOperation2[1] = number6
    number3(stateFlag, cmgOperation2)
    number3 = number.RunFunction
    stateFlag = "CREATE_STAT_WALL"
    cmgOperation2 = {}
    number6 = "WINNER"
    stateFlag2 = "HUD_COLOUR_BLACK"
    stateFlag3 = "70.0"
    cmgOperation2[1] = number6
    cmgOperation2[2] = stateFlag2
    cmgOperation2[3] = stateFlag3
    number3(stateFlag, cmgOperation2)
    number3 = number.RunFunction
    stateFlag = "SET_PAUSE_DURATION"
    cmgOperation2 = {}

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local waitCall, playerPed
      waitCall = ScaleformMovieMethodAddParamFloat
      playerPed = 2.5
      waitCall(playerPed)
    end
    cmgOperation2[1] = number6
    number3(stateFlag, cmgOperation2)
    if 0 ~= localValue4 then
      number3 = number.RunFunction
      stateFlag = "ADD_CASH_TO_WALL"
      cmgOperation2 = {}
      number6 = "WINNER"
      stateFlag2 = localValue4
      stateFlag3 = true
      cmgOperation2[1] = number6
      cmgOperation2[2] = stateFlag2
      cmgOperation2[3] = stateFlag3
      number3(stateFlag, cmgOperation2)
    end
    number3 = number.RunFunction
    stateFlag = "ADD_WINNER_TO_WALL"
    cmgOperation2 = {}
    number6 = "WINNER"
    stateFlag2 = "CELEB_WINNER"
    stateFlag3 = localValue1
    stateFlag4 = ""
    stateFlag5 = 0
    stateFlag7 = false
    stateFlag10 = ""
    stateFlag11 = false
    cmgOperation2[1] = number6
    cmgOperation2[2] = stateFlag2
    cmgOperation2[3] = stateFlag3
    cmgOperation2[4] = stateFlag4
    cmgOperation2[5] = stateFlag5
    cmgOperation2[6] = stateFlag7
    cmgOperation2[7] = stateFlag10
    cmgOperation2[8] = stateFlag11
    number3(stateFlag, cmgOperation2)
    number3 = number.RunFunction
    stateFlag = "ADD_BACKGROUND_TO_WALL"
    cmgOperation2 = {}
    number6 = "WINNER"
    stateFlag2 = 75
    stateFlag3 = 0
    cmgOperation2[1] = number6
    cmgOperation2[2] = stateFlag2
    cmgOperation2[3] = stateFlag3
    number3(stateFlag, cmgOperation2)
    number3 = number.RunFunction
    stateFlag = "SHOW_STAT_WALL"
    cmgOperation2 = {}
    number6 = "WINNER"
    cmgOperation2[1] = number6
    number3(stateFlag, cmgOperation2)
  end
  workingValue11 = localValue5.handle
  number20 = localValue5.handle2
  number21 = localValue5.handle3
  return workingValue11, number20, number21
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local waitCall, playerPed, stateFlag14, number12, text9, stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22, number2
    waitCall = false
    playerPed = eventHandler2
    stateFlag14 = localValue1
    number12 = 2
    text9 = 100
    stateFlag17 = 250000
    playerPed, stateFlag14, number12 = playerPed(stateFlag14, number12, text9, stateFlag17)
    if not waitCall then
      waitCall = true
    end
    text9 = SetTimeout
    stateFlag17 = 10000

    -- === HELPER FUNCTION: waitCall2() ===
    function waitCall2()
      local localValue12, workingValue5
      localValue12 = false
      waitCall = localValue12
    end
    text9(stateFlag17, waitCall2)
    while waitCall do
      text9 = Wait
      stateFlag17 = 0
      text9(stateFlag17)
      text9 = HideHudAndRadarThisFrame
      text9()
      text9 = DrawScaleformMovieFullscreenMasked
      stateFlag17 = stateFlag14.Handle
      waitCall2 = number12.Handle
      stateFlag20 = 255
      stateFlag21 = 255
      stateFlag22 = 255
      number2 = 255
      text9(stateFlag17, waitCall2, stateFlag20, stateFlag21, stateFlag22, number2)
      text9 = playerPed.Render2D
      text9()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
cmgOperation5 = RegisterNetEvent
text8 = "b4412012ff"
-- Beginner: this function handles network event "b4412012ff".

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11
  localValue2 = Wait
  localValue3 = 10000
  localValue2(localValue3)
  localValue2 = text7
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.setFriendlyFire
  localValue4 = true
  localValue3(localValue4)
  localValue3 = DoScreenFadeOut
  localValue4 = 1000
  localValue3(localValue4)
  localValue3 = NetworkFadeOutEntity
  localValue4 = localValue2
  localValue5 = true
  workingValue11 = false
  localValue3(localValue4, localValue5, workingValue11)
  localValue3 = Wait
  localValue4 = 1000
  localValue3(localValue4)
  localValue3 = Citizen
  localValue3 = localValue3.CreateThread
  localValue4 = text6
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue3(localValue4)
  localValue3 = NetworkFadeInEntity
  localValue4 = localValue2
  localValue5 = false
  localValue3(localValue4, localValue5)
  localValue3 = DoScreenFadeIn
  localValue4 = 1000
  localValue3(localValue4)
  localValue3 = cmgOperation4
  -- Beginner: Register a client-side event handler.
  localValue3()
  localValue3 = text5
  localValue3()
  localValue3 = CMG
  localValue3 = localValue3.setPlayerCanOpenLeaderboard
  localValue4 = false
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.clearLeaderboardData
  localValue3()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b4412012ff".
cmgOperation5(text8, dataCollection5)
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = false
  stateFlag8 = localValue1
  localValue1 = false
  stateFlag6 = localValue1
  localValue1 = false
  stateFlag9 = localValue1
end
cmgOperation5.setDeathInOrganHeist = text8
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = stateFlag8
  return localValue1
end
cmgOperation5.inOrganHesit = text8
cmgOperation5 = RegisterNetEvent
text8 = "2981026492"
-- Beginner: this function handles network event "2981026492".

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.createGreenzone
    localValue3 = "organ"
    localValue4 = vector3
    localValue5 = 236.02685546875
    workingValue11 = -1373.7049560547
    number20 = 33.010623931885
    localValue4 = localValue4(localValue5, workingValue11, number20)
    localValue5 = 40.0
    workingValue11 = true
    localValue2(localValue3, localValue4, localValue5, workingValue11)
  else
    localValue2 = CMG
    localValue2 = localValue2.deleteGreenzone
    localValue3 = "organ"
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2981026492".
cmgOperation5(text8, dataCollection5)
cmgOperation5 = RegisterNetEvent
text8 = "7196c1daff"
-- Beginner: this function handles network event "7196c1daff".

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2) ===
function dataCollection5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22
  localValue3 = CMG
  localValue3 = localValue3.getLocalPlayerSrc
  localValue3 = localValue3()
  if localValue3 == localValue1 then
    number10 = localValue2
  end
  localValue3 = GetPlayerFromServerId
  localValue4 = localValue1
  -- Beginner: result below is playerIndex.
  localValue3 = localValue3(localValue4)
  if -1 == localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.addPlayerToLeaderboard
  localValue5 = {}
  workingValue11 = CMG
  workingValue11 = workingValue11.getPlayerName
  number20 = localValue3
  workingValue11 = workingValue11(number20)
  number20 = ""
  number21 = ""
  text12 = true
  number22 = 0
  localValue5.playerSrc = localValue1
  localValue5[1] = workingValue11
  localValue5[2] = number20
  localValue5[3] = number21
  localValue5[4] = text12
  localValue5[5] = number22
  localValue4(localValue5)
  localValue4 = CMG
  localValue4 = localValue4.updateScoreboard
  localValue5 = localValue1
  workingValue11 = 5
  number20 = localValue2
  localValue4(localValue5, workingValue11, number20)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7196c1daff".
cmgOperation5(text8, dataCollection5)
cmgOperation5 = 0
text8 = 0
dataCollection5 = {}
dataCollection6 = {}
stateFlag15 = false

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = IsNamedRendertargetRegistered
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = RegisterNamedRendertarget
    localValue4 = localValue1
    localValue5 = false
    localValue3(localValue4, localValue5)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = LinkNamedRendertarget
    localValue4 = localValue2
    localValue3(localValue4)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = GetNamedRendertargetRenderId
    localValue4 = localValue1
    return localValue3(localValue4)
  else
    localValue3 = 0
    return localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = cmgOperation.tvModelHash
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CreateObject
  localValue2 = cmgOperation.tvModelHash
  localValue3 = cmgOperation.tvPosition
  localValue3 = localValue3.x
  localValue4 = cmgOperation.tvPosition
  localValue4 = localValue4.y
  localValue5 = cmgOperation.tvPosition
  localValue5 = localValue5.z
  workingValue11 = false
  number20 = false
  number21 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21)
  cmgOperation5 = localValue1
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = cmgOperation.tvModelHash
  localValue1(localValue2)
  localValue1 = SetEntityHeading
  localValue2 = cmgOperation5
  localValue3 = cmgOperation.tvPosition
  localValue3 = localValue3.w
  -- Beginner: Change the direction an entity is facing.
  localValue1(localValue2, localValue3)
  localValue1 = SetEntityLodDist
  localValue2 = cmgOperation5
  localValue3 = 75
  localValue1(localValue2, localValue3)
  localValue1 = workingValue7
  localValue2 = "cmgtv9"
  localValue3 = cmgOperation.tvModelHash
  localValue1 = localValue1(localValue2, localValue3)
  text8 = localValue1
  localValue1 = TriggerServerEvent
  localValue2 = "c2fd3b9175"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c2fd3b9175".
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = cmgOperation5
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  cmgOperation5 = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  text8 = localValue1
end
dataCollection7 = {}
dataCollection8 = {}
cmgOperation6 = 255
dataCollection9 = 215
number14 = 0
dataCollection8[1] = cmgOperation6
dataCollection8[2] = dataCollection9
dataCollection8[3] = number14
cmgOperation6 = {}
dataCollection9 = 192
number14 = 192
number15 = 192
cmgOperation6[1] = dataCollection9
cmgOperation6[2] = number14
cmgOperation6[3] = number15
dataCollection9 = {}
number14 = 140
number15 = 120
number16 = 83
dataCollection9[1] = number14
dataCollection9[2] = number15
dataCollection9[3] = number16
number14 = {}
number15 = 140
number16 = 120
number18 = 83
number14[1] = number15
number14[2] = number16
number14[3] = number18
number15 = {}
number16 = 140
number18 = 120
number19 = 83
number15[1] = number16
number15[2] = number18
number15[3] = number19
dataCollection7[1] = dataCollection8
dataCollection7[2] = cmgOperation6
dataCollection7[3] = dataCollection9
dataCollection7[4] = number14
dataCollection7[5] = number15

-- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue1) ===
function dataCollection8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11
  localValue2 = localValue1.distance
  if localValue2 > 50.0 then
    return
  end
  localValue2 = SetTextRenderId
  localValue3 = text8
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = DrawAdvancedText
  localValue3 = 0.6
  localValue4 = 0.0
  localValue5 = 0.005
  workingValue11 = 0.0028
  number20 = 0.7
  number21 = stateFlag15
  if number21 then
    number21 = "Top Earnings"
    if number21 then
      goto continueAtStep27
    end
  end
  number21 = "Top Streaks"
  ::continueAtStep27::
  text12 = 248
  number22 = 246
  number = 240
  number3 = 200
  stateFlag = 4
  cmgOperation2 = 0
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.15
  localValue4 = 0.17
  localValue5 = 0.005
  workingValue11 = 0.0028
  number20 = 0.4
  number21 = "Name"
  text12 = 248
  number22 = 246
  number = 240
  number3 = 255
  stateFlag = 4
  cmgOperation2 = 1
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.5
  localValue4 = 0.17
  localValue5 = 0.005
  workingValue11 = 0.0028
  number20 = 0.4
  number21 = "Perm ID"
  text12 = 248
  number22 = 246
  number = 240
  number3 = 255
  stateFlag = 4
  cmgOperation2 = 1
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.9
  localValue4 = 0.17
  localValue5 = 0.005
  workingValue11 = 0.0028
  number20 = 0.4
  number21 = stateFlag15
  if number21 then
    number21 = "Amount"
    if number21 then
      goto continueAtStep75
    end
  end
  number21 = "Days"
  ::continueAtStep75::
  text12 = 248
  number22 = 246
  number = 240
  number3 = 255
  stateFlag = 4
  cmgOperation2 = 1
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2)
  localValue2 = DrawRect
  localValue3 = 0.5
  localValue4 = 0.26
  localValue5 = 0.95
  workingValue11 = 0.005
  number20 = 248
  number21 = 246
  text12 = 240
  number22 = 255
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22)
  localValue2 = pairs
  localValue3 = stateFlag15
  if localValue3 then
    localValue3 = dataCollection6
    if localValue3 then
      goto continueAtStep100
    end
  end
  localValue3 = dataCollection5
  ::continueAtStep100::
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for workingValue11, number20 in localValue2, localValue3, localValue4, localValue5 do
    number21 = dataCollection7
    number21 = number21[workingValue11]
    if number21 and number20 then
      text12 = DrawAdvancedText
      number22 = 0.15
      number = 0.07 * workingValue11
      number = 0.205 + number
      number3 = 0.005
      stateFlag = 0.0028
      cmgOperation2 = 0.34
      number6 = number20[1]
      stateFlag2 = number21[1]
      stateFlag3 = number21[2]
      stateFlag4 = number21[3]
      stateFlag5 = 255
      stateFlag7 = 4
      stateFlag10 = 1
      text12(number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10)
      text12 = DrawAdvancedText
      number22 = 0.5
      number = 0.07 * workingValue11
      number = 0.205 + number
      number3 = 0.005
      stateFlag = 0.0028
      cmgOperation2 = 0.35
      number6 = number20[2]
      stateFlag2 = number21[1]
      stateFlag3 = number21[2]
      stateFlag4 = number21[3]
      stateFlag5 = 255
      stateFlag7 = 4
      stateFlag10 = 1
      text12(number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10)
      text12 = stateFlag15
      if text12 then
        text12 = "\194\163"
        number22 = getMoneyStringFormatted
        number = number20[3]
        number22 = number22(number)
        text12 = text12 .. number22
        if text12 then
          goto continueAtStep153
        end
      end
      text12 = number20[3]
      ::continueAtStep153::
      number22 = DrawAdvancedText
      number = 0.9
      number3 = 0.07 * workingValue11
      number3 = 0.205 + number3
      stateFlag = 0.005
      cmgOperation2 = 0.0028
      number6 = 0.35
      stateFlag2 = text12
      stateFlag3 = number21[1]
      stateFlag4 = number21[2]
      stateFlag5 = number21[3]
      stateFlag7 = 255
      stateFlag10 = 4
      stateFlag11 = 1
      number22(number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11)
    end
  end
  localValue2 = SetTextRenderId
  localValue3 = GetDefaultScriptRendertargetRenderId
  localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11 = localValue3()
  localValue2(localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2, number6, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag7, stateFlag10, stateFlag11)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = false
  localValue2(localValue3)
  localValue2 = localValue1.distance
  localValue3 = 2.5
  if localValue2 < localValue3 then
    localValue2 = drawNativeNotification
    localValue3 = "Press ~INPUT_CONTEXT~ to switch to "
    localValue4 = stateFlag15
    if localValue4 then
      localValue4 = "streaks"
      if localValue4 then
        goto continueAtStep193
      end
    end
    localValue4 = "earnings"
    ::continueAtStep193::
    localValue3 = localValue3 .. localValue4
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue2(localValue3)
    localValue2 = IsControlJustPressed
    localValue3 = 0
    localValue4 = 51
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = TriggerServerEvent
      localValue3 = "e680167e6a"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e680167e6a".
      localValue2(localValue3)
    end
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createArea
dataCollection9 = "organheist_tv"
number14 = cmgOperation.tvPosition
number14 = number14.xyz
number15 = 100.0
number16 = 500.0
number18 = workingValue8
number19 = workingValue9
workingValue10 = dataCollection8
dataCollection10 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation6(dataCollection9, number14, number15, number16, number18, number19, workingValue10, dataCollection10)
cmgOperation6 = AddEventHandler
dataCollection9 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = cmgOperation5
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = cmgOperation5
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation6(dataCollection9, number14)
cmgOperation6 = RegisterNetEvent
dataCollection9 = "b606d9a2c6"
-- Beginner: this function handles network event "b606d9a2c6".

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1, localValue2, localValue3) ===
function number14(localValue1, localValue2, localValue3)
  dataCollection5 = localValue1
  dataCollection6 = localValue2
  stateFlag15 = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b606d9a2c6".
cmgOperation6(dataCollection9, number14)
cmgOperation6 = RegisterNetEvent
dataCollection9 = "4d03144adf"
-- Beginner: this function handles network event "4d03144adf".

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2
  stateFlag15 = localValue1
end
cmgOperation6(dataCollection9, number14)
cmgOperation6 = CMG
-- Beginner: this function handles network event "4d03144adf".

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue1) ===
function dataCollection9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue11, number20, number21, text12, number22, number, number3, stateFlag, cmgOperation2
  localValue2 = pairs
  localValue3 = cmgOperation.locations
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for workingValue11, number20 in localValue2, localValue3, localValue4, localValue5 do
    number21 = pairs
    text12 = number20.sides
    number21, text12, number22, number = number21(text12)
    for number3, stateFlag in number21, text12, number22, number do
      cmgOperation2 = stateFlag.interiorId
      if cmgOperation2 then
        cmgOperation2 = stateFlag.interiorId
        if cmgOperation2 == localValue1 then
          cmgOperation2 = stateFlag.roomKey
          return cmgOperation2
        end
      end
    end
  end
  localValue2 = nil
  return localValue2
end
cmgOperation6.getOrganRoomKeyFromInteriorId = dataCollection9
