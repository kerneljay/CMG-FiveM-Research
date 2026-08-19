--[[
    LEVEL 1 BEGINNER GUIDE — Redzones
    ======================================

    File: cmg/prod/client/crime/cl_redzones.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Redzones feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 40
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
local cmgOperation, stateFlag, stateFlag5, number13, stateFlag6, number15, workingValue12, number17, workingValue15, stateFlag7, cmgOperation3, cmgOperation5, text, workingValue, workingValue2, workingValue3, workingValue4, backgroundThread, cmgOperation6, cmgOperation8, workingValue5, text3, cmgOperation10, text4, createVector3, number9, number10, number11, cmgOperation11, text5, workingValue10
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
stateFlag = "cfg/cfg_redzones"
-- Beginner: result below is config.
cmgOperation = cmgOperation(stateFlag)
stateFlag = false
stateFlag5 = false
number13 = 0
stateFlag6 = false
number15 = 0
workingValue12 = nil
number17 = 600000
workingValue15 = nil
stateFlag7 = false
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1) ===
function cmgOperation5(localValue1)
  local localValue2
  stateFlag5 = localValue1
end
cmgOperation3.setRedzoneTimerDisabled = cmgOperation5
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = stateFlag
  localValue2 = workingValue12
  if localValue2 then
    localValue2 = workingValue12.index
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = nil
  ::continueAtStep9::
  return localValue1, localValue2
end
cmgOperation3.isPlayerInRedZone = cmgOperation5
cmgOperation3 = 0
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, text6, number14
  localValue3 = CMG
  localValue3 = localValue3.inEvent
  localValue3 = localValue3()
  if not localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.isAimTraining
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.shouldSuppressCombatTimer
      localValue3 = localValue3()
      if not localValue3 then
        goto continueAtStep30
      end
    end
  end
  if 0 == localValue1 then
    localValue3 = 0
    number13 = localValue3
    localValue3 = false
    stateFlag6 = localValue3
    localValue3 = TriggerServerEvent
    text6 = "33bc0305ab"
    number14 = 0
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "33bc0305ab".
    localValue3(text6, number14)
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    cmgOperation3 = localValue3
  end
  return
  ::continueAtStep30::
  localValue3 = CMG
  localValue3 = localValue3.isPurge
  localValue3 = localValue3()
  if localValue3 and localValue1 > 0 then
    localValue3 = math
    localValue3 = localValue3.floor
    text6 = localValue1 / 3
    localValue3 = localValue3(text6)
    localValue1 = localValue3
  end
  number13 = localValue1
  if localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.inOrganHesit
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = true
      stateFlag6 = localValue3
    end
  end
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  text6 = cmgOperation3
  localValue3 = localValue3 - text6
  text6 = 2500
  if not (localValue3 > text6) then
    localValue3 = CMG
    localValue3 = localValue3.isStaffedOnClient
    localValue3 = localValue3()
    if not localValue3 then
      goto continueAtStep73
    end
  end
  localValue3 = TriggerServerEvent
  text6 = "33bc0305ab"
  number14 = localValue1
  localValue3(text6, number14)
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  cmgOperation3 = localValue3
  ::continueAtStep73::
end
cmgOperation5.setPlayerCombatTimer = text
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = number13
  localValue2 = stateFlag6
  return localValue1, localValue2
end
cmgOperation5.getPlayerCombatTimer = text
cmgOperation5 = RegisterNetEvent
text = "66ce6bfecb"
-- Beginner: this function handles network event "66ce6bfecb".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, text6, number14
  localValue3 = CMG
  localValue3 = localValue3.isInGreenzone
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.setPlayerCombatTimer
  text6 = localValue1
  number14 = localValue2
  localValue3(text6, number14)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66ce6bfecb".
cmgOperation5(text, workingValue)
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16
  localValue2 = pairs
  localValue3 = cmgOperation.locations
  localValue2, localValue3, text6, number14 = localValue2(localValue3)
  for number16, workingValue13 in localValue2, localValue3, text6, number14 do
    workingValue14 = workingValue13.pos
    workingValue14 = workingValue14 - localValue1
    workingValue14 = #workingValue14
    workingValue16 = workingValue13.radius
    if workingValue14 < workingValue16 then
      workingValue14 = true
      return workingValue14
    end
  end
  localValue2 = false
  return localValue2
end
cmgOperation5.isPositionInRedzone = text

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16
  localValue3 = localValue2.type
  if "radius" == localValue3 then
    localValue3 = localValue2.pos
    localValue3 = localValue3.z
    text6 = math
    text6 = text6.max
    number14 = localValue2.radius
    number16 = 100.0
    text6 = text6(number14, number16)
    localValue3 = localValue3 + text6
    text6 = localValue1.xy
    number14 = localValue2.pos
    number14 = number14.xy
    text6 = text6 - number14
    text6 = #text6
    number14 = localValue2.radius
    text6 = text6 <= number14
    return text6
  else
    localValue3 = localValue2.type
    if "area" == localValue3 then
      localValue3 = localValue2.width
      localValue3 = localValue3 / 2.0
      text6 = localValue2.height
      text6 = text6 / 2.0
      number14 = localValue2.pos
      number14 = localValue1 - number14
      number14 = #number14
      number16 = localValue3 + text6
      if number14 <= number16 then
        number14 = vector3
        number16 = localValue3
        workingValue13 = text6
        workingValue14 = 0.0
        number14 = number14(number16, workingValue13, workingValue14)
        number16 = localValue2.pos
        number16 = number16 + number14
        workingValue13 = localValue2.pos
        workingValue13 = workingValue13 - number14
        workingValue14 = localValue1.x
        workingValue16 = number16.x
        workingValue14 = workingValue14 < workingValue16
        return workingValue14
      end
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4
  localValue1 = workingValue12
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = nil
  localValue3 = 1
  text6 = 25
  number14 = 1
  for number16 = localValue3, text6, number14 do
    workingValue13 = GetNthClosestVehicleNode
    workingValue14 = localValue1.x
    workingValue16 = localValue1.y
    workingValue17 = localValue1.z
    cmgOperation4 = number16
    workingValue13, workingValue14 = workingValue13(workingValue14, workingValue16, workingValue17, cmgOperation4)
    if workingValue13 then
      workingValue16 = workingValue12.pos
      workingValue16 = workingValue16 - workingValue14
      workingValue16 = #workingValue16
      workingValue17 = workingValue12.radius
      if workingValue16 > workingValue17 then
        localValue2 = workingValue14
        break
      end
    end
  end
  localValue3 = CMG
  localValue3 = localValue3.setPlayerCombatTimer
  text6 = 0
  number14 = false
  localValue3(text6, number14)
  if localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.getPlayerVehicle
    localValue3, text6 = localValue3()
    if 0 ~= localValue3 then
      if text6 then
        number14 = GetScriptTaskStatus
        number16 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        number16 = number16()
        workingValue13 = -1817882002
        number14 = number14(number16, workingValue13)
        if 7 == number14 then
          number14 = TaskVehicleDriveToCoord
          number16 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          number16 = number16()
          workingValue13 = localValue3
          workingValue14 = localValue2.x
          workingValue16 = localValue2.y
          workingValue17 = localValue2.z
          cmgOperation4 = 30.0
          number = 1.0
          modelHash = GetEntityModel
          number2 = localValue3
          -- Beginner: result below is modelHash.
          modelHash = modelHash(number2)
          number2 = 16777216
          number3 = 1.0
          text2 = 1
          number14(number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2)
        end
      end
    else
      number14 = GetScriptTaskStatus
      number16 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      number16 = number16()
      workingValue13 = -1672495956
      number14 = number14(number16, workingValue13)
      if 7 == number14 then
        number14 = TaskFollowNavMeshToCoordAdvanced
        number16 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        number16 = number16()
        workingValue13 = localValue2.x
        workingValue14 = localValue2.y
        workingValue16 = localValue2.z
        workingValue17 = 8.0
        cmgOperation4 = -1
        number = 2.5
        modelHash = 0
        number2 = 0
        number3 = 0.0
        text2 = 100.0
        number4 = 4000.0
        number14(number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "lfb.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "vigilante.onduty.permission"
      localValue1 = localValue1(localValue2)
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasSpawnProtection
        localValue1 = localValue1()
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.hasNewPlayerProtection
          localValue1 = localValue1()
        end
      end
    end
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = workingValue12
  if localValue1 then
    localValue1 = cmgOperation.locations
    localValue2 = workingValue12.index
    localValue1 = localValue1[localValue2]
    if localValue1 then
      localValue1 = true
      return localValue1
  end
  else
    localValue1 = false
    return localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, text6, number14, number16, workingValue13
  localValue3 = AddBlipForRadius
  text6 = localValue1.x
  number14 = localValue1.y
  number16 = localValue1.z
  workingValue13 = localValue2
  -- Beginner: result below is blipHandle.
  localValue3 = localValue3(text6, number14, number16, workingValue13)
  text6 = SetBlipColour
  number14 = localValue3
  number16 = 1
  text6(number14, number16)
  text6 = SetBlipAlpha
  number14 = localValue3
  number16 = 180
  text6(number14, number16)
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2
  localValue1 = stateFlag7
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.setCanAnim
    localValue2 = true
    localValue1(localValue2)
    localValue1 = false
    stateFlag7 = localValue1
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, text6 = localValue1(localValue2)
  for number14, number16 in localValue1, localValue2, localValue3, text6 do
    workingValue13 = number16.createBlip
    if workingValue13 then
      workingValue13 = workingValue3
      workingValue14 = number16.pos
      workingValue16 = number16.radius
      workingValue13 = workingValue13(workingValue14, workingValue16)
      number16.blip = workingValue13
    end
  end
  while true do
    localValue1 = stateFlag5
    if not localValue1 then
      localValue1 = GetEntityCoords
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = localValue2()
      -- Beginner: result below is entityCoords.
      localValue1 = localValue1(localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
      localValue2 = false
      stateFlag = localValue2
      localValue2 = pairs
      localValue3 = cmgOperation.locations
      localValue2, localValue3, text6, number14 = localValue2(localValue3)
      for number16, workingValue13 in localValue2, localValue3, text6, number14 do
        workingValue14 = cmgOperation5
        workingValue16 = localValue1
        workingValue17 = workingValue13
        workingValue14 = workingValue14(workingValue16, workingValue17)
        if workingValue14 then
          workingValue14 = true
          stateFlag = workingValue14
          workingValue14 = GetEntityCoords
          workingValue16 = CMG
          workingValue16 = workingValue16.getPlayerPed
          workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = workingValue16()
          -- Beginner: result below is entityCoords.
          workingValue14 = workingValue14(workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
          localValue1 = workingValue14
          workingValue14 = CMG
          workingValue14 = workingValue14.hasSpawnProtection
          workingValue14 = workingValue14()
          if not workingValue14 then
            workingValue14 = CMG
            workingValue14 = workingValue14.hasNewPlayerProtection
            workingValue14 = workingValue14()
            if not workingValue14 then
              workingValue14 = CMG
              workingValue14 = workingValue14.isNoClipActive
              workingValue14 = workingValue14()
              if workingValue14 then
                workingValue14 = CMG
                workingValue14 = workingValue14.hasClientPermission
                workingValue16 = "admin.tickets"
                workingValue14 = workingValue14(workingValue16)
                if workingValue14 then
                  goto continueAtStep81
                end
              end
              workingValue14 = localValue1.z
              if workingValue14 > -25.0 then
                workingValue14 = CMG
                workingValue14 = workingValue14.shouldSuppressCombatTimer
                workingValue14 = workingValue14()
                if not workingValue14 then
                  workingValue14 = CMG
                  workingValue14 = workingValue14.setPlayerCombatTimer
                  workingValue16 = 30
                  workingValue17 = false
                  workingValue14(workingValue16, workingValue17)
                  workingValue14 = TriggerServerEvent
                  workingValue16 = "6d5e3f7688"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d5e3f7688".
                  workingValue14(workingValue16)
                end
              end
            end
          end
          ::continueAtStep81::
          workingValue14 = nil
          workingValue16 = false
          workingValue12 = workingValue13
          workingValue12.index = number16
          while not workingValue16 do
            workingValue17 = GetEntityCoords
            cmgOperation4 = CMG
            cmgOperation4 = cmgOperation4.getPlayerPed
            cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = cmgOperation4()
            -- Beginner: result below is entityCoords.
            workingValue17 = workingValue17(cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
            localValue1 = workingValue17
            while true do
              workingValue17 = cmgOperation5
              cmgOperation4 = localValue1
              number = workingValue13
              workingValue17 = workingValue17(cmgOperation4, number)
              if not workingValue17 then
                break
              end
              workingValue17 = workingValue2
              workingValue17 = workingValue17()
              if not workingValue17 then
                break
              end
              workingValue17 = workingValue4
              workingValue17()
              workingValue17 = GetEntityCoords
              cmgOperation4 = CMG
              cmgOperation4 = cmgOperation4.getPlayerPed
              cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = cmgOperation4()
              -- Beginner: result below is entityCoords.
              workingValue17 = workingValue17(cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
              localValue1 = workingValue17
              workingValue14 = localValue1
              workingValue17 = CMG
              workingValue17 = workingValue17.shouldSuppressCombatTimer
              workingValue17 = workingValue17()
              if not workingValue17 then
                workingValue17 = IsPedShooting
                cmgOperation4 = CMG
                cmgOperation4 = cmgOperation4.getPlayerPed
                cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = cmgOperation4()
                workingValue17 = workingValue17(cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
                if workingValue17 then
                  workingValue17 = GetSelectedPedWeapon
                  cmgOperation4 = CMG
                  cmgOperation4 = cmgOperation4.getPlayerPed
                  cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = cmgOperation4()
                  -- Beginner: result below is weaponHash.
                  workingValue17 = workingValue17(cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
                  if -1569615261 ~= workingValue17 then
                    workingValue17 = CMG
                    workingValue17 = workingValue17.setPlayerCombatTimer
                    cmgOperation4 = 60
                    number = true
                    workingValue17(cmgOperation4, number)
                  end
                end
              end
              workingValue17 = number13
              if 0 == workingValue17 then
                workingValue17 = DrawAdvancedText
                cmgOperation4 = 0.931
                number = 0.914
                modelHash = 0.005
                number2 = 0.0028
                number3 = 0.49
                text2 = "Combat Timer ended, you may leave."
                number4 = 255
                heading = 51
                cmgOperation7 = 51
                number5 = 255
                number6 = 7
                number7 = 0
                workingValue17(cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
              end
              workingValue17 = workingValue
              workingValue17 = workingValue17()
              if workingValue17 then
                workingValue17 = CMG
                workingValue17 = workingValue17.isStaffedOnClient
                workingValue17 = workingValue17()
                if not workingValue17 then
                  workingValue17 = CMG
                  workingValue17 = workingValue17.hasSpawnProtection
                  workingValue17 = workingValue17()
                  if not workingValue17 then
                    workingValue17 = CMG
                    workingValue17 = workingValue17.hasNewPlayerProtection
                    workingValue17 = workingValue17()
                    if not workingValue17 then
                      goto continueAtStep176
                    end
                  end
                  workingValue17 = notify
                  cmgOperation4 = "~r~You cannot enter redzones while you have protection active."
                  -- Beginner: Show a notification to the player.
                  workingValue17(cmgOperation4)
                  goto continueAtStep179
                  ::continueAtStep176::
                  workingValue17 = notify
                  cmgOperation4 = "~r~You are not allowed in redzones while on duty. Exiting zone..."
                  workingValue17(cmgOperation4)
                  ::continueAtStep179::
                  workingValue17 = text
                  workingValue17()
                end
              end
              workingValue17 = Wait
              cmgOperation4 = 0
              workingValue17(cmgOperation4)
            end
            workingValue17 = number13
            if 0 ~= workingValue17 then
              workingValue17 = workingValue2
              workingValue17 = workingValue17()
              if workingValue17 then
                goto continueAtStep194
              end
            end
            workingValue16 = true
            goto continueAtStep273
            ::continueAtStep194::
            workingValue17 = workingValue13.pos
            cmgOperation4 = GetEntityCoords
            number = CMG
            number = number.getPlayerPed
            number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7 = number()
            -- Beginner: result below is entityCoords.
            cmgOperation4 = cmgOperation4(number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7)
            workingValue17 = workingValue17 - cmgOperation4
            cmgOperation4 = workingValue17 * 0.01
            workingValue14 = workingValue14 + cmgOperation4
            cmgOperation4 = GetVehiclePedIsIn
            number = CMG
            number = number.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            number = number()
            modelHash = false
            -- Beginner: result below is currentVehicle.
            cmgOperation4 = cmgOperation4(number, modelHash)
            if 0 == cmgOperation4 then
              cmgOperation4 = TaskGoStraightToCoord
              number = CMG
              number = number.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              number = number()
              modelHash = workingValue14.x
              number2 = workingValue14.y
              number3 = workingValue14.z
              text2 = 8.0
              number4 = 1000
              heading = GetEntityHeading
              cmgOperation7 = CMG
              cmgOperation7 = cmgOperation7.getPlayerPed
              cmgOperation7, number5, number6, number7 = cmgOperation7()
              -- Beginner: result below is heading.
              heading = heading(cmgOperation7, number5, number6, number7)
              cmgOperation7 = 0.0
              cmgOperation4(number, modelHash, number2, number3, text2, number4, heading, cmgOperation7)
              cmgOperation4 = GetSoundId
              -- Beginner: result below is soundHandle.
              cmgOperation4 = cmgOperation4()
              number = PlaySoundFrontend
              modelHash = cmgOperation4
              number2 = "End_Zone_Flash"
              number3 = "DLC_BTL_RB_Remix_Sounds"
              text2 = true
              number(modelHash, number2, number3, text2)
              number = ReleaseSoundId
              modelHash = cmgOperation4
              number(modelHash)
              number = CMG
              number = number.announceMpBigMsg
              modelHash = "~r~WARNING"
              number2 = "Get back in the redzone!"
              number3 = 2000
              number(modelHash, number2, number3)
              number = stateFlag7
              if not number then
                number = tCMG
                number = number.setCanAnim
                modelHash = false
                number(modelHash)
                number = true
                stateFlag7 = number
              end
            else
              cmgOperation4 = SetEntityCoords
              number = CMG
              number = number.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              number = number()
              modelHash = workingValue14.x
              number2 = workingValue14.y
              number3 = workingValue14.z
              text2 = true
              number4 = false
              heading = false
              cmgOperation7 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              cmgOperation4(number, modelHash, number2, number3, text2, number4, heading, cmgOperation7)
            end
            cmgOperation4 = SetTimeout
            number = 1000

            -- === HELPER FUNCTION: modelHash() ===
            function modelHash()
              local cmgOperation2, cmgOperation9
              cmgOperation2 = ClearPedTasks
              cmgOperation9 = CMG
              cmgOperation9 = cmgOperation9.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgOperation9 = cmgOperation9()
              cmgOperation2(cmgOperation9)
            end
            cmgOperation4(number, modelHash)
            ::continueAtStep273::
            workingValue17 = Wait
            cmgOperation4 = 0
            workingValue17(cmgOperation4)
          end
          workingValue17 = workingValue4
          workingValue17()
          workingValue17 = nil
          workingValue12 = workingValue17
        end
      end
    end
    localValue1 = Wait
    localValue2 = 500
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation6)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = number13
    if localValue1 > 0 then
      localValue1 = stateFlag5
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.setPlayerCombatTimer
        localValue2 = 0
        localValue3 = false
        localValue1(localValue2, localValue3)
      else
        localValue1 = number13
        localValue1 = localValue1 - 1
        number13 = localValue1
        localValue1 = number13
        if 0 == localValue1 then
          localValue1 = false
          stateFlag6 = localValue1
        end
      end
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(cmgOperation6)
backgroundThread = {}
cmgOperation6 = -1569615261
backgroundThread[cmgOperation6] = true
cmgOperation6 = 883325847
backgroundThread[cmgOperation6] = true
cmgOperation6 = 126349499
backgroundThread[cmgOperation6] = true
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2
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
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "nhs.onduty.permission"
      localValue1 = localValue1(localValue2)
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "lfb.onduty.permission"
        localValue1 = localValue1(localValue2)
        if not localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.hasClientPermission
          localValue2 = "borderforce.onduty.permission"
          localValue1 = localValue1(localValue2)
        end
      end
    end
  end
  return localValue1
end
cmgOperation6.isEmergencyService = cmgOperation8
cmgOperation6 = RegisterNetEvent
cmgOperation8 = "56e6172373"
-- Beginner: this function handles network event "56e6172373".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, text6
  localValue2 = CMG
  localValue2 = localValue2.isEmergencyService
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isInPaintball
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.shouldSuppressCombatTimer
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.setPlayerCombatTimer
        localValue3 = 60
        text6 = localValue1
        localValue2(localValue3, text6)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "56e6172373".
cmgOperation6(cmgOperation8, workingValue5)

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash
  localValue1 = stateFlag5
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.inEvent
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isAimTraining
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.shouldSuppressCombatTimer
        localValue1 = localValue1()
        if not localValue1 then
          goto continueAtStep20
        end
      end
    end
  end
  return
  ::continueAtStep20::
  localValue1 = CMG
  localValue1 = localValue1.isEmergencyService
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.isInComa
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isInPaintball
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue1 = localValue1()
        localValue2 = HasEntityBeenDamagedByWeapon
        localValue3 = localValue1
        text6 = 0
        number14 = 2
        localValue2 = localValue2(localValue3, text6, number14)
        if localValue2 then
          localValue2 = Citizen
          localValue2 = localValue2.CreateThread

          -- === HELPER FUNCTION: localValue3() ===
          function localValue3()
            local cmgOperation2, cmgOperation9
            cmgOperation2 = ClearEntityLastDamageEntity
            cmgOperation9 = localValue1
            cmgOperation2(cmgOperation9)
            cmgOperation2 = ClearEntityLastWeaponDamage
            cmgOperation9 = localValue1
            cmgOperation2(cmgOperation9)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue2(localValue3)
          localValue2 = CMG
          localValue2 = localValue2.setPlayerCombatTimer
          localValue3 = 60
          text6 = true
          localValue2(localValue3, text6)
        end
        localValue2 = GetSelectedPedWeapon
        localValue3 = localValue1
        -- Beginner: result below is weaponHash.
        localValue2 = localValue2(localValue3)
        localValue3 = IsPedShooting
        text6 = localValue1
        localValue3 = localValue3(text6)
        if localValue3 then
          localValue3 = backgroundThread
          localValue3 = localValue3[localValue2]
          if not localValue3 then
            localValue3 = CMG
            localValue3 = localValue3.setPlayerCombatTimer
            text6 = 60
            number14 = true
            localValue3(text6, number14)
        end
        else
          localValue3 = GetPlayerTargetEntity
          text6 = CMG
          text6 = text6.getPlayerId
          text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash = text6()
          localValue3 = localValue3(text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash)
          if localValue3 then
            localValue3 = IsControlPressed
            text6 = 0
            number14 = 24
            localValue3 = localValue3(text6, number14)
            if localValue3 then
              localValue3 = CMG
              localValue3 = localValue3.setPlayerCombatTimer
              text6 = 60
              number14 = true
              localValue3(text6, number14)
            end
          end
        end
      end
    end
  end
  localValue1 = number13
  if localValue1 > 0 then
    localValue1 = DrawAdvancedText
    localValue2 = 0.985
    localValue3 = 0.965
    text6 = 0.005
    number14 = 0.0028
    number16 = 0.467
    workingValue13 = "COMBAT TIMER: "
    workingValue14 = number13
    workingValue16 = " seconds"
    workingValue13 = workingValue13 .. workingValue14 .. workingValue16
    workingValue14 = 246
    workingValue16 = 74
    workingValue17 = 70
    cmgOperation4 = 255
    number = 7
    modelHash = 0
    localValue1(localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash)
  end
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.createThreadOnTick
workingValue5 = cmgOperation6
text3 = "Combat Timer"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation8(workingValue5, text3)

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2, localValue3, text6, number14
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetCanPedEquipWeapon
  localValue3 = localValue1
  text6 = 615608432
  number14 = false
  localValue2(localValue3, text6, number14)
  localValue2 = GetSelectedPedWeapon
  localValue3 = localValue1
  -- Beginner: result below is weaponHash.
  localValue2 = localValue2(localValue3)
  if 615608432 == localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.setWeapon
    localValue3 = localValue1
    text6 = -1569615261
    number14 = true
    localValue2(localValue3, text6, number14)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, text6
  localValue1 = SetCanPedEquipWeapon
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 615608432
  text6 = true
  localValue1(localValue2, localValue3, text6)
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, text6, number14
  localValue1 = CMG
  localValue1 = localValue1.getClosestVehicle
  localValue2 = 10.0
  localValue1 = localValue1(localValue2)
  if 0 ~= localValue1 then
    localValue2 = SetEntityNoCollisionEntity
    localValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue3 = localValue3()
    text6 = localValue1
    number14 = true
    localValue2(localValue3, text6, number14)
  end
end
cmgOperation10 = CMG
cmgOperation10 = cmgOperation10.createArea
text4 = "rig_disable_molotovs"
createVector3 = vector3
number9 = -1703.7
number10 = 8886.5
number11 = 28.7
createVector3 = createVector3(number9, number10, number11)
number9 = 125.0
number10 = 250.0
number11 = cmgOperation8
cmgOperation11 = workingValue5

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
end
-- Beginner: Create an interaction area around a world position.
cmgOperation10(text4, createVector3, number9, number10, number11, cmgOperation11, text5)
cmgOperation10 = CMG
cmgOperation10 = cmgOperation10.createArea
text4 = "rebel_prevent_block"
createVector3 = vector3
number9 = 1431.6760253906
number10 = 6339.607421875
number11 = 23.850383758545
createVector3 = createVector3(number9, number10, number11)
number9 = 10.0
number10 = 10.0

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: cmgOperation11; parameters: none) ===
function cmgOperation11()
  local localValue1, localValue2
end
text5 = text3
cmgOperation10(text4, createVector3, number9, number10, number11, cmgOperation11, text5)
cmgOperation10 = AddEventHandler
text4 = "2286c4bb78"
-- Beginner: this function runs when client event "2286c4bb78" fires.

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4
  localValue2 = CMG
  localValue2 = localValue2.inEvent
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isAimTraining
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.shouldSuppressCombatTimer
      localValue2 = localValue2()
      if not localValue2 then
        goto continueAtStep17
      end
    end
  end
  return
  ::continueAtStep17::
  localValue2 = IsPedAPlayer
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = stateFlag
    if not localValue2 then
      goto continueAtStep26
    end
  end
  return
  ::continueAtStep26::
  localValue2 = false
  localValue3 = GetEntityCoords
  text6 = localValue1
  number14 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(text6, number14)
  text6 = pairs
  number14 = cmgOperation.locations
  text6, number14, number16, workingValue13 = text6(number14)
  for workingValue14, workingValue16 in text6, number14, number16, workingValue13 do
    workingValue17 = workingValue16.pos
    workingValue17 = localValue3 - workingValue17
    workingValue17 = #workingValue17
    cmgOperation4 = workingValue16.radius
    if workingValue17 < cmgOperation4 then
      localValue2 = true
      break
    end
  end
  if localValue2 then
    text6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text6 = text6()
    number14 = number15
    text6 = text6 - number14
    number14 = 15000
    if text6 > number14 then
      text6 = NetworkGetPlayerIndexFromPed
      number14 = localValue1
      text6 = text6(number14)
      if text6 >= 0 then
        number14 = GetPlayerServerId
        number16 = text6
        -- Beginner: result below is serverId.
        number14 = number14(number16)
        if number14 > 0 then
          number16 = PlaySoundFrontend
          workingValue13 = -1
          workingValue14 = "End_Zone_Flash"
          workingValue16 = "DLC_BTL_RB_Remix_Sounds"
          workingValue17 = true
          number16(workingValue13, workingValue14, workingValue16, workingValue17)
          number16 = CMG
          number16 = number16.announceMpBigMsg
          workingValue13 = "~r~WARNING"
          workingValue14 = "Do not shoot at players from outside a redzone!"
          workingValue16 = 10000
          number16(workingValue13, workingValue14, workingValue16)
          number16 = TriggerServerEvent
          workingValue13 = "679c52a575"
          workingValue14 = number14
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "679c52a575".
          number16(workingValue13, workingValue14)
          number16 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          number16 = number16()
          number15 = number16
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2286c4bb78".
cmgOperation10(text4, createVector3)
cmgOperation10 = 0

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetCurrentPedWeapon
  localValue3 = localValue1
  text6 = nil
  number14 = false
  localValue2, localValue3 = localValue2(localValue3, text6, number14)
  if not localValue2 or 0 == localValue3 then
    return
  end
  text6 = IsPedInCover
  number14 = localValue1
  number16 = false
  text6 = text6(number14, number16)
  if not text6 then
    return
  end
  text6 = GetCurrentPedWeaponEntityIndex
  number14 = localValue1
  text6 = text6(number14)
  if 0 == text6 then
    return
  end
  number14 = GetEntityCoords
  number16 = text6
  workingValue13 = true
  -- Beginner: result below is entityCoords.
  number14 = number14(number16, workingValue13)
  number16 = select
  workingValue13 = 2
  workingValue14 = GetEntityMatrix
  workingValue16 = text6
  workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11 = workingValue14(workingValue16)
  number16 = number16(workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11)
  workingValue13 = number16 * 1.5
  workingValue13 = number14 + workingValue13
  workingValue14 = _ENV
  workingValue16 = "StartExpensiveSynchronousShapeTestLosProbe"
  workingValue14 = workingValue14[workingValue16]
  workingValue16 = number14.x
  workingValue17 = number14.y
  cmgOperation4 = number14.z
  number = workingValue13.x
  modelHash = workingValue13.y
  number2 = workingValue13.z
  number3 = 2
  text2 = localValue1
  number4 = 7
  workingValue14 = workingValue14(workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4)
  workingValue16 = GetShapeTestResult
  workingValue17 = workingValue14
  workingValue16, workingValue17, cmgOperation4, number, modelHash = workingValue16(workingValue17)
  if workingValue17 then
    number2 = IsEntityAVehicle
    number3 = modelHash
    number2 = number2(number3)
    if number2 then
      goto continueAtStep64
    end
  end
  return
  ::continueAtStep64::
  number2 = DisableControlAction
  number3 = 0
  text2 = 24
  number4 = true
  number2(number3, text2, number4)
  number2 = DisableControlAction
  number3 = 0
  text2 = 257
  number4 = true
  number2(number3, text2, number4)
  number2 = IsDisabledControlPressed
  number3 = 0
  text2 = 24
  number2 = number2(number3, text2)
  if number2 then
    number2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number2 = number2()
    number3 = math
    number3 = number3.floor
    text2 = GetWeaponTimeBetweenShots
    number4 = localValue3
    text2 = text2(number4)
    text2 = text2 * 1000.0
    number3 = number3(text2)
    text2 = cmgOperation10
    text2 = number2 - text2
    if number3 <= text2 then
      text2 = GetAmmoInPedWeapon
      number4 = localValue1
      heading = localValue3
      text2 = text2(number4, heading)
      number4 = select
      heading = 2
      cmgOperation7 = GetAmmoInClip
      number5 = localValue1
      number6 = localValue3
      cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11 = cmgOperation7(number5, number6)
      number4 = number4(heading, cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11)
      if number4 > 0 then
        heading = _ENV
        cmgOperation7 = "ShootSingleBulletBetweenCoordsIgnoreEntity"
        heading = heading[cmgOperation7]
        cmgOperation7 = number14.x
        number5 = number14.y
        number6 = number14.z
        number7 = cmgOperation4.x
        workingValue6 = cmgOperation4.y
        workingValue7 = cmgOperation4.z
        number8 = 0.0
        stateFlag2 = true
        workingValue8 = localValue3
        workingValue9 = localValue1
        stateFlag3 = true
        stateFlag4 = false
        number12 = -1.0
        workingValue11 = text6
        heading(cmgOperation7, number5, number6, number7, workingValue6, workingValue7, number8, stateFlag2, workingValue8, workingValue9, stateFlag3, stateFlag4, number12, workingValue11)
        heading = SetAmmoInClip
        cmgOperation7 = localValue1
        number5 = localValue3
        number6 = number4 - 1
        heading(cmgOperation7, number5, number6)
      elseif text2 > 0 then
        heading = IsPedReloading
        cmgOperation7 = localValue1
        heading = heading(cmgOperation7)
        if not heading then
          heading = SetControlNormal
          cmgOperation7 = 0
          number5 = 45
          number6 = 1.0
          heading(cmgOperation7, number5, number6)
        end
      end
      cmgOperation10 = number2
    end
  end
end
createVector3 = CMG
createVector3 = createVector3.createThreadOnTick
number9 = text4
number10 = "Vehicle Ghost Peak Patch"
-- Beginner: Run a helper every game frame while this script is active.
createVector3(number9, number10)

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2) ===
function createVector3(localValue1, localValue2)
  local localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  text6 = nil
  number14 = 1
  number16 = 100
  workingValue13 = 1
  for workingValue14 = number14, number16, workingValue13 do
    workingValue16 = GetNthClosestVehicleNode
    workingValue17 = localValue3.x
    cmgOperation4 = localValue3.y
    number = localValue3.z
    modelHash = workingValue14
    workingValue16, workingValue17 = workingValue16(workingValue17, cmgOperation4, number, modelHash)
    if workingValue16 then
      cmgOperation4 = localValue1 - workingValue17
      cmgOperation4 = #cmgOperation4
      if localValue2 < cmgOperation4 then
        text6 = workingValue17
        break
      end
    end
  end
  if text6 then
    number14 = CMG
    number14 = number14.getPlayerVehicle
    number14, number16 = number14()
    if 0 ~= number14 then
      if number16 then
        workingValue13 = GetScriptTaskStatus
        workingValue14 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue14 = workingValue14()
        workingValue16 = -1817882002
        workingValue13 = workingValue13(workingValue14, workingValue16)
        if 7 == workingValue13 then
          workingValue13 = TaskVehicleDriveToCoord
          workingValue14 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue14 = workingValue14()
          workingValue16 = number14
          workingValue17 = text6.x
          cmgOperation4 = text6.y
          number = text6.z
          modelHash = 30.0
          number2 = 1.0
          number3 = GetEntityModel
          text2 = number14
          -- Beginner: result below is modelHash.
          number3 = number3(text2)
          text2 = 16777216
          number4 = 1.0
          heading = 1
          workingValue13(workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading)
        end
      end
    else
      workingValue13 = GetScriptTaskStatus
      workingValue14 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue14 = workingValue14()
      workingValue16 = -1672495956
      workingValue13 = workingValue13(workingValue14, workingValue16)
      if 7 == workingValue13 then
        workingValue13 = TaskFollowNavMeshToCoordAdvanced
        workingValue14 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue14 = workingValue14()
        workingValue16 = text6.x
        workingValue17 = text6.y
        cmgOperation4 = text6.z
        number = 8.0
        modelHash = -1
        number2 = 2.5
        number3 = 0
        text2 = 0
        number4 = 0.0
        heading = 100.0
        cmgOperation7 = 4000.0
        workingValue13(workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = localValue1.startTime
  localValue2 = localValue2 - localValue3
  localValue3 = number17
  localValue3 = localValue3 - localValue2
  text6 = math
  text6 = text6.floor
  number14 = localValue3 / 1000
  text6 = text6(number14)
  number14 = DrawAdvancedText
  number16 = 0.985
  workingValue13 = 0.87
  workingValue14 = 0.005
  workingValue16 = 0.0028
  workingValue17 = 0.467
  cmgOperation4 = "NLR ZONE: "
  number = text6
  modelHash = " seconds remaining"
  cmgOperation4 = cmgOperation4 .. number .. modelHash
  number = 246
  modelHash = 74
  number2 = 70
  number3 = 255
  text2 = 7
  number4 = 0
  number14(number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4)
  number14 = tCMG
  number14 = number14.isInComa
  number14 = number14()
  if not number14 then
    number14 = CMG
    number14 = number14.getPlayerCoords
    -- Beginner: result below is playerCoords.
    number14 = number14()
    number14 = number14.z
    if number14 >= 0.0 then
      number14 = createVector3
      number16 = localValue1.coords
      workingValue13 = localValue1.radius
      -- Beginner: Run a helper every game frame while this script is active.
      number14(number16, workingValue13)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1, localValue2) ===
function number10(localValue1, localValue2)
  local localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7
  localValue3 = cmgOperation.locations
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    return
  end
  text6 = CMG
  text6 = text6.generateUUID
  number14 = "nlrzone"
  number16 = 5
  workingValue13 = "alphanumeric"
  text6 = text6(number14, number16, workingValue13)
  number14 = localValue3.radius
  number14 = number14 + 100.0
  number16 = number14 * 2.0
  workingValue13 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue13 = workingValue13()
  workingValue14 = tCMG
  workingValue14 = workingValue14.addMarker
  workingValue16 = localValue3.pos
  workingValue16 = workingValue16.x
  workingValue17 = localValue3.pos
  workingValue17 = workingValue17.y
  cmgOperation4 = localValue3.pos
  cmgOperation4 = cmgOperation4.z
  cmgOperation4 = cmgOperation4 - 20.0
  number = number16
  modelHash = number16
  number2 = number16
  number3 = 240
  text2 = 128
  number4 = 128
  heading = 80
  cmgOperation7 = 1000.0
  workingValue14 = workingValue14(workingValue16, workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4, heading, cmgOperation7)
  workingValue16 = CMG
  workingValue16 = workingValue16.createArea
  workingValue17 = "nlrzone_"
  cmgOperation4 = text6
  workingValue17 = workingValue17 .. cmgOperation4
  cmgOperation4 = localValue3.pos
  number = number14
  modelHash = number14

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local cmgOperation2, cmgOperation9
  end

  -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
  function number3()
    local cmgOperation2, cmgOperation9
  end
  text2 = number9
  number4 = {}
  number4.startTime = workingValue13
  heading = localValue3.pos
  number4.coords = heading
  number4.radius = number14
  workingValue16 = workingValue16(workingValue17, cmgOperation4, number, modelHash, number2, number3, text2, number4)
  workingValue17 = SetTimeout
  cmgOperation4 = localValue2

  -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
  function number()
    local cmgOperation2, cmgOperation9
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.removeMarker
    cmgOperation9 = workingValue14
    cmgOperation2(cmgOperation9)
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.removeArea
    cmgOperation9 = workingValue16
    cmgOperation2(cmgOperation9)
  end
  workingValue17(cmgOperation4, number)
end

-- === HELPER FUNCTION (decompiler name: number11; parameters: localValue1) ===
function number11(localValue1)
  local localValue2, localValue3, text6, number14, number16, workingValue13, workingValue14, workingValue16, workingValue17
  localValue2 = pairs
  localValue3 = cmgOperation.locations
  localValue2, localValue3, text6, number14 = localValue2(localValue3)
  for number16, workingValue13 in localValue2, localValue3, text6, number14 do
    workingValue14 = cmgOperation5
    workingValue16 = localValue1
    workingValue17 = workingValue13
    workingValue14 = workingValue14(workingValue16, workingValue17)
    if workingValue14 then
      return number16
    end
  end
  localValue2 = nil
  return localValue2
end
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3
  localValue2 = number11
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  workingValue15 = localValue2
  localValue2 = workingValue15
  if not localValue2 then
    localValue2 = workingValue12
    if localValue2 then
      localValue2 = workingValue12.index
      if localValue2 then
        localValue2 = workingValue12.index
        workingValue15 = localValue2
      end
    end
  end
end
cmgOperation11.storeNlrZoneOnDeath = text5
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, text6
  localValue1 = workingValue15
  if not localValue1 then
    localValue2 = workingValue12
    if localValue2 then
      localValue2 = workingValue12.index
      if localValue2 then
        localValue1 = workingValue12.index
      end
    end
  end
  if localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "c2e25c40cb"
    text6 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c2e25c40cb".
    localValue2(localValue3, text6)
    localValue2 = number10
    localValue3 = localValue1
    text6 = number17
    localValue2(localValue3, text6)
  end
  localValue2 = nil
  workingValue15 = localValue2
end
cmgOperation11.attemptNLRZoneCreation = text5
cmgOperation11 = RegisterNetEvent
text5 = "60b0240b80"
-- Beginner: this function handles network event "60b0240b80".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3, text6, number14
  localValue3 = number10
  text6 = localValue1
  number14 = localValue2
  localValue3(text6, number14)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "60b0240b80".
cmgOperation11(text5, workingValue10)
cmgOperation11 = CMG
-- Beginner: this function handles network event "60b0240b80".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3) ===
function text5(localValue1, localValue2, localValue3)
  local text6, number14, number16, workingValue13, workingValue14
  text6 = cmgOperation.locations
  text6 = text6[localValue1]
  if text6 then
    return
  end
  text6 = cmgOperation.locations
  number14 = {}
  number14.type = "radius"
  number14.pos = localValue2
  number14.radius = localValue3
  number16 = workingValue3
  workingValue13 = localValue2
  workingValue14 = localValue3
  number16 = number16(workingValue13, workingValue14)
  number14.blip = number16
  text6[localValue1] = number14
end
cmgOperation11.createRedzone = text5
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, text6
  localValue2 = cmgOperation.locations
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = localValue2.blip
  if localValue3 then
    localValue3 = RemoveBlip
    text6 = localValue2.blip
    localValue3(text6)
  end
  localValue3 = cmgOperation.locations
  localValue3[localValue1] = nil
end
cmgOperation11.deleteRedzone = text5
cmgOperation11 = tCMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation11.inRedzone = text5
