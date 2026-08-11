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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cmgCall, flag, flag5, numberValue13, flag6, numberValue15, workValue12, numberValue17, workValue15, flag7, cmgCall3, cmgCall5, textValue, workValue, workValue2, workValue3, workValue4, threadCall, cmgCall6, cmgCall8, workValue5, textValue3, cmgCall10, textValue4, vector3Builder, numberValue9, numberValue10, numberValue11, cmgCall11, textValue5, workValue10
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag = "cfg/cfg_redzones"
-- Beginner: result below is config.
cmgCall = cmgCall(flag)
flag = false
flag5 = false
numberValue13 = 0
flag6 = false
numberValue15 = 0
workValue12 = nil
numberValue17 = 600000
workValue15 = nil
flag7 = false
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2
  flag5 = arg1
end
cmgCall3.setRedzoneTimerDisabled = cmgCall5
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = flag
  arg2 = workValue12
  if arg2 then
    arg2 = workValue12.index
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = nil
  ::flow_label_9::
  return arg1, arg2
end
cmgCall3.isPlayerInRedZone = cmgCall5
cmgCall3 = 0
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, textValue6, numberValue14
  arg3 = CMG
  arg3 = arg3.inEvent
  arg3 = arg3()
  if not arg3 then
    arg3 = CMG
    arg3 = arg3.isAimTraining
    arg3 = arg3()
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.shouldSuppressCombatTimer
      arg3 = arg3()
      if not arg3 then
        goto flow_label_30
      end
    end
  end
  if 0 == arg1 then
    arg3 = 0
    numberValue13 = arg3
    arg3 = false
    flag6 = arg3
    arg3 = TriggerServerEvent
    textValue6 = "33bc0305ab"
    numberValue14 = 0
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "33bc0305ab".
    arg3(textValue6, numberValue14)
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    cmgCall3 = arg3
  end
  return
  ::flow_label_30::
  arg3 = CMG
  arg3 = arg3.isPurge
  arg3 = arg3()
  if arg3 and arg1 > 0 then
    arg3 = math
    arg3 = arg3.floor
    textValue6 = arg1 / 3
    arg3 = arg3(textValue6)
    arg1 = arg3
  end
  numberValue13 = arg1
  if arg2 then
    arg3 = CMG
    arg3 = arg3.inOrganHesit
    arg3 = arg3()
    if not arg3 then
      arg3 = true
      flag6 = arg3
    end
  end
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  textValue6 = cmgCall3
  arg3 = arg3 - textValue6
  textValue6 = 2500
  if not (arg3 > textValue6) then
    arg3 = CMG
    arg3 = arg3.isStaffedOnClient
    arg3 = arg3()
    if not arg3 then
      goto flow_label_73
    end
  end
  arg3 = TriggerServerEvent
  textValue6 = "33bc0305ab"
  numberValue14 = arg1
  arg3(textValue6, numberValue14)
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  cmgCall3 = arg3
  ::flow_label_73::
end
cmgCall5.setPlayerCombatTimer = textValue
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = numberValue13
  arg2 = flag6
  return arg1, arg2
end
cmgCall5.getPlayerCombatTimer = textValue
cmgCall5 = RegisterNetEvent
textValue = "66ce6bfecb"
-- Beginner: this function handles network event "66ce6bfecb".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3, textValue6, numberValue14
  arg3 = CMG
  arg3 = arg3.isInGreenzone
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.setPlayerCombatTimer
  textValue6 = arg1
  numberValue14 = arg2
  arg3(textValue6, numberValue14)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66ce6bfecb".
cmgCall5(textValue, workValue)
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16
  arg2 = pairs
  arg3 = cmgCall.locations
  arg2, arg3, textValue6, numberValue14 = arg2(arg3)
  for numberValue16, workValue13 in arg2, arg3, textValue6, numberValue14 do
    workValue14 = workValue13.pos
    workValue14 = workValue14 - arg1
    workValue14 = #workValue14
    workValue16 = workValue13.radius
    if workValue14 < workValue16 then
      workValue14 = true
      return workValue14
    end
  end
  arg2 = false
  return arg2
