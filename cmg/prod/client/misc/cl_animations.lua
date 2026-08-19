--[[
    LEVEL 1 BEGINNER GUIDE — Animations
    ========================================

    File: cmg/prod/client/misc/cl_animations.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Animations feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 139
      * Background threads: 0
      * Always-running loops: 10
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
local workingValue, workingValue4, text6, stateFlag19, stateFlag20, stateFlag21, cmgOperation3, workingValue7, workingValue8, cmgOperation4, cmgOperation, text, stateFlag, stateFlag3, stateFlag4, text2, workingValue3, text3, text4, stateFlag9, cmgOperation2, text5, workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = ClearPrints
  localValue3()
  localValue3 = BeginTextCommandPrint
  localValue4 = "STRING"
  localValue3(localValue4)
  localValue3 = AddTextComponentSubstringPlayerName
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = EndTextCommandPrint
  localValue4 = localValue2
  localValue5 = true
  localValue3(localValue4, localValue5)
end
DrawMissionText2 = workingValue

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = IsPedInAnyVehicle
  localValue4 = localValue2
  localValue5 = false
  localValue3 = localValue3(localValue4, localValue5)
  if not localValue3 then
    localValue3 = IsPedSwimming
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = IsPedShooting
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = IsPedClimbing
        localValue4 = localValue2
        localValue3 = localValue3(localValue4)
        if not localValue3 then
          if not localValue1 then
            localValue3 = IsPedCuffed
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            if localValue3 then
              goto continueAtStep82
            end
          end
          localValue3 = IsPedDiving
          localValue4 = localValue2
          localValue3 = localValue3(localValue4)
          if not localValue3 then
            localValue3 = IsPedFalling
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            if not localValue3 then
              localValue3 = IsPedJumping
              localValue4 = localValue2
              localValue3 = localValue3(localValue4)
              if not localValue3 then
                localValue3 = IsPedJumpingOutOfVehicle
                localValue4 = localValue2
                localValue3 = localValue3(localValue4)
                if not localValue3 then
                  localValue3 = IsPedOnFoot
                  localValue4 = localValue2
                  localValue3 = localValue3(localValue4)
                  if localValue3 then
                    localValue3 = IsPedRunning
                    localValue4 = localValue2
                    localValue3 = localValue3(localValue4)
                    if not localValue3 then
                      localValue3 = IsPedUsingAnyScenario
                      localValue4 = localValue2
                      localValue3 = localValue3(localValue4)
                      if not localValue3 then
                        localValue3 = IsPedInParachuteFreeFall
                        localValue4 = localValue2
                        localValue3 = localValue3(localValue4)
                        if not localValue3 then
                          localValue3 = CMG
                          localValue3 = localValue3.isPlayerNearPrison
                          localValue3 = localValue3()
                          if not localValue3 or localValue1 then
                            localValue3 = true
                            return localValue3
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  else
    ::continueAtStep82::
    localValue3 = false
    return localValue3
  end
end
workingValue4 = RegisterCommand
text6 = "anim"
-- Beginner: this function is the command handler for "anim".

-- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: localValue1, localValue2) ===
function stateFlag19(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7
  localValue3 = CMG
  localValue3 = localValue3.getClientUserId
  -- Beginner: result below is userId.
  localValue3 = localValue3()
  if 1 ~= localValue3 then
    return
  end
  localValue3 = localValue2[1]
  localValue4 = localValue2[2]
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = CMG
  localValue6 = localValue6.loadAnimDict
  localValue7 = localValue3
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue6(localValue7)
  localValue6 = TaskPlayAnim
  localValue7 = localValue5
  localValue8 = localValue3
  localValue9 = localValue4
  localValue10 = 3.0
  localValue11 = 1.0
  localValue12 = -1
  stateFlag2 = 1
  number = 0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  -- Beginner: Play an animation on a ped.
  localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7)
end
stateFlag20 = false
-- Beginner: Register a chat/console command. Event/command: "anim".
workingValue4(text6, stateFlag19, stateFlag20)
workingValue4 = RegisterCommand
text6 = "bag3"
-- Beginner: this function is the command handler for "bag3".

-- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: none) ===
function stateFlag19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = DoesEntityExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.canAnim
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = IsEntityDead
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = workingValue
        localValue2 = localValue2()
        if localValue2 then
          localValue2 = GiveWeaponToPed
          localValue3 = localValue1
          localValue4 = 2294779575
          localValue5 = 1
          localValue6 = false
          localValue7 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
        end
      end
    end
  end
end
stateFlag20 = false
-- Beginner: Register a chat/console command. Event/command: "bag3".
workingValue4(text6, stateFlag19, stateFlag20)
workingValue4 = RegisterCommand
text6 = "bag2"
-- Beginner: this function is the command handler for "bag2".

-- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: none) ===
function stateFlag19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = DoesEntityExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.canAnim
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = IsEntityDead
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = workingValue
        localValue2 = localValue2()
        if localValue2 then
          localValue2 = GiveWeaponToPed
          localValue3 = localValue1
          localValue4 = 28811031
          localValue5 = 1
          localValue6 = false
          localValue7 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
        end
      end
    end
  end
end
stateFlag20 = false
-- Beginner: Register a chat/console command. Event/command: "bag2".
workingValue4(text6, stateFlag19, stateFlag20)
workingValue4 = false
text6 = true
stateFlag19 = false
stateFlag20 = false
stateFlag21 = false
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = workingValue4
  return localValue1
end
cmgOperation3.isSurrendering = workingValue7

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2
  localValue1 = GetPlayerPed
  localValue2 = -1
  -- Beginner: result below is playerPed.
  localValue1 = localValue1(localValue2)
  localValue2 = DoesEntityExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.canAnim
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = stateFlag19
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.isPlayerNearPrison
        localValue2 = localValue2()
        if not localValue2 then
          goto continueAtStep223
        end
        localValue2 = CMG
        localValue2 = localValue2.isHandcuffed
        localValue2 = localValue2()
        if localValue2 then
          goto continueAtStep223
        end
      end
    end
    localValue2 = IsEntityDead
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = workingValue
      localValue3 = true
      localValue2 = localValue2(localValue3)
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.loadAnimDict
        localValue3 = "random@arrests"
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue2(localValue3)
        localValue2 = CMG
        localValue2 = localValue2.loadAnimDict
        localValue3 = "random@arrests@busted"
        localValue2(localValue3)
        localValue2 = IsEntityPlayingAnim
        localValue3 = localValue1
        localValue4 = "random@arrests@busted"
        localValue5 = "idle_a"
        localValue6 = 3
        localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
        if localValue2 then
          localValue2 = true
          stateFlag21 = localValue2
          localValue2 = false
          workingValue4 = localValue2
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests@busted"
          localValue5 = "exit"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 2
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = Wait
          localValue3 = 3000
          localValue2(localValue3)
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests"
          localValue5 = "kneeling_arrest_get_up"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 128
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = Wait
          localValue3 = 2000
          localValue2(localValue3)
          localValue2 = false
          stateFlag19 = localValue2
          localValue2 = false
          stateFlag21 = localValue2
          localValue2 = stateFlag20
          if localValue2 then
            localValue2 = tCMG
            localValue2 = localValue2.setCanAnim
            localValue3 = true
            localValue2(localValue3)
            localValue2 = false
            stateFlag20 = localValue2
          end
        else
          localValue2 = stateFlag20
          if not localValue2 then
            localValue2 = true
            stateFlag20 = localValue2
            localValue2 = tCMG
            localValue2 = localValue2.setCanAnim
            localValue3 = false
            localValue2(localValue3)
          end
          localValue2 = true
          workingValue4 = localValue2
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests"
          localValue5 = "idle_2_hands_up"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 2
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = Wait
          localValue3 = 4000
          localValue2(localValue3)
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests"
          localValue5 = "kneeling_arrest_idle"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 2
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = Wait
          localValue3 = 500
          localValue2(localValue3)
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests@busted"
          localValue5 = "enter"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 2
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = true
          stateFlag19 = localValue2
          localValue2 = Wait
          localValue3 = 1000
          localValue2(localValue3)
          localValue2 = TaskPlayAnim
          localValue3 = localValue1
          localValue4 = "random@arrests@busted"
          localValue5 = "idle_a"
          localValue6 = 8.0
          localValue7 = 1.0
          localValue8 = -1
          localValue9 = 9
          localValue10 = 0
          localValue11 = false
          localValue12 = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
          localValue2 = Wait
          localValue3 = 0
          localValue2(localValue3)
          while true do
            localValue2 = IsEntityPlayingAnim
            localValue3 = localValue1
            localValue4 = "random@arrests@busted"
            localValue5 = "idle_a"
            localValue6 = 3
            localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
            if not localValue2 then
              break
            end
            localValue2 = CMG
            localValue2 = localValue2.isNewPlayer
            localValue2 = localValue2()
            if localValue2 then
              localValue2 = drawNativeNotification
              localValue3 = "Run /k to exit from knees."
              -- Beginner: Show a GTA-style notification/help prompt.
              localValue2(localValue3)
            end
            localValue2 = Citizen
            localValue2 = localValue2.Wait
            localValue3 = 0
            localValue2(localValue3)
          end
          localValue2 = false
          workingValue4 = localValue2
          localValue2 = false
          stateFlag19 = localValue2
          localValue2 = stateFlag20
          if localValue2 then
            localValue2 = stateFlag21
            if not localValue2 then
              localValue2 = tCMG
              localValue2 = localValue2.setCanAnim
              localValue3 = true
              localValue2(localValue3)
              localValue2 = false
              stateFlag20 = localValue2
            end
          end
        end
        localValue2 = RemoveAnimDict
        localValue3 = "random@arrests"
        localValue2(localValue3)
        localValue2 = RemoveAnimDict
        localValue3 = "random@arrests@busted"
        localValue2(localValue3)
      end
    end
  end
  ::continueAtStep223::
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = stateFlag19
  if not localValue2 then
    localValue2 = IsEntityPlayingAnim
    localValue3 = localValue1
    localValue4 = "missminuteman_1ig_2"
    localValue5 = "handsup_enter"
    localValue6 = 3
    localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
    if not localValue2 then
      localValue2 = IsEntityPlayingAnim
      localValue3 = localValue1
      localValue4 = "random@arrests"
      localValue5 = "idle_2_hands_up"
      localValue6 = 3
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if not localValue2 then
        localValue2 = IsEntityPlayingAnim
        localValue3 = localValue1
        localValue4 = "random@arrests@busted"
        localValue5 = "idle_a"
        localValue6 = 3
        localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
        if not localValue2 then
          goto continueAtStep33
        end
      end
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep33::
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue8(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7
  localValue7 = localValue6 / 100
  localValue7 = localValue3 * localValue7
  localValue8 = localValue6 / 100
  localValue8 = localValue3 * localValue8
  localValue8 = localValue8 / 2
  localValue8 = localValue1 - localValue8
  localValue9 = localValue3 / 2
  localValue8 = localValue8 - localValue9
  localValue9 = DrawRect
  localValue10 = localValue8 + localValue7
  localValue11 = localValue2
  localValue12 = localValue7
  stateFlag2 = localValue4
  number = localValue5[1]
  stateFlag5 = localValue5[2]
  stateFlag6 = localValue5[3]
  stateFlag7 = localValue5[4]
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7)
end
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  while true do
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    localValue3 = 5000
    if not (localValue2 <= localValue3) then
      break
    end
    localValue2 = workingValue7
    localValue2 = localValue2()
    if not localValue2 then
      break
    end
    localValue2 = workingValue8
    localValue3 = 0.475
    localValue4 = 0.8
    localValue5 = 0.138
    localValue6 = 0.012750000000000001
    localValue7 = {}
    localValue8 = 255
    localValue9 = 47
    localValue10 = 27
    localValue11 = 255
    localValue7[1] = localValue8
    localValue7[2] = localValue9
    localValue7[3] = localValue10
    localValue7[4] = localValue11
    localValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue8 = localValue8()
    localValue8 = localValue8 - localValue1
    localValue8 = localValue8 / 5000
    localValue8 = localValue8 * 100
    localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
    localValue2 = Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue2 = localValue2 - localValue1
  localValue3 = 5000
  if localValue2 > localValue3 then
    localValue2 = true
    return localValue2
  end
  localValue2 = false
  return localValue2
