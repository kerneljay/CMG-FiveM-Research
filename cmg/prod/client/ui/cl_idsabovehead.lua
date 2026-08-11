--[[
    LEVEL 1 BEGINNER GUIDE — Idsabovehead
    ==========================================

    File: cmg/prod/client/ui/cl_idsabovehead.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Idsabovehead feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 28
      * Background threads: 0
      * Always-running loops: 2
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
local numberValue, dataTable4, dataTable5, dataTable6, dataTable7, numberValue8, flag4, numberValue9, dataTable8, dataTable9, dataTable, dataTable2, flag, workValue4, numberValue3, dataTable3, workValue5, workValue6, cmgCall, textValue2, workValue8, workValue9, workValue10, cmgCall2, threadCall, flag2, workValue11, flag3
numberValue = 7.0
dataTable4 = {}
dataTable5 = {}
dataTable6 = {}
dataTable7 = {}
numberValue8 = 18
flag4 = false
numberValue9 = 30.0
dataTable8 = {}
dataTable9 = {}
dataTable = {}
dataTable2 = {}
flag = false
workValue4 = nil
numberValue3 = 30.0
dataTable3 = {}
dataTable3.metpd = 9
dataTable3.nhs = 18
dataTable3.lfb = 6
dataTable3.borderforce = 2
dataTable3.hmp = 11

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = "metpd"
    return arg1
  else
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "nhs.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = "nhs"
      return arg1
    else
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "lfb.onduty.permission"
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = "lfb"
        return arg1
      else
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "prisonguard.onduty.permission"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = "hmp"
          return arg1
        else
          arg1 = CMG
          arg1 = arg1.hasClientPermission
          arg2 = "borderforce.onduty.permission"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = "borderforce"
            return arg1
          end
        end
      end
    end
  end
  arg1 = nil
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, workValue12
  arg2 = workValue4
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.clientGetUserIdFromSource
  arg3 = arg1
  -- Beginner: result below is userId.
  arg2 = arg2(arg3)
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = CMG
  arg3 = arg3.getJobType
  workValue12 = arg2
  arg3 = arg3(workValue12)
  workValue12 = workValue4
  arg3 = arg3 == workValue12
  return arg3
end
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, workValue12
  arg2 = dataTable8
  arg2 = arg2[arg1]
  if not arg2 then
    arg3 = GetPlayerServerId
    workValue12 = arg1
    -- Beginner: result below is serverId.
    arg3 = arg3(workValue12)
    arg2 = arg3
    if arg2 > 0 then
      arg3 = dataTable8
      arg3[arg1] = arg2
    end
  end
  return arg2
end
cmgCall.getPlayerServerId = textValue2
cmgCall = RegisterNetEvent
textValue2 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3
  arg2 = pairs
  arg3 = dataTable8
  arg2, arg3, workValue12, cmgCall3 = arg2(arg3)
  for playerPed, playerPed2 in arg2, arg3, workValue12, cmgCall3 do
    if playerPed2 == arg1 then
      playerPed3 = dataTable8
      playerPed3[playerPed] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
cmgCall(textValue2, workValue8)

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local arg2, arg3, workValue12
  arg2 = CMG
  arg2 = arg2.doesPlayerHaveRadioItem
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = CMG
    arg2 = arg2.clientGetUserIdFromSource
    arg3 = arg1
    -- Beginner: result below is userId.
    arg2 = arg2(arg3)
    if arg2 then
      arg3 = CMG
      arg3 = arg3.getJobType
      workValue12 = arg2
      arg3 = arg3(workValue12)
      arg3 = "" == arg3
      return arg3
    end
  end
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isStaffedOnClient
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isInSpectate
    arg1 = arg1()
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3
  arg2 = Player
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = arg2.state
  arg2 = arg2.newPlayerProtection
  arg2 = true == arg2
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3) ===
function workValue9(arg1, arg2, arg3)
  local workValue12, cmgCall3, playerPed, playerPed2, playerPed3
  workValue12 = dataTable2
  workValue12 = workValue12[arg1]
  if workValue12 then
    workValue12 = 30.0
    if workValue12 then
      goto flow_label_9
    end
  end
  workValue12 = numberValue
  ::flow_label_9::
  if arg2 < workValue12 then
    if arg3 then
      cmgCall3 = flag4
      if cmgCall3 then
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.isPlayerInSelectedGang
        playerPed = arg1
        cmgCall3 = cmgCall3(playerPed)
        if cmgCall3 then
          cmgCall3 = cmgCall
          playerPed = arg1
          cmgCall3 = cmgCall3(playerPed)
          if cmgCall3 then
            goto flow_label_39
          end
        end
      end
      cmgCall3 = flag
      if cmgCall3 then
        cmgCall3 = workValue6
        playerPed = arg1
        cmgCall3 = cmgCall3(playerPed)
        if cmgCall3 then
          goto flow_label_39
        end
      end
      cmgCall3 = textValue2
      cmgCall3 = cmgCall3()
      if cmgCall3 then
        ::flow_label_39::
        cmgCall3 = true
        return cmgCall3
      else
        cmgCall3 = HasEntityClearLosToEntity
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        playerPed2 = GetPlayerPed
        playerPed3 = arg3
        -- Beginner: result below is playerPed.
        playerPed2 = playerPed2(playerPed3)
        playerPed3 = 17
        return cmgCall3(playerPed, playerPed2, playerPed3)
      end
    end
    cmgCall3 = true
    return cmgCall3
  else
    cmgCall3 = flag4
    if cmgCall3 then
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.isPlayerInSelectedGang
      playerPed = arg1
      cmgCall3 = cmgCall3(playerPed)
      if cmgCall3 then
        cmgCall3 = cmgCall
        playerPed = arg1
        cmgCall3 = cmgCall3(playerPed)
        if cmgCall3 then
          cmgCall3 = numberValue9
          playerPed = CMG
          playerPed = playerPed.getGangPublicNameViewDistanceFloor
          playerPed = playerPed()
          if cmgCall3 < playerPed then
            cmgCall3 = playerPed
          end
          if arg2 < cmgCall3 then
            playerPed2 = true
            return playerPed2
          end
      end
    end
    else
      cmgCall3 = flag
      if cmgCall3 then
        cmgCall3 = workValue6
        playerPed = arg1
        cmgCall3 = cmgCall3(playerPed)
        if cmgCall3 then
          cmgCall3 = numberValue3
          if arg2 < cmgCall3 then
            cmgCall3 = true
            return cmgCall3
          end
        end
      end
    end
  end
  cmgCall3 = false
  return cmgCall3
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue
  arg1 = CMG
  arg1 = arg1.isEventPlayerTagEnabled
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isDisplayVisible
    arg2 = "ids"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = ipairs
      arg3 = GetActivePlayers
      arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue = arg3()
      arg2, arg3, workValue12, cmgCall3 = arg2(arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue)
      for playerPed, playerPed2 in arg2, arg3, workValue12, cmgCall3 do
        playerPed3 = GetPlayerPed
        cmgCall4 = playerPed2
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(cmgCall4)
        if playerPed3 ~= arg1 then
          cmgCall4 = dataTable4
          cmgCall4 = cmgCall4[playerPed2]
          if cmgCall4 then
            cmgCall4 = CMG
            cmgCall4 = cmgCall4.getPlayerServerId
            cmgCall5 = playerPed2
            cmgCall4 = cmgCall4(cmgCall5)
            if cmgCall4 then
              cmgCall5 = CMG
              cmgCall5 = cmgCall5.isPlayerTaggedForBounty
              workValue = cmgCall4
              cmgCall5 = cmgCall5(workValue)
              workValue = workValue9
              workValue2 = cmgCall4
              workValue3 = dataTable4
              workValue3 = workValue3[playerPed2]
              workValue = workValue(workValue2, workValue3)
              if workValue or cmgCall5 then
                workValue = dataTable6
                workValue = workValue[playerPed2]
                workValue2 = NetworkIsPlayerTalking
                workValue3 = playerPed2
                workValue2 = workValue2(workValue3)
                if workValue2 then
                  workValue2 = SetMpGamerTagAlpha
                  workValue3 = workValue
                  numberValue2 = 4
                  numberValue4 = 255
                  workValue2(workValue3, numberValue2, numberValue4)
                  workValue2 = workValue8
                  workValue3 = cmgCall4
                  workValue2 = workValue2(workValue3)
                  if workValue2 then
                    workValue2 = dataTable9
                    workValue2 = workValue2[cmgCall4]
                    if not workValue2 then
                      workValue2 = SetMpGamerTagColour
                      workValue3 = workValue
                      numberValue2 = 0
                      numberValue4 = numberValue8
                      workValue2(workValue3, numberValue2, numberValue4)
                  end
                  else
                    workValue2 = SetMpGamerTagColour
                    workValue3 = workValue
                    numberValue2 = 0
                    numberValue4 = 9
                    workValue2(workValue3, numberValue2, numberValue4)
                  end
                  workValue2 = SetMpGamerTagColour
                  workValue3 = workValue
                  numberValue2 = 4
                  numberValue4 = 0
                  workValue2(workValue3, numberValue2, numberValue4)
                  workValue2 = SetMpGamerTagVisibility
                  workValue3 = workValue
                  numberValue2 = 4
                  numberValue4 = true
                  workValue2(workValue3, numberValue2, numberValue4)
                else
                  workValue2 = dataTable9
                  workValue2 = workValue2[cmgCall4]
                  if workValue2 then
                    workValue3 = SetMpGamerTagColour
                    numberValue2 = workValue
                    numberValue4 = 0
                    numberValue5 = workValue2[2]
                    workValue3(numberValue2, numberValue4, numberValue5)
                  else
                    workValue3 = workValue8
                    numberValue2 = cmgCall4
                    workValue3 = workValue3(numberValue2)
                    if workValue3 then
                      workValue3 = SetMpGamerTagColour
                      numberValue2 = workValue
                      numberValue4 = 0
                      numberValue5 = numberValue8
                      workValue3(numberValue2, numberValue4, numberValue5)
                    else
                      workValue3 = dataTable2
                      workValue3 = workValue3[cmgCall4]
                      if "Enemy" == workValue3 then
                        workValue3 = SetMpGamerTagColour
                        numberValue2 = workValue
                        numberValue4 = 0
                        numberValue5 = 6
                        workValue3(numberValue2, numberValue4, numberValue5)
                      else
                        workValue3 = dataTable2
                        workValue3 = workValue3[cmgCall4]
                        if "Friendly" == workValue3 then
                          workValue3 = SetMpGamerTagColour
                          numberValue2 = workValue
                          numberValue4 = 0
                          numberValue5 = 18
                          workValue3(numberValue2, numberValue4, numberValue5)
                        else
                          workValue3 = CMG
                          workValue3 = workValue3.isPlayerInSelectedGang
                          numberValue2 = cmgCall4
                          workValue3, numberValue2 = workValue3(numberValue2)
                          numberValue4 = flag4
                          if numberValue4 and workValue3 then
                            numberValue4 = cmgCall
                            numberValue5 = cmgCall4
                            numberValue4 = numberValue4(numberValue5)
                            if numberValue4 then
                              numberValue4 = SetMpGamerTagColour
                              numberValue5 = workValue
                              numberValue6 = 0
                              workValue7 = numberValue2.hud
                              numberValue4(numberValue5, numberValue6, workValue7)
                          end
                          else
                            numberValue4 = flag
                            if numberValue4 then
                              numberValue4 = workValue6
                              numberValue5 = cmgCall4
                              numberValue4 = numberValue4(numberValue5)
                              if numberValue4 then
                                numberValue4 = SetMpGamerTagColour
                                numberValue5 = workValue
                                numberValue6 = 0
                                textValue = workValue4
                                workValue7 = dataTable3
                                workValue7 = workValue7[textValue]
                                if not workValue7 then
                                  workValue7 = 0
                                end
                                numberValue4(numberValue5, numberValue6, workValue7)
                            end
                            else
                              numberValue4 = SetMpGamerTagColour
                              numberValue5 = workValue
                              numberValue6 = 0
                              workValue7 = 0
                              numberValue4(numberValue5, numberValue6, workValue7)
                            end
                          end
                        end
                      end
                    end
                  end
                  workValue3 = SetMpGamerTagColour
                  numberValue2 = workValue
                  numberValue4 = 4
                  numberValue5 = 0
                  workValue3(numberValue2, numberValue4, numberValue5)
                  workValue3 = SetMpGamerTagVisibility
                  numberValue2 = workValue
                  numberValue4 = 4
                  numberValue5 = false
                  workValue3(numberValue2, numberValue4, numberValue5)
                end
                workValue2 = SetMpGamerTagVisibility
                workValue3 = workValue
                numberValue2 = 19
                numberValue4 = cmgCall5
                workValue2(workValue3, numberValue2, numberValue4)
                workValue2 = SetMpGamerTagColour
                workValue3 = workValue
                numberValue2 = 19
                numberValue4 = 125
                workValue2(workValue3, numberValue2, numberValue4)
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
threadCall = workValue10
flag2 = "Gamer Tags Customisation"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(threadCall, flag2)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2) ===
function cmgCall2(arg1, arg2)
  local arg3, workValue12
  arg3 = IsEntityVisible
  workValue12 = arg1
  arg3 = arg3(workValue12)
  if arg3 then
    arg3 = true
    return arg3
  end
  arg3 = CMG
  arg3 = arg3.clientGetUserIdFromSource
  workValue12 = arg2
  -- Beginner: result below is userId.
  arg3 = arg3(workValue12)
  if arg3 then
    workValue12 = fullPlayerListData
    workValue12 = workValue12[arg3]
    if workValue12 then
      goto flow_label_20
    end
  end
  workValue12 = true
  return workValue12
  ::flow_label_20::
  workValue12 = fullPlayerListData
  workValue12 = workValue12[arg3]
  workValue12 = workValue12[5]
  workValue12 = not workValue12
  return workValue12
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2, arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4
  while true do
    arg1 = {}
    dataTable4 = arg1
    arg1 = {}
    dataTable5 = arg1
    arg1 = CMG
    arg1 = arg1.inArena
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.isEventPlayerTagEnabled
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = CMG
      arg3 = arg3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg3 = arg3()
      workValue12 = CMG
      workValue12 = workValue12.isInSpectate
      workValue12 = workValue12()
      if workValue12 then
        workValue12 = GetFinalRenderedCamCoord
        workValue12 = workValue12()
        arg3 = workValue12
      end
      workValue12 = ipairs
      cmgCall3 = GetActivePlayers
      cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4 = cmgCall3()
      workValue12, cmgCall3, playerPed, playerPed2 = workValue12(cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4)
      for playerPed3, cmgCall4 in workValue12, cmgCall3, playerPed, playerPed2 do
        cmgCall5 = GetPlayerPed
        workValue = cmgCall4
        -- Beginner: result below is playerPed.
        cmgCall5 = cmgCall5(workValue)
        workValue = CMG
        workValue = workValue.getPlayerServerId
        workValue2 = cmgCall4
        workValue = workValue(workValue2)
        if cmgCall5 ~= arg2 then
          workValue2 = cmgCall2
          workValue3 = cmgCall5
          numberValue2 = workValue
          workValue2 = workValue2(workValue3, numberValue2)
          if workValue2 then
            if arg1 then
              workValue2 = dataTable
              workValue2 = workValue2[workValue]
              if not workValue2 then
                goto flow_label_71
              end
            end
            workValue2 = GetEntityCoords
            workValue3 = cmgCall5
            -- Beginner: result below is entityCoords.
            workValue2 = workValue2(workValue3)
            workValue3 = dataTable4
            numberValue2 = arg3 - workValue2
            numberValue2 = #numberValue2
            workValue3[cmgCall4] = numberValue2
            workValue3 = DecorGetBool
            numberValue2 = cmgCall5
            numberValue4 = "a99d39faff"
            workValue3 = workValue3(numberValue2, numberValue4)
            if workValue3 then
              workValue3 = dataTable5
              workValue3[cmgCall4] = true
            end
          end
        end
        ::flow_label_71::
      end
      workValue12 = textValue2
      workValue12 = workValue12()
      if not workValue12 and not arg1 then
        workValue12 = 7.0
        numberValue = workValue12
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 1000
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(flag2)
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2, arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7
  while true do
    arg1 = CMG
    arg1 = arg1.hasGangNamesEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isEmergencyService
      arg1 = arg1()
      arg1 = not arg1
    end
    flag4 = arg1
    arg1 = CMG
    arg1 = arg1.areEmergencyServiceNamesDisabled
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.inEvent
      arg1 = arg1()
      if not arg1 then
        arg1 = workValue5
        arg1 = arg1()
        workValue4 = arg1
        arg1 = workValue4
        arg1 = nil ~= arg1
        flag = arg1
    end
    else
      arg1 = nil
      workValue4 = arg1
      arg1 = false
      flag = arg1
    end
    arg1 = CMG
    arg1 = arg1.isDisplayVisible
    arg2 = "ids"
    arg1 = arg1(arg2)
    arg2 = ipairs
    arg3 = GetActivePlayers
    arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7 = arg3()
    arg2, arg3, workValue12, cmgCall3 = arg2(arg3, workValue12, cmgCall3, playerPed, playerPed2, playerPed3, cmgCall4, cmgCall5, workValue, workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7)
    for playerPed, playerPed2 in arg2, arg3, workValue12, cmgCall3 do
      playerPed3 = dataTable4
      playerPed3 = playerPed3[playerPed2]
      cmgCall4 = CMG
      cmgCall4 = cmgCall4.getPlayerServerId
      cmgCall5 = playerPed2
      cmgCall4 = cmgCall4(cmgCall5)
      if playerPed3 and cmgCall4 then
        cmgCall5 = workValue9
        workValue = cmgCall4
        workValue2 = playerPed3
        workValue3 = playerPed2
        cmgCall5 = cmgCall5(workValue, workValue2, workValue3)
        if not cmgCall5 then
          cmgCall5 = CMG
          cmgCall5 = cmgCall5.shouldShowTagForBounty
          workValue = cmgCall4
          cmgCall5 = cmgCall5(workValue)
        end
        if cmgCall5 and arg1 then
          cmgCall5 = nil
          workValue = flag4
          if workValue then
            workValue = CMG
            workValue = workValue.isPlayerInSelectedGang
            workValue2 = cmgCall4
            workValue = workValue(workValue2)
            if workValue then
              workValue = cmgCall
              workValue2 = cmgCall4
              workValue = workValue(workValue2)
              if workValue then
                workValue = CMG
                workValue = workValue.getPlayerName
                workValue2 = playerPed2
                workValue = workValue(workValue2)
                cmgCall5 = workValue
            end
          end
          else
            workValue = flag
            if workValue then
              workValue = workValue6
              workValue2 = cmgCall4
              workValue = workValue(workValue2)
              if workValue then
                workValue = CMG
                workValue = workValue.getPlayerName
                workValue2 = playerPed2
                workValue = workValue(workValue2)
                cmgCall5 = workValue
                workValue = Player
                workValue2 = cmgCall4
                workValue = workValue(workValue2)
                workValue = workValue.state
                workValue = workValue.onDutyCallsign
                if workValue and "" ~= workValue then
                  workValue2 = "["
                  workValue3 = workValue
                  numberValue2 = "] "
                  numberValue4 = cmgCall5
                  workValue2 = workValue2 .. workValue3 .. numberValue2 .. numberValue4
                  cmgCall5 = workValue2
                end
            end
            else
              workValue = tostring
              workValue2 = CMG
              workValue2 = workValue2.getPlayerServerId
              workValue3 = playerPed2
              workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7 = workValue2(workValue3)
              workValue = workValue(workValue2, workValue3, numberValue2, numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7)
              cmgCall5 = workValue
              workValue = dataTable5
              workValue = workValue[playerPed2]
              if workValue then
                workValue = cmgCall5
                workValue2 = " [Cinematic Mode]"
                workValue = workValue .. workValue2
                cmgCall5 = workValue
              end
            end
          end
          workValue = dataTable2
          workValue = workValue[cmgCall4]
          if "Enemy" == workValue then
            workValue = "[Enemy Gang Member] "
            workValue2 = cmgCall5
            workValue = workValue .. workValue2
            cmgCall5 = workValue
          else
            workValue = dataTable2
            workValue = workValue[cmgCall4]
            if "Neutral" == workValue then
              workValue = "[Neutral Gang Member] "
              workValue2 = cmgCall5
              workValue = workValue .. workValue2
              cmgCall5 = workValue
            else
              workValue = dataTable2
              workValue = workValue[cmgCall4]
              if "Friendly" == workValue then
                workValue = "[Friendly Gang Member] "
                workValue2 = cmgCall5
                workValue = workValue .. workValue2
                cmgCall5 = workValue
              end
            end
          end
          workValue = dataTable9
          workValue = workValue[cmgCall4]
          if workValue then
            workValue2 = "["
            workValue3 = workValue[1]
            numberValue2 = "] "
            numberValue4 = CMG
            numberValue4 = numberValue4.getPlayerName
            numberValue5 = playerPed2
            numberValue4 = numberValue4(numberValue5)
            workValue2 = workValue2 .. workValue3 .. numberValue2 .. numberValue4
            cmgCall5 = workValue2
          else
            workValue2 = workValue8
            workValue3 = cmgCall4
            workValue2 = workValue2(workValue3)
            if workValue2 then
              workValue2 = "[New Player] "
              workValue3 = cmgCall5
              workValue2 = workValue2 .. workValue3
              cmgCall5 = workValue2
            end
          end
          workValue2 = dataTable
          workValue2 = workValue2[cmgCall4]
          if workValue2 then
            cmgCall5 = workValue2
          end
          workValue3 = dataTable7
          workValue3 = workValue3[playerPed2]
          if workValue3 ~= cmgCall5 then
            workValue3 = dataTable6
            workValue3 = workValue3[playerPed2]
            if workValue3 then
              workValue3 = RemoveMpGamerTag
              numberValue2 = dataTable6
              numberValue2 = numberValue2[playerPed2]
              workValue3(numberValue2)
            end
          end
          workValue3 = dataTable6
          numberValue2 = CreateFakeMpGamerTag
          numberValue4 = GetPlayerPed
          numberValue5 = playerPed2
          -- Beginner: result below is playerPed.
          numberValue4 = numberValue4(numberValue5)
          numberValue5 = cmgCall5
          numberValue6 = false
          workValue7 = false
          textValue = ""
          numberValue7 = 0
          numberValue2 = numberValue2(numberValue4, numberValue5, numberValue6, workValue7, textValue, numberValue7)
          workValue3[playerPed2] = numberValue2
          workValue3 = SetMpGamerTagVisibility
          numberValue2 = dataTable6
          numberValue2 = numberValue2[playerPed2]
          numberValue4 = 3
          numberValue5 = true
          workValue3(numberValue2, numberValue4, numberValue5)
          workValue3 = dataTable7
          workValue3[playerPed2] = cmgCall5
      end
      else
        cmgCall5 = dataTable6
        cmgCall5 = cmgCall5[playerPed2]
        if cmgCall5 then
          cmgCall5 = RemoveMpGamerTag
          workValue = dataTable6
          workValue = workValue[playerPed2]
          cmgCall5(workValue)
          cmgCall5 = dataTable6
          cmgCall5[playerPed2] = nil
          cmgCall5 = dataTable7
          cmgCall5[playerPed2] = nil
        end
      end
      cmgCall5 = Wait
      workValue = 0
      cmgCall5(workValue)
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(flag2)
threadCall = SetMpGamerTagsUseVehicleBehavior
flag2 = false
threadCall(flag2)
threadCall = SetMpGamerTagsVisibleDistance
flag2 = 500.0
threadCall(flag2)
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2, arg3
  if -1 == arg1 then
    arg2 = SetMpGamerTagsVisibleDistance
    arg3 = 500.0
    arg2(arg3)
    arg2 = 7.0
    numberValue = arg2
  else
    arg2 = SetMpGamerTagsVisibleDistance
    arg3 = arg1
    arg2(arg3)
    numberValue = arg1
  end