end
cmgCall5.isPositionInRedzone = textValue

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16
  arg3 = arg2.type
  if "radius" == arg3 then
    arg3 = arg2.pos
    arg3 = arg3.z
    textValue6 = math
    textValue6 = textValue6.max
    numberValue14 = arg2.radius
    numberValue16 = 100.0
    textValue6 = textValue6(numberValue14, numberValue16)
    arg3 = arg3 + textValue6
    textValue6 = arg1.xy
    numberValue14 = arg2.pos
    numberValue14 = numberValue14.xy
    textValue6 = textValue6 - numberValue14
    textValue6 = #textValue6
    numberValue14 = arg2.radius
    textValue6 = textValue6 <= numberValue14
    return textValue6
  else
    arg3 = arg2.type
    if "area" == arg3 then
      arg3 = arg2.width
      arg3 = arg3 / 2.0
      textValue6 = arg2.height
      textValue6 = textValue6 / 2.0
      numberValue14 = arg2.pos
      numberValue14 = arg1 - numberValue14
      numberValue14 = #numberValue14
      numberValue16 = arg3 + textValue6
      if numberValue14 <= numberValue16 then
        numberValue14 = vector3
        numberValue16 = arg3
        workValue13 = textValue6
        workValue14 = 0.0
        numberValue14 = numberValue14(numberValue16, workValue13, workValue14)
        numberValue16 = arg2.pos
        numberValue16 = numberValue16 + numberValue14
        workValue13 = arg2.pos
        workValue13 = workValue13 - numberValue14
        workValue14 = arg1.x
        workValue16 = numberValue16.x
        workValue14 = workValue14 < workValue16
        return workValue14
      end
    end
  end
  arg3 = false
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4
  arg1 = workValue12
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = nil
  arg3 = 1
  textValue6 = 25
  numberValue14 = 1
  for numberValue16 = arg3, textValue6, numberValue14 do
    workValue13 = GetNthClosestVehicleNode
    workValue14 = arg1.x
    workValue16 = arg1.y
    workValue17 = arg1.z
    cmgCall4 = numberValue16
    workValue13, workValue14 = workValue13(workValue14, workValue16, workValue17, cmgCall4)
    if workValue13 then
      workValue16 = workValue12.pos
      workValue16 = workValue16 - workValue14
      workValue16 = #workValue16
      workValue17 = workValue12.radius
      if workValue16 > workValue17 then
        arg2 = workValue14
        break
      end
    end
  end
  arg3 = CMG
  arg3 = arg3.setPlayerCombatTimer
  textValue6 = 0
  numberValue14 = false
  arg3(textValue6, numberValue14)
  if arg2 then
    arg3 = CMG
    arg3 = arg3.getPlayerVehicle
    arg3, textValue6 = arg3()
    if 0 ~= arg3 then
      if textValue6 then
        numberValue14 = GetScriptTaskStatus
        numberValue16 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        numberValue16 = numberValue16()
        workValue13 = -1817882002
        numberValue14 = numberValue14(numberValue16, workValue13)
        if 7 == numberValue14 then
          numberValue14 = TaskVehicleDriveToCoord
          numberValue16 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          numberValue16 = numberValue16()
          workValue13 = arg3
          workValue14 = arg2.x
          workValue16 = arg2.y
          workValue17 = arg2.z
          cmgCall4 = 30.0
          numberValue = 1.0
          modelHash = GetEntityModel
          numberValue2 = arg3
          -- Beginner: result below is modelHash.
          modelHash = modelHash(numberValue2)
          numberValue2 = 16777216
          numberValue3 = 1.0
          textValue2 = 1
          numberValue14(numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2)
        end
      end
    else
      numberValue14 = GetScriptTaskStatus
      numberValue16 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue16 = numberValue16()
      workValue13 = -1672495956
      numberValue14 = numberValue14(numberValue16, workValue13)
      if 7 == numberValue14 then
        numberValue14 = TaskFollowNavMeshToCoordAdvanced
        numberValue16 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        numberValue16 = numberValue16()
        workValue13 = arg2.x
        workValue14 = arg2.y
        workValue16 = arg2.z
        workValue17 = 8.0
        cmgCall4 = -1
        numberValue = 2.5
        modelHash = 0
        numberValue2 = 0
        numberValue3 = 0.0
        textValue2 = 100.0
        numberValue4 = 4000.0
        numberValue14(numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "lfb.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "vigilante.onduty.permission"
      arg1 = arg1(arg2)
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasSpawnProtection
        arg1 = arg1()
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.hasNewPlayerProtection
          arg1 = arg1()
        end
      end
    end
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = workValue12
  if arg1 then
    arg1 = cmgCall.locations
    arg2 = workValue12.index
    arg1 = arg1[arg2]
    if arg1 then
      arg1 = true
      return arg1
  end
  else
    arg1 = false
    return arg1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, textValue6, numberValue14, numberValue16, workValue13
  arg3 = AddBlipForRadius
  textValue6 = arg1.x
  numberValue14 = arg1.y
  numberValue16 = arg1.z
  workValue13 = arg2
  -- Beginner: result below is blipHandle.
  arg3 = arg3(textValue6, numberValue14, numberValue16, workValue13)
  textValue6 = SetBlipColour
  numberValue14 = arg3
  numberValue16 = 1
  textValue6(numberValue14, numberValue16)
  textValue6 = SetBlipAlpha
  numberValue14 = arg3
  numberValue16 = 180
  textValue6(numberValue14, numberValue16)
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2
  arg1 = flag7
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.setCanAnim
    arg2 = true
    arg1(arg2)
    arg1 = false
    flag7 = arg1
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, textValue6 = arg1(arg2)
  for numberValue14, numberValue16 in arg1, arg2, arg3, textValue6 do
    workValue13 = numberValue16.createBlip
    if workValue13 then
      workValue13 = workValue3
      workValue14 = numberValue16.pos
      workValue16 = numberValue16.radius
      workValue13 = workValue13(workValue14, workValue16)
      numberValue16.blip = workValue13
    end
  end
  while true do
    arg1 = flag5
    if not arg1 then
      arg1 = GetEntityCoords
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = arg2()
      -- Beginner: result below is entityCoords.
      arg1 = arg1(arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
      arg2 = false
      flag = arg2
      arg2 = pairs
      arg3 = cmgCall.locations
      arg2, arg3, textValue6, numberValue14 = arg2(arg3)
      for numberValue16, workValue13 in arg2, arg3, textValue6, numberValue14 do
        workValue14 = cmgCall5
        workValue16 = arg1
        workValue17 = workValue13
        workValue14 = workValue14(workValue16, workValue17)
        if workValue14 then
          workValue14 = true
          flag = workValue14
          workValue14 = GetEntityCoords
          workValue16 = CMG
          workValue16 = workValue16.getPlayerPed
          workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = workValue16()
          -- Beginner: result below is entityCoords.
          workValue14 = workValue14(workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
          arg1 = workValue14
          workValue14 = CMG
          workValue14 = workValue14.hasSpawnProtection
          workValue14 = workValue14()
          if not workValue14 then
            workValue14 = CMG
            workValue14 = workValue14.hasNewPlayerProtection
            workValue14 = workValue14()
            if not workValue14 then
              workValue14 = CMG
              workValue14 = workValue14.isNoClipActive
              workValue14 = workValue14()
              if workValue14 then
                workValue14 = CMG
                workValue14 = workValue14.hasClientPermission
                workValue16 = "admin.tickets"
                workValue14 = workValue14(workValue16)
                if workValue14 then
                  goto flow_label_81
                end
              end
              workValue14 = arg1.z
              if workValue14 > -25.0 then
                workValue14 = CMG
                workValue14 = workValue14.shouldSuppressCombatTimer
                workValue14 = workValue14()
                if not workValue14 then
                  workValue14 = CMG
                  workValue14 = workValue14.setPlayerCombatTimer
                  workValue16 = 30
                  workValue17 = false
                  workValue14(workValue16, workValue17)
                  workValue14 = TriggerServerEvent
                  workValue16 = "6d5e3f7688"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d5e3f7688".
                  workValue14(workValue16)
                end
              end
            end
          end
          ::flow_label_81::
          workValue14 = nil
          workValue16 = false
          workValue12 = workValue13
          workValue12.index = numberValue16
          while not workValue16 do
            workValue17 = GetEntityCoords
            cmgCall4 = CMG
            cmgCall4 = cmgCall4.getPlayerPed
            cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = cmgCall4()
            -- Beginner: result below is entityCoords.
            workValue17 = workValue17(cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
            arg1 = workValue17
            while true do
              workValue17 = cmgCall5
              cmgCall4 = arg1
              numberValue = workValue13
              workValue17 = workValue17(cmgCall4, numberValue)
              if not workValue17 then
                break
              end
              workValue17 = workValue2
              workValue17 = workValue17()
              if not workValue17 then
                break
              end
              workValue17 = workValue4
              workValue17()
              workValue17 = GetEntityCoords
              cmgCall4 = CMG
              cmgCall4 = cmgCall4.getPlayerPed
              cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = cmgCall4()
              -- Beginner: result below is entityCoords.
              workValue17 = workValue17(cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
              arg1 = workValue17
              workValue14 = arg1
              workValue17 = CMG
              workValue17 = workValue17.shouldSuppressCombatTimer
              workValue17 = workValue17()
              if not workValue17 then
                workValue17 = IsPedShooting
                cmgCall4 = CMG
                cmgCall4 = cmgCall4.getPlayerPed
                cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = cmgCall4()
                workValue17 = workValue17(cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
                if workValue17 then
                  workValue17 = GetSelectedPedWeapon
                  cmgCall4 = CMG
                  cmgCall4 = cmgCall4.getPlayerPed
                  cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = cmgCall4()
                  -- Beginner: result below is weaponHash.
                  workValue17 = workValue17(cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
                  if -1569615261 ~= workValue17 then
                    workValue17 = CMG
                    workValue17 = workValue17.setPlayerCombatTimer
                    cmgCall4 = 60
                    numberValue = true
                    workValue17(cmgCall4, numberValue)
                  end
                end
              end
              workValue17 = numberValue13
              if 0 == workValue17 then
                workValue17 = DrawAdvancedText
                cmgCall4 = 0.931
                numberValue = 0.914
                modelHash = 0.005
                numberValue2 = 0.0028
                numberValue3 = 0.49
                textValue2 = "Combat Timer ended, you may leave."
                numberValue4 = 255
                heading = 51
                cmgCall7 = 51
                numberValue5 = 255
                numberValue6 = 7
                numberValue7 = 0
                workValue17(cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
              end
              workValue17 = workValue
              workValue17 = workValue17()
              if workValue17 then
                workValue17 = CMG
                workValue17 = workValue17.isStaffedOnClient
                workValue17 = workValue17()
                if not workValue17 then
                  workValue17 = CMG
                  workValue17 = workValue17.hasSpawnProtection
                  workValue17 = workValue17()
                  if not workValue17 then
                    workValue17 = CMG
                    workValue17 = workValue17.hasNewPlayerProtection
                    workValue17 = workValue17()
                    if not workValue17 then
                      goto flow_label_176
                    end
                  end
                  workValue17 = notify
                  cmgCall4 = "~r~You cannot enter redzones while you have protection active."
                  -- Beginner: Show a notification to the player.
                  workValue17(cmgCall4)
                  goto flow_label_179
                  ::flow_label_176::
                  workValue17 = notify
                  cmgCall4 = "~r~You are not allowed in redzones while on duty. Exiting zone..."
                  workValue17(cmgCall4)
                  ::flow_label_179::
                  workValue17 = textValue
                  workValue17()
                end
              end
              workValue17 = Wait
              cmgCall4 = 0
              workValue17(cmgCall4)
            end
            workValue17 = numberValue13
            if 0 ~= workValue17 then
              workValue17 = workValue2
              workValue17 = workValue17()
              if workValue17 then
                goto flow_label_194
              end
            end
            workValue16 = true
            goto flow_label_273
            ::flow_label_194::
            workValue17 = workValue13.pos
            cmgCall4 = GetEntityCoords
            numberValue = CMG
            numberValue = numberValue.getPlayerPed
            numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7 = numberValue()
            -- Beginner: result below is entityCoords.
            cmgCall4 = cmgCall4(numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7)
            workValue17 = workValue17 - cmgCall4
            cmgCall4 = workValue17 * 0.01
            workValue14 = workValue14 + cmgCall4
            cmgCall4 = GetVehiclePedIsIn
            numberValue = CMG
            numberValue = numberValue.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            numberValue = numberValue()
            modelHash = false
            -- Beginner: result below is currentVehicle.
            cmgCall4 = cmgCall4(numberValue, modelHash)
            if 0 == cmgCall4 then
              cmgCall4 = TaskGoStraightToCoord
              numberValue = CMG
              numberValue = numberValue.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              numberValue = numberValue()
              modelHash = workValue14.x
              numberValue2 = workValue14.y
              numberValue3 = workValue14.z
              textValue2 = 8.0
              numberValue4 = 1000
              heading = GetEntityHeading
              cmgCall7 = CMG
              cmgCall7 = cmgCall7.getPlayerPed
              cmgCall7, numberValue5, numberValue6, numberValue7 = cmgCall7()
              -- Beginner: result below is heading.
              heading = heading(cmgCall7, numberValue5, numberValue6, numberValue7)
              cmgCall7 = 0.0
              cmgCall4(numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7)
              cmgCall4 = GetSoundId
              -- Beginner: result below is soundHandle.
              cmgCall4 = cmgCall4()
              numberValue = PlaySoundFrontend
              modelHash = cmgCall4
              numberValue2 = "End_Zone_Flash"
              numberValue3 = "DLC_BTL_RB_Remix_Sounds"
              textValue2 = true
              numberValue(modelHash, numberValue2, numberValue3, textValue2)
              numberValue = ReleaseSoundId
              modelHash = cmgCall4
              numberValue(modelHash)
              numberValue = CMG
              numberValue = numberValue.announceMpBigMsg
              modelHash = "~r~WARNING"
              numberValue2 = "Get back in the redzone!"
              numberValue3 = 2000
              numberValue(modelHash, numberValue2, numberValue3)
              numberValue = flag7
              if not numberValue then
                numberValue = tCMG
                numberValue = numberValue.setCanAnim
                modelHash = false
                numberValue(modelHash)
                numberValue = true
                flag7 = numberValue
              end
            else
              cmgCall4 = SetEntityCoords
              numberValue = CMG
              numberValue = numberValue.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              numberValue = numberValue()
              modelHash = workValue14.x
              numberValue2 = workValue14.y
              numberValue3 = workValue14.z
              textValue2 = true
              numberValue4 = false
              heading = false
              cmgCall7 = false
              -- Beginner: Move/teleport an entity to new coordinates.
              cmgCall4(numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7)
            end
            cmgCall4 = SetTimeout
            numberValue = 1000

            -- === HELPER FUNCTION: modelHash() ===
            function modelHash()
              local cmgCall2, cmgCall9
              cmgCall2 = ClearPedTasks
              cmgCall9 = CMG
              cmgCall9 = cmgCall9.getPlayerPed
              -- Beginner: result below is localPlayerPed.
              cmgCall9 = cmgCall9()
              cmgCall2(cmgCall9)
            end
            cmgCall4(numberValue, modelHash)
            ::flow_label_273::
            workValue17 = Wait
            cmgCall4 = 0
            workValue17(cmgCall4)
          end
          workValue17 = workValue4
          workValue17()
          workValue17 = nil
          workValue12 = workValue17
        end
      end
    end
    arg1 = Wait
    arg2 = 500
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall6)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3
  while true do
    arg1 = numberValue13
    if arg1 > 0 then
      arg1 = flag5
      if arg1 then
        arg1 = CMG
        arg1 = arg1.setPlayerCombatTimer
        arg2 = 0
        arg3 = false
        arg1(arg2, arg3)
      else
        arg1 = numberValue13
        arg1 = arg1 - 1
        numberValue13 = arg1
        arg1 = numberValue13
        if 0 == arg1 then
          arg1 = false
          flag6 = arg1
        end
      end
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall6)
threadCall = {}
cmgCall6 = -1569615261
threadCall[cmgCall6] = true
cmgCall6 = 883325847
threadCall[cmgCall6] = true
cmgCall6 = 126349499
threadCall[cmgCall6] = true
cmgCall6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: none) ===
function cmgCall8()
  local arg1, arg2
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
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "nhs.onduty.permission"
      arg1 = arg1(arg2)
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "lfb.onduty.permission"
        arg1 = arg1(arg2)
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.hasClientPermission
          arg2 = "borderforce.onduty.permission"
          arg1 = arg1(arg2)
        end
      end
    end
  end
  return arg1
end
cmgCall6.isEmergencyService = cmgCall8
cmgCall6 = RegisterNetEvent
cmgCall8 = "56e6172373"
-- Beginner: this function handles network event "56e6172373".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, textValue6
  arg2 = CMG
  arg2 = arg2.isEmergencyService
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isInPaintball
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.shouldSuppressCombatTimer
      arg2 = arg2()
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.setPlayerCombatTimer
        arg3 = 60
        textValue6 = arg1
        arg2(arg3, textValue6)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "56e6172373".
cmgCall6(cmgCall8, workValue5)

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash
  arg1 = flag5
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.inEvent
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.isAimTraining
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.shouldSuppressCombatTimer
        arg1 = arg1()
        if not arg1 then
          goto flow_label_20
        end
      end
    end
  end
  return
  ::flow_label_20::
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if not arg1 then
    arg1 = tCMG
    arg1 = arg1.isInComa
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.isInPaintball
      arg1 = arg1()
      if not arg1 then
        arg1 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg1 = arg1()
        arg2 = HasEntityBeenDamagedByWeapon
        arg3 = arg1
        textValue6 = 0
        numberValue14 = 2
        arg2 = arg2(arg3, textValue6, numberValue14)
        if arg2 then
          arg2 = Citizen
          arg2 = arg2.CreateThread

          -- === HELPER FUNCTION: arg3() ===
          function arg3()
            local cmgCall2, cmgCall9
            cmgCall2 = ClearEntityLastDamageEntity
            cmgCall9 = arg1
            cmgCall2(cmgCall9)
            cmgCall2 = ClearEntityLastWeaponDamage
            cmgCall9 = arg1
            cmgCall2(cmgCall9)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg2(arg3)
          arg2 = CMG
          arg2 = arg2.setPlayerCombatTimer
          arg3 = 60
          textValue6 = true
          arg2(arg3, textValue6)
        end
        arg2 = GetSelectedPedWeapon
        arg3 = arg1
        -- Beginner: result below is weaponHash.
        arg2 = arg2(arg3)
        arg3 = IsPedShooting
        textValue6 = arg1
        arg3 = arg3(textValue6)
        if arg3 then
          arg3 = threadCall
          arg3 = arg3[arg2]
          if not arg3 then
            arg3 = CMG
            arg3 = arg3.setPlayerCombatTimer
            textValue6 = 60
            numberValue14 = true
            arg3(textValue6, numberValue14)
        end
        else
          arg3 = GetPlayerTargetEntity
          textValue6 = CMG
          textValue6 = textValue6.getPlayerId
          textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash = textValue6()
          arg3 = arg3(textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash)
          if arg3 then
            arg3 = IsControlPressed
            textValue6 = 0
            numberValue14 = 24
            arg3 = arg3(textValue6, numberValue14)
            if arg3 then
              arg3 = CMG
              arg3 = arg3.setPlayerCombatTimer
              textValue6 = 60
              numberValue14 = true
              arg3(textValue6, numberValue14)
            end
          end
        end
      end
    end
  end
  arg1 = numberValue13
  if arg1 > 0 then
    arg1 = DrawAdvancedText
    arg2 = 0.985
    arg3 = 0.965
    textValue6 = 0.005
    numberValue14 = 0.0028
    numberValue16 = 0.467
    workValue13 = "COMBAT TIMER: "
    workValue14 = numberValue13
    workValue16 = " seconds"
    workValue13 = workValue13 .. workValue14 .. workValue16
    workValue14 = 246
    workValue16 = 74
    workValue17 = 70
    cmgCall4 = 255
    numberValue = 7
    modelHash = 0
    arg1(arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash)
  end
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.createThreadOnTick
workValue5 = cmgCall6
textValue3 = "Combat Timer"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall8(workValue5, textValue3)

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: none) ===
function cmgCall8()
  local arg1, arg2, arg3, textValue6, numberValue14
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetCanPedEquipWeapon
  arg3 = arg1
  textValue6 = 615608432
  numberValue14 = false
  arg2(arg3, textValue6, numberValue14)
  arg2 = GetSelectedPedWeapon
  arg3 = arg1
  -- Beginner: result below is weaponHash.
  arg2 = arg2(arg3)
  if 615608432 == arg2 then
    arg2 = CMG
    arg2 = arg2.setWeapon
    arg3 = arg1
    textValue6 = -1569615261
    numberValue14 = true
    arg2(arg3, textValue6, numberValue14)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, textValue6
  arg1 = SetCanPedEquipWeapon
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 615608432
  textValue6 = true
  arg1(arg2, arg3, textValue6)
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, textValue6, numberValue14
  arg1 = CMG
  arg1 = arg1.getClosestVehicle
  arg2 = 10.0
  arg1 = arg1(arg2)
  if 0 ~= arg1 then
    arg2 = SetEntityNoCollisionEntity
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    textValue6 = arg1
    numberValue14 = true
    arg2(arg3, textValue6, numberValue14)
  end
end
cmgCall10 = CMG
cmgCall10 = cmgCall10.createArea
textValue4 = "rig_disable_molotovs"
vector3Builder = vector3
numberValue9 = -1703.7
numberValue10 = 8886.5
numberValue11 = 28.7
vector3Builder = vector3Builder(numberValue9, numberValue10, numberValue11)
numberValue9 = 125.0
numberValue10 = 250.0
numberValue11 = cmgCall8
cmgCall11 = workValue5

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
end
-- Beginner: Create an interaction area around a world position.
cmgCall10(textValue4, vector3Builder, numberValue9, numberValue10, numberValue11, cmgCall11, textValue5)
cmgCall10 = CMG
cmgCall10 = cmgCall10.createArea
textValue4 = "rebel_prevent_block"
vector3Builder = vector3
numberValue9 = 1431.6760253906
numberValue10 = 6339.607421875
numberValue11 = 23.850383758545
vector3Builder = vector3Builder(numberValue9, numberValue10, numberValue11)
numberValue9 = 10.0
numberValue10 = 10.0

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: cmgCall11; parameters: none) ===
function cmgCall11()
  local arg1, arg2
end
textValue5 = textValue3
cmgCall10(textValue4, vector3Builder, numberValue9, numberValue10, numberValue11, cmgCall11, textValue5)
cmgCall10 = AddEventHandler
textValue4 = "2286c4bb78"
-- Beginner: this function runs when client event "2286c4bb78" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1) ===
function vector3Builder(arg1)
  local arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4
  arg2 = CMG
  arg2 = arg2.inEvent
  arg2 = arg2()
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isAimTraining
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.shouldSuppressCombatTimer
      arg2 = arg2()
      if not arg2 then
        goto flow_label_17
      end
    end
  end
  return
  ::flow_label_17::
  arg2 = IsPedAPlayer
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = flag
    if not arg2 then
      goto flow_label_26
    end
  end
  return
  ::flow_label_26::
  arg2 = false
  arg3 = GetEntityCoords
  textValue6 = arg1
  numberValue14 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(textValue6, numberValue14)
  textValue6 = pairs
  numberValue14 = cmgCall.locations
  textValue6, numberValue14, numberValue16, workValue13 = textValue6(numberValue14)
  for workValue14, workValue16 in textValue6, numberValue14, numberValue16, workValue13 do
    workValue17 = workValue16.pos
    workValue17 = arg3 - workValue17
    workValue17 = #workValue17
    cmgCall4 = workValue16.radius
    if workValue17 < cmgCall4 then
      arg2 = true
      break
    end
  end
  if arg2 then
    textValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue6 = textValue6()
    numberValue14 = numberValue15
    textValue6 = textValue6 - numberValue14
    numberValue14 = 15000
    if textValue6 > numberValue14 then
      textValue6 = NetworkGetPlayerIndexFromPed
      numberValue14 = arg1
      textValue6 = textValue6(numberValue14)
      if textValue6 >= 0 then
        numberValue14 = GetPlayerServerId
        numberValue16 = textValue6
        -- Beginner: result below is serverId.
        numberValue14 = numberValue14(numberValue16)
        if numberValue14 > 0 then
          numberValue16 = PlaySoundFrontend
          workValue13 = -1
          workValue14 = "End_Zone_Flash"
          workValue16 = "DLC_BTL_RB_Remix_Sounds"
          workValue17 = true
          numberValue16(workValue13, workValue14, workValue16, workValue17)
          numberValue16 = CMG
          numberValue16 = numberValue16.announceMpBigMsg
          workValue13 = "~r~WARNING"
          workValue14 = "Do not shoot at players from outside a redzone!"
          workValue16 = 10000
          numberValue16(workValue13, workValue14, workValue16)
          numberValue16 = TriggerServerEvent
          workValue13 = "679c52a575"
          workValue14 = numberValue14
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "679c52a575".
          numberValue16(workValue13, workValue14)
          numberValue16 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          numberValue16 = numberValue16()
          numberValue15 = numberValue16
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2286c4bb78".
cmgCall10(textValue4, vector3Builder)
cmgCall10 = 0

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetCurrentPedWeapon
  arg3 = arg1
  textValue6 = nil
  numberValue14 = false
  arg2, arg3 = arg2(arg3, textValue6, numberValue14)
  if not arg2 or 0 == arg3 then
    return
  end
  textValue6 = IsPedInCover
  numberValue14 = arg1
  numberValue16 = false
  textValue6 = textValue6(numberValue14, numberValue16)
  if not textValue6 then
    return
  end
  textValue6 = GetCurrentPedWeaponEntityIndex
  numberValue14 = arg1
  textValue6 = textValue6(numberValue14)
  if 0 == textValue6 then
    return
  end
  numberValue14 = GetEntityCoords
  numberValue16 = textValue6
  workValue13 = true
  -- Beginner: result below is entityCoords.
  numberValue14 = numberValue14(numberValue16, workValue13)
  numberValue16 = select
  workValue13 = 2
  workValue14 = GetEntityMatrix
  workValue16 = textValue6
  workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11 = workValue14(workValue16)
  numberValue16 = numberValue16(workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11)
  workValue13 = numberValue16 * 1.5
  workValue13 = numberValue14 + workValue13
  workValue14 = _ENV
  workValue16 = "StartExpensiveSynchronousShapeTestLosProbe"
  workValue14 = workValue14[workValue16]
  workValue16 = numberValue14.x
  workValue17 = numberValue14.y
  cmgCall4 = numberValue14.z
  numberValue = workValue13.x
  modelHash = workValue13.y
  numberValue2 = workValue13.z
  numberValue3 = 2
  textValue2 = arg1
  numberValue4 = 7
  workValue14 = workValue14(workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4)
  workValue16 = GetShapeTestResult
  workValue17 = workValue14
  workValue16, workValue17, cmgCall4, numberValue, modelHash = workValue16(workValue17)
  if workValue17 then
    numberValue2 = IsEntityAVehicle
    numberValue3 = modelHash
    numberValue2 = numberValue2(numberValue3)
    if numberValue2 then
      goto flow_label_64
    end
  end
  return
  ::flow_label_64::
  numberValue2 = DisableControlAction
  numberValue3 = 0
  textValue2 = 24
  numberValue4 = true
  numberValue2(numberValue3, textValue2, numberValue4)
  numberValue2 = DisableControlAction
  numberValue3 = 0
  textValue2 = 257
  numberValue4 = true
  numberValue2(numberValue3, textValue2, numberValue4)
  numberValue2 = IsDisabledControlPressed
  numberValue3 = 0
  textValue2 = 24
  numberValue2 = numberValue2(numberValue3, textValue2)
  if numberValue2 then
    numberValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue2 = numberValue2()
    numberValue3 = math
    numberValue3 = numberValue3.floor
    textValue2 = GetWeaponTimeBetweenShots
    numberValue4 = arg3
    textValue2 = textValue2(numberValue4)
    textValue2 = textValue2 * 1000.0
    numberValue3 = numberValue3(textValue2)
    textValue2 = cmgCall10
    textValue2 = numberValue2 - textValue2
    if numberValue3 <= textValue2 then
      textValue2 = GetAmmoInPedWeapon
      numberValue4 = arg1
      heading = arg3
      textValue2 = textValue2(numberValue4, heading)
      numberValue4 = select
      heading = 2
      cmgCall7 = GetAmmoInClip
      numberValue5 = arg1
      numberValue6 = arg3
      cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11 = cmgCall7(numberValue5, numberValue6)
      numberValue4 = numberValue4(heading, cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11)
      if numberValue4 > 0 then
        heading = _ENV
        cmgCall7 = "ShootSingleBulletBetweenCoordsIgnoreEntity"
        heading = heading[cmgCall7]
        cmgCall7 = numberValue14.x
        numberValue5 = numberValue14.y
        numberValue6 = numberValue14.z
        numberValue7 = cmgCall4.x
        workValue6 = cmgCall4.y
        workValue7 = cmgCall4.z
        numberValue8 = 0.0
        flag2 = true
        workValue8 = arg3
        workValue9 = arg1
        flag3 = true
        flag4 = false
        numberValue12 = -1.0
        workValue11 = textValue6
        heading(cmgCall7, numberValue5, numberValue6, numberValue7, workValue6, workValue7, numberValue8, flag2, workValue8, workValue9, flag3, flag4, numberValue12, workValue11)
        heading = SetAmmoInClip
        cmgCall7 = arg1
        numberValue5 = arg3
        numberValue6 = numberValue4 - 1
        heading(cmgCall7, numberValue5, numberValue6)
      elseif textValue2 > 0 then
        heading = IsPedReloading
        cmgCall7 = arg1
        heading = heading(cmgCall7)
        if not heading then
          heading = SetControlNormal
          cmgCall7 = 0
          numberValue5 = 45
          numberValue6 = 1.0
          heading(cmgCall7, numberValue5, numberValue6)
        end
      end
      cmgCall10 = numberValue2
    end
  end
end
vector3Builder = CMG
vector3Builder = vector3Builder.createThreadOnTick
numberValue9 = textValue4
numberValue10 = "Vehicle Ghost Peak Patch"
-- Beginner: Run a helper every game frame while this script is active.
vector3Builder(numberValue9, numberValue10)

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1, arg2) ===
function vector3Builder(arg1, arg2)
  local arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  textValue6 = nil
  numberValue14 = 1
  numberValue16 = 100
  workValue13 = 1
  for workValue14 = numberValue14, numberValue16, workValue13 do
    workValue16 = GetNthClosestVehicleNode
    workValue17 = arg3.x
    cmgCall4 = arg3.y
    numberValue = arg3.z
    modelHash = workValue14
    workValue16, workValue17 = workValue16(workValue17, cmgCall4, numberValue, modelHash)
    if workValue16 then
      cmgCall4 = arg1 - workValue17
      cmgCall4 = #cmgCall4
      if arg2 < cmgCall4 then
        textValue6 = workValue17
        break
      end
    end
  end
  if textValue6 then
    numberValue14 = CMG
    numberValue14 = numberValue14.getPlayerVehicle
    numberValue14, numberValue16 = numberValue14()
    if 0 ~= numberValue14 then
      if numberValue16 then
        workValue13 = GetScriptTaskStatus
        workValue14 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue14 = workValue14()
        workValue16 = -1817882002
        workValue13 = workValue13(workValue14, workValue16)
        if 7 == workValue13 then
          workValue13 = TaskVehicleDriveToCoord
          workValue14 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue14 = workValue14()
          workValue16 = numberValue14
          workValue17 = textValue6.x
          cmgCall4 = textValue6.y
          numberValue = textValue6.z
          modelHash = 30.0
          numberValue2 = 1.0
          numberValue3 = GetEntityModel
          textValue2 = numberValue14
          -- Beginner: result below is modelHash.
          numberValue3 = numberValue3(textValue2)
          textValue2 = 16777216
          numberValue4 = 1.0
          heading = 1
          workValue13(workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading)
        end
      end
    else
      workValue13 = GetScriptTaskStatus
      workValue14 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue14 = workValue14()
      workValue16 = -1672495956
      workValue13 = workValue13(workValue14, workValue16)
      if 7 == workValue13 then
        workValue13 = TaskFollowNavMeshToCoordAdvanced
        workValue14 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue14 = workValue14()
        workValue16 = textValue6.x
        workValue17 = textValue6.y
        cmgCall4 = textValue6.z
        numberValue = 8.0
        modelHash = -1
        numberValue2 = 2.5
        numberValue3 = 0
        textValue2 = 0
        numberValue4 = 0.0
        heading = 100.0
        cmgCall7 = 4000.0
        workValue13(workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: arg1) ===
function numberValue9(arg1)
  local arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = arg1.startTime
  arg2 = arg2 - arg3
  arg3 = numberValue17
  arg3 = arg3 - arg2
  textValue6 = math
  textValue6 = textValue6.floor
  numberValue14 = arg3 / 1000
  textValue6 = textValue6(numberValue14)
  numberValue14 = DrawAdvancedText
  numberValue16 = 0.985
  workValue13 = 0.87
  workValue14 = 0.005
  workValue16 = 0.0028
  workValue17 = 0.467
  cmgCall4 = "NLR ZONE: "
  numberValue = textValue6
  modelHash = " seconds remaining"
  cmgCall4 = cmgCall4 .. numberValue .. modelHash
  numberValue = 246
  modelHash = 74
  numberValue2 = 70
  numberValue3 = 255
  textValue2 = 7
  numberValue4 = 0
  numberValue14(numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4)
  numberValue14 = tCMG
  numberValue14 = numberValue14.isInComa
  numberValue14 = numberValue14()
  if not numberValue14 then
    numberValue14 = CMG
    numberValue14 = numberValue14.getPlayerCoords
    -- Beginner: result below is playerCoords.
    numberValue14 = numberValue14()
    numberValue14 = numberValue14.z
    if numberValue14 >= 0.0 then
      numberValue14 = vector3Builder
      numberValue16 = arg1.coords
      workValue13 = arg1.radius
      -- Beginner: Run a helper every game frame while this script is active.
      numberValue14(numberValue16, workValue13)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue10; parameters: arg1, arg2) ===
