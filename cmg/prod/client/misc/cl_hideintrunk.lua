--[[
    Beginner Guide: cl_hideintrunk.lua
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
    BEGINNER GUIDE — Hideintrunk
    ============================

    File: cmg/prod/client/misc/cl_hideintrunk.lua
    Purpose: This file contains general gameplay utility.

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

    Network/hash identifiers found: 2
      They are intentionally left unchanged because matching server code may use them.
      * 6297bbdeaf
      * 1cfec3255e

    Named framework/network events found:
      * CarryPeople:cl_stop

    Example player-facing text in this file:
      * ~s~~INPUT_FRONTEND_RRIGHT~ To exit the boot.
      * ~r~Vehicle is locked, cannot get in boot.
      * ~r~Vehicle is locked, cannot get out of boot.
      * ~r~You and the vehicle must remain stationary to get in.
      * ~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to place carried player inside the boot.

]]
local dataTable, flag6, textValue2, textValue3, workValue8, flag15, flag16, cmgCall4, workValue9, eventRegistration, textValue, workValue3
dataTable = {}
dataTable[0] = true
dataTable[1] = true
dataTable[2] = true
dataTable[3] = true
dataTable[4] = true
dataTable[5] = true
dataTable[6] = true
dataTable[9] = true
dataTable[11] = true
dataTable[12] = true
dataTable[17] = true
dataTable[18] = true
flag6 = false
textValue2 = "fin_ext_p1-7"
textValue3 = "cs_devin_dual-7"
function workValue8()
  local arg1, arg2, cmgCall, playerPed, cmgCall2, cmgCall3, flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue
  arg1 = GetActivePlayers
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  cmgCall = pairs
  playerPed = arg1
  cmgCall, playerPed, cmgCall2, cmgCall3 = cmgCall(playerPed)
  for flag17, numberValue6 in cmgCall, playerPed, cmgCall2, cmgCall3 do
    playerPed2 = GetPlayerPed
    coords = numberValue6
    -- Beginner: result below is playerPed.
    playerPed2 = playerPed2(coords)
    coords = GetEntityCoords
    workValue2 = playerPed2
    -- Beginner: result below is entityCoords.
    coords = coords(workValue2)
    workValue2 = arg2 - coords
    workValue2 = #workValue2
    if workValue2 < 5 then
      flag = IsEntityPlayingAnim
      flag2 = playerPed2
      flag3 = textValue2
      workValue4 = textValue3
      numberValue = 3
      flag = flag(flag2, flag3, workValue4, numberValue)
      if flag then
        flag = true
        return flag
      end
    end
  end
  cmgCall = false
  return cmgCall
end
flag15 = false
flag16 = false
cmgCall4 = CMG
function workValue9()
  local arg1, arg2
  arg1 = flag15
  return arg1
end
cmgCall4.isPlayerHidingInBoot = workValue9
function cmgCall4(arg1, arg2)
  local cmgCall, playerPed, cmgCall2
  cmgCall = CMG
  cmgCall = cmgCall.isHandcuffed
  cmgCall = cmgCall()
  if not cmgCall then
    cmgCall = tCMG
    cmgCall = cmgCall.isTazed
    cmgCall = cmgCall()
    if not cmgCall then
      goto flow_label_13
    end
  end
  cmgCall = false
  return cmgCall
  ::flow_label_13::
  cmgCall = GetEntitySpeed
  playerPed = PlayerPedId
  playerPed, cmgCall2 = playerPed()
  -- Beginner: result below is speed.
  cmgCall = cmgCall(playerPed, cmgCall2)
  playerPed = GetEntitySpeed
  cmgCall2 = arg1
  -- Beginner: result below is speed.
  playerPed = playerPed(cmgCall2)
  if not (cmgCall > 1.0) then
    cmgCall2 = 2.5
    if not (playerPed > cmgCall2) then
      goto flow_label_27
    end
  end
  cmgCall2 = false
  return cmgCall2
  ::flow_label_27::
  if arg2 then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgCall2 = cmgCall2()
    cmgCall2 = cmgCall2 - arg2
    cmgCall2 = #cmgCall2
    if cmgCall2 > 1.0 then
      cmgCall2 = false
      return cmgCall2
    end
  end
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerCombatTimer
  cmgCall2 = cmgCall2()
  if cmgCall2 > 0 then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.isPlayerInRedZone
    cmgCall2 = cmgCall2()
    if cmgCall2 then
      cmgCall2 = false
      return cmgCall2
    end
  end
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.isDrawingInventoryUI
  cmgCall2 = cmgCall2()
  if cmgCall2 then
    cmgCall2 = false
    return cmgCall2
  end
  cmgCall2 = true
  return cmgCall2
