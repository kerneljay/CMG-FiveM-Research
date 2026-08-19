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
local number, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number8, stateFlag4, number9, dataCollection8, dataCollection9, dataCollection, dataCollection2, stateFlag, workingValue4, number3, dataCollection3, workingValue5, workingValue6, cmgOperation, text2, workingValue8, workingValue9, workingValue10, cmgOperation2, backgroundThread, stateFlag2, workingValue11, stateFlag3
number = 7.0
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = {}
dataCollection7 = {}
number8 = 18
stateFlag4 = false
number9 = 30.0
dataCollection8 = {}
dataCollection9 = {}
dataCollection = {}
dataCollection2 = {}
stateFlag = false
workingValue4 = nil
number3 = 30.0
dataCollection3 = {}
dataCollection3.metpd = 9
dataCollection3.nhs = 18
dataCollection3.lfb = 6
dataCollection3.borderforce = 2
dataCollection3.hmp = 11

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = "metpd"
    return localValue1
  else
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "nhs.onduty.permission"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = "nhs"
      return localValue1
    else
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "lfb.onduty.permission"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = "lfb"
        return localValue1
      else
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "prisonguard.onduty.permission"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = "hmp"
          return localValue1
        else
          localValue1 = CMG
          localValue1 = localValue1.hasClientPermission
          localValue2 = "borderforce.onduty.permission"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = "borderforce"
            return localValue1
          end
        end
      end
    end
  end
  localValue1 = nil
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, workingValue12
  localValue2 = workingValue4
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.clientGetUserIdFromSource
  localValue3 = localValue1
  -- Beginner: result below is userId.
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = CMG
  localValue3 = localValue3.getJobType
  workingValue12 = localValue2
  localValue3 = localValue3(workingValue12)
  workingValue12 = workingValue4
  localValue3 = localValue3 == workingValue12
  return localValue3
end
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, workingValue12
  localValue2 = dataCollection8
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue3 = GetPlayerServerId
    workingValue12 = localValue1
    -- Beginner: result below is serverId.
    localValue3 = localValue3(workingValue12)
    localValue2 = localValue3
    if localValue2 > 0 then
      localValue3 = dataCollection8
      localValue3[localValue1] = localValue2
    end
  end
  return localValue2
end
cmgOperation.getPlayerServerId = text2
cmgOperation = RegisterNetEvent
text2 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3
  localValue2 = pairs
  localValue3 = dataCollection8
  localValue2, localValue3, workingValue12, cmgOperation3 = localValue2(localValue3)
  for playerPed, playerPed2 in localValue2, localValue3, workingValue12, cmgOperation3 do
    if playerPed2 == localValue1 then
      playerPed3 = dataCollection8
      playerPed3[playerPed] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