function numberValue10(arg1, arg2)
  local arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7
  arg3 = cmgCall.locations
  arg3 = arg3[arg1]
  if not arg3 then
    return
  end
  textValue6 = CMG
  textValue6 = textValue6.generateUUID
  numberValue14 = "nlrzone"
  numberValue16 = 5
  workValue13 = "alphanumeric"
  textValue6 = textValue6(numberValue14, numberValue16, workValue13)
  numberValue14 = arg3.radius
  numberValue14 = numberValue14 + 100.0
  numberValue16 = numberValue14 * 2.0
  workValue13 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue13 = workValue13()
  workValue14 = tCMG
  workValue14 = workValue14.addMarker
  workValue16 = arg3.pos
  workValue16 = workValue16.x
  workValue17 = arg3.pos
  workValue17 = workValue17.y
  cmgCall4 = arg3.pos
  cmgCall4 = cmgCall4.z
  cmgCall4 = cmgCall4 - 20.0
  numberValue = numberValue16
  modelHash = numberValue16
  numberValue2 = numberValue16
  numberValue3 = 240
  textValue2 = 128
  numberValue4 = 128
  heading = 80
  cmgCall7 = 1000.0
  workValue14 = workValue14(workValue16, workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4, heading, cmgCall7)
  workValue16 = CMG
  workValue16 = workValue16.createArea
  workValue17 = "nlrzone_"
  cmgCall4 = textValue6
  workValue17 = workValue17 .. cmgCall4
  cmgCall4 = arg3.pos
  numberValue = numberValue14
  modelHash = numberValue14

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local cmgCall2, cmgCall9
  end

  -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
  function numberValue3()
    local cmgCall2, cmgCall9
  end
  textValue2 = numberValue9
  numberValue4 = {}
  numberValue4.startTime = workValue13
  heading = arg3.pos
  numberValue4.coords = heading
  numberValue4.radius = numberValue14
  workValue16 = workValue16(workValue17, cmgCall4, numberValue, modelHash, numberValue2, numberValue3, textValue2, numberValue4)
  workValue17 = SetTimeout
  cmgCall4 = arg2

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
  function numberValue()
    local cmgCall2, cmgCall9
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.removeMarker
    cmgCall9 = workValue14
    cmgCall2(cmgCall9)
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.removeArea
    cmgCall9 = workValue16
    cmgCall2(cmgCall9)
  end
  workValue17(cmgCall4, numberValue)
