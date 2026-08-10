--[[
    Beginner Guide: cl_stretcher.lua
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
    BEGINNER GUIDE — Stretcher
    ==========================

    File: cmg/prod/client/nhs/cl_stretcher.lua
    Purpose: This file contains NHS/medical gameplay.

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
      * cfg/cfg_stretcher

    Commands/command-like entries found:
      * stretcher
      * removestretcher

    Network/hash identifiers found: 11
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * ~INPUT_FRONTEND_RDOWN~ Change position  ~INPUT_CELLPHONE_CANCEL~ Get up
      * ~INPUT_COVER~ Push  ~INPUT_FRONTEND_RDOWN~ Use
      * ~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop pushing
      * ~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop  ~INPUT_CELLPHONE_CAMERA_GRID~ Place player
      * ~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out

]]
local cmgCall, flag17, numberValue9, workValue10, numberValue11, workValue11, workValue12, workValue13, workValue14, threadCall, workValue, workValue2, workValue3, cmgCall2, numberValue2, textValue, workValue5, flag11
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag17 = "cfg/cfg_stretcher"
-- Beginner: result below is config.
cmgCall = cmgCall(flag17)
flag17 = false
numberValue9 = 0
workValue10 = nil
numberValue11 = 1
workValue11 = nil
function workValue12(arg1, arg2)
  local cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgCall3 = cmgCall3()
  numberValue10 = 0
  textValue3 = arg1
  iterator = pairs
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.getAllVehicles
  cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4 = cmgCall4()
  iterator, cmgCall4, playerPed2, flag28 = iterator(cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4)
  for flag29, flag in iterator, cmgCall4, playerPed2, flag28 do
    modelHash = GetEntityModel
    coords = flag
    -- Beginner: result below is modelHash.
    modelHash = modelHash(coords)
    coords = arg2[modelHash]
    if coords then
      coords = GetEntityCoords
      workValue4 = flag
      -- Beginner: result below is entityCoords.
      coords = coords(workValue4)
      workValue4 = cmgCall3 - coords
      workValue4 = #workValue4
      if textValue3 > workValue4 then
        textValue3 = workValue4
        numberValue10 = flag
      end
    end
  end
  return numberValue10
end
function workValue13()
  local arg1, arg2, cmgCall3, numberValue10, textValue3, iterator
  arg1 = IsControlJustReleased
  arg2 = 0
  cmgCall3 = 299
  arg1 = arg1(arg2, cmgCall3)
  if arg1 then
    arg1 = NetworkHasControlOfEntity
    arg2 = numberValue9
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = TriggerServerEvent
      arg2 = "5afe1684a7"
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.getNetId
      numberValue10 = numberValue9
      textValue3 = "Stretchers"
      cmgCall3, numberValue10, textValue3, iterator = cmgCall3(numberValue10, textValue3)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5afe1684a7".
      arg1(arg2, cmgCall3, numberValue10, textValue3, iterator)
    else
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "nhs.onduty.permission"
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = numberValue9
        if 0 ~= arg1 then
          arg1 = GetVehicleDoorAngleRatio
          arg2 = numberValue9
          cmgCall3 = 4
          arg1 = arg1(arg2, cmgCall3)
          arg1 = 0 ~= arg1
          if arg1 then
            arg2 = SetVehicleDoorShut
            cmgCall3 = numberValue9
            numberValue10 = 3
            textValue3 = false
            arg2(cmgCall3, numberValue10, textValue3)
            arg2 = Wait
            cmgCall3 = 500
            arg2(cmgCall3)
            arg2 = SetVehicleDoorShut
            cmgCall3 = numberValue9
            numberValue10 = 4
            textValue3 = false
            arg2(cmgCall3, numberValue10, textValue3)
            arg2 = tCMG
            arg2 = arg2.notify
            cmgCall3 = "Door closed."
            -- Beginner: Show a notification to the player.
            arg2(cmgCall3)
          else
            arg2 = SetVehicleDoorOpen
            cmgCall3 = numberValue9
            numberValue10 = 4
            textValue3 = false
            iterator = false
            arg2(cmgCall3, numberValue10, textValue3, iterator)
            arg2 = Wait
            cmgCall3 = 500
            arg2(cmgCall3)
            arg2 = SetVehicleDoorOpen
            cmgCall3 = numberValue9
            numberValue10 = 3
            textValue3 = false
            iterator = false
            arg2(cmgCall3, numberValue10, textValue3, iterator)
            arg2 = tCMG
            arg2 = arg2.notify
            cmgCall3 = "Door opened."
            -- Beginner: Show a notification to the player.
            arg2(cmgCall3)
          end
        end
      end
    end
  end
end
function workValue14(arg1)
  local arg2, cmgCall3, numberValue10, textValue3, iterator
  arg2 = BeginTextCommandDisplayHelp
  cmgCall3 = "STRING"
  arg2(cmgCall3)
  arg2 = AddTextEntry
  cmgCall3 = "STRETCHER_HELP_TEXT"
  numberValue10 = arg1
  arg2(cmgCall3, numberValue10)
  arg2 = AddTextComponentSubstringTextLabel
  cmgCall3 = "STRETCHER_HELP_TEXT"
  arg2(cmgCall3)
  arg2 = EndTextCommandDisplayHelp
  cmgCall3 = 0
  numberValue10 = false
  textValue3 = false
  iterator = 0
  arg2(cmgCall3, numberValue10, textValue3, iterator)
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function workValue()
  local arg1, arg2, cmgCall3
  while true do
    arg1 = Wait
    arg2 = 750
    arg1(arg2)
    arg1 = workValue12
    arg2 = 2.0
    cmgCall3 = cmgCall.stretcherModels
    arg1 = arg1(arg2, cmgCall3)
    workValue10 = arg1
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue)
function threadCall(arg1)
  local arg2, cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash
  arg2 = GetEntityAttachedTo
  cmgCall3 = arg1
  arg2 = arg2(cmgCall3)
  cmgCall3 = DetachEntity
  numberValue10 = arg1
  textValue3 = false
  iterator = false
  cmgCall3(numberValue10, textValue3, iterator)
  cmgCall3 = false
  flag17 = cmgCall3
  cmgCall3 = 1
  numberValue11 = cmgCall3
  if arg2 and 0 ~= arg2 then
    cmgCall3 = SetVehicleEngineOn
    numberValue10 = arg2
    textValue3 = false
    iterator = true
    cmgCall4 = true
    cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
    cmgCall3 = GetEntityCoords
    numberValue10 = arg2
    -- Beginner: result below is entityCoords.
    cmgCall3 = cmgCall3(numberValue10)
    numberValue10 = DecorGetInt
    textValue3 = arg2
    iterator = "58fe205294"
    numberValue10 = numberValue10(textValue3, iterator)
    if 0 ~= numberValue10 then
      numberValue10 = CMG
      numberValue10 = numberValue10.getObjectId
      textValue3 = DecorGetInt
      iterator = arg2
      cmgCall4 = "58fe205294"
      textValue3 = textValue3(iterator, cmgCall4)
      iterator = "exitStretcher"
      numberValue10 = numberValue10(textValue3, iterator)
      if numberValue10 and 0 ~= numberValue10 then
        textValue3 = GetWorldPositionOfEntityBone
        iterator = numberValue10
        cmgCall4 = GetEntityBoneIndexByName
        playerPed2 = numberValue10
        flag28 = "bonnet"
        cmgCall4, playerPed2, flag28, flag29, flag, modelHash = cmgCall4(playerPed2, flag28)
        textValue3 = textValue3(iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash)
        iterator = vector3
        cmgCall4 = 0.0
        playerPed2 = -2.0
        flag28 = 0.0
        iterator = iterator(cmgCall4, playerPed2, flag28)
        cmgCall3 = textValue3 + iterator
      end
    end
    numberValue10 = SetEntityCoords
    textValue3 = arg1
    iterator = cmgCall3.x
    cmgCall4 = cmgCall3.y
    playerPed2 = cmgCall3.z
    flag28 = false
    flag29 = false
    flag = false
    modelHash = false
    -- Beginner: Move/teleport an entity to new coordinates.
    numberValue10(textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash)
    numberValue10 = PlaceObjectOnGroundProperly
    textValue3 = arg1
    numberValue10(textValue3)
  end
  cmgCall3 = ClearPedTasksImmediately
  numberValue10 = arg1
  cmgCall3(numberValue10)
