--[[
    LEVEL 1 BEGINNER GUIDE — Chairs
    ====================================

    File: cmg/prod/client/misc/cl_chairs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Chairs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 86
      * Background threads: 0
      * Always-running loops: 13
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
local cmgOperation, text13, workingValue11, dataCollection, dataCollection2, dataCollection3, cmgOperation2, text39, text40, text41, text, text2, text3, text4, text5, text6, text9, text10, text11, text12, text14, text15, text16, text17, text18, text19, text21, text23, text24, text26, text27, text28, text29, text30, text31, text32, text34, workingValue16, workingValue17, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, text36, workingValue28, stateFlag8, workingValue29, workingValue30, text37, text38, stateFlag9, stateFlag10
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text13 = "cfg/cfg_chairs"
cmgOperation, text13, workingValue11 = cmgOperation(text13)
dataCollection = {}
dataCollection.isSitting = false
dataCollection.isLaying = false
dataCollection.entity = 0
dataCollection.poly = false
dataCollection.type = nil
dataCollection.lastPos = nil
dataCollection.targetPos = nil
dataCollection.teleportOut = false
dataCollection.frozen = false
dataCollection.plyFrozen = false
dataCollection2 = {}
dataCollection.animation = dataCollection2
dataCollection.scenario = false
dataCollection.showingPrompt = false
dataCollection.attAction = false
dataCollection.lastAttemptTime = 0
dataCollection2 = 0
dataCollection3 = {}
cmgOperation2 = "WORLD_HUMAN_SEAT_LEDGE"
text39 = "WORLD_HUMAN_SEAT_LEDGE_EATING"
text40 = "WORLD_HUMAN_SEAT_STEPS"
text41 = "WORLD_HUMAN_SEAT_WALL"
text = "WORLD_HUMAN_SEAT_WALL_EATING"
text2 = "WORLD_HUMAN_SEAT_WALL_TABLET"
text3 = "PROP_HUMAN_SEAT_ARMCHAIR"
text4 = "PROP_HUMAN_SEAT_BAR"
text5 = "PROP_HUMAN_SEAT_BENCH"
text6 = "PROP_HUMAN_SEAT_BENCH_FACILITY"
text9 = "PROP_HUMAN_SEAT_BENCH_DRINK"
text10 = "PROP_HUMAN_SEAT_BENCH_DRINK_FACILITY"
text11 = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER"
text12 = "PROP_HUMAN_SEAT_BENCH_FOOD"
text14 = "PROP_HUMAN_SEAT_BENCH_FOOD_FACILITY"
text15 = "PROP_HUMAN_SEAT_BUS_STOP_WAIT"
text16 = "PROP_HUMAN_SEAT_CHAIR"
text17 = "PROP_HUMAN_SEAT_CHAIR_DRINK"
text18 = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER"
text19 = "PROP_HUMAN_SEAT_CHAIR_FOOD"
text21 = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT"
text23 = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"
text24 = "PROP_HUMAN_SEAT_COMPUTER"
text26 = "PROP_HUMAN_SEAT_COMPUTER_LOW"
text27 = "PROP_HUMAN_SEAT_DECKCHAIR"
text28 = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK"
text29 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS"
text30 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS_PRISON"
text31 = "PROP_HUMAN_SEAT_SEWING"
text32 = "PROP_HUMAN_SEAT_STRIP_WATCH"
text34 = "PROP_HUMAN_SEAT_SUNLOUNGER"
dataCollection3[1] = cmgOperation2
dataCollection3[2] = text39
dataCollection3[3] = text40
dataCollection3[4] = text41
dataCollection3[5] = text
dataCollection3[6] = text2
dataCollection3[7] = text3
dataCollection3[8] = text4
dataCollection3[9] = text5
dataCollection3[10] = text6
dataCollection3[11] = text9
dataCollection3[12] = text10
dataCollection3[13] = text11
dataCollection3[14] = text12
dataCollection3[15] = text14
dataCollection3[16] = text15
dataCollection3[17] = text16
dataCollection3[18] = text17
dataCollection3[19] = text18
dataCollection3[20] = text19
dataCollection3[21] = text21
dataCollection3[22] = text23
dataCollection3[23] = text24
dataCollection3[24] = text26
dataCollection3[25] = text27
dataCollection3[26] = text28
dataCollection3[27] = text29
dataCollection3[28] = text30
dataCollection3[29] = text31
dataCollection3[30] = text32
dataCollection3[31] = text34
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text39; parameters: none) ===
function text39()
  local localValue1, localValue2
  localValue1 = dataCollection.isSitting
  if not localValue1 then
    localValue1 = dataCollection.isLaying
  end
  return localValue1
end
cmgOperation2.isSittingOnChair = text39

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCombatTimer
  localValue2 = localValue2()
  if 0 == localValue2 then
    localValue2 = tCMG
    localValue2 = localValue2.canAnim
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = GetEntityAttachedTo
      localValue3 = PlayerPedId
      localValue3, localValue4 = localValue3()
      localValue2 = localValue2(localValue3, localValue4)
      if 0 == localValue2 then
        localValue2 = RageUI
        localValue2 = localValue2.GetTimeSinceLastMenuToggle
        localValue2 = localValue2()
        localValue3 = 200
        if localValue2 > localValue3 then
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          localValue3 = dataCollection2
          localValue2 = localValue2 - localValue3
          localValue3 = 1000
          if localValue2 > localValue3 then
            localValue2 = CMG
            localValue2 = localValue2.isHandcuffed
            localValue2 = localValue2()
            if not localValue2 then
              localValue2 = true
              if not localValue1 then
                localValue3 = Citizen
                localValue3 = localValue3.Wait
                localValue4 = 0
                localValue3(localValue4)
                localValue3 = cmgOperation2
                localValue4 = true
                localValue3 = localValue3(localValue4)
                localValue2 = localValue3
                if localValue2 then
                  localValue3 = Citizen
                  localValue3 = localValue3.Wait
                  localValue4 = 0
                  localValue3(localValue4)
                  localValue3 = cmgOperation2
                  localValue4 = true
                  localValue3 = localValue3(localValue4)
                  localValue2 = localValue3
                end
              end
              return localValue2
          end
        end
      end
    end
  end
  else
    localValue2 = false
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: text39; parameters: localValue1) ===
function text39(localValue1)
  local localValue2, localValue3
  localValue2 = notify
  localValue3 = localValue1
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: text40; parameters: localValue1) ===
function text40(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = cmgOperation.UseNativeNotifiactions
  if localValue2 then
    localValue2 = text39
    localValue3 = localValue1
    localValue2(localValue3)
  else
    localValue2 = exports
    localValue2 = localValue2.mythic_notify
    localValue3 = localValue2
    localValue2 = localValue2.SendAlert
    localValue4 = "error"
    localValue5 = localValue1
    localValue2(localValue3, localValue4, localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: text41; parameters: localValue1) ===
function text41(localValue1)
  local localValue2, localValue3
  localValue2 = RequestAnimDict
  localValue3 = localValue1
  localValue2(localValue3)
  while true do
    localValue2 = HasAnimDictLoaded
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Wait
    localValue3 = 10
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2
  localValue2 = text13
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.sit
  localValue2 = localValue2.seats
  localValue2 = #localValue2
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = IsEntityPositionFrozen
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = NetworkRequestControlOfEntity
    localValue3 = localValue1
    localValue2(localValue3)
    localValue2 = FreezeEntityPosition
    localValue3 = localValue1
    localValue4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue2(localValue3, localValue4)
    dataCollection.frozen = true
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection.frozen
  if localValue2 then
    localValue2 = FreezeEntityPosition
    localValue3 = localValue1
    localValue4 = false
    localValue2(localValue3, localValue4)
    dataCollection.frozen = false
  end
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1
  localValue3 = 180.0
  if localValue2 > localValue3 then
    localValue3 = math
    localValue3 = localValue3.abs
    localValue4 = localValue2 - 180.0
    localValue3 = localValue3(localValue4)
    localValue4 = 180.0
    localValue2 = localValue4 - localValue3
    localValue2 = localValue2 * -1
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3) ===
function text5(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number
  localValue4 = math
  localValue4 = localValue4.rad
  localValue5 = localValue2.x
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.rad
  localValue6 = localValue2.y
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.rad
  localValue7 = localValue2.z
  localValue6 = localValue6(localValue7)
  localValue7 = {}
  localValue8 = {}
  localValue7[1] = localValue8
  localValue8 = localValue7[1]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue6
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue4
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue5
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 - localValue10
  localValue8[1] = localValue9
  localValue8 = localValue7[1]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue5
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue4
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue5
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 + localValue10
  localValue8[2] = localValue9
  localValue8 = localValue7[1]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue4
  localValue9 = localValue9(localValue10)
  localValue9 = -localValue9
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue8[3] = localValue9
  localValue8 = localValue7[1]
  localValue8[4] = 1
  localValue8 = {}
  localValue7[2] = localValue8
  localValue8 = localValue7[2]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue4
  localValue9 = localValue9(localValue10)
  localValue9 = -localValue9
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue8[1] = localValue9
  localValue8 = localValue7[2]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue6
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue4
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue8[2] = localValue9
  localValue8 = localValue7[2]
  localValue9 = math
  localValue9 = localValue9.sin
  localValue10 = localValue4
  localValue9 = localValue9(localValue10)
  localValue8[3] = localValue9
  localValue8 = localValue7[2]
  localValue8[4] = 1
  localValue8 = {}
  localValue7[3] = localValue8
  localValue8 = localValue7[3]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue6
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue6
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue4
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 + localValue10
  localValue8[1] = localValue9
  localValue8 = localValue7[3]
  localValue9 = math
  localValue9 = localValue9.sin
  localValue10 = localValue6
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.sin
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue11 = math
  localValue11 = localValue11.cos
  workingValue = localValue5
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue11 = math
  localValue11 = localValue11.sin
  workingValue = localValue4
  localValue11 = localValue11(workingValue)
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 - localValue10
  localValue8[2] = localValue9
  localValue8 = localValue7[3]
  localValue9 = math
  localValue9 = localValue9.cos
  localValue10 = localValue4
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.cos
  localValue11 = localValue5
  localValue10 = localValue10(localValue11)
  localValue9 = localValue9 * localValue10
  localValue8[3] = localValue9
  localValue8 = localValue7[3]
  localValue8[4] = 1
  localValue8 = {}
  localValue7[4] = localValue8
  localValue8 = localValue7[4]
  localValue9 = localValue7[4]
  localValue10 = localValue7[4]
  localValue11 = localValue1.x
  workingValue = localValue1.y
  nameValue = localValue1.z
  localValue10[3] = nameValue
  localValue9[2] = workingValue
  localValue8[1] = localValue11
  localValue8 = localValue7[4]
  localValue8[4] = 1
  localValue8 = localValue3.x
  localValue9 = localValue7[1]
  localValue9 = localValue9[1]
  localValue8 = localValue8 * localValue9
  localValue9 = localValue3.y
  localValue10 = localValue7[2]
  localValue10 = localValue10[1]
  localValue9 = localValue9 * localValue10
  localValue8 = localValue8 + localValue9
  localValue9 = localValue3.z
  localValue10 = localValue7[3]
  localValue10 = localValue10[1]
  localValue9 = localValue9 * localValue10
  localValue8 = localValue8 + localValue9
  localValue9 = localValue7[4]
  localValue9 = localValue9[1]
  localValue8 = localValue8 + localValue9
  localValue9 = localValue3.x
  localValue10 = localValue7[1]
  localValue10 = localValue10[2]
  localValue9 = localValue9 * localValue10
  localValue10 = localValue3.y
  localValue11 = localValue7[2]
  localValue11 = localValue11[2]
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 + localValue10
  localValue10 = localValue3.z
  localValue11 = localValue7[3]
  localValue11 = localValue11[2]
  localValue10 = localValue10 * localValue11
  localValue9 = localValue9 + localValue10
  localValue10 = localValue7[4]
  localValue10 = localValue10[2]
  localValue9 = localValue9 + localValue10
  localValue10 = localValue3.x
  localValue11 = localValue7[1]
  localValue11 = localValue11[3]
  localValue10 = localValue10 * localValue11
  localValue11 = localValue3.y
  workingValue = localValue7[2]
  workingValue = workingValue[3]
  localValue11 = localValue11 * workingValue
  localValue10 = localValue10 + localValue11
  localValue11 = localValue3.z
  workingValue = localValue7[3]
  workingValue = workingValue[3]
  localValue11 = localValue11 * workingValue
  localValue10 = localValue10 + localValue11
  localValue11 = localValue7[4]
  localValue11 = localValue11[3]
  localValue10 = localValue10 + localValue11
  localValue11 = vector3
  workingValue = localValue8
  nameValue = localValue9
  number = localValue10
  return localValue11(workingValue, nameValue, number)
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number
  localValue2 = {}
  localValue3 = pairs
  localValue4 = cmgOperation.LayTypes
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.animation
    localValue10 = localValue9.dict
    localValue10 = localValue2[localValue10]
    if not localValue10 then
      localValue10 = IsEntityPlayingAnim
      localValue11 = localValue1
      workingValue = localValue9.dict
      nameValue = localValue9.name
      number = 3
      localValue10 = localValue10(localValue11, workingValue, nameValue, number)
      if localValue10 then
        localValue10 = true
        return localValue10
      else
        localValue10 = localValue9.dict
        localValue2[localValue10] = true
      end
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue2 = pairs
  localValue3 = dataCollection3
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = IsPedUsingScenario
    localValue9 = localValue1
    localValue10 = localValue7
    localValue8 = localValue8(localValue9, localValue10)
    if localValue8 then
      localValue8 = true
      return localValue8
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = pairs
  localValue5 = GetGamePool
  localValue6 = "CPed"
  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue = localValue5(localValue6)
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue)
  for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
    if localValue9 ~= localValue3 then
      localValue10 = GetEntityCoords
      localValue11 = localValue9
      -- Beginner: result below is entityCoords.
      localValue10 = localValue10(localValue11)
      localValue10 = localValue10 - localValue1
      localValue10 = #localValue10
      localValue11 = 1.35
      if localValue10 < localValue11 then
        if "sit" == localValue2 then
          localValue11 = text6
          workingValue = localValue9
          localValue11 = localValue11(workingValue)
          if not localValue11 then
            localValue11 = 0.55
          end
          if localValue10 < localValue11 then
            localValue11 = false
            return localValue11
          end
        elseif "lay" == localValue2 then
          localValue11 = text6
          workingValue = localValue9
          localValue11 = localValue11(workingValue)
          if not localValue11 then
            localValue11 = text9
            workingValue = localValue9
            localValue11 = localValue11(workingValue)
            if not localValue11 then
              goto continueAtStep47
            end
          end
          localValue11 = false
          return localValue11
        end
      end
    end
    ::continueAtStep47::
  end
  localValue4 = true
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2) ===
function text11(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = localValue1.dist
  localValue4 = localValue2.dist
  localValue3 = localValue3 < localValue4
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2, localValue3) ===
function text12(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue
  localValue4 = StartShapeTestLosProbe
  localValue5 = localValue1.x
  localValue6 = localValue1.y
  localValue7 = localValue1.z
  localValue8 = localValue2.x
  localValue9 = localValue2.y
  localValue10 = localValue2.z
  localValue11 = -1
  workingValue = localValue3
  nameValue = 4
  localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue)
  while true do
    localValue5 = GetShapeTestResult
    localValue6 = localValue4
    localValue5, localValue6, localValue7, localValue8, localValue9 = localValue5(localValue6)
    if 1 ~= localValue5 then
      localValue10 = localValue6
      localValue11 = localValue7
      workingValue = localValue8
      nameValue = localValue9
      return localValue10, localValue11, workingValue, nameValue
    end
    localValue10 = Wait
    localValue11 = 0
    localValue10(localValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = GetWorldCoordFromScreenCoord
  localValue2 = 0.5
  localValue3 = 0.5
  localValue1, localValue2 = localValue1(localValue2, localValue3)
  localValue3 = localValue2 * 10
  localValue3 = localValue1 + localValue3
  localValue4 = text12
  localValue5 = localValue1
  localValue6 = localValue3
  localValue7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue7 = localValue7()
  localValue4, localValue5 = localValue4(localValue5, localValue6, localValue7)
  if localValue4 then
    return localValue5
  else
    localValue6 = false
    return localValue6
  end
end

-- === HELPER FUNCTION (decompiler name: text15; parameters: localValue1, localValue2, localValue3) ===
function text15(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3
  localValue4 = {}
  localValue5 = GetEntityCoords
  localValue6 = PlayerPedId
  localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3 = localValue6()
  -- Beginner: result below is entityCoords.
  localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3)
  if localValue3 then
    localValue6 = cmgOperation.Target
    if localValue6 then
      localValue6 = cmgOperation.UseTargetingCoords
      if localValue6 then
        localValue6 = text14
        localValue6 = localValue6()
        if localValue6 then
          localValue5 = localValue6
        end
      end
    end
  end
  localValue6 = pairs
  localValue7 = localValue2
  localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7)
  for localValue10, localValue11 in localValue6, localValue7, localValue8, localValue9 do
    workingValue = {}
    localValue4[localValue10] = workingValue
    if localValue1 then
      workingValue = localValue1.w
      nameValue = vector3
      number = 0.0
      number2 = 0.0
      text7 = text4
      workingValue4 = localValue1.w
      text7, workingValue4, number3 = text7(workingValue4)
      nameValue = nameValue(number, number2, text7, workingValue4, number3)
      number = localValue4[localValue10]
      number2 = text5
      text7 = localValue1.xyz
      workingValue4 = nameValue
      number3 = localValue11
      number2 = number2(text7, workingValue4, number3)
      number.coords = number2
      number = localValue11.w
      workingValue = workingValue + number
      number = 360.0
      if workingValue > number then
        workingValue = workingValue - 360.0
      end
      number = localValue4[localValue10]
      number.heading = workingValue
    else
      workingValue = localValue4[localValue10]
      nameValue = localValue11.xyz
      workingValue.coords = nameValue
      workingValue = localValue4[localValue10]
      nameValue = localValue11.w
      workingValue.heading = nameValue
    end
    workingValue = localValue4[localValue10]
    nameValue = localValue4[localValue10]
    nameValue = nameValue.coords
    nameValue = localValue5 - nameValue
    nameValue = #nameValue
    workingValue.dist = nameValue
  end
  localValue6 = table
  localValue6 = localValue6.sort
  localValue7 = localValue4
  localValue8 = text11
  localValue6(localValue7, localValue8)
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: text16; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text16(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7
  localValue5 = nil
  localValue6 = nil
  localValue7 = text15
  localValue8 = localValue1
  localValue9 = localValue2
  localValue10 = localValue3
  localValue7 = localValue7(localValue8, localValue9, localValue10)
  localValue8 = pairs
  localValue9 = localValue7
  localValue8, localValue9, localValue10, localValue11 = localValue8(localValue9)
  for workingValue, nameValue in localValue8, localValue9, localValue10, localValue11 do
    if not localValue4 then
      number = text10
      number2 = nameValue.coords
      text7 = "sit"
      number = number(number2, text7)
      if not number then
        goto continueAtStep22
      end
    end
    localValue5 = nameValue.coords
    localValue6 = nameValue.heading
    do break end
    ::continueAtStep22::
  end
  localValue8 = localValue5
  localValue9 = localValue6
  return localValue8, localValue9
end

-- === HELPER FUNCTION (decompiler name: text17; parameters: localValue1, localValue2, localValue3) ===
function text17(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  dataCollection.isSitting = false
  dataCollection.isLaying = false
  dataCollection.scenario = false
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = dataCollection.plyFrozen
  if localValue5 then
    localValue5 = SetEntityCollision
    localValue6 = localValue4
    localValue7 = true
    localValue8 = false
    localValue5(localValue6, localValue7, localValue8)
    localValue5 = FreezeEntityPosition
    localValue6 = localValue4
    localValue7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue5(localValue6, localValue7)
    dataCollection.plyFrozen = false
  end
  localValue5 = dataCollection.entity
  if 0 ~= localValue5 then
    localValue5 = text3
    localValue6 = dataCollection.entity
    localValue5(localValue6)
    dataCollection.entity = 0
  end
  if localValue1 or localValue2 then
    if localValue3 then
      localValue5 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION: localValue6() ===
      function localValue6()
        local localValue12, localValue22
        while true do
          localValue12 = IsEntityAttachedToAnyPed
          localValue22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue22 = localValue22()
          localValue12 = localValue12(localValue22)
          if not localValue12 then
            break
          end
          localValue12 = Wait
          localValue22 = 200
          localValue12(localValue22)
        end
        localValue12 = ClearPedTasksImmediately
        localValue22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        localValue12(localValue22)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue5(localValue6)
    elseif localValue1 then
      localValue5 = ClearPedTasks
      localValue6 = localValue4
      localValue5(localValue6)
    else
      localValue5 = ClearPedTasksImmediately
      localValue6 = localValue4
      localValue5(localValue6)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text18; parameters: none) ===
function text18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = dataCollection.lastPos
  if localValue1 then
    localValue1 = cmgOperation.AlwaysTeleportOutOfSeat
    if not localValue1 then
      localValue1 = cmgOperation.TeleportToLastPosWhenNoRoute
      if not localValue1 then
        localValue1 = cmgOperation.SitTypes
        localValue2 = dataCollection.type
        localValue1 = localValue1[localValue2]
        localValue1 = localValue1.teleportOut
        if not localValue1 then
          localValue1 = dataCollection.teleportOut
          if not localValue1 then
            goto continueAtStep42
          end
        end
      end
    end
    localValue1 = ClearPedTasks
    localValue2 = PlayerPedId
    localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9 = localValue2()
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = Wait
    localValue2 = 1500
    localValue1(localValue2)
    localValue1 = SetEntityCoords
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = dataCollection.lastPos
    localValue3 = localValue3.x
    localValue4 = dataCollection.lastPos
    localValue4 = localValue4.y
    localValue5 = dataCollection.lastPos
    localValue5 = localValue5.z
    localValue5 = localValue5 - 0.95
    localValue6 = false
    localValue7 = false
    localValue8 = false
    localValue9 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
  end
  ::continueAtStep42::
  localValue1 = text17
  localValue2 = true
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: text19; parameters: localValue1) ===
function text19(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = cmgOperation.SitTypes
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.scenarios
  if not localValue2 then
    localValue3 = false
    localValue4 = vector4
    localValue5 = 0.0
    localValue6 = 0.0
    localValue7 = 0.0
    localValue8 = 0.0
    localValue4, localValue5, localValue6, localValue7, localValue8 = localValue4(localValue5, localValue6, localValue7, localValue8)
    return localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  end
  localValue3 = 1
  localValue4 = #localValue2
  if localValue4 > 1 then
    localValue4 = math
    localValue4 = localValue4.floor
    localValue5 = math
    localValue5 = localValue5.random
    localValue6 = 100
    localValue7 = #localValue2
    localValue7 = localValue7 * 100
    localValue5 = localValue5(localValue6, localValue7)
    localValue5 = localValue5 / 100
    localValue5 = localValue5 + 0.5
    localValue4 = localValue4(localValue5)
    localValue3 = localValue4
  end
  localValue4 = localValue2[localValue3]
  localValue4 = localValue4.name
  localValue5 = localValue2[localValue3]
  localValue5 = localValue5.offset
  if not localValue5 then
    localValue5 = cmgOperation.SitTypes
    localValue5 = localValue5.default
    localValue5 = localValue5.scenarios
    localValue5 = localValue5[1]
    localValue5 = localValue5.offset
  end
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: text21; parameters: none) ===
function text21()
  local localValue1, localValue2, localValue3
  localValue1 = IsPedUsingScenario
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.scenario
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = dataCollection.isSitting
    if not localValue1 then
      localValue1 = dataCollection.isLaying
      if not localValue1 then
        goto continueAtStep17
      end
    end
  end
  localValue1 = true
  return localValue1
  goto continueAtStep19
  ::continueAtStep17::
  localValue1 = false
  return localValue1
  ::continueAtStep19::
