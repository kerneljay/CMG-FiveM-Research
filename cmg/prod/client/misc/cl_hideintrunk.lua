--[[
    LEVEL 1 BEGINNER GUIDE — Hideintrunk
    =========================================

    File: cmg/prod/client/misc/cl_hideintrunk.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Hideintrunk feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 1
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
local dataCollection, stateFlag6, text2, text3, workingValue8, stateFlag15, stateFlag16, cmgOperation4, workingValue9, eventHandler, text, workingValue3
dataCollection = {}
dataCollection[0] = true
dataCollection[1] = true
dataCollection[2] = true
dataCollection[3] = true
dataCollection[4] = true
dataCollection[5] = true
dataCollection[6] = true
dataCollection[9] = true
dataCollection[11] = true
dataCollection[12] = true
dataCollection[17] = true
dataCollection[18] = true
stateFlag6 = false
text2 = "fin_ext_p1-7"
text3 = "cs_devin_dual-7"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, cmgOperation, playerPed, cmgOperation2, cmgOperation3, stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number
  localValue1 = GetActivePlayers
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  cmgOperation = pairs
  playerPed = localValue1
  cmgOperation, playerPed, cmgOperation2, cmgOperation3 = cmgOperation(playerPed)
  for stateFlag17, number6 in cmgOperation, playerPed, cmgOperation2, cmgOperation3 do
    playerPed2 = GetPlayerPed
    coords = number6
    -- Beginner: result below is playerPed.
    playerPed2 = playerPed2(coords)
    coords = GetEntityCoords
    workingValue2 = playerPed2
    -- Beginner: result below is entityCoords.
    coords = coords(workingValue2)
    workingValue2 = localValue2 - coords
    workingValue2 = #workingValue2
    if workingValue2 < 5 then
      stateFlag = IsEntityPlayingAnim
      stateFlag2 = playerPed2
      stateFlag3 = text2
      workingValue4 = text3
      number = 3
      stateFlag = stateFlag(stateFlag2, stateFlag3, workingValue4, number)
      if stateFlag then
        stateFlag = true
        return stateFlag
      end
    end
  end
  cmgOperation = false
  return cmgOperation
end
stateFlag15 = false
stateFlag16 = false
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = stateFlag15
  return localValue1
end
cmgOperation4.isPlayerHidingInBoot = workingValue9

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local cmgOperation, playerPed, cmgOperation2
  cmgOperation = CMG
  cmgOperation = cmgOperation.isHandcuffed
  cmgOperation = cmgOperation()
  if not cmgOperation then
    cmgOperation = tCMG
    cmgOperation = cmgOperation.isTazed
    cmgOperation = cmgOperation()
    if not cmgOperation then
      goto continueAtStep13
    end
  end
  cmgOperation = false
  return cmgOperation
  ::continueAtStep13::
  cmgOperation = GetEntitySpeed
  playerPed = PlayerPedId
  playerPed, cmgOperation2 = playerPed()
  -- Beginner: result below is speed.
  cmgOperation = cmgOperation(playerPed, cmgOperation2)
  playerPed = GetEntitySpeed
  cmgOperation2 = localValue1
  -- Beginner: result below is speed.
  playerPed = playerPed(cmgOperation2)
  if not (cmgOperation > 1.0) then
    cmgOperation2 = 2.5
    if not (playerPed > cmgOperation2) then
      goto continueAtStep27
    end
  end
  cmgOperation2 = false
  return cmgOperation2
  ::continueAtStep27::
  if localValue2 then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    cmgOperation2 = cmgOperation2()
    cmgOperation2 = cmgOperation2 - localValue2
    cmgOperation2 = #cmgOperation2
    if cmgOperation2 > 1.0 then
      cmgOperation2 = false
      return cmgOperation2
    end
  end
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerCombatTimer
  cmgOperation2 = cmgOperation2()
  if cmgOperation2 > 0 then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.isPlayerInRedZone
    cmgOperation2 = cmgOperation2()
    if cmgOperation2 then
      cmgOperation2 = false
      return cmgOperation2
    end
  end
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.isDrawingInventoryUI
  cmgOperation2 = cmgOperation2()
  if cmgOperation2 then
    cmgOperation2 = false
    return cmgOperation2
  end
  cmgOperation2 = true
  return cmgOperation2
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local cmgOperation, playerPed, cmgOperation2, cmgOperation3, stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10
  cmgOperation = true
  stateFlag6 = cmgOperation
  cmgOperation = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  playerPed = GetVehicleDoorLockStatus
  cmgOperation2 = localValue1
  playerPed = playerPed(cmgOperation2)
  cmgOperation2 = workingValue8
  cmgOperation2 = cmgOperation2()
  if not cmgOperation2 then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.isDrawingInventoryUI
    cmgOperation2 = cmgOperation2()
    if not cmgOperation2 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      cmgOperation2 = cmgOperation2()
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.startCircularProgressBar
      stateFlag17 = ""
      number6 = 2000
      playerPed2 = nil

      -- === HELPER FUNCTION: coords() ===
      function coords()
        local workingValue, workingValue5
      end
      cmgOperation3(stateFlag17, number6, playerPed2, coords)
      cmgOperation3 = cmgOperation4
      stateFlag17 = localValue1
      number6 = cmgOperation2
      cmgOperation3 = cmgOperation3(stateFlag17, number6)
      if cmgOperation3 then
        if playerPed <= 1 then
          cmgOperation3 = tCMG
          cmgOperation3 = cmgOperation3.setCanAnim
          stateFlag17 = false
          cmgOperation3(stateFlag17)
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.setWeapon
          stateFlag17 = cmgOperation
          number6 = -1569615261
          playerPed2 = true
          cmgOperation3(stateFlag17, number6, playerPed2)
          cmgOperation3 = true
          stateFlag15 = cmgOperation3
          cmgOperation3 = GetEntityCoords
          stateFlag17 = PlayerPedId
          stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10 = stateFlag17()
          -- Beginner: result below is entityCoords.
          cmgOperation3 = cmgOperation3(stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10)
          stateFlag17 = CreateCam
          number6 = "DEFAULT_SCRIPTED_CAMERA"
          playerPed2 = true
          -- Beginner: result below is cameraHandle.
          stateFlag17 = stateFlag17(number6, playerPed2)
          number6 = SetCamCoord
          playerPed2 = stateFlag17
          coords = cmgOperation3.x
          workingValue2 = cmgOperation3.x
          stateFlag = cmgOperation3.z
          number6(playerPed2, coords, workingValue2, stateFlag)
          number6 = PointCamAtEntity
          playerPed2 = stateFlag17
          coords = localValue1
          workingValue2 = 0.0
          stateFlag = 0.0
          stateFlag2 = 0.0
          stateFlag3 = false
          number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3)
          number6 = SetCamActive
          playerPed2 = stateFlag17
          coords = true
          number6(playerPed2, coords)
          number6 = RenderScriptCams
          playerPed2 = true
          coords = false
          workingValue2 = 0
          stateFlag = true
          stateFlag2 = true
          number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2)
          number6 = SetCamCoord
          playerPed2 = stateFlag17
          coords = cmgOperation3.x
          workingValue2 = cmgOperation3.x
          stateFlag = cmgOperation3.z
          number6(playerPed2, coords, workingValue2, stateFlag)
          number6 = AttachCamToEntity
          playerPed2 = stateFlag17
          coords = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          coords = coords()
          workingValue2 = 0.0
          stateFlag = -2.5
          stateFlag2 = 1.0
          stateFlag3 = true
          number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3)
          number6 = SetCamRot
          playerPed2 = stateFlag17
          coords = -30.0
          workingValue2 = 0.0
          stateFlag = GetEntityHeading
          stateFlag2 = PlayerPedId
          stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10 = stateFlag2()
          -- Beginner: result below is heading.
          stateFlag = stateFlag(stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10)
          stateFlag2 = 0
          number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2)
          number6 = SetVehicleDoorOpen
          playerPed2 = localValue1
          coords = 5
          workingValue2 = false
          stateFlag = false
          number6(playerPed2, coords, workingValue2, stateFlag)
          number6 = RaiseConvertibleRoof
          playerPed2 = localValue1
          coords = false
          number6(playerPed2, coords)
          number6 = GetModelDimensions
          playerPed2 = GetEntityModel
          coords = localValue1
          playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10 = playerPed2(coords)
          number6, playerPed2 = number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10)
          coords = AttachEntityToEntity
          workingValue2 = cmgOperation
          stateFlag = localValue1
          stateFlag2 = 0
          stateFlag3 = -0.1
          workingValue4 = number6.y
          workingValue4 = workingValue4 + 0.85
          number = playerPed2.z
          number = number - 0.87
          number2 = 0
          number3 = 0
          stateFlag4 = 40.0
          stateFlag5 = true
          stateFlag7 = true
          stateFlag8 = true
          stateFlag9 = true
          number4 = 1
          stateFlag10 = true
          -- Beginner: Attach one entity to another entity.
          coords(workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10)
          coords = ClearPedTasksImmediately
          workingValue2 = cmgOperation
          coords(workingValue2)
          coords = Wait
          workingValue2 = 100
          coords(workingValue2)
          coords = CMG
          coords = coords.loadAnimDict
          workingValue2 = text2
          -- Beginner: Load a GTA animation dictionary before using it.
          coords(workingValue2)
          coords = TaskPlayAnim
          workingValue2 = cmgOperation
          stateFlag = text2
          stateFlag2 = text3
          stateFlag3 = 1.0
          workingValue4 = -1
          number = -1
          number2 = 1
          number3 = 0
          stateFlag4 = false
          stateFlag5 = false
          stateFlag7 = false
          -- Beginner: Play an animation on a ped.
          coords(workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7)
          coords = RemoveAnimDict
          workingValue2 = text2
          coords(workingValue2)
          coords = Wait
          workingValue2 = 1000
          coords(workingValue2)
          coords = SetVehicleDoorShut
          workingValue2 = localValue1
          stateFlag = 5
          stateFlag2 = false
          coords(workingValue2, stateFlag, stateFlag2)
          coords = DestroyCam
          workingValue2 = stateFlag17
          stateFlag = false
          coords(workingValue2, stateFlag)
          coords = RenderScriptCams
          workingValue2 = false
          stateFlag = false
          stateFlag2 = 1
          stateFlag3 = true
          workingValue4 = true
          coords(workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4)
          coords = true
          stateFlag16 = coords
          coords = drawNativeNotification
          workingValue2 = "~s~~INPUT_FRONTEND_RRIGHT~ To exit the boot."
          -- Beginner: Show a GTA-style notification/help prompt.
          coords(workingValue2)
          coords = true
          while coords do
            workingValue2 = stateFlag15
            if not workingValue2 then
              break
            end
            workingValue2 = DisableAllControlActions
            stateFlag = 0
            workingValue2(stateFlag)
            workingValue2 = DisableAllControlActions
            stateFlag = 1
            workingValue2(stateFlag)
            workingValue2 = DisableAllControlActions
            stateFlag = 2
            workingValue2(stateFlag)
            workingValue2 = EnableControlAction
            stateFlag = 0
            stateFlag2 = 0
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = EnableControlAction
            stateFlag = 0
            stateFlag2 = 249
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = EnableControlAction
            stateFlag = 2
            stateFlag2 = 1
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = EnableControlAction
            stateFlag = 2
            stateFlag2 = 2
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = EnableControlAction
            stateFlag = 0
            stateFlag2 = 177
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = EnableControlAction
            stateFlag = 0
            stateFlag2 = 200
            stateFlag3 = true
            workingValue2(stateFlag, stateFlag2, stateFlag3)
            workingValue2 = IsDisabledControlPressed
            stateFlag = 0
            stateFlag2 = 177
            workingValue2 = workingValue2(stateFlag, stateFlag2)
            if workingValue2 then
              workingValue2 = GetVehicleDoorLockStatus
              stateFlag = localValue1
              workingValue2 = workingValue2(stateFlag)
              if workingValue2 <= 1 then
                coords = false
              else
                workingValue2 = tCMG
                workingValue2 = workingValue2.notify
                stateFlag = "~r~Vehicle is locked, cannot get in boot."
                -- Beginner: Show a notification to the player.
                workingValue2(stateFlag)
              end
            end
            workingValue2 = DoesEntityExist
            stateFlag = localValue1
            workingValue2 = workingValue2(stateFlag)
            if not workingValue2 then
              coords = false
            end
            workingValue2 = GetEntityHealth
            stateFlag = cmgOperation
            -- Beginner: result below is health.
            workingValue2 = workingValue2(stateFlag)
            if workingValue2 <= 102 and not localValue2 then
              coords = false
            end
            workingValue2 = IsEntityPlayingAnim
            stateFlag = cmgOperation
            stateFlag2 = text2
            stateFlag3 = text3
            workingValue4 = 3
            workingValue2 = workingValue2(stateFlag, stateFlag2, stateFlag3, workingValue4)
            if not workingValue2 then
              workingValue2 = TaskPlayAnim
              stateFlag = cmgOperation
              stateFlag2 = text2
              stateFlag3 = text3
              workingValue4 = 1.0
              number = -1
              number2 = -1
              number3 = 1
              stateFlag4 = 0
              stateFlag5 = false
              stateFlag7 = false
              stateFlag8 = false
              -- Beginner: Play an animation on a ped.
              workingValue2(stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8)
            end
            workingValue2 = Wait
            stateFlag = 0
            workingValue2(stateFlag)
          end
          workingValue2 = false
          stateFlag15 = workingValue2
          workingValue2 = DetachEntity
          stateFlag = cmgOperation
          stateFlag2 = true
          stateFlag3 = true
          workingValue2(stateFlag, stateFlag2, stateFlag3)
          workingValue2 = SetEntityVisible
          stateFlag = cmgOperation
          stateFlag2 = true
          stateFlag3 = true
          workingValue2(stateFlag, stateFlag2, stateFlag3)
          workingValue2 = ClearAllHelpMessages
          workingValue2()
          workingValue2 = ClearPedTasks
          stateFlag = PlayerPedId
          stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10 = stateFlag()
          workingValue2(stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10)
          workingValue2 = SetVehicleDoorOpen
          stateFlag = localValue1
          stateFlag2 = 5
          stateFlag3 = false
          workingValue4 = false
          workingValue2(stateFlag, stateFlag2, stateFlag3, workingValue4)
          workingValue2 = tCMG
          workingValue2 = workingValue2.setCanAnim
          stateFlag = true
          workingValue2(stateFlag)
          workingValue2 = Wait
          stateFlag = 1000
          workingValue2(stateFlag)
          workingValue2 = SetVehicleDoorShut
          stateFlag = localValue1
          stateFlag2 = 5
          stateFlag3 = false
          workingValue2(stateFlag, stateFlag2, stateFlag3)
        else
          cmgOperation3 = tCMG
          cmgOperation3 = cmgOperation3.notify
          stateFlag17 = "~r~Vehicle is locked, cannot get out of boot."
          -- Beginner: Show a notification to the player.
          cmgOperation3(stateFlag17)
        end
      else
        cmgOperation3 = tCMG
        cmgOperation3 = cmgOperation3.notify
        stateFlag17 = "~r~You and the vehicle must remain stationary to get in."
        cmgOperation3(stateFlag17)
      end
  end
  else
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.notify
    cmgOperation3 = "~r~Someone is already in this boot."
    -- Beginner: Show a notification to the player.
    cmgOperation2(cmgOperation3)
  end
  cmgOperation2 = false
  stateFlag6 = cmgOperation2