end
function workValue9(arg1, arg2)
  local cmgCall, playerPed, cmgCall2, cmgCall3, flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10
  cmgCall = true
  flag6 = cmgCall
  cmgCall = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  playerPed = GetVehicleDoorLockStatus
  cmgCall2 = arg1
  playerPed = playerPed(cmgCall2)
  cmgCall2 = workValue8
  cmgCall2 = cmgCall2()
  if not cmgCall2 then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.isDrawingInventoryUI
    cmgCall2 = cmgCall2()
    if not cmgCall2 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      cmgCall2 = cmgCall2()
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.startCircularProgressBar
      flag17 = ""
      numberValue6 = 2000
      playerPed2 = nil
      function coords()
        local workValue, workValue5
      end
      cmgCall3(flag17, numberValue6, playerPed2, coords)
      cmgCall3 = cmgCall4
      flag17 = arg1
      numberValue6 = cmgCall2
      cmgCall3 = cmgCall3(flag17, numberValue6)
      if cmgCall3 then
        if playerPed <= 1 then
          cmgCall3 = tCMG
          cmgCall3 = cmgCall3.setCanAnim
          flag17 = false
          cmgCall3(flag17)
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.setWeapon
          flag17 = cmgCall
          numberValue6 = -1569615261
          playerPed2 = true
          cmgCall3(flag17, numberValue6, playerPed2)
          cmgCall3 = true
          flag15 = cmgCall3
          cmgCall3 = GetEntityCoords
          flag17 = PlayerPedId
          flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10 = flag17()
          -- Beginner: result below is entityCoords.
          cmgCall3 = cmgCall3(flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10)
          flag17 = CreateCam
          numberValue6 = "DEFAULT_SCRIPTED_CAMERA"
          playerPed2 = true
          -- Beginner: result below is cameraHandle.
          flag17 = flag17(numberValue6, playerPed2)
          numberValue6 = SetCamCoord
          playerPed2 = flag17
          coords = cmgCall3.x
          workValue2 = cmgCall3.x
          flag = cmgCall3.z
          numberValue6(playerPed2, coords, workValue2, flag)
          numberValue6 = PointCamAtEntity
          playerPed2 = flag17
          coords = arg1
          workValue2 = 0.0
          flag = 0.0
          flag2 = 0.0
          flag3 = false
          numberValue6(playerPed2, coords, workValue2, flag, flag2, flag3)
          numberValue6 = SetCamActive
          playerPed2 = flag17
          coords = true
          numberValue6(playerPed2, coords)
          numberValue6 = RenderScriptCams
          playerPed2 = true
          coords = false
          workValue2 = 0
          flag = true
          flag2 = true
          numberValue6(playerPed2, coords, workValue2, flag, flag2)
          numberValue6 = SetCamCoord
          playerPed2 = flag17
          coords = cmgCall3.x
          workValue2 = cmgCall3.x
          flag = cmgCall3.z
          numberValue6(playerPed2, coords, workValue2, flag)
          numberValue6 = AttachCamToEntity
          playerPed2 = flag17
          coords = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          coords = coords()
          workValue2 = 0.0
          flag = -2.5
          flag2 = 1.0
          flag3 = true
          numberValue6(playerPed2, coords, workValue2, flag, flag2, flag3)
          numberValue6 = SetCamRot
          playerPed2 = flag17
          coords = -30.0
          workValue2 = 0.0
          flag = GetEntityHeading
          flag2 = PlayerPedId
          flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10 = flag2()
          -- Beginner: result below is heading.
          flag = flag(flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10)
          flag2 = 0
          numberValue6(playerPed2, coords, workValue2, flag, flag2)
          numberValue6 = SetVehicleDoorOpen
          playerPed2 = arg1
          coords = 5
          workValue2 = false
          flag = false
          numberValue6(playerPed2, coords, workValue2, flag)
          numberValue6 = RaiseConvertibleRoof
          playerPed2 = arg1
          coords = false
          numberValue6(playerPed2, coords)
          numberValue6 = GetModelDimensions
          playerPed2 = GetEntityModel
          coords = arg1
          playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10 = playerPed2(coords)
          numberValue6, playerPed2 = numberValue6(playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10)
          coords = AttachEntityToEntity
          workValue2 = cmgCall
          flag = arg1
          flag2 = 0
          flag3 = -0.1
          workValue4 = numberValue6.y
          workValue4 = workValue4 + 0.85
          numberValue = playerPed2.z
          numberValue = numberValue - 0.87
          numberValue2 = 0
          numberValue3 = 0
          flag4 = 40.0
          flag5 = true
          flag7 = true
          flag8 = true
          flag9 = true
          numberValue4 = 1
          flag10 = true
          -- Beginner: Attach one entity to another entity.
          coords(workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10)
          coords = ClearPedTasksImmediately
          workValue2 = cmgCall
          coords(workValue2)
          coords = Wait
          workValue2 = 100
          coords(workValue2)
          coords = CMG
          coords = coords.loadAnimDict
          workValue2 = textValue2
          -- Beginner: Load a GTA animation dictionary before using it.
          coords(workValue2)
          coords = TaskPlayAnim
          workValue2 = cmgCall
          flag = textValue2
          flag2 = textValue3
          flag3 = 1.0
          workValue4 = -1
          numberValue = -1
          numberValue2 = 1
          numberValue3 = 0
          flag4 = false
          flag5 = false
          flag7 = false
          -- Beginner: Play an animation on a ped.
          coords(workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7)
          coords = RemoveAnimDict
          workValue2 = textValue2
          coords(workValue2)
          coords = Wait
          workValue2 = 1000
          coords(workValue2)
          coords = SetVehicleDoorShut
          workValue2 = arg1
          flag = 5
          flag2 = false
          coords(workValue2, flag, flag2)
          coords = DestroyCam
          workValue2 = flag17
          flag = false
          coords(workValue2, flag)
          coords = RenderScriptCams
          workValue2 = false
          flag = false
          flag2 = 1
          flag3 = true
          workValue4 = true
          coords(workValue2, flag, flag2, flag3, workValue4)
          coords = true
          flag16 = coords
          coords = drawNativeNotification
          workValue2 = "~s~~INPUT_FRONTEND_RRIGHT~ To exit the boot."
          -- Beginner: Show a GTA-style notification/help prompt.
          coords(workValue2)
          coords = true
          while coords do
            workValue2 = flag15
            if not workValue2 then
              break
            end
            workValue2 = DisableAllControlActions
            flag = 0
            workValue2(flag)
            workValue2 = DisableAllControlActions
            flag = 1
            workValue2(flag)
            workValue2 = DisableAllControlActions
            flag = 2
            workValue2(flag)
            workValue2 = EnableControlAction
            flag = 0
            flag2 = 0
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = EnableControlAction
            flag = 0
            flag2 = 249
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = EnableControlAction
            flag = 2
            flag2 = 1
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = EnableControlAction
            flag = 2
            flag2 = 2
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = EnableControlAction
            flag = 0
            flag2 = 177
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = EnableControlAction
            flag = 0
            flag2 = 200
            flag3 = true
            workValue2(flag, flag2, flag3)
            workValue2 = IsDisabledControlPressed
            flag = 0
            flag2 = 177
            workValue2 = workValue2(flag, flag2)
            if workValue2 then
              workValue2 = GetVehicleDoorLockStatus
              flag = arg1
              workValue2 = workValue2(flag)
              if workValue2 <= 1 then
                coords = false
              else
                workValue2 = tCMG
                workValue2 = workValue2.notify
                flag = "~r~Vehicle is locked, cannot get in boot."
                -- Beginner: Show a notification to the player.
                workValue2(flag)
              end
            end
            workValue2 = DoesEntityExist
            flag = arg1
            workValue2 = workValue2(flag)
            if not workValue2 then
              coords = false
            end
            workValue2 = GetEntityHealth
            flag = cmgCall
            -- Beginner: result below is health.
            workValue2 = workValue2(flag)
            if workValue2 <= 102 and not arg2 then
              coords = false
            end
            workValue2 = IsEntityPlayingAnim
            flag = cmgCall
            flag2 = textValue2
            flag3 = textValue3
            workValue4 = 3
            workValue2 = workValue2(flag, flag2, flag3, workValue4)
            if not workValue2 then
              workValue2 = TaskPlayAnim
              flag = cmgCall
              flag2 = textValue2
              flag3 = textValue3
              workValue4 = 1.0
              numberValue = -1
              numberValue2 = -1
              numberValue3 = 1
              flag4 = 0
              flag5 = false
              flag7 = false
              flag8 = false
              -- Beginner: Play an animation on a ped.
              workValue2(flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8)
            end
            workValue2 = Wait
            flag = 0
            workValue2(flag)
          end
          workValue2 = false
          flag15 = workValue2
          workValue2 = DetachEntity
          flag = cmgCall
          flag2 = true
          flag3 = true
          workValue2(flag, flag2, flag3)
          workValue2 = SetEntityVisible
          flag = cmgCall
          flag2 = true
          flag3 = true
          workValue2(flag, flag2, flag3)
          workValue2 = ClearAllHelpMessages
          workValue2()
          workValue2 = ClearPedTasks
          flag = PlayerPedId
          flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10 = flag()
          workValue2(flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10)
          workValue2 = SetVehicleDoorOpen
          flag = arg1
          flag2 = 5
          flag3 = false
          workValue4 = false
          workValue2(flag, flag2, flag3, workValue4)
          workValue2 = tCMG
          workValue2 = workValue2.setCanAnim
          flag = true
          workValue2(flag)
          workValue2 = Wait
          flag = 1000
          workValue2(flag)
          workValue2 = SetVehicleDoorShut
          flag = arg1
          flag2 = 5
          flag3 = false
          workValue2(flag, flag2, flag3)
        else
          cmgCall3 = tCMG
          cmgCall3 = cmgCall3.notify
          flag17 = "~r~Vehicle is locked, cannot get out of boot."
          -- Beginner: Show a notification to the player.
          cmgCall3(flag17)
        end
      else
        cmgCall3 = tCMG
        cmgCall3 = cmgCall3.notify
        flag17 = "~r~You and the vehicle must remain stationary to get in."
        cmgCall3(flag17)
      end
  end
  else
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.notify
    cmgCall3 = "~r~Someone is already in this boot."
    -- Beginner: Show a notification to the player.
    cmgCall2(cmgCall3)
  end
  cmgCall2 = false
  flag6 = cmgCall2