end

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: arg1) ===
function numberValue11(arg1)
  local arg2, arg3, textValue6, numberValue14, numberValue16, workValue13, workValue14, workValue16, workValue17
  arg2 = pairs
  arg3 = cmgCall.locations
  arg2, arg3, textValue6, numberValue14 = arg2(arg3)
  for numberValue16, workValue13 in arg2, arg3, textValue6, numberValue14 do
    workValue14 = cmgCall5
    workValue16 = arg1
    workValue17 = workValue13
    workValue14 = workValue14(workValue16, workValue17)
    if workValue14 then
      return numberValue16
    end
  end
  arg2 = nil
  return arg2
end
cmgCall11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3
  arg2 = numberValue11
  arg3 = arg1
  arg2 = arg2(arg3)
  workValue15 = arg2
  arg2 = workValue15
  if not arg2 then
    arg2 = workValue12
    if arg2 then
      arg2 = workValue12.index
      if arg2 then
        arg2 = workValue12.index
        workValue15 = arg2
      end
    end
  end
end
cmgCall11.storeNlrZoneOnDeath = textValue5
cmgCall11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, textValue6
  arg1 = workValue15
  if not arg1 then
    arg2 = workValue12
    if arg2 then
      arg2 = workValue12.index
      if arg2 then
        arg1 = workValue12.index
      end
    end
  end
  if arg1 then
    arg2 = TriggerServerEvent
    arg3 = "c2e25c40cb"
    textValue6 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c2e25c40cb".
    arg2(arg3, textValue6)
    arg2 = numberValue10
    arg3 = arg1
    textValue6 = numberValue17
    arg2(arg3, textValue6)
  end
  arg2 = nil
  workValue15 = arg2