end
function workValue(arg1)
  local arg2, cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29
  arg2 = pairs
  cmgCall3 = GetActivePlayers
  cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29 = cmgCall3()
  arg2, cmgCall3, numberValue10, textValue3 = arg2(cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29)
  for iterator, cmgCall4 in arg2, cmgCall3, numberValue10, textValue3 do
    playerPed2 = GetPlayerPed
    flag28 = cmgCall4
    -- Beginner: result below is playerPed.
    playerPed2 = playerPed2(flag28)
    flag28 = GetEntityAttachedTo
    flag29 = playerPed2
    flag28 = flag28(flag29)
    if flag28 == arg1 then
      flag28 = true
      return flag28
    end
  end
  arg2 = false
  return arg2
end
function workValue2(arg1, arg2)
  local cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  numberValue10 = workValue
  textValue3 = arg1
  numberValue10 = numberValue10(textValue3)
  if numberValue10 then
    numberValue10 = flag17
    if not numberValue10 then
      goto flow_label_81
    end
  end
  numberValue10 = true
  flag17 = numberValue10
  numberValue10 = SetVehicleEngineOn
  textValue3 = arg1
  iterator = true
  cmgCall4 = true
  playerPed2 = true
  numberValue10(textValue3, iterator, cmgCall4, playerPed2)
  if arg2 then
    numberValue11 = arg2
  end
  numberValue10 = cmgCall.positions
  textValue3 = numberValue11
  numberValue10 = numberValue10[textValue3]
  textValue3 = CMG
  textValue3 = textValue3.loadAnimDict
  iterator = numberValue10.animDict
  -- Beginner: Load a GTA animation dictionary before using it.
  textValue3(iterator)
  textValue3 = DetachEntity
  iterator = cmgCall3
  cmgCall4 = false
  playerPed2 = false
  textValue3(iterator, cmgCall4, playerPed2)
  textValue3 = AttachEntityToEntity
  iterator = cmgCall3
  cmgCall4 = arg1
  playerPed2 = cmgCall3
  flag28 = numberValue10.offset
  flag28 = flag28.x
  flag29 = numberValue10.offset
  flag29 = flag29.y
  flag = numberValue10.offset
  flag = flag.z
  modelHash = 0.0
  coords = 0.0
  workValue4 = numberValue10.offset
  workValue4 = workValue4.heading
  flag5 = false
  flag7 = false
  flag9 = false
  flag12 = false
  flag14 = 0
  flag15 = false
  -- Beginner: Attach one entity to another entity.
  textValue3(iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15)
  textValue3 = TaskPlayAnim
  iterator = cmgCall3
  cmgCall4 = numberValue10.animDict
  playerPed2 = numberValue10.animName
  flag28 = 8.0
  flag29 = 8.0
  flag = -1
  modelHash = 1
  coords = 0
  workValue4 = false
  flag5 = false
  flag7 = false
  -- Beginner: Play an animation on a ped.
  textValue3(iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7)
  textValue3 = RemoveAnimDict
  iterator = numberValue10.animDict
  textValue3(iterator)
  textValue3 = numberValue11
  if 3 == textValue3 then
    textValue3 = 1
    numberValue11 = textValue3
  else
    textValue3 = numberValue11
    textValue3 = textValue3 + 1
    numberValue11 = textValue3
  end
  ::flow_label_81::