cmgOperation(text2, workingValue8)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2, localValue3, workingValue12
  localValue2 = CMG
  localValue2 = localValue2.doesPlayerHaveRadioItem
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.clientGetUserIdFromSource
    localValue3 = localValue1
    -- Beginner: result below is userId.
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue3 = CMG
      localValue3 = localValue3.getJobType
      workingValue12 = localValue2
      localValue3 = localValue3(workingValue12)
      localValue3 = "" == localValue3
      return localValue3
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isStaffedOnClient
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isInSpectate
    localValue1 = localValue1()
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3
  localValue2 = Player
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = localValue2.state
  localValue2 = localValue2.newPlayerProtection
  localValue2 = true == localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3
  workingValue12 = dataCollection2
  workingValue12 = workingValue12[localValue1]
  if workingValue12 then
    workingValue12 = 30.0
    if workingValue12 then
      goto continueAtStep9
    end
  end
  workingValue12 = number
  ::continueAtStep9::
  if localValue2 < workingValue12 then
    if localValue3 then
      cmgOperation3 = stateFlag4
      if cmgOperation3 then
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.isPlayerInSelectedGang
        playerPed = localValue1
        cmgOperation3 = cmgOperation3(playerPed)
        if cmgOperation3 then
          cmgOperation3 = cmgOperation
          playerPed = localValue1
          cmgOperation3 = cmgOperation3(playerPed)
          if cmgOperation3 then
            goto continueAtStep39
          end
        end
      end
      cmgOperation3 = stateFlag
      if cmgOperation3 then
        cmgOperation3 = workingValue6
        playerPed = localValue1
        cmgOperation3 = cmgOperation3(playerPed)
        if cmgOperation3 then
          goto continueAtStep39
        end
      end
      cmgOperation3 = text2
      cmgOperation3 = cmgOperation3()
      if cmgOperation3 then
        ::continueAtStep39::
        cmgOperation3 = true
        return cmgOperation3
      else
        cmgOperation3 = HasEntityClearLosToEntity
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        playerPed2 = GetPlayerPed
        playerPed3 = localValue3
        -- Beginner: result below is playerPed.
        playerPed2 = playerPed2(playerPed3)
        playerPed3 = 17
        return cmgOperation3(playerPed, playerPed2, playerPed3)
      end
    end
    cmgOperation3 = true
    return cmgOperation3
  else
    cmgOperation3 = stateFlag4
    if cmgOperation3 then
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.isPlayerInSelectedGang
      playerPed = localValue1
      cmgOperation3 = cmgOperation3(playerPed)
      if cmgOperation3 then
        cmgOperation3 = cmgOperation
        playerPed = localValue1
        cmgOperation3 = cmgOperation3(playerPed)
        if cmgOperation3 then
          cmgOperation3 = number9
          playerPed = CMG
          playerPed = playerPed.getGangPublicNameViewDistanceFloor
          playerPed = playerPed()
          if cmgOperation3 < playerPed then
            cmgOperation3 = playerPed
          end
          if localValue2 < cmgOperation3 then
            playerPed2 = true
            return playerPed2
          end
      end
    end
    else
      cmgOperation3 = stateFlag
      if cmgOperation3 then
        cmgOperation3 = workingValue6
        playerPed = localValue1
        cmgOperation3 = cmgOperation3(playerPed)
        if cmgOperation3 then
          cmgOperation3 = number3
          if localValue2 < cmgOperation3 then
            cmgOperation3 = true
            return cmgOperation3
          end
        end
      end
    end
  end
  cmgOperation3 = false
  return cmgOperation3
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text
  localValue1 = CMG
  localValue1 = localValue1.isEventPlayerTagEnabled
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isDisplayVisible
    localValue2 = "ids"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = ipairs
      localValue3 = GetActivePlayers
      localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text = localValue3()
      localValue2, localValue3, workingValue12, cmgOperation3 = localValue2(localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text)
      for playerPed, playerPed2 in localValue2, localValue3, workingValue12, cmgOperation3 do
        playerPed3 = GetPlayerPed
        cmgOperation4 = playerPed2
        -- Beginner: result below is playerPed.
        playerPed3 = playerPed3(cmgOperation4)
        if playerPed3 ~= localValue1 then
          cmgOperation4 = dataCollection4
          cmgOperation4 = cmgOperation4[playerPed2]
          if cmgOperation4 then
            cmgOperation4 = CMG
            cmgOperation4 = cmgOperation4.getPlayerServerId
            cmgOperation5 = playerPed2
            cmgOperation4 = cmgOperation4(cmgOperation5)
            if cmgOperation4 then
              cmgOperation5 = CMG
              cmgOperation5 = cmgOperation5.isPlayerTaggedForBounty
              workingValue = cmgOperation4
              cmgOperation5 = cmgOperation5(workingValue)
              workingValue = workingValue9
              workingValue2 = cmgOperation4
              workingValue3 = dataCollection4
              workingValue3 = workingValue3[playerPed2]
              workingValue = workingValue(workingValue2, workingValue3)
              if workingValue or cmgOperation5 then
                workingValue = dataCollection6
                workingValue = workingValue[playerPed2]
                workingValue2 = NetworkIsPlayerTalking
                workingValue3 = playerPed2
                workingValue2 = workingValue2(workingValue3)
                if workingValue2 then
                  workingValue2 = SetMpGamerTagAlpha
                  workingValue3 = workingValue
                  number2 = 4
                  number4 = 255
                  workingValue2(workingValue3, number2, number4)
                  workingValue2 = workingValue8
                  workingValue3 = cmgOperation4
                  workingValue2 = workingValue2(workingValue3)
                  if workingValue2 then
                    workingValue2 = dataCollection9
                    workingValue2 = workingValue2[cmgOperation4]
                    if not workingValue2 then
                      workingValue2 = SetMpGamerTagColour
                      workingValue3 = workingValue
                      number2 = 0
                      number4 = number8
                      workingValue2(workingValue3, number2, number4)
                  end
                  else
                    workingValue2 = SetMpGamerTagColour
                    workingValue3 = workingValue
                    number2 = 0
                    number4 = 9
                    workingValue2(workingValue3, number2, number4)
                  end
                  workingValue2 = SetMpGamerTagColour
                  workingValue3 = workingValue
                  number2 = 4
                  number4 = 0
                  workingValue2(workingValue3, number2, number4)
                  workingValue2 = SetMpGamerTagVisibility
                  workingValue3 = workingValue
                  number2 = 4
                  number4 = true
                  workingValue2(workingValue3, number2, number4)
                else
                  workingValue2 = dataCollection9
                  workingValue2 = workingValue2[cmgOperation4]
                  if workingValue2 then
                    workingValue3 = SetMpGamerTagColour
                    number2 = workingValue
                    number4 = 0
                    number5 = workingValue2[2]
                    workingValue3(number2, number4, number5)
                  else
                    workingValue3 = workingValue8
                    number2 = cmgOperation4
                    workingValue3 = workingValue3(number2)
                    if workingValue3 then
                      workingValue3 = SetMpGamerTagColour
                      number2 = workingValue
                      number4 = 0
                      number5 = number8
                      workingValue3(number2, number4, number5)
                    else
                      workingValue3 = dataCollection2
                      workingValue3 = workingValue3[cmgOperation4]
                      if "Enemy" == workingValue3 then
                        workingValue3 = SetMpGamerTagColour
                        number2 = workingValue
                        number4 = 0
                        number5 = 6
                        workingValue3(number2, number4, number5)
                      else
                        workingValue3 = dataCollection2
                        workingValue3 = workingValue3[cmgOperation4]
                        if "Friendly" == workingValue3 then
                          workingValue3 = SetMpGamerTagColour
                          number2 = workingValue
                          number4 = 0
                          number5 = 18
                          workingValue3(number2, number4, number5)
                        else
                          workingValue3 = CMG
                          workingValue3 = workingValue3.isPlayerInSelectedGang
                          number2 = cmgOperation4
                          workingValue3, number2 = workingValue3(number2)
                          number4 = stateFlag4
                          if number4 and workingValue3 then
                            number4 = cmgOperation
                            number5 = cmgOperation4
                            number4 = number4(number5)
                            if number4 then
                              number4 = SetMpGamerTagColour
                              number5 = workingValue
                              number6 = 0
                              workingValue7 = number2.hud
                              number4(number5, number6, workingValue7)
                          end
                          else
                            number4 = stateFlag
                            if number4 then
                              number4 = workingValue6
                              number5 = cmgOperation4
                              number4 = number4(number5)
                              if number4 then
                                number4 = SetMpGamerTagColour
                                number5 = workingValue
                                number6 = 0
                                text = workingValue4
                                workingValue7 = dataCollection3
                                workingValue7 = workingValue7[text]
                                if not workingValue7 then
                                  workingValue7 = 0
                                end
                                number4(number5, number6, workingValue7)
                            end
                            else
                              number4 = SetMpGamerTagColour
                              number5 = workingValue
                              number6 = 0
                              workingValue7 = 0
                              number4(number5, number6, workingValue7)
                            end
                          end
                        end
                      end
                    end
                  end
                  workingValue3 = SetMpGamerTagColour
                  number2 = workingValue
                  number4 = 4
                  number5 = 0
                  workingValue3(number2, number4, number5)
                  workingValue3 = SetMpGamerTagVisibility
                  number2 = workingValue
                  number4 = 4
                  number5 = false
                  workingValue3(number2, number4, number5)
                end
                workingValue2 = SetMpGamerTagVisibility
                workingValue3 = workingValue
                number2 = 19
                number4 = cmgOperation5
                workingValue2(workingValue3, number2, number4)
                workingValue2 = SetMpGamerTagColour
                workingValue3 = workingValue
                number2 = 19
                number4 = 125
                workingValue2(workingValue3, number2, number4)
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
backgroundThread = workingValue10
stateFlag2 = "Gamer Tags Customisation"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(backgroundThread, stateFlag2)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local localValue3, workingValue12
  localValue3 = IsEntityVisible
  workingValue12 = localValue1
  localValue3 = localValue3(workingValue12)
  if localValue3 then
    localValue3 = true
    return localValue3
  end
  localValue3 = CMG
  localValue3 = localValue3.clientGetUserIdFromSource
  workingValue12 = localValue2
  -- Beginner: result below is userId.
  localValue3 = localValue3(workingValue12)
  if localValue3 then
    workingValue12 = fullPlayerListData
    workingValue12 = workingValue12[localValue3]
    if workingValue12 then
      goto continueAtStep20
    end
  end
  workingValue12 = true
  return workingValue12
  ::continueAtStep20::
  workingValue12 = fullPlayerListData
  workingValue12 = workingValue12[localValue3]
  workingValue12 = workingValue12[5]
  workingValue12 = not workingValue12
  return workingValue12
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2, localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4
  while true do
    localValue1 = {}
    dataCollection4 = localValue1
    localValue1 = {}
    dataCollection5 = localValue1
    localValue1 = CMG
    localValue1 = localValue1.inArena
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.isEventPlayerTagEnabled
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = CMG
      localValue3 = localValue3.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue3 = localValue3()
      workingValue12 = CMG
      workingValue12 = workingValue12.isInSpectate
      workingValue12 = workingValue12()
      if workingValue12 then
        workingValue12 = GetFinalRenderedCamCoord
        workingValue12 = workingValue12()
        localValue3 = workingValue12
      end
      workingValue12 = ipairs
      cmgOperation3 = GetActivePlayers
      cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4 = cmgOperation3()
      workingValue12, cmgOperation3, playerPed, playerPed2 = workingValue12(cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4)
      for playerPed3, cmgOperation4 in workingValue12, cmgOperation3, playerPed, playerPed2 do
        cmgOperation5 = GetPlayerPed
        workingValue = cmgOperation4
        -- Beginner: result below is playerPed.
        cmgOperation5 = cmgOperation5(workingValue)
        workingValue = CMG
        workingValue = workingValue.getPlayerServerId
        workingValue2 = cmgOperation4
        workingValue = workingValue(workingValue2)
        if cmgOperation5 ~= localValue2 then
          workingValue2 = cmgOperation2
          workingValue3 = cmgOperation5
          number2 = workingValue
          workingValue2 = workingValue2(workingValue3, number2)
          if workingValue2 then
            if localValue1 then
              workingValue2 = dataCollection
              workingValue2 = workingValue2[workingValue]
              if not workingValue2 then
                goto continueAtStep71
              end
            end
            workingValue2 = GetEntityCoords
            workingValue3 = cmgOperation5
            -- Beginner: result below is entityCoords.
            workingValue2 = workingValue2(workingValue3)
            workingValue3 = dataCollection4
            number2 = localValue3 - workingValue2
            number2 = #number2
            workingValue3[cmgOperation4] = number2
            workingValue3 = DecorGetBool
            number2 = cmgOperation5
            number4 = "a99d39faff"
            workingValue3 = workingValue3(number2, number4)
            if workingValue3 then
              workingValue3 = dataCollection5
              workingValue3[cmgOperation4] = true
            end
          end
        end
        ::continueAtStep71::
      end
      workingValue12 = text2
      workingValue12 = workingValue12()
      if not workingValue12 and not localValue1 then
        workingValue12 = 7.0
        number = workingValue12
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 1000
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(stateFlag2)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2, localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text, number7
  while true do
    localValue1 = CMG
    localValue1 = localValue1.hasGangNamesEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isEmergencyService
      localValue1 = localValue1()
      localValue1 = not localValue1
    end
    stateFlag4 = localValue1
    localValue1 = CMG
    localValue1 = localValue1.areEmergencyServiceNamesDisabled
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.inEvent
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = workingValue5
        localValue1 = localValue1()
        workingValue4 = localValue1
        localValue1 = workingValue4
        localValue1 = nil ~= localValue1
        stateFlag = localValue1
    end
    else
      localValue1 = nil
      workingValue4 = localValue1
      localValue1 = false
      stateFlag = localValue1
    end
    localValue1 = CMG
    localValue1 = localValue1.isDisplayVisible
    localValue2 = "ids"
    localValue1 = localValue1(localValue2)
    localValue2 = ipairs
    localValue3 = GetActivePlayers
    localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text, number7 = localValue3()
    localValue2, localValue3, workingValue12, cmgOperation3 = localValue2(localValue3, workingValue12, cmgOperation3, playerPed, playerPed2, playerPed3, cmgOperation4, cmgOperation5, workingValue, workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text, number7)
    for playerPed, playerPed2 in localValue2, localValue3, workingValue12, cmgOperation3 do
      playerPed3 = dataCollection4
      playerPed3 = playerPed3[playerPed2]
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.getPlayerServerId
      cmgOperation5 = playerPed2
      cmgOperation4 = cmgOperation4(cmgOperation5)
      if playerPed3 and cmgOperation4 then
        cmgOperation5 = workingValue9
        workingValue = cmgOperation4
        workingValue2 = playerPed3
        workingValue3 = playerPed2
        cmgOperation5 = cmgOperation5(workingValue, workingValue2, workingValue3)
        if not cmgOperation5 then
          cmgOperation5 = CMG
          cmgOperation5 = cmgOperation5.shouldShowTagForBounty
          workingValue = cmgOperation4
          cmgOperation5 = cmgOperation5(workingValue)
        end
        if cmgOperation5 and localValue1 then
          cmgOperation5 = nil
          workingValue = stateFlag4
          if workingValue then
            workingValue = CMG
            workingValue = workingValue.isPlayerInSelectedGang
            workingValue2 = cmgOperation4
            workingValue = workingValue(workingValue2)
            if workingValue then
              workingValue = cmgOperation
              workingValue2 = cmgOperation4
              workingValue = workingValue(workingValue2)
              if workingValue then
                workingValue = CMG
                workingValue = workingValue.getPlayerName
                workingValue2 = playerPed2
                workingValue = workingValue(workingValue2)
                cmgOperation5 = workingValue
            end
          end
          else
            workingValue = stateFlag
            if workingValue then
              workingValue = workingValue6
              workingValue2 = cmgOperation4
              workingValue = workingValue(workingValue2)
              if workingValue then
                workingValue = CMG
                workingValue = workingValue.getPlayerName
                workingValue2 = playerPed2
                workingValue = workingValue(workingValue2)
                cmgOperation5 = workingValue
                workingValue = Player
                workingValue2 = cmgOperation4
                workingValue = workingValue(workingValue2)
                workingValue = workingValue.state
                workingValue = workingValue.onDutyCallsign
                if workingValue and "" ~= workingValue then
                  workingValue2 = "["
                  workingValue3 = workingValue
                  number2 = "] "
                  number4 = cmgOperation5
                  workingValue2 = workingValue2 .. workingValue3 .. number2 .. number4
                  cmgOperation5 = workingValue2
                end
            end
            else
              workingValue = tostring
              workingValue2 = CMG
              workingValue2 = workingValue2.getPlayerServerId
              workingValue3 = playerPed2
              workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text, number7 = workingValue2(workingValue3)
              workingValue = workingValue(workingValue2, workingValue3, number2, number4, number5, number6, workingValue7, text, number7)
              cmgOperation5 = workingValue
              workingValue = dataCollection5
              workingValue = workingValue[playerPed2]
              if workingValue then
                workingValue = cmgOperation5
                workingValue2 = " [Cinematic Mode]"
                workingValue = workingValue .. workingValue2
                cmgOperation5 = workingValue
              end
            end
          end
          workingValue = dataCollection2
          workingValue = workingValue[cmgOperation4]
          if "Enemy" == workingValue then
            workingValue = "[Enemy Gang Member] "
            workingValue2 = cmgOperation5
            workingValue = workingValue .. workingValue2
            cmgOperation5 = workingValue
          else
            workingValue = dataCollection2
            workingValue = workingValue[cmgOperation4]
            if "Neutral" == workingValue then
              workingValue = "[Neutral Gang Member] "
              workingValue2 = cmgOperation5
              workingValue = workingValue .. workingValue2
              cmgOperation5 = workingValue
            else
              workingValue = dataCollection2
              workingValue = workingValue[cmgOperation4]
              if "Friendly" == workingValue then
                workingValue = "[Friendly Gang Member] "
                workingValue2 = cmgOperation5
                workingValue = workingValue .. workingValue2
                cmgOperation5 = workingValue
              end
            end
          end
          workingValue = dataCollection9
          workingValue = workingValue[cmgOperation4]
          if workingValue then
            workingValue2 = "["
            workingValue3 = workingValue[1]
            number2 = "] "
            number4 = CMG
            number4 = number4.getPlayerName
            number5 = playerPed2
            number4 = number4(number5)
            workingValue2 = workingValue2 .. workingValue3 .. number2 .. number4
            cmgOperation5 = workingValue2
          else
            workingValue2 = workingValue8
            workingValue3 = cmgOperation4
            workingValue2 = workingValue2(workingValue3)
            if workingValue2 then
              workingValue2 = "[New Player] "
              workingValue3 = cmgOperation5
              workingValue2 = workingValue2 .. workingValue3
              cmgOperation5 = workingValue2
            end
          end
          workingValue2 = dataCollection
          workingValue2 = workingValue2[cmgOperation4]
          if workingValue2 then
            cmgOperation5 = workingValue2
          end
          workingValue3 = dataCollection7
          workingValue3 = workingValue3[playerPed2]
          if workingValue3 ~= cmgOperation5 then
            workingValue3 = dataCollection6
            workingValue3 = workingValue3[playerPed2]
            if workingValue3 then
              workingValue3 = RemoveMpGamerTag
              number2 = dataCollection6
              number2 = number2[playerPed2]
              workingValue3(number2)
            end
          end
          workingValue3 = dataCollection6
          number2 = CreateFakeMpGamerTag
          number4 = GetPlayerPed
          number5 = playerPed2
          -- Beginner: result below is playerPed.
          number4 = number4(number5)
          number5 = cmgOperation5
          number6 = false
          workingValue7 = false
          text = ""
          number7 = 0
          number2 = number2(number4, number5, number6, workingValue7, text, number7)
          workingValue3[playerPed2] = number2
          workingValue3 = SetMpGamerTagVisibility
          number2 = dataCollection6
          number2 = number2[playerPed2]
          number4 = 3
          number5 = true
          workingValue3(number2, number4, number5)
          workingValue3 = dataCollection7
          workingValue3[playerPed2] = cmgOperation5
      end
      else
        cmgOperation5 = dataCollection6
        cmgOperation5 = cmgOperation5[playerPed2]
        if cmgOperation5 then
          cmgOperation5 = RemoveMpGamerTag
          workingValue = dataCollection6
          workingValue = workingValue[playerPed2]
          cmgOperation5(workingValue)
          cmgOperation5 = dataCollection6
          cmgOperation5[playerPed2] = nil
          cmgOperation5 = dataCollection7
          cmgOperation5[playerPed2] = nil
        end
      end
      cmgOperation5 = Wait
      workingValue = 0
      cmgOperation5(workingValue)
    end
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(stateFlag2)
backgroundThread = SetMpGamerTagsUseVehicleBehavior
stateFlag2 = false
backgroundThread(stateFlag2)
backgroundThread = SetMpGamerTagsVisibleDistance
stateFlag2 = 500.0
backgroundThread(stateFlag2)
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2, localValue3
  if -1 == localValue1 then
    localValue2 = SetMpGamerTagsVisibleDistance
    localValue3 = 500.0
    localValue2(localValue3)
    localValue2 = 7.0
    number = localValue2
  else
    localValue2 = SetMpGamerTagsVisibleDistance
    localValue3 = localValue1
    localValue2(localValue3)
    number = localValue1
  end
