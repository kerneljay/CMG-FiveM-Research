--[[
    LEVEL 1 BEGINNER GUIDE — Stretcher
    =======================================

    File: cmg/prod/client/nhs/cl_stretcher.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Stretcher feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
      * Background threads: 0
      * Always-running loops: 3
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
local cmgOperation, stateFlag17, number9, workingValue10, number11, workingValue11, workingValue12, workingValue13, workingValue14, backgroundThread, workingValue, workingValue2, workingValue3, cmgOperation2, number2, text, workingValue5, stateFlag11
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag17 = "cfg/cfg_stretcher"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag17)
stateFlag17 = false
number9 = 0
workingValue10 = nil
number11 = 1
workingValue11 = nil

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgOperation3 = cmgOperation3()
  number10 = 0
  text3 = localValue1
  iterator = pairs
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.getAllVehicles
  cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4 = cmgOperation4()
  iterator, cmgOperation4, playerPed2, stateFlag28 = iterator(cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4)
  for stateFlag29, stateFlag in iterator, cmgOperation4, playerPed2, stateFlag28 do
    modelHash = GetEntityModel
    coords = stateFlag
    -- Beginner: result below is modelHash.
    modelHash = modelHash(coords)
    coords = localValue2[modelHash]
    if coords then
      coords = GetEntityCoords
      workingValue4 = stateFlag
      -- Beginner: result below is entityCoords.
      coords = coords(workingValue4)
      workingValue4 = cmgOperation3 - coords
      workingValue4 = #workingValue4
      if text3 > workingValue4 then
        text3 = workingValue4
        number10 = stateFlag
      end
    end
  end
  return number10
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, cmgOperation3, number10, text3, iterator
  localValue1 = IsControlJustReleased
  localValue2 = 0
  cmgOperation3 = 299
  localValue1 = localValue1(localValue2, cmgOperation3)
  if localValue1 then
    localValue1 = NetworkHasControlOfEntity
    localValue2 = number9
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = TriggerServerEvent
      localValue2 = "5afe1684a7"
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.getNetId
      number10 = number9
      text3 = "Stretchers"
      cmgOperation3, number10, text3, iterator = cmgOperation3(number10, text3)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5afe1684a7".
      localValue1(localValue2, cmgOperation3, number10, text3, iterator)
    else
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "nhs.onduty.permission"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = number9
        if 0 ~= localValue1 then
          localValue1 = GetVehicleDoorAngleRatio
          localValue2 = number9
          cmgOperation3 = 4
          localValue1 = localValue1(localValue2, cmgOperation3)
          localValue1 = 0 ~= localValue1
          if localValue1 then
            localValue2 = SetVehicleDoorShut
            cmgOperation3 = number9
            number10 = 3
            text3 = false
            localValue2(cmgOperation3, number10, text3)
            localValue2 = Wait
            cmgOperation3 = 500
            localValue2(cmgOperation3)
            localValue2 = SetVehicleDoorShut
            cmgOperation3 = number9
            number10 = 4
            text3 = false
            localValue2(cmgOperation3, number10, text3)
            localValue2 = tCMG
            localValue2 = localValue2.notify
            cmgOperation3 = "Door closed."
            -- Beginner: Show a notification to the player.
            localValue2(cmgOperation3)
          else
            localValue2 = SetVehicleDoorOpen
            cmgOperation3 = number9
            number10 = 4
            text3 = false
            iterator = false
            localValue2(cmgOperation3, number10, text3, iterator)
            localValue2 = Wait
            cmgOperation3 = 500
            localValue2(cmgOperation3)
            localValue2 = SetVehicleDoorOpen
            cmgOperation3 = number9
            number10 = 3
            text3 = false
            iterator = false
            localValue2(cmgOperation3, number10, text3, iterator)
            localValue2 = tCMG
            localValue2 = localValue2.notify
            cmgOperation3 = "Door opened."
            -- Beginner: Show a notification to the player.
            localValue2(cmgOperation3)
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, cmgOperation3, number10, text3, iterator
  localValue2 = BeginTextCommandDisplayHelp
  cmgOperation3 = "STRING"
  localValue2(cmgOperation3)
  localValue2 = AddTextEntry
  cmgOperation3 = "STRETCHER_HELP_TEXT"
  number10 = localValue1
  localValue2(cmgOperation3, number10)
  localValue2 = AddTextComponentSubstringTextLabel
  cmgOperation3 = "STRETCHER_HELP_TEXT"
  localValue2(cmgOperation3)
  localValue2 = EndTextCommandDisplayHelp
  cmgOperation3 = 0
  number10 = false
  text3 = false
  iterator = 0
  localValue2(cmgOperation3, number10, text3, iterator)
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, cmgOperation3
  while true do
    localValue1 = Wait
    localValue2 = 750
    localValue1(localValue2)
    localValue1 = workingValue12
    localValue2 = 2.0
    cmgOperation3 = cmgOperation.stretcherModels
    localValue1 = localValue1(localValue2, cmgOperation3)
    workingValue10 = localValue1
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash
  localValue2 = GetEntityAttachedTo
  cmgOperation3 = localValue1
  localValue2 = localValue2(cmgOperation3)
  cmgOperation3 = DetachEntity
  number10 = localValue1
  text3 = false
  iterator = false
  cmgOperation3(number10, text3, iterator)
  cmgOperation3 = false
  stateFlag17 = cmgOperation3
  cmgOperation3 = 1
  number11 = cmgOperation3
  if localValue2 and 0 ~= localValue2 then
    cmgOperation3 = SetVehicleEngineOn
    number10 = localValue2
    text3 = false
    iterator = true
    cmgOperation4 = true
    cmgOperation3(number10, text3, iterator, cmgOperation4)
    cmgOperation3 = GetEntityCoords
    number10 = localValue2
    -- Beginner: result below is entityCoords.
    cmgOperation3 = cmgOperation3(number10)
    number10 = DecorGetInt
    text3 = localValue2
    iterator = "58fe205294"
    number10 = number10(text3, iterator)
    if 0 ~= number10 then
      number10 = CMG
      number10 = number10.getObjectId
      text3 = DecorGetInt
      iterator = localValue2
      cmgOperation4 = "58fe205294"
      text3 = text3(iterator, cmgOperation4)
      iterator = "exitStretcher"
      number10 = number10(text3, iterator)
      if number10 and 0 ~= number10 then
        text3 = GetWorldPositionOfEntityBone
        iterator = number10
        cmgOperation4 = GetEntityBoneIndexByName
        playerPed2 = number10
        stateFlag28 = "bonnet"
        cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash = cmgOperation4(playerPed2, stateFlag28)
        text3 = text3(iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash)
        iterator = vector3
        cmgOperation4 = 0.0
        playerPed2 = -2.0
        stateFlag28 = 0.0
        iterator = iterator(cmgOperation4, playerPed2, stateFlag28)
        cmgOperation3 = text3 + iterator
      end
    end
    number10 = SetEntityCoords
    text3 = localValue1
    iterator = cmgOperation3.x
    cmgOperation4 = cmgOperation3.y
    playerPed2 = cmgOperation3.z
    stateFlag28 = false
    stateFlag29 = false
    stateFlag = false
    modelHash = false
    -- Beginner: Move/teleport an entity to new coordinates.
    number10(text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash)
    number10 = PlaceObjectOnGroundProperly
    text3 = localValue1
    number10(text3)
  end
  cmgOperation3 = ClearPedTasksImmediately
  number10 = localValue1
  cmgOperation3(number10)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29
  localValue2 = pairs
  cmgOperation3 = GetActivePlayers
  cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29 = cmgOperation3()
  localValue2, cmgOperation3, number10, text3 = localValue2(cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29)
  for iterator, cmgOperation4 in localValue2, cmgOperation3, number10, text3 do
    playerPed2 = GetPlayerPed
    stateFlag28 = cmgOperation4
    -- Beginner: result below is playerPed.
    playerPed2 = playerPed2(stateFlag28)
    stateFlag28 = GetEntityAttachedTo
    stateFlag29 = playerPed2
    stateFlag28 = stateFlag28(stateFlag29)
    if stateFlag28 == localValue1 then
      stateFlag28 = true
      return stateFlag28
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15
  cmgOperation3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  number10 = workingValue
  text3 = localValue1
  number10 = number10(text3)
  if number10 then
    number10 = stateFlag17
    if not number10 then
      goto continueAtStep81
    end
  end
  number10 = true
  stateFlag17 = number10
  number10 = SetVehicleEngineOn
  text3 = localValue1
  iterator = true
  cmgOperation4 = true
  playerPed2 = true
  number10(text3, iterator, cmgOperation4, playerPed2)
  if localValue2 then
    number11 = localValue2
  end
  number10 = cmgOperation.positions
  text3 = number11
  number10 = number10[text3]
  text3 = CMG
  text3 = text3.loadAnimDict
  iterator = number10.animDict
  -- Beginner: Load a GTA animation dictionary before using it.
  text3(iterator)
  text3 = DetachEntity
  iterator = cmgOperation3
  cmgOperation4 = false
  playerPed2 = false
  text3(iterator, cmgOperation4, playerPed2)
  text3 = AttachEntityToEntity
  iterator = cmgOperation3
  cmgOperation4 = localValue1
  playerPed2 = cmgOperation3
  stateFlag28 = number10.offset
  stateFlag28 = stateFlag28.x
  stateFlag29 = number10.offset
  stateFlag29 = stateFlag29.y
  stateFlag = number10.offset
  stateFlag = stateFlag.z
  modelHash = 0.0
  coords = 0.0
  workingValue4 = number10.offset
  workingValue4 = workingValue4.heading
  stateFlag5 = false
  stateFlag7 = false
  stateFlag9 = false
  stateFlag12 = false
  stateFlag14 = 0
  stateFlag15 = false
  -- Beginner: Attach one entity to another entity.
  text3(iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15)
  text3 = TaskPlayAnim
  iterator = cmgOperation3
  cmgOperation4 = number10.animDict
  playerPed2 = number10.animName
  stateFlag28 = 8.0
  stateFlag29 = 8.0
  stateFlag = -1
  modelHash = 1
  coords = 0
  workingValue4 = false
  stateFlag5 = false
  stateFlag7 = false
  -- Beginner: Play an animation on a ped.
  text3(iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7)
  text3 = RemoveAnimDict
  iterator = number10.animDict
  text3(iterator)
  text3 = number11
  if 3 == text3 then
    text3 = 1
    number11 = text3
  else
    text3 = number11
    text3 = text3 + 1
    number11 = text3
  end
  ::continueAtStep81::
end
workingValue3 = DecorRegister
cmgOperation2 = "ddf749d1be"
number2 = 2
workingValue3(cmgOperation2, number2)
workingValue3 = DecorRegister
cmgOperation2 = "58fe205294"
number2 = 3
workingValue3(cmgOperation2, number2)

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = stateFlag17
  if localValue2 then
    localValue2 = DisableControlAction
    cmgOperation3 = 0
    number10 = 24
    text3 = true
    localValue2(cmgOperation3, number10, text3)
    localValue2 = DisableControlAction
    cmgOperation3 = 0
    number10 = 25
    text3 = true
    localValue2(cmgOperation3, number10, text3)
    localValue2 = GetEntityAttachedTo
    cmgOperation3 = localValue1
    localValue2 = localValue2(cmgOperation3)
    if 0 == localValue2 then
      localValue2 = backgroundThread
      cmgOperation3 = localValue1
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue2(cmgOperation3)
    else
      localValue2 = workingValue14
      cmgOperation3 = "~INPUT_FRONTEND_RDOWN~ Change position  ~INPUT_CELLPHONE_CANCEL~ Get up"
      localValue2(cmgOperation3)
      localValue2 = IsControlJustReleased
      cmgOperation3 = 0
      number10 = 202
      localValue2 = localValue2(cmgOperation3, number10)
      if localValue2 then
        localValue2 = backgroundThread
        cmgOperation3 = localValue1
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        localValue2(cmgOperation3)
      end
    end
  end
  localValue2 = workingValue10
  if nil ~= localValue2 then
    localValue2 = workingValue10
    if 0 ~= localValue2 then
      localValue2 = DecorGetInt
      cmgOperation3 = workingValue10
      number10 = "58fe205294"
      localValue2 = localValue2(cmgOperation3, number10)
      if 0 ~= localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.getObjectId
        cmgOperation3 = DecorGetInt
        number10 = workingValue10
        text3 = "58fe205294"
        cmgOperation3 = cmgOperation3(number10, text3)
        number10 = "Stretcher tick"
        localValue2 = localValue2(cmgOperation3, number10)
        if not localValue2 then
          localValue2 = 0
        end
        number9 = localValue2
      else
        localValue2 = workingValue12
        cmgOperation3 = 15.0
        number10 = cmgOperation.ambulanceModels
        localValue2 = localValue2(cmgOperation3, number10)
        number9 = localValue2
      end
      localValue2 = GetEntityCoords
      cmgOperation3 = workingValue10
      -- Beginner: result below is entityCoords.
      localValue2 = localValue2(cmgOperation3)
      cmgOperation3 = stateFlag17
      if not cmgOperation3 then
        cmgOperation3 = IsEntityPlayingAnim
        number10 = localValue1
        text3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgOperation4 = 3
        cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4)
        if not cmgOperation3 then
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgOperation3 = cmgOperation3()
          if 0 == cmgOperation3 then
            cmgOperation3 = true
            number10 = DecorGetInt
            text3 = workingValue10
            iterator = "58fe205294"
            number10 = number10(text3, iterator)
            if 0 ~= number10 then
              number10 = number9
              cmgOperation3 = 0 ~= number10
            end
            if cmgOperation3 then
              number10 = workingValue14
              text3 = "~INPUT_COVER~ Push  ~INPUT_FRONTEND_RDOWN~ Use"
              number10(text3)
            end
          end
        end
      end
      cmgOperation3 = IsEntityPlayingAnim
      number10 = localValue1
      text3 = "anim@heists@box_carry@"
      iterator = "idle"
      cmgOperation4 = 3
      cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4)
      if cmgOperation3 then
        cmgOperation3 = number9
        if 0 == cmgOperation3 then
          cmgOperation3 = -1
          number10 = 5.0
          text3 = pairs
          iterator = GetActivePlayers
          iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = iterator()
          text3, iterator, cmgOperation4, playerPed2 = text3(iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
          for stateFlag28, stateFlag29 in text3, iterator, cmgOperation4, playerPed2 do
            stateFlag = GetPlayerPed
            modelHash = stateFlag29
            -- Beginner: result below is playerPed.
            stateFlag = stateFlag(modelHash)
            if 0 ~= stateFlag then
              modelHash = GetEntityHealth
              coords = stateFlag
              -- Beginner: result below is health.
              modelHash = modelHash(coords)
              if modelHash >= 100 and modelHash <= 102 then
                coords = GetEntityAttachedTo
                workingValue4 = stateFlag
                coords = coords(workingValue4)
                if 0 == coords then
                  coords = GetEntityCoords
                  workingValue4 = stateFlag
                  stateFlag5 = true
                  -- Beginner: result below is entityCoords.
                  coords = coords(workingValue4, stateFlag5)
                  coords = coords - localValue2
                  coords = #coords
                  if number10 > coords then
                    cmgOperation3 = stateFlag29
                    number10 = coords
                  end
                end
              end
            end
          end
          text3 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop pushing"
          if -1 ~= cmgOperation3 then
            iterator = CMG
            iterator = iterator.hasClientPermission
            cmgOperation4 = "nhs.onduty.permission"
            iterator = iterator(cmgOperation4)
            if iterator then
              text3 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop  ~INPUT_CELLPHONE_CAMERA_GRID~ Place player"
              iterator = IsControlJustPressed
              cmgOperation4 = 0
              playerPed2 = 183
              iterator = iterator(cmgOperation4, playerPed2)
              if iterator then
                iterator = GetPlayerServerId
                cmgOperation4 = cmgOperation3
                -- Beginner: result below is serverId.
                iterator = iterator(cmgOperation4)
                cmgOperation4 = NetworkGetNetworkIdFromEntity
                playerPed2 = workingValue10
                cmgOperation4 = cmgOperation4(playerPed2)
                if iterator > 0 and 0 ~= cmgOperation4 then
                  playerPed2 = TriggerServerEvent
                  stateFlag28 = "2d2aca0333"
                  stateFlag29 = iterator
                  stateFlag = cmgOperation4
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d2aca0333".
                  playerPed2(stateFlag28, stateFlag29, stateFlag)
                end
              end
            end
          end
          iterator = workingValue14
          cmgOperation4 = text3
          iterator(cmgOperation4)
        end
      end
      cmgOperation3 = number9
      if 0 ~= cmgOperation3 then
        cmgOperation3 = DecorGetBool
        number10 = number9
        text3 = "ddf749d1be"
        cmgOperation3 = cmgOperation3(number10, text3)
        if cmgOperation3 then
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.hasClientPermission
          number10 = "nhs.onduty.permission"
          cmgOperation3 = cmgOperation3(number10)
          if cmgOperation3 then
            cmgOperation3 = IsPedInVehicle
            number10 = localValue1
            text3 = number9
            iterator = false
            cmgOperation3 = cmgOperation3(number10, text3, iterator)
            if not cmgOperation3 then
              cmgOperation3 = stateFlag17
              if not cmgOperation3 then
                cmgOperation3 = GetWorldPositionOfEntityBone
                number10 = number9
                text3 = GetEntityBoneIndexByName
                iterator = number9
                cmgOperation4 = "bonnet"
                text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = text3(iterator, cmgOperation4)
                cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                number10 = DrawMarker
                text3 = 1
                iterator = cmgOperation3.x
                cmgOperation4 = cmgOperation3.y
                playerPed2 = cmgOperation3.z
                playerPed2 = playerPed2 - 1.75
                stateFlag28 = 0.0
                stateFlag29 = 0.0
                stateFlag = 0.0
                modelHash = 0
                coords = 0.0
                workingValue4 = 0.0
                stateFlag5 = 1.5
                stateFlag7 = 1.5
                stateFlag9 = 1.5
                stateFlag12 = 0
                stateFlag14 = 48
                stateFlag15 = 135
                stateFlag18 = 235
                stateFlag19 = false
                stateFlag20 = true
                number7 = 2
                stateFlag22 = false
                workingValue6 = nil
                workingValue7 = nil
                stateFlag25 = false
                number10(text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                number10 = workingValue13
                number10()
                number10 = GetVehicleDoorAngleRatio
                text3 = number9
                iterator = 4
                number10 = number10(text3, iterator)
                number10 = 0 ~= number10
                if number10 then
                  text3 = workingValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  text3(iterator)
                  text3 = IsControlJustReleased
                  iterator = 0
                  cmgOperation4 = 300
                  text3 = text3(iterator, cmgOperation4)
                  if text3 then
                    text3 = CMG
                    text3 = text3.getNetId
                    iterator = number9
                    cmgOperation4 = "Stretchers"
                    text3 = text3(iterator, cmgOperation4)
                    iterator = pairs
                    cmgOperation4 = CMG
                    cmgOperation4 = cmgOperation4.getAllVehicles
                    cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = cmgOperation4()
                    iterator, cmgOperation4, playerPed2, stateFlag28 = iterator(cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                    for stateFlag29, stateFlag in iterator, cmgOperation4, playerPed2, stateFlag28 do
                      modelHash = cmgOperation.stretcherModels
                      coords = GetEntityModel
                      workingValue4 = stateFlag
                      -- Beginner: result below is modelHash.
                      coords = coords(workingValue4)
                      modelHash = modelHash[coords]
                      if modelHash then
                        modelHash = DecorGetInt
                        coords = stateFlag
                        workingValue4 = "58fe205294"
                        modelHash = modelHash(coords, workingValue4)
                        if modelHash == text3 then
                          modelHash = DetachEntity
                          coords = stateFlag
                          workingValue4 = true
                          stateFlag5 = false
                          modelHash(coords, workingValue4, stateFlag5)
                          modelHash = FreezeEntityPosition
                          coords = stateFlag
                          workingValue4 = false
                          -- Beginner: Freeze or unfreeze an entity in place.
                          modelHash(coords, workingValue4)
                          modelHash = vector3
                          coords = 0.0
                          workingValue4 = -2.0
                          stateFlag5 = 0.0
                          modelHash = modelHash(coords, workingValue4, stateFlag5)
                          modelHash = cmgOperation3 + modelHash
                          coords = SetEntityCoords
                          workingValue4 = stateFlag
                          stateFlag5 = modelHash.x
                          stateFlag7 = modelHash.y
                          stateFlag9 = modelHash.z
                          stateFlag12 = false
                          stateFlag14 = false
                          stateFlag15 = false
                          stateFlag18 = false
                          -- Beginner: Move/teleport an entity to new coordinates.
                          coords(workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18)
                          coords = SetVehicleOnGroundProperly
                          workingValue4 = stateFlag
                          coords(workingValue4)
                          coords = SetVehicleExtra
                          workingValue4 = stateFlag
                          stateFlag5 = 1
                          stateFlag7 = true
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = SetVehicleExtra
                          workingValue4 = stateFlag
                          stateFlag5 = 2
                          stateFlag7 = false
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = DecorSetInt
                          workingValue4 = stateFlag
                          stateFlag5 = "58fe205294"
                          stateFlag7 = 0
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = NetworkHasControlOfEntity
                          workingValue4 = number9
                          coords = coords(workingValue4)
                          if coords then
                            coords = DecorSetBool
                            workingValue4 = number9
                            stateFlag5 = "ddf749d1be"
                            stateFlag7 = false
                            coords(workingValue4, stateFlag5, stateFlag7)
                          else
                            coords = TriggerServerEvent
                            workingValue4 = "c15aeb9b9f"
                            stateFlag5 = CMG
                            stateFlag5 = stateFlag5.getNetId
                            stateFlag7 = number9
                            stateFlag9 = "Stretcher"
                            stateFlag5 = stateFlag5(stateFlag7, stateFlag9)
                            stateFlag7 = false
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                            coords(workingValue4, stateFlag5, stateFlag7)
                          end
                          coords = tCMG
                          coords = coords.notify
                          workingValue4 = "Stretcher taken out."
                          -- Beginner: Show a notification to the player.
                          coords(workingValue4)
                          break
                        end
                      end
                    end
                  end
                else
                  text3 = workingValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Open/close rear door"
                  text3(iterator)
                end
              end
            end
          end
        end
      end
      cmgOperation3 = IsControlJustReleased
      number10 = 0
      text3 = 44
      cmgOperation3 = cmgOperation3(number10, text3)
      if cmgOperation3 then
        cmgOperation3 = IsEntityPlayingAnim
        number10 = localValue1
        text3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgOperation4 = 3
        cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4)
        if not cmgOperation3 then
          cmgOperation3 = stateFlag17
          if not cmgOperation3 then
            cmgOperation3 = DecorGetInt
            number10 = workingValue10
            text3 = "58fe205294"
            cmgOperation3 = cmgOperation3(number10, text3)
            if 0 ~= cmgOperation3 then
              cmgOperation3 = number9
              if nil == cmgOperation3 then
                cmgOperation3 = 0
              end
              if 0 ~= cmgOperation3 then
                number10 = GetVehicleDoorAngleRatio
                text3 = cmgOperation3
                iterator = 4
                number10 = number10(text3, iterator)
                if 0 == number10 then
                  number10 = IsThisModelAHeli
                  text3 = GetEntityModel
                  iterator = cmgOperation3
                  text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = text3(iterator)
                  number10 = number10(text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                end
                if number10 then
                  number10 = workingValue11
                  text3 = localValue1
                  iterator = workingValue10
                  number10(text3, iterator)
                end
              end
            else
              cmgOperation3 = workingValue11
              number10 = localValue1
              text3 = workingValue10
              cmgOperation3(number10, text3)
            end
          end
        end
      end
      cmgOperation3 = number9
      if 0 ~= cmgOperation3 then
        cmgOperation3 = DecorGetBool
        number10 = number9
        text3 = "ddf749d1be"
        cmgOperation3 = cmgOperation3(number10, text3)
        if not cmgOperation3 then
          cmgOperation3 = IsEntityPlayingAnim
          number10 = localValue1
          text3 = "anim@heists@box_carry@"
          iterator = "idle"
          cmgOperation4 = 3
          cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4)
          if cmgOperation3 then
            cmgOperation3 = IsPedInVehicle
            number10 = localValue1
            text3 = number9
            iterator = false
            cmgOperation3 = cmgOperation3(number10, text3, iterator)
            if not cmgOperation3 then
              cmgOperation3 = GetWorldPositionOfEntityBone
              number10 = number9
              text3 = GetEntityBoneIndexByName
              iterator = number9
              cmgOperation4 = "bonnet"
              text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = text3(iterator, cmgOperation4)
              cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
              number10 = DrawMarker
              text3 = 1
              iterator = cmgOperation3.x
              cmgOperation4 = cmgOperation3.y
              playerPed2 = cmgOperation3.z
              playerPed2 = playerPed2 - 1.75
              stateFlag28 = 0.0
              stateFlag29 = 0.0
              stateFlag = 0.0
              modelHash = 0
              coords = 0.0
              workingValue4 = 0.0
              stateFlag5 = 1.5
              stateFlag7 = 1.5
              stateFlag9 = 1.5
              stateFlag12 = 0
              stateFlag14 = 48
              stateFlag15 = 135
              stateFlag18 = 235
              stateFlag19 = false
              stateFlag20 = true
              number7 = 2
              stateFlag22 = false
              workingValue6 = nil
              workingValue7 = nil
              stateFlag25 = false
              number10(text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
              number10 = workingValue13
              number10()
            end
          end
        end
      end
      cmgOperation3 = IsControlJustReleased
      number10 = 0
      text3 = 191
      cmgOperation3 = cmgOperation3(number10, text3)
      if cmgOperation3 then
        cmgOperation3 = IsEntityPlayingAnim
        number10 = localValue1
        text3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgOperation4 = 3
        cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4)
        if not cmgOperation3 then
          cmgOperation3 = workingValue2
          number10 = workingValue10
          cmgOperation3(number10)
        end
      end
    end
  end
  localValue2 = stateFlag17
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    if 0 == localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      cmgOperation3 = "nhs.onduty.permission"
      localValue2 = localValue2(cmgOperation3)
      if localValue2 then
        localValue2 = workingValue12
        cmgOperation3 = 5.0
        number10 = cmgOperation.ambulanceModels
        localValue2 = localValue2(cmgOperation3, number10)
        if localValue2 and 0 ~= localValue2 then
          cmgOperation3 = DecorGetBool
          number10 = localValue2
          text3 = "ddf749d1be"
          cmgOperation3 = cmgOperation3(number10, text3)
          if cmgOperation3 then
            cmgOperation3 = IsPedInVehicle
            number10 = localValue1
            text3 = localValue2
            iterator = false
            cmgOperation3 = cmgOperation3(number10, text3, iterator)
            if not cmgOperation3 then
              cmgOperation3 = GetWorldPositionOfEntityBone
              number10 = localValue2
              text3 = GetEntityBoneIndexByName
              iterator = localValue2
              cmgOperation4 = "bonnet"
              text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = text3(iterator, cmgOperation4)
              cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
              number10 = GetEntityCoords
              text3 = localValue1
              -- Beginner: result below is entityCoords.
              number10 = number10(text3)
              number10 = number10 - cmgOperation3
              number10 = #number10
              if number10 < 4.0 then
                number10 = DrawMarker
                text3 = 1
                iterator = cmgOperation3.x
                cmgOperation4 = cmgOperation3.y
                playerPed2 = cmgOperation3.z
                playerPed2 = playerPed2 - 1.75
                stateFlag28 = 0.0
                stateFlag29 = 0.0
                stateFlag = 0.0
                modelHash = 0
                coords = 0.0
                workingValue4 = 0.0
                stateFlag5 = 1.5
                stateFlag7 = 1.5
                stateFlag9 = 1.5
                stateFlag12 = 0
                stateFlag14 = 48
                stateFlag15 = 135
                stateFlag18 = 235
                stateFlag19 = false
                stateFlag20 = true
                number7 = 2
                stateFlag22 = false
                workingValue6 = nil
                workingValue7 = nil
                stateFlag25 = false
                number10(text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                number9 = localValue2
                number10 = workingValue13
                number10()
                number10 = GetVehicleDoorAngleRatio
                text3 = localValue2
                iterator = 4
                number10 = number10(text3, iterator)
                number10 = 0 ~= number10
                if number10 then
                  text3 = workingValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  text3(iterator)
                  text3 = IsControlJustReleased
                  iterator = 0
                  cmgOperation4 = 300
                  text3 = text3(iterator, cmgOperation4)
                  if text3 then
                    text3 = CMG
                    text3 = text3.getNetId
                    iterator = localValue2
                    cmgOperation4 = "Stretchers"
                    text3 = text3(iterator, cmgOperation4)
                    iterator = pairs
                    cmgOperation4 = CMG
                    cmgOperation4 = cmgOperation4.getAllVehicles
                    cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25 = cmgOperation4()
                    iterator, cmgOperation4, playerPed2, stateFlag28 = iterator(cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18, stateFlag19, stateFlag20, number7, stateFlag22, workingValue6, workingValue7, stateFlag25)
                    for stateFlag29, stateFlag in iterator, cmgOperation4, playerPed2, stateFlag28 do
                      modelHash = cmgOperation.stretcherModels
                      coords = GetEntityModel
                      workingValue4 = stateFlag
                      -- Beginner: result below is modelHash.
                      coords = coords(workingValue4)
                      modelHash = modelHash[coords]
                      if modelHash then
                        modelHash = DecorGetInt
                        coords = stateFlag
                        workingValue4 = "58fe205294"
                        modelHash = modelHash(coords, workingValue4)
                        if modelHash == text3 then
                          modelHash = DetachEntity
                          coords = stateFlag
                          workingValue4 = true
                          stateFlag5 = false
                          modelHash(coords, workingValue4, stateFlag5)
                          modelHash = FreezeEntityPosition
                          coords = stateFlag
                          workingValue4 = false
                          -- Beginner: Freeze or unfreeze an entity in place.
                          modelHash(coords, workingValue4)
                          modelHash = vector3
                          coords = 0.0
                          workingValue4 = -2.0
                          stateFlag5 = 0.0
                          modelHash = modelHash(coords, workingValue4, stateFlag5)
                          modelHash = cmgOperation3 + modelHash
                          coords = SetEntityCoords
                          workingValue4 = stateFlag
                          stateFlag5 = modelHash.x
                          stateFlag7 = modelHash.y
                          stateFlag9 = modelHash.z
                          stateFlag12 = false
                          stateFlag14 = false
                          stateFlag15 = false
                          stateFlag18 = false
                          -- Beginner: Move/teleport an entity to new coordinates.
                          coords(workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18)
                          coords = SetVehicleOnGroundProperly
                          workingValue4 = stateFlag
                          coords(workingValue4)
                          coords = SetVehicleExtra
                          workingValue4 = stateFlag
                          stateFlag5 = 1
                          stateFlag7 = true
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = SetVehicleExtra
                          workingValue4 = stateFlag
                          stateFlag5 = 2
                          stateFlag7 = false
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = DecorSetInt
                          workingValue4 = stateFlag
                          stateFlag5 = "58fe205294"
                          stateFlag7 = 0
                          coords(workingValue4, stateFlag5, stateFlag7)
                          coords = NetworkHasControlOfEntity
                          workingValue4 = localValue2
                          coords = coords(workingValue4)
                          if coords then
                            coords = DecorSetBool
                            workingValue4 = localValue2
                            stateFlag5 = "ddf749d1be"
                            stateFlag7 = false
                            coords(workingValue4, stateFlag5, stateFlag7)
                          else
                            coords = TriggerServerEvent
                            workingValue4 = "c15aeb9b9f"
                            stateFlag5 = CMG
                            stateFlag5 = stateFlag5.getNetId
                            stateFlag7 = localValue2
                            stateFlag9 = "Stretcher"
                            stateFlag5 = stateFlag5(stateFlag7, stateFlag9)
                            stateFlag7 = false
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                            coords(workingValue4, stateFlag5, stateFlag7)
                          end
                          coords = tCMG
                          coords = coords.notify
                          workingValue4 = "Stretcher taken out."
                          -- Beginner: Show a notification to the player.
                          coords(workingValue4)
                          break
                        end
                      end
                    end
                  end
                else
                  text3 = workingValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Open rear door"
                  text3(iterator)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
number2 = workingValue3
text = "NHS Stretcher"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(number2, text)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local cmgOperation3, number10
  cmgOperation3 = Citizen
  cmgOperation3 = cmgOperation3.CreateThread

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local networkId, serverEventCall, text2, playerPed, stateFlag27, text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26
    networkId = NetworkGetNetworkIdFromEntity
    serverEventCall = localValue2
    networkId = networkId(serverEventCall)
    if 0 == networkId then
      return
    end
    serverEventCall = TriggerServerEvent
    text2 = "5672bd2d03"
    playerPed = networkId
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5672bd2d03".
    serverEventCall(text2, playerPed)
    serverEventCall = AttachEntityToEntity
    text2 = localValue2
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    stateFlag27 = -1
    text4 = -0.05
    number12 = 1.3
    text5 = -0.345
    text6 = 180.0
    number13 = 180.0
    number = 180.0
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = false
    stateFlag6 = true
    stateFlag8 = 0
    stateFlag10 = true
    -- Beginner: Attach one entity to another entity.
    serverEventCall(text2, playerPed, stateFlag27, text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10)
    while true do
      serverEventCall = NetworkHasControlOfEntity
      text2 = localValue2
      serverEventCall = serverEventCall(text2)
      if serverEventCall then
        serverEventCall = IsEntityAttachedToEntity
        text2 = localValue2
        playerPed = localValue1
        serverEventCall = serverEventCall(text2, playerPed)
        if serverEventCall then
          break
        end
      end
      serverEventCall = Wait
      text2 = 0
      serverEventCall(text2)
    end
    serverEventCall = SetEntityHeading
    text2 = localValue1
    playerPed = GetEntityHeading
    stateFlag27 = localValue2
    playerPed, stateFlag27, text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = playerPed(stateFlag27)
    -- Beginner: Change the direction an entity is facing.
    serverEventCall(text2, playerPed, stateFlag27, text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
    serverEventCall = SetVehicleExtra
    text2 = localValue2
    playerPed = 1
    stateFlag27 = false
    serverEventCall(text2, playerPed, stateFlag27)
    serverEventCall = SetVehicleExtra
    text2 = localValue2
    playerPed = 2
    stateFlag27 = true
    serverEventCall(text2, playerPed, stateFlag27)
    serverEventCall = CMG
    serverEventCall = serverEventCall.loadAnimDict
    text2 = "anim@heists@box_carry@"
    -- Beginner: Load a GTA animation dictionary before using it.
    serverEventCall(text2)
    serverEventCall = 0
    while true do
      text2 = IsEntityAttachedToEntity
      playerPed = localValue2
      stateFlag27 = localValue1
      text2 = text2(playerPed, stateFlag27)
      if not text2 then
        break
      end
      text2 = Citizen
      text2 = text2.Wait
      playerPed = 0
      text2(playerPed)
      text2 = IsEntityPlayingAnim
      playerPed = localValue1
      stateFlag27 = "anim@heists@box_carry@"
      text4 = "idle"
      number12 = 3
      text2 = text2(playerPed, stateFlag27, text4, number12)
      if not text2 then
        text2 = TaskPlayAnim
        playerPed = localValue1
        stateFlag27 = "anim@heists@box_carry@"
        text4 = "idle"
        number12 = 8.0
        text5 = 8.0
        text6 = -1
        number13 = 50
        number = 0
        stateFlag2 = false
        stateFlag3 = false
        stateFlag4 = false
        -- Beginner: Play an animation on a ped.
        text2(playerPed, stateFlag27, text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4)
      end
      text2 = IsControlJustReleased
      playerPed = 0
      stateFlag27 = 73
      text2 = text2(playerPed, stateFlag27)
      if not text2 then
        text2 = IsPedDeadOrDying
        playerPed = localValue1
        stateFlag27 = false
        text2 = text2(playerPed, stateFlag27)
        if not text2 then
          goto continueAtStep129
        end
      end
      text2 = ClearPedTasksImmediately
      playerPed = localValue1
      text2(playerPed)
      text2 = SetVehicleExtra
      playerPed = localValue2
      stateFlag27 = 1
      text4 = true
      text2(playerPed, stateFlag27, text4)
      text2 = SetVehicleExtra
      playerPed = localValue2
      stateFlag27 = 2
      text4 = false
      text2(playerPed, stateFlag27, text4)
      text2 = DetachEntity
      playerPed = localValue2
      stateFlag27 = true
      text4 = false
      text2(playerPed, stateFlag27, text4)
      text2 = SetVehicleOnGroundProperly
      playerPed = localValue2
      text2(playerPed)
      ::continueAtStep129::
      text2 = DecorGetInt
      playerPed = localValue2
      stateFlag27 = "58fe205294"
      text2 = text2(playerPed, stateFlag27)
      if 0 ~= text2 then
        text2 = CMG
        text2 = text2.getObjectId
        playerPed = DecorGetInt
        stateFlag27 = localValue2
        text4 = "58fe205294"
        playerPed = playerPed(stateFlag27, text4)
        stateFlag27 = "pushStretcher(ped, nearbyStretcher)"
        text2 = text2(playerPed, stateFlag27)
        if text2 then
          playerPed = DecorGetBool
          stateFlag27 = text2
          text4 = "ddf749d1be"
          playerPed = playerPed(stateFlag27, text4)
          if playerPed then
            playerPed = NetworkHasControlOfEntity
            stateFlag27 = text2
            playerPed = playerPed(stateFlag27)
            if not playerPed then
              playerPed = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              playerPed = playerPed()
              playerPed = playerPed - serverEventCall
              stateFlag27 = 200
              if playerPed > stateFlag27 then
                playerPed = TriggerServerEvent
                stateFlag27 = "c15aeb9b9f"
                text4 = CMG
                text4 = text4.getNetId
                number12 = text2
                text5 = "Stretchers"
                text4 = text4(number12, text5)
                number12 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                playerPed(stateFlag27, text4, number12)
                playerPed = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                playerPed = playerPed()
                serverEventCall = playerPed
              end
            else
              playerPed = DecorSetBool
              stateFlag27 = text2
              text4 = "ddf749d1be"
              number12 = false
              playerPed(stateFlag27, text4, number12)
            end
          end
        end
      end
      text2 = workingValue12
      playerPed = 15.0
      stateFlag27 = cmgOperation.ambulanceModels
      text2 = text2(playerPed, stateFlag27)
      number9 = text2
      text2 = number9
      if nil ~= text2 then
        text2 = number9
        if 0 ~= text2 then
          text2 = GetVehicleDoorAngleRatio
          playerPed = number9
          stateFlag27 = 4
          text2 = text2(playerPed, stateFlag27)
          text2 = 0 ~= text2
          if not text2 then
            playerPed = workingValue14
            stateFlag27 = "~INPUT_REPLAY_REWIND~ Open rear door"
            playerPed(stateFlag27)
          else
            playerPed = workingValue14
            stateFlag27 = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Put stretcher in"
            playerPed(stateFlag27)
          end
          playerPed = DecorGetBool
          stateFlag27 = number9
          text4 = "ddf749d1be"
          playerPed = playerPed(stateFlag27, text4)
          if not playerPed then
            stateFlag27 = GetWorldPositionOfEntityBone
            text4 = number9
            number12 = GetEntityBoneIndexByName
            text5 = number9
            text6 = "bonnet"
            number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = number12(text5, text6)
            stateFlag27 = stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
            text4 = DrawMarker
            number12 = 1
            text5 = stateFlag27.x
            text6 = stateFlag27.y
            number13 = stateFlag27.z
            number13 = number13 - 1.75
            number = 0.0
            stateFlag2 = 0.0
            stateFlag3 = 0.0
            stateFlag4 = 0
            stateFlag6 = 0.0
            stateFlag8 = 0.0
            stateFlag10 = 1.5
            stateFlag13 = 1.5
            number3 = 1.5
            stateFlag16 = 0
            number4 = 48
            number5 = 135
            number6 = 235
            stateFlag21 = false
            stateFlag23 = true
            number8 = 2
            stateFlag24 = false
            workingValue8 = nil
            workingValue9 = nil
            stateFlag26 = false
            text4(number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
          end
          stateFlag27 = IsControlJustReleased
          text4 = 0
          number12 = 300
          stateFlag27 = stateFlag27(text4, number12)
          if stateFlag27 then
            if not text2 then
              stateFlag27 = IsThisModelAHeli
              text4 = GetEntityModel
              number12 = number9
              text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = text4(number12)
              stateFlag27 = stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
            end
            if stateFlag27 and not playerPed then
              stateFlag27 = ClearPedTasksImmediately
              text4 = localValue1
              stateFlag27(text4)
              stateFlag27 = SetVehicleExtra
              text4 = localValue2
              number12 = 1
              text5 = true
              stateFlag27(text4, number12, text5)
              stateFlag27 = SetVehicleExtra
              text4 = localValue2
              number12 = 2
              text5 = false
              stateFlag27(text4, number12, text5)
              stateFlag27 = DetachEntity
              text4 = localValue2
              number12 = true
              text5 = false
              stateFlag27(text4, number12, text5)
              stateFlag27 = SetVehicleOnGroundProperly
              text4 = localValue2
              stateFlag27(text4)
              stateFlag27 = IsThisModelAHeli
              text4 = GetEntityModel
              number12 = number9
              text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = text4(number12)
              stateFlag27 = stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
              if stateFlag27 then
                stateFlag27 = AttachEntityToEntity
                text4 = localValue2
                number12 = number9
                text5 = -1
                text6 = 0.0
                number13 = 0.0
                number = 0.0
                stateFlag2 = 0.0
                stateFlag3 = 0.0
                stateFlag4 = 0.0
                stateFlag6 = false
                stateFlag8 = false
                stateFlag10 = false
                stateFlag13 = false
                number3 = 0.0
                stateFlag16 = true
                -- Beginner: Attach one entity to another entity.
                stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16)
              else
                stateFlag27 = AttachEntityToEntity
                text4 = localValue2
                number12 = number9
                text5 = GetEntityBoneIndexByName
                text6 = number9
                number13 = "engine"
                text5 = text5(text6, number13)
                text6 = 0.0
                number13 = -3.0
                number = -1.0
                stateFlag2 = 0.0
                stateFlag3 = 0.0
                stateFlag4 = 0.0
                stateFlag6 = false
                stateFlag8 = false
                stateFlag10 = false
                stateFlag13 = false
                number3 = 0.0
                stateFlag16 = true
                stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16)
              end
              stateFlag27 = NetworkHasControlOfEntity
              text4 = number9
              stateFlag27 = stateFlag27(text4)
              if not stateFlag27 then
                stateFlag27 = TriggerServerEvent
                text4 = "c15aeb9b9f"
                number12 = CMG
                number12 = number12.getNetId
                text5 = number9
                text6 = "Stretcher"
                number12 = number12(text5, text6)
                text5 = true
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                stateFlag27(text4, number12, text5)
              else
                stateFlag27 = DecorSetBool
                text4 = number9
                number12 = "ddf749d1be"
                text5 = true
                stateFlag27(text4, number12, text5)
              end
              stateFlag27 = NetworkHasControlOfEntity
              text4 = localValue2
              stateFlag27 = stateFlag27(text4)
              if not stateFlag27 then
                stateFlag27 = workingValue10
                if stateFlag27 then
                  stateFlag27 = TriggerServerEvent
                  text4 = "91ad572dcd"
                  number12 = CMG
                  number12 = number12.getNetId
                  text5 = workingValue10
                  text6 = "Stretchers"
                  number12 = number12(text5, text6)
                  text5 = CMG
                  text5 = text5.getNetId
                  text6 = number9
                  number13 = "Stretchers"
                  text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = text5(text6, number13)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91ad572dcd".
                  stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
                end
              else
                stateFlag27 = DecorSetInt
                text4 = localValue2
                number12 = "58fe205294"
                text5 = CMG
                text5 = text5.getNetId
                text6 = number9
                number13 = "Stretchers"
                text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26 = text5(text6, number13)
                stateFlag27(text4, number12, text5, text6, number13, number, stateFlag2, stateFlag3, stateFlag4, stateFlag6, stateFlag8, stateFlag10, stateFlag13, number3, stateFlag16, number4, number5, number6, stateFlag21, stateFlag23, number8, stateFlag24, workingValue8, workingValue9, stateFlag26)
              end
              stateFlag27 = FreezeEntityPosition
              text4 = localValue2
              number12 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              stateFlag27(text4, number12)
            end
          end
        end
      end
    end
    text2 = RemoveAnimDict
    playerPed = "anim@heists@box_carry@"
    text2(playerPed)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation3(number10)
end
workingValue11 = cmgOperation2
cmgOperation2 = RegisterNetEvent
number2 = "5672bd2d03"
-- Beginner: this function handles network event "5672bd2d03".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18
  cmgOperation3 = NetworkDoesNetworkIdExist
  number10 = localValue1
  cmgOperation3 = cmgOperation3(number10)
  if not cmgOperation3 then
    return
  end
  cmgOperation3 = NetworkGetEntityFromNetworkId
  number10 = localValue1
  cmgOperation3 = cmgOperation3(number10)
  number10 = GetPlayerFromServerId
  text3 = localValue2
  -- Beginner: result below is playerIndex.
  number10 = number10(text3)
  if 0 == cmgOperation3 or -1 == number10 then
    return
  end
  text3 = GetPlayerPed
  iterator = number10
  -- Beginner: result below is playerPed.
  text3 = text3(iterator)
  if 0 == text3 then
    return
  end
  iterator = AttachEntityToEntity
  cmgOperation4 = cmgOperation3
  playerPed2 = text3
  stateFlag28 = -1
  stateFlag29 = -0.05
  stateFlag = 1.3
  modelHash = -0.345
  coords = 180.0
  workingValue4 = 180.0
  stateFlag5 = 180.0
  stateFlag7 = false
  stateFlag9 = false
  stateFlag12 = false
  stateFlag14 = true
  stateFlag15 = 0
  stateFlag18 = true
  -- Beginner: Attach one entity to another entity.
  iterator(cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag, modelHash, coords, workingValue4, stateFlag5, stateFlag7, stateFlag9, stateFlag12, stateFlag14, stateFlag15, stateFlag18)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5672bd2d03".
cmgOperation2(number2, text)
cmgOperation2 = 0
number2 = RegisterCommand
text = "stretcher"
-- Beginner: this function is the command handler for "stretcher".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, cmgOperation3, number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = cmgOperation2
    localValue1 = localValue1 - localValue2
    localValue2 = 10000
    if localValue1 > localValue2 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      cmgOperation2 = localValue1
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = CMG
      localValue2 = localValue2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue2 = localValue2()
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.loadModel
      number10 = -665859588
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgOperation3(number10)
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.requestEntitySpawn
      number10 = "stretcher"
      cmgOperation3(number10)
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.spawnVehicle
      number10 = -665859588
      text3 = localValue2.x
      iterator = localValue2.y
      cmgOperation4 = localValue2.z
      playerPed2 = GetEntityHeading
      stateFlag28 = localValue1
      -- Beginner: result below is heading.
      playerPed2 = playerPed2(stateFlag28)
      stateFlag28 = false
      stateFlag29 = true
      stateFlag = true
      cmgOperation3 = cmgOperation3(number10, text3, iterator, cmgOperation4, playerPed2, stateFlag28, stateFlag29, stateFlag)
      number10 = SetVehicleDoorsLocked
      text3 = cmgOperation3
      iterator = 2
      number10(text3, iterator)
      number10 = SetVehicleOnGroundProperly
      text3 = cmgOperation3
      number10(text3)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 7
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 6
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 5
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 3
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 1
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 2
      cmgOperation4 = false
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 11
      cmgOperation4 = false
      number10(text3, iterator, cmgOperation4)
      number10 = SetVehicleExtra
      text3 = cmgOperation3
      iterator = 12
      cmgOperation4 = true
      number10(text3, iterator, cmgOperation4)
      number10 = SetModelAsNoLongerNeeded
      text3 = -665859588
      number10(text3)
      number10 = tCMG
      number10 = number10.notify
      text3 = "Stretcher created."
      -- Beginner: Show a notification to the player.
      number10(text3)
    end
  end
end
stateFlag11 = false
-- Beginner: Register a chat/console command. Event/command: "stretcher".
number2(text, workingValue5, stateFlag11)
number2 = RegisterCommand
text = "removestretcher"
-- Beginner: this function is the command handler for "removestretcher".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, cmgOperation3, number10, text3, iterator
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = workingValue12
    localValue2 = 5.0
    cmgOperation3 = cmgOperation.stretcherModels
    localValue1 = localValue1(localValue2, cmgOperation3)
    if nil ~= localValue1 then
      localValue2 = TriggerServerEvent
      cmgOperation3 = "2bfff324f7"
      number10 = CMG
      number10 = number10.getNetId
      text3 = localValue1
      iterator = "Stretchers"
      number10, text3, iterator = number10(text3, iterator)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bfff324f7".
      localValue2(cmgOperation3, number10, text3, iterator)
    end
  end
end
stateFlag11 = false
-- Beginner: Register a chat/console command. Event/command: "removestretcher".
number2(text, workingValue5, stateFlag11)
number2 = RegisterNetEvent
text = "0a9884b220"
-- Beginner: this function handles network event "0a9884b220".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local cmgOperation3, number10, text3, iterator, cmgOperation4
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getObjectId
  number10 = localValue1
  text3 = "0a9884b220"
  cmgOperation3 = cmgOperation3(number10, text3)
  if cmgOperation3 then
    number10 = DecorSetInt
    text3 = cmgOperation3
    iterator = "58fe205294"
    cmgOperation4 = localValue2
    number10(text3, iterator, cmgOperation4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0a9884b220".
number2(text, workingValue5)
number2 = RegisterNetEvent
text = "5f63e7b654"
-- Beginner: this function handles network event "5f63e7b654".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local cmgOperation3, number10, text3, iterator, cmgOperation4
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getObjectId
  number10 = localValue1
  text3 = "5f63e7b654"
  cmgOperation3 = cmgOperation3(number10, text3)
  if cmgOperation3 then
    number10 = DecorSetBool
    text3 = cmgOperation3
    iterator = "ddf749d1be"
    cmgOperation4 = localValue2
    number10(text3, iterator, cmgOperation4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5f63e7b654".
number2(text, workingValue5)
number2 = RegisterNetEvent
text = "48c58592c1"
-- Beginner: this function handles network event "48c58592c1".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, cmgOperation3, number10, text3, iterator, cmgOperation4
  localValue2 = CMG
  localValue2 = localValue2.getObjectId
  cmgOperation3 = localValue1
  number10 = "48c58592c1"
  localValue2 = localValue2(cmgOperation3, number10)
  cmgOperation3 = GetVehicleDoorAngleRatio
  number10 = localValue2
  text3 = 4
  cmgOperation3 = cmgOperation3(number10, text3)
  if 0 == cmgOperation3 then
    cmgOperation3 = GetVehicleDoorAngleRatio
    number10 = localValue2
    text3 = 3
    cmgOperation3 = cmgOperation3(number10, text3)
    if 0 == cmgOperation3 then
      goto continueAtStep32
    end
  end
  cmgOperation3 = SetVehicleDoorShut
  number10 = localValue2
  text3 = 3
  iterator = false
  cmgOperation3(number10, text3, iterator)
  cmgOperation3 = Wait
  number10 = 500
  cmgOperation3(number10)
  cmgOperation3 = SetVehicleDoorShut
  number10 = localValue2
  text3 = 4
  iterator = false
  cmgOperation3(number10, text3, iterator)
  goto continueAtStep47
  ::continueAtStep32::
  cmgOperation3 = SetVehicleDoorOpen
  number10 = localValue2
  text3 = 4
  iterator = false
  cmgOperation4 = false
  cmgOperation3(number10, text3, iterator, cmgOperation4)
  cmgOperation3 = Wait
  number10 = 500
  cmgOperation3(number10)
  cmgOperation3 = SetVehicleDoorOpen
  number10 = localValue2
  text3 = 3
  iterator = false
  cmgOperation4 = false
  cmgOperation3(number10, text3, iterator, cmgOperation4)
  ::continueAtStep47::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48c58592c1".
number2(text, workingValue5)
number2 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = stateFlag17
  return localValue1
end
number2.isUsingStretcher = text
number2 = RegisterNetEvent
text = "2d2aca0333"
-- Beginner: this function handles network event "2d2aca0333".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, cmgOperation3, number10, text3
  localValue2 = NetworkDoesNetworkIdExist
  cmgOperation3 = localValue1
  localValue2 = localValue2(cmgOperation3)
  if not localValue2 then
    return
  end
  localValue2 = NetworkGetEntityFromNetworkId
  cmgOperation3 = localValue1
  localValue2 = localValue2(cmgOperation3)
  if 0 ~= localValue2 then
    cmgOperation3 = DoesEntityExist
    number10 = localValue2
    cmgOperation3 = cmgOperation3(number10)
    if cmgOperation3 then
      cmgOperation3 = workingValue2
      number10 = localValue2
      text3 = 2
      cmgOperation3(number10, text3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2d2aca0333".
number2(text, workingValue5)
