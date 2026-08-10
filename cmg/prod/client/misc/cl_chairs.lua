--[[
    Beginner Guide: cl_chairs.lua
    =============================

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
    BEGINNER GUIDE — Chairs
    =======================

    File: cmg/prod/client/misc/cl_chairs.lua
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

    Config/data used:
      * cfg/cfg_chairs

    Commands/command-like entries found:
      * /sit
      * /lay
      * sit
      * lay
      * bedcoords
      * getup
      * standup
      * sit:debug
      * sit:getcenter
      * sit:getfarthestdist
      * sit:loadGroup
      * sit:unloadGroup

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * 5276360f55

    Named framework/network events found:
      * sit:helpTextThread
      * sit:checkThread
      * chat:addSuggestion
      * sit:debug
      * sit:getcenter
      * sit:getfarthestdist
      * sit:loadGroup
      * sit:unloadGroup

    Example player-facing text in this file:
      * ~INPUT_BA1F4C6D~
      * ~INPUT_6ED7AA10~
      * ~INPUT_7BDD6276~
      * ~INPUT_53FA0B5E~
      * ~INPUT_C5CB4FDE~

]]
local cmgCall, textValue13, workValue11, dataTable, dataTable2, dataTable3, cmgCall2, textValue39, textValue40, textValue41, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue9, textValue10, textValue11, textValue12, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue21, textValue23, textValue24, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue34, workValue16, workValue17, workValue18, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, textValue36, workValue28, flag8, workValue29, workValue30, textValue37, textValue38, flag9, flag10
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue13 = "cfg/cfg_chairs"
cmgCall, textValue13, workValue11 = cmgCall(textValue13)
dataTable = {}
dataTable.isSitting = false
dataTable.isLaying = false
dataTable.entity = 0
dataTable.poly = false
dataTable.type = nil
dataTable.lastPos = nil
dataTable.targetPos = nil
dataTable.teleportOut = false
dataTable.frozen = false
dataTable.plyFrozen = false
dataTable2 = {}
dataTable.animation = dataTable2
dataTable.scenario = false
dataTable.showingPrompt = false
dataTable.attAction = false
dataTable.lastAttemptTime = 0
dataTable2 = 0
dataTable3 = {}
cmgCall2 = "WORLD_HUMAN_SEAT_LEDGE"
textValue39 = "WORLD_HUMAN_SEAT_LEDGE_EATING"
textValue40 = "WORLD_HUMAN_SEAT_STEPS"
textValue41 = "WORLD_HUMAN_SEAT_WALL"
textValue = "WORLD_HUMAN_SEAT_WALL_EATING"
textValue2 = "WORLD_HUMAN_SEAT_WALL_TABLET"
textValue3 = "PROP_HUMAN_SEAT_ARMCHAIR"
textValue4 = "PROP_HUMAN_SEAT_BAR"
textValue5 = "PROP_HUMAN_SEAT_BENCH"
textValue6 = "PROP_HUMAN_SEAT_BENCH_FACILITY"
textValue9 = "PROP_HUMAN_SEAT_BENCH_DRINK"
textValue10 = "PROP_HUMAN_SEAT_BENCH_DRINK_FACILITY"
textValue11 = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER"
textValue12 = "PROP_HUMAN_SEAT_BENCH_FOOD"
textValue14 = "PROP_HUMAN_SEAT_BENCH_FOOD_FACILITY"
textValue15 = "PROP_HUMAN_SEAT_BUS_STOP_WAIT"
textValue16 = "PROP_HUMAN_SEAT_CHAIR"
textValue17 = "PROP_HUMAN_SEAT_CHAIR_DRINK"
textValue18 = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER"
textValue19 = "PROP_HUMAN_SEAT_CHAIR_FOOD"
textValue21 = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT"
textValue23 = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"
textValue24 = "PROP_HUMAN_SEAT_COMPUTER"
textValue26 = "PROP_HUMAN_SEAT_COMPUTER_LOW"
textValue27 = "PROP_HUMAN_SEAT_DECKCHAIR"
textValue28 = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK"
textValue29 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS"
textValue30 = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS_PRISON"
textValue31 = "PROP_HUMAN_SEAT_SEWING"
textValue32 = "PROP_HUMAN_SEAT_STRIP_WATCH"
textValue34 = "PROP_HUMAN_SEAT_SUNLOUNGER"
dataTable3[1] = cmgCall2
dataTable3[2] = textValue39
dataTable3[3] = textValue40
dataTable3[4] = textValue41
dataTable3[5] = textValue
dataTable3[6] = textValue2
dataTable3[7] = textValue3
dataTable3[8] = textValue4
dataTable3[9] = textValue5
dataTable3[10] = textValue6
dataTable3[11] = textValue9
dataTable3[12] = textValue10
dataTable3[13] = textValue11
dataTable3[14] = textValue12
dataTable3[15] = textValue14
dataTable3[16] = textValue15
dataTable3[17] = textValue16
dataTable3[18] = textValue17
dataTable3[19] = textValue18
dataTable3[20] = textValue19
dataTable3[21] = textValue21
dataTable3[22] = textValue23
dataTable3[23] = textValue24
dataTable3[24] = textValue26
dataTable3[25] = textValue27
dataTable3[26] = textValue28
dataTable3[27] = textValue29
dataTable3[28] = textValue30
dataTable3[29] = textValue31
dataTable3[30] = textValue32
dataTable3[31] = textValue34
cmgCall2 = CMG
function textValue39()
  local arg1, arg2
  arg1 = dataTable.isSitting
  if not arg1 then
    arg1 = dataTable.isLaying
  end
  return arg1