end
backgroundThread.setPlayerNameDistance = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2
  localValue1 = number
  return localValue1
end
backgroundThread.getPlayerNameDistance = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1, localValue2) ===
function stateFlag2(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection
  localValue3[localValue1] = localValue2
end
backgroundThread.setGameTagNameOverride = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection
  localValue1(localValue2)
end
backgroundThread.clearAllGameTagNameOverrides = stateFlag2
backgroundThread = RegisterCommand
stateFlag2 = "farids"
-- Beginner: this function is the command handler for "farids".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, workingValue12, cmgOperation3
  localValue3 = CMG
  localValue3 = localValue3.hasClientPermission
  workingValue12 = "admin.farids"
  localValue3 = localValue3(workingValue12)
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.isStaffedOnClient
    localValue3 = localValue3()
    if localValue3 then
      localValue3 = localValue2[1]
      if nil ~= localValue3 then
        workingValue12 = tonumber
        cmgOperation3 = localValue3
        workingValue12 = workingValue12(cmgOperation3)
        if workingValue12 then
          workingValue12 = tonumber
          cmgOperation3 = localValue3
          workingValue12 = workingValue12(cmgOperation3)
          workingValue12 = workingValue12 + 0.1
          number = workingValue12
          workingValue12 = CMG
          workingValue12 = workingValue12.setPlayerNameDistance
          cmgOperation3 = number
          workingValue12(cmgOperation3)
      end
      else
        workingValue12 = tCMG
        workingValue12 = workingValue12.notify
        cmgOperation3 = "~r~Please enter a valid range! (/farids [range])"
        -- Beginner: Show a notification to the player.
        workingValue12(cmgOperation3)
      end
    end
  end
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "farids".
backgroundThread(stateFlag2, workingValue11, stateFlag3)
backgroundThread = RegisterCommand
stateFlag2 = "faridsreset"
-- Beginner: this function is the command handler for "faridsreset".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "admin.farids"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setPlayerNameDistance
    localValue2 = -1
    localValue1(localValue2)
  end
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "faridsreset".
backgroundThread(stateFlag2, workingValue11, stateFlag3)
backgroundThread = RegisterCommand
stateFlag2 = "hideids"
-- Beginner: this function is the command handler for "hideids".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.hideDisplay
  localValue2 = "ids"
  localValue3 = "user"
  localValue1(localValue2, localValue3)
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "hideids".
backgroundThread(stateFlag2, workingValue11, stateFlag3)
backgroundThread = RegisterCommand
stateFlag2 = "showids"
-- Beginner: this function is the command handler for "showids".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.showDisplay
  localValue2 = "ids"
  localValue3 = "user"
  localValue1(localValue2, localValue3)
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "showids".
backgroundThread(stateFlag2, workingValue11, stateFlag3)
backgroundThread = AddEventHandler
stateFlag2 = "1dcc710970"
-- Beginner: this function runs when client event "1dcc710970" fires.

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2
  number9 = localValue1
end
-- Beginner: Register a client-side event handler. Event/command: "1dcc710970".
backgroundThread(stateFlag2, workingValue11)
backgroundThread = AddStateBagChangeHandler
stateFlag2 = "staffRank"
workingValue11 = nil
-- Beginner: this function runs when client event "1dcc710970" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: localValue1, localValue2, localValue3) ===
function stateFlag3(localValue1, localValue2, localValue3)
  local workingValue12, cmgOperation3, playerPed, playerPed2
  workingValue12 = tonumber
  cmgOperation3 = stringsplit
  playerPed = localValue1
  playerPed2 = ":"
  cmgOperation3 = cmgOperation3(playerPed, playerPed2)
  cmgOperation3 = cmgOperation3[2]
  workingValue12 = workingValue12(cmgOperation3)
  if workingValue12 then
    cmgOperation3 = dataCollection9
    cmgOperation3[workingValue12] = localValue3
  end
end
backgroundThread(stateFlag2, workingValue11, stateFlag3)
backgroundThread = RegisterNetEvent
stateFlag2 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2
  localValue2 = dataCollection9
  localValue2[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
backgroundThread(stateFlag2, workingValue11)
backgroundThread = CMG
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2
  localValue2 = dataCollection9
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = false
  ::continueAtStep9::
  return localValue2
end
backgroundThread.isStaffRankShowingForPlayer = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
function stateFlag2()
  local localValue1, localValue2
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection2
  localValue1(localValue2)
end
backgroundThread.clearEnemyGamerTags = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2
  localValue2 = dataCollection2
  localValue2[localValue1] = "Enemy"
end
backgroundThread.setPlayerGameTagAsEnemy = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2
  localValue2 = dataCollection2
  localValue2[localValue1] = "Neutral"
end
backgroundThread.setPlayerGameTagAsNeutral = stateFlag2
backgroundThread = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue1) ===
function stateFlag2(localValue1)
  local localValue2
  localValue2 = dataCollection2
  localValue2[localValue1] = "Friendly"
end
backgroundThread.setPlayerGameTagAsFriendly = stateFlag2