end

-- === HELPER FUNCTION (decompiler name: text23; parameters: localValue1, localValue2) ===
function text23(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = GetEntityCoords
  localValue5 = localValue3
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5)
  localValue5 = vector3
  localValue6 = localValue4.x
  localValue7 = localValue4.y
  localValue8 = localValue4.z
  localValue8 = localValue8 + 0.25
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = text12
  localValue7 = localValue5
  localValue8 = localValue1
  localValue9 = localValue3
  localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7, localValue8, localValue9)
  while true do
    localValue10 = GetEntityType
    localValue11 = localValue9
    localValue10 = localValue10(localValue11)
    if 1 ~= localValue10 then
      localValue10 = localValue7 - localValue1
      localValue10 = #localValue10
      localValue11 = 0.5
      if not (localValue10 < localValue11) then
        localValue11 = localValue7.x
        if 0.0 ~= localValue11 and localValue9 ~= localValue2 then
          goto continueAtStep37
        end
      end
      localValue11 = true
      return localValue11
      goto continueAtStep51
      ::continueAtStep37::
      localValue11 = false
      return localValue11
    else
      localValue10 = text12
      localValue11 = GetEntityCoords
      workingValue = localValue9
      -- Beginner: result below is entityCoords.
      localValue11 = localValue11(workingValue)
      workingValue = localValue1
      nameValue = localValue9
      localValue10, localValue11, workingValue, nameValue = localValue10(localValue11, workingValue, nameValue)
      localValue9 = nameValue
      localValue8 = workingValue
      localValue7 = localValue11
      localValue8 = localValue10
    end
    ::continueAtStep51::
    localValue10 = Wait
    localValue11 = 0
    localValue10(localValue11)
  end
end