end
cmgCall11.attemptNLRZoneCreation = textValue5
cmgCall11 = RegisterNetEvent
textValue5 = "60b0240b80"
-- Beginner: this function handles network event "60b0240b80".

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3, textValue6, numberValue14
  arg3 = numberValue10
  textValue6 = arg1
  numberValue14 = arg2
  arg3(textValue6, numberValue14)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "60b0240b80".
cmgCall11(textValue5, workValue10)
cmgCall11 = CMG
-- Beginner: this function handles network event "60b0240b80".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3) ===
function textValue5(arg1, arg2, arg3)
  local textValue6, numberValue14, numberValue16, workValue13, workValue14
  textValue6 = cmgCall.locations
  textValue6 = textValue6[arg1]
  if textValue6 then
    return
  end
  textValue6 = cmgCall.locations
  numberValue14 = {}
  numberValue14.type = "radius"
  numberValue14.pos = arg2
  numberValue14.radius = arg3
  numberValue16 = workValue3
  workValue13 = arg2
  workValue14 = arg3
  numberValue16 = numberValue16(workValue13, workValue14)
  numberValue14.blip = numberValue16
  textValue6[arg1] = numberValue14
end
cmgCall11.createRedzone = textValue5
cmgCall11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3, textValue6
  arg2 = cmgCall.locations
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = arg2.blip
  if arg3 then
    arg3 = RemoveBlip
    textValue6 = arg2.blip
    arg3(textValue6)
  end
  arg3 = cmgCall.locations
  arg3[arg1] = nil
end
cmgCall11.deleteRedzone = textValue5
cmgCall11 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall11.inRedzone = textValue5