end
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, cmgOperation, playerPed, cmgOperation2, cmgOperation3, stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10, stateFlag11, stateFlag12, number5, stateFlag13, workingValue6, workingValue7, stateFlag14
  localValue1 = 250
  while true do
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    cmgOperation = localValue1
    localValue2(cmgOperation)
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    cmgOperation = CMG
    cmgOperation = cmgOperation.getClosestVehicle
    playerPed = 7.0
    cmgOperation = cmgOperation(playerPed)
    playerPed = GetVehicleClass
    cmgOperation2 = cmgOperation
    playerPed = playerPed(cmgOperation2)
    if 0 == localValue2 then
      cmgOperation2 = dataCollection
      cmgOperation2 = cmgOperation2[playerPed]
      if cmgOperation2 then
        cmgOperation2 = GetEntityHealth
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.getPlayerPed
        cmgOperation3, stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10, stateFlag11, stateFlag12, number5, stateFlag13, workingValue6, workingValue7, stateFlag14 = cmgOperation3()
        -- Beginner: result below is health.
        cmgOperation2 = cmgOperation2(cmgOperation3, stateFlag17, number6, playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10, stateFlag11, stateFlag12, number5, stateFlag13, workingValue6, workingValue7, stateFlag14)
        if cmgOperation2 > 102 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.isNoClipActive
          cmgOperation2 = cmgOperation2()
          if not cmgOperation2 then
            cmgOperation2 = stateFlag6
            if not cmgOperation2 then
              cmgOperation2 = CMG
              cmgOperation2 = cmgOperation2.isPlayerInBankHeistSetup
              cmgOperation2 = cmgOperation2()
              if not cmgOperation2 then
                if cmgOperation and 0 ~= cmgOperation then
                  localValue1 = 0
                  cmgOperation2 = GetEntityBoneIndexByName
                  cmgOperation3 = cmgOperation
                  stateFlag17 = "boot"
                  cmgOperation2 = cmgOperation2(cmgOperation3, stateFlag17)
                  cmgOperation3 = GetWorldPositionOfEntityBone
                  stateFlag17 = cmgOperation
                  number6 = cmgOperation2
                  cmgOperation3 = cmgOperation3(stateFlag17, number6)
                  stateFlag17 = CMG
                  stateFlag17 = stateFlag17.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  stateFlag17 = stateFlag17()
                  stateFlag17 = cmgOperation3 - stateFlag17
                  stateFlag17 = #stateFlag17
                  if stateFlag17 < 2 then
                    number6 = NetworkGetEntityIsNetworked
                    playerPed2 = cmgOperation
                    number6 = number6(playerPed2)
                    if number6 then
                      number6 = CMG
                      number6 = number6.isInTutorial
                      number6 = number6()
                      if not number6 then
                        number6 = DrawMarker
                        playerPed2 = 0
                        coords = cmgOperation3.x
                        workingValue2 = cmgOperation3.y
                        stateFlag = cmgOperation3.z
                        stateFlag2 = 0.0
                        stateFlag3 = 0.0
                        workingValue4 = 0.0
                        number = 0.0
                        number2 = 0.0
                        number3 = 0.0
                        stateFlag4 = 0.3
                        stateFlag5 = 0.3
                        stateFlag7 = 0.3
                        stateFlag8 = 0
                        stateFlag9 = 255
                        number4 = 150
                        stateFlag10 = 255
                        stateFlag11 = true
                        stateFlag12 = false
                        number5 = 2
                        stateFlag13 = false
                        workingValue6 = nil
                        workingValue7 = nil
                        stateFlag14 = false
                        number6(playerPed2, coords, workingValue2, stateFlag, stateFlag2, stateFlag3, workingValue4, number, number2, number3, stateFlag4, stateFlag5, stateFlag7, stateFlag8, stateFlag9, number4, stateFlag10, stateFlag11, stateFlag12, number5, stateFlag13, workingValue6, workingValue7, stateFlag14)
                        number6 = true
                        stateFlag16 = number6
                        number6 = CMG
                        number6 = number6.isCarrying
                        number6 = number6()
                        if number6 then
                          number6 = drawNativeNotification
                          playerPed2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to place carried player inside the boot."
                          -- Beginner: Show a GTA-style notification/help prompt.
                          number6(playerPed2)
                        else
                          number6 = drawNativeNotification
                          playerPed2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to get inside the boot."
                          number6(playerPed2)
                        end
                        number6 = IsDisabledControlJustReleased
                        playerPed2 = 1
                        coords = 137
                        number6 = number6(playerPed2, coords)
                        if number6 then
                          number6 = cmgOperation4
                          playerPed2 = cmgOperation
                          number6 = number6(playerPed2)
                          if number6 then
                            number6 = CMG
                            number6 = number6.isCarrying
                            number6 = number6()
                            if number6 then
                              number6 = CMG
                              number6 = number6.getCarryingPlayerSrc
                              number6 = number6()
                              if 0 ~= number6 then
                                playerPed2 = NetworkGetNetworkIdFromEntity
                                coords = cmgOperation
                                playerPed2 = playerPed2(coords)
                                if 0 ~= playerPed2 and playerPed2 ~= cmgOperation then
                                  coords = TriggerEvent
                                  workingValue2 = "CarryPeople:cl_stop"
                                  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CarryPeople:cl_stop".
                                  coords(workingValue2)
                                  coords = TriggerServerEvent
                                  workingValue2 = "6297bbdeaf"
                                  stateFlag = number6
                                  stateFlag2 = playerPed2
                                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6297bbdeaf".
                                  coords(workingValue2, stateFlag, stateFlag2)
                                end
                              end
                            else
                              number6 = workingValue9
                              playerPed2 = cmgOperation
                              coords = false
                              number6(playerPed2, coords)
                            end
                          end
                        end
                    end
                  end
                  else
                    number6 = stateFlag16
                    if number6 then
                      number6 = ClearHelp
                      playerPed2 = true
                      number6(playerPed2)
                      number6 = false
                      stateFlag16 = number6
                    end
                  end
                else
                  localValue1 = 250
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
eventHandler(text)
eventHandler = RegisterNetEvent
text = "1cfec3255e"
-- Beginner: this function handles network event "1cfec3255e".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = false
  stateFlag15 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1cfec3255e".