end
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread
function textValue()
  local arg1, arg2, cmgCall, playerPed, cmgCall2, cmgCall3, flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10, flag11, flag12, numberValue5, flag13, workValue6, workValue7, flag14
  arg1 = 250
  while true do
    arg2 = Citizen
    arg2 = arg2.Wait
    cmgCall = arg1
    arg2(cmgCall)
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    cmgCall = CMG
    cmgCall = cmgCall.getClosestVehicle
    playerPed = 7.0
    cmgCall = cmgCall(playerPed)
    playerPed = GetVehicleClass
    cmgCall2 = cmgCall
    playerPed = playerPed(cmgCall2)
    if 0 == arg2 then
      cmgCall2 = dataTable
      cmgCall2 = cmgCall2[playerPed]
      if cmgCall2 then
        cmgCall2 = GetEntityHealth
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.getPlayerPed
        cmgCall3, flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10, flag11, flag12, numberValue5, flag13, workValue6, workValue7, flag14 = cmgCall3()
        -- Beginner: result below is health.
        cmgCall2 = cmgCall2(cmgCall3, flag17, numberValue6, playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10, flag11, flag12, numberValue5, flag13, workValue6, workValue7, flag14)
        if cmgCall2 > 102 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.isNoClipActive
          cmgCall2 = cmgCall2()
          if not cmgCall2 then
            cmgCall2 = flag6
            if not cmgCall2 then
              cmgCall2 = CMG
              cmgCall2 = cmgCall2.isPlayerInBankHeistSetup
              cmgCall2 = cmgCall2()
              if not cmgCall2 then
                if cmgCall and 0 ~= cmgCall then
                  arg1 = 0
                  cmgCall2 = GetEntityBoneIndexByName
                  cmgCall3 = cmgCall
                  flag17 = "boot"
                  cmgCall2 = cmgCall2(cmgCall3, flag17)
                  cmgCall3 = GetWorldPositionOfEntityBone
                  flag17 = cmgCall
                  numberValue6 = cmgCall2
                  cmgCall3 = cmgCall3(flag17, numberValue6)
                  flag17 = CMG
                  flag17 = flag17.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  flag17 = flag17()
                  flag17 = cmgCall3 - flag17
                  flag17 = #flag17
                  if flag17 < 2 then
                    numberValue6 = NetworkGetEntityIsNetworked
                    playerPed2 = cmgCall
                    numberValue6 = numberValue6(playerPed2)
                    if numberValue6 then
                      numberValue6 = CMG
                      numberValue6 = numberValue6.isInTutorial
                      numberValue6 = numberValue6()
                      if not numberValue6 then
                        numberValue6 = DrawMarker
                        playerPed2 = 0
                        coords = cmgCall3.x
                        workValue2 = cmgCall3.y
                        flag = cmgCall3.z
                        flag2 = 0.0
                        flag3 = 0.0
                        workValue4 = 0.0
                        numberValue = 0.0
                        numberValue2 = 0.0
                        numberValue3 = 0.0
                        flag4 = 0.3
                        flag5 = 0.3
                        flag7 = 0.3
                        flag8 = 0
                        flag9 = 255
                        numberValue4 = 150
                        flag10 = 255
                        flag11 = true
                        flag12 = false
                        numberValue5 = 2
                        flag13 = false
                        workValue6 = nil
                        workValue7 = nil
                        flag14 = false
                        numberValue6(playerPed2, coords, workValue2, flag, flag2, flag3, workValue4, numberValue, numberValue2, numberValue3, flag4, flag5, flag7, flag8, flag9, numberValue4, flag10, flag11, flag12, numberValue5, flag13, workValue6, workValue7, flag14)
                        numberValue6 = true
                        flag16 = numberValue6
                        numberValue6 = CMG
                        numberValue6 = numberValue6.isCarrying
                        numberValue6 = numberValue6()
                        if numberValue6 then
                          numberValue6 = drawNativeNotification
                          playerPed2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to place carried player inside the boot."
                          -- Beginner: Show a GTA-style notification/help prompt.
                          numberValue6(playerPed2)
                        else
                          numberValue6 = drawNativeNotification
                          playerPed2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to get inside the boot."
                          numberValue6(playerPed2)
                        end
                        numberValue6 = IsDisabledControlJustReleased
                        playerPed2 = 1
                        coords = 137
                        numberValue6 = numberValue6(playerPed2, coords)
                        if numberValue6 then
                          numberValue6 = cmgCall4
                          playerPed2 = cmgCall
                          numberValue6 = numberValue6(playerPed2)
                          if numberValue6 then
                            numberValue6 = CMG
                            numberValue6 = numberValue6.isCarrying
                            numberValue6 = numberValue6()
                            if numberValue6 then
                              numberValue6 = CMG
                              numberValue6 = numberValue6.getCarryingPlayerSrc
                              numberValue6 = numberValue6()
                              if 0 ~= numberValue6 then
                                playerPed2 = NetworkGetNetworkIdFromEntity
                                coords = cmgCall
                                playerPed2 = playerPed2(coords)
                                if 0 ~= playerPed2 and playerPed2 ~= cmgCall then
                                  coords = TriggerEvent
                                  workValue2 = "CarryPeople:cl_stop"
                                  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CarryPeople:cl_stop".
                                  coords(workValue2)
                                  coords = TriggerServerEvent
                                  workValue2 = "6297bbdeaf"
                                  flag = numberValue6
                                  flag2 = playerPed2
                                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6297bbdeaf".
                                  coords(workValue2, flag, flag2)
                                end
                              end
                            else
                              numberValue6 = workValue9
                              playerPed2 = cmgCall
                              coords = false
                              numberValue6(playerPed2, coords)
                            end
                          end
                        end
                    end
                  end
                  else
                    numberValue6 = flag16
                    if numberValue6 then
                      numberValue6 = ClearHelp
                      playerPed2 = true
                      numberValue6(playerPed2)
                      numberValue6 = false
                      flag16 = numberValue6
                    end
                  end
                else
                  arg1 = 250
                end
              end
            end
          end
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue)
eventRegistration = RegisterNetEvent
textValue = "1cfec3255e"
-- Beginner: this function handles network event "1cfec3255e".
function workValue3()
  local arg1, arg2
  arg1 = false
  flag15 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1cfec3255e".
