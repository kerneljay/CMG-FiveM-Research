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
local workValue, workValue4, textValue6, flag19, flag20, flag21, cmgCall3, workValue7, workValue8, cmgCall4, cmgCall, textValue, flag, flag3, flag4, textValue2, workValue3, textValue3, textValue4, flag9, cmgCall2, textValue5, workValue6

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = ClearPrints
  arg3()
  arg3 = BeginTextCommandPrint
  arg4 = "STRING"
  arg3(arg4)
  arg3 = AddTextComponentSubstringPlayerName
  arg4 = arg1
  arg3(arg4)
  arg3 = EndTextCommandPrint
  arg4 = arg2
  arg5 = true
  arg3(arg4, arg5)
end
DrawMissionText2 = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = IsPedInAnyVehicle
  arg4 = arg2
  arg5 = false
  arg3 = arg3(arg4, arg5)
  if not arg3 then
    arg3 = IsPedSwimming
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = IsPedShooting
      arg4 = arg2
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = IsPedClimbing
        arg4 = arg2
        arg3 = arg3(arg4)
        if not arg3 then
          if not arg1 then
            arg3 = IsPedCuffed
            arg4 = arg2
            arg3 = arg3(arg4)
            if arg3 then
              goto flow_label_82
            end
          end
          arg3 = IsPedDiving
          arg4 = arg2
          arg3 = arg3(arg4)
          if not arg3 then
            arg3 = IsPedFalling
            arg4 = arg2
            arg3 = arg3(arg4)
            if not arg3 then
              arg3 = IsPedJumping
              arg4 = arg2
              arg3 = arg3(arg4)
              if not arg3 then
                arg3 = IsPedJumpingOutOfVehicle
                arg4 = arg2
                arg3 = arg3(arg4)
                if not arg3 then
                  arg3 = IsPedOnFoot
                  arg4 = arg2
                  arg3 = arg3(arg4)
                  if arg3 then
                    arg3 = IsPedRunning
                    arg4 = arg2
                    arg3 = arg3(arg4)
                    if not arg3 then
                      arg3 = IsPedUsingAnyScenario
                      arg4 = arg2
                      arg3 = arg3(arg4)
                      if not arg3 then
                        arg3 = IsPedInParachuteFreeFall
                        arg4 = arg2
                        arg3 = arg3(arg4)
                        if not arg3 then
                          arg3 = CMG
                          arg3 = arg3.isPlayerNearPrison
                          arg3 = arg3()
                          if not arg3 or arg1 then
                            arg3 = true
                            return arg3
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
    ::flow_label_82::
    arg3 = false
    return arg3
  end
end
workValue4 = RegisterCommand
textValue6 = "anim"
-- Beginner: this function is the command handler for "anim".

-- === HELPER FUNCTION (decompiler name: flag19; parameters: arg1, arg2) ===
function flag19(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7
  arg3 = CMG
  arg3 = arg3.getClientUserId
  -- Beginner: result below is userId.
  arg3 = arg3()
  if 1 ~= arg3 then
    return
  end
  arg3 = arg2[1]
  arg4 = arg2[2]
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = CMG
  arg6 = arg6.loadAnimDict
  arg7 = arg3
  -- Beginner: Load a GTA animation dictionary before using it.
  arg6(arg7)
  arg6 = TaskPlayAnim
  arg7 = arg5
  arg8 = arg3
  arg9 = arg4
  arg10 = 3.0
  arg11 = 1.0
  arg12 = -1
  flag2 = 1
  numberValue = 0
  flag5 = false
  flag6 = false
  flag7 = false
  -- Beginner: Play an animation on a ped.
  arg6(arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7)
end
flag20 = false
-- Beginner: Register a chat/console command. Event/command: "anim".
workValue4(textValue6, flag19, flag20)
workValue4 = RegisterCommand
textValue6 = "bag3"
-- Beginner: this function is the command handler for "bag3".

-- === HELPER FUNCTION (decompiler name: flag19; parameters: none) ===
function flag19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = DoesEntityExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.canAnim
    arg2 = arg2()
    if arg2 then
      arg2 = IsEntityDead
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = workValue
        arg2 = arg2()
        if arg2 then
          arg2 = GiveWeaponToPed
          arg3 = arg1
          arg4 = 2294779575
          arg5 = 1
          arg6 = false
          arg7 = true
          arg2(arg3, arg4, arg5, arg6, arg7)
        end
      end
    end
  end
end
flag20 = false
-- Beginner: Register a chat/console command. Event/command: "bag3".
workValue4(textValue6, flag19, flag20)
workValue4 = RegisterCommand
textValue6 = "bag2"
-- Beginner: this function is the command handler for "bag2".

-- === HELPER FUNCTION (decompiler name: flag19; parameters: none) ===
function flag19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = DoesEntityExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.canAnim
    arg2 = arg2()
    if arg2 then
      arg2 = IsEntityDead
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = workValue
        arg2 = arg2()
        if arg2 then
          arg2 = GiveWeaponToPed
          arg3 = arg1
          arg4 = 28811031
          arg5 = 1
          arg6 = false
          arg7 = true
          arg2(arg3, arg4, arg5, arg6, arg7)
        end
      end
    end
  end
end
flag20 = false
-- Beginner: Register a chat/console command. Event/command: "bag2".
workValue4(textValue6, flag19, flag20)
workValue4 = false
textValue6 = true
flag19 = false
flag20 = false
flag21 = false
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2
  arg1 = workValue4
  return arg1
end
cmgCall3.isSurrendering = workValue7

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2
  arg1 = GetPlayerPed
  arg2 = -1
  -- Beginner: result below is playerPed.
  arg1 = arg1(arg2)
  arg2 = DoesEntityExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = tCMG
    arg2 = arg2.canAnim
    arg2 = arg2()
    if not arg2 then
      arg2 = flag19
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.isPlayerNearPrison
        arg2 = arg2()
        if not arg2 then
          goto flow_label_223
        end
        arg2 = CMG
        arg2 = arg2.isHandcuffed
        arg2 = arg2()
        if arg2 then
          goto flow_label_223
        end
      end
    end
    arg2 = IsEntityDead
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = workValue
      arg3 = true
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = CMG
        arg2 = arg2.loadAnimDict
        arg3 = "random@arrests"
        -- Beginner: Load a GTA animation dictionary before using it.
        arg2(arg3)
        arg2 = CMG
        arg2 = arg2.loadAnimDict
        arg3 = "random@arrests@busted"
        arg2(arg3)
        arg2 = IsEntityPlayingAnim
        arg3 = arg1
        arg4 = "random@arrests@busted"
        arg5 = "idle_a"
        arg6 = 3
        arg2 = arg2(arg3, arg4, arg5, arg6)
        if arg2 then
          arg2 = true
          flag21 = arg2
          arg2 = false
          workValue4 = arg2
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests@busted"
          arg5 = "exit"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 2
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = Wait
          arg3 = 3000
          arg2(arg3)
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests"
          arg5 = "kneeling_arrest_get_up"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 128
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = Wait
          arg3 = 2000
          arg2(arg3)
          arg2 = false
          flag19 = arg2
          arg2 = false
          flag21 = arg2
          arg2 = flag20
          if arg2 then
            arg2 = tCMG
            arg2 = arg2.setCanAnim
            arg3 = true
            arg2(arg3)
            arg2 = false
            flag20 = arg2
          end
        else
          arg2 = flag20
          if not arg2 then
            arg2 = true
            flag20 = arg2
            arg2 = tCMG
            arg2 = arg2.setCanAnim
            arg3 = false
            arg2(arg3)
          end
          arg2 = true
          workValue4 = arg2
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests"
          arg5 = "idle_2_hands_up"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 2
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = Wait
          arg3 = 4000
          arg2(arg3)
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests"
          arg5 = "kneeling_arrest_idle"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 2
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = Wait
          arg3 = 500
          arg2(arg3)
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests@busted"
          arg5 = "enter"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 2
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = true
          flag19 = arg2
          arg2 = Wait
          arg3 = 1000
          arg2(arg3)
          arg2 = TaskPlayAnim
          arg3 = arg1
          arg4 = "random@arrests@busted"
          arg5 = "idle_a"
          arg6 = 8.0
          arg7 = 1.0
          arg8 = -1
          arg9 = 9
          arg10 = 0
          arg11 = false
          arg12 = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2)
          arg2 = Wait
          arg3 = 0
          arg2(arg3)
          while true do
            arg2 = IsEntityPlayingAnim
            arg3 = arg1
            arg4 = "random@arrests@busted"
            arg5 = "idle_a"
            arg6 = 3
            arg2 = arg2(arg3, arg4, arg5, arg6)
            if not arg2 then
              break
            end
            arg2 = CMG
            arg2 = arg2.isNewPlayer
            arg2 = arg2()
            if arg2 then
              arg2 = drawNativeNotification
              arg3 = "Run /k to exit from knees."
              -- Beginner: Show a GTA-style notification/help prompt.
              arg2(arg3)
            end
            arg2 = Citizen
            arg2 = arg2.Wait
            arg3 = 0
            arg2(arg3)
          end
          arg2 = false
          workValue4 = arg2
          arg2 = false
          flag19 = arg2
          arg2 = flag20
          if arg2 then
            arg2 = flag21
            if not arg2 then
              arg2 = tCMG
              arg2 = arg2.setCanAnim
              arg3 = true
              arg2(arg3)
              arg2 = false
              flag20 = arg2
            end
          end
        end
        arg2 = RemoveAnimDict
        arg3 = "random@arrests"
        arg2(arg3)
        arg2 = RemoveAnimDict
        arg3 = "random@arrests@busted"
        arg2(arg3)
      end
    end
  end
  ::flow_label_223::
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = flag19
  if not arg2 then
    arg2 = IsEntityPlayingAnim
    arg3 = arg1
    arg4 = "missminuteman_1ig_2"
    arg5 = "handsup_enter"
    arg6 = 3
    arg2 = arg2(arg3, arg4, arg5, arg6)
    if not arg2 then
      arg2 = IsEntityPlayingAnim
      arg3 = arg1
      arg4 = "random@arrests"
      arg5 = "idle_2_hands_up"
      arg6 = 3
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if not arg2 then
        arg2 = IsEntityPlayingAnim
        arg3 = arg1
        arg4 = "random@arrests@busted"
        arg5 = "idle_a"
        arg6 = 3
        arg2 = arg2(arg3, arg4, arg5, arg6)
        if not arg2 then
          goto flow_label_33
        end
      end
    end
  end
  arg2 = true
  return arg2
  ::flow_label_33::
  arg2 = false
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function workValue8(arg1, arg2, arg3, arg4, arg5, arg6)
  local arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7
  arg7 = arg6 / 100
  arg7 = arg3 * arg7
  arg8 = arg6 / 100
  arg8 = arg3 * arg8
  arg8 = arg8 / 2
  arg8 = arg1 - arg8
  arg9 = arg3 / 2
  arg8 = arg8 - arg9
  arg9 = DrawRect
  arg10 = arg8 + arg7
  arg11 = arg2
  arg12 = arg7
  flag2 = arg4
  numberValue = arg5[1]
  flag5 = arg5[2]
  flag6 = arg5[3]
  flag7 = arg5[4]
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7)
end
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 5000
    if not (arg2 <= arg3) then
      break
    end
    arg2 = workValue7
    arg2 = arg2()
    if not arg2 then
      break
    end
    arg2 = workValue8
    arg3 = 0.475
    arg4 = 0.8
    arg5 = 0.138
    arg6 = 0.012750000000000001
    arg7 = {}
    arg8 = 255
    arg9 = 47
    arg10 = 27
    arg11 = 255
    arg7[1] = arg8
    arg7[2] = arg9
    arg7[3] = arg10
    arg7[4] = arg11
    arg8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg8 = arg8()
    arg8 = arg8 - arg1
    arg8 = arg8 / 5000
    arg8 = arg8 * 100
    arg2(arg3, arg4, arg5, arg6, arg7, arg8)
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg2 = arg2 - arg1
  arg3 = 5000
  if arg2 > arg3 then
    arg2 = true
    return arg2
  end
  arg2 = false
  return arg2