end
workValue3 = DecorRegister
cmgCall2 = "ddf749d1be"
numberValue2 = 2
workValue3(cmgCall2, numberValue2)
workValue3 = DecorRegister
cmgCall2 = "58fe205294"
numberValue2 = 3
workValue3(cmgCall2, numberValue2)
function workValue3()
  local arg1, arg2, cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = flag17
  if arg2 then
    arg2 = DisableControlAction
    cmgCall3 = 0
    numberValue10 = 24
    textValue3 = true
    arg2(cmgCall3, numberValue10, textValue3)
    arg2 = DisableControlAction
    cmgCall3 = 0
    numberValue10 = 25
    textValue3 = true
    arg2(cmgCall3, numberValue10, textValue3)
    arg2 = GetEntityAttachedTo
    cmgCall3 = arg1
    arg2 = arg2(cmgCall3)
    if 0 == arg2 then
      arg2 = threadCall
      cmgCall3 = arg1
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg2(cmgCall3)
    else
      arg2 = workValue14
      cmgCall3 = "~INPUT_FRONTEND_RDOWN~ Change position  ~INPUT_CELLPHONE_CANCEL~ Get up"
      arg2(cmgCall3)
      arg2 = IsControlJustReleased
      cmgCall3 = 0
      numberValue10 = 202
      arg2 = arg2(cmgCall3, numberValue10)
      if arg2 then
        arg2 = threadCall
        cmgCall3 = arg1
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        arg2(cmgCall3)
      end
    end
  end
  arg2 = workValue10
  if nil ~= arg2 then
    arg2 = workValue10
    if 0 ~= arg2 then
      arg2 = DecorGetInt
      cmgCall3 = workValue10
      numberValue10 = "58fe205294"
      arg2 = arg2(cmgCall3, numberValue10)
      if 0 ~= arg2 then
        arg2 = CMG
        arg2 = arg2.getObjectId
        cmgCall3 = DecorGetInt
        numberValue10 = workValue10
        textValue3 = "58fe205294"
        cmgCall3 = cmgCall3(numberValue10, textValue3)
        numberValue10 = "Stretcher tick"
        arg2 = arg2(cmgCall3, numberValue10)
        if not arg2 then
          arg2 = 0
        end
        numberValue9 = arg2
      else
        arg2 = workValue12
        cmgCall3 = 15.0
        numberValue10 = cmgCall.ambulanceModels
        arg2 = arg2(cmgCall3, numberValue10)
        numberValue9 = arg2
      end
      arg2 = GetEntityCoords
      cmgCall3 = workValue10
      -- Beginner: result below is entityCoords.
      arg2 = arg2(cmgCall3)
      cmgCall3 = flag17
      if not cmgCall3 then
        cmgCall3 = IsEntityPlayingAnim
        numberValue10 = arg1
        textValue3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgCall4 = 3
        cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
        if not cmgCall3 then
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          cmgCall3 = cmgCall3()
          if 0 == cmgCall3 then
            cmgCall3 = true
            numberValue10 = DecorGetInt
            textValue3 = workValue10
            iterator = "58fe205294"
            numberValue10 = numberValue10(textValue3, iterator)
            if 0 ~= numberValue10 then
              numberValue10 = numberValue9
              cmgCall3 = 0 ~= numberValue10
            end
            if cmgCall3 then
              numberValue10 = workValue14
              textValue3 = "~INPUT_COVER~ Push  ~INPUT_FRONTEND_RDOWN~ Use"
              numberValue10(textValue3)
            end
          end
        end
      end
      cmgCall3 = IsEntityPlayingAnim
      numberValue10 = arg1
      textValue3 = "anim@heists@box_carry@"
      iterator = "idle"
      cmgCall4 = 3
      cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
      if cmgCall3 then
        cmgCall3 = numberValue9
        if 0 == cmgCall3 then
          cmgCall3 = -1
          numberValue10 = 5.0
          textValue3 = pairs
          iterator = GetActivePlayers
          iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = iterator()
          textValue3, iterator, cmgCall4, playerPed2 = textValue3(iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
          for flag28, flag29 in textValue3, iterator, cmgCall4, playerPed2 do
            flag = GetPlayerPed
            modelHash = flag29
            -- Beginner: result below is playerPed.
            flag = flag(modelHash)
            if 0 ~= flag then
              modelHash = GetEntityHealth
              coords = flag
              -- Beginner: result below is health.
              modelHash = modelHash(coords)
              if modelHash >= 100 and modelHash <= 102 then
                coords = GetEntityAttachedTo
                workValue4 = flag
                coords = coords(workValue4)
                if 0 == coords then
                  coords = GetEntityCoords
                  workValue4 = flag
                  flag5 = true
                  -- Beginner: result below is entityCoords.
                  coords = coords(workValue4, flag5)
                  coords = coords - arg2
                  coords = #coords
                  if numberValue10 > coords then
                    cmgCall3 = flag29
                    numberValue10 = coords
                  end
                end
              end
            end
          end
          textValue3 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop pushing"
          if -1 ~= cmgCall3 then
            iterator = CMG
            iterator = iterator.hasClientPermission
            cmgCall4 = "nhs.onduty.permission"
            iterator = iterator(cmgCall4)
            if iterator then
              textValue3 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop  ~INPUT_CELLPHONE_CAMERA_GRID~ Place player"
              iterator = IsControlJustPressed
              cmgCall4 = 0
              playerPed2 = 183
              iterator = iterator(cmgCall4, playerPed2)
              if iterator then
                iterator = GetPlayerServerId
                cmgCall4 = cmgCall3
                -- Beginner: result below is serverId.
                iterator = iterator(cmgCall4)
                cmgCall4 = NetworkGetNetworkIdFromEntity
                playerPed2 = workValue10
                cmgCall4 = cmgCall4(playerPed2)
                if iterator > 0 and 0 ~= cmgCall4 then
                  playerPed2 = TriggerServerEvent
                  flag28 = "2d2aca0333"
                  flag29 = iterator
                  flag = cmgCall4
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d2aca0333".
                  playerPed2(flag28, flag29, flag)
                end
              end
            end
          end
          iterator = workValue14
          cmgCall4 = textValue3
          iterator(cmgCall4)
        end
      end
      cmgCall3 = numberValue9
      if 0 ~= cmgCall3 then
        cmgCall3 = DecorGetBool
        numberValue10 = numberValue9
        textValue3 = "ddf749d1be"
        cmgCall3 = cmgCall3(numberValue10, textValue3)
        if cmgCall3 then
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.hasClientPermission
          numberValue10 = "nhs.onduty.permission"
          cmgCall3 = cmgCall3(numberValue10)
          if cmgCall3 then
            cmgCall3 = IsPedInVehicle
            numberValue10 = arg1
            textValue3 = numberValue9
            iterator = false
            cmgCall3 = cmgCall3(numberValue10, textValue3, iterator)
            if not cmgCall3 then
              cmgCall3 = flag17
              if not cmgCall3 then
                cmgCall3 = GetWorldPositionOfEntityBone
                numberValue10 = numberValue9
                textValue3 = GetEntityBoneIndexByName
                iterator = numberValue9
                cmgCall4 = "bonnet"
                textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = textValue3(iterator, cmgCall4)
                cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                numberValue10 = DrawMarker
                textValue3 = 1
                iterator = cmgCall3.x
                cmgCall4 = cmgCall3.y
                playerPed2 = cmgCall3.z
                playerPed2 = playerPed2 - 1.75
                flag28 = 0.0
                flag29 = 0.0
                flag = 0.0
                modelHash = 0
                coords = 0.0
                workValue4 = 0.0
                flag5 = 1.5
                flag7 = 1.5
                flag9 = 1.5
                flag12 = 0
                flag14 = 48
                flag15 = 135
                flag18 = 235
                flag19 = false
                flag20 = true
                numberValue7 = 2
                flag22 = false
                workValue6 = nil
                workValue7 = nil
                flag25 = false
                numberValue10(textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                numberValue10 = workValue13
                numberValue10()
                numberValue10 = GetVehicleDoorAngleRatio
                textValue3 = numberValue9
                iterator = 4
                numberValue10 = numberValue10(textValue3, iterator)
                numberValue10 = 0 ~= numberValue10
                if numberValue10 then
                  textValue3 = workValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  textValue3(iterator)
                  textValue3 = IsControlJustReleased
                  iterator = 0
                  cmgCall4 = 300
                  textValue3 = textValue3(iterator, cmgCall4)
                  if textValue3 then
                    textValue3 = CMG
                    textValue3 = textValue3.getNetId
                    iterator = numberValue9
                    cmgCall4 = "Stretchers"
                    textValue3 = textValue3(iterator, cmgCall4)
                    iterator = pairs
                    cmgCall4 = CMG
                    cmgCall4 = cmgCall4.getAllVehicles
                    cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = cmgCall4()
                    iterator, cmgCall4, playerPed2, flag28 = iterator(cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                    for flag29, flag in iterator, cmgCall4, playerPed2, flag28 do
                      modelHash = cmgCall.stretcherModels
                      coords = GetEntityModel
                      workValue4 = flag
                      -- Beginner: result below is modelHash.
                      coords = coords(workValue4)
                      modelHash = modelHash[coords]
                      if modelHash then
                        modelHash = DecorGetInt
                        coords = flag
                        workValue4 = "58fe205294"
                        modelHash = modelHash(coords, workValue4)
                        if modelHash == textValue3 then
                          modelHash = DetachEntity
                          coords = flag
                          workValue4 = true
                          flag5 = false
                          modelHash(coords, workValue4, flag5)
                          modelHash = FreezeEntityPosition
                          coords = flag
                          workValue4 = false
                          -- Beginner: Freeze or unfreeze an entity in place.
                          modelHash(coords, workValue4)
                          modelHash = vector3
                          coords = 0.0
                          workValue4 = -2.0
                          flag5 = 0.0
                          modelHash = modelHash(coords, workValue4, flag5)
                          modelHash = cmgCall3 + modelHash
                          coords = SetEntityCoords
                          workValue4 = flag
                          flag5 = modelHash.x
                          flag7 = modelHash.y
                          flag9 = modelHash.z
                          flag12 = false
                          flag14 = false
                          flag15 = false
                          flag18 = false
                          -- Beginner: Move/teleport an entity to new coordinates.
                          coords(workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18)
                          coords = SetVehicleOnGroundProperly
                          workValue4 = flag
                          coords(workValue4)
                          coords = SetVehicleExtra
                          workValue4 = flag
                          flag5 = 1
                          flag7 = true
                          coords(workValue4, flag5, flag7)
                          coords = SetVehicleExtra
                          workValue4 = flag
                          flag5 = 2
                          flag7 = false
                          coords(workValue4, flag5, flag7)
                          coords = DecorSetInt
                          workValue4 = flag
                          flag5 = "58fe205294"
                          flag7 = 0
                          coords(workValue4, flag5, flag7)
                          coords = NetworkHasControlOfEntity
                          workValue4 = numberValue9
                          coords = coords(workValue4)
                          if coords then
                            coords = DecorSetBool
                            workValue4 = numberValue9
                            flag5 = "ddf749d1be"
                            flag7 = false
                            coords(workValue4, flag5, flag7)
                          else
                            coords = TriggerServerEvent
                            workValue4 = "c15aeb9b9f"
                            flag5 = CMG
                            flag5 = flag5.getNetId
                            flag7 = numberValue9
                            flag9 = "Stretcher"
                            flag5 = flag5(flag7, flag9)
                            flag7 = false
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                            coords(workValue4, flag5, flag7)
                          end
                          coords = tCMG
                          coords = coords.notify
                          workValue4 = "Stretcher taken out."
                          -- Beginner: Show a notification to the player.
                          coords(workValue4)
                          break
                        end
                      end
                    end
                  end
                else
                  textValue3 = workValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Open/close rear door"
                  textValue3(iterator)
                end
              end
            end
          end
        end
      end
      cmgCall3 = IsControlJustReleased
      numberValue10 = 0
      textValue3 = 44
      cmgCall3 = cmgCall3(numberValue10, textValue3)
      if cmgCall3 then
        cmgCall3 = IsEntityPlayingAnim
        numberValue10 = arg1
        textValue3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgCall4 = 3
        cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
        if not cmgCall3 then
          cmgCall3 = flag17
          if not cmgCall3 then
            cmgCall3 = DecorGetInt
            numberValue10 = workValue10
            textValue3 = "58fe205294"
            cmgCall3 = cmgCall3(numberValue10, textValue3)
            if 0 ~= cmgCall3 then
              cmgCall3 = numberValue9
              if nil == cmgCall3 then
                cmgCall3 = 0
              end
              if 0 ~= cmgCall3 then
                numberValue10 = GetVehicleDoorAngleRatio
                textValue3 = cmgCall3
                iterator = 4
                numberValue10 = numberValue10(textValue3, iterator)
                if 0 == numberValue10 then
                  numberValue10 = IsThisModelAHeli
                  textValue3 = GetEntityModel
                  iterator = cmgCall3
                  textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = textValue3(iterator)
                  numberValue10 = numberValue10(textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                end
                if numberValue10 then
                  numberValue10 = workValue11
                  textValue3 = arg1
                  iterator = workValue10
                  numberValue10(textValue3, iterator)
                end
              end
            else
              cmgCall3 = workValue11
              numberValue10 = arg1
              textValue3 = workValue10
              cmgCall3(numberValue10, textValue3)
            end
          end
        end
      end
      cmgCall3 = numberValue9
      if 0 ~= cmgCall3 then
        cmgCall3 = DecorGetBool
        numberValue10 = numberValue9
        textValue3 = "ddf749d1be"
        cmgCall3 = cmgCall3(numberValue10, textValue3)
        if not cmgCall3 then
          cmgCall3 = IsEntityPlayingAnim
          numberValue10 = arg1
          textValue3 = "anim@heists@box_carry@"
          iterator = "idle"
          cmgCall4 = 3
          cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
          if cmgCall3 then
            cmgCall3 = IsPedInVehicle
            numberValue10 = arg1
            textValue3 = numberValue9
            iterator = false
            cmgCall3 = cmgCall3(numberValue10, textValue3, iterator)
            if not cmgCall3 then
              cmgCall3 = GetWorldPositionOfEntityBone
              numberValue10 = numberValue9
              textValue3 = GetEntityBoneIndexByName
              iterator = numberValue9
              cmgCall4 = "bonnet"
              textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = textValue3(iterator, cmgCall4)
              cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
              numberValue10 = DrawMarker
              textValue3 = 1
              iterator = cmgCall3.x
              cmgCall4 = cmgCall3.y
              playerPed2 = cmgCall3.z
              playerPed2 = playerPed2 - 1.75
              flag28 = 0.0
              flag29 = 0.0
              flag = 0.0
              modelHash = 0
              coords = 0.0
              workValue4 = 0.0
              flag5 = 1.5
              flag7 = 1.5
              flag9 = 1.5
              flag12 = 0
              flag14 = 48
              flag15 = 135
              flag18 = 235
              flag19 = false
              flag20 = true
              numberValue7 = 2
              flag22 = false
              workValue6 = nil
              workValue7 = nil
              flag25 = false
              numberValue10(textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
              numberValue10 = workValue13
              numberValue10()
            end
          end
        end
      end
      cmgCall3 = IsControlJustReleased
      numberValue10 = 0
      textValue3 = 191
      cmgCall3 = cmgCall3(numberValue10, textValue3)
      if cmgCall3 then
        cmgCall3 = IsEntityPlayingAnim
        numberValue10 = arg1
        textValue3 = "anim@heists@box_carry@"
        iterator = "idle"
        cmgCall4 = 3
        cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
        if not cmgCall3 then
          cmgCall3 = workValue2
          numberValue10 = workValue10
          cmgCall3(numberValue10)
        end
      end
    end
  end
  arg2 = flag17
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    if 0 == arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      cmgCall3 = "nhs.onduty.permission"
      arg2 = arg2(cmgCall3)
      if arg2 then
        arg2 = workValue12
        cmgCall3 = 5.0
        numberValue10 = cmgCall.ambulanceModels
        arg2 = arg2(cmgCall3, numberValue10)
        if arg2 and 0 ~= arg2 then
          cmgCall3 = DecorGetBool
          numberValue10 = arg2
          textValue3 = "ddf749d1be"
          cmgCall3 = cmgCall3(numberValue10, textValue3)
          if cmgCall3 then
            cmgCall3 = IsPedInVehicle
            numberValue10 = arg1
            textValue3 = arg2
            iterator = false
            cmgCall3 = cmgCall3(numberValue10, textValue3, iterator)
            if not cmgCall3 then
              cmgCall3 = GetWorldPositionOfEntityBone
              numberValue10 = arg2
              textValue3 = GetEntityBoneIndexByName
              iterator = arg2
              cmgCall4 = "bonnet"
              textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = textValue3(iterator, cmgCall4)
              cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
              numberValue10 = GetEntityCoords
              textValue3 = arg1
              -- Beginner: result below is entityCoords.
              numberValue10 = numberValue10(textValue3)
              numberValue10 = numberValue10 - cmgCall3
              numberValue10 = #numberValue10
              if numberValue10 < 4.0 then
                numberValue10 = DrawMarker
                textValue3 = 1
                iterator = cmgCall3.x
                cmgCall4 = cmgCall3.y
                playerPed2 = cmgCall3.z
                playerPed2 = playerPed2 - 1.75
                flag28 = 0.0
                flag29 = 0.0
                flag = 0.0
                modelHash = 0
                coords = 0.0
                workValue4 = 0.0
                flag5 = 1.5
                flag7 = 1.5
                flag9 = 1.5
                flag12 = 0
                flag14 = 48
                flag15 = 135
                flag18 = 235
                flag19 = false
                flag20 = true
                numberValue7 = 2
                flag22 = false
                workValue6 = nil
                workValue7 = nil
                flag25 = false
                numberValue10(textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                numberValue9 = arg2
                numberValue10 = workValue13
                numberValue10()
                numberValue10 = GetVehicleDoorAngleRatio
                textValue3 = arg2
                iterator = 4
                numberValue10 = numberValue10(textValue3, iterator)
                numberValue10 = 0 ~= numberValue10
                if numberValue10 then
                  textValue3 = workValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  textValue3(iterator)
                  textValue3 = IsControlJustReleased
                  iterator = 0
                  cmgCall4 = 300
                  textValue3 = textValue3(iterator, cmgCall4)
                  if textValue3 then
                    textValue3 = CMG
                    textValue3 = textValue3.getNetId
                    iterator = arg2
                    cmgCall4 = "Stretchers"
                    textValue3 = textValue3(iterator, cmgCall4)
                    iterator = pairs
                    cmgCall4 = CMG
                    cmgCall4 = cmgCall4.getAllVehicles
                    cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25 = cmgCall4()
                    iterator, cmgCall4, playerPed2, flag28 = iterator(cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18, flag19, flag20, numberValue7, flag22, workValue6, workValue7, flag25)
                    for flag29, flag in iterator, cmgCall4, playerPed2, flag28 do
                      modelHash = cmgCall.stretcherModels
                      coords = GetEntityModel
                      workValue4 = flag
                      -- Beginner: result below is modelHash.
                      coords = coords(workValue4)
                      modelHash = modelHash[coords]
                      if modelHash then
                        modelHash = DecorGetInt
                        coords = flag
                        workValue4 = "58fe205294"
                        modelHash = modelHash(coords, workValue4)
                        if modelHash == textValue3 then
                          modelHash = DetachEntity
                          coords = flag
                          workValue4 = true
                          flag5 = false
                          modelHash(coords, workValue4, flag5)
                          modelHash = FreezeEntityPosition
                          coords = flag
                          workValue4 = false
                          -- Beginner: Freeze or unfreeze an entity in place.
                          modelHash(coords, workValue4)
                          modelHash = vector3
                          coords = 0.0
                          workValue4 = -2.0
                          flag5 = 0.0
                          modelHash = modelHash(coords, workValue4, flag5)
                          modelHash = cmgCall3 + modelHash
                          coords = SetEntityCoords
                          workValue4 = flag
                          flag5 = modelHash.x
                          flag7 = modelHash.y
                          flag9 = modelHash.z
                          flag12 = false
                          flag14 = false
                          flag15 = false
                          flag18 = false
                          -- Beginner: Move/teleport an entity to new coordinates.
                          coords(workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18)
                          coords = SetVehicleOnGroundProperly
                          workValue4 = flag
                          coords(workValue4)
                          coords = SetVehicleExtra
                          workValue4 = flag
                          flag5 = 1
                          flag7 = true
                          coords(workValue4, flag5, flag7)
                          coords = SetVehicleExtra
                          workValue4 = flag
                          flag5 = 2
                          flag7 = false
                          coords(workValue4, flag5, flag7)
                          coords = DecorSetInt
                          workValue4 = flag
                          flag5 = "58fe205294"
                          flag7 = 0
                          coords(workValue4, flag5, flag7)
                          coords = NetworkHasControlOfEntity
                          workValue4 = arg2
                          coords = coords(workValue4)
                          if coords then
                            coords = DecorSetBool
                            workValue4 = arg2
                            flag5 = "ddf749d1be"
                            flag7 = false
                            coords(workValue4, flag5, flag7)
                          else
                            coords = TriggerServerEvent
                            workValue4 = "c15aeb9b9f"
                            flag5 = CMG
                            flag5 = flag5.getNetId
                            flag7 = arg2
                            flag9 = "Stretcher"
                            flag5 = flag5(flag7, flag9)
                            flag7 = false
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                            coords(workValue4, flag5, flag7)
                          end
                          coords = tCMG
                          coords = coords.notify
                          workValue4 = "Stretcher taken out."
                          -- Beginner: Show a notification to the player.
                          coords(workValue4)
                          break
                        end
                      end
                    end
                  end
                else
                  textValue3 = workValue14
                  iterator = "~INPUT_REPLAY_REWIND~ Open rear door"
                  textValue3(iterator)
                end
              end
            end
          end
        end
      end
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
numberValue2 = workValue3
textValue = "NHS Stretcher"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(numberValue2, textValue)
function cmgCall2(arg1, arg2)
  local cmgCall3, numberValue10
  cmgCall3 = Citizen
  cmgCall3 = cmgCall3.CreateThread
  function numberValue10()
    local networkId, serverEventCall, textValue2, playerPed, flag27, textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26
    networkId = NetworkGetNetworkIdFromEntity
    serverEventCall = arg2
    networkId = networkId(serverEventCall)
    if 0 == networkId then
      return
    end
    serverEventCall = TriggerServerEvent
    textValue2 = "5672bd2d03"
    playerPed = networkId
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5672bd2d03".
    serverEventCall(textValue2, playerPed)
    serverEventCall = AttachEntityToEntity
    textValue2 = arg2
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    flag27 = -1
    textValue4 = -0.05
    numberValue12 = 1.3
    textValue5 = -0.345
    textValue6 = 180.0
    numberValue13 = 180.0
    numberValue = 180.0
    flag2 = false
    flag3 = false
    flag4 = false
    flag6 = true
    flag8 = 0
    flag10 = true
    -- Beginner: Attach one entity to another entity.
    serverEventCall(textValue2, playerPed, flag27, textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10)
    while true do
      serverEventCall = NetworkHasControlOfEntity
      textValue2 = arg2
      serverEventCall = serverEventCall(textValue2)
      if serverEventCall then
        serverEventCall = IsEntityAttachedToEntity
        textValue2 = arg2
        playerPed = arg1
        serverEventCall = serverEventCall(textValue2, playerPed)
        if serverEventCall then
          break
        end
      end
      serverEventCall = Wait
      textValue2 = 0
      serverEventCall(textValue2)
    end
    serverEventCall = SetEntityHeading
    textValue2 = arg1
    playerPed = GetEntityHeading
    flag27 = arg2
    playerPed, flag27, textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = playerPed(flag27)
    -- Beginner: Change the direction an entity is facing.
    serverEventCall(textValue2, playerPed, flag27, textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
    serverEventCall = SetVehicleExtra
    textValue2 = arg2
    playerPed = 1
    flag27 = false
    serverEventCall(textValue2, playerPed, flag27)
    serverEventCall = SetVehicleExtra
    textValue2 = arg2
    playerPed = 2
    flag27 = true
    serverEventCall(textValue2, playerPed, flag27)
    serverEventCall = CMG
    serverEventCall = serverEventCall.loadAnimDict
    textValue2 = "anim@heists@box_carry@"
    -- Beginner: Load a GTA animation dictionary before using it.
    serverEventCall(textValue2)
    serverEventCall = 0
    while true do
      textValue2 = IsEntityAttachedToEntity
      playerPed = arg2
      flag27 = arg1
      textValue2 = textValue2(playerPed, flag27)
      if not textValue2 then
        break
      end
      textValue2 = Citizen
      textValue2 = textValue2.Wait
      playerPed = 0
      textValue2(playerPed)
      textValue2 = IsEntityPlayingAnim
      playerPed = arg1
      flag27 = "anim@heists@box_carry@"
      textValue4 = "idle"
      numberValue12 = 3
      textValue2 = textValue2(playerPed, flag27, textValue4, numberValue12)
      if not textValue2 then
        textValue2 = TaskPlayAnim
        playerPed = arg1
        flag27 = "anim@heists@box_carry@"
        textValue4 = "idle"
        numberValue12 = 8.0
        textValue5 = 8.0
        textValue6 = -1
        numberValue13 = 50
        numberValue = 0
        flag2 = false
        flag3 = false
        flag4 = false
        -- Beginner: Play an animation on a ped.
        textValue2(playerPed, flag27, textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4)
      end
      textValue2 = IsControlJustReleased
      playerPed = 0
      flag27 = 73
      textValue2 = textValue2(playerPed, flag27)
      if not textValue2 then
        textValue2 = IsPedDeadOrDying
        playerPed = arg1
        flag27 = false
        textValue2 = textValue2(playerPed, flag27)
        if not textValue2 then
          goto flow_label_129
        end
      end
      textValue2 = ClearPedTasksImmediately
      playerPed = arg1
      textValue2(playerPed)
      textValue2 = SetVehicleExtra
      playerPed = arg2
      flag27 = 1
      textValue4 = true
      textValue2(playerPed, flag27, textValue4)
      textValue2 = SetVehicleExtra
      playerPed = arg2
      flag27 = 2
      textValue4 = false
      textValue2(playerPed, flag27, textValue4)
      textValue2 = DetachEntity
      playerPed = arg2
      flag27 = true
      textValue4 = false
      textValue2(playerPed, flag27, textValue4)
      textValue2 = SetVehicleOnGroundProperly
      playerPed = arg2
      textValue2(playerPed)
      ::flow_label_129::
      textValue2 = DecorGetInt
      playerPed = arg2
      flag27 = "58fe205294"
      textValue2 = textValue2(playerPed, flag27)
      if 0 ~= textValue2 then
        textValue2 = CMG
        textValue2 = textValue2.getObjectId
        playerPed = DecorGetInt
        flag27 = arg2
        textValue4 = "58fe205294"
        playerPed = playerPed(flag27, textValue4)
        flag27 = "pushStretcher(ped, nearbyStretcher)"
        textValue2 = textValue2(playerPed, flag27)
        if textValue2 then
          playerPed = DecorGetBool
          flag27 = textValue2
          textValue4 = "ddf749d1be"
          playerPed = playerPed(flag27, textValue4)
          if playerPed then
            playerPed = NetworkHasControlOfEntity
            flag27 = textValue2
            playerPed = playerPed(flag27)
            if not playerPed then
              playerPed = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              playerPed = playerPed()
              playerPed = playerPed - serverEventCall
              flag27 = 200
              if playerPed > flag27 then
                playerPed = TriggerServerEvent
                flag27 = "c15aeb9b9f"
                textValue4 = CMG
                textValue4 = textValue4.getNetId
                numberValue12 = textValue2
                textValue5 = "Stretchers"
                textValue4 = textValue4(numberValue12, textValue5)
                numberValue12 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                playerPed(flag27, textValue4, numberValue12)
                playerPed = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                playerPed = playerPed()
                serverEventCall = playerPed
              end
            else
              playerPed = DecorSetBool
              flag27 = textValue2
              textValue4 = "ddf749d1be"
              numberValue12 = false
              playerPed(flag27, textValue4, numberValue12)
            end
          end
        end
      end
      textValue2 = workValue12
      playerPed = 15.0
      flag27 = cmgCall.ambulanceModels
      textValue2 = textValue2(playerPed, flag27)
      numberValue9 = textValue2
      textValue2 = numberValue9
      if nil ~= textValue2 then
        textValue2 = numberValue9
        if 0 ~= textValue2 then
          textValue2 = GetVehicleDoorAngleRatio
          playerPed = numberValue9
          flag27 = 4
          textValue2 = textValue2(playerPed, flag27)
          textValue2 = 0 ~= textValue2
          if not textValue2 then
            playerPed = workValue14
            flag27 = "~INPUT_REPLAY_REWIND~ Open rear door"
            playerPed(flag27)
          else
            playerPed = workValue14
            flag27 = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Put stretcher in"
            playerPed(flag27)
          end
          playerPed = DecorGetBool
          flag27 = numberValue9
          textValue4 = "ddf749d1be"
          playerPed = playerPed(flag27, textValue4)
          if not playerPed then
            flag27 = GetWorldPositionOfEntityBone
            textValue4 = numberValue9
            numberValue12 = GetEntityBoneIndexByName
            textValue5 = numberValue9
            textValue6 = "bonnet"
            numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = numberValue12(textValue5, textValue6)
            flag27 = flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
            textValue4 = DrawMarker
            numberValue12 = 1
            textValue5 = flag27.x
            textValue6 = flag27.y
            numberValue13 = flag27.z
            numberValue13 = numberValue13 - 1.75
            numberValue = 0.0
            flag2 = 0.0
            flag3 = 0.0
            flag4 = 0
            flag6 = 0.0
            flag8 = 0.0
            flag10 = 1.5
            flag13 = 1.5
            numberValue3 = 1.5
            flag16 = 0
            numberValue4 = 48
            numberValue5 = 135
            numberValue6 = 235
            flag21 = false
            flag23 = true
            numberValue8 = 2
            flag24 = false
            workValue8 = nil
            workValue9 = nil
            flag26 = false
            textValue4(numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
          end
          flag27 = IsControlJustReleased
          textValue4 = 0
          numberValue12 = 300
          flag27 = flag27(textValue4, numberValue12)
          if flag27 then
            if not textValue2 then
              flag27 = IsThisModelAHeli
              textValue4 = GetEntityModel
              numberValue12 = numberValue9
              textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = textValue4(numberValue12)
              flag27 = flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
            end
            if flag27 and not playerPed then
              flag27 = ClearPedTasksImmediately
              textValue4 = arg1
              flag27(textValue4)
              flag27 = SetVehicleExtra
              textValue4 = arg2
              numberValue12 = 1
              textValue5 = true
              flag27(textValue4, numberValue12, textValue5)
              flag27 = SetVehicleExtra
              textValue4 = arg2
              numberValue12 = 2
              textValue5 = false
              flag27(textValue4, numberValue12, textValue5)
              flag27 = DetachEntity
              textValue4 = arg2
              numberValue12 = true
              textValue5 = false
              flag27(textValue4, numberValue12, textValue5)
              flag27 = SetVehicleOnGroundProperly
              textValue4 = arg2
              flag27(textValue4)
              flag27 = IsThisModelAHeli
              textValue4 = GetEntityModel
              numberValue12 = numberValue9
              textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = textValue4(numberValue12)
              flag27 = flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
              if flag27 then
                flag27 = AttachEntityToEntity
                textValue4 = arg2
                numberValue12 = numberValue9
                textValue5 = -1
                textValue6 = 0.0
                numberValue13 = 0.0
                numberValue = 0.0
                flag2 = 0.0
                flag3 = 0.0
                flag4 = 0.0
                flag6 = false
                flag8 = false
                flag10 = false
                flag13 = false
                numberValue3 = 0.0
                flag16 = true
                -- Beginner: Attach one entity to another entity.
                flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16)
              else
                flag27 = AttachEntityToEntity
                textValue4 = arg2
                numberValue12 = numberValue9
                textValue5 = GetEntityBoneIndexByName
                textValue6 = numberValue9
                numberValue13 = "engine"
                textValue5 = textValue5(textValue6, numberValue13)
                textValue6 = 0.0
                numberValue13 = -3.0
                numberValue = -1.0
                flag2 = 0.0
                flag3 = 0.0
                flag4 = 0.0
                flag6 = false
                flag8 = false
                flag10 = false
                flag13 = false
                numberValue3 = 0.0
                flag16 = true
                flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16)
              end
              flag27 = NetworkHasControlOfEntity
              textValue4 = numberValue9
              flag27 = flag27(textValue4)
              if not flag27 then
                flag27 = TriggerServerEvent
                textValue4 = "c15aeb9b9f"
                numberValue12 = CMG
                numberValue12 = numberValue12.getNetId
                textValue5 = numberValue9
                textValue6 = "Stretcher"
                numberValue12 = numberValue12(textValue5, textValue6)
                textValue5 = true
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c15aeb9b9f".
                flag27(textValue4, numberValue12, textValue5)
              else
                flag27 = DecorSetBool
                textValue4 = numberValue9
                numberValue12 = "ddf749d1be"
                textValue5 = true
                flag27(textValue4, numberValue12, textValue5)
              end
              flag27 = NetworkHasControlOfEntity
              textValue4 = arg2
              flag27 = flag27(textValue4)
              if not flag27 then
                flag27 = workValue10
                if flag27 then
                  flag27 = TriggerServerEvent
                  textValue4 = "91ad572dcd"
                  numberValue12 = CMG
                  numberValue12 = numberValue12.getNetId
                  textValue5 = workValue10
                  textValue6 = "Stretchers"
                  numberValue12 = numberValue12(textValue5, textValue6)
                  textValue5 = CMG
                  textValue5 = textValue5.getNetId
                  textValue6 = numberValue9
                  numberValue13 = "Stretchers"
                  textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = textValue5(textValue6, numberValue13)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91ad572dcd".
                  flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
                end
              else
                flag27 = DecorSetInt
                textValue4 = arg2
                numberValue12 = "58fe205294"
                textValue5 = CMG
                textValue5 = textValue5.getNetId
                textValue6 = numberValue9
                numberValue13 = "Stretchers"
                textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26 = textValue5(textValue6, numberValue13)
                flag27(textValue4, numberValue12, textValue5, textValue6, numberValue13, numberValue, flag2, flag3, flag4, flag6, flag8, flag10, flag13, numberValue3, flag16, numberValue4, numberValue5, numberValue6, flag21, flag23, numberValue8, flag24, workValue8, workValue9, flag26)
              end
              flag27 = FreezeEntityPosition
              textValue4 = arg2
              numberValue12 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              flag27(textValue4, numberValue12)
            end
          end
        end
      end
    end
    textValue2 = RemoveAnimDict
    playerPed = "anim@heists@box_carry@"
    textValue2(playerPed)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall3(numberValue10)
end
workValue11 = cmgCall2
cmgCall2 = RegisterNetEvent
numberValue2 = "5672bd2d03"
-- Beginner: this function handles network event "5672bd2d03".
function textValue(arg1, arg2)
  local cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18
  cmgCall3 = NetworkDoesNetworkIdExist
  numberValue10 = arg1
  cmgCall3 = cmgCall3(numberValue10)
  if not cmgCall3 then
    return
  end
  cmgCall3 = NetworkGetEntityFromNetworkId
  numberValue10 = arg1
  cmgCall3 = cmgCall3(numberValue10)
  numberValue10 = GetPlayerFromServerId
  textValue3 = arg2
  -- Beginner: result below is playerIndex.
  numberValue10 = numberValue10(textValue3)
  if 0 == cmgCall3 or -1 == numberValue10 then
    return
  end
  textValue3 = GetPlayerPed
  iterator = numberValue10
  -- Beginner: result below is playerPed.
  textValue3 = textValue3(iterator)
  if 0 == textValue3 then
    return
  end
  iterator = AttachEntityToEntity
  cmgCall4 = cmgCall3
  playerPed2 = textValue3
  flag28 = -1
  flag29 = -0.05
  flag = 1.3
  modelHash = -0.345
  coords = 180.0
  workValue4 = 180.0
  flag5 = 180.0
  flag7 = false
  flag9 = false
  flag12 = false
  flag14 = true
  flag15 = 0
  flag18 = true
  -- Beginner: Attach one entity to another entity.
  iterator(cmgCall4, playerPed2, flag28, flag29, flag, modelHash, coords, workValue4, flag5, flag7, flag9, flag12, flag14, flag15, flag18)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5672bd2d03".
cmgCall2(numberValue2, textValue)
cmgCall2 = 0
numberValue2 = RegisterCommand
textValue = "stretcher"
-- Beginner: this function is the command handler for "stretcher".
function workValue5()
  local arg1, arg2, cmgCall3, numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = cmgCall2
    arg1 = arg1 - arg2
    arg2 = 10000
    if arg1 > arg2 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      cmgCall2 = arg1
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = CMG
      arg2 = arg2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg2 = arg2()
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.loadModel
      numberValue10 = -665859588
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgCall3(numberValue10)
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.requestEntitySpawn
      numberValue10 = "stretcher"
      cmgCall3(numberValue10)
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.spawnVehicle
      numberValue10 = -665859588
      textValue3 = arg2.x
      iterator = arg2.y
      cmgCall4 = arg2.z
      playerPed2 = GetEntityHeading
      flag28 = arg1
      -- Beginner: result below is heading.
      playerPed2 = playerPed2(flag28)
      flag28 = false
      flag29 = true
      flag = true
      cmgCall3 = cmgCall3(numberValue10, textValue3, iterator, cmgCall4, playerPed2, flag28, flag29, flag)
      numberValue10 = SetVehicleDoorsLocked
      textValue3 = cmgCall3
      iterator = 2
      numberValue10(textValue3, iterator)
      numberValue10 = SetVehicleOnGroundProperly
      textValue3 = cmgCall3
      numberValue10(textValue3)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 7
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 6
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 5
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 3
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 1
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 2
      cmgCall4 = false
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 11
      cmgCall4 = false
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetVehicleExtra
      textValue3 = cmgCall3
      iterator = 12
      cmgCall4 = true
      numberValue10(textValue3, iterator, cmgCall4)
      numberValue10 = SetModelAsNoLongerNeeded
      textValue3 = -665859588
      numberValue10(textValue3)
      numberValue10 = tCMG
      numberValue10 = numberValue10.notify
      textValue3 = "Stretcher created."
      -- Beginner: Show a notification to the player.
      numberValue10(textValue3)
    end
  end
end
flag11 = false
-- Beginner: Register a chat/console command. Event/command: "stretcher".
numberValue2(textValue, workValue5, flag11)
numberValue2 = RegisterCommand
textValue = "removestretcher"
-- Beginner: this function is the command handler for "removestretcher".
function workValue5()
  local arg1, arg2, cmgCall3, numberValue10, textValue3, iterator
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = workValue12
    arg2 = 5.0
    cmgCall3 = cmgCall.stretcherModels
    arg1 = arg1(arg2, cmgCall3)
    if nil ~= arg1 then
      arg2 = TriggerServerEvent
      cmgCall3 = "2bfff324f7"
      numberValue10 = CMG
      numberValue10 = numberValue10.getNetId
      textValue3 = arg1
      iterator = "Stretchers"
      numberValue10, textValue3, iterator = numberValue10(textValue3, iterator)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bfff324f7".
      arg2(cmgCall3, numberValue10, textValue3, iterator)
    end
  end
end
flag11 = false
-- Beginner: Register a chat/console command. Event/command: "removestretcher".
numberValue2(textValue, workValue5, flag11)
numberValue2 = RegisterNetEvent
textValue = "0a9884b220"
-- Beginner: this function handles network event "0a9884b220".
function workValue5(arg1, arg2)
  local cmgCall3, numberValue10, textValue3, iterator, cmgCall4
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getObjectId
  numberValue10 = arg1
  textValue3 = "0a9884b220"
  cmgCall3 = cmgCall3(numberValue10, textValue3)
  if cmgCall3 then
    numberValue10 = DecorSetInt
    textValue3 = cmgCall3
    iterator = "58fe205294"
    cmgCall4 = arg2
    numberValue10(textValue3, iterator, cmgCall4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0a9884b220".
numberValue2(textValue, workValue5)
numberValue2 = RegisterNetEvent
textValue = "5f63e7b654"
-- Beginner: this function handles network event "5f63e7b654".
function workValue5(arg1, arg2)
  local cmgCall3, numberValue10, textValue3, iterator, cmgCall4
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getObjectId
  numberValue10 = arg1
  textValue3 = "5f63e7b654"
  cmgCall3 = cmgCall3(numberValue10, textValue3)
  if cmgCall3 then
    numberValue10 = DecorSetBool
    textValue3 = cmgCall3
    iterator = "ddf749d1be"
    cmgCall4 = arg2
    numberValue10(textValue3, iterator, cmgCall4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5f63e7b654".
numberValue2(textValue, workValue5)
numberValue2 = RegisterNetEvent
textValue = "48c58592c1"
-- Beginner: this function handles network event "48c58592c1".
function workValue5(arg1)
  local arg2, cmgCall3, numberValue10, textValue3, iterator, cmgCall4
  arg2 = CMG
  arg2 = arg2.getObjectId
  cmgCall3 = arg1
  numberValue10 = "48c58592c1"
  arg2 = arg2(cmgCall3, numberValue10)
  cmgCall3 = GetVehicleDoorAngleRatio
  numberValue10 = arg2
  textValue3 = 4
  cmgCall3 = cmgCall3(numberValue10, textValue3)
  if 0 == cmgCall3 then
    cmgCall3 = GetVehicleDoorAngleRatio
    numberValue10 = arg2
    textValue3 = 3
    cmgCall3 = cmgCall3(numberValue10, textValue3)
    if 0 == cmgCall3 then
      goto flow_label_32
    end
  end
  cmgCall3 = SetVehicleDoorShut
  numberValue10 = arg2
  textValue3 = 3
  iterator = false
  cmgCall3(numberValue10, textValue3, iterator)
  cmgCall3 = Wait
  numberValue10 = 500
  cmgCall3(numberValue10)
  cmgCall3 = SetVehicleDoorShut
  numberValue10 = arg2
  textValue3 = 4
  iterator = false
  cmgCall3(numberValue10, textValue3, iterator)
  goto flow_label_47
  ::flow_label_32::
  cmgCall3 = SetVehicleDoorOpen
  numberValue10 = arg2
  textValue3 = 4
  iterator = false
  cmgCall4 = false
  cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
  cmgCall3 = Wait
  numberValue10 = 500
  cmgCall3(numberValue10)
  cmgCall3 = SetVehicleDoorOpen
  numberValue10 = arg2
  textValue3 = 3
  iterator = false
  cmgCall4 = false
  cmgCall3(numberValue10, textValue3, iterator, cmgCall4)
  ::flow_label_47::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48c58592c1".
numberValue2(textValue, workValue5)
numberValue2 = CMG
function textValue()
  local arg1, arg2
  arg1 = flag17
  return arg1
end
numberValue2.isUsingStretcher = textValue
numberValue2 = RegisterNetEvent
textValue = "2d2aca0333"
-- Beginner: this function handles network event "2d2aca0333".
function workValue5(arg1)
  local arg2, cmgCall3, numberValue10, textValue3
  arg2 = NetworkDoesNetworkIdExist
  cmgCall3 = arg1
  arg2 = arg2(cmgCall3)
  if not arg2 then
    return
  end
  arg2 = NetworkGetEntityFromNetworkId
  cmgCall3 = arg1
  arg2 = arg2(cmgCall3)
  if 0 ~= arg2 then
    cmgCall3 = DoesEntityExist
    numberValue10 = arg2
    cmgCall3 = cmgCall3(numberValue10)
    if cmgCall3 then
      cmgCall3 = workValue2
      numberValue10 = arg2
      textValue3 = 2
      cmgCall3(numberValue10, textValue3)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2d2aca0333".
numberValue2(textValue, workValue5)