eventRegistration(textValue, workValue3)
eventRegistration = RegisterNetEvent
textValue = "6297bbdeaf"
-- Beginner: this function handles network event "6297bbdeaf".
function workValue3(arg1)
  local arg2, cmgCall, playerPed, cmgCall2
  arg2 = CMG
  arg2 = arg2.isCarrying
  arg2 = arg2()
  if not arg2 then
    return
  end
  arg2 = TriggerEvent
  cmgCall = "CarryPeople:cl_stop"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CarryPeople:cl_stop".
  arg2(cmgCall)
  arg2 = NetworkDoesNetworkIdExist
  cmgCall = arg1
  arg2 = arg2(cmgCall)
  if not arg2 then
    return
  end
  arg2 = NetworkGetEntityFromNetworkId
  cmgCall = arg1
  arg2 = arg2(cmgCall)
  if 0 ~= arg2 then
    cmgCall = IsEntityAVehicle
    playerPed = arg2
    cmgCall = cmgCall(playerPed)
    if cmgCall then
      goto flow_label_27
    end
  end
  return
  ::flow_label_27::
  cmgCall = GetEntityCoords
  playerPed = arg2
  cmgCall2 = true
  -- Beginner: result below is entityCoords.
  cmgCall = cmgCall(playerPed, cmgCall2)
  playerPed = CMG
  playerPed = playerPed.getPlayerCoords
  -- Beginner: result below is playerCoords.
  playerPed = playerPed()
  cmgCall = cmgCall - playerPed
  cmgCall = #cmgCall
  if cmgCall > 15.0 then
    return
  end
  cmgCall = workValue9
  playerPed = arg2
  cmgCall2 = true
  cmgCall(playerPed, cmgCall2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6297bbdeaf".
eventRegistration(textValue, workValue3)