end
cmgCall4.isPlayerSurrendered = cmgCall
cmgCall4 = tCMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, arg2
  arg1 = workValue7
  return arg1()
end
cmgCall4.isPlayerSurrenderedNoProgressBar = cmgCall
cmgCall4 = RegisterNetEvent
cmgCall = "617311deed"
-- Beginner: this function handles network event "617311deed".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "combat@aim_variations@arrest"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = TaskPlayAnim
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "combat@aim_variations@arrest"
  arg4 = "cop_med_arrest_01"
  arg5 = 8.0
  arg6 = -8
  arg7 = 5000
  arg8 = 2
  arg9 = 0
  arg10 = false
  arg11 = false
  arg12 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
  arg1 = RemoveAnimDict
  arg2 = "combat@aim_variations@arrest"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.startCircularProgressBar
  arg2 = ""
  arg3 = 5000
  arg4 = nil

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local workValue2, workValue5
  end
  arg1(arg2, arg3, arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "617311deed".
cmgCall4(cmgCall, textValue)
cmgCall4 = RegisterNetEvent
cmgCall = "750744bff8"
-- Beginner: this function handles network event "750744bff8".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = StopAnimTask
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "combat@aim_variations@arrest"
  arg4 = "cop_med_arrest_01"
  arg5 = 1.0
  arg1(arg2, arg3, arg4, arg5)
  arg1 = CMG
  arg1 = arg1.stopCircularProgressBar
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "750744bff8".
cmgCall4(cmgCall, textValue)

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4
  arg1 = flag19
  if arg1 then
    arg1 = DisableControlAction
    arg2 = 1
    arg3 = 140
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = DisableControlAction
    arg2 = 1
    arg3 = 141
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = DisableControlAction
    arg2 = 1
    arg3 = 142
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 21
    arg4 = true
    arg1(arg2, arg3, arg4)
  end
  arg1 = DisableControlAction
  arg2 = 2
  arg3 = 36
  arg4 = true
  arg1(arg2, arg3, arg4)
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
textValue = cmgCall4
flag = "Surrendering"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(textValue, flag)
cmgCall = RegisterCommand
textValue = "k"
-- Beginner: this function is the command handler for "k".

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2
  arg1 = textValue6
  if arg1 then
    arg1 = cmgCall3
    arg1()
  end
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "k".
cmgCall(textValue, flag, flag3)
cmgCall = RegisterCommand
textValue = "surrender"
-- Beginner: this function is the command handler for "surrender".

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2
  arg1 = textValue6
  if arg1 then
    arg1 = cmgCall3
    arg1()
  end
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "surrender".
cmgCall(textValue, flag, flag3)
cmgCall = false
textValue = "prop_parking_wand_01"
flag = false
flag3 = "hei_heist_sh_bong_01"
flag4 = false
textValue2 = "prop_amb_phone"
workValue3 = RegisterCommand
textValue3 = "picture"
-- Beginner: this function is the command handler for "picture".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetHashKey
  arg3 = textValue2
  -- Beginner: result below is hash.
  arg2 = arg2(arg3)
  arg3 = RequestModel
  arg4 = arg2
  arg3(arg4)
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = GetPlayerPed
  arg5 = PlayerId
  arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg5()
  -- Beginner: result below is playerPed.
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
  arg5 = 0.0
  arg6 = 0.0
  arg7 = -5.0
  arg3 = arg3(arg4, arg5, arg6, arg7)
  arg4 = CMG
  arg4 = arg4.requestEntitySpawn
  arg5 = "picture_object"
  arg4(arg5)
  arg4 = CreateObject
  arg5 = arg2
  arg6 = arg3.x
  arg7 = arg3.y
  arg8 = arg3.z
  arg9 = true
  arg10 = true
  arg11 = true
  -- Beginner: result below is objectEntity.
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11)
  arg5 = "amb@world_human_mobile_film_shocking@male@enter"
  arg6 = "amb@world_human_mobile_film_shocking@male@base"
  arg7 = "amb@world_human_mobile_film_shocking@male@exit"
  arg8 = "core"
  arg9 = "ent_anim_paparazzi_flash"
  arg10 = DoesEntityExist
  arg11 = arg1
  arg10 = arg10(arg11)
  if arg10 then
    arg10 = IsEntityDead
    arg11 = arg1
    arg10 = arg10(arg11)
    if not arg10 then
      arg10 = CMG
      arg10 = arg10.loadAnimDict
      arg11 = arg5
      -- Beginner: Load a GTA animation dictionary before using it.
      arg10(arg11)
      arg10 = CMG
      arg10 = arg10.loadAnimDict
      arg11 = arg6
      arg10(arg11)
      arg10 = CMG
      arg10 = arg10.loadAnimDict
      arg11 = arg7
      -- Beginner: Load a GTA animation dictionary before using it.
      arg10(arg11)
      arg10 = RequestNamedPtfxAsset
      arg11 = arg8
      arg10(arg11)
      arg10 = flag4
      if arg10 then
        arg10 = TaskPlayAnim
        arg11 = arg1
        arg12 = arg7
        flag2 = "exit"
        numberValue = 8.0
        flag5 = 1.0
        flag6 = -1
        flag7 = 50
        numberValue2 = 0
        flag8 = false
        flag10 = false
        flag11 = false
        -- Beginner: Play an animation on a ped.
        arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11)
        arg10 = Wait
        arg11 = 1840
        arg10(arg11)
        arg10 = DetachEntity
        arg11 = arg4
        arg12 = false
        flag2 = false
        arg10(arg11, arg12, flag2)
        arg10 = DeleteEntity
        arg11 = arg4
        -- Beginner: Delete a GTA entity.
        arg10(arg11)
        arg10 = Wait
        arg11 = 750
        arg10(arg11)
        arg10 = ClearPedSecondaryTask
        arg11 = CMG
        arg11 = arg11.getPlayerPed
        arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg11()
        arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        arg10 = false
        flag4 = arg10
      else
        arg10 = Wait
        arg11 = 500
        arg10(arg11)
        arg10 = SetNetworkIdExistsOnAllMachines
        arg11 = arg4
        arg12 = true
        arg10(arg11, arg12)
        arg10 = NetworkUseHighPrecisionBlending
        arg11 = arg4
        arg12 = true
        arg10(arg11, arg12)
        arg10 = SetNetworkIdCanMigrate
        arg11 = arg4
        arg12 = false
        arg10(arg11, arg12)
        arg10 = TaskPlayAnim
        arg11 = arg1
        arg12 = arg5
        flag2 = "enter"
        numberValue = 8.0
        flag5 = 1.0
        flag6 = -1
        flag7 = 50
        numberValue2 = 0
        flag8 = false
        flag10 = false
        flag11 = false
        -- Beginner: Play an animation on a ped.
        arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11)
        arg10 = Wait
        arg11 = 1260
        arg10(arg11)
        arg10 = AttachEntityToEntity
        arg11 = arg4
        arg12 = GetPlayerPed
        flag2 = PlayerId
        flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = flag2()
        -- Beginner: result below is playerPed.
        arg12 = arg12(flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        flag2 = GetPedBoneIndex
        numberValue = GetPlayerPed
        flag5 = PlayerId
        flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = flag5()
        -- Beginner: result below is playerPed.
        numberValue = numberValue(flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        flag5 = 28422
        flag2 = flag2(numberValue, flag5)
        numberValue = -0.005
        flag5 = 0.0
        flag6 = 0.0
        flag7 = 360.0
        numberValue2 = 360.0
        flag8 = 0.0
        flag10 = true
        flag11 = true
        flag12 = false
        flag13 = true
        numberValue3 = 0
        flag14 = true
        -- Beginner: Attach one entity to another entity.
        arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        arg10 = tCMG
        arg10 = arg10.notify
        arg11 = "Press ~r~[E]~w~ to take a picture!"
        -- Beginner: Show a notification to the player.
        arg10(arg11)
        arg10 = true
        flag4 = arg10
      end
    end
  end
  arg10 = SetModelAsNoLongerNeeded
  arg11 = arg2
  arg10(arg11)
  while true do
    arg10 = flag4
    if not arg10 then
      break
    end
    arg10 = Wait
    arg11 = 0
    arg10(arg11)
    arg10 = IsControlJustPressed
    arg11 = 0
    arg12 = 38
    arg10 = arg10(arg11, arg12)
    if arg10 then
      arg10 = tCMG
      arg10 = arg10.notify
      arg11 = "Click Click"
      -- Beginner: Show a notification to the player.
      arg10(arg11)
      arg10 = Wait
      arg11 = 500
      arg10(arg11)
      arg10 = UseParticleFxAsset
      arg11 = arg8
      arg10(arg11)
      arg10 = StartParticleFxNonLoopedOnEntity
      arg11 = arg9
      arg12 = arg4
      flag2 = 0.0
      numberValue = 0.1
      flag5 = 0.0
      flag6 = 0.0
      flag7 = 0.0
      numberValue2 = 0.0
      flag8 = 2.0
      flag10 = false
      flag11 = false
      flag12 = false
      arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12)
    end
  end
  arg10 = RemoveNamedPtfxAsset
  arg11 = arg8
  arg10(arg11)
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "picture".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "bong"
-- Beginner: this function is the command handler for "bong".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14
  arg1 = "anim@safehouse@bong"
  arg2 = "bong_stage1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = GetHashKey
  arg5 = flag3
  -- Beginner: result below is hash.
  arg4 = arg4(arg5)
  arg5 = RequestModel
  arg6 = arg4
  arg5(arg6)
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = GetPlayerPed
  arg7 = PlayerId
  arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg7()
  -- Beginner: result below is playerPed.
  arg6 = arg6(arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
  arg7 = 0.0
  arg8 = 0.0
  arg9 = -5.0
  arg5 = arg5(arg6, arg7, arg8, arg9)
  arg6 = CMG
  arg6 = arg6.requestEntitySpawn
  arg7 = "bong_object"
  arg6(arg7)
  arg6 = CreateObject
  arg7 = arg4
  arg8 = arg5.x
  arg9 = arg5.y
  arg10 = arg5.z
  arg11 = true
  arg12 = true
  flag2 = true
  -- Beginner: result below is objectEntity.
  arg6 = arg6(arg7, arg8, arg9, arg10, arg11, arg12, flag2)
  arg7 = SetModelAsNoLongerNeeded
  arg8 = arg4
  arg7(arg8)
  arg7 = DoesEntityExist
  arg8 = arg3
  arg7 = arg7(arg8)
  if arg7 then
    arg7 = IsEntityDead
    arg8 = arg3
    arg7 = arg7(arg8)
    if not arg7 then
      arg7 = CMG
      arg7 = arg7.loadAnimDict
      arg8 = arg1
      -- Beginner: Load a GTA animation dictionary before using it.
      arg7(arg8)
      arg7 = flag
      if arg7 then
        arg7 = Wait
        arg8 = 100
        arg7(arg8)
        arg7 = ClearPedSecondaryTask
        arg8 = CMG
        arg8 = arg8.getPlayerPed
        arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg8()
        arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        arg7 = DetachEntity
        arg8 = arg6
        arg9 = false
        arg10 = false
        arg7(arg8, arg9, arg10)
        arg7 = DeleteEntity
        arg8 = arg6
        -- Beginner: Delete a GTA entity.
        arg7(arg8)
        arg7 = false
        flag = arg7
      else
        arg7 = Wait
        arg8 = 500
        arg7(arg8)
        arg7 = SetNetworkIdExistsOnAllMachines
        arg8 = arg6
        arg9 = true
        arg7(arg8, arg9)
        arg7 = NetworkUseHighPrecisionBlending
        arg8 = arg6
        arg9 = true
        arg7(arg8, arg9)
        arg7 = SetNetworkIdCanMigrate
        arg8 = arg6
        arg9 = false
        arg7(arg8, arg9)
        arg7 = AttachEntityToEntity
        arg8 = arg6
        arg9 = GetPlayerPed
        arg10 = PlayerId
        arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg10()
        -- Beginner: result below is playerPed.
        arg9 = arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        arg10 = GetPedBoneIndex
        arg11 = GetPlayerPed
        arg12 = PlayerId
        arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14 = arg12()
        -- Beginner: result below is playerPed.
        arg11 = arg11(arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
        arg12 = 18905
        arg10 = arg10(arg11, arg12)
        arg11 = 0.1
        arg12 = -0.25
        flag2 = 0.0
        numberValue = 95.0
        flag5 = 190.0
        flag6 = 180.0
        flag7 = true
        numberValue2 = true
        flag8 = false
        flag10 = true
        flag11 = 0
        flag12 = true
        -- Beginner: Attach one entity to another entity.
        arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12)
        arg7 = Wait
        arg8 = 120
        arg7(arg8)
        arg7 = tCMG
        arg7 = arg7.notify
        arg8 = "Press ~r~[E]~w~ to take a toke!"
        -- Beginner: Show a notification to the player.
        arg7(arg8)
        arg7 = true
        flag = arg7
      end
    end
  end
  while true do
    arg7 = flag
    if not arg7 then
      break
    end
    arg7 = Wait
    arg8 = 0
    arg7(arg8)
    arg7 = GetEntityCoords
    arg8 = arg3
    arg9 = true
    -- Beginner: result below is entityCoords.
    arg7 = arg7(arg8, arg9)
    arg8 = GetEntityHeading
    arg9 = arg3
    -- Beginner: result below is heading.
    arg8 = arg8(arg9)
    arg9 = IsControlJustPressed
    arg10 = 0
    arg11 = 38
    arg9 = arg9(arg10, arg11)
    if arg9 then
      arg9 = TaskPlayAnimAdvanced
      arg10 = arg3
      arg11 = arg1
      arg12 = arg2
      flag2 = arg7.x
      numberValue = arg7.y
      flag5 = arg7.z
      flag6 = 0.0
      flag7 = 0.0
      numberValue2 = arg8
      flag8 = 8.0
      flag10 = 1.0
      flag11 = 4000
      flag12 = 49
      flag13 = 0.25
      numberValue3 = 0
      flag14 = 0
      arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14)
      arg9 = Wait
      arg10 = 100
      arg9(arg10)
      arg9 = tCMG
      arg9 = arg9.notify
      arg10 = "You take a huge rip!"
      -- Beginner: Show a notification to the player.
      arg9(arg10)
      arg9 = Wait
      arg10 = 7250
      arg9(arg10)
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "bong".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "ma"
-- Beginner: this function is the command handler for "ma".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13
  arg1 = "amb@world_human_car_park_attendant@male@base"
  arg2 = "base"
  arg3 = "amb@world_human_drinking@beer@male@exit"
  arg4 = GetHashKey
  arg5 = textValue
  -- Beginner: result below is hash.
  arg4 = arg4(arg5)
  arg5 = RequestModel
  arg6 = arg4
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetOffsetFromEntityInWorldCoords
  arg7 = GetPlayerPed
  arg8 = PlayerId
  arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg8()
  -- Beginner: result below is playerPed.
  arg7 = arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg8 = 0.0
  arg9 = 0.0
  arg10 = -5.0
  arg6 = arg6(arg7, arg8, arg9, arg10)
  arg7 = CMG
  arg7 = arg7.requestEntitySpawn
  arg8 = "ma_wand_object"
  arg7(arg8)
  arg7 = CreateObject
  arg8 = arg4
  arg9 = arg6.x
  arg10 = arg6.y
  arg11 = arg6.z
  arg12 = true
  flag2 = true
  numberValue = true
  -- Beginner: result below is objectEntity.
  arg7 = arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue)
  arg8 = DoesEntityExist
  arg9 = arg5
  arg8 = arg8(arg9)
  if arg8 then
    arg8 = IsEntityDead
    arg9 = arg5
    arg8 = arg8(arg9)
    if not arg8 then
      arg8 = CMG
      arg8 = arg8.loadAnimDict
      arg9 = arg1
      -- Beginner: Load a GTA animation dictionary before using it.
      arg8(arg9)
      arg8 = CMG
      arg8 = arg8.loadAnimDict
      arg9 = arg3
      arg8(arg9)
      arg8 = cmgCall
      if arg8 then
        arg8 = Wait
        arg9 = 100
        arg8(arg9)
        arg8 = ClearPedSecondaryTask
        arg9 = CMG
        arg9 = arg9.getPlayerPed
        arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg9()
        arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
        arg8 = DetachEntity
        arg9 = arg7
        arg10 = false
        arg11 = false
        arg8(arg9, arg10, arg11)
        arg8 = DeleteEntity
        arg9 = arg7
        -- Beginner: Delete a GTA entity.
        arg8(arg9)
        arg8 = false
        cmgCall = arg8
      else
        arg8 = Wait
        arg9 = 500
        arg8(arg9)
        arg8 = AttachEntityToEntity
        arg9 = arg7
        arg10 = GetPlayerPed
        arg11 = PlayerId
        arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg11()
        -- Beginner: result below is playerPed.
        arg10 = arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
        arg11 = GetPedBoneIndex
        arg12 = GetPlayerPed
        flag2 = PlayerId
        flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = flag2()
        -- Beginner: result below is playerPed.
        arg12 = arg12(flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
        flag2 = 28422
        arg11 = arg11(arg12, flag2)
        arg12 = -0.005
        flag2 = 0.0
        numberValue = 0.0
        flag5 = 360.0
        flag6 = 360.0
        flag7 = 0.0
        numberValue2 = true
        flag8 = true
        flag10 = false
        flag11 = true
        flag12 = 0
        flag13 = true
        -- Beginner: Attach one entity to another entity.
        arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
        arg8 = Wait
        arg9 = 120
        arg8(arg9)
        arg8 = tCMG
        arg8 = arg8.notify
        arg9 = "Press ~r~[E]~w~ to wave the wand."
        -- Beginner: Show a notification to the player.
        arg8(arg9)
        arg8 = true
        cmgCall = arg8
      end
    end
  end
  arg8 = SetModelAsNoLongerNeeded
  arg9 = arg4
  arg8(arg9)
  while true do
    arg8 = cmgCall
    if not arg8 then
      break
    end
    arg8 = Wait
    arg9 = 0
    arg8(arg9)
    arg8 = {}
    arg9 = "Nothing to see here, lets move along."
    arg10 = "Keep it moving!"
    arg11 = "Ugh, why did I pick traffic control.."
    arg12 = "Lets go already!"
    flag2 = "Will yinz hurry up!!"
    arg8[1] = arg9
    arg8[2] = arg10
    arg8[3] = arg11
    arg8[4] = arg12
    arg8[5] = flag2
    arg9 = math
    arg9 = arg9.random
    arg10 = 1
    arg11 = 5
    arg9 = arg9(arg10, arg11)
    arg10 = IsControlJustPressed
    arg11 = 0
    arg12 = 38
    arg10 = arg10(arg11, arg12)
    if arg10 then
      arg10 = TaskPlayAnim
      arg11 = arg5
      arg12 = arg1
      flag2 = arg2
      numberValue = 8.0
      flag5 = 1.0
      flag6 = 5000
      flag7 = 49
      numberValue2 = 0
      flag8 = false
      flag10 = false
      flag11 = false
      -- Beginner: Play an animation on a ped.
      arg10(arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11)
      arg10 = Wait
      arg11 = 100
      arg10(arg11)
      arg10 = tCMG
      arg10 = arg10.notify
      arg11 = arg8[arg9]
      -- Beginner: Show a notification to the player.
      arg10(arg11)
    end
    arg10 = IsEntityPlayingAnim
    arg11 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg11 = arg11()
    arg12 = "missminuteman_1ig_2"
    flag2 = "handsup_enter"
    numberValue = 3
    arg10 = arg10(arg11, arg12, flag2, numberValue)
    if arg10 then
      arg10 = DeleteEntity
      arg11 = arg7
      -- Beginner: Delete a GTA entity.
      arg10(arg11)
      break
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "ma".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance1"
-- Beginner: this function is the command handler for "dance1".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  arg2 = "li_dance_facedj_11_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance1".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance2"
-- Beginner: this function is the command handler for "dance2".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  arg2 = "hi_dance_facedj_09_v2_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance2".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance3"
-- Beginner: this function is the command handler for "dance3".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@black_madonna_entourage@"
  arg2 = "li_dance_facedj_15_v2_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance3".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance4"
-- Beginner: this function is the command handler for "dance4".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "mi_dance_prop_15_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance4".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance5"
-- Beginner: this function is the command handler for "dance5".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@djs@dixon@"
  arg2 = "dixn_dance_a_dixon"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance5".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance6"
-- Beginner: this function is the command handler for "dance6".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@djs@solomun@"
  arg2 = "sol_trans_out_to_rt_a_sol"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance6".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance7"
-- Beginner: this function is the command handler for "dance7".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance7".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance8"
-- Beginner: this function is the command handler for "dance8".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance8".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance9"
-- Beginner: this function is the command handler for "dance9".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance9".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance10"
-- Beginner: this function is the command handler for "dance10".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance10".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance11"
-- Beginner: this function is the command handler for "dance11".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance11".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance12"
-- Beginner: this function is the command handler for "dance12".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance12".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance13"
-- Beginner: this function is the command handler for "dance13".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance13".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance14"
-- Beginner: this function is the command handler for "dance14".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance14".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance15"
-- Beginner: this function is the command handler for "dance15".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance15".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance16"
-- Beginner: this function is the command handler for "dance16".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance16".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance17"
-- Beginner: this function is the command handler for "dance17".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance17".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance18"
-- Beginner: this function is the command handler for "dance18".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v1_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance18".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance19"
-- Beginner: this function is the command handler for "dance19".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance19".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance20"
-- Beginner: this function is the command handler for "dance20".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance20".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance21"
-- Beginner: this function is the command handler for "dance21".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance21".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance22"
-- Beginner: this function is the command handler for "dance22".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance22".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance23"
-- Beginner: this function is the command handler for "dance23".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance23".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance24"
-- Beginner: this function is the command handler for "dance24".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance24".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance25"
-- Beginner: this function is the command handler for "dance25".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance25".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance26"
-- Beginner: this function is the command handler for "dance26".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance26".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance27"
-- Beginner: this function is the command handler for "dance27".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance27".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance28"
-- Beginner: this function is the command handler for "dance28".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance28".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance29"
-- Beginner: this function is the command handler for "dance29".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance29".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance30"
-- Beginner: this function is the command handler for "dance30".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_09_v2_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance30".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance31"
-- Beginner: this function is the command handler for "dance31".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance31".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance32"
-- Beginner: this function is the command handler for "dance32".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance32".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance33"
-- Beginner: this function is the command handler for "dance33".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance33".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance34"
-- Beginner: this function is the command handler for "dance34".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance34".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance35"
-- Beginner: this function is the command handler for "dance35".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance35".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance36"
-- Beginner: this function is the command handler for "dance36".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance36".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance37"
-- Beginner: this function is the command handler for "dance37".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance37".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance38"
-- Beginner: this function is the command handler for "dance38".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance38".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance39"
-- Beginner: this function is the command handler for "dance39".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance39".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance40"
-- Beginner: this function is the command handler for "dance40".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance40".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance41"
-- Beginner: this function is the command handler for "dance41".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance41".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance42"
-- Beginner: this function is the command handler for "dance42".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v1_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance42".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance43"
-- Beginner: this function is the command handler for "dance43".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance43".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance44"
-- Beginner: this function is the command handler for "dance44".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance44".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance45"
-- Beginner: this function is the command handler for "dance45".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance45".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance46"
-- Beginner: this function is the command handler for "dance46".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance46".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance47"
-- Beginner: this function is the command handler for "dance47".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance47".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance48"
-- Beginner: this function is the command handler for "dance48".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance48".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance49"
-- Beginner: this function is the command handler for "dance49".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance49".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance50"
-- Beginner: this function is the command handler for "dance50".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance50".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance51"
-- Beginner: this function is the command handler for "dance51".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance51".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance52"
-- Beginner: this function is the command handler for "dance52".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance52".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance53"
-- Beginner: this function is the command handler for "dance53".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance53".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance54"
-- Beginner: this function is the command handler for "dance54".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "hi_dance_facedj_11_v2_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance54".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance55"
-- Beginner: this function is the command handler for "dance55".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance55".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance56"
-- Beginner: this function is the command handler for "dance56".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance56".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance57"
-- Beginner: this function is the command handler for "dance57".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance57".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance58"
-- Beginner: this function is the command handler for "dance58".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance58".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance59"
-- Beginner: this function is the command handler for "dance59".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance59".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance60"
-- Beginner: this function is the command handler for "dance60".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance60".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance61"
-- Beginner: this function is the command handler for "dance61".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance61".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance62"
-- Beginner: this function is the command handler for "dance62".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance62".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance63"
-- Beginner: this function is the command handler for "dance63".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance63".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance64"
-- Beginner: this function is the command handler for "dance64".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance64".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance65"
-- Beginner: this function is the command handler for "dance65".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance65".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance66"
-- Beginner: this function is the command handler for "dance66".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v1_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance66".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance67"
-- Beginner: this function is the command handler for "dance67".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance67".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance68"
-- Beginner: this function is the command handler for "dance68".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance68".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance69"
-- Beginner: this function is the command handler for "dance69".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance69".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance70"
-- Beginner: this function is the command handler for "dance70".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance70".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance71"
-- Beginner: this function is the command handler for "dance71".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance71".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance72"
-- Beginner: this function is the command handler for "dance72".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@"
  arg2 = "mi_dance_facedj_09_v2_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance72".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance73"
-- Beginner: this function is the command handler for "dance73".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance73".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance74"
-- Beginner: this function is the command handler for "dance74".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance74".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance75"
-- Beginner: this function is the command handler for "dance75".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance75".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance74"
-- Beginner: this function is the command handler for "dance74".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance74".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance75"
-- Beginner: this function is the command handler for "dance75".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance75".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance76"
-- Beginner: this function is the command handler for "dance76".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity"
  arg2 = "hi_dance_facedj_09_v1_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance76".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance77"
-- Beginner: this function is the command handler for "dance77".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance77".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance78"
-- Beginner: this function is the command handler for "dance78".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance78".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance79"
-- Beginner: this function is the command handler for "dance79".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance79".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance80"
-- Beginner: this function is the command handler for "dance80".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance80".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance81"
-- Beginner: this function is the command handler for "dance81".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance81".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance82"
-- Beginner: this function is the command handler for "dance82".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_low_intensity"
  arg2 = "trans_dance_crowd_li_to_hi_09_v1_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance82".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance83"
-- Beginner: this function is the command handler for "dance83".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance83".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance84"
-- Beginner: this function is the command handler for "dance84".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance84".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance85"
-- Beginner: this function is the command handler for "dance85".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance85".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance86"
-- Beginner: this function is the command handler for "dance86".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance86".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance87"
-- Beginner: this function is the command handler for "dance87".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance87".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance88"
-- Beginner: this function is the command handler for "dance88".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_groups_transitions@from_med_intensity"
  arg2 = "trans_dance_crowd_mi_to_hi_09_v1_male^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance88".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance89"
-- Beginner: this function is the command handler for "dance89".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance89".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance90"
-- Beginner: this function is the command handler for "dance90".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance90".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance91"
-- Beginner: this function is the command handler for "dance91".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance91".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance92"
-- Beginner: this function is the command handler for "dance92".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance92".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance93"
-- Beginner: this function is the command handler for "dance93".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance93".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance94"
-- Beginner: this function is the command handler for "dance94".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_female^6"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance94".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance95"
-- Beginner: this function is the command handler for "dance95".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_male^1"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance95".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance96"
-- Beginner: this function is the command handler for "dance96".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_male^2"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance96".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance97"
-- Beginner: this function is the command handler for "dance97".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_male^3"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance97".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance98"
-- Beginner: this function is the command handler for "dance98".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_male^4"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance98".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance99"
-- Beginner: this function is the command handler for "dance99".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "anim@amb@nightclub@dancers@crowddance_single_props@"
  arg2 = "hi_dance_prop_09_v1_male^5"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance99".
workValue3(textValue3, textValue4, flag9)
workValue3 = RegisterCommand
textValue3 = "dance100"
-- Beginner: this function is the command handler for "dance100".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = ""
  arg2 = ""
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
end
flag9 = false
-- Beginner: Register a chat/console command. Event/command: "dance100".
workValue3(textValue3, textValue4, flag9)
workValue3 = false
textValue3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = workValue3
  return arg1
end
textValue3.isBeingNhsDragged = textValue4
textValue3 = RegisterNetEvent
textValue4 = "d8597e7d17"
-- Beginner: this function handles network event "d8597e7d17".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
function flag9()
  local arg1, arg2, arg3, arg4
  arg1 = false
  workValue3 = arg1
  arg1 = ClearPedSecondaryTask
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  arg2, arg3, arg4 = arg2()
  arg1(arg2, arg3, arg4)
  arg1 = DetachEntity
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d8597e7d17".
textValue3(textValue4, flag9)
textValue3 = RegisterNetEvent
textValue4 = "bad02f5164"
-- Beginner: this function handles network event "bad02f5164".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) ===
function flag9(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
  local flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14, flag15, flag16, flag17, numberValue4, flag18
  flag2 = "combat@drag_ped@" == arg2
  workValue3 = flag2
  flag2 = CMG
  flag2 = flag2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag2 = flag2()
  numberValue = GetPlayerPed
  flag5 = GetPlayerFromServerId
  flag6 = arg1
  flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14, flag15, flag16, flag17, numberValue4, flag18 = flag5(flag6)
  -- Beginner: result below is playerPed.
  numberValue = numberValue(flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14, flag15, flag16, flag17, numberValue4, flag18)
  flag5 = RequestAnimDict
  flag6 = arg2
  flag5(flag6)
  while true do
    flag5 = HasAnimDictLoaded
    flag6 = arg2
    flag5 = flag5(flag6)
    if flag5 then
      break
    end
    flag5 = Citizen
    flag5 = flag5.Wait
    flag6 = 10
    flag5(flag6)
  end
  if nil == arg8 then
    arg8 = 180.0
  end
  flag5 = AttachEntityToEntity
  flag6 = CMG
  flag6 = flag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag6 = flag6()
  flag7 = numberValue
  numberValue2 = arg12 or numberValue2
  if not arg12 then
    numberValue2 = 0
  end
  flag8 = arg5
  flag10 = arg4
  flag11 = arg6
  flag12 = 0.5
  flag13 = 0.5
  numberValue3 = arg8
  flag14 = false
  flag15 = false
  flag16 = false
  flag17 = false
  numberValue4 = 2
  flag18 = false
  -- Beginner: Attach one entity to another entity.
  flag5(flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14, flag15, flag16, flag17, numberValue4, flag18)
  flag5 = Wait
  flag6 = 500
  flag5(flag6)
  if nil == arg11 then
    arg11 = 0
  end
  if 0 == arg11 then
    flag5 = DetachEntity
    flag6 = CMG
    flag6 = flag6.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag6 = flag6()
    flag7 = true
    numberValue2 = false
    flag5(flag6, flag7, numberValue2)
  end
  if nil == arg9 then
    arg9 = 0
  end
  flag5 = TaskPlayAnim
  flag6 = flag2
  flag7 = arg2
  numberValue2 = arg3
  flag8 = 8.0
  flag10 = -8.0
  flag11 = arg7
  flag12 = arg9
  flag13 = 0
  numberValue3 = false
  flag14 = false
  flag15 = false
  -- Beginner: Play an animation on a ped.
  flag5(flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3, flag14, flag15)
  flag5 = RemoveAnimDict
  flag6 = arg2
  flag5(flag6)
  flag5 = Citizen
  flag5 = flag5.Wait
  flag6 = arg7
  flag5(flag6)
  if "combat@drag_ped@" == arg2 then
    flag5 = false
    workValue3 = flag5
  end
  flag5 = DetachEntity
  flag6 = CMG
  flag6 = flag6.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag6 = flag6()
  flag7 = true
  numberValue2 = false
  flag5(flag6, flag7, numberValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bad02f5164".
textValue3(textValue4, flag9)
textValue3 = RegisterNetEvent
textValue4 = "72c704cb58"
-- Beginner: this function handles network event "72c704cb58".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: arg1, arg2, arg3, arg4) ===
function flag9(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7
  arg5 = CMG
  arg5 = arg5.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = RequestAnimDict
  arg7 = arg1
  arg6(arg7)
  while true do
    arg6 = HasAnimDictLoaded
    arg7 = arg1
    arg6 = arg6(arg7)
    if arg6 then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 10
    arg6(arg7)
  end
  arg6 = Wait
  arg7 = 500
  arg6(arg7)
  if nil == arg4 then
    arg4 = 0
  end
  arg6 = TaskPlayAnim
  arg7 = arg5
  arg8 = arg1
  arg9 = arg2
  arg10 = 8.0
  arg11 = -8.0
  arg12 = arg3
  flag2 = arg4
  numberValue = 0
  flag5 = false
  flag6 = false
  flag7 = false
  -- Beginner: Play an animation on a ped.
  arg6(arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7)
  arg6 = RemoveAnimDict
  arg7 = arg1
  arg6(arg7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "72c704cb58".
textValue3(textValue4, flag9)
textValue3 = RegisterCommand
textValue4 = "rope"
-- Beginner: this function is the command handler for "rope".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
function flag9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5
  arg1 = "random@burial"
  arg2 = "untie_ped"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = DoesEntityExist
  arg5 = arg3
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = tCMG
    arg4 = arg4.canAnim
    arg4 = arg4()
    if arg4 then
      arg4 = IsEntityDead
      arg5 = arg3
      arg4 = arg4(arg5)
      if not arg4 then
        arg4 = workValue
        arg4 = arg4()
        if arg4 then
          arg4 = CMG
          arg4 = arg4.loadAnimDict
          arg5 = arg1
          -- Beginner: Load a GTA animation dictionary before using it.
          arg4(arg5)
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = arg1
          arg7 = arg2
          arg8 = 3
          arg4 = arg4(arg5, arg6, arg7, arg8)
          if arg4 then
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = "exit"
            arg8 = 3.0
            arg9 = 1.0
            arg10 = -1
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = ClearPedSecondaryTask
            arg5 = arg3
            arg4(arg5)
          else
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
            arg4 = Wait
            arg5 = 2000
            arg4(arg5)
            arg4 = TaskPlayAnim
            arg5 = arg3
            arg6 = arg1
            arg7 = arg2
            arg8 = 3.0
            arg9 = 1.0
            arg10 = 2000
            arg11 = 1
            arg12 = 0
            flag2 = false
            numberValue = false
            flag5 = false
            -- Beginner: Play an animation on a ped.
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
          end
          arg4 = RemoveAnimDict
          arg5 = arg1
          arg4(arg5)
        end
      end
    end
  end
  arg4 = Wait
  arg5 = 5000
  arg4(arg5)
end
cmgCall2 = false
-- Beginner: Register a chat/console command. Event/command: "rope".
textValue3(textValue4, flag9, cmgCall2)
textValue3 = RegisterNetEvent
textValue4 = "a72f22e19a"
-- Beginner: this function handles network event "a72f22e19a".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
function flag9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13
  arg1 = "mp_safehousebeer@"
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "p_whiskey_bottle_s"
  arg4 = CMG
  arg4 = arg4.loadAnimDict
  arg5 = arg1
  -- Beginner: Load a GTA animation dictionary before using it.
  arg4(arg5)
  arg4 = table
  arg4 = arg4.unpack
  arg5 = GetEntityCoords
  arg6 = arg2
  arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg5(arg6)
  arg4, arg5, arg6 = arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg7 = TaskPlayAnim
  arg8 = arg2
  arg9 = arg1
  arg10 = "drink_2"
  arg11 = 800.0
  arg12 = 8.0
  flag2 = -1
  numberValue = 49
  flag5 = 0
  flag6 = false
  flag7 = false
  numberValue2 = false
  -- Beginner: Play an animation on a ped.
  arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2)
  arg7 = Wait
  arg8 = 1000
  arg7(arg8)
  arg7 = CMG
  arg7 = arg7.requestEntitySpawn
  arg8 = "drink_gin_object"
  arg7(arg8)
  arg7 = CreateObject
  arg8 = GetHashKey
  arg9 = arg3
  -- Beginner: result below is hash.
  arg8 = arg8(arg9)
  arg9 = arg4
  arg10 = arg5
  arg11 = arg6 + 0.2
  arg12 = true
  flag2 = true
  numberValue = true
  -- Beginner: result below is objectEntity.
  arg7 = arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue)
  arg8 = AttachEntityToEntity
  arg9 = arg7
  arg10 = arg2
  arg11 = GetPedBoneIndex
  arg12 = arg2
  flag2 = 28422
  arg11 = arg11(arg12, flag2)
  arg12 = 0.0
  flag2 = 0.0
  numberValue = 0.0
  flag5 = 0.0
  flag6 = 0.0
  flag7 = 180.0
  numberValue2 = true
  flag8 = true
  flag10 = false
  flag11 = true
  flag12 = 1
  flag13 = true
  -- Beginner: Attach one entity to another entity.
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg8 = Wait
  arg9 = 5000
  arg8(arg9)
  arg8 = TaskPlayAnim
  arg9 = arg2
  arg10 = arg1
  arg11 = "exit"
  arg12 = 8.0
  flag2 = 1.0
  numberValue = -1
  flag5 = 49
  flag6 = 0
  flag7 = false
  numberValue2 = false
  flag8 = false
  -- Beginner: Play an animation on a ped.
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8)
  arg8 = Wait
  arg9 = 100
  arg8(arg9)
  arg8 = RequestAnimSet
  arg9 = "move_m@drunk@verydrunk"
  arg8(arg9)
  while true do
    arg8 = HasAnimSetLoaded
    arg9 = "move_m@drunk@verydrunk"
    arg8 = arg8(arg9)
    if arg8 then
      break
    end
    arg8 = Citizen
    arg8 = arg8.Wait
    arg9 = 0
    arg8(arg9)
  end
  arg8 = DoScreenFadeOut
  arg9 = 1000
  arg8(arg9)
  arg8 = Citizen
  arg8 = arg8.Wait
  arg9 = 1000
  arg8(arg9)
  arg8 = ClearPedTasksImmediately
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg9()
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg8 = SetTimecycleModifier
  arg9 = "spectator5"
  arg8(arg9)
  arg8 = SetPedMotionBlur
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = true
  arg8(arg9, arg10)
  arg8 = SetPedMovementClipset
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = "move_m@drunk@verydrunk"
  arg11 = 1.0
  arg8(arg9, arg10, arg11)
  arg8 = RemoveAnimSet
  arg9 = "move_m@drunk@verydrunk"
  arg8(arg9)
  arg8 = SetPedIsDrunk
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = true
  arg8(arg9, arg10)
  arg8 = DoScreenFadeIn
  arg9 = 1000
  arg8(arg9)
  arg8 = ClearPedSecondaryTask
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13 = arg9()
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg8 = DeleteObject
  arg9 = arg7
  arg8(arg9)
  arg8 = Wait
  arg9 = 60000
  arg8(arg9)
  arg8 = DoScreenFadeOut
  arg9 = 1000
  arg8(arg9)
  arg8 = Citizen
  arg8 = arg8.Wait
  arg9 = 1000
  arg8(arg9)
  arg8 = DoScreenFadeIn
  arg9 = 1000
  arg8(arg9)
  arg8 = ClearTimecycleModifier
  arg8()
  arg8 = ResetScenarioTypesEnabled
  arg8()
  arg8 = ResetPedMovementClipset
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = 0
  arg8(arg9, arg10)
  arg8 = SetPedIsDrunk
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = false
  arg8(arg9, arg10)
  arg8 = SetPedMotionBlur
  arg9 = CMG
  arg9 = arg9.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg9 = arg9()
  arg10 = false
  arg8(arg9, arg10)
  arg8 = RemoveAnimDict
  arg9 = arg1
  arg8(arg9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a72f22e19a".
textValue3(textValue4, flag9)
textValue3 = RegisterNetEvent
textValue4 = "6c304cd42b"
-- Beginner: this function handles network event "6c304cd42b".

-- === HELPER FUNCTION (decompiler name: flag9; parameters: arg1) ===
function flag9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3
  arg2 = "mp_safehousebeer@"
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1
  arg5 = CMG
  arg5 = arg5.loadAnimDict
  arg6 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg5(arg6)
  arg5 = table
  arg5 = arg5.unpack
  arg6 = GetEntityCoords
  arg7 = arg3
  arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3 = arg6(arg7)
  arg5, arg6, arg7 = arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3)
  arg8 = TaskPlayAnim
  arg9 = arg3
  arg10 = arg2
  arg11 = "drink_2"
  arg12 = 800.0
  flag2 = 8.0
  numberValue = -1
  flag5 = 49
  flag6 = 0
  flag7 = false
  numberValue2 = false
  flag8 = false
  -- Beginner: Play an animation on a ped.
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8)
  arg8 = Wait
  arg9 = 1000
  arg8(arg9)
  arg8 = CMG
  arg8 = arg8.requestEntitySpawn
  arg9 = "drink_can_object"
  arg10 = GetHashKey
  arg11 = arg1
  arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3 = arg10(arg11)
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3)
  arg8 = CreateObject
  arg9 = GetHashKey
  arg10 = arg4
  -- Beginner: result below is hash.
  arg9 = arg9(arg10)
  arg10 = arg5
  arg11 = arg6
  arg12 = arg7 + 0.2
  flag2 = true
  numberValue = true
  flag5 = true
  -- Beginner: result below is objectEntity.
  arg8 = arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
  arg9 = AttachEntityToEntity
  arg10 = arg8
  arg11 = arg3
  arg12 = GetPedBoneIndex
  flag2 = arg3
  numberValue = 28422
  arg12 = arg12(flag2, numberValue)
  flag2 = 0.0
  numberValue = 0.0
  flag5 = 0.0
  flag6 = 0.0
  flag7 = 0.0
  numberValue2 = 180.0
  flag8 = true
  flag10 = true
  flag11 = false
  flag12 = true
  flag13 = 1
  numberValue3 = true
  -- Beginner: Attach one entity to another entity.
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3)
  arg9 = Wait
  arg10 = 5000
  arg9(arg10)
  arg9 = TaskPlayAnim
  arg10 = arg3
  arg11 = arg2
  arg12 = "exit"
  flag2 = 8.0
  numberValue = 1.0
  flag5 = -1
  flag6 = 49
  flag7 = 0
  numberValue2 = false
  flag8 = false
  flag10 = false
  -- Beginner: Play an animation on a ped.
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10)
  arg9 = Wait
  arg10 = 100
  arg9(arg10)
  arg9 = RequestAnimSet
  arg10 = "move_m@drunk@verydrunk"
  arg9(arg10)
  while true do
    arg9 = HasAnimSetLoaded
    arg10 = "move_m@drunk@verydrunk"
    arg9 = arg9(arg10)
    if arg9 then
      break
    end
    arg9 = Citizen
    arg9 = arg9.Wait
    arg10 = 0
    arg9(arg10)
  end
  arg9 = DoScreenFadeOut
  arg10 = 1000
  arg9(arg10)
  arg9 = Citizen
  arg9 = arg9.Wait
  arg10 = 1000
  arg9(arg10)
  arg9 = ClearPedTasksImmediately
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3 = arg10()
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3)
  arg9 = SetTimecycleModifier
  arg10 = "spectator5"
  arg9(arg10)
  arg9 = SetPedMotionBlur
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = true
  arg9(arg10, arg11)
  arg9 = SetPedMovementClipset
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = "move_m@drunk@verydrunk"
  arg12 = 1.0
  arg9(arg10, arg11, arg12)
  arg9 = RemoveAnimSet
  arg10 = "move_m@drunk@verydrunk"
  arg9(arg10)
  arg9 = SetPedIsDrunk
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = true
  arg9(arg10, arg11)
  arg9 = DoScreenFadeIn
  arg10 = 1000
  arg9(arg10)
  arg9 = ClearPedSecondaryTask
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3 = arg10()
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13, numberValue3)
  arg9 = DeleteObject
  arg10 = arg8
  arg9(arg10)
  arg9 = Wait
  arg10 = 60000
  arg9(arg10)
  arg9 = DoScreenFadeOut
  arg10 = 1000
  arg9(arg10)
  arg9 = Citizen
  arg9 = arg9.Wait
  arg10 = 1000
  arg9(arg10)
  arg9 = DoScreenFadeIn
  arg10 = 1000
  arg9(arg10)
  arg9 = ClearTimecycleModifier
  arg9()
  arg9 = ResetScenarioTypesEnabled
  arg9()
  arg9 = ResetPedMovementClipset
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = 0
  arg9(arg10, arg11)
  arg9 = SetPedIsDrunk
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = false
  arg9(arg10, arg11)
  arg9 = SetPedMotionBlur
  arg10 = CMG
  arg10 = arg10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg10 = arg10()
  arg11 = false
  arg9(arg10, arg11)
  arg9 = RemoveAnimDict
  arg10 = arg2
  arg9(arg10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6c304cd42b".
textValue3(textValue4, flag9)
textValue3 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = IsEntityPlayingAnim
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "random@arrests@busted"
  arg4 = "idle_a"
  arg5 = 3
  return arg1(arg2, arg3, arg4, arg5)
end
textValue3.isPlayerKneeling = textValue4
textValue3 = false
textValue4 = RegisterNetEvent
flag9 = "e4bcfd6526"
-- Beginner: this function handles network event "e4bcfd6526".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.loadAnimDict
  arg5 = "misshair_shop@hair_dressers"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg4(arg5)
  arg4 = tCMG
  arg4 = arg4.setCanAnim
  arg5 = false
  arg4(arg5)
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = arg3
  arg7 = -0.3
  arg8 = -0.2
  arg9 = 0.0
  arg5 = arg5(arg6, arg7, arg8, arg9)
  arg6 = GetEntityHeading
  arg7 = arg3
  -- Beginner: result below is heading.
  arg6 = arg6(arg7)
  arg7 = SetEntityCoords
  arg8 = arg4
  arg9 = arg5.x
  arg10 = arg5.y
  arg11 = arg5.z
  arg11 = arg11 - 1.0
  arg12 = true
  flag2 = false
  numberValue = false
  flag5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5)
  arg7 = SetEntityHeading
  arg8 = arg4
  arg9 = arg6
  -- Beginner: Change the direction an entity is facing.
  arg7(arg8, arg9)
  arg7 = SetEntityNoCollisionEntity
  arg8 = arg4
  arg9 = arg3
  arg10 = false
  arg7(arg8, arg9, arg10)
  arg7 = SetEntityNoCollisionEntity
  arg8 = arg3
  arg9 = arg4
  arg10 = false
  arg7(arg8, arg9, arg10)
  arg7 = CMG
  arg7 = arg7.loadModel
  arg8 = 1633371511
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg7(arg8)
  arg7 = CMG
  arg7 = arg7.requestEntitySpawn
  arg8 = "shaving_clippers_object"
  arg9 = arg5
  arg7(arg8, arg9)
  arg7 = CreateObject
  arg8 = 1633371511
  arg9 = arg5.x
  arg10 = arg5.y
  arg11 = arg5.z
  arg11 = arg11 + 2.0
  arg12 = true
  flag2 = true
  numberValue = false
  -- Beginner: result below is objectEntity.
  arg7 = arg7(arg8, arg9, arg10, arg11, arg12, flag2, numberValue)
  arg8 = AttachEntityToEntity
  arg9 = arg7
  arg10 = arg4
  arg11 = GetPedBoneIndex
  arg12 = arg4
  flag2 = 6286
  arg11 = arg11(arg12, flag2)
  arg12 = 0.08
  flag2 = 0.0
  numberValue = -0.025
  flag5 = 0.0
  flag6 = 180.0
  flag7 = -90.0
  numberValue2 = false
  flag8 = false
  flag10 = false
  flag11 = false
  flag12 = 0
  flag13 = true
  -- Beginner: Attach one entity to another entity.
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10, flag11, flag12, flag13)
  arg8 = TaskPlayAnim
  arg9 = arg4
  arg10 = "misshair_shop@hair_dressers"
  arg11 = "keeper_hair_cut_a"
  arg12 = 8.0
  flag2 = 8.0
  numberValue = -1
  flag5 = 1
  flag6 = 1.0
  flag7 = false
  numberValue2 = false
  flag8 = false
  -- Beginner: Play an animation on a ped.
  arg8(arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8)
  arg8 = math
  arg8 = arg8.floor
  arg9 = GetAnimDuration
  arg10 = "misshair_shop@hair_dressers"
  arg11 = "keeper_hair_cut_a"
  arg9 = arg9(arg10, arg11)
  arg9 = arg9 * 1000
  arg8 = arg8(arg9)
  arg9 = Citizen
  arg9 = arg9.Wait
  arg10 = arg8
  arg9(arg10)
  arg9 = TaskPlayAnim
  arg10 = arg4
  arg11 = "misshair_shop@hair_dressers"
  arg12 = "keeper_hair_cut_b"
  flag2 = 8.0
  numberValue = 8.0
  flag5 = -1
  flag6 = 1
  flag7 = 1.0
  numberValue2 = false
  flag8 = false
  flag10 = false
  -- Beginner: Play an animation on a ped.
  arg9(arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7, numberValue2, flag8, flag10)
  arg9 = math
  arg9 = arg9.floor
  arg10 = GetAnimDuration
  arg11 = "misshair_shop@hair_dressers"
  arg12 = "keeper_hair_cut_b"
  arg10 = arg10(arg11, arg12)
  arg10 = arg10 * 1000
  arg9 = arg9(arg10)
  arg10 = Citizen
  arg10 = arg10.Wait
  arg11 = arg9
  arg10(arg11)
  arg10 = ClearPedTasks
  arg11 = arg4
  arg10(arg11)
  arg10 = SetEntityNoCollisionEntity
  arg11 = arg4
  arg12 = arg3
  flag2 = true
  arg10(arg11, arg12, flag2)
  arg10 = SetEntityNoCollisionEntity
  arg11 = arg3
  arg12 = arg4
  flag2 = true
  arg10(arg11, arg12, flag2)
  arg10 = DeleteEntity
  arg11 = arg7
  -- Beginner: Delete a GTA entity.
  arg10(arg11)
  arg10 = tCMG
  arg10 = arg10.setCanAnim
  arg11 = true
  arg10(arg11)
  arg10 = RemoveAnimDict
  arg11 = "misshair_shop@hair_dressers"
  arg10(arg11)
  arg10 = SetModelAsNoLongerNeeded
  arg11 = 1633371511
  arg10(arg11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e4bcfd6526".
textValue4(flag9, cmgCall2)
textValue4 = RegisterNetEvent
flag9 = "05f833428d"
-- Beginner: this function handles network event "05f833428d".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = tCMG
  arg4 = arg4.setCanAnim
  arg5 = false
  arg4(arg5)
  arg4 = false
  textValue6 = arg4
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = FreezeEntityPosition
  arg6 = arg4
  arg7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, arg7)
  arg5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg5 = arg5()
  while true do
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg5
    arg7 = 15500
    if not (arg6 < arg7) then
      break
    end
    arg6 = IsEntityPlayingAnim
    arg7 = arg4
    arg8 = "random@arrests@busted"
    arg9 = "idle_a"
    arg10 = 3
    arg6 = arg6(arg7, arg8, arg9, arg10)
    if not arg6 then
      arg6 = TaskPlayAnim
      arg7 = arg4
      arg8 = "random@arrests@busted"
      arg9 = "idle_a"
      arg10 = 8.0
      arg11 = 1.0
      arg12 = -1
      flag2 = 9
      numberValue = 0
      flag5 = false
      flag6 = false
      flag7 = false
      -- Beginner: Play an animation on a ped.
      arg6(arg7, arg8, arg9, arg10, arg11, arg12, flag2, numberValue, flag5, flag6, flag7)
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 0
    arg6(arg7)
  end
  arg6 = SetPedComponentVariation
  arg7 = arg4
  arg8 = 2
  arg9 = 0
  arg10 = 0
  arg11 = 0
  arg6(arg7, arg8, arg9, arg10, arg11)
  arg6 = FreezeEntityPosition
  arg7 = arg4
  arg8 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg6(arg7, arg8)
  arg6 = true
  textValue6 = arg6
  arg6 = tCMG
  arg6 = arg6.setCanAnim
  arg7 = true
  arg6(arg7)
  arg6 = true
  textValue3 = arg6
  arg6 = Citizen
  arg6 = arg6.Wait
  arg7 = 1800000
  arg6(arg7)
  arg6 = false
  textValue3 = arg6
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "05f833428d".
textValue4(flag9, cmgCall2)
textValue4 = RegisterNetEvent
flag9 = "c38ea56445"
-- Beginner: this function handles network event "c38ea56445".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = GetEntityCoords
  arg6 = arg3
  arg7 = true
  -- Beginner: result below is entityCoords.
  arg5 = arg5(arg6, arg7)
  arg6 = arg4 - arg5
  arg6 = #arg6
  if arg6 < 15.0 then
    arg6 = SendNUIMessage
    arg7 = {}
    arg7.transactionType = "shave"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg6(arg7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c38ea56445".
textValue4(flag9, cmgCall2)
textValue4 = RegisterNetEvent
flag9 = "aecf5d3044"
-- Beginner: this function handles network event "aecf5d3044".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  arg2 = true
  textValue3 = arg2
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = arg1
  arg2(arg3)
  arg2 = false
  textValue3 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aecf5d3044".
textValue4(flag9, cmgCall2)

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = textValue3
  if arg2 then
    arg2 = GetPedDrawableVariation
    arg3 = arg1.playerPed
    arg4 = 2
    arg2 = arg2(arg3, arg4)
    if 0 ~= arg2 then
      arg2 = SetPedHeadOverlay
      arg3 = arg1.playerPed
      arg4 = 1
      arg5 = 0
      arg6 = 0.0
      arg2(arg3, arg4, arg5, arg6)
      arg2 = SetPedComponentVariation
      arg3 = arg1.playerPed
      arg4 = 2
      arg5 = 0
      arg6 = 0
      arg7 = 0
      arg2(arg3, arg4, arg5, arg6, arg7)
    end
  end
end
flag9 = CMG
flag9 = flag9.createThreadOnTick
cmgCall2 = textValue4
textValue5 = "Shaver"
-- Beginner: Run a helper every game frame while this script is active.
flag9(cmgCall2, textValue5)

-- === HELPER FUNCTION (decompiler name: flag9; parameters: none) ===
function flag9()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg1 = arg1()
  arg2 = PlaySoundFrontend
  arg3 = arg1
  arg4 = "Armour_On"
  arg5 = "DLC_GR_Steal_Miniguns_Sounds"
  arg6 = true
  arg2(arg3, arg4, arg5, arg6)
  arg2 = ReleaseSoundId
  arg3 = arg1
  arg2(arg3)
end
cmgCall2 = RegisterNetEvent
textValue5 = "b44d4efa87"
-- Beginner: this function handles network event "b44d4efa87".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = false
  arg1(arg2)
  arg1 = flag9
  -- Beginner: Run a helper every game frame while this script is active.
  arg1()
  arg1 = TaskPlayAnim
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "clothingtie"
  arg4 = "try_tie_negative_a"
  arg5 = 3.0
  arg6 = 3.0
  arg7 = 5000
  arg8 = 51
  arg9 = 0
  arg10 = false
  arg11 = false
  arg12 = false
  -- Beginner: Play an animation on a ped.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
  arg1 = RemoveAnimDict
  arg2 = "clothingtie"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.startCircularProgressBar
  arg2 = ""
  arg3 = 5000
  arg4 = nil

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local workValue2, workValue5
  end
  arg1(arg2, arg3, arg4, arg5)
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = true
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b44d4efa87".
cmgCall2(textValue5, workValue6)
cmgCall2 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = GetEntitySpeed
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  return arg1(arg2)
end
cmgCall2.getPlayerSpeed = textValue5