end
cmgOperation4.isPlayerSurrendered = cmgOperation
cmgOperation4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = workingValue7
  return localValue1()
end
cmgOperation4.isPlayerSurrenderedNoProgressBar = cmgOperation
cmgOperation4 = RegisterNetEvent
cmgOperation = "617311deed"
-- Beginner: this function handles network event "617311deed".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "combat@aim_variations@arrest"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = TaskPlayAnim
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "combat@aim_variations@arrest"
  localValue4 = "cop_med_arrest_01"
  localValue5 = 8.0
  localValue6 = -8
  localValue7 = 5000
  localValue8 = 2
  localValue9 = 0
  localValue10 = false
  localValue11 = false
  localValue12 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12)
  localValue1 = RemoveAnimDict
  localValue2 = "combat@aim_variations@arrest"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.startCircularProgressBar
  localValue2 = ""
  localValue3 = 5000
  localValue4 = nil

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local workingValue2, workingValue5
  end
  localValue1(localValue2, localValue3, localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "617311deed".
cmgOperation4(cmgOperation, text)
cmgOperation4 = RegisterNetEvent
cmgOperation = "750744bff8"
-- Beginner: this function handles network event "750744bff8".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = StopAnimTask
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "combat@aim_variations@arrest"
  localValue4 = "cop_med_arrest_01"
  localValue5 = 1.0
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = CMG
  localValue1 = localValue1.stopCircularProgressBar
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "750744bff8".
cmgOperation4(cmgOperation, text)

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = stateFlag19
  if localValue1 then
    localValue1 = DisableControlAction
    localValue2 = 1
    localValue3 = 140
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = DisableControlAction
    localValue2 = 1
    localValue3 = 141
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = DisableControlAction
    localValue2 = 1
    localValue3 = 142
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 21
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = DisableControlAction
  localValue2 = 2
  localValue3 = 36
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
text = cmgOperation4
stateFlag = "Surrendering"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(text, stateFlag)
cmgOperation = RegisterCommand
text = "k"
-- Beginner: this function is the command handler for "k".

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2
  localValue1 = text6
  if localValue1 then
    localValue1 = cmgOperation3
    localValue1()
  end
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "k".
cmgOperation(text, stateFlag, stateFlag3)
cmgOperation = RegisterCommand
text = "surrender"
-- Beginner: this function is the command handler for "surrender".

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2
  localValue1 = text6
  if localValue1 then
    localValue1 = cmgOperation3
    localValue1()
  end
end
stateFlag3 = false
-- Beginner: Register a chat/console command. Event/command: "surrender".
cmgOperation(text, stateFlag, stateFlag3)
cmgOperation = false
text = "prop_parking_wand_01"
stateFlag = false
stateFlag3 = "hei_heist_sh_bong_01"
stateFlag4 = false
text2 = "prop_amb_phone"
workingValue3 = RegisterCommand
text3 = "picture"
-- Beginner: this function is the command handler for "picture".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetHashKey
  localValue3 = text2
  -- Beginner: result below is hash.
  localValue2 = localValue2(localValue3)
  localValue3 = RequestModel
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = GetPlayerPed
  localValue5 = PlayerId
  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue5()
  -- Beginner: result below is playerPed.
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
  localValue5 = 0.0
  localValue6 = 0.0
  localValue7 = -5.0
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue4 = CMG
  localValue4 = localValue4.requestEntitySpawn
  localValue5 = "picture_object"
  localValue4(localValue5)
  localValue4 = CreateObject
  localValue5 = localValue2
  localValue6 = localValue3.x
  localValue7 = localValue3.y
  localValue8 = localValue3.z
  localValue9 = true
  localValue10 = true
  localValue11 = true
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
  localValue5 = "amb@world_human_mobile_film_shocking@male@enter"
  localValue6 = "amb@world_human_mobile_film_shocking@male@base"
  localValue7 = "amb@world_human_mobile_film_shocking@male@exit"
  localValue8 = "core"
  localValue9 = "ent_anim_paparazzi_flash"
  localValue10 = DoesEntityExist
  localValue11 = localValue1
  localValue10 = localValue10(localValue11)
  if localValue10 then
    localValue10 = IsEntityDead
    localValue11 = localValue1
    localValue10 = localValue10(localValue11)
    if not localValue10 then
      localValue10 = CMG
      localValue10 = localValue10.loadAnimDict
      localValue11 = localValue5
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue10(localValue11)
      localValue10 = CMG
      localValue10 = localValue10.loadAnimDict
      localValue11 = localValue6
      localValue10(localValue11)
      localValue10 = CMG
      localValue10 = localValue10.loadAnimDict
      localValue11 = localValue7
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue10(localValue11)
      localValue10 = RequestNamedPtfxAsset
      localValue11 = localValue8
      localValue10(localValue11)
      localValue10 = stateFlag4
      if localValue10 then
        localValue10 = TaskPlayAnim
        localValue11 = localValue1
        localValue12 = localValue7
        stateFlag2 = "exit"
        number = 8.0
        stateFlag5 = 1.0
        stateFlag6 = -1
        stateFlag7 = 50
        number2 = 0
        stateFlag8 = false
        stateFlag10 = false
        stateFlag11 = false
        -- Beginner: Play an animation on a ped.
        localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11)
        localValue10 = Wait
        localValue11 = 1840
        localValue10(localValue11)
        localValue10 = DetachEntity
        localValue11 = localValue4
        localValue12 = false
        stateFlag2 = false
        localValue10(localValue11, localValue12, stateFlag2)
        localValue10 = DeleteEntity
        localValue11 = localValue4
        -- Beginner: Delete a GTA entity.
        localValue10(localValue11)
        localValue10 = Wait
        localValue11 = 750
        localValue10(localValue11)
        localValue10 = ClearPedSecondaryTask
        localValue11 = CMG
        localValue11 = localValue11.getPlayerPed
        localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue11()
        localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        localValue10 = false
        stateFlag4 = localValue10
      else
        localValue10 = Wait
        localValue11 = 500
        localValue10(localValue11)
        localValue10 = SetNetworkIdExistsOnAllMachines
        localValue11 = localValue4
        localValue12 = true
        localValue10(localValue11, localValue12)
        localValue10 = NetworkUseHighPrecisionBlending
        localValue11 = localValue4
        localValue12 = true
        localValue10(localValue11, localValue12)
        localValue10 = SetNetworkIdCanMigrate
        localValue11 = localValue4
        localValue12 = false
        localValue10(localValue11, localValue12)
        localValue10 = TaskPlayAnim
        localValue11 = localValue1
        localValue12 = localValue5
        stateFlag2 = "enter"
        number = 8.0
        stateFlag5 = 1.0
        stateFlag6 = -1
        stateFlag7 = 50
        number2 = 0
        stateFlag8 = false
        stateFlag10 = false
        stateFlag11 = false
        -- Beginner: Play an animation on a ped.
        localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11)
        localValue10 = Wait
        localValue11 = 1260
        localValue10(localValue11)
        localValue10 = AttachEntityToEntity
        localValue11 = localValue4
        localValue12 = GetPlayerPed
        stateFlag2 = PlayerId
        stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = stateFlag2()
        -- Beginner: result below is playerPed.
        localValue12 = localValue12(stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        stateFlag2 = GetPedBoneIndex
        number = GetPlayerPed
        stateFlag5 = PlayerId
        stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = stateFlag5()
        -- Beginner: result below is playerPed.
        number = number(stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        stateFlag5 = 28422
        stateFlag2 = stateFlag2(number, stateFlag5)
        number = -0.005
        stateFlag5 = 0.0
        stateFlag6 = 0.0
        stateFlag7 = 360.0
        number2 = 360.0
        stateFlag8 = 0.0
        stateFlag10 = true
        stateFlag11 = true
        stateFlag12 = false
        stateFlag13 = true
        number3 = 0
        stateFlag14 = true
        -- Beginner: Attach one entity to another entity.
        localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        localValue10 = tCMG
        localValue10 = localValue10.notify
        localValue11 = "Press ~r~[E]~w~ to take a picture!"
        -- Beginner: Show a notification to the player.
        localValue10(localValue11)
        localValue10 = true
        stateFlag4 = localValue10
      end
    end
  end
  localValue10 = SetModelAsNoLongerNeeded
  localValue11 = localValue2
  localValue10(localValue11)
  while true do
    localValue10 = stateFlag4
    if not localValue10 then
      break
    end
    localValue10 = Wait
    localValue11 = 0
    localValue10(localValue11)
    localValue10 = IsControlJustPressed
    localValue11 = 0
    localValue12 = 38
    localValue10 = localValue10(localValue11, localValue12)
    if localValue10 then
      localValue10 = tCMG
      localValue10 = localValue10.notify
      localValue11 = "Click Click"
      -- Beginner: Show a notification to the player.
      localValue10(localValue11)
      localValue10 = Wait
      localValue11 = 500
      localValue10(localValue11)
      localValue10 = UseParticleFxAsset
      localValue11 = localValue8
      localValue10(localValue11)
      localValue10 = StartParticleFxNonLoopedOnEntity
      localValue11 = localValue9
      localValue12 = localValue4
      stateFlag2 = 0.0
      number = 0.1
      stateFlag5 = 0.0
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      number2 = 0.0
      stateFlag8 = 2.0
      stateFlag10 = false
      stateFlag11 = false
      stateFlag12 = false
      localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12)
    end
  end
  localValue10 = RemoveNamedPtfxAsset
  localValue11 = localValue8
  localValue10(localValue11)
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "picture".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "bong"
-- Beginner: this function is the command handler for "bong".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14
  localValue1 = "anim@safehouse@bong"
  localValue2 = "bong_stage1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = GetHashKey
  localValue5 = stateFlag3
  -- Beginner: result below is hash.
  localValue4 = localValue4(localValue5)
  localValue5 = RequestModel
  localValue6 = localValue4
  localValue5(localValue6)
  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = GetPlayerPed
  localValue7 = PlayerId
  localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue7()
  -- Beginner: result below is playerPed.
  localValue6 = localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
  localValue7 = 0.0
  localValue8 = 0.0
  localValue9 = -5.0
  localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
  localValue6 = CMG
  localValue6 = localValue6.requestEntitySpawn
  localValue7 = "bong_object"
  localValue6(localValue7)
  localValue6 = CreateObject
  localValue7 = localValue4
  localValue8 = localValue5.x
  localValue9 = localValue5.y
  localValue10 = localValue5.z
  localValue11 = true
  localValue12 = true
  stateFlag2 = true
  -- Beginner: result below is objectEntity.
  localValue6 = localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2)
  localValue7 = SetModelAsNoLongerNeeded
  localValue8 = localValue4
  localValue7(localValue8)
  localValue7 = DoesEntityExist
  localValue8 = localValue3
  localValue7 = localValue7(localValue8)
  if localValue7 then
    localValue7 = IsEntityDead
    localValue8 = localValue3
    localValue7 = localValue7(localValue8)
    if not localValue7 then
      localValue7 = CMG
      localValue7 = localValue7.loadAnimDict
      localValue8 = localValue1
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue7(localValue8)
      localValue7 = stateFlag
      if localValue7 then
        localValue7 = Wait
        localValue8 = 100
        localValue7(localValue8)
        localValue7 = ClearPedSecondaryTask
        localValue8 = CMG
        localValue8 = localValue8.getPlayerPed
        localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue8()
        localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        localValue7 = DetachEntity
        localValue8 = localValue6
        localValue9 = false
        localValue10 = false
        localValue7(localValue8, localValue9, localValue10)
        localValue7 = DeleteEntity
        localValue8 = localValue6
        -- Beginner: Delete a GTA entity.
        localValue7(localValue8)
        localValue7 = false
        stateFlag = localValue7
      else
        localValue7 = Wait
        localValue8 = 500
        localValue7(localValue8)
        localValue7 = SetNetworkIdExistsOnAllMachines
        localValue8 = localValue6
        localValue9 = true
        localValue7(localValue8, localValue9)
        localValue7 = NetworkUseHighPrecisionBlending
        localValue8 = localValue6
        localValue9 = true
        localValue7(localValue8, localValue9)
        localValue7 = SetNetworkIdCanMigrate
        localValue8 = localValue6
        localValue9 = false
        localValue7(localValue8, localValue9)
        localValue7 = AttachEntityToEntity
        localValue8 = localValue6
        localValue9 = GetPlayerPed
        localValue10 = PlayerId
        localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue10()
        -- Beginner: result below is playerPed.
        localValue9 = localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        localValue10 = GetPedBoneIndex
        localValue11 = GetPlayerPed
        localValue12 = PlayerId
        localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14 = localValue12()
        -- Beginner: result below is playerPed.
        localValue11 = localValue11(localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
        localValue12 = 18905
        localValue10 = localValue10(localValue11, localValue12)
        localValue11 = 0.1
        localValue12 = -0.25
        stateFlag2 = 0.0
        number = 95.0
        stateFlag5 = 190.0
        stateFlag6 = 180.0
        stateFlag7 = true
        number2 = true
        stateFlag8 = false
        stateFlag10 = true
        stateFlag11 = 0
        stateFlag12 = true
        -- Beginner: Attach one entity to another entity.
        localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12)
        localValue7 = Wait
        localValue8 = 120
        localValue7(localValue8)
        localValue7 = tCMG
        localValue7 = localValue7.notify
        localValue8 = "Press ~r~[E]~w~ to take a toke!"
        -- Beginner: Show a notification to the player.
        localValue7(localValue8)
        localValue7 = true
        stateFlag = localValue7
      end
    end
  end
  while true do
    localValue7 = stateFlag
    if not localValue7 then
      break
    end
    localValue7 = Wait
    localValue8 = 0
    localValue7(localValue8)
    localValue7 = GetEntityCoords
    localValue8 = localValue3
    localValue9 = true
    -- Beginner: result below is entityCoords.
    localValue7 = localValue7(localValue8, localValue9)
    localValue8 = GetEntityHeading
    localValue9 = localValue3
    -- Beginner: result below is heading.
    localValue8 = localValue8(localValue9)
    localValue9 = IsControlJustPressed
    localValue10 = 0
    localValue11 = 38
    localValue9 = localValue9(localValue10, localValue11)
    if localValue9 then
      localValue9 = TaskPlayAnimAdvanced
      localValue10 = localValue3
      localValue11 = localValue1
      localValue12 = localValue2
      stateFlag2 = localValue7.x
      number = localValue7.y
      stateFlag5 = localValue7.z
      stateFlag6 = 0.0
      stateFlag7 = 0.0
      number2 = localValue8
      stateFlag8 = 8.0
      stateFlag10 = 1.0
      stateFlag11 = 4000
      stateFlag12 = 49
      stateFlag13 = 0.25
      number3 = 0
      stateFlag14 = 0
      localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14)
      localValue9 = Wait
      localValue10 = 100
      localValue9(localValue10)
      localValue9 = tCMG
      localValue9 = localValue9.notify
      localValue10 = "You take a huge rip!"
      -- Beginner: Show a notification to the player.
      localValue9(localValue10)
      localValue9 = Wait
      localValue10 = 7250
      localValue9(localValue10)
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "bong".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "ma"
-- Beginner: this function is the command handler for "ma".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13
  localValue1 = "amb@world_human_car_park_attendant@male@base"
  localValue2 = "base"
  localValue3 = "amb@world_human_drinking@beer@male@exit"
  localValue4 = GetHashKey
  localValue5 = text
  -- Beginner: result below is hash.
  localValue4 = localValue4(localValue5)
  localValue5 = RequestModel
  localValue6 = localValue4
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetOffsetFromEntityInWorldCoords
  localValue7 = GetPlayerPed
  localValue8 = PlayerId
  localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue8()
  -- Beginner: result below is playerPed.
  localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue8 = 0.0
  localValue9 = 0.0
  localValue10 = -5.0
  localValue6 = localValue6(localValue7, localValue8, localValue9, localValue10)
  localValue7 = CMG
  localValue7 = localValue7.requestEntitySpawn
  localValue8 = "ma_wand_object"
  localValue7(localValue8)
  localValue7 = CreateObject
  localValue8 = localValue4
  localValue9 = localValue6.x
  localValue10 = localValue6.y
  localValue11 = localValue6.z
  localValue12 = true
  stateFlag2 = true
  number = true
  -- Beginner: result below is objectEntity.
  localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number)
  localValue8 = DoesEntityExist
  localValue9 = localValue5
  localValue8 = localValue8(localValue9)
  if localValue8 then
    localValue8 = IsEntityDead
    localValue9 = localValue5
    localValue8 = localValue8(localValue9)
    if not localValue8 then
      localValue8 = CMG
      localValue8 = localValue8.loadAnimDict
      localValue9 = localValue1
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue8(localValue9)
      localValue8 = CMG
      localValue8 = localValue8.loadAnimDict
      localValue9 = localValue3
      localValue8(localValue9)
      localValue8 = cmgOperation
      if localValue8 then
        localValue8 = Wait
        localValue9 = 100
        localValue8(localValue9)
        localValue8 = ClearPedSecondaryTask
        localValue9 = CMG
        localValue9 = localValue9.getPlayerPed
        localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue9()
        localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        localValue8 = DetachEntity
        localValue9 = localValue7
        localValue10 = false
        localValue11 = false
        localValue8(localValue9, localValue10, localValue11)
        localValue8 = DeleteEntity
        localValue9 = localValue7
        -- Beginner: Delete a GTA entity.
        localValue8(localValue9)
        localValue8 = false
        cmgOperation = localValue8
      else
        localValue8 = Wait
        localValue9 = 500
        localValue8(localValue9)
        localValue8 = AttachEntityToEntity
        localValue9 = localValue7
        localValue10 = GetPlayerPed
        localValue11 = PlayerId
        localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue11()
        -- Beginner: result below is playerPed.
        localValue10 = localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        localValue11 = GetPedBoneIndex
        localValue12 = GetPlayerPed
        stateFlag2 = PlayerId
        stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = stateFlag2()
        -- Beginner: result below is playerPed.
        localValue12 = localValue12(stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        stateFlag2 = 28422
        localValue11 = localValue11(localValue12, stateFlag2)
        localValue12 = -0.005
        stateFlag2 = 0.0
        number = 0.0
        stateFlag5 = 360.0
        stateFlag6 = 360.0
        stateFlag7 = 0.0
        number2 = true
        stateFlag8 = true
        stateFlag10 = false
        stateFlag11 = true
        stateFlag12 = 0
        stateFlag13 = true
        -- Beginner: Attach one entity to another entity.
        localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
        localValue8 = Wait
        localValue9 = 120
        localValue8(localValue9)
        localValue8 = tCMG
        localValue8 = localValue8.notify
        localValue9 = "Press ~r~[E]~w~ to wave the wand."
        -- Beginner: Show a notification to the player.
        localValue8(localValue9)
        localValue8 = true
        cmgOperation = localValue8
      end
    end
  end
  localValue8 = SetModelAsNoLongerNeeded
  localValue9 = localValue4
  localValue8(localValue9)
  while true do
    localValue8 = cmgOperation
    if not localValue8 then
      break
    end
    localValue8 = Wait
    localValue9 = 0
    localValue8(localValue9)
    localValue8 = {}
    localValue9 = "Nothing to see here, lets move along."
    localValue10 = "Keep it moving!"
    localValue11 = "Ugh, why did I pick traffic control.."
    localValue12 = "Lets go already!"
    stateFlag2 = "Will yinz hurry up!!"
    localValue8[1] = localValue9
    localValue8[2] = localValue10
    localValue8[3] = localValue11
    localValue8[4] = localValue12
    localValue8[5] = stateFlag2
    localValue9 = math
    localValue9 = localValue9.random
    localValue10 = 1
    localValue11 = 5
    localValue9 = localValue9(localValue10, localValue11)
    localValue10 = IsControlJustPressed
    localValue11 = 0
    localValue12 = 38
    localValue10 = localValue10(localValue11, localValue12)
    if localValue10 then
      localValue10 = TaskPlayAnim
      localValue11 = localValue5
      localValue12 = localValue1
      stateFlag2 = localValue2
      number = 8.0
      stateFlag5 = 1.0
      stateFlag6 = 5000
      stateFlag7 = 49
      number2 = 0
      stateFlag8 = false
      stateFlag10 = false
      stateFlag11 = false
      -- Beginner: Play an animation on a ped.
      localValue10(localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11)
      localValue10 = Wait
      localValue11 = 100
      localValue10(localValue11)
      localValue10 = tCMG
      localValue10 = localValue10.notify
      localValue11 = localValue8[localValue9]
      -- Beginner: Show a notification to the player.
      localValue10(localValue11)
    end
    localValue10 = IsEntityPlayingAnim
    localValue11 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue11 = localValue11()
    localValue12 = "missminuteman_1ig_2"
    stateFlag2 = "handsup_enter"
    number = 3
    localValue10 = localValue10(localValue11, localValue12, stateFlag2, number)
    if localValue10 then
      localValue10 = DeleteEntity
      localValue11 = localValue7
      -- Beginner: Delete a GTA entity.
      localValue10(localValue11)
      break
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "ma".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance1"
-- Beginner: this function is the command handler for "dance1".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  localValue2 = "li_dance_facedj_11_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance1".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance2"
-- Beginner: this function is the command handler for "dance2".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  localValue2 = "hi_dance_facedj_09_v2_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance2".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance3"
-- Beginner: this function is the command handler for "dance3".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  localValue2 = "li_dance_facedj_15_v2_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance3".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance4"
-- Beginner: this function is the command handler for "dance4".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "mi_dance_prop_15_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance4".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance5"
-- Beginner: this function is the command handler for "dance5".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@djs@dixon@"
  localValue2 = "dixn_dance_a_dixon"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance5".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance6"
-- Beginner: this function is the command handler for "dance6".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@djs@solomun@"
  localValue2 = "sol_trans_out_to_rt_a_sol"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance6".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance7"
-- Beginner: this function is the command handler for "dance7".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance7".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance8"
-- Beginner: this function is the command handler for "dance8".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance8".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance9"
-- Beginner: this function is the command handler for "dance9".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance9".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance10"
-- Beginner: this function is the command handler for "dance10".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance10".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance11"
-- Beginner: this function is the command handler for "dance11".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance11".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance12"
-- Beginner: this function is the command handler for "dance12".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance12".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance13"
-- Beginner: this function is the command handler for "dance13".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance13".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance14"
-- Beginner: this function is the command handler for "dance14".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance14".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance15"
-- Beginner: this function is the command handler for "dance15".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance15".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance16"
-- Beginner: this function is the command handler for "dance16".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance16".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance17"
-- Beginner: this function is the command handler for "dance17".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance17".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance18"
-- Beginner: this function is the command handler for "dance18".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v1_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance18".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance19"
-- Beginner: this function is the command handler for "dance19".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance19".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance20"
-- Beginner: this function is the command handler for "dance20".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance20".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance21"
-- Beginner: this function is the command handler for "dance21".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance21".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance22"
-- Beginner: this function is the command handler for "dance22".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance22".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance23"
-- Beginner: this function is the command handler for "dance23".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance23".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance24"
-- Beginner: this function is the command handler for "dance24".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance24".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance25"
-- Beginner: this function is the command handler for "dance25".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance25".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance26"
-- Beginner: this function is the command handler for "dance26".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance26".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance27"
-- Beginner: this function is the command handler for "dance27".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance27".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance28"
-- Beginner: this function is the command handler for "dance28".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance28".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance29"
-- Beginner: this function is the command handler for "dance29".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance29".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance30"
-- Beginner: this function is the command handler for "dance30".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_09_v2_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance30".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance31"
-- Beginner: this function is the command handler for "dance31".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance31".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance32"
-- Beginner: this function is the command handler for "dance32".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance32".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance33"
-- Beginner: this function is the command handler for "dance33".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance33".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance34"
-- Beginner: this function is the command handler for "dance34".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance34".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance35"
-- Beginner: this function is the command handler for "dance35".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance35".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance36"
-- Beginner: this function is the command handler for "dance36".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance36".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance37"
-- Beginner: this function is the command handler for "dance37".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance37".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance38"
-- Beginner: this function is the command handler for "dance38".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance38".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance39"
-- Beginner: this function is the command handler for "dance39".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance39".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance40"
-- Beginner: this function is the command handler for "dance40".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance40".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance41"
-- Beginner: this function is the command handler for "dance41".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance41".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance42"
-- Beginner: this function is the command handler for "dance42".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v1_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance42".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance43"
-- Beginner: this function is the command handler for "dance43".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance43".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance44"
-- Beginner: this function is the command handler for "dance44".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance44".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance45"
-- Beginner: this function is the command handler for "dance45".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance45".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance46"
-- Beginner: this function is the command handler for "dance46".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance46".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance47"
-- Beginner: this function is the command handler for "dance47".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance47".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance48"
-- Beginner: this function is the command handler for "dance48".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance48".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance49"
-- Beginner: this function is the command handler for "dance49".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance49".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance50"
-- Beginner: this function is the command handler for "dance50".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance50".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance51"
-- Beginner: this function is the command handler for "dance51".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance51".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance52"
-- Beginner: this function is the command handler for "dance52".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance52".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance53"
-- Beginner: this function is the command handler for "dance53".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance53".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance54"
-- Beginner: this function is the command handler for "dance54".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "hi_dance_facedj_11_v2_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance54".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance55"
-- Beginner: this function is the command handler for "dance55".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance55".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance56"
-- Beginner: this function is the command handler for "dance56".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance56".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance57"
-- Beginner: this function is the command handler for "dance57".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance57".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance58"
-- Beginner: this function is the command handler for "dance58".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance58".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance59"
-- Beginner: this function is the command handler for "dance59".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance59".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance60"
-- Beginner: this function is the command handler for "dance60".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance60".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance61"
-- Beginner: this function is the command handler for "dance61".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance61".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance62"
-- Beginner: this function is the command handler for "dance62".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance62".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance63"
-- Beginner: this function is the command handler for "dance63".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance63".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance64"
-- Beginner: this function is the command handler for "dance64".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance64".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance65"
-- Beginner: this function is the command handler for "dance65".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance65".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance66"
-- Beginner: this function is the command handler for "dance66".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v1_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance66".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance67"
-- Beginner: this function is the command handler for "dance67".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance67".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance68"
-- Beginner: this function is the command handler for "dance68".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance68".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance69"
-- Beginner: this function is the command handler for "dance69".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance69".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance70"
-- Beginner: this function is the command handler for "dance70".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance70".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance71"
-- Beginner: this function is the command handler for "dance71".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance71".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance72"
-- Beginner: this function is the command handler for "dance72".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  localValue2 = "mi_dance_facedj_09_v2_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance72".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance73"
-- Beginner: this function is the command handler for "dance73".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance73".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance74"
-- Beginner: this function is the command handler for "dance74".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance74".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance75"
-- Beginner: this function is the command handler for "dance75".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance75".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance74"
-- Beginner: this function is the command handler for "dance74".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance74".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance75"
-- Beginner: this function is the command handler for "dance75".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance75".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance76"
-- Beginner: this function is the command handler for "dance76".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  localValue2 = "hi_dance_facedj_09_v1_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance76".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance77"
-- Beginner: this function is the command handler for "dance77".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance77".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance78"
-- Beginner: this function is the command handler for "dance78".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance78".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance79"
-- Beginner: this function is the command handler for "dance79".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance79".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance80"
-- Beginner: this function is the command handler for "dance80".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance80".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance81"
-- Beginner: this function is the command handler for "dance81".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance81".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance82"
-- Beginner: this function is the command handler for "dance82".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  localValue2 = "trans_dance_crowd_li_to_hi_09_v1_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance82".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance83"
-- Beginner: this function is the command handler for "dance83".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance83".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance84"
-- Beginner: this function is the command handler for "dance84".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance84".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance85"
-- Beginner: this function is the command handler for "dance85".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance85".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance86"
-- Beginner: this function is the command handler for "dance86".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance86".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance87"
-- Beginner: this function is the command handler for "dance87".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance87".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance88"
-- Beginner: this function is the command handler for "dance88".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  localValue2 = "trans_dance_crowd_mi_to_hi_09_v1_male^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance88".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance89"
-- Beginner: this function is the command handler for "dance89".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance89".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance90"
-- Beginner: this function is the command handler for "dance90".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance90".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance91"
-- Beginner: this function is the command handler for "dance91".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance91".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance92"
-- Beginner: this function is the command handler for "dance92".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance92".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance93"
-- Beginner: this function is the command handler for "dance93".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance93".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance94"
-- Beginner: this function is the command handler for "dance94".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_female^6"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance94".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance95"
-- Beginner: this function is the command handler for "dance95".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_male^1"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance95".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance96"
-- Beginner: this function is the command handler for "dance96".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_male^2"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance96".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance97"
-- Beginner: this function is the command handler for "dance97".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_male^3"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance97".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance98"
-- Beginner: this function is the command handler for "dance98".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_male^4"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance98".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance99"
-- Beginner: this function is the command handler for "dance99".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  localValue2 = "hi_dance_prop_09_v1_male^5"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance99".
workingValue3(text3, text4, stateFlag9)
workingValue3 = RegisterCommand
text3 = "dance100"
-- Beginner: this function is the command handler for "dance100".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = ""
  localValue2 = ""
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
end
stateFlag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance100".
workingValue3(text3, text4, stateFlag9)
workingValue3 = false
text3 = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = workingValue3
  return localValue1
end
text3.isBeingNhsDragged = text4
text3 = RegisterNetEvent
text4 = "d8597e7d17"
-- Beginner: this function handles network event "d8597e7d17".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = false
  workingValue3 = localValue1
  localValue1 = ClearPedSecondaryTask
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  localValue2, localValue3, localValue4 = localValue2()
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DetachEntity
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d8597e7d17".
text3(text4, stateFlag9)
text3 = RegisterNetEvent
text4 = "bad02f5164"
-- Beginner: this function handles network event "bad02f5164".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12) ===
function stateFlag9(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12)
  local stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number4, stateFlag18
  stateFlag2 = "combat@drag_ped@" == localValue2
  workingValue3 = stateFlag2
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag2 = stateFlag2()
  number = GetPlayerPed
  stateFlag5 = GetPlayerFromServerId
  stateFlag6 = localValue1
  stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number4, stateFlag18 = stateFlag5(stateFlag6)
  -- Beginner: result below is playerPed.
  number = number(stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number4, stateFlag18)
  stateFlag5 = RequestAnimDict
  stateFlag6 = localValue2
  stateFlag5(stateFlag6)
  while true do
    stateFlag5 = HasAnimDictLoaded
    stateFlag6 = localValue2
    stateFlag5 = stateFlag5(stateFlag6)
    if stateFlag5 then
      break
    end
    stateFlag5 = Citizen
    stateFlag5 = stateFlag5.Wait
    stateFlag6 = 10
    stateFlag5(stateFlag6)
  end
  if nil == localValue8 then
    localValue8 = 180.0
  end
  stateFlag5 = AttachEntityToEntity
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag6 = stateFlag6()
  stateFlag7 = number
  number2 = localValue12 or number2
  if not localValue12 then
    number2 = 0
  end
  stateFlag8 = localValue5
  stateFlag10 = localValue4
  stateFlag11 = localValue6
  stateFlag12 = 0.5
  stateFlag13 = 0.5
  number3 = localValue8
  stateFlag14 = false
  stateFlag15 = false
  stateFlag16 = false
  stateFlag17 = false
  number4 = 2
  stateFlag18 = false
  -- Beginner: Attach one entity to another entity.
  stateFlag5(stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14, stateFlag15, stateFlag16, stateFlag17, number4, stateFlag18)
  stateFlag5 = Wait
  stateFlag6 = 500
  stateFlag5(stateFlag6)
  if nil == localValue11 then
    localValue11 = 0
  end
  if 0 == localValue11 then
    stateFlag5 = DetachEntity
    stateFlag6 = CMG
    stateFlag6 = stateFlag6.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag6 = stateFlag6()
    stateFlag7 = true
    number2 = false
    stateFlag5(stateFlag6, stateFlag7, number2)
  end
  if nil == localValue9 then
    localValue9 = 0
  end
  stateFlag5 = TaskPlayAnim
  stateFlag6 = stateFlag2
  stateFlag7 = localValue2
  number2 = localValue3
  stateFlag8 = 8.0
  stateFlag10 = -8.0
  stateFlag11 = localValue7
  stateFlag12 = localValue9
  stateFlag13 = 0
  number3 = false
  stateFlag14 = false
  stateFlag15 = false
  -- Beginner: Play an animation on a ped.
  stateFlag5(stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3, stateFlag14, stateFlag15)
  stateFlag5 = RemoveAnimDict
  stateFlag6 = localValue2
  stateFlag5(stateFlag6)
  stateFlag5 = Citizen
  stateFlag5 = stateFlag5.Wait
  stateFlag6 = localValue7
  stateFlag5(stateFlag6)
  if "combat@drag_ped@" == localValue2 then
    stateFlag5 = false
    workingValue3 = stateFlag5
  end
  stateFlag5 = DetachEntity
  stateFlag6 = CMG
  stateFlag6 = stateFlag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag6 = stateFlag6()
  stateFlag7 = true
  number2 = false
  stateFlag5(stateFlag6, stateFlag7, number2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bad02f5164".
text3(text4, stateFlag9)
text3 = RegisterNetEvent
text4 = "72c704cb58"
-- Beginner: this function handles network event "72c704cb58".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2, localValue3, localValue4) ===
function stateFlag9(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7
  localValue5 = CMG
  localValue5 = localValue5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = RequestAnimDict
  localValue7 = localValue1
  localValue6(localValue7)
  while true do
    localValue6 = HasAnimDictLoaded
    localValue7 = localValue1
    localValue6 = localValue6(localValue7)
    if localValue6 then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 10
    localValue6(localValue7)
  end
  localValue6 = Wait
  localValue7 = 500
  localValue6(localValue7)
  if nil == localValue4 then
    localValue4 = 0
  end
  localValue6 = TaskPlayAnim
  localValue7 = localValue5
  localValue8 = localValue1
  localValue9 = localValue2
  localValue10 = 8.0
  localValue11 = -8.0
  localValue12 = localValue3
  stateFlag2 = localValue4
  number = 0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  -- Beginner: Play an animation on a ped.
  localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7)
  localValue6 = RemoveAnimDict
  localValue7 = localValue1
  localValue6(localValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "72c704cb58".
text3(text4, stateFlag9)
text3 = RegisterCommand
text4 = "rope"
-- Beginner: this function is the command handler for "rope".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5
  localValue1 = "random@burial"
  localValue2 = "untie_ped"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = DoesEntityExist
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = tCMG
    localValue4 = localValue4.canAnim
    localValue4 = localValue4()
    if localValue4 then
      localValue4 = IsEntityDead
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        localValue4 = workingValue
        localValue4 = localValue4()
        if localValue4 then
          localValue4 = CMG
          localValue4 = localValue4.loadAnimDict
          localValue5 = localValue1
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue4(localValue5)
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = localValue1
          localValue7 = localValue2
          localValue8 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
          if localValue4 then
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = "exit"
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = -1
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = ClearPedSecondaryTask
            localValue5 = localValue3
            localValue4(localValue5)
          else
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
            localValue4 = Wait
            localValue5 = 2000
            localValue4(localValue5)
            localValue4 = TaskPlayAnim
            localValue5 = localValue3
            localValue6 = localValue1
            localValue7 = localValue2
            localValue8 = 3.0
            localValue9 = 1.0
            localValue10 = 2000
            localValue11 = 1
            localValue12 = 0
            stateFlag2 = false
            number = false
            stateFlag5 = false
            -- Beginner: Play an animation on a ped.
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
          end
          localValue4 = RemoveAnimDict
          localValue5 = localValue1
          localValue4(localValue5)
        end
      end
    end
  end
  localValue4 = Wait
  localValue5 = 5000
  localValue4(localValue5)
end
cmgOperation2 = false
-- Beginner: Register a chat/console command. Event/command: "rope".
text3(text4, stateFlag9, cmgOperation2)
text3 = RegisterNetEvent
text4 = "a72f22e19a"
-- Beginner: this function handles network event "a72f22e19a".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13
  localValue1 = "mp_safehousebeer@"
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "p_whiskey_bottle_s"
  localValue4 = CMG
  localValue4 = localValue4.loadAnimDict
  localValue5 = localValue1
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue4(localValue5)
  localValue4 = table
  localValue4 = localValue4.unpack
  localValue5 = GetEntityCoords
  localValue6 = localValue2
  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue5(localValue6)
  localValue4, localValue5, localValue6 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue7 = TaskPlayAnim
  localValue8 = localValue2
  localValue9 = localValue1
  localValue10 = "drink_2"
  localValue11 = 800.0
  localValue12 = 8.0
  stateFlag2 = -1
  number = 49
  stateFlag5 = 0
  stateFlag6 = false
  stateFlag7 = false
  number2 = false
  -- Beginner: Play an animation on a ped.
  localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2)
  localValue7 = Wait
  localValue8 = 1000
  localValue7(localValue8)
  localValue7 = CMG
  localValue7 = localValue7.requestEntitySpawn
  localValue8 = "drink_gin_object"
  localValue7(localValue8)
  localValue7 = CreateObject
  localValue8 = GetHashKey
  localValue9 = localValue3
  -- Beginner: result below is hash.
  localValue8 = localValue8(localValue9)
  localValue9 = localValue4
  localValue10 = localValue5
  localValue11 = localValue6 + 0.2
  localValue12 = true
  stateFlag2 = true
  number = true
  -- Beginner: result below is objectEntity.
  localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number)
  localValue8 = AttachEntityToEntity
  localValue9 = localValue7
  localValue10 = localValue2
  localValue11 = GetPedBoneIndex
  localValue12 = localValue2
  stateFlag2 = 28422
  localValue11 = localValue11(localValue12, stateFlag2)
  localValue12 = 0.0
  stateFlag2 = 0.0
  number = 0.0
  stateFlag5 = 0.0
  stateFlag6 = 0.0
  stateFlag7 = 180.0
  number2 = true
  stateFlag8 = true
  stateFlag10 = false
  stateFlag11 = true
  stateFlag12 = 1
  stateFlag13 = true
  -- Beginner: Attach one entity to another entity.
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue8 = Wait
  localValue9 = 5000
  localValue8(localValue9)
  localValue8 = TaskPlayAnim
  localValue9 = localValue2
  localValue10 = localValue1
  localValue11 = "exit"
  localValue12 = 8.0
  stateFlag2 = 1.0
  number = -1
  stateFlag5 = 49
  stateFlag6 = 0
  stateFlag7 = false
  number2 = false
  stateFlag8 = false
  -- Beginner: Play an animation on a ped.
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8)
  localValue8 = Wait
  localValue9 = 100
  localValue8(localValue9)
  localValue8 = RequestAnimSet
  localValue9 = "move_m@drunk@verydrunk"
  localValue8(localValue9)
  while true do
    localValue8 = HasAnimSetLoaded
    localValue9 = "move_m@drunk@verydrunk"
    localValue8 = localValue8(localValue9)
    if localValue8 then
      break
    end
    localValue8 = Citizen
    localValue8 = localValue8.Wait
    localValue9 = 0
    localValue8(localValue9)
  end
  localValue8 = DoScreenFadeOut
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = Citizen
  localValue8 = localValue8.Wait
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = ClearPedTasksImmediately
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue9()
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue8 = SetTimecycleModifier
  localValue9 = "spectator5"
  localValue8(localValue9)
  localValue8 = SetPedMotionBlur
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = true
  localValue8(localValue9, localValue10)
  localValue8 = SetPedMovementClipset
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = "move_m@drunk@verydrunk"
  localValue11 = 1.0
  localValue8(localValue9, localValue10, localValue11)
  localValue8 = RemoveAnimSet
  localValue9 = "move_m@drunk@verydrunk"
  localValue8(localValue9)
  localValue8 = SetPedIsDrunk
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = true
  localValue8(localValue9, localValue10)
  localValue8 = DoScreenFadeIn
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = ClearPedSecondaryTask
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13 = localValue9()
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue8 = DeleteObject
  localValue9 = localValue7
  localValue8(localValue9)
  localValue8 = Wait
  localValue9 = 60000
  localValue8(localValue9)
  localValue8 = DoScreenFadeOut
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = Citizen
  localValue8 = localValue8.Wait
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = DoScreenFadeIn
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = ClearTimecycleModifier
  localValue8()
  localValue8 = ResetScenarioTypesEnabled
  localValue8()
  localValue8 = ResetPedMovementClipset
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = 0
  localValue8(localValue9, localValue10)
  localValue8 = SetPedIsDrunk
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = false
  localValue8(localValue9, localValue10)
  localValue8 = SetPedMotionBlur
  localValue9 = CMG
  localValue9 = localValue9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue9 = localValue9()
  localValue10 = false
  localValue8(localValue9, localValue10)
  localValue8 = RemoveAnimDict
  localValue9 = localValue1
  localValue8(localValue9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a72f22e19a".
text3(text4, stateFlag9)
text3 = RegisterNetEvent
text4 = "6c304cd42b"
-- Beginner: this function handles network event "6c304cd42b".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3
  localValue2 = "mp_safehousebeer@"
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1
  localValue5 = CMG
  localValue5 = localValue5.loadAnimDict
  localValue6 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue5(localValue6)
  localValue5 = table
  localValue5 = localValue5.unpack
  localValue6 = GetEntityCoords
  localValue7 = localValue3
  localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3 = localValue6(localValue7)
  localValue5, localValue6, localValue7 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3)
  localValue8 = TaskPlayAnim
  localValue9 = localValue3
  localValue10 = localValue2
  localValue11 = "drink_2"
  localValue12 = 800.0
  stateFlag2 = 8.0
  number = -1
  stateFlag5 = 49
  stateFlag6 = 0
  stateFlag7 = false
  number2 = false
  stateFlag8 = false
  -- Beginner: Play an animation on a ped.
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8)
  localValue8 = Wait
  localValue9 = 1000
  localValue8(localValue9)
  localValue8 = CMG
  localValue8 = localValue8.requestEntitySpawn
  localValue9 = "drink_can_object"
  localValue10 = GetHashKey
  localValue11 = localValue1
  localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3 = localValue10(localValue11)
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3)
  localValue8 = CreateObject
  localValue9 = GetHashKey
  localValue10 = localValue4
  -- Beginner: result below is hash.
  localValue9 = localValue9(localValue10)
  localValue10 = localValue5
  localValue11 = localValue6
  localValue12 = localValue7 + 0.2
  stateFlag2 = true
  number = true
  stateFlag5 = true
  -- Beginner: result below is objectEntity.
  localValue8 = localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
  localValue9 = AttachEntityToEntity
  localValue10 = localValue8
  localValue11 = localValue3
  localValue12 = GetPedBoneIndex
  stateFlag2 = localValue3
  number = 28422
  localValue12 = localValue12(stateFlag2, number)
  stateFlag2 = 0.0
  number = 0.0
  stateFlag5 = 0.0
  stateFlag6 = 0.0
  stateFlag7 = 0.0
  number2 = 180.0
  stateFlag8 = true
  stateFlag10 = true
  stateFlag11 = false
  stateFlag12 = true
  stateFlag13 = 1
  number3 = true
  -- Beginner: Attach one entity to another entity.
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3)
  localValue9 = Wait
  localValue10 = 5000
  localValue9(localValue10)
  localValue9 = TaskPlayAnim
  localValue10 = localValue3
  localValue11 = localValue2
  localValue12 = "exit"
  stateFlag2 = 8.0
  number = 1.0
  stateFlag5 = -1
  stateFlag6 = 49
  stateFlag7 = 0
  number2 = false
  stateFlag8 = false
  stateFlag10 = false
  -- Beginner: Play an animation on a ped.
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10)
  localValue9 = Wait
  localValue10 = 100
  localValue9(localValue10)
  localValue9 = RequestAnimSet
  localValue10 = "move_m@drunk@verydrunk"
  localValue9(localValue10)
  while true do
    localValue9 = HasAnimSetLoaded
    localValue10 = "move_m@drunk@verydrunk"
    localValue9 = localValue9(localValue10)
    if localValue9 then
      break
    end
    localValue9 = Citizen
    localValue9 = localValue9.Wait
    localValue10 = 0
    localValue9(localValue10)
  end
  localValue9 = DoScreenFadeOut
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = Citizen
  localValue9 = localValue9.Wait
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = ClearPedTasksImmediately
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3 = localValue10()
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3)
  localValue9 = SetTimecycleModifier
  localValue10 = "spectator5"
  localValue9(localValue10)
  localValue9 = SetPedMotionBlur
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = true
  localValue9(localValue10, localValue11)
  localValue9 = SetPedMovementClipset
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = "move_m@drunk@verydrunk"
  localValue12 = 1.0
  localValue9(localValue10, localValue11, localValue12)
  localValue9 = RemoveAnimSet
  localValue10 = "move_m@drunk@verydrunk"
  localValue9(localValue10)
  localValue9 = SetPedIsDrunk
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = true
  localValue9(localValue10, localValue11)
  localValue9 = DoScreenFadeIn
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = ClearPedSecondaryTask
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3 = localValue10()
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13, number3)
  localValue9 = DeleteObject
  localValue10 = localValue8
  localValue9(localValue10)
  localValue9 = Wait
  localValue10 = 60000
  localValue9(localValue10)
  localValue9 = DoScreenFadeOut
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = Citizen
  localValue9 = localValue9.Wait
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = DoScreenFadeIn
  localValue10 = 1000
  localValue9(localValue10)
  localValue9 = ClearTimecycleModifier
  localValue9()
  localValue9 = ResetScenarioTypesEnabled
  localValue9()
  localValue9 = ResetPedMovementClipset
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = 0
  localValue9(localValue10, localValue11)
  localValue9 = SetPedIsDrunk
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = false
  localValue9(localValue10, localValue11)
  localValue9 = SetPedMotionBlur
  localValue10 = CMG
  localValue10 = localValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue10 = localValue10()
  localValue11 = false
  localValue9(localValue10, localValue11)
  localValue9 = RemoveAnimDict
  localValue10 = localValue2
  localValue9(localValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6c304cd42b".
text3(text4, stateFlag9)
text3 = tCMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = IsEntityPlayingAnim
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "random@arrests@busted"
  localValue4 = "idle_a"
  localValue5 = 3
  return localValue1(localValue2, localValue3, localValue4, localValue5)
end
text3.isPlayerKneeling = text4
text3 = false
text4 = RegisterNetEvent
stateFlag9 = "e4bcfd6526"
-- Beginner: this function handles network event "e4bcfd6526".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.loadAnimDict
  localValue5 = "misshair_shop@hair_dressers"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue4(localValue5)
  localValue4 = tCMG
  localValue4 = localValue4.setCanAnim
  localValue5 = false
  localValue4(localValue5)
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = localValue3
  localValue7 = -0.3
  localValue8 = -0.2
  localValue9 = 0.0
  localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
  localValue6 = GetEntityHeading
  localValue7 = localValue3
  -- Beginner: result below is heading.
  localValue6 = localValue6(localValue7)
  localValue7 = SetEntityCoords
  localValue8 = localValue4
  localValue9 = localValue5.x
  localValue10 = localValue5.y
  localValue11 = localValue5.z
  localValue11 = localValue11 - 1.0
  localValue12 = true
  stateFlag2 = false
  number = false
  stateFlag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5)
  localValue7 = SetEntityHeading
  localValue8 = localValue4
  localValue9 = localValue6
  -- Beginner: Change the direction an entity is facing.
  localValue7(localValue8, localValue9)
  localValue7 = SetEntityNoCollisionEntity
  localValue8 = localValue4
  localValue9 = localValue3
  localValue10 = false
  localValue7(localValue8, localValue9, localValue10)
  localValue7 = SetEntityNoCollisionEntity
  localValue8 = localValue3
  localValue9 = localValue4
  localValue10 = false
  localValue7(localValue8, localValue9, localValue10)
  localValue7 = CMG
  localValue7 = localValue7.loadModel
  localValue8 = 1633371511
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue7(localValue8)
  localValue7 = CMG
  localValue7 = localValue7.requestEntitySpawn
  localValue8 = "shaving_clippers_object"
  localValue9 = localValue5
  localValue7(localValue8, localValue9)
  localValue7 = CreateObject
  localValue8 = 1633371511
  localValue9 = localValue5.x
  localValue10 = localValue5.y
  localValue11 = localValue5.z
  localValue11 = localValue11 + 2.0
  localValue12 = true
  stateFlag2 = true
  number = false
  -- Beginner: result below is objectEntity.
  localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number)
  localValue8 = AttachEntityToEntity
  localValue9 = localValue7
  localValue10 = localValue4
  localValue11 = GetPedBoneIndex
  localValue12 = localValue4
  stateFlag2 = 6286
  localValue11 = localValue11(localValue12, stateFlag2)
  localValue12 = 0.08
  stateFlag2 = 0.0
  number = -0.025
  stateFlag5 = 0.0
  stateFlag6 = 180.0
  stateFlag7 = -90.0
  number2 = false
  stateFlag8 = false
  stateFlag10 = false
  stateFlag11 = false
  stateFlag12 = 0
  stateFlag13 = true
  -- Beginner: Attach one entity to another entity.
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
  localValue8 = TaskPlayAnim
  localValue9 = localValue4
  localValue10 = "misshair_shop@hair_dressers"
  localValue11 = "keeper_hair_cut_a"
  localValue12 = 8.0
  stateFlag2 = 8.0
  number = -1
  stateFlag5 = 1
  stateFlag6 = 1.0
  stateFlag7 = false
  number2 = false
  stateFlag8 = false
  -- Beginner: Play an animation on a ped.
  localValue8(localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8)
  localValue8 = math
  localValue8 = localValue8.floor
  localValue9 = GetAnimDuration
  localValue10 = "misshair_shop@hair_dressers"
  localValue11 = "keeper_hair_cut_a"
  localValue9 = localValue9(localValue10, localValue11)
  localValue9 = localValue9 * 1000
  localValue8 = localValue8(localValue9)
  localValue9 = Citizen
  localValue9 = localValue9.Wait
  localValue10 = localValue8
  localValue9(localValue10)
  localValue9 = TaskPlayAnim
  localValue10 = localValue4
  localValue11 = "misshair_shop@hair_dressers"
  localValue12 = "keeper_hair_cut_b"
  stateFlag2 = 8.0
  number = 8.0
  stateFlag5 = -1
  stateFlag6 = 1
  stateFlag7 = 1.0
  number2 = false
  stateFlag8 = false
  stateFlag10 = false
  -- Beginner: Play an animation on a ped.
  localValue9(localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7, number2, stateFlag8, stateFlag10)
  localValue9 = math
  localValue9 = localValue9.floor
  localValue10 = GetAnimDuration
  localValue11 = "misshair_shop@hair_dressers"
  localValue12 = "keeper_hair_cut_b"
  localValue10 = localValue10(localValue11, localValue12)
  localValue10 = localValue10 * 1000
  localValue9 = localValue9(localValue10)
  localValue10 = Citizen
  localValue10 = localValue10.Wait
  localValue11 = localValue9
  localValue10(localValue11)
  localValue10 = ClearPedTasks
  localValue11 = localValue4
  localValue10(localValue11)
  localValue10 = SetEntityNoCollisionEntity
  localValue11 = localValue4
  localValue12 = localValue3
  stateFlag2 = true
  localValue10(localValue11, localValue12, stateFlag2)
  localValue10 = SetEntityNoCollisionEntity
  localValue11 = localValue3
  localValue12 = localValue4
  stateFlag2 = true
  localValue10(localValue11, localValue12, stateFlag2)
  localValue10 = DeleteEntity
  localValue11 = localValue7
  -- Beginner: Delete a GTA entity.
  localValue10(localValue11)
  localValue10 = tCMG
  localValue10 = localValue10.setCanAnim
  localValue11 = true
  localValue10(localValue11)
  localValue10 = RemoveAnimDict
  localValue11 = "misshair_shop@hair_dressers"
  localValue10(localValue11)
  localValue10 = SetModelAsNoLongerNeeded
  localValue11 = 1633371511
  localValue10(localValue11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e4bcfd6526".
text4(stateFlag9, cmgOperation2)
text4 = RegisterNetEvent
stateFlag9 = "05f833428d"
-- Beginner: this function handles network event "05f833428d".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = tCMG
  localValue4 = localValue4.setCanAnim
  localValue5 = false
  localValue4(localValue5)
  localValue4 = false
  text6 = localValue4
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = FreezeEntityPosition
  localValue6 = localValue4
  localValue7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(localValue6, localValue7)
  localValue5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue5 = localValue5()
  while true do
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue6 = localValue6 - localValue5
    localValue7 = 15500
    if not (localValue6 < localValue7) then
      break
    end
    localValue6 = IsEntityPlayingAnim
    localValue7 = localValue4
    localValue8 = "random@arrests@busted"
    localValue9 = "idle_a"
    localValue10 = 3
    localValue6 = localValue6(localValue7, localValue8, localValue9, localValue10)
    if not localValue6 then
      localValue6 = TaskPlayAnim
      localValue7 = localValue4
      localValue8 = "random@arrests@busted"
      localValue9 = "idle_a"
      localValue10 = 8.0
      localValue11 = 1.0
      localValue12 = -1
      stateFlag2 = 9
      number = 0
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      -- Beginner: Play an animation on a ped.
      localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue12, stateFlag2, number, stateFlag5, stateFlag6, stateFlag7)
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 0
    localValue6(localValue7)
  end
  localValue6 = SetPedComponentVariation
  localValue7 = localValue4
  localValue8 = 2
  localValue9 = 0
  localValue10 = 0
  localValue11 = 0
  localValue6(localValue7, localValue8, localValue9, localValue10, localValue11)
  localValue6 = FreezeEntityPosition
  localValue7 = localValue4
  localValue8 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue6(localValue7, localValue8)
  localValue6 = true
  text6 = localValue6
  localValue6 = tCMG
  localValue6 = localValue6.setCanAnim
  localValue7 = true
  localValue6(localValue7)
  localValue6 = true
  text3 = localValue6
  localValue6 = Citizen
  localValue6 = localValue6.Wait
  localValue7 = 1800000
  localValue6(localValue7)
  localValue6 = false
  text3 = localValue6
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "05f833428d".
text4(stateFlag9, cmgOperation2)
text4 = RegisterNetEvent
stateFlag9 = "c38ea56445"
-- Beginner: this function handles network event "c38ea56445".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = GetEntityCoords
  localValue6 = localValue3
  localValue7 = true
  -- Beginner: result below is entityCoords.
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = localValue4 - localValue5
  localValue6 = #localValue6
  if localValue6 < 15.0 then
    localValue6 = SendNUIMessage
    localValue7 = {}
    localValue7.transactionType = "shave"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue6(localValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c38ea56445".
text4(stateFlag9, cmgOperation2)
text4 = RegisterNetEvent
stateFlag9 = "aecf5d3044"
-- Beginner: this function handles network event "aecf5d3044".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  localValue2 = true
  text3 = localValue2
  localValue2 = Citizen
  localValue2 = localValue2.Wait
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = false
  text3 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aecf5d3044".
text4(stateFlag9, cmgOperation2)

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = text3
  if localValue2 then
    localValue2 = GetPedDrawableVariation
    localValue3 = localValue1.playerPed
    localValue4 = 2
    localValue2 = localValue2(localValue3, localValue4)
    if 0 ~= localValue2 then
      localValue2 = SetPedHeadOverlay
      localValue3 = localValue1.playerPed
      localValue4 = 1
      localValue5 = 0
      localValue6 = 0.0
      localValue2(localValue3, localValue4, localValue5, localValue6)
      localValue2 = SetPedComponentVariation
      localValue3 = localValue1.playerPed
      localValue4 = 2
      localValue5 = 0
      localValue6 = 0
      localValue7 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
    end
  end
end
stateFlag9 = CMG
stateFlag9 = stateFlag9.createThreadOnTick
cmgOperation2 = text4
text5 = "Shaver"
-- Beginner: Run a helper every game frame while this script is active.
stateFlag9(cmgOperation2, text5)

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue1 = localValue1()
  localValue2 = PlaySoundFrontend
  localValue3 = localValue1
  localValue4 = "Armour_On"
  localValue5 = "DLC_GR_Steal_Miniguns_Sounds"
  localValue6 = true
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = ReleaseSoundId
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation2 = RegisterNetEvent
text5 = "b44d4efa87"
-- Beginner: this function handles network event "b44d4efa87".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = tCMG
  localValue1 = localValue1.setCanAnim
  localValue2 = false
  localValue1(localValue2)
  localValue1 = stateFlag9
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1()
  localValue1 = TaskPlayAnim
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = "clothingtie"
  localValue4 = "try_tie_negative_a"
  localValue5 = 3.0
  localValue6 = 3.0
  localValue7 = 5000
  localValue8 = 51
  localValue9 = 0
  localValue10 = false
  localValue11 = false
  localValue12 = false
  -- Beginner: Play an animation on a ped.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue12)
  localValue1 = RemoveAnimDict
  localValue2 = "clothingtie"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.startCircularProgressBar
  localValue2 = ""
  localValue3 = 5000
  localValue4 = nil

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local workingValue2, workingValue5
  end
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = tCMG
  localValue1 = localValue1.setCanAnim
  localValue2 = true
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b44d4efa87".
cmgOperation2(text5, workingValue6)
cmgOperation2 = tCMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = GetEntitySpeed
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  return localValue1(localValue2)
end
cmgOperation2.getPlayerSpeed = text5