-- === HELPER FUNCTION (decompiler name: text24; parameters: localValue1, localValue2, localValue3) ===
function text24(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  localValue4 = text4
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue5 = text5
  localValue6 = localValue1
  localValue7 = vector3
  localValue8 = 0.0
  localValue9 = 0.0
  localValue10 = localValue4
  localValue7 = localValue7(localValue8, localValue9, localValue10)
  localValue8 = vector3
  localValue9 = 0.0
  localValue10 = 0.25
  localValue11 = 0.0
  localValue8, localValue9, localValue10, localValue11 = localValue8(localValue9, localValue10, localValue11)
  localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
  localValue6 = vector3
  localValue7 = localValue5.x
  localValue8 = localValue5.y
  localValue9 = localValue5.z
  localValue9 = localValue9 + 0.3
  localValue6 = localValue6(localValue7, localValue8, localValue9)
  localValue7 = text12
  localValue8 = localValue5
  localValue9 = localValue6
  localValue10 = localValue3
  localValue7 = localValue7(localValue8, localValue9, localValue10)
  if 0 == localValue7 then
    localValue8 = true
    return localValue8
  else
    localValue8 = false
    return localValue8
  end
end

-- === HELPER FUNCTION (decompiler name: text26; parameters: localValue1) ===
function text26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = dataCollection.lastAttemptTime
  localValue2 = localValue2 - localValue3
  localValue3 = 2500
  if localValue2 < localValue3 then
    return
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  dataCollection.lastAttemptTime = localValue2
  dataCollection.attAction = true
  localValue2 = localValue1.entity
  dataCollection.entity = localValue2
  localValue2 = localValue1.poly
  dataCollection.poly = localValue2
  localValue2 = localValue1.sit
  localValue2 = localValue2.type
  dataCollection.type = localValue2
  localValue2 = localValue1.sit
  localValue3 = cmgOperation.SitTypes
  localValue4 = localValue2.type
  localValue3 = localValue3[localValue4]
  localValue4 = nil
  if not localValue3 then
    localValue5 = print
    localValue6 = "^3Warning: No settings were set for type^2"
    localValue7 = localValue2.type
    localValue8 = "^3 in Config.SitTypes, the default settings were used instead!"
    localValue5(localValue6, localValue7, localValue8)
    localValue2.type = "default"
    localValue5 = cmgOperation.SitTypes
    localValue3 = localValue5.default
  end
  localValue5 = localValue1.entity
  if nil ~= localValue5 then
    localValue5 = localValue1.entity
    if 0 ~= localValue5 then
      localValue5 = GetEntityRotation
      localValue6 = localValue1.entity
      localValue5 = localValue5(localValue6)
      localValue6 = localValue5.x
      localValue7 = localValue5.y
      if localValue6 < 0.0 then
        localValue6 = localValue6 * -1
      end
      if localValue7 < 0.0 then
        localValue7 = localValue7 * -1
      end
      localValue8 = localValue6 + localValue7
      localValue9 = cmgOperation.MaxTilt
      if localValue8 > localValue9 then
        localValue9 = text40
        localValue10 = cmgOperation.Lang
        localValue10 = localValue10.Notification
        localValue10 = localValue10.TooTilted
        localValue9(localValue10)
        dataCollection.attAction = false
        return
      end
      localValue9 = GetEntityCoords
      localValue10 = localValue1.entity
      -- Beginner: result below is entityCoords.
      localValue9 = localValue9(localValue10)
      localValue10 = vector4
      localValue11 = localValue9.x
      workingValue = localValue9.y
      nameValue = localValue9.z
      number = GetEntityHeading
      number2 = localValue1.entity
      number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6 = number(number2)
      localValue10 = localValue10(localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
      localValue4 = localValue10
    end
  end
  localValue5 = text16
  localValue6 = localValue4
  localValue7 = localValue2.seats
  localValue8 = localValue1.raycast
  localValue5, localValue6 = localValue5(localValue6, localValue7, localValue8)
  if nil == localValue5 then
    localValue7 = GetEntityModel
    localValue8 = localValue1.entity
    -- Beginner: result below is modelHash.
    localValue7 = localValue7(localValue8)
    if 0 ~= localValue7 then
      localValue8 = text
      localValue9 = localValue7
      localValue8 = localValue8(localValue9)
      if 1 ~= localValue8 then
        localValue8 = text40
        localValue9 = cmgOperation.Lang
        localValue9 = localValue9.Notification
        localValue9 = localValue9.NoAvailable
        localValue8(localValue9)
    end
    else
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.OccupiedSit
      localValue8(localValue9)
    end
    dataCollection.attAction = false
    return
  end
  if nil == localValue6 then
    localValue7 = text40
    localValue8 = cmgOperation.Lang
    localValue8 = localValue8.Notification
    localValue8 = localValue8.NoAvailable
    localValue7(localValue8)
    localValue7 = print
    localValue8 = "^1Error: Heading was nil!"
    localValue7(localValue8)
    dataCollection.attAction = false
    return
  end
  localValue7 = localValue2.skipSeeCheck
  if not localValue7 then
    localValue7 = false
  end
  if not localValue7 then
    localValue8 = text23
    localValue9 = localValue5
    localValue10 = localValue1.entity
    localValue8 = localValue8(localValue9, localValue10)
    if not localValue8 then
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.CannotReachSeat
      localValue8(localValue9)
      dataCollection.attAction = false
      return
    end
  end
  localValue8 = localValue1.entity
  if 0 ~= localValue8 then
    localValue8 = text24
    localValue9 = localValue5
    localValue10 = localValue6
    localValue11 = localValue1.entity
    localValue8 = localValue8(localValue9, localValue10, localValue11)
    if not localValue8 then
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.CannotSitInSeat
      localValue8(localValue9)
      dataCollection.attAction = false
      return
    end
  end
  localValue8 = text19
  localValue9 = localValue2.type
  localValue8, localValue9 = localValue8(localValue9)
  localValue10 = localValue9.w
  localValue6 = localValue6 + localValue10
  localValue10 = 360.0
  if localValue6 > localValue10 then
    localValue6 = localValue6 - 360.0
  end
  localValue10 = text4
  localValue11 = localValue6
  localValue10 = localValue10(localValue11)
  localValue11 = text5
  workingValue = localValue5
  nameValue = vector3
  number = 0.0
  number2 = 0.0
  text7 = localValue10
  nameValue = nameValue(number, number2, text7)
  number = localValue9.xyz
  localValue11 = localValue11(workingValue, nameValue, number)
  localValue5 = localValue11
  localValue11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue11 = localValue11()
  workingValue = GetEntityCoords
  nameValue = localValue11
  -- Beginner: result below is entityCoords.
  workingValue = workingValue(nameValue)
  dataCollection.teleportOut = false
  dataCollection.lastPos = nil
  nameValue = cmgOperation.AlwaysTeleportOutOfSeat
  if not nameValue then
    nameValue = localValue3.teleportOut
    if not nameValue then
      nameValue = localValue2.teleportOut
      if not nameValue then
        goto continueAtStep199
      end
    end
  end
  dataCollection.teleportOut = true
  dataCollection.lastPos = workingValue
  ::continueAtStep199::
  nameValue = dataCollection.isSitting
  if not nameValue then
    nameValue = dataCollection.isLaying
    if not nameValue then
      goto continueAtStep235
    end
  end
  nameValue = localValue5 - workingValue
  nameValue = #nameValue
  number = 0.2
  if nameValue < number then
    nameValue = text18
    nameValue()
    dataCollection.attAction = false
    return
  else
    nameValue = dataCollection.teleportOut
    if nameValue then
      nameValue = text17
      number = false
      number2 = true
      text7 = false
      nameValue(number, number2, text7)
    else
      nameValue = text17
      number = true
      number2 = false
      text7 = false
      nameValue(number, number2, text7)
      nameValue = Wait
      number = 2000
      nameValue(number)
    end
    nameValue = localValue1.entity
    dataCollection.entity = nameValue
  end
  ::continueAtStep235::
  dataCollection.scenario = localValue8
  dataCollection.isLaying = false
  nameValue = {}
  dataCollection.animation = nameValue
  nameValue = ClearPedTasks
  number = localValue11
  nameValue(number)
  nameValue = localValue1.entity
  if 0 ~= nameValue then
    nameValue = text2
    number = localValue1.entity
    nameValue(number)
  end
  nameValue = localValue3.timeout
  if not nameValue then
    nameValue = cmgOperation.SitTypes
    nameValue = nameValue.default
    nameValue = nameValue.timeout
  end
  number = localValue3.skipGoStraightTask
  number2 = localValue5.xy
  text7 = GetEntityCoords
  workingValue4 = localValue11
  -- Beginner: result below is entityCoords.
  text7 = text7(workingValue4)
  text7 = text7.xy
  number2 = number2 - text7
  number2 = #number2
  text7 = number2
  workingValue4 = cmgOperation.AlwaysTeleportToSeat
  if not workingValue4 then
    workingValue4 = localValue2.teleportIn
    if not workingValue4 then
      workingValue4 = localValue3.teleportIn
    end
  end
  number3 = 0
  number4 = 0
  if not workingValue4 and not number then
    workingValue5 = text5
    waitCall = localValue5
    createVector3 = vector3
    createVector32 = 0.0
    number5 = 0.0
    number6 = localValue10
    createVector3 = createVector3(createVector32, number5, number6)
    createVector32 = vector3
    number5 = 0.0
    number6 = 0.695
    number7 = 0.0
    createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6 = createVector32(number5, number6, number7)
    workingValue5 = workingValue5(waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    waitCall = TaskGoStraightToCoord
    createVector3 = localValue11
    createVector32 = workingValue5.x
    number5 = workingValue5.y
    number6 = workingValue5.z
    number7 = 1
    stateFlag = nameValue * 500
    stateFlag2 = localValue6
    stateFlag3 = 0.15
    waitCall(createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3)
    while true do
      waitCall = Wait
      createVector3 = 500
      waitCall(createVector3)
      waitCall = dataCollection.attAction
      if not waitCall then
        return
      end
      waitCall = GetEntityCoords
      createVector3 = localValue11
      -- Beginner: result below is entityCoords.
      waitCall = waitCall(createVector3)
      createVector3 = workingValue5.xy
      createVector32 = waitCall.xy
      createVector3 = createVector3 - createVector32
      text7 = #createVector3
      number4 = number4 + 1
      if number2 > text7 then
        workingValue = waitCall
        number2 = text7
      end
      createVector3 = math
      createVector3 = createVector3.abs
      createVector32 = text7 - number2
      createVector3 = createVector3(createVector32)
      createVector32 = GetScriptTaskStatus
      number5 = localValue11
      number6 = "SCRIPT_TASK_GO_STRAIGHT_TO_COORD"
      createVector32 = createVector32(number5, number6)
      if 0 == createVector32 or 7 == createVector32 or nameValue < number4 then
        break
      end
      number5 = number2 + 0.1
      if text7 > number5 then
        number5 = 0.85
        if text7 > number5 then
          number3 = number3 + 1
      end
      else
        number5 = 0.085
        if createVector3 <= number5 then
          number5 = cmgOperation.MaxInteractionDist
          if text7 < number5 then
            number5 = 0.05
            if text7 > number5 and number4 > 1 then
              number3 = number3 + 1
          end
        end
        else
          number3 = number3 - 1
          if number3 < 0 then
            number3 = 0
          end
        end
      end
      if number3 > 2 then
        number5 = localValue2.type
        if "sunlounger" ~= number5 then
          break
        end
      end
    end
    waitCall = 0.5
    workingValue4 = text7 > waitCall or workingValue4
    number4 = 0
  end
  workingValue5 = dataCollection.scenario
  if workingValue5 then
    dataCollection.targetPos = localValue5
    workingValue5 = TaskStartScenarioAtPosition
    waitCall = localValue11
    createVector3 = dataCollection.scenario
    createVector32 = localValue5.x
    number5 = localValue5.y
    number6 = localValue5.z
    number7 = localValue6
    stateFlag = -1
    stateFlag2 = false
    stateFlag3 = workingValue4
    -- Beginner: Make an NPC start a GTA scenario/ambient animation.
    workingValue5(waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3)
    while true do
      workingValue5 = Wait
      waitCall = 500
      workingValue5(waitCall)
      workingValue5 = GetEntityCoords
      waitCall = localValue11
      -- Beginner: result below is entityCoords.
      workingValue5 = workingValue5(waitCall)
      waitCall = localValue5.xy
      createVector3 = workingValue5.xy
      waitCall = waitCall - createVector3
      text7 = #waitCall
      number4 = number4 + 1
      waitCall = GetScriptTaskStatus
      createVector3 = localValue11
      createVector32 = "SCRIPT_TASK_START_SCENARIO_AT_POSITION"
      waitCall = waitCall(createVector3, createVector32)
      if 0 == waitCall or 7 == waitCall then
        break
      end
      createVector3 = IsPedUsingScenario
      createVector32 = localValue11
      number5 = dataCollection.scenario
      createVector3 = createVector3(createVector32, number5)
      if createVector3 then
        createVector3 = 0.4
        if text7 < createVector3 then
          dataCollection.isSitting = true
          break
      end
      else
        if nameValue < number4 then
          break
        end
        createVector3 = IsPedUsingScenario
        createVector32 = localValue11
        number5 = dataCollection.scenario
        createVector3 = createVector3(createVector32, number5)
        if not createVector3 then
          break
        end
      end
    end
  else
    workingValue5 = localValue3.animation
    waitCall = workingValue5.offset
    if waitCall then
      waitCall = workingValue5.offset
      waitCall = waitCall.xyz
      localValue5 = localValue5 + waitCall
      waitCall = workingValue5.offset
      waitCall = waitCall.w
      localValue6 = localValue6 + waitCall
    end
    dataCollection.targetPos = localValue5
    waitCall = SetEntityCollision
    createVector3 = localValue11
    createVector32 = false
    number5 = false
    waitCall(createVector3, createVector32, number5)
    waitCall = FreezeEntityPosition
    createVector3 = localValue11
    createVector32 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    waitCall(createVector3, createVector32)
    waitCall = SetEntityCoords
    createVector3 = localValue11
    createVector32 = localValue5.x
    number5 = localValue5.y
    number6 = localValue5.z
    number7 = false
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    waitCall(createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3)
    waitCall = SetEntityHeading
    createVector3 = localValue11
    createVector32 = localValue6
    -- Beginner: Change the direction an entity is facing.
    waitCall(createVector3, createVector32)
    waitCall = text41
    createVector3 = workingValue5.dict
    waitCall(createVector3)
    waitCall = TaskPlayAnim
    createVector3 = localValue11
    createVector32 = workingValue5.dict
    number5 = workingValue5.name
    number6 = 2.0
    number7 = 2.0
    stateFlag = -1
    stateFlag2 = workingValue5.stateFlag
    if not stateFlag2 then
      stateFlag2 = 1
    end
    stateFlag3 = 0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = false
    -- Beginner: Play an animation on a ped.
    waitCall(createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    waitCall = RemoveAnimDict
    createVector3 = workingValue5.dict
    waitCall(createVector3)
    dataCollection.plyFrozen = true
    dataCollection.isSitting = true
    dataCollection.animation = workingValue5
  end
  workingValue5 = dataCollection.isSitting
  if workingValue5 then
    workingValue5 = Wait
    waitCall = 350
    workingValue5(waitCall)
    workingValue5 = cmgOperation.ShowHelpText
    if workingValue5 then
      workingValue5 = TriggerEvent
      waitCall = "sit:helpTextThread"
      createVector3 = "isSitting"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
      workingValue5(waitCall, createVector3)
    end
    workingValue5 = TriggerEvent
    waitCall = "sit:checkThread"
    createVector3 = "isSitting"
    workingValue5(waitCall, createVector3)
  elseif text7 <= 2.0 then
    workingValue5 = TaskStartScenarioAtPosition
    waitCall = localValue11
    createVector3 = dataCollection.scenario
    createVector32 = localValue5.x
    number5 = localValue5.y
    number6 = localValue5.z
    number7 = localValue6
    stateFlag = -1
    stateFlag2 = false
    stateFlag3 = true
    -- Beginner: Make an NPC start a GTA scenario/ambient animation.
    workingValue5(waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3)
    dataCollection.lastPos = workingValue
    dataCollection.isSitting = true
    workingValue5 = Wait
    waitCall = 350
    workingValue5(waitCall)
    workingValue5 = cmgOperation.ShowHelpText
    if workingValue5 then
      workingValue5 = TriggerEvent
      waitCall = "sit:helpTextThread"
      createVector3 = "isSitting"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
      workingValue5(waitCall, createVector3)
    end
    workingValue5 = TriggerEvent
    waitCall = "sit:checkThread"
    createVector3 = "isSitting"
    workingValue5(waitCall, createVector3)
  else
    workingValue5 = text17
    waitCall = true
    createVector3 = false
    createVector32 = false
    workingValue5(waitCall, createVector3, createVector32)
  end
  dataCollection.attAction = false
end

-- === HELPER FUNCTION (decompiler name: text27; parameters: none) ===
function text27()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3
  localValue1 = dataCollection.attAction
  if localValue1 then
    localValue1 = text40
    localValue2 = cmgOperation.Lang
    localValue2 = localValue2.Notification
    localValue2 = localValue2.AlreadyAttemptingToSit
    localValue1(localValue2)
    return
  end
  localValue1 = GetEntityCoords
  localValue2 = PlayerPedId
  localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3 = localValue2()
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3)
  localValue2 = {}
  localValue2.entity = 0
  localValue3 = cmgOperation.MaxInteractionDist
  localValue2.dist = localValue3
  localValue3 = pairs
  localValue4 = text13
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.sit
    if localValue9 then
      localValue9 = GetClosestObjectOfType
      localValue10 = localValue1.x
      localValue11 = localValue1.y
      workingValue = localValue1.z
      nameValue = cmgOperation.MaxInteractionDist
      number = localValue7
      number2 = false
      text7 = true
      workingValue4 = true
      -- Beginner: result below is objectEntity.
      localValue9 = localValue9(localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4)
      if 0 ~= localValue9 then
        localValue10 = GetEntityCoords
        localValue11 = localValue9
        -- Beginner: result below is entityCoords.
        localValue10 = localValue10(localValue11)
        localValue10 = localValue10 - localValue1
        localValue10 = #localValue10
        localValue11 = localValue2.dist
        if localValue10 < localValue11 then
          localValue2.entity = localValue9
          localValue2.dist = localValue10
        end
      end
    end
  end
  localValue3 = pairs
  localValue4 = workingValue11
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.enabled
    if localValue9 then
      localValue9 = localValue8.radius
      if localValue9 then
        localValue9 = localValue8.center
        localValue9 = localValue9.xy
        localValue10 = localValue1.xy
        localValue9 = localValue9 - localValue10
        localValue9 = #localValue9
        localValue10 = localValue8.radius
        if not (localValue9 < localValue10) then
          goto continueAtStep99
        end
      end
      localValue9 = pairs
      localValue10 = localValue8.polys
      localValue9, localValue10, localValue11, workingValue = localValue9(localValue10)
      for nameValue, number in localValue9, localValue10, localValue11, workingValue do
        number2 = number.sit
        if number2 then
          number2 = pairs
          text7 = number.sit
          text7 = text7.seats
          number2, text7, workingValue4, number3 = number2(text7)
          for number4, workingValue5 in number2, text7, workingValue4, number3 do
            waitCall = workingValue5.xyz
            waitCall = waitCall - localValue1
            waitCall = #waitCall
            createVector3 = localValue2.dist
            if waitCall < createVector3 then
              localValue2.name = nameValue
              localValue2.group = localValue7
              localValue2.dist = waitCall
            end
          end
        end
      end
    end
    ::continueAtStep99::
  end
  localValue3 = localValue2.name
  if nil ~= localValue3 then
    localValue4 = localValue2.group
    localValue3 = workingValue11
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.polys
    localValue4 = localValue2.name
    localValue3 = localValue3[localValue4]
    localValue4 = text26
    localValue5 = {}
    localValue5.entity = 0
    localValue6 = localValue2.name
    localValue5.poly = localValue6
    localValue6 = localValue3.sit
    localValue5.sit = localValue6
    localValue5.raycast = false
    localValue4(localValue5)
  else
    localValue3 = localValue2.entity
    if 0 ~= localValue3 then
      localValue3 = text26
      localValue4 = {}
      localValue5 = localValue2.entity
      localValue4.entity = localValue5
      localValue4.poly = false
      localValue5 = GetEntityModel
      localValue6 = localValue2.entity
      -- Beginner: result below is modelHash.
      localValue5 = localValue5(localValue6)
      localValue6 = text13
      localValue5 = localValue6[localValue5]
      localValue5 = localValue5.sit
      localValue4.sit = localValue5
      localValue4.raycast = false
      localValue3(localValue4)
    else
      localValue3 = text40
      localValue4 = cmgOperation.Lang
      localValue4 = localValue4.Notification
      localValue4 = localValue4.NoFound
      localValue3(localValue4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text28; parameters: localValue1) ===
function text28(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall
  dataCollection.attAction = true
  dataCollection.isSitting = false
  dataCollection.plyFrozen = true
  dataCollection.scenario = false
  dataCollection.teleportOut = false
  localValue2 = localValue1.entity
  dataCollection.entity = localValue2
  localValue2 = localValue1.poly
  dataCollection.poly = localValue2
  localValue2 = localValue1.bed
  localValue2 = localValue2.type
  dataCollection.type = localValue2
  localValue2 = localValue1.bed
  localValue3 = nil
  localValue4 = localValue1.entity
  if localValue4 then
    localValue4 = GetEntityRotation
    localValue5 = localValue1.entity
    localValue4 = localValue4(localValue5)
    localValue5 = localValue4.x
    localValue6 = localValue4.y
    if localValue5 < 0.0 then
      localValue5 = localValue5 * -1
    end
    if localValue6 < 0.0 then
      localValue6 = localValue6 * -1
    end
    localValue7 = localValue5 + localValue6
    localValue8 = cmgOperation.MaxTilt
    if localValue7 > localValue8 then
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.TooTilted
      localValue8(localValue9)
      dataCollection.attAction = false
      return
    end
    localValue8 = GetEntityCoords
    localValue9 = localValue1.entity
    -- Beginner: result below is entityCoords.
    localValue8 = localValue8(localValue9)
    localValue9 = vector4
    localValue10 = localValue8.x
    localValue11 = localValue8.y
    workingValue = localValue8.z
    nameValue = GetEntityHeading
    number = localValue1.entity
    nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall = nameValue(number)
    localValue9 = localValue9(localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall)
    localValue3 = localValue9
  end
  localValue4 = localValue2.skipOccupiedCheck
  if not localValue4 then
    localValue4 = false
  end
  localValue5 = text16
  localValue6 = localValue3
  localValue7 = localValue2.seats
  localValue8 = localValue1.raycast
  localValue9 = localValue4
  localValue5, localValue6 = localValue5(localValue6, localValue7, localValue8, localValue9)
  if nil == localValue5 then
    localValue7 = GetEntityModel
    localValue8 = localValue1.entity
    -- Beginner: result below is modelHash.
    localValue7 = localValue7(localValue8)
    localValue8 = cmgOperation.SitTypes
    localValue9 = localValue2.type
    localValue8 = localValue8[localValue9]
    if localValue8 then
      localValue8 = text
      localValue9 = localValue7
      localValue8 = localValue8(localValue9)
      if 1 ~= localValue8 then
        localValue8 = text40
        localValue9 = cmgOperation.Lang
        localValue9 = localValue9.Notification
        localValue9 = localValue9.NoAvailable
        localValue8(localValue9)
    end
    else
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.OccupiedSit
      localValue8(localValue9)
    end
    dataCollection.attAction = false
    return
  end
  if nil == localValue6 then
    localValue7 = text40
    localValue8 = cmgOperation.Lang
    localValue8 = localValue8.Notification
    localValue8 = localValue8.NoAvailable
    localValue7(localValue8)
    localValue7 = print
    localValue8 = "^1Error: Heading was nil!"
    localValue9 = localValue6
    localValue7(localValue8, localValue9)
    dataCollection.attAction = false
    return
  end
  if not localValue4 then
    localValue7 = text10
    localValue8 = localValue5
    localValue9 = "lay"
    localValue7 = localValue7(localValue8, localValue9)
    if not localValue7 then
      localValue7 = text40
      localValue8 = cmgOperation.Lang
      localValue8 = localValue8.Notification
      localValue8 = localValue8.OccupiedLay
      localValue7(localValue8)
      dataCollection.attAction = false
      return
    end
  end
  localValue7 = localValue2.skipSeeCheck
  if not localValue7 then
    localValue7 = false
  end
  if not localValue7 then
    localValue8 = text23
    localValue9 = localValue5
    localValue10 = localValue1.entity
    localValue8 = localValue8(localValue9, localValue10)
    if not localValue8 then
      localValue8 = text40
      localValue9 = cmgOperation.Lang
      localValue9 = localValue9.Notification
      localValue9 = localValue9.CannotReachBed
      localValue8(localValue9)
      dataCollection.attAction = false
      return
    end
  end
  localValue8 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue8 = localValue8()
  localValue9 = cmgOperation.AlwaysTeleportOutOfSeat
  if not localValue9 then
    localValue9 = cmgOperation.LayTypes
    localValue10 = localValue2.type
    localValue9 = localValue9[localValue10]
    localValue9 = localValue9.teleportOut
    if not localValue9 then
      localValue9 = localValue2.teleportOut
      if not localValue9 then
        goto continueAtStep159
      end
    end
  end
  dataCollection.teleportOut = true
  localValue9 = GetEntityCoords
  localValue10 = localValue8
  -- Beginner: result below is entityCoords.
  localValue9 = localValue9(localValue10)
  dataCollection.lastPos = localValue9
  ::continueAtStep159::
  localValue9 = nil
  localValue10 = cmgOperation.LayTypes
  localValue11 = localValue2.type
  localValue10 = localValue10[localValue11]
  if localValue10 then
    localValue10 = cmgOperation.LayTypes
    localValue11 = localValue2.type
    localValue10 = localValue10[localValue11]
    localValue9 = localValue10.animation
  else
    localValue10 = print
    localValue11 = "^3Warning: No animation settings were set for type^2"
    workingValue = localValue2.type
    nameValue = "^3 in Config.LayTypes, the default animation settings were used instead!"
    localValue10(localValue11, workingValue, nameValue)
    localValue10 = cmgOperation.LayTypes
    localValue10 = localValue10.default
    localValue9 = localValue10.animation
  end
  dataCollection.animation = localValue9
  localValue10 = localValue9.offset
  if localValue10 then
    localValue10 = text5
    localValue11 = localValue5
    workingValue = vector3
    nameValue = 0.0
    number = 0.0
    number2 = text4
    text7 = localValue6
    number2, text7, workingValue4, number3, number4, workingValue5, waitCall = number2(text7)
    workingValue = workingValue(nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall)
    nameValue = localValue9.offset
    nameValue = nameValue.xyz
    localValue10 = localValue10(localValue11, workingValue, nameValue)
    localValue5 = localValue10
    localValue10 = localValue9.offset
    localValue10 = localValue10.w
    localValue6 = localValue6 + localValue10
    localValue10 = 360
    if localValue6 > localValue10 then
      localValue6 = localValue6 - 360
    end
  end
  localValue10 = text41
  localValue11 = localValue9.dict
  localValue10(localValue11)
  localValue10 = ClearPedTasksImmediately
  localValue11 = localValue8
  localValue10(localValue11)
  localValue10 = SetEntityCollision
  localValue11 = localValue8
  workingValue = false
  nameValue = false
  localValue10(localValue11, workingValue, nameValue)
  localValue10 = FreezeEntityPosition
  localValue11 = localValue8
  workingValue = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue10(localValue11, workingValue)
  localValue10 = SetEntityCoords
  localValue11 = localValue8
  workingValue = localValue5.x
  nameValue = localValue5.y
  number = localValue5.z
  number2 = false
  text7 = false
  workingValue4 = false
  number3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue10(localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3)
  localValue10 = SetEntityHeading
  localValue11 = localValue8
  workingValue = localValue6
  -- Beginner: Change the direction an entity is facing.
  localValue10(localValue11, workingValue)
  localValue10 = TaskPlayAnim
  localValue11 = localValue8
  workingValue = localValue9.dict
  nameValue = localValue9.name
  number = 2.0
  number2 = 2.0
  text7 = -1
  workingValue4 = localValue9.stateFlag
  if not workingValue4 then
    workingValue4 = 1
  end
  number3 = 0
  number4 = false
  workingValue5 = false
  waitCall = false
  -- Beginner: Play an animation on a ped.
  localValue10(localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall)
  localValue10 = RemoveAnimDict
  localValue11 = localValue9.dict
  localValue10(localValue11)
  localValue10 = Wait
  localValue11 = 350
  localValue10(localValue11)
  dataCollection.isLaying = true
  dataCollection.attAction = false
  dataCollection.targetPos = localValue5
  localValue10 = cmgOperation.ShowHelpText
  if localValue10 then
    localValue10 = TriggerEvent
    localValue11 = "sit:helpTextThread"
    workingValue = "isLaying"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
    localValue10(localValue11, workingValue)
  end
  localValue10 = TriggerEvent
  localValue11 = "sit:checkThread"
  workingValue = "isLaying"
  localValue10(localValue11, workingValue)
end

-- === HELPER FUNCTION (decompiler name: text29; parameters: none) ===
function text29()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4
  localValue1 = dataCollection.attAction
  if localValue1 then
    localValue1 = text40
    localValue2 = cmgOperation.Lang
    localValue2 = localValue2.Notification
    localValue2 = localValue2.AlreadyAttemptingToLay
    localValue1(localValue2)
    return
  end
  localValue1 = GetEntityCoords
  localValue2 = PlayerPedId
  localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4 = localValue2()
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4)
  localValue2 = {}
  localValue2.entity = 0
  localValue3 = cmgOperation.MaxInteractionDist
  localValue2.dist = localValue3
  localValue3 = pairs
  localValue4 = text13
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.lay
    if localValue9 then
      localValue9 = GetClosestObjectOfType
      localValue10 = localValue1.x
      localValue11 = localValue1.y
      workingValue = localValue1.z
      nameValue = cmgOperation.MaxInteractionDist
      number = localValue7
      number2 = false
      text7 = true
      workingValue4 = true
      -- Beginner: result below is objectEntity.
      localValue9 = localValue9(localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4)
      if 0 ~= localValue9 then
        localValue10 = GetEntityCoords
        localValue11 = localValue9
        -- Beginner: result below is entityCoords.
        localValue10 = localValue10(localValue11)
        localValue10 = localValue10 - localValue1
        localValue10 = #localValue10
        localValue11 = localValue2.dist
        if localValue10 < localValue11 then
          localValue2.entity = localValue9
          localValue2.dist = localValue10
        end
      end
    end
  end
  localValue3 = pairs
  localValue4 = workingValue11
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.enabled
    if localValue9 then
      localValue9 = localValue8.radius
      if localValue9 then
        localValue9 = localValue8.center
        localValue9 = localValue9.xy
        localValue10 = localValue1.xy
        localValue9 = localValue9 - localValue10
        localValue9 = #localValue9
        localValue10 = localValue8.radius
        if not (localValue9 < localValue10) then
          goto continueAtStep94
        end
      end
      localValue9 = pairs
      localValue10 = localValue8.polys
      localValue9, localValue10, localValue11, workingValue = localValue9(localValue10)
      for nameValue, number in localValue9, localValue10, localValue11, workingValue do
        number2 = number.lay
        if number2 then
          number2 = number.lay
          number2 = number2.seats
          number2 = number2[1]
          number2 = number2.xyz
          number2 = number2 - localValue1
          number2 = #number2
          text7 = localValue2.dist
          if number2 < text7 then
            localValue2.name = nameValue
            localValue2.group = localValue7
            localValue2.dist = number2
          end
        end
      end
    end
    ::continueAtStep94::
  end
  localValue3 = localValue2.name
  if nil ~= localValue3 then
    localValue4 = localValue2.group
    localValue3 = workingValue11
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.polys
    localValue4 = localValue2.name
    localValue3 = localValue3[localValue4]
    localValue4 = text28
    localValue5 = {}
    localValue5.entity = 0
    localValue6 = localValue2.name
    localValue5.poly = localValue6
    localValue6 = localValue3.lay
    localValue5.bed = localValue6
    localValue5.raycast = false
    localValue4(localValue5)
  else
    localValue3 = localValue2.entity
    if 0 ~= localValue3 then
      localValue3 = text28
      localValue4 = {}
      localValue5 = localValue2.entity
      localValue4.entity = localValue5
      localValue4.poly = false
      localValue5 = GetEntityModel
      localValue6 = localValue2.entity
      -- Beginner: result below is modelHash.
      localValue5 = localValue5(localValue6)
      localValue6 = text13
      localValue5 = localValue6[localValue5]
      localValue5 = localValue5.lay
      localValue4.bed = localValue5
      localValue4.raycast = false
      localValue3(localValue4)
    else
      localValue3 = text40
      localValue4 = cmgOperation.Lang
      localValue4 = localValue4.Notification
      localValue4 = localValue4.NoBedFound
      localValue3(localValue4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text30; parameters: none) ===
function text30()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7
  localValue1 = true
  localValue2 = cmgOperation.LayTypes
  localValue3 = dataCollection.type
  localValue2 = localValue2[localValue3]
  localValue2 = localValue2.exitAnim
  if not localValue2 then
    localValue2 = cmgOperation.LayTypes
    localValue2 = localValue2.default
    localValue2 = localValue2.exitAnim
  end
  dataCollection.isLaying = false
  localValue3 = dataCollection.teleportOut
  if localValue3 then
    localValue3 = ClearPedTasksImmediately
    localValue4 = PlayerPedId
    localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7 = localValue4()
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7)
    localValue3 = SetEntityCoords
    localValue4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue4 = localValue4()
    localValue5 = dataCollection.lastPos
    localValue5 = localValue5.x
    localValue6 = dataCollection.lastPos
    localValue6 = localValue6.y
    localValue7 = dataCollection.lastPos
    localValue7 = localValue7.z
    localValue7 = localValue7 - 0.95
    localValue8 = false
    localValue9 = false
    localValue10 = false
    localValue11 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    localValue1 = false
  elseif localValue2 then
    localValue3 = cmgOperation.LayTypes
    localValue4 = dataCollection.type
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.exitAnimType
    if not localValue3 then
      localValue3 = cmgOperation.LayTypes
      localValue3 = localValue3.default
      localValue3 = localValue3.exitAnimType
    end
    localValue4 = nil
    if 0 == localValue3 then
      localValue5 = GetGameplayCamRelativeHeading
      localValue5 = localValue5()
      if localValue5 < 0 then
        localValue4 = "m_getout_l"
      else
        localValue4 = "m_getout_r"
      end
    elseif 1 == localValue3 then
      localValue4 = "m_getout_l"
    elseif 2 == localValue3 then
      localValue4 = "m_getout_r"
    else
      localValue5 = print
      localValue6 = "^1Error: exitAnimType:"
      localValue7 = localValue3
      localValue8 = "was not an expcted type, please correct this, setting type to 1 for this instance (\"m_getout_r\")."
      localValue5(localValue6, localValue7, localValue8)
      localValue4 = "m_getout_r"
    end
    localValue5 = text41
    localValue6 = "savem_default@"
    localValue5(localValue6)
    localValue5 = TaskPlayAnim
    localValue6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue6 = localValue6()
    localValue7 = "savem_default@"
    localValue8 = localValue4
    localValue9 = 1.0
    localValue10 = 1.0
    localValue11 = 3000
    workingValue = 0
    nameValue = 0
    number = false
    number2 = false
    text7 = false
    -- Beginner: Play an animation on a ped.
    localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7)
    localValue5 = RemoveAnimDict
    localValue6 = "savem_default@"
    localValue5(localValue6)
    localValue5 = SetEntityCollision
    localValue6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue6 = localValue6()
    localValue7 = true
    localValue8 = false
    localValue5(localValue6, localValue7, localValue8)
    localValue5 = FreezeEntityPosition
    localValue6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue6 = localValue6()
    localValue7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    localValue5(localValue6, localValue7)
    localValue5 = Wait
    localValue6 = 1400
    localValue5(localValue6)
    localValue1 = false
  end
  localValue3 = {}
  dataCollection.animation = localValue3
  localValue3 = text17
  localValue4 = localValue1
  localValue5 = false
  localValue6 = false
  localValue3(localValue4, localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: text31; parameters: none) ===
function text31()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = IsPedUsingScenario
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = dataCollection.scenario
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = dataCollection.isSitting
    if not localValue1 then
      goto continueAtStep14
    end
  end
  localValue1 = text18
  localValue1()
  goto continueAtStep29
  ::continueAtStep14::
  localValue1 = dataCollection.isLaying
  if localValue1 then
    localValue1 = text30
    localValue1()
  else
    localValue1 = dataCollection.attAction
    if localValue1 then
      dataCollection.attAction = false
      localValue1 = text17
      localValue2 = true
      localValue3 = false
      localValue4 = false
      localValue1(localValue2, localValue3, localValue4)
    end
  end
  ::continueAtStep29::
end

-- === HELPER FUNCTION (decompiler name: text32; parameters: localValue1, localValue2) ===
function text32(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = cmgOperation.Target
  if "ox_target" == localValue3 then
    localValue3 = exports
    localValue3 = localValue3.ox_target
    localValue4 = localValue3
    localValue3 = localValue3.addModel
    localValue5 = localValue1
    localValue6 = localValue2
    localValue3(localValue4, localValue5, localValue6)
  else
    localValue3 = exports
    localValue4 = cmgOperation.Target
    localValue3 = localValue3[localValue4]
    localValue4 = localValue3
    localValue3 = localValue3.AddTargetModel
    localValue5 = localValue1
    localValue6 = {}
    localValue6.options = localValue2
    localValue7 = cmgOperation.MaxInteractionDist
    localValue6.distance = localValue7
    localValue3(localValue4, localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: text34; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9) ===
function text34(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
  local localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4
  localValue10 = cmgOperation.Target
  if "ox_target" == localValue10 then
    localValue10 = exports
    localValue10 = localValue10.ox_target
    localValue11 = localValue10
    localValue10 = localValue10.addSphereZone
    workingValue = {}
    workingValue.coords = localValue2
    workingValue.radius = localValue3
    nameValue = cmgOperation.DebugPoly
    if not nameValue then
      nameValue = localValue9
    end
    workingValue.debug = nameValue
    workingValue.options = localValue8
    localValue10(localValue11, workingValue)
  else
    localValue10 = exports
    localValue11 = cmgOperation.Target
    localValue10 = localValue10[localValue11]
    localValue11 = localValue10
    localValue10 = localValue10.AddCircleZone
    workingValue = localValue1
    nameValue = localValue2
    number = localValue3
    number2 = {}
    number2.name = localValue1
    number2.heading = localValue4
    text7 = cmgOperation.DebugPoly
    if not text7 then
      text7 = localValue9
    end
    number2.debugPoly = text7
    number2.minZ = localValue5
    number2.maxZ = localValue6
    number2.useZ = localValue7
    text7 = {}
    text7.options = localValue8
    workingValue4 = cmgOperation.MaxInteractionDist
    text7.distance = workingValue4
    localValue10(localValue11, workingValue, nameValue, number, number2, text7)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11) ===
function workingValue16(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
  local workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5
  workingValue = cmgOperation.Target
  if "ox_target" == workingValue then
    workingValue = exports
    workingValue = workingValue.ox_target
    nameValue = workingValue
    workingValue = workingValue.addBoxZone
    number = {}
    number.coords = localValue2
    number2 = vector3
    text7 = localValue5
    workingValue4 = localValue4
    number3 = localValue6
    number2 = number2(text7, workingValue4, number3)
    number.size = number2
    number.rotation = localValue3
    number2 = cmgOperation.DebugPoly
    if not number2 then
      number2 = localValue11
    end
    number.debug = number2
    number.options = localValue10
    workingValue(nameValue, number)
  else
    workingValue = exports
    nameValue = cmgOperation.Target
    workingValue = workingValue[nameValue]
    nameValue = workingValue
    workingValue = workingValue.AddBoxZone
    number = localValue1
    number2 = localValue2
    text7 = localValue4
    workingValue4 = localValue5
    number3 = {}
    number3.name = localValue1
    number3.heading = localValue3
    number4 = cmgOperation.DebugPoly
    if not number4 then
      number4 = localValue11
    end
    number3.debugPoly = number4
    number3.minZ = localValue7
    number3.maxZ = localValue8
    number4 = {}
    number4.options = localValue10
    workingValue5 = cmgOperation.MaxInteractionDist
    number4.distance = workingValue5
    workingValue(nameValue, number, number2, text7, workingValue4, number3, number4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2, localValue3) ===
function workingValue17(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = dataCollection.attAction
  if not localValue4 then
    localValue4 = dataCollection.isLaying
    if localValue4 then
      localValue4 = text30
      localValue4()
    else
      localValue4 = text28
      localValue5 = {}
      localValue5.entity = localValue1
      localValue5.poly = localValue2
      localValue6 = localValue3.lay
      localValue5.bed = localValue6
      localValue5.raycast = true
      localValue4(localValue5)
    end
  else
    localValue4 = text40
    localValue5 = cmgOperation.Lang
    localValue5 = localValue5.Notification
    localValue5 = localValue5.AlreadyAttemptingToLay
    localValue4(localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2, localValue3) ===
function workingValue18(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = dataCollection.attAction
  if not localValue4 then
    localValue4 = dataCollection.isSitting
    if not localValue4 then
      localValue4 = dataCollection.isLaying
      if not localValue4 then
        goto continueAtStep26
      end
    end
    localValue4 = dataCollection.poly
    if localValue2 == localValue4 then
      localValue4 = text26
      localValue5 = {}
      localValue5.entity = localValue1
      localValue5.poly = localValue2
      localValue6 = localValue3.sit
      localValue5.sit = localValue6
      localValue5.raycast = true
      localValue4(localValue5)
    else
      localValue4 = text18
      localValue4()
      goto continueAtStep41
      ::continueAtStep26::
      localValue4 = text26
      localValue5 = {}
      localValue5.entity = localValue1
      localValue5.poly = localValue2
      localValue6 = localValue3.sit
      localValue5.sit = localValue6
      localValue5.raycast = true
      localValue4(localValue5)
    end
  else
    localValue4 = text40
    localValue5 = cmgOperation.Lang
    localValue5 = localValue5.Notification
    localValue5 = localValue5.AlreadyAttemptingToSit
    localValue4(localValue5)
  end
  ::continueAtStep41::
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = {}
  localValue2 = pairs
  localValue3 = text13
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.lay
    if localValue8 then
      localValue8 = #localValue1
      localValue8 = localValue8 + 1
      localValue1[localValue8] = localValue6
    end
  end
  localValue2 = {}
  localValue3 = {}
  localValue4 = cmgOperation.Targeting
  localValue4 = localValue4.LayIcon
  localValue3.icon = localValue4
  localValue4 = cmgOperation.Targeting
  localValue4 = localValue4.LayLabel
  localValue3.label = localValue4
  localValue2[1] = localValue3
  localValue3 = cmgOperation.Target
  if "ox_target" == localValue3 then
    localValue3 = localValue2[1]
    localValue4 = cmgOperation.MaxInteractionDist
    localValue3.distance = localValue4
    localValue3 = localValue2[1]

    -- === HELPER FUNCTION: localValue4(localValue12) ===
    function localValue4(localValue12)
      local localValue22, localValue32, workingValue19, stateFlag7, workingValue31
      localValue22 = GetEntityModel
      localValue32 = localValue12.entity
      -- Beginner: result below is modelHash.
      localValue22 = localValue22(localValue32)
      localValue32 = text13
      localValue22 = localValue32[localValue22]
      localValue32 = workingValue17
      workingValue19 = localValue12.entity
      stateFlag7 = false
      workingValue31 = localValue22
      localValue32(workingValue19, stateFlag7, workingValue31)
    end
    localValue3.onSelect = localValue4
  else
    localValue3 = localValue2[1]

    -- === HELPER FUNCTION: localValue4(localValue12) ===
    function localValue4(localValue12)
      local localValue22, localValue32, workingValue19, stateFlag7, workingValue31
      localValue22 = GetEntityModel
      localValue32 = localValue12
      -- Beginner: result below is modelHash.
      localValue22 = localValue22(localValue32)
      localValue32 = text13
      localValue22 = localValue32[localValue22]
      localValue32 = workingValue17
      workingValue19 = localValue12
      stateFlag7 = false
      workingValue31 = localValue22
      localValue32(workingValue19, stateFlag7, workingValue31)
    end
    localValue3.action = localValue4
  end
  localValue3 = text32
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: none) ===
function workingValue21()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = {}
  localValue2 = pairs
  localValue3 = text13
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue7.sit
    if localValue8 then
      localValue8 = #localValue1
      localValue8 = localValue8 + 1
      localValue1[localValue8] = localValue6
    end
  end
  localValue2 = {}
  localValue3 = {}
  localValue4 = cmgOperation.Targeting
  localValue4 = localValue4.SitIcon
  localValue3.icon = localValue4
  localValue4 = cmgOperation.Targeting
  localValue4 = localValue4.SitLabel
  localValue3.label = localValue4
  localValue2[1] = localValue3
  localValue3 = cmgOperation.Target
  if "ox_target" == localValue3 then
    localValue3 = localValue2[1]
    localValue4 = cmgOperation.MaxInteractionDist
    localValue3.distance = localValue4
    localValue3 = localValue2[1]

    -- === HELPER FUNCTION: localValue4(localValue12) ===
    function localValue4(localValue12)
      local localValue22, localValue32, workingValue19, stateFlag7, workingValue31
      localValue22 = GetEntityModel
      localValue32 = localValue12.entity
      -- Beginner: result below is modelHash.
      localValue22 = localValue22(localValue32)
      localValue32 = text13
      localValue22 = localValue32[localValue22]
      localValue32 = workingValue18
      workingValue19 = localValue12.entity
      stateFlag7 = false
      workingValue31 = localValue22
      localValue32(workingValue19, stateFlag7, workingValue31)
    end
    localValue3.onSelect = localValue4
  else
    localValue3 = localValue2[1]

    -- === HELPER FUNCTION: localValue4(localValue12) ===
    function localValue4(localValue12)
      local localValue22, localValue32, workingValue19, stateFlag7, workingValue31
      localValue22 = GetEntityModel
      localValue32 = localValue12
      -- Beginner: result below is modelHash.
      localValue22 = localValue22(localValue32)
      localValue32 = text13
      localValue22 = localValue32[localValue22]
      localValue32 = workingValue18
      workingValue19 = localValue12
      stateFlag7 = false
      workingValue31 = localValue22
      localValue32(workingValue19, stateFlag7, workingValue31)
    end
    localValue3.action = localValue4
  end
  localValue3 = text32
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
function workingValue22()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5, waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4
  localValue1 = pairs
  localValue2 = workingValue11
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.enabled
    if localValue7 then
      localValue7 = pairs
      localValue8 = localValue6.polys
      localValue7, localValue8, localValue9, localValue10 = localValue7(localValue8)
      for localValue11, workingValue in localValue7, localValue8, localValue9, localValue10 do
        nameValue = cmgOperation.Target
        if "ox_target" ~= nameValue then
          nameValue = exports
          number = cmgOperation.Target
          nameValue = nameValue[number]
          number = nameValue
          nameValue = nameValue.RemoveZone
          number2 = localValue11
          nameValue(number, number2)
        end
        nameValue = workingValue.poly
        if nil == nameValue then
          nameValue = print
          number = "^1Error: PolyZone '"
          number2 = localValue11
          text7 = "' could not be generated! (lacks poly specifications)"
          number = number .. number2 .. text7
          nameValue(number)
        else
          nameValue = workingValue.lay
          if nil == nameValue then
            nameValue = workingValue.sit
            if nil == nameValue then
              nameValue = print
              number = "^1Error: PolyZone '"
              number2 = localValue11
              text7 = "' could not be generated! (no action assinged)"
              number = number .. number2 .. text7
              nameValue(number)
          end
          else
            nameValue = "sit"
            number = {}
            number2 = workingValue.lay
            if number2 then
              nameValue = "lay"
              number2 = #number
              number2 = number2 + 1
              text7 = {}
              workingValue4 = cmgOperation.Targeting
              workingValue4 = workingValue4.LayIcon
              text7.icon = workingValue4
              workingValue4 = cmgOperation.Targeting
              workingValue4 = workingValue4.LayLabel
              text7.label = workingValue4
              number[number2] = text7
              number2 = cmgOperation.Target
              if "ox_target" == number2 then
                number2 = #number
                number2 = number[number2]
                text7 = cmgOperation.MaxInteractionDist
                number2.distance = text7
                number2 = #number
                number2 = number[number2]

                -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
                function text7()
                  local localValue12, localValue22, localValue32, workingValue19
                  localValue12 = workingValue17
                  localValue22 = 0
                  localValue32 = localValue11
                  workingValue19 = workingValue
                  localValue12(localValue22, localValue32, workingValue19)
                end
                number2.onSelect = text7
              else
                number2 = #number
                number2 = number[number2]

                -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
                function text7()
                  local localValue12, localValue22, localValue32, workingValue19
                  localValue12 = workingValue17
                  localValue22 = 0
                  localValue32 = localValue11
                  workingValue19 = workingValue
                  localValue12(localValue22, localValue32, workingValue19)
                end
                number2.action = text7
              end
            end
            number2 = workingValue.sit
            if number2 then
              nameValue = "sit"
              number2 = #number
              number2 = number2 + 1
              text7 = {}
              workingValue4 = cmgOperation.Targeting
              workingValue4 = workingValue4.SitIcon
              text7.icon = workingValue4
              workingValue4 = cmgOperation.Targeting
              workingValue4 = workingValue4.SitLabel
              text7.label = workingValue4
              number[number2] = text7
              number2 = cmgOperation.Target
              if "ox_target" == number2 then
                number2 = #number
                number2 = number[number2]
                text7 = cmgOperation.MaxInteractionDist
                number2.distance = text7
                number2 = #number
                number2 = number[number2]

                -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
                function text7()
                  local localValue12, localValue22, localValue32, workingValue19
                  localValue12 = workingValue18
                  localValue22 = 0
                  localValue32 = localValue11
                  workingValue19 = workingValue
                  localValue12(localValue22, localValue32, workingValue19)
                end
                number2.onSelect = text7
              else
                number2 = #number
                number2 = number[number2]

                -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
                function text7()
                  local localValue12, localValue22, localValue32, workingValue19
                  localValue12 = workingValue18
                  localValue22 = 0
                  localValue32 = localValue11
                  workingValue19 = workingValue
                  localValue12(localValue22, localValue32, workingValue19)
                end
                number2.action = text7
              end
            end
            number2 = workingValue.poly
            number2 = number2.minZ
            if not number2 then
              number2 = workingValue.poly
              number2 = number2.center
              if number2 then
                number2 = workingValue.poly
                number2 = number2.center
                number2 = number2.z
                text7 = workingValue.poly
                text7 = text7.height
                text7 = text7 / 2
                number2 = number2 - text7
                if number2 then
                  goto continueAtStep140
                end
              end
              number2 = workingValue[nameValue]
              number2 = number2.seats
              number2 = number2[1]
              number2 = number2.z
              text7 = workingValue.poly
              text7 = text7.height
              text7 = text7 / 2
              number2 = number2 - text7
            end
            ::continueAtStep140::
            text7 = workingValue.poly
            text7 = text7.maxZ
            if not text7 then
              text7 = workingValue.poly
              text7 = text7.center
              if text7 then
                text7 = workingValue.poly
                text7 = text7.center
                text7 = text7.z
                workingValue4 = workingValue.poly
                workingValue4 = workingValue4.height
                workingValue4 = workingValue4 / 2
                text7 = text7 + workingValue4
                if text7 then
                  goto continueAtStep169
                end
              end
              text7 = workingValue[nameValue]
              text7 = text7.seats
              text7 = text7[1]
              text7 = text7.z
              workingValue4 = workingValue.poly
              workingValue4 = workingValue4.height
              workingValue4 = workingValue4 / 2
              text7 = text7 + workingValue4
            end
            ::continueAtStep169::
            workingValue4 = workingValue.poly
            workingValue4 = workingValue4.heading
            if not workingValue4 then
              workingValue4 = workingValue[nameValue]
              workingValue4 = workingValue4.seats
              workingValue4 = workingValue4[1]
              workingValue4 = workingValue4.w
            end
            number3 = workingValue.poly
            number3 = number3.center
            if not number3 then
              number3 = workingValue[nameValue]
              number3 = number3.seats
              number3 = number3[1]
              number3 = number3.xyz
            end
            number4 = workingValue.poly
            number4 = number4.type
            if "circle" == number4 then
              number4 = workingValue.poly
              number4 = number4.radius
              if nil == number4 then
                workingValue5 = print
                waitCall = "^3Warning: PolyZone '"
                createVector3 = localValue11
                createVector32 = "' did not have a specified radius! Radius was automatically set to 1.5!"
                waitCall = waitCall .. createVector3 .. createVector32
                workingValue5(waitCall)
                number4 = 1.5
              end
              workingValue5 = text34
              waitCall = localValue11
              createVector3 = number3
              createVector32 = number4
              number5 = workingValue4
              number6 = number2
              number7 = text7
              stateFlag = true
              stateFlag2 = number
              stateFlag3 = localValue6.debug
              workingValue5(waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3)
            else
              number4 = workingValue16
              workingValue5 = localValue11
              waitCall = number3
              createVector3 = workingValue4
              createVector32 = workingValue.poly
              createVector32 = createVector32.length
              number5 = workingValue.poly
              number5 = number5.width
              number6 = workingValue.poly
              number6 = number6.height
              number7 = number2
              stateFlag = text7
              stateFlag2 = true
              stateFlag3 = number
              stateFlag4 = localValue6.debug
              number4(workingValue5, waitCall, createVector3, createVector32, number5, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4)
            end
          end
        end
      end
      localValue7 = print
      localValue8 = "^2Info: PolyZone group '"
      localValue9 = localValue5
      localValue10 = "' was generated."
      localValue8 = localValue8 .. localValue9 .. localValue10
      localValue7(localValue8)
    else
      localValue7 = print
      localValue8 = "^3Info: PolyZone group '"
      localValue9 = localValue5
      localValue10 = "' is disabled."
      localValue8 = localValue8 .. localValue9 .. localValue10
      localValue7(localValue8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = AddTextEntry
  localValue2 = "sit_getup_keyboard"
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = cmgOperation.Lang
  localValue4 = localValue4.KeyMapping
  localValue4 = localValue4.GetUp
  localValue5 = "~INPUT_BA1F4C6D~"
  localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = AddTextEntry
  localValue2 = "sit_getup_controller"
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = cmgOperation.Lang
  localValue4 = localValue4.KeyMapping
  localValue4 = localValue4.GetUp
  localValue5 = "~INPUT_6ED7AA10~"
  localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = cmgOperation.UsePrompts
  if localValue1 then
    localValue1 = AddTextEntry
    localValue2 = "sit_on_keyboard"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.SitDown
    localValue5 = "~INPUT_7BDD6276~"
    localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
    localValue1 = AddTextEntry
    localValue2 = "sit_down_controller"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.SitDown
    localValue5 = "~INPUT_53FA0B5E~"
    localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
    localValue1 = AddTextEntry
    localValue2 = "lay_on_keyboard"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.LayDown
    localValue5 = "~INPUT_C5CB4FDE~"
    localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
    localValue1 = AddTextEntry
    localValue2 = "lay_down_controller"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.LayDown
    localValue5 = "~INPUT_215CDC8A~"
    localValue3, localValue4, localValue5, localValue6, localValue7 = localValue3(localValue4, localValue5)
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
    localValue1 = AddTextEntry
    localValue2 = "both_on_keyboard"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.SitDown
    localValue5 = "~INPUT_7BDD6276~"
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "\n"
    localValue5 = string
    localValue5 = localValue5.format
    localValue6 = cmgOperation.Lang
    localValue6 = localValue6.KeyMapping
    localValue6 = localValue6.LayDown
    localValue7 = "~INPUT_C5CB4FDE~"
    localValue5 = localValue5(localValue6, localValue7)
    localValue3 = localValue3 .. localValue4 .. localValue5
    localValue1(localValue2, localValue3)
    localValue1 = AddTextEntry
    localValue2 = "both_down_controller"
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.KeyMapping
    localValue4 = localValue4.SitDown
    localValue5 = "~INPUT_53FA0B5E~"
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "\n"
    localValue5 = string
    localValue5 = localValue5.format
    localValue6 = cmgOperation.Lang
    localValue6 = localValue6.KeyMapping
    localValue6 = localValue6.LayDown
    localValue7 = "~INPUT_215CDC8A~"
    localValue5 = localValue5(localValue6, localValue7)
    localValue3 = localValue3 .. localValue4 .. localValue5
    localValue1(localValue2, localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue24(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9
  localValue5 = RegisterKeyMapping
  localValue6 = "+"
  localValue7 = localValue1
  localValue6 = localValue6 .. localValue7
  localValue7 = localValue2
  localValue8 = localValue3
  localValue9 = localValue4
  -- Beginner: Bind a command to a keyboard/controller key.
  localValue5(localValue6, localValue7, localValue8, localValue9)
  localValue5 = RegisterKeyMapping
  localValue6 = "-"
  localValue7 = localValue1
  localValue6 = localValue6 .. localValue7
  localValue7 = localValue2
  localValue8 = localValue3
  localValue9 = localValue4
  localValue5(localValue6, localValue7, localValue8, localValue9)
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2, localValue3) ===
function workingValue25(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue4 = 0
  localValue5 = 0
  localValue6 = CMG
  localValue6 = localValue6.registerCommand
  localValue7 = "+"
  localValue8 = localValue1
  localValue7 = localValue7 .. localValue8

  -- === HELPER FUNCTION: localValue8(localValue12, localValue22, localValue32) ===
  function localValue8(localValue12, localValue22, localValue32)
    local workingValue19, stateFlag7, workingValue31, workingValue32
    workingValue19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue19 = workingValue19()
    localValue4 = workingValue19
    workingValue19 = 0
    localValue5 = workingValue19
    while true do
      workingValue19 = localValue4
      if 0 == workingValue19 then
        break
      end
      workingValue19 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue19 = workingValue19()
      stateFlag7 = localValue4
      workingValue19 = workingValue19 - stateFlag7
      stateFlag7 = 500
      if workingValue19 > stateFlag7 then
        workingValue19 = localValue2
        stateFlag7 = localValue12
        workingValue31 = localValue22
        workingValue32 = localValue32
        workingValue19(stateFlag7, workingValue31, workingValue32)
        return
      end
      workingValue19 = Wait
      stateFlag7 = 0
      workingValue19(stateFlag7)
    end
  end
  localValue9 = localValue3
  localValue6(localValue7, localValue8, localValue9)
  localValue6 = CMG
  localValue6 = localValue6.registerCommand
  localValue7 = "-"
  localValue8 = localValue1
  localValue7 = localValue7 .. localValue8

  -- === HELPER FUNCTION: localValue8() ===
  function localValue8()
    local localValue12, localValue22
    localValue12 = localValue5
    if localValue12 > 0 then
      localValue12 = 0
      localValue4 = localValue12
    end
    localValue12 = localValue5
    localValue12 = localValue12 + 1
    localValue5 = localValue12
  end
  localValue9 = localValue3
  localValue6(localValue7, localValue8, localValue9)
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = workingValue25
  localValue2 = "siton"

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
    localValue12 = dataCollection.showingPrompt
    if localValue12 then
      localValue12 = ExecuteCommand
      localValue22 = "sit"
      localValue12(localValue22)
    end
  end
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue25
  localValue2 = "sitdown"

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
    localValue12 = dataCollection.showingPrompt
    if localValue12 then
      localValue12 = ExecuteCommand
      localValue22 = "sit"
      localValue12(localValue22)
    end
  end
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue25
  localValue2 = "layon"

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
    localValue12 = dataCollection.showingPrompt
    if localValue12 then
      localValue12 = ExecuteCommand
      localValue22 = "lay"
      localValue12(localValue22)
    end
  end
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue25
  localValue2 = "laydown"

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
    localValue12 = dataCollection.showingPrompt
    if localValue12 then
      localValue12 = ExecuteCommand
      localValue22 = "lay"
      localValue12(localValue22)
    end
  end
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = workingValue24
  localValue2 = "siton"
  localValue3 = cmgOperation.Lang
  localValue3 = localValue3.KeyBindingDesc
  localValue3 = localValue3.Keyboard
  localValue3 = localValue3.SitDown
  localValue4 = "keyboard"
  localValue5 = cmgOperation.DefaultKeybinds
  localValue5 = localValue5.SitDown
  localValue5 = localValue5.SitKeyboard
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = workingValue24
  localValue2 = "sitdown"
  localValue3 = cmgOperation.Lang
  localValue3 = localValue3.KeyBindingDesc
  localValue3 = localValue3.PadAnalog
  localValue3 = localValue3.SitDown
  localValue4 = "PAD_ANALOGBUTTON"
  localValue5 = cmgOperation.DefaultKeybinds
  localValue5 = localValue5.SitDown
  localValue5 = localValue5.SitPadAnalog
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = workingValue24
  localValue2 = "layon"
  localValue3 = cmgOperation.Lang
  localValue3 = localValue3.KeyBindingDesc
  localValue3 = localValue3.Keyboard
  localValue3 = localValue3.LayDown
  localValue4 = "keyboard"
  localValue5 = cmgOperation.DefaultKeybinds
  localValue5 = localValue5.SitDown
  localValue5 = localValue5.LayKeyboard
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = workingValue24
  localValue2 = "laydown"
  localValue3 = cmgOperation.Lang
  localValue3 = localValue3.KeyBindingDesc
  localValue3 = localValue3.PadAnalog
  localValue3 = localValue3.LayDown
  localValue4 = "PAD_ANALOGBUTTON"
  localValue5 = cmgOperation.DefaultKeybinds
  localValue5 = localValue5.SitDown
  localValue5 = localValue5.LayPadAnalog
  localValue1(localValue2, localValue3, localValue4, localValue5)

  -- === HELPER FUNCTION: localValue1(localValue12) ===
  function localValue1(localValue12)
    local localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12
    dataCollection.showingPrompt = true
    localValue22 = "sit_on_keyboard"
    localValue32 = CMG
    localValue32 = localValue32.isUsingKeyboard
    workingValue19 = 1
    localValue32 = localValue32(workingValue19)
    if localValue32 then
      localValue32 = localValue12
      workingValue19 = "_on_keyboard"
      localValue32 = localValue32 .. workingValue19
      localValue22 = localValue32
    else
      localValue32 = localValue12
      workingValue19 = "_down_controller"
      localValue32 = localValue32 .. workingValue19
      localValue22 = localValue32
    end
    localValue32 = 1
    workingValue19 = 25
    stateFlag7 = 1
    for workingValue31 = localValue32, workingValue19, stateFlag7 do
      workingValue32 = cmgOperation.ShowHelpText
      if workingValue32 then
        workingValue32 = cmgOperation2
        stateFlag11 = true
        workingValue32 = workingValue32(stateFlag11)
        if workingValue32 then
          workingValue32 = DisplayHelpTextThisFrame
          stateFlag11 = localValue22
          stateFlag12 = false
          workingValue32(stateFlag11, stateFlag12)
        end
      end
      workingValue32 = Wait
      stateFlag11 = 0
      workingValue32(stateFlag11)
    end
  end
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3, workingValue6, workingValue7, workingValue8, iterator4, iterator5, workingValue9, text20, text22, workingValue10, text25, createVector33, workingValue12
    localValue12 = {}
    localValue12.distance = 0.0
    localValue12.type = ""
    localValue22 = vector3
    localValue32 = 0.0
    workingValue19 = 0.0
    stateFlag7 = 0.0
    localValue22 = localValue22(localValue32, workingValue19, stateFlag7)
    localValue12.coords = localValue22
    localValue12.entity = 0
    while true do
      localValue22 = cmgOperation.MaxPromptDist
      localValue12.distance = localValue22
      localValue22 = CMG
      localValue22 = localValue22.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue22 = localValue22()
      localValue32 = localValue22.xy
      workingValue19 = 500
      stateFlag7 = dataCollection.isSitting
      if not stateFlag7 then
        stateFlag7 = dataCollection.isLaying
        if not stateFlag7 then
          stateFlag7 = dataCollection.attAction
          if not stateFlag7 then
            stateFlag7 = GetGamePool
            workingValue31 = "CObject"
            stateFlag7 = stateFlag7(workingValue31)
            workingValue31 = pairs
            workingValue32 = stateFlag7
            workingValue31, workingValue32, stateFlag11, stateFlag12 = workingValue31(workingValue32)
            for createVector34, modelHash in workingValue31, workingValue32, stateFlag11, stateFlag12 do
              modelHash2 = GetEntityModel
              coords = modelHash
              -- Beginner: result below is modelHash.
              modelHash2 = modelHash2(coords)
              coords = text13
              coords = coords[modelHash2]
              if coords then
                coords = GetEntityCoords
                workingValue2 = modelHash
                -- Beginner: result below is entityCoords.
                coords = coords(workingValue2)
                workingValue2 = coords - localValue22
                workingValue2 = #workingValue2
                workingValue3 = localValue12.distance
                if workingValue2 < workingValue3 then
                  workingValue3 = text13
                  workingValue3 = workingValue3[modelHash2]
                  localValue12.distance = workingValue2
                  text8 = workingValue3.sit
                  if text8 then
                    text8 = workingValue3.lay
                    if text8 then
                      text8 = "both"
                      if text8 then
                        goto continueAtStep76
                      end
                    end
                  end
                  text8 = workingValue3.sit
                  if text8 then
                    text8 = "sit"
                    if text8 then
                      goto continueAtStep76
                    end
                  end
                  text8 = workingValue3.lay
                  if text8 then
                    text8 = "lay"
                    if text8 then
                      goto continueAtStep76
                    end
                  end
                  text8 = nil
                  ::continueAtStep76::
                  localValue12.type = text8
                  localValue12.coords = coords
                  localValue12.entity = modelHash
                end
              end
            end
            workingValue31 = pairs
            workingValue32 = workingValue11
            workingValue31, workingValue32, stateFlag11, stateFlag12 = workingValue31(workingValue32)
            for createVector34, modelHash in workingValue31, workingValue32, stateFlag11, stateFlag12 do
              modelHash2 = modelHash.enabled
              if modelHash2 then
                modelHash2 = modelHash.radius
                if modelHash2 then
                  modelHash2 = modelHash.center
                  modelHash2 = modelHash2.xy
                  modelHash2 = modelHash2 - localValue32
                  modelHash2 = #modelHash2
                  coords = modelHash.radius
                  if not (modelHash2 < coords) then
                    goto continueAtStep159
                  end
                end
                modelHash2 = pairs
                coords = modelHash.polys
                modelHash2, coords, workingValue2, workingValue3 = modelHash2(coords)
                for text8, iterator in modelHash2, coords, workingValue2, workingValue3 do
                  iterator2 = pairs
                  iterator3 = iterator
                  iterator2, iterator3, workingValue6, workingValue7 = iterator2(iterator3)
                  for workingValue8, iterator4 in iterator2, iterator3, workingValue6, workingValue7 do
                    if "sit" == workingValue8 or "lay" == workingValue8 then
                      iterator5 = pairs
                      workingValue9 = iterator4.seats
                      iterator5, workingValue9, text20, text22 = iterator5(workingValue9)
                      for workingValue10, text25 in iterator5, workingValue9, text20, text22 do
                        createVector33 = text25.xyz
                        createVector33 = localValue22 - createVector33
                        createVector33 = #createVector33
                        workingValue12 = localValue12.distance
                        if createVector33 < workingValue12 then
                          localValue12.distance = createVector33
                          workingValue12 = iterator.sit
                          if workingValue12 then
                            workingValue12 = iterator.lay
                            if workingValue12 then
                              workingValue12 = "both"
                              if workingValue12 then
                                goto continueAtStep146
                              end
                            end
                          end
                          workingValue12 = iterator.sit
                          if workingValue12 then
                            workingValue12 = "sit"
                            if workingValue12 then
                              goto continueAtStep146
                            end
                          end
                          workingValue12 = iterator.lay
                          if workingValue12 then
                            workingValue12 = "lay"
                            if workingValue12 then
                              goto continueAtStep146
                            end
                          end
                          workingValue12 = nil
                          ::continueAtStep146::
                          localValue12.type = workingValue12
                          workingValue12 = text25.xyz
                          localValue12.coords = workingValue12
                          localValue12.entity = 0
                        end
                      end
                    end
                  end
                end
              end
              ::continueAtStep159::
            end
            workingValue31 = localValue12.distance
            workingValue32 = cmgOperation.MaxPromptDist
            if workingValue31 < workingValue32 then
              workingValue31 = text23
              workingValue32 = localValue12.coords
              stateFlag11 = localValue12.entity
              workingValue31 = workingValue31(workingValue32, stateFlag11)
              if workingValue31 then
                workingValue31 = RageUI
                workingValue31 = workingValue31.IsAnyMenuVisible
                workingValue31 = workingValue31()
                if not workingValue31 then
                  workingValue31 = localValue1
                  workingValue32 = localValue12.type
                  workingValue31(workingValue32)
                  workingValue19 = 0
              end
            end
            else
              dataCollection.showingPrompt = false
            end
        end
      end
      else
        workingValue19 = 1000
      end
      stateFlag7 = Wait
      workingValue31 = workingValue19
      stateFlag7(workingValue31)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
workingValue27 = RegisterCommand
text36 = "sit"
-- Beginner: this function is the command handler for "sit".

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = cmgOperation2
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = text21
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = cmgOperation.UsePrompts
        if not localValue1 then
          localValue1 = text31
          localValue1()
        end
      else
        localValue1 = text27
        localValue1()
      end
    end
  end
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "sit".
workingValue27(text36, workingValue28, stateFlag8)
workingValue27 = RegisterCommand
text36 = "lay"
-- Beginner: this function is the command handler for "lay".

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = cmgOperation2
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = text21
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = cmgOperation.UsePrompts
        if not localValue1 then
          localValue1 = text31
          localValue1()
        end
      else
        localValue1 = text29
        localValue1()
      end
    end
  end
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "lay".
workingValue27(text36, workingValue28, stateFlag8)
workingValue27 = RegisterCommand
text36 = "bedcoords"
-- Beginner: this function is the command handler for "bedcoords".

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityCoords
  localValue3 = localValue1
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3)
  localValue3 = GetEntityHeading
  localValue4 = localValue1
  -- Beginner: result below is heading.
  localValue3 = localValue3(localValue4)
  localValue4 = print
  localValue5 = "^2--- Bed coords (copy for cfg_chairs) ---^7"
  localValue4(localValue5)
  localValue4 = print
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "^3Player position:^7 vector3(%.2f, %.2f, %.2f)"
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  localValue9 = localValue2.z
  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
  localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
  localValue4 = print
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "^3Player position + heading:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  localValue9 = localValue2.z
  localValue10 = localValue3
  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10)
  localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
  localValue4 = 0
  localValue5 = 5.0
  localValue6 = pairs
  localValue7 = text13
  localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7)
  for localValue10, localValue11 in localValue6, localValue7, localValue8, localValue9 do
    workingValue = localValue11.lay
    if workingValue then
      workingValue = GetClosestObjectOfType
      nameValue = localValue2.x
      number = localValue2.y
      number2 = localValue2.z
      text7 = 5.0
      workingValue4 = localValue10
      number3 = false
      number4 = true
      workingValue5 = true
      -- Beginner: result below is objectEntity.
      workingValue = workingValue(nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
      if 0 ~= workingValue then
        nameValue = GetEntityCoords
        number = workingValue
        -- Beginner: result below is entityCoords.
        nameValue = nameValue(number)
        number = nameValue - localValue2
        number = #number
        if localValue5 > number then
          localValue5 = number
          localValue4 = workingValue
        end
      end
    end
  end
  if 0 ~= localValue4 then
    localValue6 = GetEntityCoords
    localValue7 = localValue4
    -- Beginner: result below is entityCoords.
    localValue6 = localValue6(localValue7)
    localValue7 = GetEntityHeading
    localValue8 = localValue4
    -- Beginner: result below is heading.
    localValue7 = localValue7(localValue8)
    localValue8 = GetEntityModel
    localValue9 = localValue4
    -- Beginner: result below is modelHash.
    localValue8 = localValue8(localValue9)
    localValue9 = text13
    localValue9 = localValue9[localValue8]
    if localValue9 then
      localValue9 = text13
      localValue9 = localValue9[localValue8]
      localValue9 = localValue9.lay
    end
    if localValue9 then
      localValue10 = localValue9.type
      if localValue10 then
        goto continueAtStep95
      end
    end
    localValue10 = "medical"
    ::continueAtStep95::
    localValue11 = print
    workingValue = string
    workingValue = workingValue.format
    nameValue = "^3Closest bed entity (model %d):^7"
    number = localValue8
    workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = workingValue(nameValue, number)
    localValue11(workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
    localValue11 = print
    workingValue = string
    workingValue = workingValue.format
    nameValue = "  Coords: vector3(%.2f, %.2f, %.2f)"
    number = localValue6.x
    number2 = localValue6.y
    text7 = localValue6.z
    workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = workingValue(nameValue, number, number2, text7)
    localValue11(workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
    localValue11 = print
    workingValue = string
    workingValue = workingValue.format
    nameValue = "  Heading: %.1f"
    number = localValue7
    workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = workingValue(nameValue, number)
    localValue11(workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
    localValue11 = print
    workingValue = string
    workingValue = workingValue.format
    nameValue = "^3For PolyZone seat:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
    number = localValue6.x
    number2 = localValue6.y
    text7 = localValue6.z
    workingValue4 = localValue7
    workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = workingValue(nameValue, number, number2, text7, workingValue4)
    localValue11(workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
    localValue11 = print
    workingValue = string
    workingValue = workingValue.format
    nameValue = "^3For Models config:^7 [%d] = { lay = { type = '%s', seats = {[1] = vector4(0.0, 0.0, 0.5, 180.0)} } },"
    number = localValue8
    number2 = localValue10
    workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5 = workingValue(nameValue, number, number2)
    localValue11(workingValue, nameValue, number, number2, text7, workingValue4, number3, number4, workingValue5)
  else
    localValue6 = print
    localValue7 = "^3No bed entity within 5m.^7 Stand next to a bed and run /bedcoords again."
    localValue6(localValue7)
  end
  localValue6 = print
  localValue7 = "^2----------------------------------------^7"
  localValue6(localValue7)
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "bedcoords".
workingValue27(text36, workingValue28, stateFlag8)
workingValue27 = RegisterKeyMapping
text36 = "getup"
workingValue28 = cmgOperation.Lang
workingValue28 = workingValue28.KeyBindingDesc
workingValue28 = workingValue28.Keyboard
workingValue28 = workingValue28.GetUp
stateFlag8 = "keyboard"
workingValue29 = cmgOperation.DefaultKeybinds
workingValue29 = workingValue29.GetUp
workingValue29 = workingValue29.Keyboard
-- Beginner: Bind a command to a keyboard/controller key.
workingValue27(text36, workingValue28, stateFlag8, workingValue29)
workingValue27 = RegisterCommand
text36 = "getup"
-- Beginner: this function is the command handler for "getup".

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = cmgOperation2
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = text31
      localValue1()
    end
  end
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "getup".
workingValue27(text36, workingValue28, stateFlag8)
workingValue27 = RegisterKeyMapping
text36 = "standup"
workingValue28 = cmgOperation.Lang
workingValue28 = workingValue28.KeyBindingDesc
workingValue28 = workingValue28.PadAnalog
workingValue28 = workingValue28.GetUp
stateFlag8 = "PAD_ANALOGBUTTON"
workingValue29 = cmgOperation.DefaultKeybinds
workingValue29 = workingValue29.GetUp
workingValue29 = workingValue29.PadAnalog
-- Beginner: Bind a command to a keyboard/controller key.
workingValue27(text36, workingValue28, stateFlag8, workingValue29)
workingValue27 = RegisterCommand
text36 = "standup"
-- Beginner: this function is the command handler for "standup".

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = cmgOperation2
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = text31
      localValue1()
    end
  end
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "standup".
workingValue27(text36, workingValue28, stateFlag8)
workingValue27 = AddEventHandler
text36 = "sit:helpTextThread"
-- Beginner: this function runs when client event "sit:helpTextThread" fires.

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32
    while true do
      localValue22 = localValue1
      localValue12 = dataCollection
      localValue12 = localValue12[localValue22]
      if not localValue12 then
        break
      end
      localValue12 = CMG
      localValue12 = localValue12.isUsingKeyboard
      localValue22 = 1
      localValue12 = localValue12(localValue22)
      if localValue12 then
        localValue12 = DisplayHelpTextThisFrame
        localValue22 = "sit_getup_keyboard"
        localValue32 = false
        localValue12(localValue22, localValue32)
      else
        localValue12 = DisplayHelpTextThisFrame
        localValue22 = "sit_getup_controller"
        localValue32 = false
        localValue12(localValue22, localValue32)
      end
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "sit:helpTextThread".
workingValue27(text36, workingValue28)
workingValue27 = AddEventHandler
text36 = "sit:checkThread"
-- Beginner: this function runs when client event "sit:checkThread" fires.

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3
  localValue2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12
    while true do
      localValue12 = Wait
      localValue22 = 500
      localValue12(localValue22)
      localValue22 = localValue1
      localValue12 = dataCollection
      localValue12 = localValue12[localValue22]
      if not localValue12 then
        break
      end
      localValue12 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue12 = localValue12()
      localValue22 = GetEntityCoords
      localValue32 = localValue12
      -- Beginner: result below is entityCoords.
      localValue22 = localValue22(localValue32)
      localValue32 = localValue22.xy
      workingValue19 = dataCollection.targetPos
      workingValue19 = workingValue19.xy
      localValue32 = localValue32 - workingValue19
      localValue32 = #localValue32
      workingValue19 = localValue22.z
      stateFlag7 = dataCollection.targetPos
      stateFlag7 = stateFlag7.z
      workingValue19 = workingValue19 - stateFlag7
      workingValue19 = workingValue19 - 1.25
      if workingValue19 > 0.0 then
        localValue32 = localValue32 + workingValue19
      end
      stateFlag7 = 0.5
      if not (localValue32 > stateFlag7) then
        stateFlag7 = dataCollection.scenario
        if stateFlag7 then
          stateFlag7 = IsPedUsingScenario
          workingValue31 = localValue12
          workingValue32 = dataCollection.scenario
          stateFlag7 = stateFlag7(workingValue31, workingValue32)
          if not stateFlag7 then
            goto continueAtStep73
          end
        end
        stateFlag7 = dataCollection.animation
        if stateFlag7 then
          stateFlag7 = dataCollection.animation
          stateFlag7 = stateFlag7.dict
          if stateFlag7 then
            stateFlag7 = IsEntityPlayingAnim
            workingValue31 = localValue12
            workingValue32 = dataCollection.animation
            workingValue32 = workingValue32.dict
            stateFlag11 = dataCollection.animation
            stateFlag11 = stateFlag11.name
            stateFlag12 = 3
            stateFlag7 = stateFlag7(workingValue31, workingValue32, stateFlag11, stateFlag12)
            if not stateFlag7 then
              goto continueAtStep73
            end
          end
        end
        stateFlag7 = IsEntityDead
        workingValue31 = localValue12
        stateFlag7 = stateFlag7(workingValue31)
        if not stateFlag7 then
          stateFlag7 = dataCollection.entity
          if 0 == stateFlag7 then
            goto continueAtStep91
          end
          stateFlag7 = DoesEntityExist
          workingValue31 = dataCollection.entity
          stateFlag7 = stateFlag7(workingValue31)
          if stateFlag7 then
            goto continueAtStep91
          end
        end
      end
      ::continueAtStep73::
      stateFlag7 = true
      workingValue31 = IsEntityDead
      workingValue32 = localValue12
      workingValue31 = workingValue31(workingValue32)
      if not workingValue31 then
        workingValue31 = IsPedRagdoll
        workingValue32 = localValue12
        workingValue31 = workingValue31(workingValue32)
        if not workingValue31 then
          goto continueAtStep85
        end
      end
      stateFlag7 = false
      ::continueAtStep85::
      workingValue31 = text17
      workingValue32 = stateFlag7
      stateFlag11 = false
      stateFlag12 = true
      workingValue31(workingValue32, stateFlag11, stateFlag12)
      do break end
      ::continueAtStep91::
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "sit:checkThread".
workingValue27(text36, workingValue28)
workingValue27 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text36; parameters: none) ===
function text36()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue23
  localValue1()
  localValue1 = cmgOperation.AddChatSuggestions
  if localValue1 then
    localValue1 = TriggerEvent
    localValue2 = "chat:addSuggestion"
    localValue3 = "/sit"
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.ChatSuggestions
    localValue4 = localValue4.Sit
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = TriggerEvent
    localValue2 = "chat:addSuggestion"
    localValue3 = "/lay"
    localValue4 = cmgOperation.Lang
    localValue4 = localValue4.ChatSuggestions
    localValue4 = localValue4.Lay
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = cmgOperation.UsePrompts
  if localValue1 then
    localValue1 = workingValue26
    localValue1()
  end
  localValue1 = cmgOperation.Target
  if "false" == localValue1 then
    localValue1 = print
    localValue2 = "^1ERROR: Config.Target was set to 'false' (string), but it needs to be set to false (boolean).^7"
    localValue1(localValue2)
    cmgOperation.Target = false
  end
  localValue1 = cmgOperation.Target
  if localValue1 then
    localValue1 = workingValue20
    localValue1()
    localValue1 = workingValue21
    localValue1()
    localValue1 = workingValue22
    localValue1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue27(text36)
workingValue27 = cmgOperation.Debugmode
if workingValue27 then
  workingValue27 = true

  -- === HELPER FUNCTION (decompiler name: text36; parameters: localValue1, localValue2, localValue3) ===
  function text36(localValue1, localValue2, localValue3)
    local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue
    localValue4 = SetTextColour
    localValue5 = localValue3.r
    localValue6 = localValue3.g
    localValue7 = localValue3.b
    localValue8 = 255
    localValue4(localValue5, localValue6, localValue7, localValue8)
    localValue4 = SetTextScale
    localValue5 = 0.0
    localValue6 = 0.35
    localValue4(localValue5, localValue6)
    localValue4 = SetTextFont
    localValue5 = 4
    localValue4(localValue5)
    localValue4 = SetTextOutline
    localValue4()
    localValue4 = SetTextCentre
    localValue5 = true
    localValue4(localValue5)
    localValue4 = BeginTextCommandDisplayText
    localValue5 = "STRING"
    localValue4(localValue5)
    localValue4 = AddTextComponentSubstringPlayerName
    localValue5 = localValue2
    localValue4(localValue5)
    localValue4 = SetDrawOrigin
    localValue5 = localValue1.x
    localValue6 = localValue1.y
    localValue7 = localValue1.z
    localValue8 = 0
    localValue4(localValue5, localValue6, localValue7, localValue8)
    localValue4 = EndTextCommandDisplayText
    localValue5 = 0.0
    localValue6 = 0.0
    localValue4(localValue5, localValue6)
    localValue4 = ClearDrawOrigin
    localValue4()
    localValue4 = DrawRect
    localValue5 = localValue1.x
    localValue6 = localValue1.y
    localValue7 = 1.0
    localValue8 = 1.0
    localValue9 = 230
    localValue10 = 230
    localValue11 = 230
    workingValue = 255
    localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
  function workingValue28(localValue1)
    local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue
    localValue2 = GetEntityCoords
    localValue3 = localValue1
    -- Beginner: result below is entityCoords.
    localValue2 = localValue2(localValue3)
    localValue3 = GetGamePool
    localValue4 = "CObject"
    localValue3 = localValue3(localValue4)
    localValue4 = {}
    localValue5 = 1
    localValue6 = #localValue3
    localValue7 = 1
    for localValue8 = localValue5, localValue6, localValue7 do
      localValue9 = GetEntityCoords
      localValue10 = localValue3[localValue8]
      -- Beginner: result below is entityCoords.
      localValue9 = localValue9(localValue10)
      localValue10 = localValue2 - localValue9
      localValue10 = #localValue10
      if localValue10 < 8.0 then
        localValue11 = {}
        localValue11.pos = localValue9
        workingValue = localValue3[localValue8]
        localValue11.entity = workingValue
        localValue4[localValue8] = localValue11
      end
    end
    return localValue4
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue1, localValue2) ===
  function stateFlag8(localValue1, localValue2)
    local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
    localValue3 = pairs
    localValue4 = GetGamePool
    localValue5 = "CPed"
    localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11 = localValue4(localValue5)
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = GetEntityCoords
      localValue10 = localValue8
      -- Beginner: result below is entityCoords.
      localValue9 = localValue9(localValue10)
      localValue9 = localValue9 - localValue1
      localValue9 = #localValue9
      localValue10 = 1.35
      if localValue9 < localValue10 then
        if "sit" == localValue2 then
          localValue10 = text6
          localValue11 = localValue8
          localValue10 = localValue10(localValue11)
          if not localValue10 then
            localValue10 = 0.55
          end
          if localValue9 < localValue10 then
            localValue10 = false
            return localValue10
          end
        elseif "lay" == localValue2 then
          localValue10 = text6
          localValue11 = localValue8
          localValue10 = localValue10(localValue11)
          if not localValue10 then
            localValue10 = text9
            localValue11 = localValue8
            localValue10 = localValue10(localValue11)
            if not localValue10 then
              goto continueAtStep43
            end
          end
          localValue10 = false
          return localValue10
        end
      end
      ::continueAtStep43::
    end
    localValue3 = true
    return localValue3
  end

  -- === HELPER FUNCTION (decompiler name: workingValue29; parameters: none) ===
  function workingValue29()
    local localValue1, localValue2, localValue3, localValue4
    localValue1 = {}
    localValue2 = {}
    localValue3 = {}
    localValue3.r = 200
    localValue3.g = 0
    localValue3.b = 0
    localValue2.occupied = localValue3
    localValue3 = {}
    localValue3.r = 255
    localValue3.g = 255
    localValue3.b = 255
    localValue2.sit = localValue3
    localValue3 = {}
    localValue3.r = 150
    localValue3.g = 150
    localValue3.b = 150
    localValue2.lay = localValue3
    localValue3 = {}
    localValue3.r = 255
    localValue3.g = 0
    localValue3.b = 0
    localValue3.a = 200
    localValue2.sit_line = localValue3
    localValue3 = {}
    localValue3.r = 0
    localValue3.g = 102
    localValue3.b = 204
    localValue3.a = 255
    localValue2.lay_line = localValue3
    localValue3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3, workingValue6, workingValue7, workingValue8, iterator4, iterator5, workingValue9, text20, text22, workingValue10, text25, createVector33, workingValue12, number8, workingValue13, workingValue14, workingValue15, text33, number9, text35
      while true do
        localValue12 = workingValue27
        if not localValue12 then
          break
        end
        localValue12 = 0
        localValue22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue22 = localValue22()
        localValue32 = GetEntityCoords
        workingValue19 = localValue22
        -- Beginner: result below is entityCoords.
        localValue32 = localValue32(workingValue19)
        workingValue19 = {}
        localValue1 = workingValue19
        workingValue19 = workingValue28
        stateFlag7 = localValue22
        workingValue19 = workingValue19(stateFlag7)
        stateFlag7 = pairs
        workingValue31 = workingValue19
        stateFlag7, workingValue31, workingValue32, stateFlag11 = stateFlag7(workingValue31)
        for stateFlag12, createVector34 in stateFlag7, workingValue31, workingValue32, stateFlag11 do
          modelHash = GetEntityModel
          modelHash2 = createVector34.entity
          -- Beginner: result below is modelHash.
          modelHash = modelHash(modelHash2)
          modelHash2 = text13
          modelHash2 = modelHash2[modelHash]
          if modelHash2 then
            coords = pairs
            workingValue2 = modelHash2
            coords, workingValue2, workingValue3, text8 = coords(workingValue2)
            for iterator, iterator2 in coords, workingValue2, workingValue3, text8 do
              iterator3 = pairs
              workingValue6 = iterator2.seats
              iterator3, workingValue6, workingValue7, workingValue8 = iterator3(workingValue6)
              for iterator4, iterator5 in iterator3, workingValue6, workingValue7, workingValue8 do
                workingValue9 = iterator
                text20 = ": "
                text22 = modelHash
                workingValue9 = workingValue9 .. text20 .. text22
                text20 = iterator2.seats
                text20 = #text20
                if text20 > 1 then
                  text20 = workingValue9
                  text22 = " ("
                  workingValue10 = iterator4
                  text25 = ")"
                  text20 = text20 .. text22 .. workingValue10 .. text25
                  workingValue9 = text20
                end
                text20 = GetEntityHeading
                text22 = createVector34.entity
                -- Beginner: result below is heading.
                text20 = text20(text22)
                text22 = nil
                if "lay" == iterator then
                  workingValue10 = text5
                  text25 = createVector34.pos
                  createVector33 = vector3
                  workingValue12 = 0.0
                  number8 = 0.0
                  workingValue13 = text4
                  workingValue14 = text20
                  workingValue13, workingValue14, workingValue15, text33, number9, text35 = workingValue13(workingValue14)
                  createVector33 = createVector33(workingValue12, number8, workingValue13, workingValue14, workingValue15, text33, number9, text35)
                  workingValue12 = vector3
                  number8 = iterator5.x
                  workingValue13 = iterator5.y
                  workingValue14 = iterator5.z
                  workingValue14 = workingValue14 + 0.25
                  workingValue12, number8, workingValue13, workingValue14, workingValue15, text33, number9, text35 = workingValue12(number8, workingValue13, workingValue14)
                  workingValue10 = workingValue10(text25, createVector33, workingValue12, number8, workingValue13, workingValue14, workingValue15, text33, number9, text35)
                  text22 = workingValue10
                else
                  workingValue10 = text5
                  text25 = createVector34.pos
                  createVector33 = vector3
                  workingValue12 = 0.0
                  number8 = 0.0
                  workingValue13 = text4
                  workingValue14 = text20
                  workingValue13, workingValue14, workingValue15, text33, number9, text35 = workingValue13(workingValue14)
                  createVector33 = createVector33(workingValue12, number8, workingValue13, workingValue14, workingValue15, text33, number9, text35)
                  workingValue12 = iterator5.xyz
                  workingValue10 = workingValue10(text25, createVector33, workingValue12)
                  text22 = workingValue10
                end
                workingValue10 = iterator5.w
                workingValue10 = text20 + workingValue10
                text25 = 360
                if workingValue10 > text25 then
                  workingValue10 = workingValue10 - 360
                end
                text25 = localValue2
                text25 = text25[iterator]
                createVector33 = stateFlag8
                workingValue12 = text22
                number8 = iterator
                createVector33 = createVector33(workingValue12, number8)
                if not createVector33 then
                  text25 = localValue2.occupied
                end
                localValue12 = localValue12 + 1
                createVector33 = localValue1
                workingValue12 = {}
                number8 = vector4
                workingValue13 = text22.x
                workingValue14 = text22.y
                workingValue15 = text22.z
                text33 = workingValue10
                number8 = number8(workingValue13, workingValue14, workingValue15, text33)
                workingValue13 = workingValue9
                workingValue14 = text25
                workingValue15 = iterator
                text33 = "_line"
                workingValue15 = workingValue15 .. text33
                text33 = localValue2
                workingValue15 = text33[workingValue15]
                workingValue12[1] = number8
                workingValue12[2] = workingValue13
                workingValue12[3] = workingValue14
                workingValue12[4] = workingValue15
                createVector33[localValue12] = workingValue12
              end
            end
          end
        end
        stateFlag7 = pairs
        workingValue31 = workingValue11
        stateFlag7, workingValue31, workingValue32, stateFlag11 = stateFlag7(workingValue31)
        for stateFlag12, createVector34 in stateFlag7, workingValue31, workingValue32, stateFlag11 do
          modelHash = createVector34.enabled
          if modelHash then
            modelHash = createVector34.radius
            if modelHash then
              modelHash = createVector34.center
              modelHash = modelHash.xy
              modelHash2 = localValue32.xy
              modelHash = modelHash - modelHash2
              modelHash = #modelHash
              modelHash2 = createVector34.radius
              if not (modelHash < modelHash2) then
                goto continueAtStep242
              end
            end
            modelHash = pairs
            modelHash2 = createVector34.polys
            modelHash, modelHash2, coords, workingValue2 = modelHash(modelHash2)
            for workingValue3, text8 in modelHash, modelHash2, coords, workingValue2 do
              iterator = pairs
              iterator2 = text8
              iterator, iterator2, iterator3, workingValue6 = iterator(iterator2)
              for workingValue7, workingValue8 in iterator, iterator2, iterator3, workingValue6 do
                if "sit" == workingValue7 or "lay" == workingValue7 then
                  iterator4 = pairs
                  iterator5 = workingValue8.seats
                  iterator4, iterator5, workingValue9, text20 = iterator4(iterator5)
                  for text22, workingValue10 in iterator4, iterator5, workingValue9, text20 do
                    text25 = workingValue10.xyz
                    text25 = localValue32 - text25
                    text25 = #text25
                    if text25 < 8.0 then
                      text25 = workingValue7
                      createVector33 = ": "
                      workingValue12 = workingValue3
                      text25 = text25 .. createVector33 .. workingValue12
                      createVector33 = workingValue8.seats
                      createVector33 = #createVector33
                      if createVector33 > 1 then
                        createVector33 = text25
                        workingValue12 = " ("
                        number8 = text22
                        workingValue13 = ")"
                        createVector33 = createVector33 .. workingValue12 .. number8 .. workingValue13
                        text25 = createVector33
                      end
                      createVector33 = workingValue10.xyz
                      if "lay" == workingValue7 then
                        workingValue12 = text5
                        number8 = workingValue10
                        workingValue13 = vector3
                        workingValue14 = 0.0
                        workingValue15 = 0.0
                        text33 = 0.0
                        workingValue13 = workingValue13(workingValue14, workingValue15, text33)
                        workingValue14 = vector3
                        workingValue15 = 0.0
                        text33 = 0.0
                        number9 = 0.25
                        workingValue14, workingValue15, text33, number9, text35 = workingValue14(workingValue15, text33, number9)
                        workingValue12 = workingValue12(number8, workingValue13, workingValue14, workingValue15, text33, number9, text35)
                        createVector33 = workingValue12
                      end
                      workingValue12 = localValue2
                      workingValue12 = workingValue12[workingValue7]
                      number8 = stateFlag8
                      workingValue13 = createVector33
                      workingValue14 = workingValue7
                      number8 = number8(workingValue13, workingValue14)
                      if not number8 then
                        workingValue12 = localValue2.occupied
                      end
                      localValue12 = localValue12 + 1
                      number8 = localValue1
                      workingValue13 = {}
                      workingValue14 = vector4
                      workingValue15 = createVector33.x
                      text33 = createVector33.y
                      number9 = createVector33.z
                      text35 = workingValue10.w
                      workingValue14 = workingValue14(workingValue15, text33, number9, text35)
                      workingValue15 = text25
                      text33 = workingValue12
                      number9 = workingValue7
                      text35 = "_line"
                      number9 = number9 .. text35
                      text35 = localValue2
                      number9 = text35[number9]
                      workingValue13[1] = workingValue14
                      workingValue13[2] = workingValue15
                      workingValue13[3] = text33
                      workingValue13[4] = number9
                      number8[localValue12] = workingValue13
                    end
                  end
                end
              end
            end
          end
          ::continueAtStep242::
        end
        stateFlag7 = Wait
        workingValue31 = 1000
        stateFlag7(workingValue31)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(localValue4)
    localValue3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12, createVector34
      while true do
        localValue12 = workingValue27
        if not localValue12 then
          break
        end
        localValue12 = pairs
        localValue22 = localValue1
        localValue12, localValue22, localValue32, workingValue19 = localValue12(localValue22)
        for stateFlag7, workingValue31 in localValue12, localValue22, localValue32, workingValue19 do
          workingValue32 = text36
          stateFlag11 = workingValue31[1]
          stateFlag11 = stateFlag11.xyz
          stateFlag12 = workingValue31[2]
          createVector34 = workingValue31[3]
          workingValue32(stateFlag11, stateFlag12, createVector34)
        end
        localValue12 = Wait
        localValue22 = 0
        localValue12(localValue22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(localValue4)
    localValue3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22, localValue32, workingValue19, stateFlag7, workingValue31, workingValue32, stateFlag11, stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3
      while true do
        localValue12 = workingValue27
        if not localValue12 then
          break
        end
        localValue12 = pairs
        localValue22 = localValue1
        localValue12, localValue22, localValue32, workingValue19 = localValue12(localValue22)
        for stateFlag7, workingValue31 in localValue12, localValue22, localValue32, workingValue19 do
          workingValue32 = workingValue31[1]
          workingValue32 = workingValue32.w
          if nil ~= workingValue32 then
            workingValue32 = text5
            stateFlag11 = workingValue31[1]
            stateFlag11 = stateFlag11.xyz
            stateFlag12 = vector3
            createVector34 = 0.0
            modelHash = 0.0
            modelHash2 = text4
            coords = workingValue31[1]
            coords = coords.w
            modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3 = modelHash2(coords)
            stateFlag12 = stateFlag12(createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3)
            createVector34 = vector3
            modelHash = 0.0
            modelHash2 = 0.5
            coords = 0.0
            createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3 = createVector34(modelHash, modelHash2, coords)
            workingValue32 = workingValue32(stateFlag11, stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3)
            stateFlag11 = DrawLine
            stateFlag12 = workingValue31[1]
            stateFlag12 = stateFlag12.x
            createVector34 = workingValue31[1]
            createVector34 = createVector34.y
            modelHash = workingValue31[1]
            modelHash = modelHash.z
            modelHash2 = workingValue32.x
            coords = workingValue32.y
            workingValue2 = workingValue32.z
            workingValue3 = workingValue31[4]
            workingValue3 = workingValue3.r
            text8 = workingValue31[4]
            text8 = text8.g
            iterator = workingValue31[4]
            iterator = iterator.b
            iterator2 = workingValue31[4]
            iterator2 = iterator2.a
            stateFlag11(stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2)
            stateFlag11 = text5
            stateFlag12 = workingValue31[1]
            stateFlag12 = stateFlag12.xyz
            createVector34 = vector3
            modelHash = 0.0
            modelHash2 = 0.0
            coords = text4
            workingValue2 = workingValue31[1]
            workingValue2 = workingValue2.w
            coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3 = coords(workingValue2)
            createVector34 = createVector34(modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3)
            modelHash = vector3
            modelHash2 = 0.0
            coords = 0.0
            workingValue2 = 0.2
            modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3 = modelHash(modelHash2, coords, workingValue2)
            stateFlag11 = stateFlag11(stateFlag12, createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3)
            stateFlag12 = DrawLine
            createVector34 = workingValue31[1]
            createVector34 = createVector34.x
            modelHash = workingValue31[1]
            modelHash = modelHash.y
            modelHash2 = workingValue31[1]
            modelHash2 = modelHash2.z
            coords = stateFlag11.x
            workingValue2 = stateFlag11.y
            workingValue3 = stateFlag11.z
            text8 = workingValue31[4]
            text8 = text8.r
            iterator = workingValue31[4]
            iterator = iterator.g
            iterator2 = workingValue31[4]
            iterator2 = iterator2.b
            iterator3 = workingValue31[4]
            iterator3 = iterator3.a
            stateFlag12(createVector34, modelHash, modelHash2, coords, workingValue2, workingValue3, text8, iterator, iterator2, iterator3)
          end
        end
        localValue12 = Wait
        localValue22 = 0
        localValue12(localValue22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue3(localValue4)
  end
  workingValue30 = RegisterKeyMapping
  text37 = "sit:debug"
  text38 = "Sit Debuging"
  stateFlag9 = "keyboard"
  stateFlag10 = "G"
  -- Beginner: Bind a command to a keyboard/controller key.
  workingValue30(text37, text38, stateFlag9, stateFlag10)
  workingValue30 = RegisterCommand
  text37 = "sit:debug"
  -- Beginner: this function is the command handler for "sit:debug".

  -- === HELPER FUNCTION (decompiler name: text38; parameters: none) ===
  function text38()
    local localValue1, localValue2
    localValue1 = workingValue27
    localValue1 = not localValue1
    workingValue27 = localValue1
    localValue1 = workingValue27
    if localValue1 then
      localValue1 = workingValue29
      localValue1()
    end
  end
  stateFlag9 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:debug".
  workingValue30(text37, text38, stateFlag9)

  -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
  function workingValue30(localValue1)
    local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
    localValue2 = 0
    localValue3 = pairs
    localValue4 = localValue1
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue2 = localValue2 + localValue8
    end
    localValue3 = #localValue1
    localValue3 = localValue2 / localValue3
    return localValue3
  end
  text37 = RegisterCommand
  text38 = "sit:getcenter"
  -- Beginner: this function is the command handler for "sit:getcenter".

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
  function stateFlag9(localValue1, localValue2)
    local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number
    localValue3 = localValue2[1]
    localValue4 = workingValue11
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = {}
      localValue5 = {}
      localValue6 = {}
      localValue7 = 0
      localValue8 = pairs
      localValue9 = workingValue11
      localValue9 = localValue9[localValue3]
      localValue9 = localValue9.polys
      localValue8, localValue9, localValue10, localValue11 = localValue8(localValue9)
      for workingValue, nameValue in localValue8, localValue9, localValue10, localValue11 do
        localValue7 = localValue7 + 1
        number = nameValue.poly
        number = number.center
        if number then
          number = nameValue.poly
          number = number.center
          number = number.x
          if number then
            goto continueAtStep46
          end
        end
        number = nameValue.sit
        if number then
          number = nameValue.sit
          number = number.seats
          number = number[1]
          number = number.x
          if number then
            goto continueAtStep46
          end
        end
        number = nameValue.lay
        if number then
          number = nameValue.lay
          number = number.seats
          number = number[1]
          number = number.x
        end
        ::continueAtStep46::
        localValue4[localValue7] = number
        number = nameValue.poly
        number = number.center
        if number then
          number = nameValue.poly
          number = number.center
          number = number.y
          if number then
            goto continueAtStep72
          end
        end
        number = nameValue.sit
        if number then
          number = nameValue.sit
          number = number.seats
          number = number[1]
          number = number.y
          if number then
            goto continueAtStep72
          end
        end
        number = nameValue.lay
        if number then
          number = nameValue.lay
          number = number.seats
          number = number[1]
          number = number.y
        end
        ::continueAtStep72::
        localValue5[localValue7] = number
        number = nameValue.poly
        number = number.center
        if number then
          number = nameValue.poly
          number = number.center
          number = number.z
          if number then
            goto continueAtStep98
          end
        end
        number = nameValue.sit
        if number then
          number = nameValue.sit
          number = number.seats
          number = number[1]
          number = number.z
          if number then
            goto continueAtStep98
          end
        end
        number = nameValue.lay
        if number then
          number = nameValue.lay
          number = number.seats
          number = number[1]
          number = number.z
        end
        ::continueAtStep98::
        localValue6[localValue7] = number
      end
      localValue8 = vector3
      localValue9 = workingValue30
      localValue10 = localValue4
      localValue9 = localValue9(localValue10)
      localValue10 = workingValue30
      localValue11 = localValue5
      localValue10 = localValue10(localValue11)
      localValue11 = workingValue30
      workingValue = localValue6
      localValue11, workingValue, nameValue, number = localValue11(workingValue)
      localValue8 = localValue8(localValue9, localValue10, localValue11, workingValue, nameValue, number)
      localValue9 = print
      localValue10 = "average \"center\":"
      localValue11 = localValue8
      localValue9(localValue10, localValue11)
    else
      localValue4 = print
      localValue5 = localValue3
      localValue6 = "is not a valid poly group!"
      localValue4(localValue5, localValue6)
    end
  end
  stateFlag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:getcenter".
  text37(text38, stateFlag9, stateFlag10)
  text37 = RegisterCommand
  text38 = "sit:getfarthestdist"
  -- Beginner: this function is the command handler for "sit:getfarthestdist".

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
  function stateFlag9(localValue1, localValue2)
    local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, workingValue, nameValue, number
    localValue3 = localValue2[1]
    localValue4 = workingValue11
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = workingValue11
      localValue4 = localValue4[localValue3]
      localValue4 = localValue4.center
      if localValue4 then
        localValue4 = workingValue11
        localValue4 = localValue4[localValue3]
        localValue4 = localValue4.center
        localValue5 = {}
        localValue5.dist = 0
        localValue5.name = "error"
        localValue6 = pairs
        localValue7 = workingValue11
        localValue7 = localValue7[localValue3]
        localValue7 = localValue7.polys
        localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7)
        for localValue10, localValue11 in localValue6, localValue7, localValue8, localValue9 do
          workingValue = localValue11.poly
          workingValue = workingValue.center
          if not workingValue then
            workingValue = localValue11.sit
            if workingValue then
              workingValue = localValue11.sit
              workingValue = workingValue.seats
              workingValue = workingValue[1]
              workingValue = workingValue.xyz
              if workingValue then
                goto continueAtStep44
              end
            end
            workingValue = localValue11.lay
            if workingValue then
              workingValue = localValue11.lay
              workingValue = workingValue.seats
              workingValue = workingValue[1]
              workingValue = workingValue.xyz
            end
          end
          ::continueAtStep44::
          nameValue = localValue4 - workingValue
          nameValue = #nameValue
          number = localValue5.dist
          if nameValue > number then
            localValue5.dist = nameValue
            localValue5.name = localValue10
          end
        end
        localValue6 = print
        localValue7 = localValue5.name
        localValue8 = localValue5.dist
        localValue6(localValue7, localValue8)
    end
    else
      localValue4 = print
      localValue5 = localValue3
      localValue6 = "is not a valid poly group!"
      localValue4(localValue5, localValue6)
    end
  end
  stateFlag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:getfarthestdist".
  text37(text38, stateFlag9, stateFlag10)
  text37 = RegisterCommand
  text38 = "sit:loadGroup"
  -- Beginner: this function is the command handler for "sit:loadGroup".

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
  function stateFlag9(localValue1, localValue2)
    local localValue3, localValue4, localValue5, localValue6
    localValue3 = localValue2[1]
    localValue4 = workingValue11
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = workingValue11
      localValue4 = localValue4[localValue3]
      localValue4 = localValue4.center
      if localValue4 then
        localValue4 = workingValue11
        localValue4 = localValue4[localValue3]
        localValue4.enabled = true
        localValue4 = workingValue22
        localValue4()
    end
    else
      localValue4 = print
      localValue5 = localValue3
      localValue6 = "is not a valid poly group!"
      localValue4(localValue5, localValue6)
    end
  end
  stateFlag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:loadGroup".
  text37(text38, stateFlag9, stateFlag10)
  text37 = RegisterCommand
  text38 = "sit:unloadGroup"
  -- Beginner: this function is the command handler for "sit:unloadGroup".

  -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
  function stateFlag9(localValue1, localValue2)
    local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
    localValue3 = cmgOperation.Target
    if "ox_target" == localValue3 then
      localValue3 = print
      localValue4 = "ox_target does not support this action!"
      localValue3(localValue4)
      return
    end
    localValue3 = localValue2[1]
    localValue4 = workingValue11
    localValue4 = localValue4[localValue3]
    if localValue4 then
      localValue4 = workingValue11
      localValue4 = localValue4[localValue3]
      localValue4 = localValue4.center
      if localValue4 then
        localValue4 = workingValue11
        localValue4 = localValue4[localValue3]
        localValue4.enabled = false
        localValue4 = pairs
        localValue5 = workingValue11
        localValue5 = localValue5[localValue3]
        localValue5 = localValue5.polys
        localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
        for localValue8 in localValue4, localValue5, localValue6, localValue7 do
          localValue9 = exports
          localValue10 = cmgOperation.Target
          localValue9 = localValue9[localValue10]
          localValue10 = localValue9
          localValue9 = localValue9.RemoveZone
          localValue11 = localValue8
          localValue9(localValue10, localValue11)
        end
    end
    else
      localValue4 = print
      localValue5 = localValue3
      localValue6 = "is not a valid poly group!"
      localValue4(localValue5, localValue6)
    end
  end
  stateFlag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:unloadGroup".
  text37(text38, stateFlag9, stateFlag10)
  text37 = workingValue29
  text37()
end
workingValue27 = AddEventHandler
text36 = "5276360f55"
-- Beginner: this function runs when client event "5276360f55" fires.

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: none) ===
function workingValue28()
  local localValue1, localValue2
  localValue1 = text29
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "5276360f55".
workingValue27(text36, workingValue28)
-- Beginner: this function runs when client event "5276360f55" fires.

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
function workingValue27()
  local localValue1, localValue2
  localValue1 = dataCollection.isSitting
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text36; parameters: none) ===
function text36()
  local localValue1, localValue2
  localValue1 = dataCollection.isLaying
  return localValue1
end
workingValue28 = exports
stateFlag8 = "IsSitting"
workingValue29 = workingValue27
workingValue28(stateFlag8, workingValue29)
workingValue28 = exports
stateFlag8 = "IsLaying"
workingValue29 = text36
workingValue28(stateFlag8, workingValue29)
workingValue28 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
function stateFlag8()
  local localValue1, localValue2
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  dataCollection2 = localValue1
end
workingValue28.disableSittingOnChairThisFrame = stateFlag8