eventHandler(text, workingValue3)
eventHandler = RegisterNetEvent
text = "6297bbdeaf"
-- Beginner: this function handles network event "6297bbdeaf".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, cmgOperation, playerPed, cmgOperation2
  localValue2 = CMG
  localValue2 = localValue2.isCarrying
  localValue2 = localValue2()
  if not localValue2 then
    return
  end
  localValue2 = TriggerEvent
  cmgOperation = "CarryPeople:cl_stop"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CarryPeople:cl_stop".
  localValue2(cmgOperation)
  localValue2 = NetworkDoesNetworkIdExist
  cmgOperation = localValue1
  localValue2 = localValue2(cmgOperation)
  if not localValue2 then
    return
  end
  localValue2 = NetworkGetEntityFromNetworkId
  cmgOperation = localValue1
  localValue2 = localValue2(cmgOperation)
  if 0 ~= localValue2 then
    cmgOperation = IsEntityAVehicle
    playerPed = localValue2
    cmgOperation = cmgOperation(playerPed)
    if cmgOperation then
      goto continueAtStep27
    end
  end
  return
  ::continueAtStep27::
  cmgOperation = GetEntityCoords
  playerPed = localValue2
  cmgOperation2 = true
  -- Beginner: result below is entityCoords.
  cmgOperation = cmgOperation(playerPed, cmgOperation2)
  playerPed = CMG
  playerPed = playerPed.getPlayerCoords
  -- Beginner: result below is playerCoords.
  playerPed = playerPed()
  cmgOperation = cmgOperation - playerPed
  cmgOperation = #cmgOperation
  if cmgOperation > 15.0 then
    return
  end
  cmgOperation = workingValue9
  playerPed = localValue2
  cmgOperation2 = true
  cmgOperation(playerPed, cmgOperation2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6297bbdeaf".
eventHandler(text, workingValue3)