end
cmgCall2.isSittingOnChair = textValue39
function cmgCall2(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.getPlayerCombatTimer
  arg2 = arg2()
  if 0 == arg2 then
    arg2 = tCMG
    arg2 = arg2.canAnim
    arg2 = arg2()
    if arg2 then
      arg2 = GetEntityAttachedTo
      arg3 = PlayerPedId
      arg3, arg4 = arg3()
      arg2 = arg2(arg3, arg4)
      if 0 == arg2 then
        arg2 = RageUI
        arg2 = arg2.GetTimeSinceLastMenuToggle
        arg2 = arg2()
        arg3 = 200
        if arg2 > arg3 then
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          arg3 = dataTable2
          arg2 = arg2 - arg3
          arg3 = 1000
          if arg2 > arg3 then
            arg2 = CMG
            arg2 = arg2.isHandcuffed
            arg2 = arg2()
            if not arg2 then
              arg2 = true
              if not arg1 then
                arg3 = Citizen
                arg3 = arg3.Wait
                arg4 = 0
                arg3(arg4)
                arg3 = cmgCall2
                arg4 = true
                arg3 = arg3(arg4)
                arg2 = arg3
                if arg2 then
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  arg4 = 0
                  arg3(arg4)
                  arg3 = cmgCall2
                  arg4 = true
                  arg3 = arg3(arg4)
                  arg2 = arg3
                end
              end
              return arg2
          end
        end
      end
    end
  end
  else
    arg2 = false
    return arg2
  end
end
function textValue39(arg1)
  local arg2, arg3
  arg2 = notify
  arg3 = arg1
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
function textValue40(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = cmgCall.UseNativeNotifiactions
  if arg2 then
    arg2 = textValue39
    arg3 = arg1
    arg2(arg3)
  else
    arg2 = exports
    arg2 = arg2.mythic_notify
    arg3 = arg2
    arg2 = arg2.SendAlert
    arg4 = "error"
    arg5 = arg1
    arg2(arg3, arg4, arg5)
  end
end
function textValue41(arg1)
  local arg2, arg3
  arg2 = RequestAnimDict
  arg3 = arg1
  arg2(arg3)
  while true do
    arg2 = HasAnimDictLoaded
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Wait
    arg3 = 10
    arg2(arg3)
  end
end
function textValue(arg1)
  local arg2
  arg2 = textValue13
  arg2 = arg2[arg1]
  arg2 = arg2.sit
  arg2 = arg2.seats
  arg2 = #arg2
  return arg2
end
function textValue2(arg1)
  local arg2, arg3, arg4
  arg2 = IsEntityPositionFrozen
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = NetworkRequestControlOfEntity
    arg3 = arg1
    arg2(arg3)
    arg2 = FreezeEntityPosition
    arg3 = arg1
    arg4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, arg4)
    dataTable.frozen = true
  end
end
function textValue3(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable.frozen
  if arg2 then
    arg2 = FreezeEntityPosition
    arg3 = arg1
    arg4 = false
    arg2(arg3, arg4)
    dataTable.frozen = false
  end
end
function textValue4(arg1)
  local arg2, arg3, arg4
  arg2 = arg1
  arg3 = 180.0
  if arg2 > arg3 then
    arg3 = math
    arg3 = arg3.abs
    arg4 = arg2 - 180.0
    arg3 = arg3(arg4)
    arg4 = 180.0
    arg2 = arg4 - arg3
    arg2 = arg2 * -1
  end
  return arg2
end
function textValue5(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue
  arg4 = math
  arg4 = arg4.rad
  arg5 = arg2.x
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.rad
  arg6 = arg2.y
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.rad
  arg7 = arg2.z
  arg6 = arg6(arg7)
  arg7 = {}
  arg8 = {}
  arg7[1] = arg8
  arg8 = arg7[1]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg6
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg5
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg6
  arg10 = arg10(arg11)
  arg11 = math
  arg11 = arg11.sin
  workValue = arg4
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg11 = math
  arg11 = arg11.sin
  workValue = arg5
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg9 = arg9 - arg10
  arg8[1] = arg9
  arg8 = arg7[1]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg5
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg6
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg6
  arg10 = arg10(arg11)
  arg11 = math
  arg11 = arg11.sin
  workValue = arg4
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg11 = math
  arg11 = arg11.sin
  workValue = arg5
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg9 = arg9 + arg10
  arg8[2] = arg9
  arg8 = arg7[1]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg4
  arg9 = arg9(arg10)
  arg9 = -arg9
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg5
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg8[3] = arg9
  arg8 = arg7[1]
  arg8[4] = 1
  arg8 = {}
  arg7[2] = arg8
  arg8 = arg7[2]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg4
  arg9 = arg9(arg10)
  arg9 = -arg9
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg6
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg8[1] = arg9
  arg8 = arg7[2]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg6
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg4
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg8[2] = arg9
  arg8 = arg7[2]
  arg9 = math
  arg9 = arg9.sin
  arg10 = arg4
  arg9 = arg9(arg10)
  arg8[3] = arg9
  arg8 = arg7[2]
  arg8[4] = 1
  arg8 = {}
  arg7[3] = arg8
  arg8 = arg7[3]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg6
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg5
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg5
  arg10 = arg10(arg11)
  arg11 = math
  arg11 = arg11.sin
  workValue = arg6
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg11 = math
  arg11 = arg11.sin
  workValue = arg4
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg9 = arg9 + arg10
  arg8[1] = arg9
  arg8 = arg7[3]
  arg9 = math
  arg9 = arg9.sin
  arg10 = arg6
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.sin
  arg11 = arg5
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg6
  arg10 = arg10(arg11)
  arg11 = math
  arg11 = arg11.cos
  workValue = arg5
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg11 = math
  arg11 = arg11.sin
  workValue = arg4
  arg11 = arg11(workValue)
  arg10 = arg10 * arg11
  arg9 = arg9 - arg10
  arg8[2] = arg9
  arg8 = arg7[3]
  arg9 = math
  arg9 = arg9.cos
  arg10 = arg4
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.cos
  arg11 = arg5
  arg10 = arg10(arg11)
  arg9 = arg9 * arg10
  arg8[3] = arg9
  arg8 = arg7[3]
  arg8[4] = 1
  arg8 = {}
  arg7[4] = arg8
  arg8 = arg7[4]
  arg9 = arg7[4]
  arg10 = arg7[4]
  arg11 = arg1.x
  workValue = arg1.y
  nameValue = arg1.z
  arg10[3] = nameValue
  arg9[2] = workValue
  arg8[1] = arg11
  arg8 = arg7[4]
  arg8[4] = 1
  arg8 = arg3.x
  arg9 = arg7[1]
  arg9 = arg9[1]
  arg8 = arg8 * arg9
  arg9 = arg3.y
  arg10 = arg7[2]
  arg10 = arg10[1]
  arg9 = arg9 * arg10
  arg8 = arg8 + arg9
  arg9 = arg3.z
  arg10 = arg7[3]
  arg10 = arg10[1]
  arg9 = arg9 * arg10
  arg8 = arg8 + arg9
  arg9 = arg7[4]
  arg9 = arg9[1]
  arg8 = arg8 + arg9
  arg9 = arg3.x
  arg10 = arg7[1]
  arg10 = arg10[2]
  arg9 = arg9 * arg10
  arg10 = arg3.y
  arg11 = arg7[2]
  arg11 = arg11[2]
  arg10 = arg10 * arg11
  arg9 = arg9 + arg10
  arg10 = arg3.z
  arg11 = arg7[3]
  arg11 = arg11[2]
  arg10 = arg10 * arg11
  arg9 = arg9 + arg10
  arg10 = arg7[4]
  arg10 = arg10[2]
  arg9 = arg9 + arg10
  arg10 = arg3.x
  arg11 = arg7[1]
  arg11 = arg11[3]
  arg10 = arg10 * arg11
  arg11 = arg3.y
  workValue = arg7[2]
  workValue = workValue[3]
  arg11 = arg11 * workValue
  arg10 = arg10 + arg11
  arg11 = arg3.z
  workValue = arg7[3]
  workValue = workValue[3]
  arg11 = arg11 * workValue
  arg10 = arg10 + arg11
  arg11 = arg7[4]
  arg11 = arg11[3]
  arg10 = arg10 + arg11
  arg11 = vector3
  workValue = arg8
  nameValue = arg9
  numberValue = arg10
  return arg11(workValue, nameValue, numberValue)
end
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue
  arg2 = {}
  arg3 = pairs
  arg4 = cmgCall.LayTypes
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.animation
    arg10 = arg9.dict
    arg10 = arg2[arg10]
    if not arg10 then
      arg10 = IsEntityPlayingAnim
      arg11 = arg1
      workValue = arg9.dict
      nameValue = arg9.name
      numberValue = 3
      arg10 = arg10(arg11, workValue, nameValue, numberValue)
      if arg10 then
        arg10 = true
        return arg10
      else
        arg10 = arg9.dict
        arg2[arg10] = true
      end
    end
  end
  arg3 = false
  return arg3
end
function textValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg2 = pairs
  arg3 = dataTable3
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = IsPedUsingScenario
    arg9 = arg1
    arg10 = arg7
    arg8 = arg8(arg9, arg10)
    if arg8 then
      arg8 = true
      return arg8
    end
  end
  arg2 = false
  return arg2
end
function textValue10(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = pairs
  arg5 = GetGamePool
  arg6 = "CPed"
  arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue = arg5(arg6)
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue)
  for arg8, arg9 in arg4, arg5, arg6, arg7 do
    if arg9 ~= arg3 then
      arg10 = GetEntityCoords
      arg11 = arg9
      -- Beginner: result below is entityCoords.
      arg10 = arg10(arg11)
      arg10 = arg10 - arg1
      arg10 = #arg10
      arg11 = 1.35
      if arg10 < arg11 then
        if "sit" == arg2 then
          arg11 = textValue6
          workValue = arg9
          arg11 = arg11(workValue)
          if not arg11 then
            arg11 = 0.55
          end
          if arg10 < arg11 then
            arg11 = false
            return arg11
          end
        elseif "lay" == arg2 then
          arg11 = textValue6
          workValue = arg9
          arg11 = arg11(workValue)
          if not arg11 then
            arg11 = textValue9
            workValue = arg9
            arg11 = arg11(workValue)
            if not arg11 then
              goto flow_label_47
            end
          end
          arg11 = false
          return arg11
        end
      end
    end
    ::flow_label_47::
  end
  arg4 = true
  return arg4
end
function textValue11(arg1, arg2)
  local arg3, arg4
  arg3 = arg1.dist
  arg4 = arg2.dist
  arg3 = arg3 < arg4
  return arg3
end
function textValue12(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue
  arg4 = StartShapeTestLosProbe
  arg5 = arg1.x
  arg6 = arg1.y
  arg7 = arg1.z
  arg8 = arg2.x
  arg9 = arg2.y
  arg10 = arg2.z
  arg11 = -1
  workValue = arg3
  nameValue = 4
  arg4 = arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue)
  while true do
    arg5 = GetShapeTestResult
    arg6 = arg4
    arg5, arg6, arg7, arg8, arg9 = arg5(arg6)
    if 1 ~= arg5 then
      arg10 = arg6
      arg11 = arg7
      workValue = arg8
      nameValue = arg9
      return arg10, arg11, workValue, nameValue
    end
    arg10 = Wait
    arg11 = 0
    arg10(arg11)
  end
end
function textValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = GetWorldCoordFromScreenCoord
  arg2 = 0.5
  arg3 = 0.5
  arg1, arg2 = arg1(arg2, arg3)
  arg3 = arg2 * 10
  arg3 = arg1 + arg3
  arg4 = textValue12
  arg5 = arg1
  arg6 = arg3
  arg7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg7 = arg7()
  arg4, arg5 = arg4(arg5, arg6, arg7)
  if arg4 then
    return arg5
  else
    arg6 = false
    return arg6
  end
end
function textValue15(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3
  arg4 = {}
  arg5 = GetEntityCoords
  arg6 = PlayerPedId
  arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3 = arg6()
  -- Beginner: result below is entityCoords.
  arg5 = arg5(arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3)
  if arg3 then
    arg6 = cmgCall.Target
    if arg6 then
      arg6 = cmgCall.UseTargetingCoords
      if arg6 then
        arg6 = textValue14
        arg6 = arg6()
        if arg6 then
          arg5 = arg6
        end
      end
    end
  end
  arg6 = pairs
  arg7 = arg2
  arg6, arg7, arg8, arg9 = arg6(arg7)
  for arg10, arg11 in arg6, arg7, arg8, arg9 do
    workValue = {}
    arg4[arg10] = workValue
    if arg1 then
      workValue = arg1.w
      nameValue = vector3
      numberValue = 0.0
      numberValue2 = 0.0
      textValue7 = textValue4
      workValue4 = arg1.w
      textValue7, workValue4, numberValue3 = textValue7(workValue4)
      nameValue = nameValue(numberValue, numberValue2, textValue7, workValue4, numberValue3)
      numberValue = arg4[arg10]
      numberValue2 = textValue5
      textValue7 = arg1.xyz
      workValue4 = nameValue
      numberValue3 = arg11
      numberValue2 = numberValue2(textValue7, workValue4, numberValue3)
      numberValue.coords = numberValue2
      numberValue = arg11.w
      workValue = workValue + numberValue
      numberValue = 360.0
      if workValue > numberValue then
        workValue = workValue - 360.0
      end
      numberValue = arg4[arg10]
      numberValue.heading = workValue
    else
      workValue = arg4[arg10]
      nameValue = arg11.xyz
      workValue.coords = nameValue
      workValue = arg4[arg10]
      nameValue = arg11.w
      workValue.heading = nameValue
    end
    workValue = arg4[arg10]
    nameValue = arg4[arg10]
    nameValue = nameValue.coords
    nameValue = arg5 - nameValue
    nameValue = #nameValue
    workValue.dist = nameValue
  end
  arg6 = table
  arg6 = arg6.sort
  arg7 = arg4
  arg8 = textValue11
  arg6(arg7, arg8)
  return arg4
end
function textValue16(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7
  arg5 = nil
  arg6 = nil
  arg7 = textValue15
  arg8 = arg1
  arg9 = arg2
  arg10 = arg3
  arg7 = arg7(arg8, arg9, arg10)
  arg8 = pairs
  arg9 = arg7
  arg8, arg9, arg10, arg11 = arg8(arg9)
  for workValue, nameValue in arg8, arg9, arg10, arg11 do
    if not arg4 then
      numberValue = textValue10
      numberValue2 = nameValue.coords
      textValue7 = "sit"
      numberValue = numberValue(numberValue2, textValue7)
      if not numberValue then
        goto flow_label_22
      end
    end
    arg5 = nameValue.coords
    arg6 = nameValue.heading
    do break end
    ::flow_label_22::
  end
  arg8 = arg5
  arg9 = arg6
  return arg8, arg9
end
function textValue17(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  dataTable.isSitting = false
  dataTable.isLaying = false
  dataTable.scenario = false
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = dataTable.plyFrozen
  if arg5 then
    arg5 = SetEntityCollision
    arg6 = arg4
    arg7 = true
    arg8 = false
    arg5(arg6, arg7, arg8)
    arg5 = FreezeEntityPosition
    arg6 = arg4
    arg7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg5(arg6, arg7)
    dataTable.plyFrozen = false
  end
  arg5 = dataTable.entity
  if 0 ~= arg5 then
    arg5 = textValue3
    arg6 = dataTable.entity
    arg5(arg6)
    dataTable.entity = 0
  end
  if arg1 or arg2 then
    if arg3 then
      arg5 = CreateThread
      -- Beginner: this function is the body of a background FiveM thread.
      function arg6()
        local arg12, arg22
        while true do
          arg12 = IsEntityAttachedToAnyPed
          arg22 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg22 = arg22()
          arg12 = arg12(arg22)
          if not arg12 then
            break
          end
          arg12 = Wait
          arg22 = 200
          arg12(arg22)
        end
        arg12 = ClearPedTasksImmediately
        arg22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        arg12(arg22)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg5(arg6)
    elseif arg1 then
      arg5 = ClearPedTasks
      arg6 = arg4
      arg5(arg6)
    else
      arg5 = ClearPedTasksImmediately
      arg6 = arg4
      arg5(arg6)
    end
  end
end
function textValue18()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = dataTable.lastPos
  if arg1 then
    arg1 = cmgCall.AlwaysTeleportOutOfSeat
    if not arg1 then
      arg1 = cmgCall.TeleportToLastPosWhenNoRoute
      if not arg1 then
        arg1 = cmgCall.SitTypes
        arg2 = dataTable.type
        arg1 = arg1[arg2]
        arg1 = arg1.teleportOut
        if not arg1 then
          arg1 = dataTable.teleportOut
          if not arg1 then
            goto flow_label_42
          end
        end
      end
    end
    arg1 = ClearPedTasks
    arg2 = PlayerPedId
    arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = arg2()
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = Wait
    arg2 = 1500
    arg1(arg2)
    arg1 = SetEntityCoords
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = dataTable.lastPos
    arg3 = arg3.x
    arg4 = dataTable.lastPos
    arg4 = arg4.y
    arg5 = dataTable.lastPos
    arg5 = arg5.z
    arg5 = arg5 - 0.95
    arg6 = false
    arg7 = false
    arg8 = false
    arg9 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  end
  ::flow_label_42::
  arg1 = textValue17
  arg2 = true
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
end
function textValue19(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = cmgCall.SitTypes
  arg2 = arg2[arg1]
  arg2 = arg2.scenarios
  if not arg2 then
    arg3 = false
    arg4 = vector4
    arg5 = 0.0
    arg6 = 0.0
    arg7 = 0.0
    arg8 = 0.0
    arg4, arg5, arg6, arg7, arg8 = arg4(arg5, arg6, arg7, arg8)
    return arg3, arg4, arg5, arg6, arg7, arg8
  end
  arg3 = 1
  arg4 = #arg2
  if arg4 > 1 then
    arg4 = math
    arg4 = arg4.floor
    arg5 = math
    arg5 = arg5.random
    arg6 = 100
    arg7 = #arg2
    arg7 = arg7 * 100
    arg5 = arg5(arg6, arg7)
    arg5 = arg5 / 100
    arg5 = arg5 + 0.5
    arg4 = arg4(arg5)
    arg3 = arg4
  end
  arg4 = arg2[arg3]
  arg4 = arg4.name
  arg5 = arg2[arg3]
  arg5 = arg5.offset
  if not arg5 then
    arg5 = cmgCall.SitTypes
    arg5 = arg5.default
    arg5 = arg5.scenarios
    arg5 = arg5[1]
    arg5 = arg5.offset
  end
  return arg4, arg5
end
function textValue21()
  local arg1, arg2, arg3
  arg1 = IsPedUsingScenario
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.scenario
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = dataTable.isSitting
    if not arg1 then
      arg1 = dataTable.isLaying
      if not arg1 then
        goto flow_label_17
      end
    end
  end
  arg1 = true
  return arg1
  goto flow_label_19
  ::flow_label_17::
  arg1 = false
  return arg1
  ::flow_label_19::
end
function textValue23(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = GetEntityCoords
  arg5 = arg3
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5)
  arg5 = vector3
  arg6 = arg4.x
  arg7 = arg4.y
  arg8 = arg4.z
  arg8 = arg8 + 0.25
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = textValue12
  arg7 = arg5
  arg8 = arg1
  arg9 = arg3
  arg6, arg7, arg8, arg9 = arg6(arg7, arg8, arg9)
  while true do
    arg10 = GetEntityType
    arg11 = arg9
    arg10 = arg10(arg11)
    if 1 ~= arg10 then
      arg10 = arg7 - arg1
      arg10 = #arg10
      arg11 = 0.5
      if not (arg10 < arg11) then
        arg11 = arg7.x
        if 0.0 ~= arg11 and arg9 ~= arg2 then
          goto flow_label_37
        end
      end
      arg11 = true
      return arg11
      goto flow_label_51
      ::flow_label_37::
      arg11 = false
      return arg11
    else
      arg10 = textValue12
      arg11 = GetEntityCoords
      workValue = arg9
      -- Beginner: result below is entityCoords.
      arg11 = arg11(workValue)
      workValue = arg1
      nameValue = arg9
      arg10, arg11, workValue, nameValue = arg10(arg11, workValue, nameValue)
      arg9 = nameValue
      arg8 = workValue
      arg7 = arg11
      arg8 = arg10
    end
    ::flow_label_51::
    arg10 = Wait
    arg11 = 0
    arg10(arg11)
  end
end
function textValue24(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  arg4 = textValue4
  arg5 = arg2
  arg4 = arg4(arg5)
  arg5 = textValue5
  arg6 = arg1
  arg7 = vector3
  arg8 = 0.0
  arg9 = 0.0
  arg10 = arg4
  arg7 = arg7(arg8, arg9, arg10)
  arg8 = vector3
  arg9 = 0.0
  arg10 = 0.25
  arg11 = 0.0
  arg8, arg9, arg10, arg11 = arg8(arg9, arg10, arg11)
  arg5 = arg5(arg6, arg7, arg8, arg9, arg10, arg11)
  arg6 = vector3
  arg7 = arg5.x
  arg8 = arg5.y
  arg9 = arg5.z
  arg9 = arg9 + 0.3
  arg6 = arg6(arg7, arg8, arg9)
  arg7 = textValue12
  arg8 = arg5
  arg9 = arg6
  arg10 = arg3
  arg7 = arg7(arg8, arg9, arg10)
  if 0 == arg7 then
    arg8 = true
    return arg8
  else
    arg8 = false
    return arg8
  end
end
function textValue26(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = dataTable.lastAttemptTime
  arg2 = arg2 - arg3
  arg3 = 2500
  if arg2 < arg3 then
    return
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  dataTable.lastAttemptTime = arg2
  dataTable.attAction = true
  arg2 = arg1.entity
  dataTable.entity = arg2
  arg2 = arg1.poly
  dataTable.poly = arg2
  arg2 = arg1.sit
  arg2 = arg2.type
  dataTable.type = arg2
  arg2 = arg1.sit
  arg3 = cmgCall.SitTypes
  arg4 = arg2.type
  arg3 = arg3[arg4]
  arg4 = nil
  if not arg3 then
    arg5 = print
    arg6 = "^3Warning: No settings were set for type^2"
    arg7 = arg2.type
    arg8 = "^3 in Config.SitTypes, the default settings were used instead!"
    arg5(arg6, arg7, arg8)
    arg2.type = "default"
    arg5 = cmgCall.SitTypes
    arg3 = arg5.default
  end
  arg5 = arg1.entity
  if nil ~= arg5 then
    arg5 = arg1.entity
    if 0 ~= arg5 then
      arg5 = GetEntityRotation
      arg6 = arg1.entity
      arg5 = arg5(arg6)
      arg6 = arg5.x
      arg7 = arg5.y
      if arg6 < 0.0 then
        arg6 = arg6 * -1
      end
      if arg7 < 0.0 then
        arg7 = arg7 * -1
      end
      arg8 = arg6 + arg7
      arg9 = cmgCall.MaxTilt
      if arg8 > arg9 then
        arg9 = textValue40
        arg10 = cmgCall.Lang
        arg10 = arg10.Notification
        arg10 = arg10.TooTilted
        arg9(arg10)
        dataTable.attAction = false
        return
      end
      arg9 = GetEntityCoords
      arg10 = arg1.entity
      -- Beginner: result below is entityCoords.
      arg9 = arg9(arg10)
      arg10 = vector4
      arg11 = arg9.x
      workValue = arg9.y
      nameValue = arg9.z
      numberValue = GetEntityHeading
      numberValue2 = arg1.entity
      numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6 = numberValue(numberValue2)
      arg10 = arg10(arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6)
      arg4 = arg10
    end
  end
  arg5 = textValue16
  arg6 = arg4
  arg7 = arg2.seats
  arg8 = arg1.raycast
  arg5, arg6 = arg5(arg6, arg7, arg8)
  if nil == arg5 then
    arg7 = GetEntityModel
    arg8 = arg1.entity
    -- Beginner: result below is modelHash.
    arg7 = arg7(arg8)
    if 0 ~= arg7 then
      arg8 = textValue
      arg9 = arg7
      arg8 = arg8(arg9)
      if 1 ~= arg8 then
        arg8 = textValue40
        arg9 = cmgCall.Lang
        arg9 = arg9.Notification
        arg9 = arg9.NoAvailable
        arg8(arg9)
    end
    else
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.OccupiedSit
      arg8(arg9)
    end
    dataTable.attAction = false
    return
  end
  if nil == arg6 then
    arg7 = textValue40
    arg8 = cmgCall.Lang
    arg8 = arg8.Notification
    arg8 = arg8.NoAvailable
    arg7(arg8)
    arg7 = print
    arg8 = "^1Error: Heading was nil!"
    arg7(arg8)
    dataTable.attAction = false
    return
  end
  arg7 = arg2.skipSeeCheck
  if not arg7 then
    arg7 = false
  end
  if not arg7 then
    arg8 = textValue23
    arg9 = arg5
    arg10 = arg1.entity
    arg8 = arg8(arg9, arg10)
    if not arg8 then
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.CannotReachSeat
      arg8(arg9)
      dataTable.attAction = false
      return
    end
  end
  arg8 = arg1.entity
  if 0 ~= arg8 then
    arg8 = textValue24
    arg9 = arg5
    arg10 = arg6
    arg11 = arg1.entity
    arg8 = arg8(arg9, arg10, arg11)
    if not arg8 then
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.CannotSitInSeat
      arg8(arg9)
      dataTable.attAction = false
      return
    end
  end
  arg8 = textValue19
  arg9 = arg2.type
  arg8, arg9 = arg8(arg9)
  arg10 = arg9.w
  arg6 = arg6 + arg10
  arg10 = 360.0
  if arg6 > arg10 then
    arg6 = arg6 - 360.0
  end
  arg10 = textValue4
  arg11 = arg6
  arg10 = arg10(arg11)
  arg11 = textValue5
  workValue = arg5
  nameValue = vector3
  numberValue = 0.0
  numberValue2 = 0.0
  textValue7 = arg10
  nameValue = nameValue(numberValue, numberValue2, textValue7)
  numberValue = arg9.xyz
  arg11 = arg11(workValue, nameValue, numberValue)
  arg5 = arg11
  arg11 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg11 = arg11()
  workValue = GetEntityCoords
  nameValue = arg11
  -- Beginner: result below is entityCoords.
  workValue = workValue(nameValue)
  dataTable.teleportOut = false
  dataTable.lastPos = nil
  nameValue = cmgCall.AlwaysTeleportOutOfSeat
  if not nameValue then
    nameValue = arg3.teleportOut
    if not nameValue then
      nameValue = arg2.teleportOut
      if not nameValue then
        goto flow_label_199
      end
    end
  end
  dataTable.teleportOut = true
  dataTable.lastPos = workValue
  ::flow_label_199::
  nameValue = dataTable.isSitting
  if not nameValue then
    nameValue = dataTable.isLaying
    if not nameValue then
      goto flow_label_235
    end
  end
  nameValue = arg5 - workValue
  nameValue = #nameValue
  numberValue = 0.2
  if nameValue < numberValue then
    nameValue = textValue18
    nameValue()
    dataTable.attAction = false
    return
  else
    nameValue = dataTable.teleportOut
    if nameValue then
      nameValue = textValue17
      numberValue = false
      numberValue2 = true
      textValue7 = false
      nameValue(numberValue, numberValue2, textValue7)
    else
      nameValue = textValue17
      numberValue = true
      numberValue2 = false
      textValue7 = false
      nameValue(numberValue, numberValue2, textValue7)
      nameValue = Wait
      numberValue = 2000
      nameValue(numberValue)
    end
    nameValue = arg1.entity
    dataTable.entity = nameValue
  end
  ::flow_label_235::
  dataTable.scenario = arg8
  dataTable.isLaying = false
  nameValue = {}
  dataTable.animation = nameValue
  nameValue = ClearPedTasks
  numberValue = arg11
  nameValue(numberValue)
  nameValue = arg1.entity
  if 0 ~= nameValue then
    nameValue = textValue2
    numberValue = arg1.entity
    nameValue(numberValue)
  end
  nameValue = arg3.timeout
  if not nameValue then
    nameValue = cmgCall.SitTypes
    nameValue = nameValue.default
    nameValue = nameValue.timeout
  end
  numberValue = arg3.skipGoStraightTask
  numberValue2 = arg5.xy
  textValue7 = GetEntityCoords
  workValue4 = arg11
  -- Beginner: result below is entityCoords.
  textValue7 = textValue7(workValue4)
  textValue7 = textValue7.xy
  numberValue2 = numberValue2 - textValue7
  numberValue2 = #numberValue2
  textValue7 = numberValue2
  workValue4 = cmgCall.AlwaysTeleportToSeat
  if not workValue4 then
    workValue4 = arg2.teleportIn
    if not workValue4 then
      workValue4 = arg3.teleportIn
    end
  end
  numberValue3 = 0
  numberValue4 = 0
  if not workValue4 and not numberValue then
    workValue5 = textValue5
    waitCall = arg5
    vector3Builder = vector3
    vector3Builder2 = 0.0
    numberValue5 = 0.0
    numberValue6 = arg10
    vector3Builder = vector3Builder(vector3Builder2, numberValue5, numberValue6)
    vector3Builder2 = vector3
    numberValue5 = 0.0
    numberValue6 = 0.695
    numberValue7 = 0.0
    vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6 = vector3Builder2(numberValue5, numberValue6, numberValue7)
    workValue5 = workValue5(waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6)
    waitCall = TaskGoStraightToCoord
    vector3Builder = arg11
    vector3Builder2 = workValue5.x
    numberValue5 = workValue5.y
    numberValue6 = workValue5.z
    numberValue7 = 1
    flag = nameValue * 500
    flag2 = arg6
    flag3 = 0.15
    waitCall(vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3)
    while true do
      waitCall = Wait
      vector3Builder = 500
      waitCall(vector3Builder)
      waitCall = dataTable.attAction
      if not waitCall then
        return
      end
      waitCall = GetEntityCoords
      vector3Builder = arg11
      -- Beginner: result below is entityCoords.
      waitCall = waitCall(vector3Builder)
      vector3Builder = workValue5.xy
      vector3Builder2 = waitCall.xy
      vector3Builder = vector3Builder - vector3Builder2
      textValue7 = #vector3Builder
      numberValue4 = numberValue4 + 1
      if numberValue2 > textValue7 then
        workValue = waitCall
        numberValue2 = textValue7
      end
      vector3Builder = math
      vector3Builder = vector3Builder.abs
      vector3Builder2 = textValue7 - numberValue2
      vector3Builder = vector3Builder(vector3Builder2)
      vector3Builder2 = GetScriptTaskStatus
      numberValue5 = arg11
      numberValue6 = "SCRIPT_TASK_GO_STRAIGHT_TO_COORD"
      vector3Builder2 = vector3Builder2(numberValue5, numberValue6)
      if 0 == vector3Builder2 or 7 == vector3Builder2 or nameValue < numberValue4 then
        break
      end
      numberValue5 = numberValue2 + 0.1
      if textValue7 > numberValue5 then
        numberValue5 = 0.85
        if textValue7 > numberValue5 then
          numberValue3 = numberValue3 + 1
      end
      else
        numberValue5 = 0.085
        if vector3Builder <= numberValue5 then
          numberValue5 = cmgCall.MaxInteractionDist
          if textValue7 < numberValue5 then
            numberValue5 = 0.05
            if textValue7 > numberValue5 and numberValue4 > 1 then
              numberValue3 = numberValue3 + 1
          end
        end
        else
          numberValue3 = numberValue3 - 1
          if numberValue3 < 0 then
            numberValue3 = 0
          end
        end
      end
      if numberValue3 > 2 then
        numberValue5 = arg2.type
        if "sunlounger" ~= numberValue5 then
          break
        end
      end
    end
    waitCall = 0.5
    workValue4 = textValue7 > waitCall or workValue4
    numberValue4 = 0
  end
  workValue5 = dataTable.scenario
  if workValue5 then
    dataTable.targetPos = arg5
    workValue5 = TaskStartScenarioAtPosition
    waitCall = arg11
    vector3Builder = dataTable.scenario
    vector3Builder2 = arg5.x
    numberValue5 = arg5.y
    numberValue6 = arg5.z
    numberValue7 = arg6
    flag = -1
    flag2 = false
    flag3 = workValue4
    -- Beginner: Make an NPC start a GTA scenario/ambient animation.
    workValue5(waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3)
    while true do
      workValue5 = Wait
      waitCall = 500
      workValue5(waitCall)
      workValue5 = GetEntityCoords
      waitCall = arg11
      -- Beginner: result below is entityCoords.
      workValue5 = workValue5(waitCall)
      waitCall = arg5.xy
      vector3Builder = workValue5.xy
      waitCall = waitCall - vector3Builder
      textValue7 = #waitCall
      numberValue4 = numberValue4 + 1
      waitCall = GetScriptTaskStatus
      vector3Builder = arg11
      vector3Builder2 = "SCRIPT_TASK_START_SCENARIO_AT_POSITION"
      waitCall = waitCall(vector3Builder, vector3Builder2)
      if 0 == waitCall or 7 == waitCall then
        break
      end
      vector3Builder = IsPedUsingScenario
      vector3Builder2 = arg11
      numberValue5 = dataTable.scenario
      vector3Builder = vector3Builder(vector3Builder2, numberValue5)
      if vector3Builder then
        vector3Builder = 0.4
        if textValue7 < vector3Builder then
          dataTable.isSitting = true
          break
      end
      else
        if nameValue < numberValue4 then
          break
        end
        vector3Builder = IsPedUsingScenario
        vector3Builder2 = arg11
        numberValue5 = dataTable.scenario
        vector3Builder = vector3Builder(vector3Builder2, numberValue5)
        if not vector3Builder then
          break
        end
      end
    end
  else
    workValue5 = arg3.animation
    waitCall = workValue5.offset
    if waitCall then
      waitCall = workValue5.offset
      waitCall = waitCall.xyz
      arg5 = arg5 + waitCall
      waitCall = workValue5.offset
      waitCall = waitCall.w
      arg6 = arg6 + waitCall
    end
    dataTable.targetPos = arg5
    waitCall = SetEntityCollision
    vector3Builder = arg11
    vector3Builder2 = false
    numberValue5 = false
    waitCall(vector3Builder, vector3Builder2, numberValue5)
    waitCall = FreezeEntityPosition
    vector3Builder = arg11
    vector3Builder2 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    waitCall(vector3Builder, vector3Builder2)
    waitCall = SetEntityCoords
    vector3Builder = arg11
    vector3Builder2 = arg5.x
    numberValue5 = arg5.y
    numberValue6 = arg5.z
    numberValue7 = false
    flag = false
    flag2 = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    waitCall(vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3)
    waitCall = SetEntityHeading
    vector3Builder = arg11
    vector3Builder2 = arg6
    -- Beginner: Change the direction an entity is facing.
    waitCall(vector3Builder, vector3Builder2)
    waitCall = textValue41
    vector3Builder = workValue5.dict
    waitCall(vector3Builder)
    waitCall = TaskPlayAnim
    vector3Builder = arg11
    vector3Builder2 = workValue5.dict
    numberValue5 = workValue5.name
    numberValue6 = 2.0
    numberValue7 = 2.0
    flag = -1
    flag2 = workValue5.flag
    if not flag2 then
      flag2 = 1
    end
    flag3 = 0
    flag4 = false
    flag5 = false
    flag6 = false
    -- Beginner: Play an animation on a ped.
    waitCall(vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag5, flag6)
    waitCall = RemoveAnimDict
    vector3Builder = workValue5.dict
    waitCall(vector3Builder)
    dataTable.plyFrozen = true
    dataTable.isSitting = true
    dataTable.animation = workValue5
  end
  workValue5 = dataTable.isSitting
  if workValue5 then
    workValue5 = Wait
    waitCall = 350
    workValue5(waitCall)
    workValue5 = cmgCall.ShowHelpText
    if workValue5 then
      workValue5 = TriggerEvent
      waitCall = "sit:helpTextThread"
      vector3Builder = "isSitting"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
      workValue5(waitCall, vector3Builder)
    end
    workValue5 = TriggerEvent
    waitCall = "sit:checkThread"
    vector3Builder = "isSitting"
    workValue5(waitCall, vector3Builder)
  elseif textValue7 <= 2.0 then
    workValue5 = TaskStartScenarioAtPosition
    waitCall = arg11
    vector3Builder = dataTable.scenario
    vector3Builder2 = arg5.x
    numberValue5 = arg5.y
    numberValue6 = arg5.z
    numberValue7 = arg6
    flag = -1
    flag2 = false
    flag3 = true
    -- Beginner: Make an NPC start a GTA scenario/ambient animation.
    workValue5(waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3)
    dataTable.lastPos = workValue
    dataTable.isSitting = true
    workValue5 = Wait
    waitCall = 350
    workValue5(waitCall)
    workValue5 = cmgCall.ShowHelpText
    if workValue5 then
      workValue5 = TriggerEvent
      waitCall = "sit:helpTextThread"
      vector3Builder = "isSitting"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
      workValue5(waitCall, vector3Builder)
    end
    workValue5 = TriggerEvent
    waitCall = "sit:checkThread"
    vector3Builder = "isSitting"
    workValue5(waitCall, vector3Builder)
  else
    workValue5 = textValue17
    waitCall = true
    vector3Builder = false
    vector3Builder2 = false
    workValue5(waitCall, vector3Builder, vector3Builder2)
  end
  dataTable.attAction = false
end
function textValue27()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder
  arg1 = dataTable.attAction
  if arg1 then
    arg1 = textValue40
    arg2 = cmgCall.Lang
    arg2 = arg2.Notification
    arg2 = arg2.AlreadyAttemptingToSit
    arg1(arg2)
    return
  end
  arg1 = GetEntityCoords
  arg2 = PlayerPedId
  arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder = arg2()
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder)
  arg2 = {}
  arg2.entity = 0
  arg3 = cmgCall.MaxInteractionDist
  arg2.dist = arg3
  arg3 = pairs
  arg4 = textValue13
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.sit
    if arg9 then
      arg9 = GetClosestObjectOfType
      arg10 = arg1.x
      arg11 = arg1.y
      workValue = arg1.z
      nameValue = cmgCall.MaxInteractionDist
      numberValue = arg7
      numberValue2 = false
      textValue7 = true
      workValue4 = true
      -- Beginner: result below is objectEntity.
      arg9 = arg9(arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4)
      if 0 ~= arg9 then
        arg10 = GetEntityCoords
        arg11 = arg9
        -- Beginner: result below is entityCoords.
        arg10 = arg10(arg11)
        arg10 = arg10 - arg1
        arg10 = #arg10
        arg11 = arg2.dist
        if arg10 < arg11 then
          arg2.entity = arg9
          arg2.dist = arg10
        end
      end
    end
  end
  arg3 = pairs
  arg4 = workValue11
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.enabled
    if arg9 then
      arg9 = arg8.radius
      if arg9 then
        arg9 = arg8.center
        arg9 = arg9.xy
        arg10 = arg1.xy
        arg9 = arg9 - arg10
        arg9 = #arg9
        arg10 = arg8.radius
        if not (arg9 < arg10) then
          goto flow_label_99
        end
      end
      arg9 = pairs
      arg10 = arg8.polys
      arg9, arg10, arg11, workValue = arg9(arg10)
      for nameValue, numberValue in arg9, arg10, arg11, workValue do
        numberValue2 = numberValue.sit
        if numberValue2 then
          numberValue2 = pairs
          textValue7 = numberValue.sit
          textValue7 = textValue7.seats
          numberValue2, textValue7, workValue4, numberValue3 = numberValue2(textValue7)
          for numberValue4, workValue5 in numberValue2, textValue7, workValue4, numberValue3 do
            waitCall = workValue5.xyz
            waitCall = waitCall - arg1
            waitCall = #waitCall
            vector3Builder = arg2.dist
            if waitCall < vector3Builder then
              arg2.name = nameValue
              arg2.group = arg7
              arg2.dist = waitCall
            end
          end
        end
      end
    end
    ::flow_label_99::
  end
  arg3 = arg2.name
  if nil ~= arg3 then
    arg4 = arg2.group
    arg3 = workValue11
    arg3 = arg3[arg4]
    arg3 = arg3.polys
    arg4 = arg2.name
    arg3 = arg3[arg4]
    arg4 = textValue26
    arg5 = {}
    arg5.entity = 0
    arg6 = arg2.name
    arg5.poly = arg6
    arg6 = arg3.sit
    arg5.sit = arg6
    arg5.raycast = false
    arg4(arg5)
  else
    arg3 = arg2.entity
    if 0 ~= arg3 then
      arg3 = textValue26
      arg4 = {}
      arg5 = arg2.entity
      arg4.entity = arg5
      arg4.poly = false
      arg5 = GetEntityModel
      arg6 = arg2.entity
      -- Beginner: result below is modelHash.
      arg5 = arg5(arg6)
      arg6 = textValue13
      arg5 = arg6[arg5]
      arg5 = arg5.sit
      arg4.sit = arg5
      arg4.raycast = false
      arg3(arg4)
    else
      arg3 = textValue40
      arg4 = cmgCall.Lang
      arg4 = arg4.Notification
      arg4 = arg4.NoFound
      arg3(arg4)
    end
  end
end
function textValue28(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall
  dataTable.attAction = true
  dataTable.isSitting = false
  dataTable.plyFrozen = true
  dataTable.scenario = false
  dataTable.teleportOut = false
  arg2 = arg1.entity
  dataTable.entity = arg2
  arg2 = arg1.poly
  dataTable.poly = arg2
  arg2 = arg1.bed
  arg2 = arg2.type
  dataTable.type = arg2
  arg2 = arg1.bed
  arg3 = nil
  arg4 = arg1.entity
  if arg4 then
    arg4 = GetEntityRotation
    arg5 = arg1.entity
    arg4 = arg4(arg5)
    arg5 = arg4.x
    arg6 = arg4.y
    if arg5 < 0.0 then
      arg5 = arg5 * -1
    end
    if arg6 < 0.0 then
      arg6 = arg6 * -1
    end
    arg7 = arg5 + arg6
    arg8 = cmgCall.MaxTilt
    if arg7 > arg8 then
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.TooTilted
      arg8(arg9)
      dataTable.attAction = false
      return
    end
    arg8 = GetEntityCoords
    arg9 = arg1.entity
    -- Beginner: result below is entityCoords.
    arg8 = arg8(arg9)
    arg9 = vector4
    arg10 = arg8.x
    arg11 = arg8.y
    workValue = arg8.z
    nameValue = GetEntityHeading
    numberValue = arg1.entity
    nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall = nameValue(numberValue)
    arg9 = arg9(arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall)
    arg3 = arg9
  end
  arg4 = arg2.skipOccupiedCheck
  if not arg4 then
    arg4 = false
  end
  arg5 = textValue16
  arg6 = arg3
  arg7 = arg2.seats
  arg8 = arg1.raycast
  arg9 = arg4
  arg5, arg6 = arg5(arg6, arg7, arg8, arg9)
  if nil == arg5 then
    arg7 = GetEntityModel
    arg8 = arg1.entity
    -- Beginner: result below is modelHash.
    arg7 = arg7(arg8)
    arg8 = cmgCall.SitTypes
    arg9 = arg2.type
    arg8 = arg8[arg9]
    if arg8 then
      arg8 = textValue
      arg9 = arg7
      arg8 = arg8(arg9)
      if 1 ~= arg8 then
        arg8 = textValue40
        arg9 = cmgCall.Lang
        arg9 = arg9.Notification
        arg9 = arg9.NoAvailable
        arg8(arg9)
    end
    else
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.OccupiedSit
      arg8(arg9)
    end
    dataTable.attAction = false
    return
  end
  if nil == arg6 then
    arg7 = textValue40
    arg8 = cmgCall.Lang
    arg8 = arg8.Notification
    arg8 = arg8.NoAvailable
    arg7(arg8)
    arg7 = print
    arg8 = "^1Error: Heading was nil!"
    arg9 = arg6
    arg7(arg8, arg9)
    dataTable.attAction = false
    return
  end
  if not arg4 then
    arg7 = textValue10
    arg8 = arg5
    arg9 = "lay"
    arg7 = arg7(arg8, arg9)
    if not arg7 then
      arg7 = textValue40
      arg8 = cmgCall.Lang
      arg8 = arg8.Notification
      arg8 = arg8.OccupiedLay
      arg7(arg8)
      dataTable.attAction = false
      return
    end
  end
  arg7 = arg2.skipSeeCheck
  if not arg7 then
    arg7 = false
  end
  if not arg7 then
    arg8 = textValue23
    arg9 = arg5
    arg10 = arg1.entity
    arg8 = arg8(arg9, arg10)
    if not arg8 then
      arg8 = textValue40
      arg9 = cmgCall.Lang
      arg9 = arg9.Notification
      arg9 = arg9.CannotReachBed
      arg8(arg9)
      dataTable.attAction = false
      return
    end
  end
  arg8 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg8 = arg8()
  arg9 = cmgCall.AlwaysTeleportOutOfSeat
  if not arg9 then
    arg9 = cmgCall.LayTypes
    arg10 = arg2.type
    arg9 = arg9[arg10]
    arg9 = arg9.teleportOut
    if not arg9 then
      arg9 = arg2.teleportOut
      if not arg9 then
        goto flow_label_159
      end
    end
  end
  dataTable.teleportOut = true
  arg9 = GetEntityCoords
  arg10 = arg8
  -- Beginner: result below is entityCoords.
  arg9 = arg9(arg10)
  dataTable.lastPos = arg9
  ::flow_label_159::
  arg9 = nil
  arg10 = cmgCall.LayTypes
  arg11 = arg2.type
  arg10 = arg10[arg11]
  if arg10 then
    arg10 = cmgCall.LayTypes
    arg11 = arg2.type
    arg10 = arg10[arg11]
    arg9 = arg10.animation
  else
    arg10 = print
    arg11 = "^3Warning: No animation settings were set for type^2"
    workValue = arg2.type
    nameValue = "^3 in Config.LayTypes, the default animation settings were used instead!"
    arg10(arg11, workValue, nameValue)
    arg10 = cmgCall.LayTypes
    arg10 = arg10.default
    arg9 = arg10.animation
  end
  dataTable.animation = arg9
  arg10 = arg9.offset
  if arg10 then
    arg10 = textValue5
    arg11 = arg5
    workValue = vector3
    nameValue = 0.0
    numberValue = 0.0
    numberValue2 = textValue4
    textValue7 = arg6
    numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall = numberValue2(textValue7)
    workValue = workValue(nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall)
    nameValue = arg9.offset
    nameValue = nameValue.xyz
    arg10 = arg10(arg11, workValue, nameValue)
    arg5 = arg10
    arg10 = arg9.offset
    arg10 = arg10.w
    arg6 = arg6 + arg10
    arg10 = 360
    if arg6 > arg10 then
      arg6 = arg6 - 360
    end
  end
  arg10 = textValue41
  arg11 = arg9.dict
  arg10(arg11)
  arg10 = ClearPedTasksImmediately
  arg11 = arg8
  arg10(arg11)
  arg10 = SetEntityCollision
  arg11 = arg8
  workValue = false
  nameValue = false
  arg10(arg11, workValue, nameValue)
  arg10 = FreezeEntityPosition
  arg11 = arg8
  workValue = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg10(arg11, workValue)
  arg10 = SetEntityCoords
  arg11 = arg8
  workValue = arg5.x
  nameValue = arg5.y
  numberValue = arg5.z
  numberValue2 = false
  textValue7 = false
  workValue4 = false
  numberValue3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg10(arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3)
  arg10 = SetEntityHeading
  arg11 = arg8
  workValue = arg6
  -- Beginner: Change the direction an entity is facing.
  arg10(arg11, workValue)
  arg10 = TaskPlayAnim
  arg11 = arg8
  workValue = arg9.dict
  nameValue = arg9.name
  numberValue = 2.0
  numberValue2 = 2.0
  textValue7 = -1
  workValue4 = arg9.flag
  if not workValue4 then
    workValue4 = 1
  end
  numberValue3 = 0
  numberValue4 = false
  workValue5 = false
  waitCall = false
  -- Beginner: Play an animation on a ped.
  arg10(arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall)
  arg10 = RemoveAnimDict
  arg11 = arg9.dict
  arg10(arg11)
  arg10 = Wait
  arg11 = 350
  arg10(arg11)
  dataTable.isLaying = true
  dataTable.attAction = false
  dataTable.targetPos = arg5
  arg10 = cmgCall.ShowHelpText
  if arg10 then
    arg10 = TriggerEvent
    arg11 = "sit:helpTextThread"
    workValue = "isLaying"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "sit:helpTextThread".
    arg10(arg11, workValue)
  end
  arg10 = TriggerEvent
  arg11 = "sit:checkThread"
  workValue = "isLaying"
  arg10(arg11, workValue)
end
function textValue29()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4
  arg1 = dataTable.attAction
  if arg1 then
    arg1 = textValue40
    arg2 = cmgCall.Lang
    arg2 = arg2.Notification
    arg2 = arg2.AlreadyAttemptingToLay
    arg1(arg2)
    return
  end
  arg1 = GetEntityCoords
  arg2 = PlayerPedId
  arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4 = arg2()
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4)
  arg2 = {}
  arg2.entity = 0
  arg3 = cmgCall.MaxInteractionDist
  arg2.dist = arg3
  arg3 = pairs
  arg4 = textValue13
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.lay
    if arg9 then
      arg9 = GetClosestObjectOfType
      arg10 = arg1.x
      arg11 = arg1.y
      workValue = arg1.z
      nameValue = cmgCall.MaxInteractionDist
      numberValue = arg7
      numberValue2 = false
      textValue7 = true
      workValue4 = true
      -- Beginner: result below is objectEntity.
      arg9 = arg9(arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4)
      if 0 ~= arg9 then
        arg10 = GetEntityCoords
        arg11 = arg9
        -- Beginner: result below is entityCoords.
        arg10 = arg10(arg11)
        arg10 = arg10 - arg1
        arg10 = #arg10
        arg11 = arg2.dist
        if arg10 < arg11 then
          arg2.entity = arg9
          arg2.dist = arg10
        end
      end
    end
  end
  arg3 = pairs
  arg4 = workValue11
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.enabled
    if arg9 then
      arg9 = arg8.radius
      if arg9 then
        arg9 = arg8.center
        arg9 = arg9.xy
        arg10 = arg1.xy
        arg9 = arg9 - arg10
        arg9 = #arg9
        arg10 = arg8.radius
        if not (arg9 < arg10) then
          goto flow_label_94
        end
      end
      arg9 = pairs
      arg10 = arg8.polys
      arg9, arg10, arg11, workValue = arg9(arg10)
      for nameValue, numberValue in arg9, arg10, arg11, workValue do
        numberValue2 = numberValue.lay
        if numberValue2 then
          numberValue2 = numberValue.lay
          numberValue2 = numberValue2.seats
          numberValue2 = numberValue2[1]
          numberValue2 = numberValue2.xyz
          numberValue2 = numberValue2 - arg1
          numberValue2 = #numberValue2
          textValue7 = arg2.dist
          if numberValue2 < textValue7 then
            arg2.name = nameValue
            arg2.group = arg7
            arg2.dist = numberValue2
          end
        end
      end
    end
    ::flow_label_94::
  end
  arg3 = arg2.name
  if nil ~= arg3 then
    arg4 = arg2.group
    arg3 = workValue11
    arg3 = arg3[arg4]
    arg3 = arg3.polys
    arg4 = arg2.name
    arg3 = arg3[arg4]
    arg4 = textValue28
    arg5 = {}
    arg5.entity = 0
    arg6 = arg2.name
    arg5.poly = arg6
    arg6 = arg3.lay
    arg5.bed = arg6
    arg5.raycast = false
    arg4(arg5)
  else
    arg3 = arg2.entity
    if 0 ~= arg3 then
      arg3 = textValue28
      arg4 = {}
      arg5 = arg2.entity
      arg4.entity = arg5
      arg4.poly = false
      arg5 = GetEntityModel
      arg6 = arg2.entity
      -- Beginner: result below is modelHash.
      arg5 = arg5(arg6)
      arg6 = textValue13
      arg5 = arg6[arg5]
      arg5 = arg5.lay
      arg4.bed = arg5
      arg4.raycast = false
      arg3(arg4)
    else
      arg3 = textValue40
      arg4 = cmgCall.Lang
      arg4 = arg4.Notification
      arg4 = arg4.NoBedFound
      arg3(arg4)
    end
  end
end
function textValue30()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7
  arg1 = true
  arg2 = cmgCall.LayTypes
  arg3 = dataTable.type
  arg2 = arg2[arg3]
  arg2 = arg2.exitAnim
  if not arg2 then
    arg2 = cmgCall.LayTypes
    arg2 = arg2.default
    arg2 = arg2.exitAnim
  end
  dataTable.isLaying = false
  arg3 = dataTable.teleportOut
  if arg3 then
    arg3 = ClearPedTasksImmediately
    arg4 = PlayerPedId
    arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7 = arg4()
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7)
    arg3 = SetEntityCoords
    arg4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg4 = arg4()
    arg5 = dataTable.lastPos
    arg5 = arg5.x
    arg6 = dataTable.lastPos
    arg6 = arg6.y
    arg7 = dataTable.lastPos
    arg7 = arg7.z
    arg7 = arg7 - 0.95
    arg8 = false
    arg9 = false
    arg10 = false
    arg11 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    arg1 = false
  elseif arg2 then
    arg3 = cmgCall.LayTypes
    arg4 = dataTable.type
    arg3 = arg3[arg4]
    arg3 = arg3.exitAnimType
    if not arg3 then
      arg3 = cmgCall.LayTypes
      arg3 = arg3.default
      arg3 = arg3.exitAnimType
    end
    arg4 = nil
    if 0 == arg3 then
      arg5 = GetGameplayCamRelativeHeading
      arg5 = arg5()
      if arg5 < 0 then
        arg4 = "m_getout_l"
      else
        arg4 = "m_getout_r"
      end
    elseif 1 == arg3 then
      arg4 = "m_getout_l"
    elseif 2 == arg3 then
      arg4 = "m_getout_r"
    else
      arg5 = print
      arg6 = "^1Error: exitAnimType:"
      arg7 = arg3
      arg8 = "was not an expcted type, please correct this, setting type to 1 for this instance (\"m_getout_r\")."
      arg5(arg6, arg7, arg8)
      arg4 = "m_getout_r"
    end
    arg5 = textValue41
    arg6 = "savem_default@"
    arg5(arg6)
    arg5 = TaskPlayAnim
    arg6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg6 = arg6()
    arg7 = "savem_default@"
    arg8 = arg4
    arg9 = 1.0
    arg10 = 1.0
    arg11 = 3000
    workValue = 0
    nameValue = 0
    numberValue = false
    numberValue2 = false
    textValue7 = false
    -- Beginner: Play an animation on a ped.
    arg5(arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7)
    arg5 = RemoveAnimDict
    arg6 = "savem_default@"
    arg5(arg6)
    arg5 = SetEntityCollision
    arg6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg6 = arg6()
    arg7 = true
    arg8 = false
    arg5(arg6, arg7, arg8)
    arg5 = FreezeEntityPosition
    arg6 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg6 = arg6()
    arg7 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg5(arg6, arg7)
    arg5 = Wait
    arg6 = 1400
    arg5(arg6)
    arg1 = false
  end
  arg3 = {}
  dataTable.animation = arg3
  arg3 = textValue17
  arg4 = arg1
  arg5 = false
  arg6 = false
  arg3(arg4, arg5, arg6)
end
function textValue31()
  local arg1, arg2, arg3, arg4
  arg1 = IsPedUsingScenario
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = dataTable.scenario
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = dataTable.isSitting
    if not arg1 then
      goto flow_label_14
    end
  end
  arg1 = textValue18
  arg1()
  goto flow_label_29
  ::flow_label_14::
  arg1 = dataTable.isLaying
  if arg1 then
    arg1 = textValue30
    arg1()
  else
    arg1 = dataTable.attAction
    if arg1 then
      dataTable.attAction = false
      arg1 = textValue17
      arg2 = true
      arg3 = false
      arg4 = false
      arg1(arg2, arg3, arg4)
    end
  end
  ::flow_label_29::
end
function textValue32(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = cmgCall.Target
  if "ox_target" == arg3 then
    arg3 = exports
    arg3 = arg3.ox_target
    arg4 = arg3
    arg3 = arg3.addModel
    arg5 = arg1
    arg6 = arg2
    arg3(arg4, arg5, arg6)
  else
    arg3 = exports
    arg4 = cmgCall.Target
    arg3 = arg3[arg4]
    arg4 = arg3
    arg3 = arg3.AddTargetModel
    arg5 = arg1
    arg6 = {}
    arg6.options = arg2
    arg7 = cmgCall.MaxInteractionDist
    arg6.distance = arg7
    arg3(arg4, arg5, arg6)
  end
end
function textValue34(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
  local arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4
  arg10 = cmgCall.Target
  if "ox_target" == arg10 then
    arg10 = exports
    arg10 = arg10.ox_target
    arg11 = arg10
    arg10 = arg10.addSphereZone
    workValue = {}
    workValue.coords = arg2
    workValue.radius = arg3
    nameValue = cmgCall.DebugPoly
    if not nameValue then
      nameValue = arg9
    end
    workValue.debug = nameValue
    workValue.options = arg8
    arg10(arg11, workValue)
  else
    arg10 = exports
    arg11 = cmgCall.Target
    arg10 = arg10[arg11]
    arg11 = arg10
    arg10 = arg10.AddCircleZone
    workValue = arg1
    nameValue = arg2
    numberValue = arg3
    numberValue2 = {}
    numberValue2.name = arg1
    numberValue2.heading = arg4
    textValue7 = cmgCall.DebugPoly
    if not textValue7 then
      textValue7 = arg9
    end
    numberValue2.debugPoly = textValue7
    numberValue2.minZ = arg5
    numberValue2.maxZ = arg6
    numberValue2.useZ = arg7
    textValue7 = {}
    textValue7.options = arg8
    workValue4 = cmgCall.MaxInteractionDist
    textValue7.distance = workValue4
    arg10(arg11, workValue, nameValue, numberValue, numberValue2, textValue7)
  end
end
function workValue16(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
  local workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5
  workValue = cmgCall.Target
  if "ox_target" == workValue then
    workValue = exports
    workValue = workValue.ox_target
    nameValue = workValue
    workValue = workValue.addBoxZone
    numberValue = {}
    numberValue.coords = arg2
    numberValue2 = vector3
    textValue7 = arg5
    workValue4 = arg4
    numberValue3 = arg6
    numberValue2 = numberValue2(textValue7, workValue4, numberValue3)
    numberValue.size = numberValue2
    numberValue.rotation = arg3
    numberValue2 = cmgCall.DebugPoly
    if not numberValue2 then
      numberValue2 = arg11
    end
    numberValue.debug = numberValue2
    numberValue.options = arg10
    workValue(nameValue, numberValue)
  else
    workValue = exports
    nameValue = cmgCall.Target
    workValue = workValue[nameValue]
    nameValue = workValue
    workValue = workValue.AddBoxZone
    numberValue = arg1
    numberValue2 = arg2
    textValue7 = arg4
    workValue4 = arg5
    numberValue3 = {}
    numberValue3.name = arg1
    numberValue3.heading = arg3
    numberValue4 = cmgCall.DebugPoly
    if not numberValue4 then
      numberValue4 = arg11
    end
    numberValue3.debugPoly = numberValue4
    numberValue3.minZ = arg7
    numberValue3.maxZ = arg8
    numberValue4 = {}
    numberValue4.options = arg10
    workValue5 = cmgCall.MaxInteractionDist
    numberValue4.distance = workValue5
    workValue(nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4)
  end
end
function workValue17(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = dataTable.attAction
  if not arg4 then
    arg4 = dataTable.isLaying
    if arg4 then
      arg4 = textValue30
      arg4()
    else
      arg4 = textValue28
      arg5 = {}
      arg5.entity = arg1
      arg5.poly = arg2
      arg6 = arg3.lay
      arg5.bed = arg6
      arg5.raycast = true
      arg4(arg5)
    end
  else
    arg4 = textValue40
    arg5 = cmgCall.Lang
    arg5 = arg5.Notification
    arg5 = arg5.AlreadyAttemptingToLay
    arg4(arg5)
  end
end
function workValue18(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = dataTable.attAction
  if not arg4 then
    arg4 = dataTable.isSitting
    if not arg4 then
      arg4 = dataTable.isLaying
      if not arg4 then
        goto flow_label_26
      end
    end
    arg4 = dataTable.poly
    if arg2 == arg4 then
      arg4 = textValue26
      arg5 = {}
      arg5.entity = arg1
      arg5.poly = arg2
      arg6 = arg3.sit
      arg5.sit = arg6
      arg5.raycast = true
      arg4(arg5)
    else
      arg4 = textValue18
      arg4()
      goto flow_label_41
      ::flow_label_26::
      arg4 = textValue26
      arg5 = {}
      arg5.entity = arg1
      arg5.poly = arg2
      arg6 = arg3.sit
      arg5.sit = arg6
      arg5.raycast = true
      arg4(arg5)
    end
  else
    arg4 = textValue40
    arg5 = cmgCall.Lang
    arg5 = arg5.Notification
    arg5 = arg5.AlreadyAttemptingToSit
    arg4(arg5)
  end
  ::flow_label_41::
end
function workValue20()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = {}
  arg2 = pairs
  arg3 = textValue13
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.lay
    if arg8 then
      arg8 = #arg1
      arg8 = arg8 + 1
      arg1[arg8] = arg6
    end
  end
  arg2 = {}
  arg3 = {}
  arg4 = cmgCall.Targeting
  arg4 = arg4.LayIcon
  arg3.icon = arg4
  arg4 = cmgCall.Targeting
  arg4 = arg4.LayLabel
  arg3.label = arg4
  arg2[1] = arg3
  arg3 = cmgCall.Target
  if "ox_target" == arg3 then
    arg3 = arg2[1]
    arg4 = cmgCall.MaxInteractionDist
    arg3.distance = arg4
    arg3 = arg2[1]
    function arg4(arg12)
      local arg22, arg32, workValue19, flag7, workValue31
      arg22 = GetEntityModel
      arg32 = arg12.entity
      -- Beginner: result below is modelHash.
      arg22 = arg22(arg32)
      arg32 = textValue13
      arg22 = arg32[arg22]
      arg32 = workValue17
      workValue19 = arg12.entity
      flag7 = false
      workValue31 = arg22
      arg32(workValue19, flag7, workValue31)
    end
    arg3.onSelect = arg4
  else
    arg3 = arg2[1]
    function arg4(arg12)
      local arg22, arg32, workValue19, flag7, workValue31
      arg22 = GetEntityModel
      arg32 = arg12
      -- Beginner: result below is modelHash.
      arg22 = arg22(arg32)
      arg32 = textValue13
      arg22 = arg32[arg22]
      arg32 = workValue17
      workValue19 = arg12
      flag7 = false
      workValue31 = arg22
      arg32(workValue19, flag7, workValue31)
    end
    arg3.action = arg4
  end
  arg3 = textValue32
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
end
function workValue21()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = {}
  arg2 = pairs
  arg3 = textValue13
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg7.sit
    if arg8 then
      arg8 = #arg1
      arg8 = arg8 + 1
      arg1[arg8] = arg6
    end
  end
  arg2 = {}
  arg3 = {}
  arg4 = cmgCall.Targeting
  arg4 = arg4.SitIcon
  arg3.icon = arg4
  arg4 = cmgCall.Targeting
  arg4 = arg4.SitLabel
  arg3.label = arg4
  arg2[1] = arg3
  arg3 = cmgCall.Target
  if "ox_target" == arg3 then
    arg3 = arg2[1]
    arg4 = cmgCall.MaxInteractionDist
    arg3.distance = arg4
    arg3 = arg2[1]
    function arg4(arg12)
      local arg22, arg32, workValue19, flag7, workValue31
      arg22 = GetEntityModel
      arg32 = arg12.entity
      -- Beginner: result below is modelHash.
      arg22 = arg22(arg32)
      arg32 = textValue13
      arg22 = arg32[arg22]
      arg32 = workValue18
      workValue19 = arg12.entity
      flag7 = false
      workValue31 = arg22
      arg32(workValue19, flag7, workValue31)
    end
    arg3.onSelect = arg4
  else
    arg3 = arg2[1]
    function arg4(arg12)
      local arg22, arg32, workValue19, flag7, workValue31
      arg22 = GetEntityModel
      arg32 = arg12
      -- Beginner: result below is modelHash.
      arg22 = arg22(arg32)
      arg32 = textValue13
      arg22 = arg32[arg22]
      arg32 = workValue18
      workValue19 = arg12
      flag7 = false
      workValue31 = arg22
      arg32(workValue19, flag7, workValue31)
    end
    arg3.action = arg4
  end
  arg3 = textValue32
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
end
function workValue22()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5, waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4
  arg1 = pairs
  arg2 = workValue11
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.enabled
    if arg7 then
      arg7 = pairs
      arg8 = arg6.polys
      arg7, arg8, arg9, arg10 = arg7(arg8)
      for arg11, workValue in arg7, arg8, arg9, arg10 do
        nameValue = cmgCall.Target
        if "ox_target" ~= nameValue then
          nameValue = exports
          numberValue = cmgCall.Target
          nameValue = nameValue[numberValue]
          numberValue = nameValue
          nameValue = nameValue.RemoveZone
          numberValue2 = arg11
          nameValue(numberValue, numberValue2)
        end
        nameValue = workValue.poly
        if nil == nameValue then
          nameValue = print
          numberValue = "^1Error: PolyZone '"
          numberValue2 = arg11
          textValue7 = "' could not be generated! (lacks poly specifications)"
          numberValue = numberValue .. numberValue2 .. textValue7
          nameValue(numberValue)
        else
          nameValue = workValue.lay
          if nil == nameValue then
            nameValue = workValue.sit
            if nil == nameValue then
              nameValue = print
              numberValue = "^1Error: PolyZone '"
              numberValue2 = arg11
              textValue7 = "' could not be generated! (no action assinged)"
              numberValue = numberValue .. numberValue2 .. textValue7
              nameValue(numberValue)
          end
          else
            nameValue = "sit"
            numberValue = {}
            numberValue2 = workValue.lay
            if numberValue2 then
              nameValue = "lay"
              numberValue2 = #numberValue
              numberValue2 = numberValue2 + 1
              textValue7 = {}
              workValue4 = cmgCall.Targeting
              workValue4 = workValue4.LayIcon
              textValue7.icon = workValue4
              workValue4 = cmgCall.Targeting
              workValue4 = workValue4.LayLabel
              textValue7.label = workValue4
              numberValue[numberValue2] = textValue7
              numberValue2 = cmgCall.Target
              if "ox_target" == numberValue2 then
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                textValue7 = cmgCall.MaxInteractionDist
                numberValue2.distance = textValue7
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                function textValue7()
                  local arg12, arg22, arg32, workValue19
                  arg12 = workValue17
                  arg22 = 0
                  arg32 = arg11
                  workValue19 = workValue
                  arg12(arg22, arg32, workValue19)
                end
                numberValue2.onSelect = textValue7
              else
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                function textValue7()
                  local arg12, arg22, arg32, workValue19
                  arg12 = workValue17
                  arg22 = 0
                  arg32 = arg11
                  workValue19 = workValue
                  arg12(arg22, arg32, workValue19)
                end
                numberValue2.action = textValue7
              end
            end
            numberValue2 = workValue.sit
            if numberValue2 then
              nameValue = "sit"
              numberValue2 = #numberValue
              numberValue2 = numberValue2 + 1
              textValue7 = {}
              workValue4 = cmgCall.Targeting
              workValue4 = workValue4.SitIcon
              textValue7.icon = workValue4
              workValue4 = cmgCall.Targeting
              workValue4 = workValue4.SitLabel
              textValue7.label = workValue4
              numberValue[numberValue2] = textValue7
              numberValue2 = cmgCall.Target
              if "ox_target" == numberValue2 then
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                textValue7 = cmgCall.MaxInteractionDist
                numberValue2.distance = textValue7
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                function textValue7()
                  local arg12, arg22, arg32, workValue19
                  arg12 = workValue18
                  arg22 = 0
                  arg32 = arg11
                  workValue19 = workValue
                  arg12(arg22, arg32, workValue19)
                end
                numberValue2.onSelect = textValue7
              else
                numberValue2 = #numberValue
                numberValue2 = numberValue[numberValue2]
                function textValue7()
                  local arg12, arg22, arg32, workValue19
                  arg12 = workValue18
                  arg22 = 0
                  arg32 = arg11
                  workValue19 = workValue
                  arg12(arg22, arg32, workValue19)
                end
                numberValue2.action = textValue7
              end
            end
            numberValue2 = workValue.poly
            numberValue2 = numberValue2.minZ
            if not numberValue2 then
              numberValue2 = workValue.poly
              numberValue2 = numberValue2.center
              if numberValue2 then
                numberValue2 = workValue.poly
                numberValue2 = numberValue2.center
                numberValue2 = numberValue2.z
                textValue7 = workValue.poly
                textValue7 = textValue7.height
                textValue7 = textValue7 / 2
                numberValue2 = numberValue2 - textValue7
                if numberValue2 then
                  goto flow_label_140
                end
              end
              numberValue2 = workValue[nameValue]
              numberValue2 = numberValue2.seats
              numberValue2 = numberValue2[1]
              numberValue2 = numberValue2.z
              textValue7 = workValue.poly
              textValue7 = textValue7.height
              textValue7 = textValue7 / 2
              numberValue2 = numberValue2 - textValue7
            end
            ::flow_label_140::
            textValue7 = workValue.poly
            textValue7 = textValue7.maxZ
            if not textValue7 then
              textValue7 = workValue.poly
              textValue7 = textValue7.center
              if textValue7 then
                textValue7 = workValue.poly
                textValue7 = textValue7.center
                textValue7 = textValue7.z
                workValue4 = workValue.poly
                workValue4 = workValue4.height
                workValue4 = workValue4 / 2
                textValue7 = textValue7 + workValue4
                if textValue7 then
                  goto flow_label_169
                end
              end
              textValue7 = workValue[nameValue]
              textValue7 = textValue7.seats
              textValue7 = textValue7[1]
              textValue7 = textValue7.z
              workValue4 = workValue.poly
              workValue4 = workValue4.height
              workValue4 = workValue4 / 2
              textValue7 = textValue7 + workValue4
            end
            ::flow_label_169::
            workValue4 = workValue.poly
            workValue4 = workValue4.heading
            if not workValue4 then
              workValue4 = workValue[nameValue]
              workValue4 = workValue4.seats
              workValue4 = workValue4[1]
              workValue4 = workValue4.w
            end
            numberValue3 = workValue.poly
            numberValue3 = numberValue3.center
            if not numberValue3 then
              numberValue3 = workValue[nameValue]
              numberValue3 = numberValue3.seats
              numberValue3 = numberValue3[1]
              numberValue3 = numberValue3.xyz
            end
            numberValue4 = workValue.poly
            numberValue4 = numberValue4.type
            if "circle" == numberValue4 then
              numberValue4 = workValue.poly
              numberValue4 = numberValue4.radius
              if nil == numberValue4 then
                workValue5 = print
                waitCall = "^3Warning: PolyZone '"
                vector3Builder = arg11
                vector3Builder2 = "' did not have a specified radius! Radius was automatically set to 1.5!"
                waitCall = waitCall .. vector3Builder .. vector3Builder2
                workValue5(waitCall)
                numberValue4 = 1.5
              end
              workValue5 = textValue34
              waitCall = arg11
              vector3Builder = numberValue3
              vector3Builder2 = numberValue4
              numberValue5 = workValue4
              numberValue6 = numberValue2
              numberValue7 = textValue7
              flag = true
              flag2 = numberValue
              flag3 = arg6.debug
              workValue5(waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3)
            else
              numberValue4 = workValue16
              workValue5 = arg11
              waitCall = numberValue3
              vector3Builder = workValue4
              vector3Builder2 = workValue.poly
              vector3Builder2 = vector3Builder2.length
              numberValue5 = workValue.poly
              numberValue5 = numberValue5.width
              numberValue6 = workValue.poly
              numberValue6 = numberValue6.height
              numberValue7 = numberValue2
              flag = textValue7
              flag2 = true
              flag3 = numberValue
              flag4 = arg6.debug
              numberValue4(workValue5, waitCall, vector3Builder, vector3Builder2, numberValue5, numberValue6, numberValue7, flag, flag2, flag3, flag4)
            end
          end
        end
      end
      arg7 = print
      arg8 = "^2Info: PolyZone group '"
      arg9 = arg5
      arg10 = "' was generated."
      arg8 = arg8 .. arg9 .. arg10
      arg7(arg8)
    else
      arg7 = print
      arg8 = "^3Info: PolyZone group '"
      arg9 = arg5
      arg10 = "' is disabled."
      arg8 = arg8 .. arg9 .. arg10
      arg7(arg8)
    end
  end
end
function workValue23()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = AddTextEntry
  arg2 = "sit_getup_keyboard"
  arg3 = string
  arg3 = arg3.format
  arg4 = cmgCall.Lang
  arg4 = arg4.KeyMapping
  arg4 = arg4.GetUp
  arg5 = "~INPUT_BA1F4C6D~"
  arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = AddTextEntry
  arg2 = "sit_getup_controller"
  arg3 = string
  arg3 = arg3.format
  arg4 = cmgCall.Lang
  arg4 = arg4.KeyMapping
  arg4 = arg4.GetUp
  arg5 = "~INPUT_6ED7AA10~"
  arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = cmgCall.UsePrompts
  if arg1 then
    arg1 = AddTextEntry
    arg2 = "sit_on_keyboard"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.SitDown
    arg5 = "~INPUT_7BDD6276~"
    arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
    arg1(arg2, arg3, arg4, arg5, arg6, arg7)
    arg1 = AddTextEntry
    arg2 = "sit_down_controller"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.SitDown
    arg5 = "~INPUT_53FA0B5E~"
    arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
    arg1(arg2, arg3, arg4, arg5, arg6, arg7)
    arg1 = AddTextEntry
    arg2 = "lay_on_keyboard"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.LayDown
    arg5 = "~INPUT_C5CB4FDE~"
    arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
    arg1(arg2, arg3, arg4, arg5, arg6, arg7)
    arg1 = AddTextEntry
    arg2 = "lay_down_controller"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.LayDown
    arg5 = "~INPUT_215CDC8A~"
    arg3, arg4, arg5, arg6, arg7 = arg3(arg4, arg5)
    arg1(arg2, arg3, arg4, arg5, arg6, arg7)
    arg1 = AddTextEntry
    arg2 = "both_on_keyboard"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.SitDown
    arg5 = "~INPUT_7BDD6276~"
    arg3 = arg3(arg4, arg5)
    arg4 = "\n"
    arg5 = string
    arg5 = arg5.format
    arg6 = cmgCall.Lang
    arg6 = arg6.KeyMapping
    arg6 = arg6.LayDown
    arg7 = "~INPUT_C5CB4FDE~"
    arg5 = arg5(arg6, arg7)
    arg3 = arg3 .. arg4 .. arg5
    arg1(arg2, arg3)
    arg1 = AddTextEntry
    arg2 = "both_down_controller"
    arg3 = string
    arg3 = arg3.format
    arg4 = cmgCall.Lang
    arg4 = arg4.KeyMapping
    arg4 = arg4.SitDown
    arg5 = "~INPUT_53FA0B5E~"
    arg3 = arg3(arg4, arg5)
    arg4 = "\n"
    arg5 = string
    arg5 = arg5.format
    arg6 = cmgCall.Lang
    arg6 = arg6.KeyMapping
    arg6 = arg6.LayDown
    arg7 = "~INPUT_215CDC8A~"
    arg5 = arg5(arg6, arg7)
    arg3 = arg3 .. arg4 .. arg5
    arg1(arg2, arg3)
  end
end
function workValue24(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9
  arg5 = RegisterKeyMapping
  arg6 = "+"
  arg7 = arg1
  arg6 = arg6 .. arg7
  arg7 = arg2
  arg8 = arg3
  arg9 = arg4
  -- Beginner: Bind a command to a keyboard/controller key.
  arg5(arg6, arg7, arg8, arg9)
  arg5 = RegisterKeyMapping
  arg6 = "-"
  arg7 = arg1
  arg6 = arg6 .. arg7
  arg7 = arg2
  arg8 = arg3
  arg9 = arg4
  arg5(arg6, arg7, arg8, arg9)
end
function workValue25(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9
  arg4 = 0
  arg5 = 0
  arg6 = CMG
  arg6 = arg6.registerCommand
  arg7 = "+"
  arg8 = arg1
  arg7 = arg7 .. arg8
  function arg8(arg12, arg22, arg32)
    local workValue19, flag7, workValue31, workValue32
    workValue19 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue19 = workValue19()
    arg4 = workValue19
    workValue19 = 0
    arg5 = workValue19
    while true do
      workValue19 = arg4
      if 0 == workValue19 then
        break
      end
      workValue19 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue19 = workValue19()
      flag7 = arg4
      workValue19 = workValue19 - flag7
      flag7 = 500
      if workValue19 > flag7 then
        workValue19 = arg2
        flag7 = arg12
        workValue31 = arg22
        workValue32 = arg32
        workValue19(flag7, workValue31, workValue32)
        return
      end
      workValue19 = Wait
      flag7 = 0
      workValue19(flag7)
    end
  end
  arg9 = arg3
  arg6(arg7, arg8, arg9)
  arg6 = CMG
  arg6 = arg6.registerCommand
  arg7 = "-"
  arg8 = arg1
  arg7 = arg7 .. arg8
  function arg8()
    local arg12, arg22
    arg12 = arg5
    if arg12 > 0 then
      arg12 = 0
      arg4 = arg12
    end
    arg12 = arg5
    arg12 = arg12 + 1
    arg5 = arg12
  end
  arg9 = arg3
  arg6(arg7, arg8, arg9)
end
function workValue26()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = workValue25
  arg2 = "siton"
  function arg3()
    local arg12, arg22
    arg12 = dataTable.showingPrompt
    if arg12 then
      arg12 = ExecuteCommand
      arg22 = "sit"
      arg12(arg22)
    end
  end
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue25
  arg2 = "sitdown"
  function arg3()
    local arg12, arg22
    arg12 = dataTable.showingPrompt
    if arg12 then
      arg12 = ExecuteCommand
      arg22 = "sit"
      arg12(arg22)
    end
  end
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue25
  arg2 = "layon"
  function arg3()
    local arg12, arg22
    arg12 = dataTable.showingPrompt
    if arg12 then
      arg12 = ExecuteCommand
      arg22 = "lay"
      arg12(arg22)
    end
  end
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue25
  arg2 = "laydown"
  function arg3()
    local arg12, arg22
    arg12 = dataTable.showingPrompt
    if arg12 then
      arg12 = ExecuteCommand
      arg22 = "lay"
      arg12(arg22)
    end
  end
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = workValue24
  arg2 = "siton"
  arg3 = cmgCall.Lang
  arg3 = arg3.KeyBindingDesc
  arg3 = arg3.Keyboard
  arg3 = arg3.SitDown
  arg4 = "keyboard"
  arg5 = cmgCall.DefaultKeybinds
  arg5 = arg5.SitDown
  arg5 = arg5.SitKeyboard
  arg1(arg2, arg3, arg4, arg5)
  arg1 = workValue24
  arg2 = "sitdown"
  arg3 = cmgCall.Lang
  arg3 = arg3.KeyBindingDesc
  arg3 = arg3.PadAnalog
  arg3 = arg3.SitDown
  arg4 = "PAD_ANALOGBUTTON"
  arg5 = cmgCall.DefaultKeybinds
  arg5 = arg5.SitDown
  arg5 = arg5.SitPadAnalog
  arg1(arg2, arg3, arg4, arg5)
  arg1 = workValue24
  arg2 = "layon"
  arg3 = cmgCall.Lang
  arg3 = arg3.KeyBindingDesc
  arg3 = arg3.Keyboard
  arg3 = arg3.LayDown
  arg4 = "keyboard"
  arg5 = cmgCall.DefaultKeybinds
  arg5 = arg5.SitDown
  arg5 = arg5.LayKeyboard
  arg1(arg2, arg3, arg4, arg5)
  arg1 = workValue24
  arg2 = "laydown"
  arg3 = cmgCall.Lang
  arg3 = arg3.KeyBindingDesc
  arg3 = arg3.PadAnalog
  arg3 = arg3.LayDown
  arg4 = "PAD_ANALOGBUTTON"
  arg5 = cmgCall.DefaultKeybinds
  arg5 = arg5.SitDown
  arg5 = arg5.LayPadAnalog
  arg1(arg2, arg3, arg4, arg5)
  function arg1(arg12)
    local arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12
    dataTable.showingPrompt = true
    arg22 = "sit_on_keyboard"
    arg32 = CMG
    arg32 = arg32.isUsingKeyboard
    workValue19 = 1
    arg32 = arg32(workValue19)
    if arg32 then
      arg32 = arg12
      workValue19 = "_on_keyboard"
      arg32 = arg32 .. workValue19
      arg22 = arg32
    else
      arg32 = arg12
      workValue19 = "_down_controller"
      arg32 = arg32 .. workValue19
      arg22 = arg32
    end
    arg32 = 1
    workValue19 = 25
    flag7 = 1
    for workValue31 = arg32, workValue19, flag7 do
      workValue32 = cmgCall.ShowHelpText
      if workValue32 then
        workValue32 = cmgCall2
        flag11 = true
        workValue32 = workValue32(flag11)
        if workValue32 then
          workValue32 = DisplayHelpTextThisFrame
          flag11 = arg22
          flag12 = false
          workValue32(flag11, flag12)
        end
      end
      workValue32 = Wait
      flag11 = 0
      workValue32(flag11)
    end
  end
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3, workValue6, workValue7, workValue8, iterator4, iterator5, workValue9, textValue20, textValue22, workValue10, textValue25, vector3Builder3, workValue12
    arg12 = {}
    arg12.distance = 0.0
    arg12.type = ""
    arg22 = vector3
    arg32 = 0.0
    workValue19 = 0.0
    flag7 = 0.0
    arg22 = arg22(arg32, workValue19, flag7)
    arg12.coords = arg22
    arg12.entity = 0
    while true do
      arg22 = cmgCall.MaxPromptDist
      arg12.distance = arg22
      arg22 = CMG
      arg22 = arg22.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg22 = arg22()
      arg32 = arg22.xy
      workValue19 = 500
      flag7 = dataTable.isSitting
      if not flag7 then
        flag7 = dataTable.isLaying
        if not flag7 then
          flag7 = dataTable.attAction
          if not flag7 then
            flag7 = GetGamePool
            workValue31 = "CObject"
            flag7 = flag7(workValue31)
            workValue31 = pairs
            workValue32 = flag7
            workValue31, workValue32, flag11, flag12 = workValue31(workValue32)
            for vector3Builder4, modelHash in workValue31, workValue32, flag11, flag12 do
              modelHash2 = GetEntityModel
              coords = modelHash
              -- Beginner: result below is modelHash.
              modelHash2 = modelHash2(coords)
              coords = textValue13
              coords = coords[modelHash2]
              if coords then
                coords = GetEntityCoords
                workValue2 = modelHash
                -- Beginner: result below is entityCoords.
                coords = coords(workValue2)
                workValue2 = coords - arg22
                workValue2 = #workValue2
                workValue3 = arg12.distance
                if workValue2 < workValue3 then
                  workValue3 = textValue13
                  workValue3 = workValue3[modelHash2]
                  arg12.distance = workValue2
                  textValue8 = workValue3.sit
                  if textValue8 then
                    textValue8 = workValue3.lay
                    if textValue8 then
                      textValue8 = "both"
                      if textValue8 then
                        goto flow_label_76
                      end
                    end
                  end
                  textValue8 = workValue3.sit
                  if textValue8 then
                    textValue8 = "sit"
                    if textValue8 then
                      goto flow_label_76
                    end
                  end
                  textValue8 = workValue3.lay
                  if textValue8 then
                    textValue8 = "lay"
                    if textValue8 then
                      goto flow_label_76
                    end
                  end
                  textValue8 = nil
                  ::flow_label_76::
                  arg12.type = textValue8
                  arg12.coords = coords
                  arg12.entity = modelHash
                end
              end
            end
            workValue31 = pairs
            workValue32 = workValue11
            workValue31, workValue32, flag11, flag12 = workValue31(workValue32)
            for vector3Builder4, modelHash in workValue31, workValue32, flag11, flag12 do
              modelHash2 = modelHash.enabled
              if modelHash2 then
                modelHash2 = modelHash.radius
                if modelHash2 then
                  modelHash2 = modelHash.center
                  modelHash2 = modelHash2.xy
                  modelHash2 = modelHash2 - arg32
                  modelHash2 = #modelHash2
                  coords = modelHash.radius
                  if not (modelHash2 < coords) then
                    goto flow_label_159
                  end
                end
                modelHash2 = pairs
                coords = modelHash.polys
                modelHash2, coords, workValue2, workValue3 = modelHash2(coords)
                for textValue8, iterator in modelHash2, coords, workValue2, workValue3 do
                  iterator2 = pairs
                  iterator3 = iterator
                  iterator2, iterator3, workValue6, workValue7 = iterator2(iterator3)
                  for workValue8, iterator4 in iterator2, iterator3, workValue6, workValue7 do
                    if "sit" == workValue8 or "lay" == workValue8 then
                      iterator5 = pairs
                      workValue9 = iterator4.seats
                      iterator5, workValue9, textValue20, textValue22 = iterator5(workValue9)
                      for workValue10, textValue25 in iterator5, workValue9, textValue20, textValue22 do
                        vector3Builder3 = textValue25.xyz
                        vector3Builder3 = arg22 - vector3Builder3
                        vector3Builder3 = #vector3Builder3
                        workValue12 = arg12.distance
                        if vector3Builder3 < workValue12 then
                          arg12.distance = vector3Builder3
                          workValue12 = iterator.sit
                          if workValue12 then
                            workValue12 = iterator.lay
                            if workValue12 then
                              workValue12 = "both"
                              if workValue12 then
                                goto flow_label_146
                              end
                            end
                          end
                          workValue12 = iterator.sit
                          if workValue12 then
                            workValue12 = "sit"
                            if workValue12 then
                              goto flow_label_146
                            end
                          end
                          workValue12 = iterator.lay
                          if workValue12 then
                            workValue12 = "lay"
                            if workValue12 then
                              goto flow_label_146
                            end
                          end
                          workValue12 = nil
                          ::flow_label_146::
                          arg12.type = workValue12
                          workValue12 = textValue25.xyz
                          arg12.coords = workValue12
                          arg12.entity = 0
                        end
                      end
                    end
                  end
                end
              end
              ::flow_label_159::
            end
            workValue31 = arg12.distance
            workValue32 = cmgCall.MaxPromptDist
            if workValue31 < workValue32 then
              workValue31 = textValue23
              workValue32 = arg12.coords
              flag11 = arg12.entity
              workValue31 = workValue31(workValue32, flag11)
              if workValue31 then
                workValue31 = RageUI
                workValue31 = workValue31.IsAnyMenuVisible
                workValue31 = workValue31()
                if not workValue31 then
                  workValue31 = arg1
                  workValue32 = arg12.type
                  workValue31(workValue32)
                  workValue19 = 0
              end
            end
            else
              dataTable.showingPrompt = false
            end
        end
      end
      else
        workValue19 = 1000
      end
      flag7 = Wait
      workValue31 = workValue19
      flag7(workValue31)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
workValue27 = RegisterCommand
textValue36 = "sit"
-- Beginner: this function is the command handler for "sit".
function workValue28()
  local arg1, arg2
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if not arg1 then
    arg1 = cmgCall2
    arg1 = arg1()
    if arg1 then
      arg1 = textValue21
      arg1 = arg1()
      if arg1 then
        arg1 = cmgCall.UsePrompts
        if not arg1 then
          arg1 = textValue31
          arg1()
        end
      else
        arg1 = textValue27
        arg1()
      end
    end
  end
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "sit".
workValue27(textValue36, workValue28, flag8)
workValue27 = RegisterCommand
textValue36 = "lay"
-- Beginner: this function is the command handler for "lay".
function workValue28()
  local arg1, arg2
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if not arg1 then
    arg1 = cmgCall2
    arg1 = arg1()
    if arg1 then
      arg1 = textValue21
      arg1 = arg1()
      if arg1 then
        arg1 = cmgCall.UsePrompts
        if not arg1 then
          arg1 = textValue31
          arg1()
        end
      else
        arg1 = textValue29
        arg1()
      end
    end
  end
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "lay".
workValue27(textValue36, workValue28, flag8)
workValue27 = RegisterCommand
textValue36 = "bedcoords"
-- Beginner: this function is the command handler for "bedcoords".
function workValue28()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityCoords
  arg3 = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3)
  arg3 = GetEntityHeading
  arg4 = arg1
  -- Beginner: result below is heading.
  arg3 = arg3(arg4)
  arg4 = print
  arg5 = "^2--- Bed coords (copy for cfg_chairs) ---^7"
  arg4(arg5)
  arg4 = print
  arg5 = string
  arg5 = arg5.format
  arg6 = "^3Player position:^7 vector3(%.2f, %.2f, %.2f)"
  arg7 = arg2.x
  arg8 = arg2.y
  arg9 = arg2.z
  arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = arg5(arg6, arg7, arg8, arg9)
  arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
  arg4 = print
  arg5 = string
  arg5 = arg5.format
  arg6 = "^3Player position + heading:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
  arg7 = arg2.x
  arg8 = arg2.y
  arg9 = arg2.z
  arg10 = arg3
  arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = arg5(arg6, arg7, arg8, arg9, arg10)
  arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
  arg4 = 0
  arg5 = 5.0
  arg6 = pairs
  arg7 = textValue13
  arg6, arg7, arg8, arg9 = arg6(arg7)
  for arg10, arg11 in arg6, arg7, arg8, arg9 do
    workValue = arg11.lay
    if workValue then
      workValue = GetClosestObjectOfType
      nameValue = arg2.x
      numberValue = arg2.y
      numberValue2 = arg2.z
      textValue7 = 5.0
      workValue4 = arg10
      numberValue3 = false
      numberValue4 = true
      workValue5 = true
      -- Beginner: result below is objectEntity.
      workValue = workValue(nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
      if 0 ~= workValue then
        nameValue = GetEntityCoords
        numberValue = workValue
        -- Beginner: result below is entityCoords.
        nameValue = nameValue(numberValue)
        numberValue = nameValue - arg2
        numberValue = #numberValue
        if arg5 > numberValue then
          arg5 = numberValue
          arg4 = workValue
        end
      end
    end
  end
  if 0 ~= arg4 then
    arg6 = GetEntityCoords
    arg7 = arg4
    -- Beginner: result below is entityCoords.
    arg6 = arg6(arg7)
    arg7 = GetEntityHeading
    arg8 = arg4
    -- Beginner: result below is heading.
    arg7 = arg7(arg8)
    arg8 = GetEntityModel
    arg9 = arg4
    -- Beginner: result below is modelHash.
    arg8 = arg8(arg9)
    arg9 = textValue13
    arg9 = arg9[arg8]
    if arg9 then
      arg9 = textValue13
      arg9 = arg9[arg8]
      arg9 = arg9.lay
    end
    if arg9 then
      arg10 = arg9.type
      if arg10 then
        goto flow_label_95
      end
    end
    arg10 = "medical"
    ::flow_label_95::
    arg11 = print
    workValue = string
    workValue = workValue.format
    nameValue = "^3Closest bed entity (model %d):^7"
    numberValue = arg8
    workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = workValue(nameValue, numberValue)
    arg11(workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
    arg11 = print
    workValue = string
    workValue = workValue.format
    nameValue = "  Coords: vector3(%.2f, %.2f, %.2f)"
    numberValue = arg6.x
    numberValue2 = arg6.y
    textValue7 = arg6.z
    workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = workValue(nameValue, numberValue, numberValue2, textValue7)
    arg11(workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
    arg11 = print
    workValue = string
    workValue = workValue.format
    nameValue = "  Heading: %.1f"
    numberValue = arg7
    workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = workValue(nameValue, numberValue)
    arg11(workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
    arg11 = print
    workValue = string
    workValue = workValue.format
    nameValue = "^3For PolyZone seat:^7 vector4(%.2f, %.2f, %.2f, %.1f)"
    numberValue = arg6.x
    numberValue2 = arg6.y
    textValue7 = arg6.z
    workValue4 = arg7
    workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = workValue(nameValue, numberValue, numberValue2, textValue7, workValue4)
    arg11(workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
    arg11 = print
    workValue = string
    workValue = workValue.format
    nameValue = "^3For Models config:^7 [%d] = { lay = { type = '%s', seats = {[1] = vector4(0.0, 0.0, 0.5, 180.0)} } },"
    numberValue = arg8
    numberValue2 = arg10
    workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5 = workValue(nameValue, numberValue, numberValue2)
    arg11(workValue, nameValue, numberValue, numberValue2, textValue7, workValue4, numberValue3, numberValue4, workValue5)
  else
    arg6 = print
    arg7 = "^3No bed entity within 5m.^7 Stand next to a bed and run /bedcoords again."
    arg6(arg7)
  end
  arg6 = print
  arg7 = "^2----------------------------------------^7"
  arg6(arg7)
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "bedcoords".
workValue27(textValue36, workValue28, flag8)
workValue27 = RegisterKeyMapping
textValue36 = "getup"
workValue28 = cmgCall.Lang
workValue28 = workValue28.KeyBindingDesc
workValue28 = workValue28.Keyboard
workValue28 = workValue28.GetUp
flag8 = "keyboard"
workValue29 = cmgCall.DefaultKeybinds
workValue29 = workValue29.GetUp
workValue29 = workValue29.Keyboard
-- Beginner: Bind a command to a keyboard/controller key.
workValue27(textValue36, workValue28, flag8, workValue29)
workValue27 = RegisterCommand
textValue36 = "getup"
-- Beginner: this function is the command handler for "getup".
function workValue28()
  local arg1, arg2
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if not arg1 then
    arg1 = cmgCall2
    arg1 = arg1()
    if arg1 then
      arg1 = textValue31
      arg1()
    end
  end
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "getup".
workValue27(textValue36, workValue28, flag8)
workValue27 = RegisterKeyMapping
textValue36 = "standup"
workValue28 = cmgCall.Lang
workValue28 = workValue28.KeyBindingDesc
workValue28 = workValue28.PadAnalog
workValue28 = workValue28.GetUp
flag8 = "PAD_ANALOGBUTTON"
workValue29 = cmgCall.DefaultKeybinds
workValue29 = workValue29.GetUp
workValue29 = workValue29.PadAnalog
-- Beginner: Bind a command to a keyboard/controller key.
workValue27(textValue36, workValue28, flag8, workValue29)
workValue27 = RegisterCommand
textValue36 = "standup"
-- Beginner: this function is the command handler for "standup".
function workValue28()
  local arg1, arg2
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if not arg1 then
    arg1 = cmgCall2
    arg1 = arg1()
    if arg1 then
      arg1 = textValue31
      arg1()
    end
  end
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "standup".
workValue27(textValue36, workValue28, flag8)
workValue27 = AddEventHandler
textValue36 = "sit:helpTextThread"
-- Beginner: this function runs when client event "sit:helpTextThread" fires.
function workValue28(arg1)
  local arg2, arg3
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32
    while true do
      arg22 = arg1
      arg12 = dataTable
      arg12 = arg12[arg22]
      if not arg12 then
        break
      end
      arg12 = CMG
      arg12 = arg12.isUsingKeyboard
      arg22 = 1
      arg12 = arg12(arg22)
      if arg12 then
        arg12 = DisplayHelpTextThisFrame
        arg22 = "sit_getup_keyboard"
        arg32 = false
        arg12(arg22, arg32)
      else
        arg12 = DisplayHelpTextThisFrame
        arg22 = "sit_getup_controller"
        arg32 = false
        arg12(arg22, arg32)
      end
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "sit:helpTextThread".
workValue27(textValue36, workValue28)
workValue27 = AddEventHandler
textValue36 = "sit:checkThread"
-- Beginner: this function runs when client event "sit:checkThread" fires.
function workValue28(arg1)
  local arg2, arg3
  arg2 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg3()
    local arg12, arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12
    while true do
      arg12 = Wait
      arg22 = 500
      arg12(arg22)
      arg22 = arg1
      arg12 = dataTable
      arg12 = arg12[arg22]
      if not arg12 then
        break
      end
      arg12 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg12 = arg12()
      arg22 = GetEntityCoords
      arg32 = arg12
      -- Beginner: result below is entityCoords.
      arg22 = arg22(arg32)
      arg32 = arg22.xy
      workValue19 = dataTable.targetPos
      workValue19 = workValue19.xy
      arg32 = arg32 - workValue19
      arg32 = #arg32
      workValue19 = arg22.z
      flag7 = dataTable.targetPos
      flag7 = flag7.z
      workValue19 = workValue19 - flag7
      workValue19 = workValue19 - 1.25
      if workValue19 > 0.0 then
        arg32 = arg32 + workValue19
      end
      flag7 = 0.5
      if not (arg32 > flag7) then
        flag7 = dataTable.scenario
        if flag7 then
          flag7 = IsPedUsingScenario
          workValue31 = arg12
          workValue32 = dataTable.scenario
          flag7 = flag7(workValue31, workValue32)
          if not flag7 then
            goto flow_label_73
          end
        end
        flag7 = dataTable.animation
        if flag7 then
          flag7 = dataTable.animation
          flag7 = flag7.dict
          if flag7 then
            flag7 = IsEntityPlayingAnim
            workValue31 = arg12
            workValue32 = dataTable.animation
            workValue32 = workValue32.dict
            flag11 = dataTable.animation
            flag11 = flag11.name
            flag12 = 3
            flag7 = flag7(workValue31, workValue32, flag11, flag12)
            if not flag7 then
              goto flow_label_73
            end
          end
        end
        flag7 = IsEntityDead
        workValue31 = arg12
        flag7 = flag7(workValue31)
        if not flag7 then
          flag7 = dataTable.entity
          if 0 == flag7 then
            goto flow_label_91
          end
          flag7 = DoesEntityExist
          workValue31 = dataTable.entity
          flag7 = flag7(workValue31)
          if flag7 then
            goto flow_label_91
          end
        end
      end
      ::flow_label_73::
      flag7 = true
      workValue31 = IsEntityDead
      workValue32 = arg12
      workValue31 = workValue31(workValue32)
      if not workValue31 then
        workValue31 = IsPedRagdoll
        workValue32 = arg12
        workValue31 = workValue31(workValue32)
        if not workValue31 then
          goto flow_label_85
        end
      end
      flag7 = false
      ::flow_label_85::
      workValue31 = textValue17
      workValue32 = flag7
      flag11 = false
      flag12 = true
      workValue31(workValue32, flag11, flag12)
      do break end
      ::flow_label_91::
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "sit:checkThread".
workValue27(textValue36, workValue28)
workValue27 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function textValue36()
  local arg1, arg2, arg3, arg4
  arg1 = workValue23
  arg1()
  arg1 = cmgCall.AddChatSuggestions
  if arg1 then
    arg1 = TriggerEvent
    arg2 = "chat:addSuggestion"
    arg3 = "/sit"
    arg4 = cmgCall.Lang
    arg4 = arg4.ChatSuggestions
    arg4 = arg4.Sit
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
    arg1(arg2, arg3, arg4)
    arg1 = TriggerEvent
    arg2 = "chat:addSuggestion"
    arg3 = "/lay"
    arg4 = cmgCall.Lang
    arg4 = arg4.ChatSuggestions
    arg4 = arg4.Lay
    arg1(arg2, arg3, arg4)
  end
  arg1 = cmgCall.UsePrompts
  if arg1 then
    arg1 = workValue26
    arg1()
  end
  arg1 = cmgCall.Target
  if "false" == arg1 then
    arg1 = print
    arg2 = "^1ERROR: Config.Target was set to 'false' (string), but it needs to be set to false (boolean).^7"
    arg1(arg2)
    cmgCall.Target = false
  end
  arg1 = cmgCall.Target
  if arg1 then
    arg1 = workValue20
    arg1()
    arg1 = workValue21
    arg1()
    arg1 = workValue22
    arg1()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue27(textValue36)
workValue27 = cmgCall.Debugmode
if workValue27 then
  workValue27 = true
  function textValue36(arg1, arg2, arg3)
    local arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue
    arg4 = SetTextColour
    arg5 = arg3.r
    arg6 = arg3.g
    arg7 = arg3.b
    arg8 = 255
    arg4(arg5, arg6, arg7, arg8)
    arg4 = SetTextScale
    arg5 = 0.0
    arg6 = 0.35
    arg4(arg5, arg6)
    arg4 = SetTextFont
    arg5 = 4
    arg4(arg5)
    arg4 = SetTextOutline
    arg4()
    arg4 = SetTextCentre
    arg5 = true
    arg4(arg5)
    arg4 = BeginTextCommandDisplayText
    arg5 = "STRING"
    arg4(arg5)
    arg4 = AddTextComponentSubstringPlayerName
    arg5 = arg2
    arg4(arg5)
    arg4 = SetDrawOrigin
    arg5 = arg1.x
    arg6 = arg1.y
    arg7 = arg1.z
    arg8 = 0
    arg4(arg5, arg6, arg7, arg8)
    arg4 = EndTextCommandDisplayText
    arg5 = 0.0
    arg6 = 0.0
    arg4(arg5, arg6)
    arg4 = ClearDrawOrigin
    arg4()
    arg4 = DrawRect
    arg5 = arg1.x
    arg6 = arg1.y
    arg7 = 1.0
    arg8 = 1.0
    arg9 = 230
    arg10 = 230
    arg11 = 230
    workValue = 255
    arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue)
  end
  function workValue28(arg1)
    local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue
    arg2 = GetEntityCoords
    arg3 = arg1
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3)
    arg3 = GetGamePool
    arg4 = "CObject"
    arg3 = arg3(arg4)
    arg4 = {}
    arg5 = 1
    arg6 = #arg3
    arg7 = 1
    for arg8 = arg5, arg6, arg7 do
      arg9 = GetEntityCoords
      arg10 = arg3[arg8]
      -- Beginner: result below is entityCoords.
      arg9 = arg9(arg10)
      arg10 = arg2 - arg9
      arg10 = #arg10
      if arg10 < 8.0 then
        arg11 = {}
        arg11.pos = arg9
        workValue = arg3[arg8]
        arg11.entity = workValue
        arg4[arg8] = arg11
      end
    end
    return arg4
  end
  function flag8(arg1, arg2)
    local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
    arg3 = pairs
    arg4 = GetGamePool
    arg5 = "CPed"
    arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11 = arg4(arg5)
    arg3, arg4, arg5, arg6 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = GetEntityCoords
      arg10 = arg8
      -- Beginner: result below is entityCoords.
      arg9 = arg9(arg10)
      arg9 = arg9 - arg1
      arg9 = #arg9
      arg10 = 1.35
      if arg9 < arg10 then
        if "sit" == arg2 then
          arg10 = textValue6
          arg11 = arg8
          arg10 = arg10(arg11)
          if not arg10 then
            arg10 = 0.55
          end
          if arg9 < arg10 then
            arg10 = false
            return arg10
          end
        elseif "lay" == arg2 then
          arg10 = textValue6
          arg11 = arg8
          arg10 = arg10(arg11)
          if not arg10 then
            arg10 = textValue9
            arg11 = arg8
            arg10 = arg10(arg11)
            if not arg10 then
              goto flow_label_43
            end
          end
          arg10 = false
          return arg10
        end
      end
      ::flow_label_43::
    end
    arg3 = true
    return arg3
  end
  function workValue29()
    local arg1, arg2, arg3, arg4
    arg1 = {}
    arg2 = {}
    arg3 = {}
    arg3.r = 200
    arg3.g = 0
    arg3.b = 0
    arg2.occupied = arg3
    arg3 = {}
    arg3.r = 255
    arg3.g = 255
    arg3.b = 255
    arg2.sit = arg3
    arg3 = {}
    arg3.r = 150
    arg3.g = 150
    arg3.b = 150
    arg2.lay = arg3
    arg3 = {}
    arg3.r = 255
    arg3.g = 0
    arg3.b = 0
    arg3.a = 200
    arg2.sit_line = arg3
    arg3 = {}
    arg3.r = 0
    arg3.g = 102
    arg3.b = 204
    arg3.a = 255
    arg2.lay_line = arg3
    arg3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.
    function arg4()
      local arg12, arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3, workValue6, workValue7, workValue8, iterator4, iterator5, workValue9, textValue20, textValue22, workValue10, textValue25, vector3Builder3, workValue12, numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35
      while true do
        arg12 = workValue27
        if not arg12 then
          break
        end
        arg12 = 0
        arg22 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        arg32 = GetEntityCoords
        workValue19 = arg22
        -- Beginner: result below is entityCoords.
        arg32 = arg32(workValue19)
        workValue19 = {}
        arg1 = workValue19
        workValue19 = workValue28
        flag7 = arg22
        workValue19 = workValue19(flag7)
        flag7 = pairs
        workValue31 = workValue19
        flag7, workValue31, workValue32, flag11 = flag7(workValue31)
        for flag12, vector3Builder4 in flag7, workValue31, workValue32, flag11 do
          modelHash = GetEntityModel
          modelHash2 = vector3Builder4.entity
          -- Beginner: result below is modelHash.
          modelHash = modelHash(modelHash2)
          modelHash2 = textValue13
          modelHash2 = modelHash2[modelHash]
          if modelHash2 then
            coords = pairs
            workValue2 = modelHash2
            coords, workValue2, workValue3, textValue8 = coords(workValue2)
            for iterator, iterator2 in coords, workValue2, workValue3, textValue8 do
              iterator3 = pairs
              workValue6 = iterator2.seats
              iterator3, workValue6, workValue7, workValue8 = iterator3(workValue6)
              for iterator4, iterator5 in iterator3, workValue6, workValue7, workValue8 do
                workValue9 = iterator
                textValue20 = ": "
                textValue22 = modelHash
                workValue9 = workValue9 .. textValue20 .. textValue22
                textValue20 = iterator2.seats
                textValue20 = #textValue20
                if textValue20 > 1 then
                  textValue20 = workValue9
                  textValue22 = " ("
                  workValue10 = iterator4
                  textValue25 = ")"
                  textValue20 = textValue20 .. textValue22 .. workValue10 .. textValue25
                  workValue9 = textValue20
                end
                textValue20 = GetEntityHeading
                textValue22 = vector3Builder4.entity
                -- Beginner: result below is heading.
                textValue20 = textValue20(textValue22)
                textValue22 = nil
                if "lay" == iterator then
                  workValue10 = textValue5
                  textValue25 = vector3Builder4.pos
                  vector3Builder3 = vector3
                  workValue12 = 0.0
                  numberValue8 = 0.0
                  workValue13 = textValue4
                  workValue14 = textValue20
                  workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35 = workValue13(workValue14)
                  vector3Builder3 = vector3Builder3(workValue12, numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35)
                  workValue12 = vector3
                  numberValue8 = iterator5.x
                  workValue13 = iterator5.y
                  workValue14 = iterator5.z
                  workValue14 = workValue14 + 0.25
                  workValue12, numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35 = workValue12(numberValue8, workValue13, workValue14)
                  workValue10 = workValue10(textValue25, vector3Builder3, workValue12, numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35)
                  textValue22 = workValue10
                else
                  workValue10 = textValue5
                  textValue25 = vector3Builder4.pos
                  vector3Builder3 = vector3
                  workValue12 = 0.0
                  numberValue8 = 0.0
                  workValue13 = textValue4
                  workValue14 = textValue20
                  workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35 = workValue13(workValue14)
                  vector3Builder3 = vector3Builder3(workValue12, numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35)
                  workValue12 = iterator5.xyz
                  workValue10 = workValue10(textValue25, vector3Builder3, workValue12)
                  textValue22 = workValue10
                end
                workValue10 = iterator5.w
                workValue10 = textValue20 + workValue10
                textValue25 = 360
                if workValue10 > textValue25 then
                  workValue10 = workValue10 - 360
                end
                textValue25 = arg2
                textValue25 = textValue25[iterator]
                vector3Builder3 = flag8
                workValue12 = textValue22
                numberValue8 = iterator
                vector3Builder3 = vector3Builder3(workValue12, numberValue8)
                if not vector3Builder3 then
                  textValue25 = arg2.occupied
                end
                arg12 = arg12 + 1
                vector3Builder3 = arg1
                workValue12 = {}
                numberValue8 = vector4
                workValue13 = textValue22.x
                workValue14 = textValue22.y
                workValue15 = textValue22.z
                textValue33 = workValue10
                numberValue8 = numberValue8(workValue13, workValue14, workValue15, textValue33)
                workValue13 = workValue9
                workValue14 = textValue25
                workValue15 = iterator
                textValue33 = "_line"
                workValue15 = workValue15 .. textValue33
                textValue33 = arg2
                workValue15 = textValue33[workValue15]
                workValue12[1] = numberValue8
                workValue12[2] = workValue13
                workValue12[3] = workValue14
                workValue12[4] = workValue15
                vector3Builder3[arg12] = workValue12
              end
            end
          end
        end
        flag7 = pairs
        workValue31 = workValue11
        flag7, workValue31, workValue32, flag11 = flag7(workValue31)
        for flag12, vector3Builder4 in flag7, workValue31, workValue32, flag11 do
          modelHash = vector3Builder4.enabled
          if modelHash then
            modelHash = vector3Builder4.radius
            if modelHash then
              modelHash = vector3Builder4.center
              modelHash = modelHash.xy
              modelHash2 = arg32.xy
              modelHash = modelHash - modelHash2
              modelHash = #modelHash
              modelHash2 = vector3Builder4.radius
              if not (modelHash < modelHash2) then
                goto flow_label_242
              end
            end
            modelHash = pairs
            modelHash2 = vector3Builder4.polys
            modelHash, modelHash2, coords, workValue2 = modelHash(modelHash2)
            for workValue3, textValue8 in modelHash, modelHash2, coords, workValue2 do
              iterator = pairs
              iterator2 = textValue8
              iterator, iterator2, iterator3, workValue6 = iterator(iterator2)
              for workValue7, workValue8 in iterator, iterator2, iterator3, workValue6 do
                if "sit" == workValue7 or "lay" == workValue7 then
                  iterator4 = pairs
                  iterator5 = workValue8.seats
                  iterator4, iterator5, workValue9, textValue20 = iterator4(iterator5)
                  for textValue22, workValue10 in iterator4, iterator5, workValue9, textValue20 do
                    textValue25 = workValue10.xyz
                    textValue25 = arg32 - textValue25
                    textValue25 = #textValue25
                    if textValue25 < 8.0 then
                      textValue25 = workValue7
                      vector3Builder3 = ": "
                      workValue12 = workValue3
                      textValue25 = textValue25 .. vector3Builder3 .. workValue12
                      vector3Builder3 = workValue8.seats
                      vector3Builder3 = #vector3Builder3
                      if vector3Builder3 > 1 then
                        vector3Builder3 = textValue25
                        workValue12 = " ("
                        numberValue8 = textValue22
                        workValue13 = ")"
                        vector3Builder3 = vector3Builder3 .. workValue12 .. numberValue8 .. workValue13
                        textValue25 = vector3Builder3
                      end
                      vector3Builder3 = workValue10.xyz
                      if "lay" == workValue7 then
                        workValue12 = textValue5
                        numberValue8 = workValue10
                        workValue13 = vector3
                        workValue14 = 0.0
                        workValue15 = 0.0
                        textValue33 = 0.0
                        workValue13 = workValue13(workValue14, workValue15, textValue33)
                        workValue14 = vector3
                        workValue15 = 0.0
                        textValue33 = 0.0
                        numberValue9 = 0.25
                        workValue14, workValue15, textValue33, numberValue9, textValue35 = workValue14(workValue15, textValue33, numberValue9)
                        workValue12 = workValue12(numberValue8, workValue13, workValue14, workValue15, textValue33, numberValue9, textValue35)
                        vector3Builder3 = workValue12
                      end
                      workValue12 = arg2
                      workValue12 = workValue12[workValue7]
                      numberValue8 = flag8
                      workValue13 = vector3Builder3
                      workValue14 = workValue7
                      numberValue8 = numberValue8(workValue13, workValue14)
                      if not numberValue8 then
                        workValue12 = arg2.occupied
                      end
                      arg12 = arg12 + 1
                      numberValue8 = arg1
                      workValue13 = {}
                      workValue14 = vector4
                      workValue15 = vector3Builder3.x
                      textValue33 = vector3Builder3.y
                      numberValue9 = vector3Builder3.z
                      textValue35 = workValue10.w
                      workValue14 = workValue14(workValue15, textValue33, numberValue9, textValue35)
                      workValue15 = textValue25
                      textValue33 = workValue12
                      numberValue9 = workValue7
                      textValue35 = "_line"
                      numberValue9 = numberValue9 .. textValue35
                      textValue35 = arg2
                      numberValue9 = textValue35[numberValue9]
                      workValue13[1] = workValue14
                      workValue13[2] = workValue15
                      workValue13[3] = textValue33
                      workValue13[4] = numberValue9
                      numberValue8[arg12] = workValue13
                    end
                  end
                end
              end
            end
          end
          ::flow_label_242::
        end
        flag7 = Wait
        workValue31 = 1000
        flag7(workValue31)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(arg4)
    arg3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.
    function arg4()
      local arg12, arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12, vector3Builder4
      while true do
        arg12 = workValue27
        if not arg12 then
          break
        end
        arg12 = pairs
        arg22 = arg1
        arg12, arg22, arg32, workValue19 = arg12(arg22)
        for flag7, workValue31 in arg12, arg22, arg32, workValue19 do
          workValue32 = textValue36
          flag11 = workValue31[1]
          flag11 = flag11.xyz
          flag12 = workValue31[2]
          vector3Builder4 = workValue31[3]
          workValue32(flag11, flag12, vector3Builder4)
        end
        arg12 = Wait
        arg22 = 0
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(arg4)
    arg3 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.
    function arg4()
      local arg12, arg22, arg32, workValue19, flag7, workValue31, workValue32, flag11, flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3
      while true do
        arg12 = workValue27
        if not arg12 then
          break
        end
        arg12 = pairs
        arg22 = arg1
        arg12, arg22, arg32, workValue19 = arg12(arg22)
        for flag7, workValue31 in arg12, arg22, arg32, workValue19 do
          workValue32 = workValue31[1]
          workValue32 = workValue32.w
          if nil ~= workValue32 then
            workValue32 = textValue5
            flag11 = workValue31[1]
            flag11 = flag11.xyz
            flag12 = vector3
            vector3Builder4 = 0.0
            modelHash = 0.0
            modelHash2 = textValue4
            coords = workValue31[1]
            coords = coords.w
            modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3 = modelHash2(coords)
            flag12 = flag12(vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3)
            vector3Builder4 = vector3
            modelHash = 0.0
            modelHash2 = 0.5
            coords = 0.0
            vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3 = vector3Builder4(modelHash, modelHash2, coords)
            workValue32 = workValue32(flag11, flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3)
            flag11 = DrawLine
            flag12 = workValue31[1]
            flag12 = flag12.x
            vector3Builder4 = workValue31[1]
            vector3Builder4 = vector3Builder4.y
            modelHash = workValue31[1]
            modelHash = modelHash.z
            modelHash2 = workValue32.x
            coords = workValue32.y
            workValue2 = workValue32.z
            workValue3 = workValue31[4]
            workValue3 = workValue3.r
            textValue8 = workValue31[4]
            textValue8 = textValue8.g
            iterator = workValue31[4]
            iterator = iterator.b
            iterator2 = workValue31[4]
            iterator2 = iterator2.a
            flag11(flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2)
            flag11 = textValue5
            flag12 = workValue31[1]
            flag12 = flag12.xyz
            vector3Builder4 = vector3
            modelHash = 0.0
            modelHash2 = 0.0
            coords = textValue4
            workValue2 = workValue31[1]
            workValue2 = workValue2.w
            coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3 = coords(workValue2)
            vector3Builder4 = vector3Builder4(modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3)
            modelHash = vector3
            modelHash2 = 0.0
            coords = 0.0
            workValue2 = 0.2
            modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3 = modelHash(modelHash2, coords, workValue2)
            flag11 = flag11(flag12, vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3)
            flag12 = DrawLine
            vector3Builder4 = workValue31[1]
            vector3Builder4 = vector3Builder4.x
            modelHash = workValue31[1]
            modelHash = modelHash.y
            modelHash2 = workValue31[1]
            modelHash2 = modelHash2.z
            coords = flag11.x
            workValue2 = flag11.y
            workValue3 = flag11.z
            textValue8 = workValue31[4]
            textValue8 = textValue8.r
            iterator = workValue31[4]
            iterator = iterator.g
            iterator2 = workValue31[4]
            iterator2 = iterator2.b
            iterator3 = workValue31[4]
            iterator3 = iterator3.a
            flag12(vector3Builder4, modelHash, modelHash2, coords, workValue2, workValue3, textValue8, iterator, iterator2, iterator3)
          end
        end
        arg12 = Wait
        arg22 = 0
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(arg4)
  end
  workValue30 = RegisterKeyMapping
  textValue37 = "sit:debug"
  textValue38 = "Sit Debuging"
  flag9 = "keyboard"
  flag10 = "G"
  -- Beginner: Bind a command to a keyboard/controller key.
  workValue30(textValue37, textValue38, flag9, flag10)
  workValue30 = RegisterCommand
  textValue37 = "sit:debug"
  -- Beginner: this function is the command handler for "sit:debug".
  function textValue38()
    local arg1, arg2
    arg1 = workValue27
    arg1 = not arg1
    workValue27 = arg1
    arg1 = workValue27
    if arg1 then
      arg1 = workValue29
      arg1()
    end
  end
  flag9 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:debug".
  workValue30(textValue37, textValue38, flag9)
  function workValue30(arg1)
    local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    arg2 = 0
    arg3 = pairs
    arg4 = arg1
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg2 = arg2 + arg8
    end
    arg3 = #arg1
    arg3 = arg2 / arg3
    return arg3
  end
  textValue37 = RegisterCommand
  textValue38 = "sit:getcenter"
  -- Beginner: this function is the command handler for "sit:getcenter".
  function flag9(arg1, arg2)
    local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue
    arg3 = arg2[1]
    arg4 = workValue11
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = {}
      arg5 = {}
      arg6 = {}
      arg7 = 0
      arg8 = pairs
      arg9 = workValue11
      arg9 = arg9[arg3]
      arg9 = arg9.polys
      arg8, arg9, arg10, arg11 = arg8(arg9)
      for workValue, nameValue in arg8, arg9, arg10, arg11 do
        arg7 = arg7 + 1
        numberValue = nameValue.poly
        numberValue = numberValue.center
        if numberValue then
          numberValue = nameValue.poly
          numberValue = numberValue.center
          numberValue = numberValue.x
          if numberValue then
            goto flow_label_46
          end
        end
        numberValue = nameValue.sit
        if numberValue then
          numberValue = nameValue.sit
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.x
          if numberValue then
            goto flow_label_46
          end
        end
        numberValue = nameValue.lay
        if numberValue then
          numberValue = nameValue.lay
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.x
        end
        ::flow_label_46::
        arg4[arg7] = numberValue
        numberValue = nameValue.poly
        numberValue = numberValue.center
        if numberValue then
          numberValue = nameValue.poly
          numberValue = numberValue.center
          numberValue = numberValue.y
          if numberValue then
            goto flow_label_72
          end
        end
        numberValue = nameValue.sit
        if numberValue then
          numberValue = nameValue.sit
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.y
          if numberValue then
            goto flow_label_72
          end
        end
        numberValue = nameValue.lay
        if numberValue then
          numberValue = nameValue.lay
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.y
        end
        ::flow_label_72::
        arg5[arg7] = numberValue
        numberValue = nameValue.poly
        numberValue = numberValue.center
        if numberValue then
          numberValue = nameValue.poly
          numberValue = numberValue.center
          numberValue = numberValue.z
          if numberValue then
            goto flow_label_98
          end
        end
        numberValue = nameValue.sit
        if numberValue then
          numberValue = nameValue.sit
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.z
          if numberValue then
            goto flow_label_98
          end
        end
        numberValue = nameValue.lay
        if numberValue then
          numberValue = nameValue.lay
          numberValue = numberValue.seats
          numberValue = numberValue[1]
          numberValue = numberValue.z
        end
        ::flow_label_98::
        arg6[arg7] = numberValue
      end
      arg8 = vector3
      arg9 = workValue30
      arg10 = arg4
      arg9 = arg9(arg10)
      arg10 = workValue30
      arg11 = arg5
      arg10 = arg10(arg11)
      arg11 = workValue30
      workValue = arg6
      arg11, workValue, nameValue, numberValue = arg11(workValue)
      arg8 = arg8(arg9, arg10, arg11, workValue, nameValue, numberValue)
      arg9 = print
      arg10 = "average \"center\":"
      arg11 = arg8
      arg9(arg10, arg11)
    else
      arg4 = print
      arg5 = arg3
      arg6 = "is not a valid poly group!"
      arg4(arg5, arg6)
    end
  end
  flag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:getcenter".
  textValue37(textValue38, flag9, flag10)
  textValue37 = RegisterCommand
  textValue38 = "sit:getfarthestdist"
  -- Beginner: this function is the command handler for "sit:getfarthestdist".
  function flag9(arg1, arg2)
    local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, workValue, nameValue, numberValue
    arg3 = arg2[1]
    arg4 = workValue11
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = workValue11
      arg4 = arg4[arg3]
      arg4 = arg4.center
      if arg4 then
        arg4 = workValue11
        arg4 = arg4[arg3]
        arg4 = arg4.center
        arg5 = {}
        arg5.dist = 0
        arg5.name = "error"
        arg6 = pairs
        arg7 = workValue11
        arg7 = arg7[arg3]
        arg7 = arg7.polys
        arg6, arg7, arg8, arg9 = arg6(arg7)
        for arg10, arg11 in arg6, arg7, arg8, arg9 do
          workValue = arg11.poly
          workValue = workValue.center
          if not workValue then
            workValue = arg11.sit
            if workValue then
              workValue = arg11.sit
              workValue = workValue.seats
              workValue = workValue[1]
              workValue = workValue.xyz
              if workValue then
                goto flow_label_44
              end
            end
            workValue = arg11.lay
            if workValue then
              workValue = arg11.lay
              workValue = workValue.seats
              workValue = workValue[1]
              workValue = workValue.xyz
            end
          end
          ::flow_label_44::
          nameValue = arg4 - workValue
          nameValue = #nameValue
          numberValue = arg5.dist
          if nameValue > numberValue then
            arg5.dist = nameValue
            arg5.name = arg10
          end
        end
        arg6 = print
        arg7 = arg5.name
        arg8 = arg5.dist
        arg6(arg7, arg8)
    end
    else
      arg4 = print
      arg5 = arg3
      arg6 = "is not a valid poly group!"
      arg4(arg5, arg6)
    end
  end
  flag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:getfarthestdist".
  textValue37(textValue38, flag9, flag10)
  textValue37 = RegisterCommand
  textValue38 = "sit:loadGroup"
  -- Beginner: this function is the command handler for "sit:loadGroup".
  function flag9(arg1, arg2)
    local arg3, arg4, arg5, arg6
    arg3 = arg2[1]
    arg4 = workValue11
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = workValue11
      arg4 = arg4[arg3]
      arg4 = arg4.center
      if arg4 then
        arg4 = workValue11
        arg4 = arg4[arg3]
        arg4.enabled = true
        arg4 = workValue22
        arg4()
    end
    else
      arg4 = print
      arg5 = arg3
      arg6 = "is not a valid poly group!"
      arg4(arg5, arg6)
    end
  end
  flag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:loadGroup".
  textValue37(textValue38, flag9, flag10)
  textValue37 = RegisterCommand
  textValue38 = "sit:unloadGroup"
  -- Beginner: this function is the command handler for "sit:unloadGroup".
  function flag9(arg1, arg2)
    local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
    arg3 = cmgCall.Target
    if "ox_target" == arg3 then
      arg3 = print
      arg4 = "ox_target does not support this action!"
      arg3(arg4)
      return
    end
    arg3 = arg2[1]
    arg4 = workValue11
    arg4 = arg4[arg3]
    if arg4 then
      arg4 = workValue11
      arg4 = arg4[arg3]
      arg4 = arg4.center
      if arg4 then
        arg4 = workValue11
        arg4 = arg4[arg3]
        arg4.enabled = false
        arg4 = pairs
        arg5 = workValue11
        arg5 = arg5[arg3]
        arg5 = arg5.polys
        arg4, arg5, arg6, arg7 = arg4(arg5)
        for arg8 in arg4, arg5, arg6, arg7 do
          arg9 = exports
          arg10 = cmgCall.Target
          arg9 = arg9[arg10]
          arg10 = arg9
          arg9 = arg9.RemoveZone
          arg11 = arg8
          arg9(arg10, arg11)
        end
    end
    else
      arg4 = print
      arg5 = arg3
      arg6 = "is not a valid poly group!"
      arg4(arg5, arg6)
    end
  end
  flag10 = false
  -- Beginner: Register a chat/console command. Event/command: "sit:unloadGroup".
  textValue37(textValue38, flag9, flag10)
  textValue37 = workValue29
  textValue37()
end
workValue27 = AddEventHandler
textValue36 = "5276360f55"
-- Beginner: this function runs when client event "5276360f55" fires.
function workValue28()
  local arg1, arg2
  arg1 = textValue29
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "5276360f55".
workValue27(textValue36, workValue28)
-- Beginner: this function runs when client event "5276360f55" fires.
function workValue27()
  local arg1, arg2
  arg1 = dataTable.isSitting
  return arg1
end
function textValue36()
  local arg1, arg2
  arg1 = dataTable.isLaying
  return arg1
end
workValue28 = exports
flag8 = "IsSitting"
workValue29 = workValue27
workValue28(flag8, workValue29)
workValue28 = exports
flag8 = "IsLaying"
workValue29 = textValue36
workValue28(flag8, workValue29)
workValue28 = CMG
function flag8()
  local arg1, arg2
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  dataTable2 = arg1
end
workValue28.disableSittingOnChairThisFrame = flag8