end
threadCall.setPlayerNameDistance = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2
  arg1 = numberValue
  return arg1
end
threadCall.getPlayerNameDistance = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1, arg2) ===
function flag2(arg1, arg2)
  local arg3
  arg3 = dataTable
  arg3[arg1] = arg2
end
threadCall.setGameTagNameOverride = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable
  arg1(arg2)
end
threadCall.clearAllGameTagNameOverrides = flag2
threadCall = RegisterCommand
flag2 = "farids"
-- Beginner: this function is the command handler for "farids".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, workValue12, cmgCall3
  arg3 = CMG
  arg3 = arg3.hasClientPermission
  workValue12 = "admin.farids"
  arg3 = arg3(workValue12)
  if arg3 then
    arg3 = CMG
    arg3 = arg3.isStaffedOnClient
    arg3 = arg3()
    if arg3 then
      arg3 = arg2[1]
      if nil ~= arg3 then
        workValue12 = tonumber
        cmgCall3 = arg3
        workValue12 = workValue12(cmgCall3)
        if workValue12 then
          workValue12 = tonumber
          cmgCall3 = arg3
          workValue12 = workValue12(cmgCall3)
          workValue12 = workValue12 + 0.1
          numberValue = workValue12
          workValue12 = CMG
          workValue12 = workValue12.setPlayerNameDistance
          cmgCall3 = numberValue
          workValue12(cmgCall3)
      end
      else
        workValue12 = tCMG
        workValue12 = workValue12.notify
        cmgCall3 = "~r~Please enter a valid range! (/farids [range])"
        -- Beginner: Show a notification to the player.
        workValue12(cmgCall3)
      end
    end
  end
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "farids".
threadCall(flag2, workValue11, flag3)
threadCall = RegisterCommand
flag2 = "faridsreset"
-- Beginner: this function is the command handler for "faridsreset".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "admin.farids"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.setPlayerNameDistance
    arg2 = -1
    arg1(arg2)
  end
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "faridsreset".
threadCall(flag2, workValue11, flag3)
threadCall = RegisterCommand
flag2 = "hideids"
-- Beginner: this function is the command handler for "hideids".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.hideDisplay
  arg2 = "ids"
  arg3 = "user"
  arg1(arg2, arg3)
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "hideids".
threadCall(flag2, workValue11, flag3)
threadCall = RegisterCommand
flag2 = "showids"
-- Beginner: this function is the command handler for "showids".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.showDisplay
  arg2 = "ids"
  arg3 = "user"
  arg1(arg2, arg3)
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "showids".
threadCall(flag2, workValue11, flag3)
threadCall = AddEventHandler
flag2 = "1dcc710970"
-- Beginner: this function runs when client event "1dcc710970" fires.

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2
  numberValue9 = arg1
end
-- Beginner: Register a client-side event handler. Event/command: "1dcc710970".
threadCall(flag2, workValue11)
threadCall = AddStateBagChangeHandler
flag2 = "staffRank"
workValue11 = nil
-- Beginner: this function runs when client event "1dcc710970" fires.

-- === HELPER FUNCTION (decompiler name: flag3; parameters: arg1, arg2, arg3) ===
function flag3(arg1, arg2, arg3)
  local workValue12, cmgCall3, playerPed, playerPed2
  workValue12 = tonumber
  cmgCall3 = stringsplit
  playerPed = arg1
  playerPed2 = ":"
  cmgCall3 = cmgCall3(playerPed, playerPed2)
  cmgCall3 = cmgCall3[2]
  workValue12 = workValue12(cmgCall3)
  if workValue12 then
    cmgCall3 = dataTable9
    cmgCall3[workValue12] = arg3
  end
end
threadCall(flag2, workValue11, flag3)
threadCall = RegisterNetEvent
flag2 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2
  arg2 = dataTable9
  arg2[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
threadCall(flag2, workValue11)
threadCall = CMG
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2
  arg2 = dataTable9
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = false
  ::flow_label_9::
  return arg2
end
threadCall.isStaffRankShowingForPlayer = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
function flag2()
  local arg1, arg2
  arg1 = table
  arg1 = arg1.clear
  arg2 = dataTable2
  arg1(arg2)
end
threadCall.clearEnemyGamerTags = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2
  arg2 = dataTable2
  arg2[arg1] = "Enemy"
end
threadCall.setPlayerGameTagAsEnemy = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2
  arg2 = dataTable2
  arg2[arg1] = "Neutral"
end
threadCall.setPlayerGameTagAsNeutral = flag2
threadCall = CMG

-- === HELPER FUNCTION (decompiler name: flag2; parameters: arg1) ===
function flag2(arg1)
  local arg2
  arg2 = dataTable2
  arg2[arg1] = "Friendly"
end
threadCall.setPlayerGameTagAsFriendly = flag2
