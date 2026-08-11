--[[
    LEVEL 1 BEGINNER GUIDE — Gang
    ==================================

    File: cmg/prod/client/crime/cl_gang.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Gang feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 109
      * Background threads: 0
      * Always-running loops: 5
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
local cmgCall, textValue, dataTable4, workValue12, workValue16, workValue19, flag6, numberValue28, numberValue29, numberValue30, workValue, cmgCall2, cmgCall3, cmgCall4, numberValue3, dataTable, dataTable2, numberValue4, flag, numberValue6, workValue3, dataTable3, workValue4, numberValue11, flag2, numberValue14, numberValue16, numberValue18, workValue5, textValue2, dataTable5, cmgCall5, cmgCall6, workValue6, workValue7, workValue8, cmgCall7, textValue3, workValue9, workValue11, workValue13, workValue14, cmgCall8, workValue15, eventRegistration, textValue4, textValue5, eventRegistration2, flag4, dataTable6, workValue17, cmgCall9, cmgCall10, threadCall, eventRegistration3, textValue7, workValue18, cmgCall11, textValue8, flag5, textValue9
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
textValue = nil
dataTable4 = {}
workValue12 = nil
workValue16 = nil
workValue19 = nil
flag6 = true
numberValue28 = 18
numberValue29 = 82
numberValue30 = 228
workValue = nil
cmgCall2 = CMG
cmgCall2.gangCachedData = nil
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0
  return arg2
  ::flow_label_10::
  arg2 = {}
  arg3 = 2
  arg4 = 5
  arg5 = 10
  arg6 = 15
  arg7 = 20
  arg8 = 30
  arg2[1] = arg3
  arg2[2] = arg4
  arg2[3] = arg5
  arg2[4] = arg6
  arg2[5] = arg7
  arg2[6] = arg8
  arg3 = #arg2
  arg4 = 1
  arg5 = -1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg1.gangPerksUnlocked
    arg8 = "pub_capture_time_"
    arg9 = arg6
    arg8 = arg8 .. arg9
    arg7 = arg7[arg8]
    if arg7 then
      arg7 = arg2[arg6]
      return arg7
    end
  end
  arg3 = 0
  return arg3
end
cmgCall2.getGangPublicCaptureTimeReductionPercent = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0
  return arg2
  ::flow_label_10::
  arg2 = {}
  arg3 = 20
  arg4 = 40
  arg5 = 50
  arg6 = 70
  arg7 = 100
  arg8 = 150
  arg2[1] = arg3
  arg2[2] = arg4
  arg2[3] = arg5
  arg2[4] = arg6
  arg2[5] = arg7
  arg2[6] = arg8
  arg3 = 0
  arg4 = 1
  arg5 = #arg2
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    arg8 = arg1.gangPerksUnlocked
    arg9 = "pub_name_distance_"
    arg10 = arg7
    arg9 = arg9 .. arg10
    arg8 = arg8[arg9]
    if arg8 then
      arg8 = arg2[arg7]
      if arg3 < arg8 then
        arg3 = arg2[arg7]
      end
    end
  end
  return arg3
end
cmgCall2.getGangPublicNameViewDistanceFloor = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = tonumber
  arg2 = cmgCall.gangBaseMemberLimit
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = 30
  end
  arg2 = CMG
  arg2 = arg2.gangCachedData
  if arg2 then
    arg3 = arg2.gangPerksUnlocked
    if arg3 then
      goto flow_label_15
    end
  end
  return arg1
  ::flow_label_15::
  arg3 = 0
  arg4 = 1
  arg5 = 6
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    arg8 = arg2.gangPerksUnlocked
    arg9 = "pub_member_slots_"
    arg10 = arg7
    arg9 = arg9 .. arg10
    arg8 = arg8[arg9]
    if arg8 then
      arg3 = arg3 + 5
    end
  end
  arg4 = arg1 + arg3
  return arg4
end
cmgCall2.getClientGangMaxMemberLimit = cmgCall3
cmgCall2 = CMG
cmgCall3 = "getClientGangPublicTurfCommissionBonusPercent"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0
  return arg2
  ::flow_label_10::
  arg2 = 0
  arg3 = 1
  arg4 = 5
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg1.gangPerksUnlocked
    arg8 = "pub_turf_commission_"
    arg9 = arg6
    arg8 = arg8 .. arg9
    arg7 = arg7[arg8]
    if arg7 then
      arg2 = arg2 + arg6
    end
  end
  if arg2 > 25 then
    arg2 = 25
  end
  return arg2
end
cmgCall2[cmgCall3] = cmgCall4
cmgCall2 = {}
cmgCall3 = 0.2
cmgCall4 = 0.3
numberValue3 = 0.4
dataTable = 0.5
dataTable2 = 0.6
numberValue4 = 0.7
cmgCall2[1] = cmgCall3
cmgCall2[2] = cmgCall4
cmgCall2[3] = numberValue3
cmgCall2[4] = dataTable
cmgCall2[5] = dataTable2
cmgCall2[6] = numberValue4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = CMG
  arg1 = arg1.gangCachedData
  arg2 = 0
  if arg1 then
    arg3 = arg1.gangPerksUnlocked
    if arg3 then
      arg3 = 1
      arg4 = cmgCall2
      arg4 = #arg4
      arg5 = 1
      for arg6 = arg3, arg4, arg5 do
        arg7 = arg1.gangPerksUnlocked
        arg8 = "pub_deposit_fee_"
        arg9 = arg6
        arg8 = arg8 .. arg9
        arg7 = arg7[arg8]
        if arg7 then
          arg7 = cmgCall2
          arg7 = arg7[arg6]
          arg2 = arg2 + arg7
        end
      end
    end
  end
  if arg2 > 50 then
    arg2 = 50
  end
  return arg2
end
cmgCall3.getClientGangDepositFeeReductionPercent = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.getTunableValue
  arg2 = "gang_tax"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = 0
  end
  arg2 = CMG
  arg2 = arg2.getClientGangDepositFeeReductionPercent
  arg2 = arg2()
  arg3 = math
  arg3 = arg3.max
  arg4 = 0
  arg5 = arg2 / 100
  arg5 = arg1 - arg5
  arg3 = arg3(arg4, arg5)
  arg4 = math
  arg4 = arg4.floor
  arg5 = arg3 * 1000
  arg5 = arg5 + 0.5
  arg4 = arg4(arg5)
  arg4 = arg4 / 10
  return arg4
end
cmgCall3.getClientGangDepositFeeDisplayPercent = cmgCall4
cmgCall3 = CMG
cmgCall4 = "getClientGangRpHeistSetupCostAfterDiscount"

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13
  arg2 = math
  arg2 = arg2.floor
  arg3 = tonumber
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = 0
  end
  arg2 = arg2(arg3)
  if arg2 <= 0 then
    arg3 = 0
    return arg3
  end
  arg3 = CMG
  arg3 = arg3.gangCachedData
  arg4 = 0
  if arg3 then
    arg5 = arg3.gangPerksUnlocked
    if arg5 then
      arg5 = ipairs
      arg6 = {}
      arg7 = 20
      arg8 = 15
      arg9 = 10
      arg10 = 5
      arg6[1] = arg7
      arg6[2] = arg8
      arg6[3] = arg9
      arg6[4] = arg10
      arg5, arg6, arg7, arg8 = arg5(arg6)
      for arg9, arg10 in arg5, arg6, arg7, arg8 do
        arg11 = arg3.gangPerksUnlocked
        arg122 = "rp_heist_"
        arg13 = arg10
        arg122 = arg122 .. arg13
        arg11 = arg11[arg122]
        if arg11 then
          arg4 = arg10
          break
        end
      end
    end
  end
  if arg4 <= 0 then
    return arg2
  end
  arg5 = math
  arg5 = arg5.max
  arg6 = 0
  arg7 = math
  arg7 = arg7.floor
  arg8 = 100
  arg8 = arg8 - arg4
  arg8 = arg2 * arg8
  arg8 = arg8 / 100
  arg8 = arg8 + 0.5
  arg7, arg8, arg9, arg10, arg11, arg122, arg13 = arg7(arg8)
  return arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
end
cmgCall3[cmgCall4] = numberValue3
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0
  return arg2
  ::flow_label_10::
  arg2 = arg1.gangPerksUnlocked
  arg2 = arg2.rp_spray_50
  if arg2 then
    arg2 = 50
    return arg2
  end
  arg2 = arg1.gangPerksUnlocked
  arg2 = arg2.rp_spray_25
  if arg2 then
    arg2 = 25
    return arg2
  end
  arg2 = 0
  return arg2
end
cmgCall3.getClientGangRpSpraycanDiscountPercent = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0
  return arg2
  ::flow_label_10::
  arg2 = ipairs
  arg3 = {}
  arg4 = 15
  arg5 = 10
  arg6 = 7
  arg7 = 5
  arg3[1] = arg4
  arg3[2] = arg5
  arg3[3] = arg6
  arg3[4] = arg7
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = arg1.gangPerksUnlocked
    arg9 = "rp_wl_vehicles_"
    arg10 = arg7
    arg9 = arg9 .. arg10
    arg8 = arg8[arg9]
    if arg8 then
      return arg7
    end
  end
  arg2 = 0
  return arg2
end
cmgCall3.getClientGangRpWlVehiclesDiscountPercent = cmgCall4
cmgCall3 = 5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
function numberValue3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = {}
  ::flow_label_10::
  arg3 = 0
  arg4 = cmgCall.gangSkills
  if arg4 then
    arg4 = pairs
    arg5 = arg2
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for arg8, arg9 in arg4, arg5, arg6, arg7 do
      if true == arg9 then
        arg10 = cmgCall.gangSkills
        arg10 = arg10[arg8]
        if arg10 then
          arg11 = tonumber
          arg122 = arg10.extraRankOutfitSlots
          arg11 = arg11(arg122)
          if arg11 then
            goto flow_label_30
          end
        end
        arg11 = 0
        ::flow_label_30::
        if arg11 > 0 then
          arg3 = arg3 + arg11
        end
      end
    end
  end
  arg4 = 1 + arg3
  arg5 = cmgCall3
  if arg4 > arg5 then
    arg4 = cmgCall3
  end
  if arg4 < 1 then
    arg4 = 1
  end
  return arg4
end
cmgCall4.getGangRankOutfitSlotMax = numberValue3
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
function numberValue3()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = arg1.gangPerksUnlocked
  arg2 = arg2.rp_ragdoll
  arg2 = true == arg2
  return arg2
end
cmgCall4.hasGangRpRagdollPerk = numberValue3
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
function numberValue3()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.gangPerksUnlocked
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = arg1.gangPerksUnlocked
  arg2 = arg2.rp_car_theft
  arg2 = true == arg2
  return arg2
end
cmgCall4.hasGangRpCarTheftPerk = numberValue3
cmgCall4 = 1
numberValue3 = 1
dataTable = {}
dataTable2 = {}
numberValue4 = nil
flag = false
numberValue6 = 1
workValue3 = nil
dataTable3 = {}
workValue4 = nil
numberValue11 = 1
flag2 = false
numberValue14 = 0
numberValue16 = 0
numberValue18 = 1.0
workValue5 = cmgCall.colourLookup
workValue5 = workValue5.Red
textValue2 = GetResourceKvpString
dataTable5 = "cmg_gang_colour"
textValue2 = textValue2(dataTable5)
if not textValue2 then
  textValue2 = "Red"
end
dataTable5 = {}
cmgCall5 = CMG
cmgCall5.gangRecognisedGangs = dataTable5
cmgCall5 = {}
cmgCall6 = CMG
cmgCall6.gangCapturedTurfs = cmgCall5
cmgCall6 = {}

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = workValue
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = {}
  arg3 = pairs
  arg4 = arg1.members
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg2[arg7] = arg8
  end
  arg3 = pairs
  arg4 = arg1.guests
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg2[arg7] = arg8
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable4
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = type
    arg9 = arg7
    arg8 = arg8(arg9)
    if "string" == arg8 and "" ~= arg7 then
      arg8 = #arg1
      arg8 = arg8 + 1
      arg9 = {}
      arg9.gangName = arg7
      arg9.isGuest = false
      arg1[arg8] = arg9
    end
  end
  arg2 = CMG
  arg2.gangPendingInvites = arg1
end
cmgCall7 = workValue8
cmgCall7()
cmgCall7 = RegisterNetEvent
textValue3 = "2cc35dc0c0"
-- Beginner: this function handles network event "2cc35dc0c0".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = table
  arg2 = arg2.count
  arg3 = dataTable4
  -- Beginner: result below is count.
  arg2 = arg2(arg3)
  arg3 = dataTable4
  arg3[arg2] = arg1
  arg2 = workValue8
  arg2()
  arg2 = notify
  arg3 = "~g~Gang invite received from "
  arg4 = tostring
  arg5 = arg1 or arg5
  if not arg1 then
    arg5 = ""
  end
  arg4 = arg4(arg5)
  arg3 = arg3 .. arg4
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = TriggerEvent
  arg3 = "c89367ffd9"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c89367ffd9".
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2cc35dc0c0".
cmgCall7(textValue3, workValue9)
cmgCall7 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9
  if arg1 then
    arg3 = type
    arg4 = arg1
    arg3 = arg3(arg4)
    if "string" == arg3 and "" ~= arg1 then
      goto flow_label_11
    end
  end
  return
  ::flow_label_11::
  arg3 = TriggerServerEvent
  arg4 = "125d443003"
  arg5 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "125d443003".
  arg3(arg4, arg5)
  arg3 = pairs
  arg4 = dataTable4
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    if arg8 == arg1 then
      arg9 = dataTable4
      arg9[arg7] = nil
      break
    end
  end
  arg3 = workValue8
  arg3()
end
cmgCall7.gangAcceptInvite = textValue3
cmgCall7 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "string" == arg2 and "" ~= arg1 then
      goto flow_label_11
    end
  end
  return
  ::flow_label_11::
  arg2 = pairs
  arg3 = dataTable4
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    if arg7 == arg1 then
      arg8 = dataTable4
      arg8[arg6] = nil
      break
    end
  end
  arg2 = workValue8
  arg2()
end
cmgCall7.gangDeclineInvite = textValue3

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: arg1) ===
function cmgCall7(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.GetRageInputText
  arg3 = arg1
  arg4 = "Yes | No"
  arg2 = arg2(arg3, arg4)
  if "yes" == arg2 or "Yes" == arg2 then
    arg3 = true
    return arg3
  else
    arg3 = false
    return arg3
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13
  arg2 = {}
  arg3 = pairs
  arg4 = arg1.members
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = table
    arg9 = arg9.copy
    arg10 = arg8
    arg9 = arg9(arg10)
    arg9.user_id = arg7
    arg10 = table
    arg10 = arg10.insert
    arg11 = arg2
    arg122 = arg9
    arg10(arg11, arg122)
  end
  arg3 = pairs
  arg4 = arg1.guests
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = table
    arg9 = arg9.copy
    arg10 = arg8
    arg9 = arg9(arg10)
    arg9.lastLogin = "Offline"
    arg9.user_id = arg7
    arg10 = table
    arg10 = arg10.insert
    arg11 = arg2
    arg122 = arg9
    arg10(arg11, arg122)
  end
  arg3 = {}
  arg4 = workValue
  if arg1 == arg4 then
    arg4 = cmgCall4
    if arg4 then
      goto flow_label_47
    end
  end
  arg4 = numberValue11
  ::flow_label_47::
  arg5 = arg4 - 1
  arg5 = arg5 * 10
  arg5 = arg5 + 1
  arg6 = table
  arg6 = arg6.count
  arg7 = arg1.members
  -- Beginner: result below is count.
  arg6 = arg6(arg7)
  arg7 = table
  arg7 = arg7.count
  arg8 = arg1.guests
  -- Beginner: result below is count.
  arg7 = arg7(arg8)
  arg6 = arg6 + arg7
  arg7 = arg5
  arg8 = math
  arg8 = arg8.min
  arg9 = arg5 + 10
  arg10 = arg6 + 1
  arg8 = arg8(arg9, arg10)
  arg8 = arg8 - 1
  arg9 = 1
  for arg10 = arg7, arg8, arg9 do
    arg11 = table
    arg11 = arg11.insert
    arg122 = arg3
    arg13 = arg2[arg10]
    arg11(arg122, arg13)
  end
  arg7 = #arg3
  if 0 == arg7 then
    arg7 = workValue
    if arg1 == arg7 then
      arg7 = math
      arg7 = arg7.max
      arg8 = cmgCall4
      arg8 = arg8 - 1
      arg9 = 1
      arg7 = arg7(arg8, arg9)
      cmgCall4 = arg7
    else
      arg7 = math
      arg7 = arg7.max
      arg8 = numberValue11
      arg8 = arg8 - 1
      arg9 = 1
      arg7 = arg7(arg8, arg9)
      numberValue11 = arg7
    end
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = workValue
  if arg1 then
    arg1 = workValue.contributions
    if arg1 then
      goto flow_label_9
    end
  end
  arg1 = {}
  ::flow_label_9::
  arg2 = table
  arg2 = arg2.sort
  arg3 = arg1

  -- === HELPER FUNCTION: arg4(arg12, arg22) ===
  function arg4(arg12, arg22)
    local arg32, localEventCall
    arg32 = arg12.amount
    localEventCall = arg22.amount
    arg32 = arg32 > localEventCall
    return arg32
  end
  arg2(arg3, arg4)
  arg2 = {}
  arg3 = numberValue6
  arg3 = arg3 - 1
  arg3 = arg3 * 10
  arg3 = arg3 + 1
  arg4 = arg3
  arg5 = math
  arg5 = arg5.min
  arg6 = numberValue6
  arg6 = arg6 + 10
  arg7 = #arg1
  arg7 = arg7 + 1
  arg5 = arg5(arg6, arg7)
  arg5 = arg5 - 1
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    arg8 = table
    arg8 = arg8.insert
    arg9 = arg2
    arg10 = arg1[arg7]
    arg8(arg9, arg10)
  end
  arg4 = #arg2
  if 0 == arg4 then
    arg4 = math
    arg4 = arg4.max
    arg5 = numberValue6
    arg5 = arg5 - 1
    arg6 = 1
    arg4 = arg4(arg5, arg6)
    numberValue6 = arg4
  end
  arg4 = arg2
  arg5 = #arg1
  return arg4, arg5
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14
  arg2 = 0
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7 in arg3, arg4, arg5, arg6 do
    arg8 = pairs
    arg9 = cmgCall.permissions
    arg8, arg9, arg10, arg11 = arg8(arg9)
    for arg122, arg13 in arg8, arg9, arg10, arg11 do
      arg14 = arg13.id
      if arg14 == arg7 then
        arg2 = arg2 + 1
        break
      end
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1) ===
function workValue13(arg1)
  local arg2, arg3, arg4
  if "Friendly" == arg1 then
    arg2 = 50
    arg3 = 255
    arg4 = 50
    return arg2, arg3, arg4
  elseif "Enemy" == arg1 then
    arg2 = 255
    arg3 = 50
    arg4 = 50
    return arg2, arg3, arg4
  else
    arg2 = 50
    arg3 = 50
    arg4 = 50
    return arg2, arg3, arg4
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20
  arg1 = CMG
  arg1 = arg1.gangUseNui
  if arg1 then
    return
  end
  arg1 = textValue
  if "noGang" == arg1 then
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 200
    arg4 = true
    arg1(arg2, arg3, arg4)
    arg1 = CMG
    arg1 = arg1.isNewPlayer
    arg1 = arg1()
    if arg1 then
      arg1 = drawNativeNotification
      arg2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
    end
    arg1 = DrawRect
    arg2 = 0.471
    arg3 = 0.329
    arg4 = 0.285
    arg5 = -0.005
    arg6 = 0
    arg7 = 168
    arg8 = 255
    arg9 = 204
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.471
    arg3 = 0.304
    arg4 = 0.285
    arg5 = 0.046
    arg6 = 0
    arg7 = 0
    arg8 = 0
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.471
    arg3 = 0.428
    arg4 = 0.285
    arg5 = 0.194
    arg6 = 0
    arg7 = 0
    arg8 = 0
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.383
    arg3 = 0.442
    arg4 = 0.066
    arg5 = 0.046
    arg6 = CreateGangSelectionRed
    arg7 = CreateGangSelectionGreen
    arg8 = CreateGangSelectionBlue
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.469
    arg3 = 0.442
    arg4 = 0.066
    arg5 = 0.046
    arg6 = JoinGangSelectionRed
    arg7 = JoinGangSelectionGreen
    arg8 = JoinGangSelectionBlue
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawAdvancedText
    arg2 = 0.558
    arg3 = 0.303
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.539
    arg7 = "CMG Gangs"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 7
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.478
    arg3 = 0.442
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.473
    arg7 = "Create Gang"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.564
    arg3 = 0.443
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.473
    arg7 = "Join Gang"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawRect
    arg2 = 0.561
    arg3 = 0.377
    arg4 = 0.065
    arg5 = -0.003
    arg6 = 0
    arg7 = 168
    arg8 = 255
    arg9 = 204
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawAdvancedText
    arg2 = 0.654
    arg3 = 0.37
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.364
    arg7 = "Invite list"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = pairs
    arg2 = dataTable4
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      arg7 = DrawAdvancedText
      arg8 = 0.656
      arg9 = 0.02 * arg5
      arg9 = 0.398 + arg9
      arg10 = 0.005
      arg11 = 0.0028
      arg122 = 0.234
      arg13 = arg6
      arg14 = 255
      arg15 = 255
      arg16 = 255
      arg17 = 255
      arg18 = 0
      numberValue5 = 0
      arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
      arg7 = CursorInArea
      arg8 = 0.525
      arg9 = 0.59
      arg10 = 0.02 * arg5
      arg10 = 0.38 + arg10
      arg11 = 0.02 * arg5
      arg11 = 0.396 + arg11
      arg7 = arg7(arg8, arg9, arg10, arg11)
      if arg7 then
        arg7 = workValue12
        if arg5 ~= arg7 then
          arg7 = DrawRect
          arg8 = 0.56
          arg9 = 0.02 * arg5
          arg9 = 0.39 + arg9
          arg10 = 0.062
          arg11 = 0.019
          arg122 = 0
          arg13 = 168
          arg14 = 255
          arg15 = 150
          arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
          arg7 = IsControlJustPressed
          arg8 = 1
          arg9 = 329
          arg7 = arg7(arg8, arg9)
          if not arg7 then
            arg7 = IsDisabledControlJustPressed
            arg8 = 1
            arg9 = 329
            arg7 = arg7(arg8, arg9)
          end
          if arg7 then
            workValue12 = arg5
          end
      end
      else
        arg7 = workValue12
        if arg5 == arg7 then
          arg7 = DrawRect
          arg8 = 0.56
          arg9 = 0.02 * arg5
          arg9 = 0.39 + arg9
          arg10 = 0.062
          arg11 = 0.019
          arg122 = 0
          arg13 = 168
          arg14 = 255
          arg15 = 150
          arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
        end
      end
    end
    arg1 = CursorInArea
    arg2 = 0.35
    arg3 = 0.415
    arg4 = 0.415
    arg5 = 0.46
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if arg1 then
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 168
      CreateGangSelectionBlue = 255
      arg1 = IsControlJustPressed
      arg2 = 1
      arg3 = 329
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
      end
      if arg1 then
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = CMG
        arg1 = arg1.GetRageInputText
        arg2 = "Enter Gang Name:"
        arg1 = arg1(arg2)
        if nil ~= arg1 and "null" ~= arg1 and "" ~= arg1 then
          arg2 = TriggerServerEvent
          arg3 = "36ca78a1b5"
          arg4 = arg1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ca78a1b5".
          arg2(arg3, arg4)
        else
          arg2 = tCMG
          arg2 = arg2.notify
          arg3 = "~r~No gang name entered!"
          -- Beginner: Show a notification to the player.
          arg2(arg3)
        end
      end
    else
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 0
      CreateGangSelectionBlue = 0
    end
    arg1 = CursorInArea
    arg2 = 0.435
    arg3 = 0.51
    arg4 = 0.415
    arg5 = 0.46
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if arg1 then
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 168
      JoinGangSelectionBlue = 255
      arg1 = IsControlJustPressed
      arg2 = 1
      arg3 = 329
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
      end
      if arg1 then
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = workValue12
        if nil ~= arg1 then
          arg2 = workValue12
          arg1 = dataTable4
          arg1 = arg1[arg2]
          workValue12 = arg1
          arg1 = TriggerServerEvent
          arg2 = "125d443003"
          arg3 = workValue12
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "125d443003".
          arg1(arg2, arg3)
          arg1 = {}
          dataTable4 = arg1
          arg1 = workValue8
          arg1()
          arg1 = "gang"
          textValue = arg1
        else
          arg1 = tCMG
          arg1 = arg1.notify
          arg2 = "~r~No gang invite selected"
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        end
      end
    else
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 0
      JoinGangSelectionBlue = 0
    end
    arg1 = DrawAdvancedText
    arg2 = 0.478
    arg3 = 0.372
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.473
    arg7 = "Guests"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = CursorInAreaRect
    arg2 = 0.383
    arg3 = 0.372
    arg4 = 0.066
    arg5 = 0.046
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if arg1 then
      arg1 = DrawRect
      arg2 = 0.383
      arg3 = 0.372
      arg4 = 0.066
      arg5 = 0.046
      arg6 = numberValue28
      arg7 = numberValue29
      arg8 = numberValue30
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = IsControlJustPressed
      arg2 = 1
      arg3 = 329
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
      end
      if arg1 then
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = "guest"
        textValue = arg1
      end
    else
      arg1 = DrawRect
      arg2 = 0.383
      arg3 = 0.372
      arg4 = 0.066
      arg5 = 0.046
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    end
    arg1 = workValue3
    if arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.564
      arg3 = 0.372
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.473
      arg7 = "Settings"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInAreaRect
      arg2 = 0.469
      arg3 = 0.372
      arg4 = 0.066
      arg5 = 0.046
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.469
        arg3 = 0.372
        arg4 = 0.066
        arg5 = 0.046
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "settings"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.469
        arg3 = 0.372
        arg4 = 0.066
        arg5 = 0.046
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    if "funds" == arg1 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.558
      arg4 = 0.421
      arg5 = 0.326
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.374
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.378
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "cmg gang - funds"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.581
      arg3 = 0.464
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.5
      arg7 = "Gang Funds"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 0
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.581
      arg3 = 0.502
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "\194\163"
      arg8 = getMoneyStringFormatted
      arg9 = workValue.displayMoney
      arg8 = arg8(arg9)
      arg7 = arg7 .. arg8
      arg8 = 25
      arg9 = 199
      arg10 = 65
      arg11 = 255
      arg122 = 0
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.436
      arg3 = 0.578
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Deposit ("
      arg8 = tostring
      arg9 = math
      arg9 = arg9.floor
      arg10 = CMG
      arg10 = arg10.getTunableValue
      arg11 = "gang_tax"
      arg10 = arg10(arg11)
      arg10 = arg10 * 100.0
      arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg9(arg10)
      arg8 = arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      arg9 = "% Fee)"
      arg7 = arg7 .. arg8 .. arg9
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.536
      arg3 = 0.578
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Deposit All ("
      arg8 = tostring
      arg9 = math
      arg9 = arg9.floor
      arg10 = CMG
      arg10 = arg10.getTunableValue
      arg11 = "gang_tax"
      arg10 = arg10(arg11)
      arg10 = arg10 * 100.0
      arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg9(arg10)
      arg8 = arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      arg9 = "% Fee)"
      arg7 = arg7 .. arg8 .. arg9
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.637
      arg3 = 0.578
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Withdraw"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.737
      arg3 = 0.578
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Withdraw All"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.775
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Back"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.3083
      arg3 = 0.3718
      arg4 = 0.549
      arg5 = 0.5999
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.341
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = CMG
          arg1 = arg1.hasGangPermission
          arg2 = "deposit"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = CMG
            arg1 = arg1.GetRageInputText
            arg2 = "Enter amount:"
            arg1 = arg1(arg2)
            if nil ~= arg1 then
              arg2 = TriggerServerEvent
              arg3 = "36ba8d4574"
              arg4 = arg1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ba8d4574".
              arg2(arg3, arg4)
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              arg2(arg3)
            end
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You don't have permission to deposit"
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.341
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.4083
      arg3 = 0.4718
      arg4 = 0.549
      arg5 = 0.5999
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.441
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = CMG
          arg1 = arg1.hasGangPermission
          arg2 = "deposit"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = TriggerServerEvent
            arg2 = "8536953bae"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8536953bae".
            arg1(arg2)
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You don't have permission to deposit"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.441
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.5088
      arg3 = 0.5739
      arg4 = 0.5481
      arg5 = 0.6018
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.542
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = CMG
          arg1 = arg1.hasGangPermission
          arg2 = "withdraw"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = CMG
            arg1 = arg1.GetRageInputText
            arg2 = "Enter amount:"
            arg1 = arg1(arg2)
            if nil ~= arg1 then
              arg2 = TriggerServerEvent
              arg3 = "21cfbc3c22"
              arg4 = arg1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21cfbc3c22".
              arg2(arg3, arg4)
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              arg2(arg3)
            end
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You don't have permission to withdraw"
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.542
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.6088
      arg3 = 0.6739
      arg4 = 0.5481
      arg5 = 0.6018
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.642
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = CMG
          arg1 = arg1.hasGangPermission
          arg2 = "withdraw"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = TriggerServerEvent
            arg2 = "be7d1bceb0"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be7d1bceb0".
            arg1(arg2)
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You don't have permission to withdraw"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.642
        arg3 = 0.576
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = DrawAdvancedText
      arg2 = 0.53645
      arg3 = 0.653
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "View Contributions"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.4083
      arg3 = 0.4718
      arg4 = 0.624
      arg5 = 0.6749
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.44145
        arg3 = 0.651
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          workValue.contributions = nil
          arg1 = TriggerServerEvent
          arg2 = "cef5792c69"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cef5792c69".
          arg1(arg2)
          arg1 = "contributions"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.44145
        arg3 = 0.651
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = DrawAdvancedText
      arg2 = 0.637
      arg3 = 0.653
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Withdraw Turf"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.5088
      arg3 = 0.5739
      arg4 = 0.624
      arg5 = 0.6749
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.542
        arg3 = 0.651
        arg4 = 0.075
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = CMG
          arg1 = arg1.hasGangPermission
          arg2 = "withdrawturf"
          arg1 = arg1(arg2)
          if arg1 then
            arg1 = CMG
            arg1 = arg1.GetRageInputText
            arg2 = "Enter amount:"
            arg1 = arg1(arg2)
            if nil ~= arg1 then
              arg2 = tonumber
              arg3 = arg1
              arg2 = arg2(arg3)
              if arg2 then
                arg2 = TriggerServerEvent
                arg3 = "6aac8fd738"
                arg4 = tonumber
                arg5 = arg1
                arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg4(arg5)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6aac8fd738".
                arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
            end
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              arg2(arg3)
            end
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~You don't have permission to withdraw turf"
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.542
        arg3 = 0.651
        arg4 = 0.075
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.6583
      arg3 = 0.7056
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "gang"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    if "members" == arg1 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.525
      arg4 = 0.421
      arg5 = 0.387
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.308
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.312
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "CMG gang - members"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.448
      arg3 = 0.52
      arg4 = 0.295
      arg5 = 0.291
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.449
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Name"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.506
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "ID"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.555
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Control"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.625
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Last Seen"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.675
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Pin"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.39
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Permissions"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.465
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Lockdown"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.54
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Kick"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.615
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Invite"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.491
      arg3 = 0.695
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Previous"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.581
      arg3 = 0.695
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Next"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = table
      arg1 = arg1.count
      arg2 = workValue.members
      -- Beginner: result below is count.
      arg1 = arg1(arg2)
      arg2 = table
      arg2 = arg2.count
      arg3 = workValue.guests
      -- Beginner: result below is count.
      arg2 = arg2(arg3)
      arg1 = arg1 + arg2
      arg2 = DrawAdvancedText
      arg3 = 0.536
      arg4 = 0.695
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = tostring
      arg9 = cmgCall4
      arg8 = arg8(arg9)
      arg9 = "/"
      arg10 = tostring
      arg11 = math
      arg11 = arg11.ceil
      arg122 = arg1 / 10.0
      arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg11(arg122)
      arg10 = arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      arg8 = arg8 .. arg9 .. arg10
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.775
      arg4 = 0.693
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Back"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = pairs
      arg3 = textValue3
      arg4 = workValue
      arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg3(arg4)
      arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = "Guest"
        arg9 = arg7.permissions
        if arg9 then
          arg9 = tostring
          arg10 = math
          arg10 = arg10.floor
          arg11 = workValue11
          arg122 = arg7.permissions
          arg11 = arg11(arg122)
          arg122 = table
          arg122 = arg122.count
          arg13 = cmgCall.permissions
          -- Beginner: result below is count.
          arg122 = arg122(arg13)
          arg11 = arg11 / arg122
          arg11 = arg11 * 100.0
          arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg10(arg11)
          arg9 = arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          arg10 = "%"
          arg9 = arg9 .. arg10
          arg8 = arg9
        end
        arg9 = DrawAdvancedText
        arg10 = 0.449
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg7.name
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = DrawAdvancedText
        arg10 = 0.506
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg7.user_id
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = DrawAdvancedText
        arg10 = 0.555
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg8
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = arg7.lastLogin
        arg10 = fullPlayerListData
        arg11 = arg7.user_id
        arg10 = arg10[arg11]
        if arg10 then
          arg10 = CMG
          arg10 = arg10.isUserHidden
          arg11 = arg7.user_id
          arg10 = arg10(arg11)
          if not arg10 then
            arg9 = "Online"
          end
        end
        arg10 = DrawAdvancedText
        arg11 = 0.625
        arg122 = 0.0287 * arg6
        arg122 = 0.361 + arg122
        arg13 = 0.005
        arg14 = 0.0028
        arg15 = 0.4
        arg16 = arg9
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 255
        numberValue8 = 6
        numberValue9 = 0
        arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9)
        arg10 = dataTable.pinnedPlayers
        arg11 = arg7.user_id
        arg10 = arg10[arg11]
        if arg10 then
          arg10 = workValue.isAdvanced
          if arg10 then
            arg10 = "\240\159\147\140"
            if arg10 then
              goto flow_label_1502
            end
          end
        end
        arg10 = "\226\173\149"
        ::flow_label_1502::
        arg11 = DrawAdvancedText
        arg122 = 0.675
        arg13 = 0.0287 * arg6
        arg13 = 0.3665 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.2
        arg17 = arg10
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 255
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = CursorInArea
        arg122 = 0.3005
        arg13 = 0.5955
        arg14 = arg6 - 1
        arg14 = 0.0287 * arg14
        arg14 = 0.3731 + arg14
        arg15 = arg6 - 1
        arg15 = 0.0287 * arg15
        arg15 = 0.4018 + arg15
        arg11 = arg11(arg122, arg13, arg14, arg15)
        if arg11 then
          arg11 = workValue16
          arg122 = arg7.user_id
          if arg11 ~= arg122 then
            arg11 = DrawRect
            arg122 = 0.448
            arg13 = arg6 - 1
            arg13 = 0.0287 * arg13
            arg13 = 0.388 + arg13
            arg14 = 0.295
            arg15 = 0.027
            arg16 = numberValue28
            arg17 = numberValue29
            arg18 = numberValue30
            numberValue5 = 150
            arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
            arg11 = IsControlJustPressed
            arg122 = 1
            arg13 = 329
            arg11 = arg11(arg122, arg13)
            if not arg11 then
              arg11 = IsDisabledControlJustPressed
              arg122 = 1
              arg13 = 329
              arg11 = arg11(arg122, arg13)
            end
            if arg11 then
              arg11 = PlaySound
              arg122 = -1
              arg13 = "SELECT"
              arg14 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              arg15 = false
              arg16 = 0
              arg17 = true
              arg11(arg122, arg13, arg14, arg15, arg16, arg17)
              arg11 = arg7.user_id
              workValue16 = arg11
            end
        end
        else
          arg11 = workValue16
          arg122 = arg7.user_id
          if arg11 == arg122 then
            arg11 = DrawRect
            arg122 = 0.448
            arg13 = arg6 - 1
            arg13 = 0.0287 * arg13
            arg13 = 0.388 + arg13
            arg14 = 0.295
            arg15 = 0.027
            arg16 = numberValue28
            arg17 = numberValue29
            arg18 = numberValue30
            numberValue5 = 150
            arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
          end
        end
        arg11 = CursorInArea
        arg122 = 0.5755
        arg13 = 0.5955
        arg14 = arg6 - 1
        arg14 = 0.0287 * arg14
        arg14 = 0.3731 + arg14
        arg15 = arg6 - 1
        arg15 = 0.0287 * arg15
        arg15 = 0.4018 + arg15
        arg11 = arg11(arg122, arg13, arg14, arg15)
        if arg11 then
          arg11 = IsControlJustPressed
          arg122 = 1
          arg13 = 329
          arg11 = arg11(arg122, arg13)
          if not arg11 then
            arg11 = IsDisabledControlJustPressed
            arg122 = 1
            arg13 = 329
            arg11 = arg11(arg122, arg13)
            if not arg11 then
              goto flow_label_1654
            end
          end
          arg11 = workValue.isAdvanced
          if arg11 then
            arg11 = dataTable.pinnedPlayers
            arg122 = arg7.user_id
            arg11 = arg11[arg122]
            if arg11 then
              arg11 = dataTable.pinnedPlayers
              arg122 = arg7.user_id
              arg11[arg122] = nil
            else
              arg11 = dataTable.pinnedPlayers
              arg122 = arg7.user_id
              arg11[arg122] = true
            end
            arg11 = SetResourceKvp
            arg122 = "cmg_gang_pinned"
            arg13 = json
            arg13 = arg13.encode
            arg14 = dataTable.pinnedPlayers
            arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg13(arg14)
            arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          else
            arg11 = notify
            arg122 = "~r~You must have the advanced gang license to pin a player."
            -- Beginner: Show a notification to the player.
            arg11(arg122)
          end
        end
        ::flow_label_1654::
      end
      arg2 = CursorInArea
      arg3 = 0.6182
      arg4 = 0.6822
      arg5 = 0.36
      arg6 = 0.416
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.388
        arg5 = 0.065
        arg6 = 0.056
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = workValue16
          if nil ~= arg2 then
            arg2 = workValue
            if arg2 then
              arg2 = workValue.members
              arg3 = workValue16
              arg2 = arg2[arg3]
              if arg2 then
                arg2 = "permissions"
                textValue = arg2
            end
          end
          else
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~No gang member selected"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.388
        arg5 = 0.065
        arg6 = 0.056
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.6182
      arg4 = 0.6822
      arg5 = 0.435
      arg6 = 0.491
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.463
        arg5 = 0.065
        arg6 = 0.056
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = workValue16
          if nil ~= arg2 then
            arg2 = workValue
            if arg2 then
              arg2 = workValue.members
              arg3 = workValue16
              arg2 = arg2[arg3]
              if arg2 then
                arg2 = TriggerServerEvent
                arg3 = "e959bf3016"
                arg4 = workValue16
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e959bf3016".
                arg2(arg3, arg4)
            end
          end
          else
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~No gang member selected"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.463
        arg5 = 0.065
        arg6 = 0.056
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.6182
      arg4 = 0.6822
      arg5 = 0.51
      arg6 = 0.566
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.538
        arg5 = 0.065
        arg6 = 0.056
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
          if not arg2 then
            goto flow_label_1893
          end
        end
        arg2 = PlaySound
        arg3 = -1
        arg4 = "SELECT"
        arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg6 = false
        arg7 = 0
        arg8 = true
        arg2(arg3, arg4, arg5, arg6, arg7, arg8)
        arg2 = workValue16
        if nil ~= arg2 then
          arg2 = workValue.members
          arg3 = workValue16
          arg2 = arg2[arg3]
          arg2 = nil ~= arg2
          if arg2 then
            arg3 = "kickmember"
            if arg3 then
              goto flow_label_1847
            end
          end
          arg3 = "kickguest"
          ::flow_label_1847::
          arg4 = CMG
          arg4 = arg4.hasGangPermission
          arg5 = arg3
          arg4 = arg4(arg5)
          if arg4 then
            arg4 = cmgCall7
            arg5 = "Are you sure?"
            arg4 = arg4(arg5)
            if arg4 then
              arg4 = workValue.members
              arg5 = workValue16
              arg4 = arg4[arg5]
              if arg4 then
                arg4 = TriggerServerEvent
                arg5 = "85c0cc23f6"
                arg6 = workValue16
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "85c0cc23f6".
                arg4(arg5, arg6)
              else
                arg4 = TriggerServerEvent
                arg5 = "550d5b91c6"
                arg6 = workValue16
                arg4(arg5, arg6)
              end
            end
          else
            arg4 = tCMG
            arg4 = arg4.notify
            arg5 = "~r~You don't have permission to kick!"
            -- Beginner: Show a notification to the player.
            arg4(arg5)
          end
        else
          arg2 = tCMG
          arg2 = arg2.notify
          arg3 = "~r~No gang member selected"
          arg2(arg3)
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.538
        arg5 = 0.065
        arg6 = 0.056
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      ::flow_label_1893::
      arg2 = CursorInArea
      arg3 = 0.6182
      arg4 = 0.6822
      arg5 = 0.585
      arg6 = 0.641
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.613
        arg5 = 0.065
        arg6 = 0.056
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = CMG
          arg2 = arg2.hasGangPermission
          arg3 = "invitemember"
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = CMG
            arg2 = arg2.GetRageInputText
            arg3 = "Enter Perm ID to invite:"
            arg2 = arg2(arg3)
            if nil ~= arg2 then
              arg3 = tonumber
              arg4 = arg2
              arg3 = arg3(arg4)
              if arg3 then
                arg3 = TriggerServerEvent
                arg4 = "a3ebe947dd"
                arg5 = tonumber
                arg6 = arg2
                arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg5(arg6)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a3ebe947dd".
                arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
            end
            else
              arg3 = tCMG
              arg3 = arg3.notify
              arg4 = "Invalid Perm ID entered"
              -- Beginner: Show a notification to the player.
              arg3(arg4)
            end
          else
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~You don't have permission to invite players"
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.613
        arg5 = 0.065
        arg6 = 0.056
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.3735
      arg4 = 0.4185
      arg5 = 0.6768
      arg6 = 0.7074
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.396
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = cmgCall4
          if arg2 <= 1 then
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          else
            arg2 = cmgCall4
            arg2 = arg2 - 1
            cmgCall4 = arg2
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.396
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.4635
      arg4 = 0.5085
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.486
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = cmgCall4
          arg3 = math
          arg3 = arg3.ceil
          arg4 = arg1 / 10.0
          arg3 = arg3(arg4)
          if arg2 >= arg3 then
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          else
            arg2 = cmgCall4
            arg2 = arg2 + 1
            cmgCall4 = arg2
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.486
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.6583
      arg4 = 0.7056
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = "gang"
          textValue = arg2
        end
      else
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    arg2 = "logs"
    if arg1 == arg2 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.525
      arg4 = 0.421
      arg5 = 0.387
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.308
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.312
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "CMG gang - logs"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.502
      arg3 = 0.52
      arg4 = 0.387
      arg5 = 0.286
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.449
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Name"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.51
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "UserID"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.583
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Date"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.757
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Amount"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.673
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "New Balance"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.592
      arg3 = 0.6925
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = tostring
      arg8 = numberValue3
      arg7 = arg7(arg8)
      arg8 = "/"
      arg9 = tostring
      arg10 = math
      arg10 = arg10.ceil
      arg11 = workValue
      arg122 = "logCount"
      arg11 = arg11[arg122]
      arg11 = arg11 / 10.0
      arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg10(arg11)
      arg9 = arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      arg7 = arg7 .. arg8 .. arg9
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.775
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Back"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.6583
      arg3 = 0.7056
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "gang"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = pairs
      arg2 = workValue
      arg3 = "logs"
      arg2 = arg2[arg3]
      if not arg2 then
        arg2 = {}
      end
      arg1, arg2, arg3, arg4 = arg1(arg2)
      for arg5, arg6 in arg1, arg2, arg3, arg4 do
        arg7 = "amount"
        arg7 = arg6[arg7]
        if arg7 >= 0 then
          arg7 = 50
          if arg7 then
            goto flow_label_2385
          end
        end
        arg7 = 255
        ::flow_label_2385::
        arg8 = "amount"
        arg8 = arg6[arg8]
        if arg8 >= 0 then
          arg8 = 255
          if arg8 then
            goto flow_label_2393
          end
        end
        arg8 = 50
        ::flow_label_2393::
        arg9 = 50
        arg10 = arg6.user_id
        if -1 == arg10 then
          arg10 = "N/A"
          if arg10 then
            goto flow_label_2403
          end
        end
        arg10 = tostring
        arg11 = arg6.user_id
        arg10 = arg10(arg11)
        ::flow_label_2403::
        arg11 = DrawAdvancedText
        arg122 = 0.449
        arg13 = 0.0287 * arg5
        arg14 = 0.365
        arg13 = arg14 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.4
        arg17 = arg6.name
        arg18 = arg7
        numberValue5 = arg8
        numberValue7 = arg9
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = DrawAdvancedText
        arg122 = 0.51
        arg13 = 0.0287 * arg5
        arg14 = 0.365
        arg13 = arg14 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.4
        arg17 = arg10
        arg18 = arg7
        numberValue5 = arg8
        numberValue7 = arg9
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = DrawAdvancedText
        arg122 = 0.583
        arg13 = 0.0287 * arg5
        arg14 = 0.365
        arg13 = arg14 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.4
        arg17 = "date"
        arg17 = arg6[arg17]
        arg18 = arg7
        numberValue5 = arg8
        numberValue7 = arg9
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = DrawAdvancedText
        arg122 = 0.673
        arg13 = 0.0287 * arg5
        arg14 = 0.365
        arg13 = arg14 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.4
        arg17 = "\194\163"
        arg18 = getMoneyStringFormatted
        numberValue5 = "newBalance"
        numberValue5 = arg6[numberValue5]
        arg18 = arg18(numberValue5)
        arg17 = arg17 .. arg18
        arg18 = arg7
        numberValue5 = arg8
        numberValue7 = arg9
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = DrawAdvancedText
        arg122 = 0.757
        arg13 = 0.0287 * arg5
        arg14 = 0.365
        arg13 = arg14 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.4
        arg17 = "\194\163"
        arg18 = getMoneyStringFormatted
        numberValue5 = math
        numberValue7 = "abs"
        numberValue5 = numberValue5[numberValue7]
        numberValue7 = "amount"
        numberValue7 = arg6[numberValue7]
        numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = numberValue5(numberValue7)
        arg18 = arg18(numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
        arg17 = arg17 .. arg18
        arg18 = arg7
        numberValue5 = arg8
        numberValue7 = arg9
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = CursorInArea
        arg122 = 0.3005
        arg13 = 0.5955
        arg14 = arg5 - 1
        arg14 = 0.0287 * arg14
        arg14 = 0.3731 + arg14
        arg15 = arg5 - 1
        arg15 = 0.0287 * arg15
        arg15 = 0.4018 + arg15
        arg11 = arg11(arg122, arg13, arg14, arg15)
        if arg11 then
          arg11 = DrawRect
          arg122 = 0.502
          arg13 = arg5 - 1
          arg13 = 0.0287 * arg13
          arg13 = 0.39 + arg13
          arg14 = 0.387
          arg15 = 0.027
          arg16 = numberValue28
          arg17 = numberValue29
          arg18 = numberValue30
          numberValue5 = 150
          arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
          arg11 = DrawAdvancedText
          arg122 = 0.591
          arg13 = 0.75
          arg14 = 0.005
          arg15 = 0.0028
          arg16 = 0.48
          arg17 = "reason"
          arg17 = arg6[arg17]
          if arg17 then
            arg17 = "reason"
            arg17 = arg6[arg17]
            if arg17 then
              goto flow_label_2556
            end
          end
          arg17 = "No Reason Provided"
          ::flow_label_2556::
          arg18 = 255
          numberValue5 = 255
          numberValue7 = 255
          numberValue8 = 255
          numberValue9 = 4
          numberValue10 = 0
          arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        end
      end
      arg1 = DrawAdvancedText
      arg2 = 0.547
      arg3 = 0.692
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Previous"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.4195
      arg3 = 0.4845
      arg4 = 0.6768
      arg5 = 0.7074
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.452
        arg3 = 0.69
        arg4 = 0.065
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = numberValue3
          if arg1 <= 1 then
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          else
            arg1 = numberValue3
            arg1 = arg1 - 1
            numberValue3 = arg1
            arg1 = workValue
            arg2 = "logs"
            arg1[arg2] = nil
            arg1 = TriggerServerEvent
            arg2 = "3f8f33322f"
            arg3 = numberValue3
            arg4 = flag
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
            arg1(arg2, arg3, arg4)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.452
        arg3 = 0.69
        arg4 = 0.065
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = DrawAdvancedText
      arg2 = 0.639
      arg3 = 0.692
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Next"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.5125
      arg3 = 0.5775
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.545
        arg3 = 0.69
        arg4 = 0.065
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = numberValue3
          arg2 = math
          arg2 = arg2.ceil
          arg3 = workValue
          arg4 = "logCount"
          arg3 = arg3[arg4]
          arg3 = arg3 / 10.0
          arg2 = arg2(arg3)
          if arg1 >= arg2 then
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          else
            arg1 = numberValue3
            arg1 = arg1 + 1
            numberValue3 = arg1
            arg1 = workValue
            arg2 = "logs"
            arg1[arg2] = nil
            arg1 = TriggerServerEvent
            arg2 = "3f8f33322f"
            arg3 = numberValue3
            arg4 = flag
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
            arg1(arg2, arg3, arg4)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.545
        arg3 = 0.69
        arg4 = 0.065
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = DrawAdvancedText
      arg2 = 0.415
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = flag
      if arg7 then
        arg7 = "Show Turf"
        if arg7 then
          goto flow_label_2753
        end
      end
      arg7 = "Hide Turf"
      ::flow_label_2753::
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.2985
      arg3 = 0.3435
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.321
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = flag
          arg1 = not arg1
          flag = arg1
          arg1 = workValue
          arg2 = "logs"
          arg1[arg2] = nil
          arg1 = TriggerServerEvent
          arg2 = "3f8f33322f"
          arg3 = numberValue3
          arg4 = flag
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
          arg1(arg2, arg3, arg4)
        end
      else
        arg1 = DrawRect
        arg2 = 0.321
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
    end
  end
  arg1 = textValue
  if "contributions" == arg1 then
    arg1 = workValue9
    arg1, arg2 = arg1()
    arg3 = DrawRect
    arg4 = 0.501
    arg5 = 0.525
    arg6 = 0.421
    arg7 = 0.387
    arg8 = 0
    arg9 = 0
    arg10 = 0
    arg11 = 150
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    arg3 = DrawRect
    arg4 = 0.501
    arg5 = 0.308
    arg6 = 0.421
    arg7 = 0.047
    arg8 = 18
    arg9 = 82
    arg10 = 228
    arg11 = 248
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    arg3 = DrawAdvancedText
    arg4 = 0.591
    arg5 = 0.312
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.48
    arg9 = "CMG gang - contributions"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 7
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawRect
    arg4 = 0.502
    arg5 = 0.52
    arg6 = 0.387
    arg7 = 0.286
    arg8 = 0
    arg9 = 0
    arg10 = 0
    arg11 = 150
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    arg3 = DrawAdvancedText
    arg4 = 0.449
    arg5 = 0.365
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Name"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawAdvancedText
    arg4 = 0.53
    arg5 = 0.365
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "UserID"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawAdvancedText
    arg4 = 0.623
    arg5 = 0.365
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Last Contribution"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawAdvancedText
    arg4 = 0.727
    arg5 = 0.365
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Total Amount"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawAdvancedText
    arg4 = 0.592
    arg5 = 0.6925
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = tostring
    arg10 = numberValue3
    arg9 = arg9(arg10)
    arg10 = "/"
    arg11 = tostring
    arg122 = math
    arg122 = arg122.ceil
    arg13 = arg2 / 10.0
    arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg122(arg13)
    arg11 = arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
    arg9 = arg9 .. arg10 .. arg11
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = DrawAdvancedText
    arg4 = 0.775
    arg5 = 0.693
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Back"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = CursorInArea
    arg4 = 0.6583
    arg5 = 0.7056
    arg6 = 0.6712
    arg7 = 0.7064
    arg3 = arg3(arg4, arg5, arg6, arg7)
    if arg3 then
      arg3 = DrawRect
      arg4 = 0.681
      arg5 = 0.689
      arg6 = 0.045
      arg7 = 0.036
      arg8 = numberValue28
      arg9 = numberValue29
      arg10 = numberValue30
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
      arg3 = IsControlJustPressed
      arg4 = 1
      arg5 = 329
      arg3 = arg3(arg4, arg5)
      if not arg3 then
        arg3 = IsDisabledControlJustPressed
        arg4 = 1
        arg5 = 329
        arg3 = arg3(arg4, arg5)
      end
      if arg3 then
        arg3 = PlaySound
        arg4 = -1
        arg5 = "SELECT"
        arg6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg7 = false
        arg8 = 0
        arg9 = true
        arg3(arg4, arg5, arg6, arg7, arg8, arg9)
        arg3 = "gang"
        textValue = arg3
      end
    else
      arg3 = DrawRect
      arg4 = 0.681
      arg5 = 0.689
      arg6 = 0.045
      arg7 = 0.036
      arg8 = 0
      arg9 = 0
      arg10 = 0
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    end
    arg3 = pairs
    arg4 = arg1
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = "amount"
      arg9 = arg8[arg9]
      if arg9 >= 0 then
        arg9 = 50
        if arg9 then
          goto flow_label_3019
        end
      end
      arg9 = 255
      ::flow_label_3019::
      arg10 = "amount"
      arg10 = arg8[arg10]
      if arg10 >= 0 then
        arg10 = 255
        if arg10 then
          goto flow_label_3027
        end
      end
      arg10 = 50
      ::flow_label_3027::
      arg11 = 50
      arg122 = arg8.user_id
      if -1 == arg122 then
        arg122 = "N/A"
        if arg122 then
          goto flow_label_3037
        end
      end
      arg122 = tostring
      arg13 = arg8.user_id
      arg122 = arg122(arg13)
      ::flow_label_3037::
      arg13 = DrawAdvancedText
      arg14 = 0.449
      arg15 = 0.0287 * arg7
      arg16 = 0.365
      arg15 = arg16 + arg15
      arg16 = 0.005
      arg17 = 0.0028
      arg18 = 0.4
      numberValue5 = arg8.name
      numberValue7 = arg9
      numberValue8 = arg10
      numberValue9 = arg11
      numberValue10 = 255
      numberValue12 = 6
      numberValue13 = 0
      arg13(arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
      arg13 = DrawAdvancedText
      arg14 = 0.53
      arg15 = 0.0287 * arg7
      arg16 = 0.365
      arg15 = arg16 + arg15
      arg16 = 0.005
      arg17 = 0.0028
      arg18 = 0.4
      numberValue5 = arg122
      numberValue7 = arg9
      numberValue8 = arg10
      numberValue9 = arg11
      numberValue10 = 255
      numberValue12 = 6
      numberValue13 = 0
      arg13(arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
      arg13 = DrawAdvancedText
      arg14 = 0.623
      arg15 = 0.0287 * arg7
      arg16 = 0.365
      arg15 = arg16 + arg15
      arg16 = 0.005
      arg17 = 0.0028
      arg18 = 0.4
      numberValue5 = "lastContribution"
      numberValue5 = arg8[numberValue5]
      numberValue7 = arg9
      numberValue8 = arg10
      numberValue9 = arg11
      numberValue10 = 255
      numberValue12 = 6
      numberValue13 = 0
      arg13(arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
      arg13 = DrawAdvancedText
      arg14 = 0.727
      arg15 = 0.0287 * arg7
      arg16 = 0.365
      arg15 = arg16 + arg15
      arg16 = 0.005
      arg17 = 0.0028
      arg18 = 0.4
      numberValue5 = "\194\163"
      numberValue7 = getMoneyStringFormatted
      numberValue8 = "amount"
      numberValue8 = arg8[numberValue8]
      numberValue7 = numberValue7(numberValue8)
      numberValue5 = numberValue5 .. numberValue7
      numberValue7 = arg9
      numberValue8 = arg10
      numberValue9 = arg11
      numberValue10 = 255
      numberValue12 = 6
      numberValue13 = 0
      arg13(arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
    end
    arg3 = DrawAdvancedText
    arg4 = 0.547
    arg5 = 0.692
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Previous"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = CursorInArea
    arg4 = 0.4195
    arg5 = 0.4845
    arg6 = 0.6768
    arg7 = 0.7074
    arg3 = arg3(arg4, arg5, arg6, arg7)
    if arg3 then
      arg3 = DrawRect
      arg4 = 0.452
      arg5 = 0.69
      arg6 = 0.065
      arg7 = 0.036
      arg8 = numberValue28
      arg9 = numberValue29
      arg10 = numberValue30
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
      arg3 = IsControlJustPressed
      arg4 = 1
      arg5 = 329
      arg3 = arg3(arg4, arg5)
      if not arg3 then
        arg3 = IsDisabledControlJustPressed
        arg4 = 1
        arg5 = 329
        arg3 = arg3(arg4, arg5)
      end
      if arg3 then
        arg3 = PlaySound
        arg4 = -1
        arg5 = "SELECT"
        arg6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg7 = false
        arg8 = 0
        arg9 = true
        arg3(arg4, arg5, arg6, arg7, arg8, arg9)
        arg3 = numberValue6
        if arg3 <= 1 then
          arg3 = tCMG
          arg3 = arg3.notify
          arg4 = "~r~Lowest page reached"
          -- Beginner: Show a notification to the player.
          arg3(arg4)
        else
          arg3 = numberValue6
          arg3 = arg3 - 1
          numberValue6 = arg3
        end
      end
    else
      arg3 = DrawRect
      arg4 = 0.452
      arg5 = 0.69
      arg6 = 0.065
      arg7 = 0.036
      arg8 = 0
      arg9 = 0
      arg10 = 0
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    end
    arg3 = DrawAdvancedText
    arg4 = 0.639
    arg5 = 0.692
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Next"
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 4
    arg15 = 0
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = CursorInArea
    arg4 = 0.5125
    arg5 = 0.5775
    arg6 = 0.6712
    arg7 = 0.7064
    arg3 = arg3(arg4, arg5, arg6, arg7)
    if arg3 then
      arg3 = DrawRect
      arg4 = 0.545
      arg5 = 0.69
      arg6 = 0.065
      arg7 = 0.036
      arg8 = numberValue28
      arg9 = numberValue29
      arg10 = numberValue30
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
      arg3 = IsControlJustPressed
      arg4 = 1
      arg5 = 329
      arg3 = arg3(arg4, arg5)
      if not arg3 then
        arg3 = IsDisabledControlJustPressed
        arg4 = 1
        arg5 = 329
        arg3 = arg3(arg4, arg5)
      end
      if arg3 then
        arg3 = PlaySound
        arg4 = -1
        arg5 = "SELECT"
        arg6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg7 = false
        arg8 = 0
        arg9 = true
        arg3(arg4, arg5, arg6, arg7, arg8, arg9)
        arg3 = numberValue6
        arg4 = math
        arg4 = arg4.ceil
        arg5 = arg2 / 10.0
        arg4 = arg4(arg5)
        if arg3 >= arg4 then
          arg3 = tCMG
          arg3 = arg3.notify
          arg4 = "~r~Max page reached"
          -- Beginner: Show a notification to the player.
          arg3(arg4)
        else
          arg3 = numberValue6
          arg3 = arg3 + 1
          numberValue6 = arg3
        end
      end
    else
      arg3 = DrawRect
      arg4 = 0.545
      arg5 = 0.69
      arg6 = 0.065
      arg7 = 0.036
      arg8 = 0
      arg9 = 0
      arg10 = 0
      arg11 = 150
      arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    end
  end
  arg1 = textValue
  if "settings" == arg1 then
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.525
    arg4 = 0.421
    arg5 = 0.387
    arg6 = 0
    arg7 = 0
    arg8 = 0
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.308
    arg4 = 0.421
    arg5 = 0.047
    arg6 = 18
    arg7 = 82
    arg8 = 228
    arg9 = 248
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawAdvancedText
    arg2 = 0.591
    arg3 = 0.312
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.48
    arg7 = "CMG gang - settings"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 7
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.398
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "Permissions Guide"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.436
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "New members by can only deposit by default"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.457
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "This can be configured in the members page"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.51
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "To withdraw, invite, kick and access more"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.572
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "A leader has full access to the gang."
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.7
    arg3 = 0.532
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.46
    arg7 = "permissions must be given in members page."
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 6
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = workValue
    if arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.451
      arg3 = 0.616
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Leave Gang"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.554
      arg3 = 0.615
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Disband Gang"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.5025
      arg3 = 0.69
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Set Gang Tag"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    end
    arg1 = DrawAdvancedText
    arg2 = 0.775
    arg3 = 0.693
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.4
    arg7 = "Back"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = workValue6
    arg1 = arg1()
    arg2 = workValue
    if arg2 then
      arg2 = CursorInArea
      arg3 = 0.3187
      arg4 = 0.3937
      arg5 = 0.5712
      arg6 = 0.6462
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.357
        arg4 = 0.61
        arg5 = 0.075
        arg6 = 0.076
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = workValue
          if arg1 == arg2 then
            arg2 = cmgCall7
            arg3 = "Are you sure?"
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = TriggerServerEvent
              arg3 = "4d87711de5"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4d87711de5".
              arg2(arg3)
              arg2 = "noGang"
              textValue = arg2
              arg2 = CMG
              arg3 = "setCursor"
              arg2 = arg2[arg3]
              arg3 = 0
              arg2(arg3)
              arg2 = _ENV
              arg3 = "SetPlayerControl"
              arg2 = arg2[arg3]
              arg3 = _ENV
              arg4 = "PlayerId"
              arg3 = arg3[arg4]
              arg3 = arg3()
              arg4 = true
              arg5 = 0
              arg2(arg3, arg4, arg5)
            end
          else
            arg2 = notify
            arg3 = "~r~You must have your main gang selected to use this."
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.357
        arg4 = 0.61
        arg5 = 0.075
        arg6 = 0.076
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.4197
      arg4 = 0.4932
      arg5 = 0.5712
      arg6 = 0.6462
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.457
        arg4 = 0.61
        arg5 = 0.075
        arg6 = 0.076
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = workValue
          if arg1 == arg2 then
            arg2 = CMG
            arg2 = arg2.hasGangPermission
            arg3 = "leader"
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = cmgCall7
              arg3 = "Are you sure?"
              arg2 = arg2(arg3)
              if true == arg2 then
                arg2 = TriggerServerEvent
                arg3 = "2b85de9de2"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2b85de9de2".
                arg2(arg3)
              else
                arg2 = tCMG
                arg2 = arg2.notify
                arg3 = "~r~Cancelled disbanding gang."
                -- Beginner: Show a notification to the player.
                arg2(arg3)
              end
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~You don't have permission to disband!"
              arg2(arg3)
            end
          else
            arg2 = notify
            arg3 = "~r~You must have your main gang selected to use this."
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.457
        arg4 = 0.61
        arg5 = 0.075
        arg6 = 0.076
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInAreaRect
      arg3 = 0.407
      arg4 = 0.69
      arg5 = 0.075
      arg6 = 0.04
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.407
        arg4 = 0.687
        arg5 = 0.075
        arg6 = 0.04
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = workValue
          if arg1 == arg2 then
            arg2 = CMG
            arg2 = arg2.hasGangPermission
            arg3 = "leader"
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = TriggerServerEvent
              arg3 = "9dad3c2a94"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dad3c2a94".
              arg2(arg3)
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~Only a leader can set the gang tag!"
              -- Beginner: Show a notification to the player.
              arg2(arg3)
            end
          else
            arg2 = notify
            arg3 = "~r~You must have your main gang selected to use this."
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.407
        arg4 = 0.687
        arg5 = 0.075
        arg6 = 0.04
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    end
    arg2 = CursorInArea
    arg3 = 0.6583
    arg4 = 0.7056
    arg5 = 0.6712
    arg6 = 0.7064
    arg2 = arg2(arg3, arg4, arg5, arg6)
    if arg2 then
      arg2 = DrawRect
      arg3 = 0.681
      arg4 = 0.689
      arg5 = 0.045
      arg6 = 0.036
      arg7 = numberValue28
      arg8 = numberValue29
      arg9 = numberValue30
      arg10 = 150
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      arg2 = IsControlJustPressed
      arg3 = 1
      arg4 = 329
      arg2 = arg2(arg3, arg4)
      if not arg2 then
        arg2 = IsDisabledControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
      end
      if arg2 then
        arg2 = PlaySound
        arg3 = -1
        arg4 = "SELECT"
        arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg6 = false
        arg7 = 0
        arg8 = true
        arg2(arg3, arg4, arg5, arg6, arg7, arg8)
        arg2 = workValue
        if arg2 then
          arg2 = "gang"
          textValue = arg2
        else
          arg2 = "noGang"
          textValue = arg2
        end
      end
    else
      arg2 = DrawRect
      arg3 = 0.681
      arg4 = 0.689
      arg5 = 0.045
      arg6 = 0.036
      arg7 = 0
      arg8 = 0
      arg9 = 0
      arg10 = 150
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    end
    if arg1 then
      arg2 = arg1.isAdvanced
      if arg2 then
        arg2 = dataTable
        arg3 = "blips"
        arg2 = arg2[arg3]
        if arg2 then
          arg2 = "Disable"
          if arg2 then
            goto flow_label_3760
          end
        end
        arg2 = "Enable"
        ::flow_label_3760::
        arg3 = DrawAdvancedText
        arg4 = 0.451
        arg5 = 0.416
        arg6 = 0.005
        arg7 = 0.0028
        arg8 = 0.4
        arg9 = arg2
        arg10 = " Blips"
        arg9 = arg9 .. arg10
        arg10 = 255
        arg11 = 255
        arg122 = 255
        arg13 = 255
        arg14 = 6
        arg15 = 0
        arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
        arg3 = CursorInArea
        arg4 = 0.3187
        arg5 = 0.3937
        arg6 = 0.3712
        arg7 = 0.4462
        arg3 = arg3(arg4, arg5, arg6, arg7)
        if arg3 then
          arg3 = DrawRect
          arg4 = 0.357
          arg5 = 0.41
          arg6 = 0.075
          arg7 = 0.076
          arg8 = numberValue28
          arg9 = numberValue29
          arg10 = numberValue30
          arg11 = 150
          arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
          arg3 = IsControlJustPressed
          arg4 = 1
          arg5 = 329
          arg3 = arg3(arg4, arg5)
          if not arg3 then
            arg3 = IsDisabledControlJustPressed
            arg4 = 1
            arg5 = 329
            arg3 = arg3(arg4, arg5)
            if not arg3 then
              goto flow_label_3874
            end
          end
          arg3 = PlaySound
          arg4 = -1
          arg5 = "SELECT"
          arg6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg7 = false
          arg8 = 0
          arg9 = true
          arg3(arg4, arg5, arg6, arg7, arg8, arg9)
          arg3 = dataTable
          arg4 = "blips"
          arg5 = dataTable
          arg6 = "blips"
          arg5 = arg5[arg6]
          arg5 = not arg5
          arg3[arg4] = arg5
          arg3 = _ENV
          arg4 = "TriggerEvent"
          arg3 = arg3[arg4]
          arg4 = "e713d91b70"
          arg3(arg4)
          arg3 = dataTable
          arg4 = "blips"
          arg3 = arg3[arg4]
          if not arg3 then
            arg3 = _ENV
            arg4 = "TriggerEvent"
            arg3 = arg3[arg4]
            arg4 = "e713d91b70"
            arg3(arg4)
            arg3 = TriggerServerEvent
            arg4 = "f9c26121e2"
            arg5 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
            arg3(arg4, arg5)
          else
            arg3 = workValue6
            arg3 = arg3()
            arg4 = workValue
            if arg3 == arg4 then
              arg3 = "own"
              if arg3 then
                goto flow_label_3850
              end
            end
            arg3 = "guest"
            ::flow_label_3850::
            arg4 = TriggerServerEvent
            arg5 = "f9c26121e2"
            arg6 = arg3
            arg7 = true
            arg4(arg5, arg6, arg7)
          end
          arg3 = SetResourceKvp
          arg4 = "cmg_gang_blips"
          arg5 = tostring
          arg6 = dataTable
          arg7 = "blips"
          arg6 = arg6[arg7]
          arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg5(arg6)
          arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
        else
          arg3 = DrawRect
          arg4 = 0.357
          arg5 = 0.41
          arg6 = 0.075
          arg7 = 0.076
          arg8 = 0
          arg9 = 0
          arg10 = 0
          arg11 = 150
          arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        end
        ::flow_label_3874::
        arg3 = dataTable
        arg4 = "pings"
        arg3 = arg3[arg4]
        if arg3 then
          arg3 = "Disable"
          if arg3 then
            goto flow_label_3883
          end
        end
        arg3 = "Enable"
        ::flow_label_3883::
        arg4 = DrawAdvancedText
        arg5 = 0.554
        arg6 = 0.415
        arg7 = 0.005
        arg8 = 0.0028
        arg9 = 0.4
        arg10 = arg3
        arg11 = " Pings"
        arg10 = arg10 .. arg11
        arg11 = 255
        arg122 = 255
        arg13 = 255
        arg14 = 255
        arg15 = 4
        arg16 = 0
        arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16)
        arg4 = CursorInArea
        arg5 = 0.4197
        arg6 = 0.4932
        arg7 = 0.3712
        arg8 = 0.4462
        arg4 = arg4(arg5, arg6, arg7, arg8)
        if arg4 then
          arg4 = DrawRect
          arg5 = 0.457
          arg6 = 0.41
          arg7 = 0.075
          arg8 = 0.076
          arg9 = numberValue28
          arg10 = numberValue29
          arg11 = numberValue30
          arg122 = 150
          arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122)
          arg4 = IsControlJustPressed
          arg5 = 1
          arg6 = 329
          arg4 = arg4(arg5, arg6)
          if not arg4 then
            arg4 = IsDisabledControlJustPressed
            arg5 = 1
            arg6 = 329
            arg4 = arg4(arg5, arg6)
          end
          if arg4 then
            arg4 = PlaySound
            arg5 = -1
            arg6 = "SELECT"
            arg7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg8 = false
            arg9 = 0
            arg10 = true
            arg4(arg5, arg6, arg7, arg8, arg9, arg10)
            arg4 = dataTable
            arg5 = "pings"
            arg6 = dataTable
            arg7 = "pings"
            arg6 = arg6[arg7]
            arg6 = not arg6
            arg4[arg5] = arg6
            arg4 = SetResourceKvp
            arg5 = "cmg_gang_pings"
            arg6 = tostring
            arg7 = dataTable
            arg8 = "pings"
            arg7 = arg7[arg8]
            arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg6(arg7)
            arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          end
        else
          arg4 = DrawRect
          arg5 = 0.457
          arg6 = 0.41
          arg7 = 0.075
          arg8 = 0.076
          arg9 = 0
          arg10 = 0
          arg11 = 0
          arg122 = 150
          arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122)
        end
        arg4 = dataTable
        arg5 = "names"
        arg4 = arg4[arg5]
        if arg4 then
          arg4 = "Disable"
          if arg4 then
            goto flow_label_3972
          end
        end
        arg4 = "Enable"
        ::flow_label_3972::
        arg5 = DrawAdvancedText
        arg6 = 0.451
        arg7 = 0.516
        arg8 = 0.005
        arg9 = 0.0028
        arg10 = 0.4
        arg11 = arg4
        arg122 = " Names"
        arg11 = arg11 .. arg122
        arg122 = 255
        arg13 = 255
        arg14 = 255
        arg15 = 255
        arg16 = 6
        arg17 = 0
        arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17)
        arg5 = CursorInArea
        arg6 = 0.3187
        arg7 = 0.3937
        arg8 = 0.4712
        arg9 = 0.5462
        arg5 = arg5(arg6, arg7, arg8, arg9)
        if arg5 then
          arg5 = DrawRect
          arg6 = 0.357
          arg7 = 0.51
          arg8 = 0.075
          arg9 = 0.076
          arg10 = numberValue28
          arg11 = numberValue29
          arg122 = numberValue30
          arg13 = 150
          arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
          arg5 = IsControlJustPressed
          arg6 = 1
          arg7 = 329
          arg5 = arg5(arg6, arg7)
          if not arg5 then
            arg5 = IsDisabledControlJustPressed
            arg6 = 1
            arg7 = 329
            arg5 = arg5(arg6, arg7)
          end
          if arg5 then
            arg5 = PlaySound
            arg6 = -1
            arg7 = "SELECT"
            arg8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg9 = false
            arg10 = 0
            arg11 = true
            arg5(arg6, arg7, arg8, arg9, arg10, arg11)
            arg5 = dataTable
            arg6 = "names"
            arg7 = dataTable
            arg8 = "names"
            arg7 = arg7[arg8]
            arg7 = not arg7
            arg5[arg6] = arg7
            arg5 = SetResourceKvp
            arg6 = "cmg_gang_names"
            arg7 = tostring
            arg8 = dataTable
            arg9 = "names"
            arg8 = arg8[arg9]
            arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg7(arg8)
            arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          end
        else
          arg5 = DrawRect
          arg6 = 0.357
          arg7 = 0.51
          arg8 = 0.075
          arg9 = 0.076
          arg10 = 0
          arg11 = 0
          arg122 = 0
          arg13 = 150
          arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
        end
        arg5 = workValue
        if arg5 then
          arg5 = DrawAdvancedText
          arg6 = 0.554
          arg7 = 0.515
          arg8 = 0.005
          arg9 = 0.0028
          arg10 = 0.4
          arg11 = "Rename Gang"
          arg122 = 255
          arg13 = 255
          arg14 = 255
          arg15 = 255
          arg16 = 4
          arg17 = 0
          arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17)
          arg5 = CursorInArea
          arg6 = 0.4197
          arg7 = 0.4932
          arg8 = 0.4712
          arg9 = 0.5462
          arg5 = arg5(arg6, arg7, arg8, arg9)
          if arg5 then
            arg5 = DrawRect
            arg6 = 0.457
            arg7 = 0.51
            arg8 = 0.075
            arg9 = 0.076
            arg10 = numberValue28
            arg11 = numberValue29
            arg122 = numberValue30
            arg13 = 150
            arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
            arg5 = IsControlJustPressed
            arg6 = 1
            arg7 = 329
            arg5 = arg5(arg6, arg7)
            if not arg5 then
              arg5 = IsDisabledControlJustPressed
              arg6 = 1
              arg7 = 329
              arg5 = arg5(arg6, arg7)
            end
            if arg5 then
              arg5 = PlaySound
              arg6 = -1
              arg7 = "SELECT"
              arg8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              arg9 = false
              arg10 = 0
              arg11 = true
              arg5(arg6, arg7, arg8, arg9, arg10, arg11)
              arg5 = workValue.isAdvanced
              if arg5 then
                arg5 = CMG
                arg5 = arg5.GetRageInputText
                arg6 = "Enter Gang Name:"
                arg5 = arg5(arg6)
                if nil ~= arg5 and "null" ~= arg5 and "" ~= arg5 then
                  arg6 = TriggerServerEvent
                  arg7 = "7a95907fc0"
                  arg8 = arg5
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a95907fc0".
                  arg6(arg7, arg8)
                else
                  arg6 = tCMG
                  arg6 = arg6.notify
                  arg7 = "~r~No gang name entered!"
                  -- Beginner: Show a notification to the player.
                  arg6(arg7)
                end
              else
                arg5 = notify
                arg6 = "~r~Your main gang does not have the advanced license."
                arg5(arg6)
              end
            end
          else
            arg5 = DrawRect
            arg6 = 0.457
            arg7 = 0.51
            arg8 = 0.075
            arg9 = 0.076
            arg10 = 0
            arg11 = 0
            arg122 = 0
            arg13 = 150
            arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
          end
        end
        arg5 = _ENV
        arg6 = "GetHudColour"
        arg5 = arg5[arg6]
        arg6 = cmgCall
        arg7 = "colourLookup"
        arg6 = arg6[arg7]
        arg7 = textValue2
        arg6 = arg6[arg7]
        arg7 = "hud"
        arg6 = arg6[arg7]
        arg5, arg6, arg7 = arg5(arg6)
        arg8 = DrawAdvancedText
        arg9 = 0.645
        arg10 = 0.63
        arg11 = 0.005
        arg122 = 0.0028
        arg13 = 0.46
        arg14 = "Your Blip Colour: "
        arg15 = 255
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 6
        numberValue7 = 0
        arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7)
        arg8 = DrawRect
        arg9 = 0.62
        arg10 = 0.628
        arg11 = 0.05
        arg122 = 0.025
        arg13 = arg5
        arg14 = arg6
        arg15 = arg7
        arg16 = 255
        arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16)
        arg8 = CursorInArea
        arg9 = 0.595
        arg10 = 0.645
        arg11 = 0.6155
        arg122 = 0.6405
        arg8 = arg8(arg9, arg10, arg11, arg122)
        if arg8 then
          arg8 = IsControlJustPressed
          arg9 = 1
          arg10 = 329
          arg8 = arg8(arg9, arg10)
          if not arg8 then
            arg8 = IsDisabledControlJustPressed
            arg9 = 1
            arg10 = 329
            arg8 = arg8(arg9, arg10)
          end
          if arg8 then
            arg8 = false
            arg9 = false
            arg10 = pairs
            arg11 = cmgCall
            arg122 = "colourLookup"
            arg11 = arg11[arg122]
            arg10, arg11, arg122, arg13 = arg10(arg11)
            for arg14 in arg10, arg11, arg122, arg13 do
              arg15 = textValue2
              if arg14 == arg15 then
                arg8 = true
              elseif arg8 then
                textValue2 = arg14
                arg9 = true
                break
              end
            end
            if not arg9 then
              arg10 = pairs
              arg11 = cmgCall
              arg122 = "colourLookup"
              arg11 = arg11[arg122]
              arg10, arg11, arg122, arg13 = arg10(arg11)
              for arg14 in arg10, arg11, arg122, arg13 do
                textValue2 = arg14
                break
              end
            end
            arg10 = SetResourceKvp
            arg11 = "cmg_gang_colour"
            arg122 = textValue2
            arg10(arg11, arg122)
            arg10 = TriggerServerEvent
            arg11 = "a74c553948"
            arg122 = textValue2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a74c553948".
            arg10(arg11, arg122)
          end
        end
    end
    else
      arg2 = DrawAdvancedText
      arg3 = 0.5
      arg4 = 0.406
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Purchase Advanced License\n(\194\16350,000,000)"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 6
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.5
      arg4 = 0.476
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = [[
NOTE:
This purchase is tied to the gang.
Any member will be able to use the features.]]
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 6
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = CursorInArea
      arg3 = 0.3187
      arg4 = 0.4932
      arg5 = 0.3712
      arg6 = 0.5462
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.407
        arg4 = 0.46
        arg5 = 0.175
        arg6 = 0.176
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = TriggerServerEvent
          arg3 = "40cb8bd46d"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cb8bd46d".
          arg2(arg3)
        end
      else
        arg2 = DrawRect
        arg3 = 0.407
        arg4 = 0.46
        arg5 = 0.175
        arg6 = 0.176
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    arg2 = "rpturfs"
    if arg1 == arg2 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.525
      arg4 = 0.421
      arg5 = 0.387
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.308
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.312
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "CMG Gang - RP Turfs"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.502
      arg3 = 0.52
      arg4 = 0.387
      arg5 = 0.286
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.449
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Gang Name"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.657
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Our Relationship"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.757
      arg3 = 0.365
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Their Relationship"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.775
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Back"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.6583
      arg3 = 0.7056
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "gang"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = workValue
      arg2 = "id"
      arg2 = arg1[arg2]
      arg1 = dataTable5
      arg1 = arg1[arg2]
      arg2 = 1
      arg3 = pairs
      arg4 = dataTable5
      arg3, arg4, arg5, arg6 = arg3(arg4)
      for arg7, arg8 in arg3, arg4, arg5, arg6 do
        arg9 = workValue
        arg10 = "id"
        arg9 = arg9[arg10]
        if arg7 ~= arg9 then
          arg9 = "relationships"
          arg9 = arg1[arg9]
          arg9 = arg9[arg7]
          if not arg9 then
            arg9 = "Neutral"
          end
          arg10 = "relationships"
          arg10 = arg8[arg10]
          arg11 = workValue
          arg122 = "id"
          arg11 = arg11[arg122]
          arg10 = arg10[arg11]
          if not arg10 then
            arg10 = "Neutral"
          end
          arg11 = DrawAdvancedText
          arg122 = 0.449
          arg13 = 0.0287 * arg2
          arg14 = 0.365
          arg13 = arg14 + arg13
          arg14 = 0.005
          arg15 = 0.0028
          arg16 = 0.4
          arg17 = arg8.name
          arg18 = 255
          numberValue5 = 255
          numberValue7 = 255
          numberValue8 = 255
          numberValue9 = 6
          numberValue10 = 0
          arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
          arg11 = workValue13
          arg122 = arg9
          arg11, arg122, arg13 = arg11(arg122)
          arg14 = DrawAdvancedText
          arg15 = 0.657
          arg16 = 0.0287 * arg2
          arg17 = 0.365
          arg16 = arg17 + arg16
          arg17 = 0.005
          arg18 = 0.0028
          numberValue5 = 0.4
          numberValue7 = arg9
          numberValue8 = arg11
          numberValue9 = arg122
          numberValue10 = arg13
          numberValue12 = 255
          numberValue13 = 6
          numberValue15 = 0
          arg14(arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15)
          arg14 = workValue13
          arg15 = arg10
          arg14, arg15, arg16 = arg14(arg15)
          arg17 = DrawAdvancedText
          arg18 = 0.757
          numberValue5 = 0.0287 * arg2
          numberValue7 = 0.365
          numberValue5 = numberValue7 + numberValue5
          numberValue7 = 0.005
          numberValue8 = 0.0028
          numberValue9 = 0.4
          numberValue10 = arg10
          numberValue12 = arg14
          numberValue13 = arg15
          numberValue15 = arg16
          numberValue17 = 255
          numberValue19 = 6
          numberValue20 = 0
          arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          arg17 = CursorInArea
          arg18 = 0.3005
          numberValue5 = 0.6955
          numberValue7 = arg2 - 1
          numberValue7 = 0.0287 * numberValue7
          numberValue7 = 0.3731 + numberValue7
          numberValue8 = arg2 - 1
          numberValue8 = 0.0287 * numberValue8
          numberValue8 = 0.4018 + numberValue8
          arg17 = arg17(arg18, numberValue5, numberValue7, numberValue8)
          if arg17 then
            arg17 = DrawRect
            arg18 = 0.502
            numberValue5 = arg2 - 1
            numberValue5 = 0.0287 * numberValue5
            numberValue5 = 0.39 + numberValue5
            numberValue7 = 0.387
            numberValue8 = 0.027
            numberValue9 = numberValue28
            numberValue10 = numberValue29
            numberValue12 = numberValue30
            numberValue13 = 150
            arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
            arg17 = IsControlJustPressed
            arg18 = 1
            numberValue5 = 329
            arg17 = arg17(arg18, numberValue5)
            if not arg17 then
              arg17 = IsDisabledControlJustPressed
              arg18 = 1
              numberValue5 = 329
              arg17 = arg17(arg18, numberValue5)
              if not arg17 then
                goto flow_label_4649
              end
            end
            arg17 = PlaySound
            arg18 = -1
            numberValue5 = "SELECT"
            numberValue7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            numberValue8 = false
            numberValue9 = 0
            numberValue10 = true
            arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
            arg17 = "Friendly"
            if arg9 == arg17 then
              arg17 = TriggerServerEvent
              arg18 = "bdbde03161"
              numberValue5 = arg7
              numberValue7 = "Neutral"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
              arg17(arg18, numberValue5, numberValue7)
            else
              arg17 = "Neutral"
              if arg9 == arg17 then
                arg17 = TriggerServerEvent
                arg18 = "bdbde03161"
                numberValue5 = arg7
                numberValue7 = "Enemy"
                arg17(arg18, numberValue5, numberValue7)
              else
                arg17 = "Enemy"
                if arg9 == arg17 then
                  arg17 = TriggerServerEvent
                  arg18 = "bdbde03161"
                  numberValue5 = arg7
                  numberValue7 = "Friendly"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
                  arg17(arg18, numberValue5, numberValue7)
                end
              end
            end
          end
          ::flow_label_4649::
          arg2 = arg2 + 1
        end
      end
      arg3 = "turfColour"
      arg3 = arg1[arg3]
      if not arg3 then
        arg3 = "Red"
      end
      arg4 = DrawAdvancedText
      arg5 = 0.415
      arg6 = 0.693
      arg7 = 0.005
      arg8 = 0.0028
      arg9 = 0.4
      arg10 = "Turf Colour:"
      arg11 = 255
      arg122 = 255
      arg13 = 255
      arg14 = 255
      arg15 = 4
      arg16 = 0
      arg4(arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16)
      arg4 = 0
      arg5 = 0
      arg6 = 0
      if arg3 then
        arg7 = cmgCall
        arg8 = "colourLookup"
        arg7 = arg7[arg8]
        arg7 = arg7[arg3]
        if arg7 then
          arg7 = _ENV
          arg8 = "GetHudColour"
          arg7 = arg7[arg8]
          arg8 = cmgCall
          arg9 = "colourLookup"
          arg8 = arg8[arg9]
          arg8 = arg8[arg3]
          arg9 = "hud"
          arg8 = arg8[arg9]
          arg7, arg8, arg9 = arg7(arg8)
          arg6 = arg9
          arg5 = arg8
          arg4 = arg7
        end
      end
      arg7 = DrawRect
      arg8 = 0.367
      arg9 = 0.689
      arg10 = 0.045
      arg11 = 0.03
      arg122 = arg4
      arg13 = arg5
      arg14 = arg6
      arg15 = 255
      arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
      arg7 = CursorInAreaRect
      arg8 = 0.367
      arg9 = 0.689
      arg10 = 0.045
      arg11 = 0.03
      arg7 = arg7(arg8, arg9, arg10, arg11)
      if arg7 then
        arg7 = IsControlJustPressed
        arg8 = 1
        arg9 = 329
        arg7 = arg7(arg8, arg9)
        if not arg7 then
          arg7 = IsDisabledControlJustPressed
          arg8 = 1
          arg9 = 329
          arg7 = arg7(arg8, arg9)
          if not arg7 then
            goto flow_label_4769
          end
        end
        arg7 = PlaySound
        arg8 = -1
        arg9 = "SELECT"
        arg10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg11 = false
        arg122 = 0
        arg13 = true
        arg7(arg8, arg9, arg10, arg11, arg122, arg13)
        arg7 = false
        arg8 = nil
        arg9 = pairs
        arg10 = cmgCall
        arg11 = "colourLookup"
        arg10 = arg10[arg11]
        arg9, arg10, arg11, arg122 = arg9(arg10)
        for arg13 in arg9, arg10, arg11, arg122 do
          if arg13 == arg3 then
            arg7 = true
          elseif arg7 then
            arg8 = arg13
            break
          end
        end
        if not arg8 then
          arg9 = table
          arg10 = "keyat"
          arg9 = arg9[arg10]
          arg10 = cmgCall
          arg11 = "colourLookup"
          arg10 = arg10[arg11]
          arg11 = 1
          arg9 = arg9(arg10, arg11)
          arg8 = arg9
        end
        arg9 = TriggerServerEvent
        arg10 = "adb903a8eb"
        arg11 = arg8
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "adb903a8eb".
        arg9(arg10, arg11)
      end
    end
  end
  ::flow_label_4769::
  arg1 = textValue
  arg2 = "turfs"
  if arg1 == arg2 then
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.555
    arg4 = 0.481
    arg5 = 0.547
    arg6 = 0
    arg7 = 0
    arg8 = 0
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.3
    arg4 = 0.481
    arg5 = 0.047
    arg6 = 18
    arg7 = 82
    arg8 = 228
    arg9 = 248
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawAdvancedText
    arg2 = 0.591
    arg3 = 0.303
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.48
    arg7 = "CMG gang - Turfs"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 7
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = DrawAdvancedText
    arg2 = 0.5
    arg3 = 0.345
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.325
    arg7 = "Turf profits updated every 15 minutes"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 0
    arg13 = 1
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = CMG
    arg2 = "getTurfOwnerAndProfit"
    arg1 = arg1[arg2]
    arg2 = "weed"
    arg1, arg2 = arg1(arg2)
    arg3 = DrawAdvancedText
    arg4 = 0.369
    arg5 = 0.38
    arg6 = 0.005
    arg7 = 0.0028
    arg8 = 0.4
    arg9 = "Weed Turf - (Owned by "
    arg10 = arg1
    arg11 = ") Commission - "
    arg122 = _ENV
    arg13 = "globalWeedCommissionPercent"
    arg122 = arg122[arg13]
    arg13 = "% Profit - \194\163"
    arg14 = getMoneyStringFormatted
    arg15 = arg2
    arg14 = arg14(arg15)
    arg9 = arg9 .. arg10 .. arg11 .. arg122 .. arg13 .. arg14
    arg10 = 255
    arg11 = 255
    arg122 = 255
    arg13 = 255
    arg14 = 0
    arg15 = 1
    arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
    arg3 = CMG
    arg4 = "getTurfOwnerAndProfit"
    arg3 = arg3[arg4]
    arg4 = "cocaine"
    arg3, arg4 = arg3(arg4)
    arg5 = DrawAdvancedText
    arg6 = 0.369
    arg7 = 0.44
    arg8 = 0.005
    arg9 = 0.0028
    arg10 = 0.4
    arg11 = "Cocaine Turf - (Owned by "
    arg122 = arg3
    arg13 = ") Commission - "
    arg14 = _ENV
    arg15 = "globalCocaineCommissionPercent"
    arg14 = arg14[arg15]
    arg15 = "% Profit - \194\163"
    arg16 = getMoneyStringFormatted
    arg17 = arg4
    arg16 = arg16(arg17)
    arg11 = arg11 .. arg122 .. arg13 .. arg14 .. arg15 .. arg16
    arg122 = 255
    arg13 = 255
    arg14 = 255
    arg15 = 255
    arg16 = 0
    arg17 = 1
    arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17)
    arg5 = CMG
    arg6 = "getTurfOwnerAndProfit"
    arg5 = arg5[arg6]
    arg6 = "meth"
    arg5, arg6 = arg5(arg6)
    arg7 = DrawAdvancedText
    arg8 = 0.369
    arg9 = 0.5
    arg10 = 0.005
    arg11 = 0.0028
    arg122 = 0.4
    arg13 = "Meth Turf - (Owned by "
    arg14 = arg5
    arg15 = ") Commission - "
    arg16 = _ENV
    arg17 = "globalMethCommissionPercent"
    arg16 = arg16[arg17]
    arg17 = "% Profit - \194\163"
    arg18 = getMoneyStringFormatted
    numberValue5 = arg6
    arg18 = arg18(numberValue5)
    arg13 = arg13 .. arg14 .. arg15 .. arg16 .. arg17 .. arg18
    arg14 = 255
    arg15 = 255
    arg16 = 255
    arg17 = 255
    arg18 = 0
    numberValue5 = 1
    arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
    arg7 = CMG
    arg8 = "getTurfOwnerAndProfit"
    arg7 = arg7[arg8]
    arg8 = "heroin"
    arg7, arg8 = arg7(arg8)
    arg9 = DrawAdvancedText
    arg10 = 0.369
    arg11 = 0.56
    arg122 = 0.005
    arg13 = 0.0028
    arg14 = 0.4
    arg15 = "Heroin Turf - (Owned by "
    arg16 = arg7
    arg17 = ") Commission - "
    arg18 = _ENV
    numberValue5 = "globalHeroinCommissionPercent"
    arg18 = arg18[numberValue5]
    numberValue5 = "% Profit - \194\163"
    numberValue7 = getMoneyStringFormatted
    numberValue8 = arg8
    numberValue7 = numberValue7(numberValue8)
    arg15 = arg15 .. arg16 .. arg17 .. arg18 .. numberValue5 .. numberValue7
    arg16 = 255
    arg17 = 255
    arg18 = 255
    numberValue5 = 255
    numberValue7 = 0
    numberValue8 = 1
    arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
    arg9 = CMG
    arg10 = "getTurfOwnerAndProfit"
    arg9 = arg9[arg10]
    arg10 = "large_arms"
    arg9, arg10 = arg9(arg10)
    arg11 = DrawAdvancedText
    arg122 = 0.369
    arg13 = 0.62
    arg14 = 0.005
    arg15 = 0.0028
    arg16 = 0.4
    arg17 = "Large Arms - (Owned by "
    arg18 = arg9
    numberValue5 = ") Commission - "
    numberValue7 = _ENV
    numberValue8 = "globalLargeArmsCommission"
    numberValue7 = numberValue7[numberValue8]
    numberValue8 = "% Profit - \194\163"
    numberValue9 = getMoneyStringFormatted
    numberValue10 = arg10
    numberValue9 = numberValue9(numberValue10)
    arg17 = arg17 .. arg18 .. numberValue5 .. numberValue7 .. numberValue8 .. numberValue9
    arg18 = 255
    numberValue5 = 255
    numberValue7 = 255
    numberValue8 = 255
    numberValue9 = 0
    numberValue10 = 1
    arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
    arg11 = CMG
    arg122 = "getTurfOwnerAndProfit"
    arg11 = arg11[arg122]
    arg122 = "lsd_north"
    arg11, arg122 = arg11(arg122)
    arg13 = DrawAdvancedText
    arg14 = 0.369
    arg15 = 0.68
    arg16 = 0.005
    arg17 = 0.0028
    arg18 = 0.4
    numberValue5 = "LSD North Turf - (Owned by "
    numberValue7 = arg11
    numberValue8 = ") Commission - "
    numberValue9 = _ENV
    numberValue10 = "globalLSDNorthCommissionPercent"
    numberValue9 = numberValue9[numberValue10]
    numberValue10 = "% Profit - \194\163"
    numberValue12 = getMoneyStringFormatted
    numberValue13 = arg122
    numberValue12 = numberValue12(numberValue13)
    numberValue5 = numberValue5 .. numberValue7 .. numberValue8 .. numberValue9 .. numberValue10 .. numberValue12
    numberValue7 = 255
    numberValue8 = 255
    numberValue9 = 255
    numberValue10 = 255
    numberValue12 = 0
    numberValue13 = 1
    arg13(arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
    arg13 = CMG
    arg14 = "getTurfOwnerAndProfit"
    arg13 = arg13[arg14]
    arg14 = "lsd_south"
    arg13, arg14 = arg13(arg14)
    arg15 = DrawAdvancedText
    arg16 = 0.369
    arg17 = 0.74
    arg18 = 0.005
    numberValue5 = 0.0028
    numberValue7 = 0.4
    numberValue8 = "LSD South Turf - (Owned by "
    numberValue9 = arg13
    numberValue10 = ") Commission - "
    numberValue12 = _ENV
    numberValue13 = "globalLSDSouthCommissionPercent"
    numberValue12 = numberValue12[numberValue13]
    numberValue13 = "% Profit - \194\163"
    numberValue15 = getMoneyStringFormatted
    numberValue17 = arg14
    numberValue15 = numberValue15(numberValue17)
    numberValue8 = numberValue8 .. numberValue9 .. numberValue10 .. numberValue12 .. numberValue13 .. numberValue15
    numberValue9 = 255
    numberValue10 = 255
    numberValue12 = 255
    numberValue13 = 255
    numberValue15 = 0
    numberValue17 = 1
    arg15(arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17)
    arg15 = CMG
    arg16 = "getTurfOwnerAndProfit"
    arg15 = arg15[arg16]
    arg16 = "black_market"
    arg15, arg16 = arg15(arg16)
    arg17 = DrawAdvancedText
    arg18 = 0.369
    numberValue5 = 0.8
    numberValue7 = 0.005
    numberValue8 = 0.0028
    numberValue9 = 0.4
    numberValue10 = "Black Market - (Owned by "
    numberValue12 = arg15
    numberValue13 = ") Commission - "
    numberValue15 = _ENV
    numberValue17 = "globalBlackMarketCommision"
    numberValue15 = numberValue15[numberValue17]
    numberValue17 = "% Profit - \194\163"
    numberValue19 = getMoneyStringFormatted
    numberValue20 = arg16
    numberValue19 = numberValue19(numberValue20)
    numberValue10 = numberValue10 .. numberValue12 .. numberValue13 .. numberValue15 .. numberValue17 .. numberValue19
    numberValue12 = 255
    numberValue13 = 255
    numberValue15 = 255
    numberValue17 = 255
    numberValue19 = 0
    numberValue20 = 1
    arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
    arg17 = DrawAdvancedText
    arg18 = 0.804
    numberValue5 = 0.744
    numberValue7 = 0.005
    numberValue8 = 0.0028
    numberValue9 = 0.4
    numberValue10 = "Back"
    numberValue12 = 255
    numberValue13 = 255
    numberValue15 = 255
    numberValue17 = 255
    numberValue19 = 4
    numberValue20 = 0
    arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
    arg17 = CursorInArea
    arg18 = 0.6873
    numberValue5 = 0.7346
    numberValue7 = 0.7222
    numberValue8 = 0.7574
    arg17 = arg17(arg18, numberValue5, numberValue7, numberValue8)
    if arg17 then
      arg17 = DrawRect
      arg18 = 0.71
      numberValue5 = 0.74
      numberValue7 = 0.045
      numberValue8 = 0.036
      numberValue9 = numberValue28
      numberValue10 = numberValue29
      numberValue12 = numberValue30
      numberValue13 = 150
      arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
      arg17 = IsControlJustPressed
      arg18 = 1
      numberValue5 = 329
      arg17 = arg17(arg18, numberValue5)
      if not arg17 then
        arg17 = IsDisabledControlJustPressed
        arg18 = 1
        numberValue5 = 329
        arg17 = arg17(arg18, numberValue5)
      end
      if arg17 then
        arg17 = PlaySound
        arg18 = -1
        numberValue5 = "SELECT"
        numberValue7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        numberValue8 = false
        numberValue9 = 0
        numberValue10 = true
        arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg17 = "gang"
        textValue = arg17
      end
    else
      arg17 = DrawRect
      arg18 = 0.71
      numberValue5 = 0.74
      numberValue7 = 0.045
      numberValue8 = 0.036
      numberValue9 = 0
      numberValue10 = 0
      numberValue12 = 0
      numberValue13 = 150
      arg17(arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13)
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    arg2 = "security"
    if arg1 == arg2 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.525
      arg4 = 0.421
      arg5 = 0.387
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.308
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.312
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "CMG gang - security"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.375
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "Maximum withdraw amount per member:"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.405
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Sets the maximum amount of money a member can withdraw within a 24 hour time period."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.525
      arg3 = 0.377
      arg4 = 0.1
      arg5 = 0.03
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 175
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.575
      arg3 = 0.377
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.44
      arg7 = "\194\163"
      arg8 = getMoneyStringFormatted
      arg9 = workValue
      arg10 = "maxWithdraw"
      arg9 = arg9[arg10]
      arg8 = arg8(arg9)
      arg7 = arg7 .. arg8
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.31
      arg3 = 0.65
      arg4 = 0.36
      arg5 = 0.41
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
          if not arg1 then
            goto flow_label_5281
          end
        end
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = CMG
        arg1 = arg1.hasGangPermission
        arg2 = "security"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = CMG
          arg1 = arg1.GetRageInputText
          arg2 = "Enter amount:"
          arg1 = arg1(arg2)
          if arg1 then
            arg2 = tonumber
            arg3 = arg1
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = tonumber
              arg3 = arg1
              arg2 = arg2(arg3)
              if arg2 >= 0 then
                arg2 = TriggerServerEvent
                arg3 = "b674c758b8"
                arg4 = tonumber
                arg5 = arg1
                arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg4(arg5)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b674c758b8".
                arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
            end
          end
          else
            arg2 = notify
            arg3 = "~r~Invalid amount entered."
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          end
        else
          arg1 = notify
          arg2 = "~r~You do not have permission to edit security.."
          arg1(arg2)
        end
      end
      ::flow_label_5281::
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.475
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "Limit withdraw amount to deposit amount:"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.505
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Prevents a member withdrawing more money then they have deposited into the funds."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.525
      arg3 = 0.475
      arg4 = 0.1
      arg5 = 0.03
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 175
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.575
      arg3 = 0.475
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = workValue
      arg8 = "limitWithdrawDeposit"
      arg7 = arg7[arg8]
      if arg7 then
        arg7 = "Yes"
        if arg7 then
          goto flow_label_5334
        end
      end
      arg7 = "No"
      ::flow_label_5334::
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.31
      arg3 = 0.65
      arg4 = 0.46
      arg5 = 0.51
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
          if not arg1 then
            goto flow_label_5386
          end
        end
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = CMG
        arg1 = arg1.hasGangPermission
        arg2 = "security"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = cmgCall7
          arg2 = "Enable?"
          arg1 = arg1(arg2)
          arg2 = TriggerServerEvent
          arg3 = "58d834d15a"
          arg4 = arg1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58d834d15a".
          arg2(arg3, arg4)
        else
          arg1 = notify
          arg2 = "~r~You do not have permission to edit security."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        end
      end
      ::flow_label_5386::
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.575
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "Require reason for deposit/withdraw:"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.4
      arg3 = 0.605
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Requires a member to provide a reason for depositing or withdrawing from funds."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.525
      arg3 = 0.575
      arg4 = 0.1
      arg5 = 0.03
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 175
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.575
      arg3 = 0.575
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = workValue
      arg8 = "requireWithdrawReason"
      arg7 = arg7[arg8]
      if arg7 then
        arg7 = "Yes"
        if arg7 then
          goto flow_label_5439
        end
      end
      arg7 = "No"
      ::flow_label_5439::
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 1
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.31
      arg3 = 0.65
      arg4 = 0.56
      arg5 = 0.61
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
          if not arg1 then
            goto flow_label_5491
          end
        end
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = CMG
        arg1 = arg1.hasGangPermission
        arg2 = "security"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = cmgCall7
          arg2 = "Enable?"
          arg1 = arg1(arg2)
          arg2 = TriggerServerEvent
          arg3 = "5d7f40bb9d"
          arg4 = arg1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d7f40bb9d".
          arg2(arg3, arg4)
        else
          arg1 = notify
          arg2 = "~r~You do not have permission to edit security."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        end
      end
      ::flow_label_5491::
      arg1 = DrawAdvancedText
      arg2 = 0.775
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Back"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.6583
      arg3 = 0.7056
      arg4 = 0.6712
      arg5 = 0.7064
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "gang"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.681
        arg3 = 0.689
        arg4 = 0.045
        arg5 = 0.036
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    if "permissions" == arg1 then
      arg1 = workValue.members
      arg2 = workValue16
      arg1 = arg1[arg2]
      if arg1 then
        arg2 = arg1.permissions
        if arg2 then
          goto flow_label_5573
        end
      end
      arg2 = "members"
      textValue = arg2
      return
      ::flow_label_5573::
      arg2 = DrawRect
      arg3 = 0.501
      arg4 = 0.525
      arg5 = 0.421
      arg6 = 0.387
      arg7 = 0
      arg8 = 0
      arg9 = 0
      arg10 = 150
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      arg2 = DrawRect
      arg3 = 0.501
      arg4 = 0.308
      arg5 = 0.421
      arg6 = 0.047
      arg7 = 18
      arg8 = 82
      arg9 = 228
      arg10 = 248
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      arg2 = DrawAdvancedText
      arg3 = 0.591
      arg4 = 0.312
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.48
      arg8 = "CMG gang - permissions"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 7
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawRect
      arg3 = 0.501
      arg4 = 0.52
      arg5 = 0.395
      arg6 = 0.291
      arg7 = 0
      arg8 = 0
      arg9 = 0
      arg10 = 150
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      arg2 = DrawAdvancedText
      arg3 = 0.449
      arg4 = 0.359
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Permission"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 6
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.536
      arg4 = 0.359
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Has Access"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 6
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.675
      arg4 = 0.359
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Description"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 6
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = pairs
      arg3 = cmgCall.permissions
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = arg1.permissions
        arg9 = "id"
        arg9 = arg7[arg9]
        arg8 = arg8[arg9]
        if arg8 then
          arg8 = true
          if arg8 then
            goto flow_label_5673
          end
        end
        arg8 = false
        ::flow_label_5673::
        if arg8 then
          arg9 = 50
          if arg9 then
            goto flow_label_5679
          end
        end
        arg9 = 255
        ::flow_label_5679::
        if arg8 then
          arg10 = 255
          if arg10 then
            goto flow_label_5685
          end
        end
        arg10 = 50
        ::flow_label_5685::
        arg11 = 50
        arg122 = DrawAdvancedText
        arg13 = 0.449
        arg14 = 0.0287 * arg6
        arg14 = 0.361 + arg14
        arg15 = 0.005
        arg16 = 0.0028
        arg17 = 0.4
        arg18 = arg7.name
        numberValue5 = arg9
        numberValue7 = arg10
        numberValue8 = arg11
        numberValue9 = 255
        numberValue10 = 6
        numberValue12 = 0
        arg122(arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12)
        arg122 = DrawAdvancedText
        arg13 = 0.536
        arg14 = 0.0287 * arg6
        arg14 = 0.361 + arg14
        arg15 = 0.005
        arg16 = 0.0028
        arg17 = 0.4
        if arg8 then
          arg18 = "Yes"
          if arg18 then
            goto flow_label_5718
          end
        end
        arg18 = "No"
        ::flow_label_5718::
        numberValue5 = arg9
        numberValue7 = arg10
        numberValue8 = arg11
        numberValue9 = 255
        numberValue10 = 6
        numberValue12 = 0
        arg122(arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12)
        arg122 = DrawAdvancedText
        arg13 = 0.675
        arg14 = 0.0287 * arg6
        arg14 = 0.361 + arg14
        arg15 = 0.005
        arg16 = 0.0028
        arg17 = 0.4
        arg18 = "description"
        arg18 = arg7[arg18]
        numberValue5 = arg9
        numberValue7 = arg10
        numberValue8 = arg11
        numberValue9 = 255
        numberValue10 = 6
        numberValue12 = 0
        arg122(arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12)
        arg122 = CursorInArea
        arg13 = 0.3005
        arg14 = 0.5955
        arg15 = arg6 - 1
        arg15 = 0.0287 * arg15
        arg15 = 0.3731 + arg15
        arg16 = arg6 - 1
        arg16 = 0.0287 * arg16
        arg16 = 0.4018 + arg16
        arg122 = arg122(arg13, arg14, arg15, arg16)
        if arg122 then
          arg122 = IsControlJustPressed
          arg13 = 1
          arg14 = 329
          arg122 = arg122(arg13, arg14)
          if not arg122 then
            arg122 = IsDisabledControlJustPressed
            arg13 = 1
            arg14 = 329
            arg122 = arg122(arg13, arg14)
            if not arg122 then
              goto flow_label_5780
            end
          end
          arg122 = TriggerServerEvent
          arg13 = "a6cd82c68e"
          arg14 = workValue16
          arg15 = "id"
          arg15 = arg7[arg15]
          arg16 = not arg8
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6cd82c68e".
          arg122(arg13, arg14, arg15, arg16)
        end
        ::flow_label_5780::
      end
      arg2 = DrawAdvancedText
      arg3 = 0.4
      arg4 = 0.693
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Editing permissions for "
      arg9 = arg1.name
      arg10 = " (User ID: "
      arg11 = tostring
      arg122 = workValue16
      arg11 = arg11(arg122)
      arg122 = ")"
      arg8 = arg8 .. arg9 .. arg10 .. arg11 .. arg122
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 1
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.775
      arg4 = 0.693
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Back"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = CursorInArea
      arg3 = 0.6583
      arg4 = 0.7056
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = "members"
          textValue = arg2
        end
      else
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    end
  end
  arg1 = textValue
  if "guest" == arg1 then
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.525
    arg4 = 0.421
    arg5 = 0.387
    arg6 = 0
    arg7 = 0
    arg8 = 0
    arg9 = 150
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawRect
    arg2 = 0.501
    arg3 = 0.308
    arg4 = 0.421
    arg5 = 0.047
    arg6 = 18
    arg7 = 82
    arg8 = 228
    arg9 = 248
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    arg1 = DrawAdvancedText
    arg2 = 0.591
    arg3 = 0.312
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.48
    arg7 = "CMG gang - guest"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 7
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = workValue3
    if arg1 then
      arg1 = DrawRect
      arg2 = 0.448
      arg3 = 0.52
      arg4 = 0.295
      arg5 = 0.291
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.449
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Name"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.506
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "ID"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.555
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Control"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.625
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Last Seen"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.675
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Pin"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = workValue
      if arg1 then
        arg1 = workValue3
        if arg1 then
          arg1 = flag2
          if arg1 then
            arg1 = "Remove Selection"
            if arg1 then
              goto flow_label_6002
            end
          end
          arg1 = "Set As Selected"
          ::flow_label_6002::
          arg2 = DrawAdvancedText
          arg3 = 0.746
          arg4 = 0.465
          arg5 = 0.005
          arg6 = 0.0028
          arg7 = 0.4
          arg8 = arg1
          arg9 = 255
          arg10 = 255
          arg11 = 255
          arg122 = 255
          arg13 = 4
          arg14 = 0
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
        end
      end
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.54
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Leave"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.491
      arg3 = 0.695
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Previous"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.581
      arg3 = 0.695
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Next"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = table
      arg1 = arg1.count
      arg2 = workValue3.members
      -- Beginner: result below is count.
      arg1 = arg1(arg2)
      arg2 = table
      arg2 = arg2.count
      arg3 = workValue3.guests
      -- Beginner: result below is count.
      arg2 = arg2(arg3)
      arg1 = arg1 + arg2
      arg2 = DrawAdvancedText
      arg3 = 0.536
      arg4 = 0.695
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = tostring
      arg9 = numberValue11
      arg8 = arg8(arg9)
      arg9 = "/"
      arg10 = tostring
      arg11 = math
      arg11 = arg11.ceil
      arg122 = arg1 / 10.0
      arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg11(arg122)
      arg10 = arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      arg8 = arg8 .. arg9 .. arg10
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = DrawAdvancedText
      arg3 = 0.775
      arg4 = 0.693
      arg5 = 0.005
      arg6 = 0.0028
      arg7 = 0.4
      arg8 = "Back"
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 255
      arg13 = 4
      arg14 = 0
      arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
      arg2 = workValue
      if arg2 then
        arg2 = DrawAdvancedText
        arg3 = 0.746
        arg4 = 0.622
        arg5 = 0.005
        arg6 = 0.0028
        arg7 = 0.473
        arg8 = "Invite Guest"
        arg9 = 255
        arg10 = 255
        arg11 = 255
        arg122 = 255
        arg13 = 4
        arg14 = 0
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
        arg2 = CursorInAreaRect
        arg3 = 0.651
        arg4 = 0.622
        arg5 = 0.065
        arg6 = 0.056
        arg2 = arg2(arg3, arg4, arg5, arg6)
        if arg2 then
          arg2 = DrawRect
          arg3 = 0.651
          arg4 = 0.622
          arg5 = 0.065
          arg6 = 0.056
          arg7 = 0
          arg8 = 168
          arg9 = 255
          arg10 = 150
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
          arg2 = IsControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
          if not arg2 then
            arg2 = IsDisabledControlJustPressed
            arg3 = 1
            arg4 = 329
            arg2 = arg2(arg3, arg4)
          end
          if arg2 then
            arg2 = PlaySound
            arg3 = -1
            arg4 = "SELECT"
            arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg6 = false
            arg7 = 0
            arg8 = true
            arg2(arg3, arg4, arg5, arg6, arg7, arg8)
            arg2 = CMG
            arg2 = arg2.hasGangPermission
            arg3 = "inviteguest"
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = CMG
              arg2 = arg2.GetRageInputText
              arg3 = "Enter Perm ID to invite:"
              arg2 = arg2(arg3)
              if nil ~= arg2 then
                arg3 = tonumber
                arg4 = arg2
                arg3 = arg3(arg4)
                if arg3 then
                  arg3 = TriggerServerEvent
                  arg4 = "306a9cdbc9"
                  arg5 = tonumber
                  arg6 = arg2
                  arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg5(arg6)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "306a9cdbc9".
                  arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
              end
              else
                arg3 = tCMG
                arg3 = arg3.notify
                arg4 = "Invalid Perm ID entered"
                -- Beginner: Show a notification to the player.
                arg3(arg4)
              end
            else
              arg2 = tCMG
              arg2 = arg2.notify
              arg3 = "~r~You don't have permission to invite players"
              arg2(arg3)
            end
          end
        else
          arg2 = DrawRect
          arg3 = 0.651
          arg4 = 0.622
          arg5 = 0.065
          arg6 = 0.056
          arg7 = 0
          arg8 = 0
          arg9 = 0
          arg10 = 150
          arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        end
      end
      arg2 = pairs
      arg3 = textValue3
      arg4 = workValue3
      arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg3(arg4)
      arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = "Guest"
        arg9 = arg7.permissions
        if arg9 then
          arg9 = tostring
          arg10 = math
          arg10 = arg10.floor
          arg11 = table
          arg11 = arg11.count
          arg122 = arg7.permissions
          -- Beginner: result below is count.
          arg11 = arg11(arg122)
          arg122 = table
          arg122 = arg122.count
          arg13 = cmgCall.permissions
          -- Beginner: result below is count.
          arg122 = arg122(arg13)
          arg11 = arg11 / arg122
          arg11 = arg11 * 100.0
          arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg10(arg11)
          arg9 = arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          arg10 = "%"
          arg9 = arg9 .. arg10
          arg8 = arg9
        end
        arg9 = DrawAdvancedText
        arg10 = 0.449
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg7.name
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = DrawAdvancedText
        arg10 = 0.506
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg7.user_id
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = DrawAdvancedText
        arg10 = 0.555
        arg11 = 0.0287 * arg6
        arg11 = 0.361 + arg11
        arg122 = 0.005
        arg13 = 0.0028
        arg14 = 0.4
        arg15 = arg8
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 6
        numberValue8 = 0
        arg9(arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
        arg9 = arg7.lastLogin
        arg10 = fullPlayerListData
        arg11 = arg7.user_id
        arg10 = arg10[arg11]
        if arg10 then
          arg10 = CMG
          arg10 = arg10.isUserHidden
          arg11 = arg7.user_id
          arg10 = arg10(arg11)
          if not arg10 then
            arg9 = "Online"
          end
        end
        arg10 = DrawAdvancedText
        arg11 = 0.625
        arg122 = 0.0287 * arg6
        arg122 = 0.361 + arg122
        arg13 = 0.005
        arg14 = 0.0028
        arg15 = 0.4
        arg16 = arg9
        arg17 = 255
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 255
        numberValue8 = 6
        numberValue9 = 0
        arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9)
        arg10 = dataTable.pinnedPlayers
        arg11 = arg7.user_id
        arg10 = arg10[arg11]
        if arg10 then
          arg10 = workValue3.isAdvanced
          if arg10 then
            arg10 = "\240\159\147\140"
            if arg10 then
              goto flow_label_6329
            end
          end
        end
        arg10 = "\226\173\149"
        ::flow_label_6329::
        arg11 = DrawAdvancedText
        arg122 = 0.675
        arg13 = 0.0287 * arg6
        arg13 = 0.3665 + arg13
        arg14 = 0.005
        arg15 = 0.0028
        arg16 = 0.2
        arg17 = arg10
        arg18 = 255
        numberValue5 = 255
        numberValue7 = 255
        numberValue8 = 255
        numberValue9 = 6
        numberValue10 = 0
        arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10)
        arg11 = CursorInArea
        arg122 = 0.5755
        arg13 = 0.5955
        arg14 = arg6 - 1
        arg14 = 0.0287 * arg14
        arg14 = 0.3731 + arg14
        arg15 = arg6 - 1
        arg15 = 0.0287 * arg15
        arg15 = 0.4018 + arg15
        arg11 = arg11(arg122, arg13, arg14, arg15)
        if arg11 then
          arg11 = IsControlJustPressed
          arg122 = 1
          arg13 = 329
          arg11 = arg11(arg122, arg13)
          if not arg11 then
            arg11 = IsDisabledControlJustPressed
            arg122 = 1
            arg13 = 329
            arg11 = arg11(arg122, arg13)
            if not arg11 then
              goto flow_label_6402
            end
          end
          arg11 = workValue3.isAdvanced
          if arg11 then
            arg11 = dataTable.pinnedPlayers
            arg122 = arg7.user_id
            arg11 = arg11[arg122]
            if arg11 then
              arg11 = dataTable.pinnedPlayers
              arg122 = arg7.user_id
              arg11[arg122] = nil
            else
              arg11 = dataTable.pinnedPlayers
              arg122 = arg7.user_id
              arg11[arg122] = true
            end
            arg11 = SetResourceKvp
            arg122 = "cmg_gang_pinned"
            arg13 = json
            arg13 = arg13.encode
            arg14 = dataTable.pinnedPlayers
            arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg13(arg14)
            arg11(arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
          else
            arg11 = notify
            arg122 = "~r~You must have the advanced gang license to pin a player."
            -- Beginner: Show a notification to the player.
            arg11(arg122)
          end
        end
        ::flow_label_6402::
      end
      arg2 = workValue
      if arg2 then
        arg2 = workValue3
        if arg2 then
          arg2 = CursorInArea
          arg3 = 0.6182
          arg4 = 0.6822
          arg5 = 0.435
          arg6 = 0.491
          arg2 = arg2(arg3, arg4, arg5, arg6)
          if arg2 then
            arg2 = DrawRect
            arg3 = 0.651
            arg4 = 0.463
            arg5 = 0.065
            arg6 = 0.056
            arg7 = numberValue28
            arg8 = numberValue29
            arg9 = numberValue30
            arg10 = 150
            arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
            arg2 = IsControlJustPressed
            arg3 = 1
            arg4 = 329
            arg2 = arg2(arg3, arg4)
            if not arg2 then
              arg2 = IsDisabledControlJustPressed
              arg3 = 1
              arg4 = 329
              arg2 = arg2(arg3, arg4)
              if not arg2 then
                goto flow_label_6504
              end
            end
            arg2 = PlaySound
            arg3 = -1
            arg4 = "SELECT"
            arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg6 = false
            arg7 = 0
            arg8 = true
            arg2(arg3, arg4, arg5, arg6, arg7, arg8)
            arg2 = flag2
            if arg2 then
              arg2 = notify
              arg3 = "~g~Set main gang as selected"
              -- Beginner: Show a notification to the player.
              arg2(arg3)
              arg2 = false
              flag2 = arg2
            else
              arg2 = notify
              arg3 = "~g~Set guest gang as selected"
              arg2(arg3)
              arg2 = true
              flag2 = arg2
            end
            arg2 = _ENV
            arg3 = "TriggerEvent"
            arg2 = arg2[arg3]
            arg3 = "e713d91b70"
            arg2(arg3)
            arg2 = workValue6
            arg2 = arg2()
            if not arg2 then
              goto flow_label_6504
            end
            arg3 = arg2.isAdvanced
            if not arg3 then
              goto flow_label_6504
            end
            arg3 = dataTable
            arg4 = "blips"
            arg3 = arg3[arg4]
            if not arg3 then
              goto flow_label_6504
            end
            arg3 = workValue6
            arg3 = arg3()
            arg4 = workValue
            if arg3 == arg4 then
              arg3 = "own"
              if arg3 then
                goto flow_label_6489
              end
            end
            arg3 = "guest"
            ::flow_label_6489::
            arg4 = TriggerServerEvent
            arg5 = "f9c26121e2"
            arg6 = arg3
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
            arg4(arg5, arg6)
          else
            arg2 = DrawRect
            arg3 = 0.651
            arg4 = 0.463
            arg5 = 0.065
            arg6 = 0.056
            arg7 = 0
            arg8 = 0
            arg9 = 0
            arg10 = 150
            arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
          end
        end
      end
      ::flow_label_6504::
      arg2 = CursorInArea
      arg3 = 0.6182
      arg4 = 0.6822
      arg5 = 0.51
      arg6 = 0.566
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.538
        arg5 = 0.065
        arg6 = 0.056
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = cmgCall7
          arg3 = "Are you sure?"
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = TriggerServerEvent
            arg3 = "dc72f21cc8"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc72f21cc8".
            arg2(arg3)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.538
        arg5 = 0.065
        arg6 = 0.056
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.3735
      arg4 = 0.4185
      arg5 = 0.6768
      arg6 = 0.7074
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.396
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = numberValue11
          if arg2 <= 1 then
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          else
            arg2 = numberValue11
            arg2 = arg2 - 1
            numberValue11 = arg2
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.396
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.4635
      arg4 = 0.5085
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.486
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = numberValue11
          arg3 = math
          arg3 = arg3.ceil
          arg4 = arg1 / 10.0
          arg3 = arg3(arg4)
          if arg2 >= arg3 then
            arg2 = tCMG
            arg2 = arg2.notify
            arg3 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            arg2(arg3)
          else
            arg2 = numberValue11
            arg2 = arg2 + 1
            numberValue11 = arg2
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.486
        arg4 = 0.693
        arg5 = 0.045
        arg6 = 0.033
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.6583
      arg4 = 0.7056
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = "gang"
          textValue = arg2
        end
      else
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    else
      arg1 = DrawAdvancedText
      arg2 = 0.501
      arg3 = 0.378
      arg4 = 0.105
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "Guest Guide"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.501
      arg3 = 0.416
      arg4 = 0.105
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "A guest is a player who will temporarily have access to a limited area of your gang."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.501
      arg3 = 0.454
      arg4 = 0.105
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "They will be able to pin members, see pings, see blips and name tags."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.501
      arg3 = 0.492
      arg4 = 0.105
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "They will not be able to see or access your funds, logs, settings and security."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.501
      arg3 = 0.53
      arg4 = 0.105
      arg5 = 0.0028
      arg6 = 0.46
      arg7 = "Being a guest of another gang will not remove you from your current gang."
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = workValue
      if arg1 then
        arg1 = DrawAdvancedText
        arg2 = 0.478
        arg3 = 0.642
        arg4 = 0.005
        arg5 = 0.0028
        arg6 = 0.473
        arg7 = "Invite Guest"
        arg8 = 255
        arg9 = 255
        arg10 = 255
        arg11 = 255
        arg122 = 4
        arg13 = 0
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      end
      arg1 = DrawAdvancedText
      arg2 = 0.564
      arg3 = 0.643
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.473
      arg7 = "Accept Invite"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.561
      arg3 = 0.577
      arg4 = 0.065
      arg5 = -0.003
      arg6 = 0
      arg7 = 168
      arg8 = 255
      arg9 = 204
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.654
      arg3 = 0.57
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.364
      arg7 = "Guest Invite list"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = pairs
      arg2 = dataTable3
      arg1, arg2, arg3, arg4 = arg1(arg2)
      for arg5, arg6 in arg1, arg2, arg3, arg4 do
        arg7 = DrawAdvancedText
        arg8 = 0.656
        arg9 = 0.02 * arg5
        arg10 = 0.598
        arg9 = arg10 + arg9
        arg10 = 0.005
        arg11 = 0.0028
        arg122 = 0.234
        arg13 = arg6
        arg14 = 255
        arg15 = 255
        arg16 = 255
        arg17 = 255
        arg18 = 0
        numberValue5 = 0
        arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
        arg7 = CursorInArea
        arg8 = 0.525
        arg9 = 0.59
        arg10 = 0.02 * arg5
        arg11 = 0.58
        arg10 = arg11 + arg10
        arg11 = 0.02 * arg5
        arg122 = 0.596
        arg11 = arg122 + arg11
        arg7 = arg7(arg8, arg9, arg10, arg11)
        if arg7 then
          arg7 = workValue4
          if arg5 ~= arg7 then
            arg7 = DrawRect
            arg8 = 0.56
            arg9 = 0.02 * arg5
            arg9 = 0.59 + arg9
            arg10 = 0.062
            arg11 = 0.019
            arg122 = 0
            arg13 = 168
            arg14 = 255
            arg15 = 150
            arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
            arg7 = IsControlJustPressed
            arg8 = 1
            arg9 = 329
            arg7 = arg7(arg8, arg9)
            if not arg7 then
              arg7 = IsDisabledControlJustPressed
              arg8 = 1
              arg9 = 329
              arg7 = arg7(arg8, arg9)
            end
            if arg7 then
              workValue4 = arg5
            end
        end
        else
          arg7 = workValue4
          if arg5 == arg7 then
            arg7 = DrawRect
            arg8 = 0.56
            arg9 = 0.02 * arg5
            arg9 = 0.59 + arg9
            arg10 = 0.062
            arg11 = 0.019
            arg122 = 0
            arg13 = 168
            arg14 = 255
            arg15 = 150
            arg7(arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15)
          end
        end
      end
      arg1 = workValue
      if arg1 then
        arg1 = CursorInArea
        arg2 = 0.35
        arg3 = 0.415
        arg4 = 0.615
        arg5 = 0.66
        arg1 = arg1(arg2, arg3, arg4, arg5)
        if arg1 then
          arg1 = DrawRect
          arg2 = 0.383
          arg3 = 0.642
          arg4 = 0.066
          arg5 = 0.046
          arg6 = 0
          arg7 = 168
          arg8 = 255
          arg9 = 150
          arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
          arg1 = IsControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
          if not arg1 then
            arg1 = IsDisabledControlJustPressed
            arg2 = 1
            arg3 = 329
            arg1 = arg1(arg2, arg3)
          end
          if arg1 then
            arg1 = PlaySound
            arg2 = -1
            arg3 = "SELECT"
            arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg5 = false
            arg6 = 0
            arg7 = true
            arg1(arg2, arg3, arg4, arg5, arg6, arg7)
            arg1 = CMG
            arg1 = arg1.hasGangPermission
            arg2 = "inviteguest"
            arg1 = arg1(arg2)
            if arg1 then
              arg1 = CMG
              arg1 = arg1.GetRageInputText
              arg2 = "Enter Perm ID to invite:"
              arg1 = arg1(arg2)
              if nil ~= arg1 then
                arg2 = tonumber
                arg3 = arg1
                arg2 = arg2(arg3)
                if arg2 then
                  arg2 = TriggerServerEvent
                  arg3 = "306a9cdbc9"
                  arg4 = tonumber
                  arg5 = arg1
                  arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20 = arg4(arg5)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "306a9cdbc9".
                  arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20)
              end
              else
                arg2 = tCMG
                arg2 = arg2.notify
                arg3 = "Invalid Perm ID entered"
                -- Beginner: Show a notification to the player.
                arg2(arg3)
              end
            else
              arg1 = tCMG
              arg1 = arg1.notify
              arg2 = "~r~You don't have permission to invite players"
              arg1(arg2)
            end
          end
        else
          arg1 = DrawRect
          arg2 = 0.383
          arg3 = 0.642
          arg4 = 0.066
          arg5 = 0.046
          arg6 = 0
          arg7 = 0
          arg8 = 0
          arg9 = 150
          arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        end
      end
      arg1 = CursorInArea
      arg2 = 0.435
      arg3 = 0.51
      arg4 = 0.615
      arg5 = 0.66
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.469
        arg3 = 0.642
        arg4 = 0.066
        arg5 = 0.046
        arg6 = 0
        arg7 = 168
        arg8 = 255
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = workValue4
          if nil ~= arg1 then
            arg2 = workValue4
            arg1 = dataTable3
            arg1 = arg1[arg2]
            workValue4 = arg1
            arg1 = TriggerServerEvent
            arg2 = "6e7e491304"
            arg3 = workValue4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6e7e491304".
            arg1(arg2, arg3)
            arg1 = {}
            dataTable3 = arg1
            arg1 = workValue8
            arg1()
          else
            arg1 = tCMG
            arg1 = arg1.notify
            arg2 = "~r~No guest invite selected"
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.469
        arg3 = 0.642
        arg4 = 0.066
        arg5 = 0.046
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
    end
    arg1 = DrawAdvancedText
    arg2 = 0.775
    arg3 = 0.693
    arg4 = 0.005
    arg5 = 0.0028
    arg6 = 0.4
    arg7 = "Back"
    arg8 = 255
    arg9 = 255
    arg10 = 255
    arg11 = 255
    arg122 = 4
    arg13 = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
    arg1 = CursorInArea
    arg2 = 0.6583
    arg3 = 0.7056
    arg4 = 0.6712
    arg5 = 0.7064
    arg1 = arg1(arg2, arg3, arg4, arg5)
    if arg1 then
      arg1 = DrawRect
      arg2 = 0.681
      arg3 = 0.689
      arg4 = 0.045
      arg5 = 0.036
      arg6 = numberValue28
      arg7 = numberValue29
      arg8 = numberValue30
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = IsControlJustPressed
      arg2 = 1
      arg3 = 329
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
      end
      if arg1 then
        arg1 = PlaySound
        arg2 = -1
        arg3 = "SELECT"
        arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        arg5 = false
        arg6 = 0
        arg7 = true
        arg1(arg2, arg3, arg4, arg5, arg6, arg7)
        arg1 = workValue
        if arg1 then
          arg1 = "gang"
          textValue = arg1
        else
          arg1 = "noGang"
          textValue = arg1
        end
      end
    else
      arg1 = DrawRect
      arg2 = 0.681
      arg3 = 0.689
      arg4 = 0.045
      arg5 = 0.036
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    if "gang" == arg1 then
      arg1 = DisableControlAction
      arg2 = 0
      arg3 = 200
      arg4 = true
      arg1(arg2, arg3, arg4)
      arg1 = CMG
      arg1 = arg1.isNewPlayer
      arg1 = arg1()
      if arg1 then
        arg1 = drawNativeNotification
        arg2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
        -- Beginner: Show a GTA-style notification/help prompt.
        arg1(arg2)
      end
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.532
      arg4 = 0.375
      arg5 = 0.225
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.396
      arg4 = 0.375
      arg5 = 0.046
      arg6 = 19
      arg7 = 86
      arg8 = 223
      arg9 = 255
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.399
      arg4 = 0.005
      arg5 = 0.003
      arg6 = 0.51
      arg7 = "CMG Gangs"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.46
      arg3 = 0.534
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "funds"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.554
      arg3 = 0.534
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "members"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.642
      arg3 = 0.534
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "logs"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.732
      arg3 = 0.534
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "settings"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.46
      arg3 = 0.604
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Turfs"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.554
      arg3 = 0.604
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Security"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.642
      arg3 = 0.604
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Guest"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.732
      arg3 = 0.604
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Radios"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = CursorInArea
      arg2 = 0.3333
      arg3 = 0.3973
      arg4 = 0.4981
      arg5 = 0.5537
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.366
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "funds"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.366
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.4244
      arg3 = 0.4903
      arg4 = 0.4981
      arg5 = 0.5537
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.458
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "members"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.458
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.514
      arg3 = 0.5776
      arg4 = 0.4981
      arg5 = 0.5537
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.546
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "logs"
          textValue = arg1
          arg1 = workValue
          arg2 = "logs"
          arg1[arg2] = nil
          arg1 = workValue
          arg2 = "logCount"
          arg1[arg2] = 0
          arg1 = TriggerServerEvent
          arg2 = "3f8f33322f"
          arg3 = numberValue3
          arg4 = flag
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
          arg1(arg2, arg3, arg4)
        end
      else
        arg1 = DrawRect
        arg2 = 0.546
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.602
      arg3 = 0.6677
      arg4 = 0.4981
      arg5 = 0.5537
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.635
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "settings"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.635
        arg3 = 0.527
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInAreaRect
      arg2 = 0.366
      arg3 = 0.6
      arg4 = 0.065
      arg5 = 0.056
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.366
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "turfs"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.366
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInAreaRect
      arg2 = 0.458
      arg3 = 0.6
      arg4 = 0.065
      arg5 = 0.056
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.458
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = workValue.isAdvanced
          if arg1 then
            arg1 = "security"
            textValue = arg1
          else
            arg1 = notify
            arg2 = "~r~You must have the advanced gang license to access this page."
            -- Beginner: Show a notification to the player.
            arg1(arg2)
          end
        end
      else
        arg1 = DrawRect
        arg2 = 0.458
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.514
      arg3 = 0.5776
      arg4 = 0.5722
      arg5 = 0.6259
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.546
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "guest"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.546
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = CursorInArea
      arg2 = 0.602
      arg3 = 0.6677
      arg4 = 0.5722
      arg5 = 0.6259
      arg1 = arg1(arg2, arg3, arg4, arg5)
      if arg1 then
        arg1 = DrawRect
        arg2 = 0.635
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = numberValue28
        arg7 = numberValue29
        arg8 = numberValue30
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        arg1 = IsControlJustPressed
        arg2 = 1
        arg3 = 329
        arg1 = arg1(arg2, arg3)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
        end
        if arg1 then
          arg1 = PlaySound
          arg2 = -1
          arg3 = "SELECT"
          arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg5 = false
          arg6 = 0
          arg7 = true
          arg1(arg2, arg3, arg4, arg5, arg6, arg7)
          arg1 = "radios"
          textValue = arg1
        end
      else
        arg1 = DrawRect
        arg2 = 0.635
        arg3 = 0.6
        arg4 = 0.065
        arg5 = 0.056
        arg6 = 0
        arg7 = 0
        arg8 = 0
        arg9 = 150
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg1 = workValue
      arg2 = "id"
      arg2 = arg1[arg2]
      arg1 = dataTable5
      arg1 = arg1[arg2]
      if arg1 then
        arg1 = DrawAdvancedText
        arg2 = 0.598
        arg3 = 0.466
        arg4 = 0.005
        arg5 = 0.0028
        arg6 = 0.4
        arg7 = "RP Turfs"
        arg8 = 255
        arg9 = 255
        arg10 = 255
        arg11 = 255
        arg122 = 7
        arg13 = 0
        arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
        arg1 = CursorInAreaRect
        arg2 = 0.502
        arg3 = 0.459
        arg4 = 0.065
        arg5 = 0.056
        arg1 = arg1(arg2, arg3, arg4, arg5)
        if arg1 then
          arg1 = DrawRect
          arg2 = 0.502
          arg3 = 0.459
          arg4 = 0.065
          arg5 = 0.056
          arg6 = numberValue28
          arg7 = numberValue29
          arg8 = numberValue30
          arg9 = 150
          arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
          arg1 = IsControlJustPressed
          arg2 = 1
          arg3 = 329
          arg1 = arg1(arg2, arg3)
          if not arg1 then
            arg1 = IsDisabledControlJustPressed
            arg2 = 1
            arg3 = 329
            arg1 = arg1(arg2, arg3)
          end
          if arg1 then
            arg1 = PlaySound
            arg2 = -1
            arg3 = "SELECT"
            arg4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            arg5 = false
            arg6 = 0
            arg7 = true
            arg1(arg2, arg3, arg4, arg5, arg6, arg7)
            arg1 = "rpturfs"
            textValue = arg1
          end
        else
          arg1 = DrawRect
          arg2 = 0.502
          arg3 = 0.459
          arg4 = 0.065
          arg5 = 0.056
          arg6 = 0
          arg7 = 0
          arg8 = 0
          arg9 = 150
          arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        end
      end
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    arg2 = "radios"
    if arg1 == arg2 then
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.525
      arg4 = 0.421
      arg5 = 0.387
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawRect
      arg2 = 0.501
      arg3 = 0.308
      arg4 = 0.421
      arg5 = 0.047
      arg6 = 18
      arg7 = 82
      arg8 = 228
      arg9 = 248
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.591
      arg3 = 0.312
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.48
      arg7 = "CMG gang - radios"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 7
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawRect
      arg2 = 0.448
      arg3 = 0.52
      arg4 = 0.295
      arg5 = 0.291
      arg6 = 0
      arg7 = 0
      arg8 = 0
      arg9 = 150
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      arg1 = DrawAdvancedText
      arg2 = 0.479
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Channel Name"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.675
      arg3 = 0.359
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Edit"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 6
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.746
      arg3 = 0.455
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = [[
Purchase
Channel]]
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = DrawAdvancedText
      arg2 = 0.775
      arg3 = 0.693
      arg4 = 0.005
      arg5 = 0.0028
      arg6 = 0.4
      arg7 = "Back"
      arg8 = 255
      arg9 = 255
      arg10 = 255
      arg11 = 255
      arg122 = 4
      arg13 = 0
      arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13)
      arg1 = table
      arg2 = "copy"
      arg1 = arg1[arg2]
      arg2 = workValue
      arg3 = "additionalRadios"
      arg2 = arg2[arg3]
      arg1 = arg1(arg2)
      arg2 = workValue.isAdvanced
      if arg2 then
        arg2 = table
        arg3 = "insert"
        arg2 = arg2[arg3]
        arg3 = arg1
        arg4 = 1
        arg5 = {}
        arg6 = "id"
        arg5[arg6] = 0
        arg6 = _ENV
        arg7 = "string"
        arg6 = arg6[arg7]
        arg7 = "format"
        arg6 = arg6[arg7]
        arg7 = "%s (Default)"
        arg8 = workValue.name
        arg6 = arg6(arg7, arg8)
        arg5.name = arg6
        arg2(arg3, arg4, arg5)
      end
      arg2 = pairs
      arg3 = arg1
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, arg7 in arg2, arg3, arg4, arg5 do
        arg8 = DrawAdvancedText
        arg9 = 0.479
        arg10 = 0.0287 * arg6
        arg10 = 0.361 + arg10
        arg11 = 0.005
        arg122 = 0.0028
        arg13 = 0.4
        arg14 = arg7.name
        arg15 = 255
        arg16 = 255
        arg17 = 255
        arg18 = 255
        numberValue5 = 6
        numberValue7 = 0
        arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7)
        arg8 = "id"
        arg8 = arg7[arg8]
        if 0 ~= arg8 then
          arg8 = DrawAdvancedText
          arg9 = 0.675
          arg10 = 0.0287 * arg6
          arg10 = 0.3665 + arg10
          arg11 = 0.005
          arg122 = 0.0028
          arg13 = 0.2
          arg14 = "\226\156\143\239\184\143"
          arg15 = 255
          arg16 = 255
          arg17 = 255
          arg18 = 255
          numberValue5 = 6
          numberValue7 = 0
          arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7)
        end
        arg8 = CursorInArea
        arg9 = 0.3005
        arg10 = 0.5955
        arg11 = arg6 - 1
        arg11 = 0.0287 * arg11
        arg11 = 0.3731 + arg11
        arg122 = arg6 - 1
        arg122 = 0.0287 * arg122
        arg122 = 0.4018 + arg122
        arg8 = arg8(arg9, arg10, arg11, arg122)
        if arg8 then
          arg8 = workValue19
          arg9 = "id"
          arg9 = arg7[arg9]
          if arg8 ~= arg9 then
            arg8 = DrawRect
            arg9 = 0.448
            arg10 = arg6 - 1
            arg10 = 0.0287 * arg10
            arg10 = 0.388 + arg10
            arg11 = 0.295
            arg122 = 0.027
            arg13 = numberValue28
            arg14 = numberValue29
            arg15 = numberValue30
            arg16 = 150
            arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16)
            arg8 = IsControlJustPressed
            arg9 = 1
            arg10 = 329
            arg8 = arg8(arg9, arg10)
            if not arg8 then
              arg8 = IsDisabledControlJustPressed
              arg9 = 1
              arg10 = 329
              arg8 = arg8(arg9, arg10)
            end
            if arg8 then
              arg8 = PlaySound
              arg9 = -1
              arg10 = "SELECT"
              arg11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              arg122 = false
              arg13 = 0
              arg14 = true
              arg8(arg9, arg10, arg11, arg122, arg13, arg14)
              arg8 = "id"
              arg8 = arg7[arg8]
              workValue19 = arg8
            end
        end
        else
          arg8 = workValue19
          arg9 = "id"
          arg9 = arg7[arg9]
          if arg8 == arg9 then
            arg8 = DrawRect
            arg9 = 0.448
            arg10 = arg6 - 1
            arg10 = 0.0287 * arg10
            arg10 = 0.388 + arg10
            arg11 = 0.295
            arg122 = 0.027
            arg13 = numberValue28
            arg14 = numberValue29
            arg15 = numberValue30
            arg16 = 150
            arg8(arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16)
          end
        end
        arg8 = CursorInArea
        arg9 = 0.5755
        arg10 = 0.5955
        arg11 = arg6 - 1
        arg11 = 0.0287 * arg11
        arg11 = 0.3731 + arg11
        arg122 = arg6 - 1
        arg122 = 0.0287 * arg122
        arg122 = 0.4018 + arg122
        arg8 = arg8(arg9, arg10, arg11, arg122)
        if arg8 then
          arg8 = IsControlJustPressed
          arg9 = 1
          arg10 = 329
          arg8 = arg8(arg9, arg10)
          if not arg8 then
            arg8 = IsDisabledControlJustPressed
            arg9 = 1
            arg10 = 329
            arg8 = arg8(arg9, arg10)
            if not arg8 then
              goto flow_label_8156
            end
          end
          arg8 = PlaySound
          arg9 = -1
          arg10 = "SELECT"
          arg11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg122 = false
          arg13 = 0
          arg14 = true
          arg8(arg9, arg10, arg11, arg122, arg13, arg14)
          arg8 = CMG
          arg8 = arg8.GetRageInputText
          arg9 = "Channel Name"
          arg10 = arg7.name
          arg8 = arg8(arg9, arg10)
          if arg8 then
            arg9 = TriggerServerEvent
            arg10 = "8a2894785e"
            arg11 = "id"
            arg11 = arg7[arg11]
            arg122 = arg8
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a2894785e".
            arg9(arg10, arg11, arg122)
          else
            arg9 = notify
            arg10 = "~r~Cancelled changing channel name."
            -- Beginner: Show a notification to the player.
            arg9(arg10)
          end
        end
        ::flow_label_8156::
      end
      arg2 = CursorInAreaRect
      arg3 = 0.651
      arg4 = 0.463
      arg5 = 0.065
      arg6 = 0.086
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.463
        arg5 = 0.065
        arg6 = 0.086
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = CMG
          arg2 = arg2.GetRageInputText
          arg3 = "Purchase for \194\1635,000,000?"
          arg4 = "Yes/No"
          arg2 = arg2(arg3, arg4)
          if arg2 then
            arg3 = _ENV
            arg4 = "string"
            arg3 = arg3[arg4]
            arg4 = "lower"
            arg3 = arg3[arg4]
            arg4 = arg2
            arg3 = arg3(arg4)
            arg4 = "yes"
            if arg3 == arg4 then
              arg3 = TriggerServerEvent
              arg4 = "5b98fcee62"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b98fcee62".
              arg3(arg4)
          end
          else
            arg3 = notify
            arg4 = "~r~Cancelled purchase of new channel."
            -- Beginner: Show a notification to the player.
            arg3(arg4)
          end
        end
      else
        arg2 = DrawRect
        arg3 = 0.651
        arg4 = 0.463
        arg5 = 0.065
        arg6 = 0.086
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
      arg2 = CursorInArea
      arg3 = 0.6583
      arg4 = 0.7056
      arg5 = 0.6712
      arg6 = 0.7064
      arg2 = arg2(arg3, arg4, arg5, arg6)
      if arg2 then
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = numberValue28
        arg8 = numberValue29
        arg9 = numberValue30
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        arg2 = IsControlJustPressed
        arg3 = 1
        arg4 = 329
        arg2 = arg2(arg3, arg4)
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 1
          arg4 = 329
          arg2 = arg2(arg3, arg4)
        end
        if arg2 then
          arg2 = PlaySound
          arg3 = -1
          arg4 = "SELECT"
          arg5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          arg6 = false
          arg7 = 0
          arg8 = true
          arg2(arg3, arg4, arg5, arg6, arg7, arg8)
          arg2 = "gang"
          textValue = arg2
        end
      else
        arg2 = DrawRect
        arg3 = 0.681
        arg4 = 0.689
        arg5 = 0.045
        arg6 = 0.036
        arg7 = 0
        arg8 = 0
        arg9 = 0
        arg10 = 150
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
      end
    end
  end
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.createThreadOnTick
workValue15 = workValue14
eventRegistration = "Gang UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall8(workValue15, eventRegistration)
cmgCall8 = 0

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangUseNui
  if arg1 then
    return
  end
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 166
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsDisabledControlJustPressed
    arg2 = 0
    arg3 = 166
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = IsDisabledControlJustReleased
      arg2 = 0
      arg3 = 200
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        goto flow_label_99
      end
      arg1 = textValue
      if "noGang" ~= arg1 then
        arg1 = textValue
        if "gang" ~= arg1 then
          goto flow_label_99
        end
      end
    end
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = cmgCall8
  arg1 = arg1 - arg2
  if arg1 < 100 then
    return
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  cmgCall8 = arg1
  arg1 = workValue
  if not arg1 then
    arg1 = textValue
    if "noGang" == arg1 then
      arg1 = nil
      textValue = arg1
      arg1 = CMG
      arg1 = arg1.setCursor
      arg2 = 0
      arg1(arg2)
      arg1 = CMG
      arg1 = arg1.setInGUI
      arg2 = false
      arg1(arg2)
      arg1 = nil
      workValue12 = arg1
    else
      arg1 = "noGang"
      textValue = arg1
      arg1 = CMG
      arg1 = arg1.setCursor
      arg2 = 1
      arg1(arg2)
      arg1 = CMG
      arg1 = arg1.setInGUI
      arg2 = true
      arg1(arg2)
    end
  end
  arg1 = workValue
  if arg1 then
    arg1 = textValue
    if "gang" == arg1 then
      arg1 = nil
      textValue = arg1
      arg1 = CMG
      arg1 = arg1.setCursor
      arg2 = 0
      arg1(arg2)
      arg1 = CMG
      arg1 = arg1.setInGUI
      arg2 = false
      arg1(arg2)
      arg1 = nil
      workValue16 = arg1
    else
      arg1 = "gang"
      textValue = arg1
      arg1 = CMG
      arg1 = arg1.setCursor
      arg2 = 1
      arg1(arg2)
      arg1 = CMG
      arg1 = arg1.setInGUI
      arg2 = true
      arg1(arg2)
    end
  end
  ::flow_label_99::
end
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg1 = json
  arg1 = arg1.decode
  arg2 = GetResourceKvpString
  arg3 = "cmg_gang_pinned"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = "{}"
  end
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = {}
  end
  arg2 = {}
  arg3 = GetResourceKvpString
  arg4 = "cmg_gang_blips"
  arg3 = arg3(arg4)
  arg3 = "true" == arg3
  arg2.blips = arg3
  arg3 = GetResourceKvpString
  arg4 = "cmg_gang_pings"
  arg3 = arg3(arg4)
  arg3 = "true" == arg3
  arg2.pings = arg3
  arg3 = GetResourceKvpString
  arg4 = "cmg_gang_names"
  arg3 = arg3(arg4)
  arg3 = "true" == arg3
  arg2.names = arg3
  arg3 = {}
  arg2.pinnedPlayers = arg3
  dataTable = arg2
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6 in arg2, arg3, arg4, arg5 do
    arg7 = dataTable.pinnedPlayers
    arg8 = tonumber
    arg9 = arg6
    arg8 = arg8(arg9)
    arg7[arg8] = true
  end
  arg2 = CMG
  arg3 = dataTable.pinnedPlayers
  arg2.gangPinnedPlayers = arg3
  arg2 = CMG
  arg3 = dataTable
  arg2.gangClientSettings = arg3
  arg2 = CMG
  arg2 = arg2.createThreadOnTick
  arg3 = workValue15
  arg4 = "Gang Key Controls"
  -- Beginner: Run a helper every game frame while this script is active.
  arg2(arg3, arg4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue4)
eventRegistration = RegisterNetEvent
textValue4 = "f9904fb04b"
-- Beginner: this function handles network event "f9904fb04b".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18) ===
function textValue5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18)
  local numberValue5, numberValue7, numberValue8
  numberValue5 = {}
  numberValue5.id = arg10
  numberValue5.name = arg1
  numberValue5.displayMoney = arg2
  numberValue5.members = arg3
  numberValue5.guests = arg4
  numberValue5.isAdvanced = arg5
  numberValue5.maxWithdraw = arg6
  numberValue5.limitWithdrawDeposit = arg7
  numberValue5.requireWithdrawReason = arg8
  numberValue7 = {}
  numberValue5.pings = numberValue7
  numberValue5.additionalRadios = arg9
  numberValue7 = arg11 or numberValue7
  if not arg11 then
    numberValue7 = 0
  end
  numberValue5.gangPublicSkillPoints = numberValue7
  numberValue7 = arg18 or numberValue7
  if not arg18 then
    numberValue7 = 0
  end
  numberValue5.gangRpSkillPoints = numberValue7
  numberValue7 = arg122 or numberValue7
  if not arg122 then
    numberValue7 = {}
  end
  numberValue5.gangPerksUnlocked = numberValue7
  numberValue7 = arg13 or numberValue7
  if not arg13 then
    numberValue7 = {}
  end
  numberValue5.announcements = numberValue7
  numberValue7 = arg14 or numberValue7
  if not arg14 then
    numberValue7 = 1
  end
  numberValue5.gangPublicLevel = numberValue7
  numberValue7 = arg15 or numberValue7
  if not arg15 then
    numberValue7 = 0
  end
  numberValue5.gangPublicXp = numberValue7
  numberValue7 = arg16 or numberValue7
  if not arg16 then
    numberValue7 = 1
  end
  numberValue5.gangRpLevel = numberValue7
  numberValue7 = arg17 or numberValue7
  if not arg17 then
    numberValue7 = 0
  end
  numberValue5.gangRpXp = numberValue7
  workValue = numberValue5
  numberValue5 = CMG
  numberValue7 = workValue
  numberValue5.gangCachedData = numberValue7
  numberValue5 = workValue.isAdvanced
  if numberValue5 then
    numberValue5 = RequestStreamedTextureDict
    numberValue7 = "cmg_gang"
    numberValue8 = false
    numberValue5(numberValue7, numberValue8)
    numberValue5 = dataTable.blips
    if numberValue5 then
      numberValue5 = TriggerEvent
      numberValue7 = "e713d91b70"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
      numberValue5(numberValue7)
      numberValue5 = TriggerServerEvent
      numberValue7 = "f9c26121e2"
      numberValue8 = "own"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
      numberValue5(numberValue7, numberValue8)
    end
    numberValue5 = TriggerServerEvent
    numberValue7 = "a74c553948"
    numberValue8 = textValue2
    numberValue5(numberValue7, numberValue8)
  end
  numberValue5 = textValue
  if numberValue5 then
    numberValue5 = "gang"
    textValue = numberValue5
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9904fb04b".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "4a773cc562"
-- Beginner: this function handles network event "4a773cc562".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3, arg4, arg5) ===
function textValue5(arg1, arg2, arg3, arg4, arg5)
  local arg6
  arg6 = nil
  workValue3 = arg6
  arg6 = CMG
  arg6.gangCachedGuestData = nil
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "d59e8e8fd8"
-- Beginner: this function handles network event "d59e8e8fd8".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.name = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d59e8e8fd8".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "38c659d0a7"
-- Beginner: this function handles network event "38c659d0a7".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.displayMoney = arg1
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "cbebb2bd7a"
-- Beginner: this function handles network event "cbebb2bd7a".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3
  arg1 = workValue
  if arg1 then
    arg1 = RequestStreamedTextureDict
    arg2 = "cmg_gang"
    arg3 = false
    arg1(arg2, arg3)
    workValue.isAdvanced = true
  end
  arg1 = TriggerEvent
  arg2 = "238e25c639"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbebb2bd7a".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "a7a59eed45"
-- Beginner: this function handles network event "a7a59eed45".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3
  arg1 = workValue3
  if arg1 then
    arg1 = RequestStreamedTextureDict
    arg2 = "cmg_gang"
    arg3 = false
    arg1(arg2, arg3)
    workValue3.isAdvanced = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a7a59eed45".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "6e6d067235"
-- Beginner: this function handles network event "6e6d067235".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.members
    arg3[arg1] = arg2
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "f5b2ceb8df"
-- Beginner: this function handles network event "f5b2ceb8df".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.members
    arg3[arg1] = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f5b2ceb8df".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "363c115205"
-- Beginner: this function handles network event "363c115205".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.guests
    arg3[arg1] = arg2
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "36135ce16e"
-- Beginner: this function handles network event "36135ce16e".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.guests
    arg3[arg1] = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36135ce16e".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "6998c9a240"
-- Beginner: this function handles network event "6998c9a240".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.members
      arg3 = arg3[arg1]
      arg3.permissions = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "f71d7949c0"
-- Beginner: this function handles network event "f71d7949c0".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.members
      arg3 = arg3[arg1]
      arg3.permissions = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f71d7949c0".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "854c66098d"
-- Beginner: this function handles network event "854c66098d".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.members
      arg3 = arg3[arg1]
      arg3.lastLogin = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "982c46dbf0"
-- Beginner: this function handles network event "982c46dbf0".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.members
      arg3 = arg3[arg1]
      arg3.lastLogin = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "982c46dbf0".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "6049cc2bb1"
-- Beginner: this function handles network event "6049cc2bb1".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.members
      arg3 = arg3[arg1]
      arg3.name = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "f9fdd3de9c"
-- Beginner: this function handles network event "f9fdd3de9c".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.members
      arg3 = arg3[arg1]
      arg3.name = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9fdd3de9c".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "078a4215cf"
-- Beginner: this function handles network event "078a4215cf".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.guests
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.guests
      arg3 = arg3[arg1]
      arg3.name = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "24c8e98259"
-- Beginner: this function handles network event "24c8e98259".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.guests
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.guests
      arg3 = arg3[arg1]
      arg3.name = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24c8e98259".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "c4fb7a7250"
-- Beginner: this function handles network event "c4fb7a7250".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    arg2 = workValue.members
    arg2[arg1] = nil
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "4d2c3b82a7"
-- Beginner: this function handles network event "4d2c3b82a7".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue3
  if arg2 then
    arg2 = workValue3.members
    arg2[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d2c3b82a7".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "3a92ce94a9"
-- Beginner: this function handles network event "3a92ce94a9".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    arg2 = workValue.guests
    arg2[arg1] = nil
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "2b3786c5c2"
-- Beginner: this function handles network event "2b3786c5c2".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue3
  if arg2 then
    arg2 = workValue3.guests
    arg2[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2b3786c5c2".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "b6d14a58c2"
-- Beginner: this function handles network event "b6d14a58c2".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3) ===
function textValue5(arg1, arg2, arg3)
  local arg4
  arg4 = workValue
  if arg4 then
    arg4 = numberValue3
    if arg4 == arg1 then
      workValue.logs = arg2
      workValue.logCount = arg3
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "df6b023891"
-- Beginner: this function handles network event "df6b023891".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = dataTable.blips
  if arg1 then
    arg1 = TriggerEvent
    arg2 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    arg1(arg2)
  end
  arg1 = textValue
  if arg1 then
    arg1 = "noGang"
    textValue = arg1
  end
  arg1 = nil
  workValue = arg1
  arg1 = CMG
  arg1.gangCachedData = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "df6b023891".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "ac7da32975"
-- Beginner: this function handles network event "ac7da32975".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = dataTable.blips
  if arg1 then
    arg1 = TriggerEvent
    arg2 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    arg1(arg2)
  end
  arg1 = nil
  workValue3 = arg1
  arg1 = CMG
  arg1.gangCachedGuestData = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ac7da32975".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "0d45fc5353"
-- Beginner: this function handles network event "0d45fc5353".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  dataTable2 = arg1
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "b674c758b8"
-- Beginner: this function handles network event "b674c758b8".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.maxWithdraw = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b674c758b8".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "58d834d15a"
-- Beginner: this function handles network event "58d834d15a".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.limitWithdrawDeposit = arg1
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "5d7f40bb9d"
-- Beginner: this function handles network event "5d7f40bb9d".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.requireWithdrawReason = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5d7f40bb9d".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "aa406726e4"
-- Beginner: this function handles network event "aa406726e4".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.members
      arg3 = arg3[arg1]
      arg3.colour = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "f4a19c737d"
-- Beginner: this function handles network event "f4a19c737d".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.members
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.members
      arg3 = arg3[arg1]
      arg3.colour = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4a19c737d".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "6d46904865"
-- Beginner: this function handles network event "6d46904865".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue
  if arg3 then
    arg3 = workValue.guests
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue.guests
      arg3 = arg3[arg1]
      arg3.colour = arg2
    end
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "71c5863a91"
-- Beginner: this function handles network event "71c5863a91".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3
  arg3 = workValue3
  if arg3 then
    arg3 = workValue3.guests
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = workValue3.guests
      arg3 = arg3[arg1]
      arg3.colour = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "71c5863a91".
eventRegistration(textValue4, textValue5)
eventRegistration = RegisterNetEvent
textValue4 = "bb3efd07e8"
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.contributions = arg1
  end
end
eventRegistration(textValue4, textValue5)
eventRegistration = CMG
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = workValue
  arg1 = nil ~= arg1
  return arg1
end
eventRegistration.isInGang = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = false
  return arg1
end
eventRegistration.isGuestGangSelected = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2
end
eventRegistration.setGuestGangSelected = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = workValue
  if arg1 then
    arg1 = workValue.isAdvanced
    if arg1 then
      arg1 = true
      return arg1
    end
  end
  arg1 = false
  return arg1
end
eventRegistration.isMainGangAdvanced = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3
  arg2 = workValue
  if arg2 then
    arg2 = workValue.members
    arg3 = CMG
    arg3 = arg3.getClientUserId
    -- Beginner: result below is userId.
    arg3 = arg3()
    arg2 = arg2[arg3]
    if arg2 then
      arg3 = arg2.permissions
      if arg3 then
        arg3 = arg2.permissions
        arg3 = arg3[arg1]
        if not arg3 then
          arg3 = arg2.permissions
          arg3 = arg3.leader
          if not arg3 then
            goto flow_label_24
          end
        end
        arg3 = true
        return arg3
      end
    end
  end
  ::flow_label_24::
  arg2 = false
  return arg2
end
eventRegistration.hasGangPermission = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = workValue6
  arg1 = arg1()
  if arg1 then
    arg2 = arg1.isAdvanced
    if arg2 then
      arg2 = true
      return arg2
    end
  end
  arg2 = false
  return arg2
end
eventRegistration.isSelectedGangAdvanced = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2, arg3
  arg1 = workValue6
  arg1 = arg1()
  if arg1 then
    arg2 = arg1.isAdvanced
    if arg2 then
      arg2 = dataTable.blips
      if arg2 then
        arg2 = CMG
        arg2 = arg2.inEvent
        arg2 = arg2()
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.hasRadioItem
          arg2 = arg2()
          if arg2 then
            arg2 = CMG
            arg2 = arg2.gangOrgClientState
            if arg2 then
              arg3 = arg2.hasOrgPack
              if true == arg3 then
                arg3 = CMG
                arg3 = arg3.isClientClockedOnOrganisation
                arg3 = arg3()
                if not arg3 then
                  arg3 = false
                  return arg3
                end
              end
            end
            arg3 = true
            return arg3
          end
        end
      end
    end
  end
  arg2 = false
  return arg2
end
eventRegistration.hasGangBlipsEnabled = textValue4
eventRegistration = AddEventHandler
textValue4 = "e892eba4b7"
-- Beginner: this function runs when client event "e892eba4b7" fires.

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3
  arg1 = TriggerEvent
  arg2 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "f9c26121e2"
  arg3 = nil
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
  arg1(arg2, arg3)
end
-- Beginner: Register a client-side event handler. Event/command: "e892eba4b7".
eventRegistration(textValue4, textValue5)
eventRegistration = AddEventHandler
textValue4 = "f7b3a54a8f"
-- Beginner: this function runs when client event "f7b3a54a8f" fires.

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.hasGangBlipsEnabled
  arg1 = arg1()
  if arg1 then
    arg1 = workValue6
    arg1 = arg1()
    arg2 = workValue
    if arg1 == arg2 then
      arg1 = "own"
      if arg1 then
        goto flow_label_15
      end
    end
    arg1 = "guest"
    ::flow_label_15::
    arg2 = TriggerServerEvent
    arg3 = "f9c26121e2"
    arg4 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "f7b3a54a8f".
eventRegistration(textValue4, textValue5)
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = workValue6
  arg1 = arg1()
  if arg1 then
    arg2 = arg1.isAdvanced
    if arg2 then
      arg2 = dataTable.names
      if arg2 then
        arg2 = CMG
        arg2 = arg2.inEvent
        arg2 = arg2()
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.hasRadioItem
          arg2 = arg2()
          if arg2 then
            arg2 = true
            return arg2
          end
        end
      end
    end
  end
  arg2 = false
  return arg2
end
eventRegistration.hasGangNamesEnabled = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = workValue6
  arg2 = arg2()
  if arg2 then
    arg3 = CMG
    arg3 = arg3.inEvent
    arg3 = arg3()
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.clientGetUserIdFromSource
      arg4 = arg1
      -- Beginner: result below is userId.
      arg3 = arg3(arg4)
      if arg3 then
        arg4 = arg2.members
        arg4 = arg4[arg3]
        if arg4 then
          arg5 = true
          arg6 = cmgCall.colourLookup
          arg7 = arg4.colour
          arg6 = arg6[arg7]
          if not arg6 then
            arg6 = workValue5
          end
          return arg5, arg6
        end
        arg5 = arg2.guests
        arg5 = arg5[arg3]
        if arg5 then
          arg6 = true
          arg7 = cmgCall.colourLookup
          arg8 = arg5.colour
          arg7 = arg7[arg8]
          if not arg7 then
            arg7 = workValue5
          end
          return arg6, arg7
        end
      end
    end
  end
  arg3 = false
  arg4 = workValue5
  return arg3, arg4
end
eventRegistration.isPlayerInSelectedGang = textValue4
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2
  arg2 = dataTable
  if arg2 then
    arg2 = dataTable.pinnedPlayers
    if arg2 then
      arg2 = dataTable.pinnedPlayers
      arg2 = arg2[arg1]
      if arg2 then
        goto flow_label_12
      end
    end
  end
  arg2 = false
  ::flow_label_12::
  return arg2
end
eventRegistration.isPlayerPinnedInGang = textValue4

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = GetControlInstructionalButton
  arg2 = 2
  arg3 = -175937621
  arg4 = true
  arg1 = arg1(arg2, arg3, arg4)
  arg2 = GetControlInstructionalButton
  arg3 = 2
  arg4 = -1943871200
  arg5 = true
  arg2 = arg2(arg3, arg4, arg5)
  arg1 = arg1 == arg2
  return arg1
end
textValue4 = RegisterCommand
textValue5 = "pinglocation"
-- Beginner: this function is the command handler for "pinglocation".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8
  arg1 = workValue6
  arg1 = arg1()
  if arg1 then
    arg2 = arg1.isAdvanced
    if arg2 then
      arg2 = dataTable.pings
      if arg2 then
        arg2 = CMG
        arg2 = arg2.isEmergencyService
        arg2 = arg2()
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.inEvent
          arg2 = arg2()
          if not arg2 then
            arg2 = CMG
            arg2 = arg2.hasRadioItem
            arg2 = arg2()
            if arg2 then
              arg2 = eventRegistration
              arg2 = arg2()
              if arg2 then
                arg2 = arg1.pings
                arg3 = CMG
                arg3 = arg3.getClientUserId
                -- Beginner: result below is userId.
                arg3 = arg3()
                arg2 = arg2[arg3]
                if arg2 then
                  return
                end
              end
              arg2 = GetGameplayCamCoord
              arg2 = arg2()
              arg3 = CMG
              arg3 = arg3.rotationToDirection
              arg4 = GetGameplayCamRot
              arg5 = 2
              arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8 = arg4(arg5)
              arg3 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8)
              arg4 = arg3 * 500.0
              arg4 = arg2 + arg4
              arg5 = _ENV
              arg6 = "StartExpensiveSynchronousShapeTestLosProbe"
              arg5 = arg5[arg6]
              arg6 = arg2.x
              arg7 = arg2.y
              arg8 = arg2.z
              arg9 = arg4.x
              arg10 = arg4.y
              arg11 = arg4.z
              arg122 = -1
              arg13 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              arg13 = arg13()
              arg14 = 8
              arg5 = arg5(arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14)
              arg6 = GetShapeTestResult
              arg7 = arg5
              arg6, arg7, arg8 = arg6(arg7)
              if not arg7 or 0 == arg7 then
                arg9 = nil
                arg10 = 2.0
                arg11 = 20
                arg122 = 500
                arg13 = 1
                for arg14 = arg11, arg122, arg13 do
                  if arg14 > 50 and not arg9 then
                    arg10 = 10.0
                  end
                  arg15 = arg3 * arg14
                  arg15 = arg2 + arg15
                  arg16 = GetGroundZFor_3dCoord
                  arg17 = arg15.x
                  arg18 = arg15.y
                  numberValue5 = arg15.z
                  numberValue7 = 0.0
                  numberValue8 = false
                  arg16, arg17 = arg16(arg17, arg18, numberValue5, numberValue7, numberValue8)
                  if arg16 then
                    arg18 = vector3
                    numberValue5 = arg15.x
                    numberValue7 = arg15.y
                    numberValue8 = arg17
                    arg18 = arg18(numberValue5, numberValue7, numberValue8)
                    numberValue5 = arg15 - arg18
                    numberValue5 = #numberValue5
                    if arg10 > numberValue5 then
                      arg9 = arg18
                      arg10 = numberValue5
                    end
                  end
                end
                if arg9 then
                  arg7 = true
                  arg8 = arg9
                end
              end
              if arg7 and 0 ~= arg7 then
                arg9 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                arg9 = arg9()
                numberValue14 = arg9
                arg9 = TriggerServerEvent
                arg10 = "f1d8cdbd8e"
                arg11 = arg8
                arg122 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
                arg9(arg10, arg11, arg122)
              end
            end
          end
        end
      end
    end
  end
end
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "pinglocation".
textValue4(textValue5, eventRegistration2, flag4)
textValue4 = RegisterKeyMapping
textValue5 = "pinglocation"
eventRegistration2 = "Create Gang Ping"
flag4 = "MOUSE_BUTTON"
dataTable6 = "MOUSE_MIDDLE"
-- Beginner: Bind a command to a keyboard/controller key.
textValue4(textValue5, eventRegistration2, flag4, dataTable6)
textValue4 = RegisterCommand
textValue5 = "deletepinglocation"
-- Beginner: this function is the command handler for "deletepinglocation".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = workValue6
  arg1 = arg1()
  if arg1 then
    arg2 = arg1.pings
    arg3 = CMG
    arg3 = arg3.getClientUserId
    -- Beginner: result below is userId.
    arg3 = arg3()
    arg2 = arg2[arg3]
    if arg2 then
      arg2 = eventRegistration
      arg2 = arg2()
      if arg2 then
        arg2 = arg1.pings
        arg3 = CMG
        arg3 = arg3.getClientUserId
        -- Beginner: result below is userId.
        arg3 = arg3()
        arg2 = arg2[arg3]
        if not arg2 then
          return
        end
      end
      arg2 = TriggerServerEvent
      arg3 = "f1d8cdbd8e"
      arg4 = nil
      arg5 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
      arg2(arg3, arg4, arg5)
    end
  end
end
flag4 = false
-- Beginner: Register a chat/console command. Event/command: "deletepinglocation".
textValue4(textValue5, eventRegistration2, flag4)
textValue4 = RegisterKeyMapping
textValue5 = "deletepinglocation"
eventRegistration2 = "Delete Gang Ping"
flag4 = "MOUSE_BUTTON"
dataTable6 = "MOUSE_MIDDLE"
-- Beginner: Bind a command to a keyboard/controller key.
textValue4(textValue5, eventRegistration2, flag4, dataTable6)

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5
  arg2 = CMG
  arg2 = arg2.getGangPingMarkerIndex
  arg2 = arg2()
  if 2 == arg2 then
    arg2 = CMG
    arg2 = arg2.isEmergencyService
    arg2 = arg2()
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.inEvent
      arg2 = arg2()
      if not arg2 then
        arg2 = GetGroundZFor_3dCoord
        arg3 = arg1.x
        arg4 = arg1.y
        arg5 = arg1.z
        arg6 = arg1.z
        arg7 = false
        arg2, arg3 = arg2(arg3, arg4, arg5, arg6, arg7)
        arg4 = math
        arg4 = arg4.abs
        arg5 = arg1.z
        arg5 = arg3 - arg5
        arg4 = arg4(arg5)
        if arg4 > 10.0 then
          arg5 = arg1.z
          if arg5 then
            goto flow_label_35
          end
        end
        arg5 = arg3
        ::flow_label_35::
        arg5 = arg5 - 1.0
        arg6 = CreateCheckpoint
        arg7 = 47
        arg8 = arg1.x
        arg9 = arg1.y
        arg10 = arg5
        arg11 = arg1.x
        arg122 = arg1.y
        arg13 = arg1.z
        arg13 = arg13 + 200.0
        arg14 = 1.0
        arg15 = 255
        arg16 = 50
        arg17 = 50
        arg18 = 125
        numberValue5 = 0
        return arg6(arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5)
    end
  end
  else
    arg2 = nil
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.getGangAdditionalPingMarkerIndex
  arg2 = arg2()
  if 2 ~= arg2 then
    arg2 = CMG
    arg2 = arg2.getGangAdditionalPingMarkerIndex
    arg2 = arg2()
    if 4 ~= arg2 then
      goto flow_label_25
    end
  end
  arg2 = AddBlipForCoord
  arg3 = arg1.x
  arg4 = arg1.y
  arg5 = arg1.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = SetBlipSprite
  arg4 = arg2
  arg5 = 162
  arg3(arg4, arg5)
  arg3 = SetBlipDisplay
  arg4 = arg2
  arg5 = 9
  arg3(arg4, arg5)
  return arg2
  ::flow_label_25::
  arg2 = nil
  return arg2
end
eventRegistration2 = RegisterNetEvent
flag4 = "f1d8cdbd8e"
-- Beginner: this function handles network event "f1d8cdbd8e".

-- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg1, arg2) ===
function dataTable6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  arg3 = workValue
  if arg3 then
    arg3 = CMG
    arg3 = arg3.hasRadioItem
    arg3 = arg3()
    if arg3 then
      arg3 = workValue.pings
      arg3 = arg3[arg1]
      if arg3 then
        arg4 = arg3.checkpoint
        if arg4 then
          arg4 = DeleteCheckpoint
          arg5 = arg3.checkpoint
          arg4(arg5)
          arg3.checkpoint = nil
        end
      end
      if arg3 then
        arg4 = arg3.blip
        if arg4 then
          arg4 = RemoveBlip
          arg5 = arg3.blip
          arg4(arg5)
          arg3.blip = nil
        end
      end
      if arg2 then
        arg4 = workValue.pings
        arg5 = {}
        arg5.position = arg2
        arg6 = textValue4
        arg7 = arg2
        arg6 = arg6(arg7)
        arg5.checkpoint = arg6
        arg6 = textValue5
        arg7 = arg2
        arg6 = arg6(arg7)
        arg5.blip = arg6
        arg4[arg1] = arg5
        arg4 = numberValue16
        if arg4 > 0 then
          arg4 = CMG
          arg4 = arg4.getClientUserId
          -- Beginner: result below is userId.
          arg4 = arg4()
          if arg1 ~= arg4 then
            arg4 = SendNUIMessage
            arg5 = {}
            arg6 = "gangping"
            arg7 = tostring
            arg8 = numberValue16
            arg7 = arg7(arg8)
            arg6 = arg6 .. arg7
            arg5.transactionType = arg6
            arg6 = numberValue18
            arg5.volumeOverride = arg6
            -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
            arg4(arg5)
          end
        end
      else
        arg4 = workValue.pings
        arg4[arg1] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1d8cdbd8e".
eventRegistration2(flag4, dataTable6)
eventRegistration2 = RegisterNetEvent
flag4 = "eef17f8aa1"
-- Beginner: this function handles network event "eef17f8aa1".

-- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg1, arg2) ===
function dataTable6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = workValue3
  if arg3 then
    arg3 = CMG
    arg3 = arg3.hasRadioItem
    arg3 = arg3()
    if arg3 then
      arg3 = workValue3.pings
      arg3 = arg3[arg1]
      if arg3 then
        arg4 = arg3.checkpoint
        if arg4 then
          arg4 = DeleteCheckpoint
          arg5 = arg3.checkpoint
          arg4(arg5)
          arg3.checkpoint = nil
        end
      end
      if arg3 then
        arg4 = arg3.blip
        if arg4 then
          arg4 = RemoveBlip
          arg5 = arg3.blip
          arg4(arg5)
          arg3.blip = nil
        end
      end
      if arg2 then
        arg4 = workValue3.pings
        arg5 = {}
        arg5.position = arg2
        arg6 = textValue4
        arg7 = arg2
        arg6 = arg6(arg7)
        arg5.checkpoint = arg6
        arg6 = textValue5
        arg7 = arg2
        arg6 = arg6(arg7)
        arg5.blip = arg6
        arg4[arg1] = arg5
      else
        arg4 = workValue3.pings
        arg4[arg1] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "eef17f8aa1".
eventRegistration2(flag4, dataTable6)
eventRegistration2 = 0.8
flag4 = 0
dataTable6 = {}
dataTable6.metpd = true
dataTable6.nhs = true
dataTable6.hmp = true
dataTable6.lfb = true

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26
  arg1 = 0
  arg2 = workValue6
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.getGangUIPostion
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.getShowHealthPercentageFlag
  arg4 = arg4()
  arg5 = {}
  if arg2 then
    arg6 = arg2.isAdvanced
    if arg6 then
      arg6 = CMG
      arg6 = arg6.isEmergencyService
      arg6 = arg6()
      if not arg6 then
        arg6 = CMG
        arg6 = arg6.isDisplayVisible
        arg7 = "gang"
        arg6 = arg6(arg7)
        if arg6 then
          arg6 = CMG
          arg6 = arg6.inEvent
          arg6 = arg6()
          if not arg6 then
            arg6 = CMG
            arg6 = arg6.hasRadioItem
            arg6 = arg6()
            if arg6 then
              arg6 = dataTable.pings
              if arg6 then
                arg6 = GetGameplayCamCoord
                arg6 = arg6()
                arg7 = HasStreamedTextureDictLoaded
                arg8 = "cmg_gang"
                arg7 = arg7(arg8)
                arg8 = GetActiveScreenResolution
                arg8, arg9 = arg8()
                arg10 = arg8 / arg9
                arg11 = CMG
                arg11 = arg11.getGangAdditionalPingMarkerIndex
                arg11 = arg11()
                arg122 = pairs
                arg13 = arg2.pings
                arg122, arg13, arg14, arg15 = arg122(arg13)
                for arg16, arg17 in arg122, arg13, arg14, arg15 do
                  arg18 = GetScreenCoordFromWorldCoord
                  numberValue5 = arg17.position
                  numberValue5 = numberValue5.x
                  numberValue7 = arg17.position
                  numberValue7 = numberValue7.y
                  numberValue8 = arg17.position
                  numberValue8 = numberValue8.z
                  arg18, numberValue5, numberValue7 = arg18(numberValue5, numberValue7, numberValue8)
                  if arg18 then
                    numberValue8 = workValue7
                    numberValue9 = arg2
                    numberValue8 = numberValue8(numberValue9)
                    numberValue8 = numberValue8[arg16]
                    if numberValue8 then
                      numberValue9 = arg17.position
                      numberValue9 = arg6 - numberValue9
                      numberValue9 = #numberValue9
                      numberValue10 = tostring
                      numberValue12 = math
                      numberValue12 = numberValue12.floor
                      numberValue13 = numberValue9
                      numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26 = numberValue12(numberValue13)
                      numberValue10 = numberValue10(numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
                      numberValue12 = "m"
                      numberValue10 = numberValue10 .. numberValue12
                      numberValue12 = 1000.0
                      if numberValue9 > numberValue12 then
                        numberValue12 = tostring
                        numberValue13 = math
                        numberValue13 = numberValue13.round
                        numberValue15 = numberValue9 / 1000.0
                        numberValue17 = 1
                        numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26 = numberValue13(numberValue15, numberValue17)
                        numberValue12 = numberValue12(numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
                        numberValue13 = "km"
                        numberValue12 = numberValue12 .. numberValue13
                        numberValue10 = numberValue12
                      end
                      numberValue12 = math
                      numberValue12 = numberValue12.min
                      numberValue13 = numberValue9 / 1000.0
                      numberValue15 = 1.0
                      numberValue12 = numberValue12(numberValue13, numberValue15)
                      numberValue12 = 0.4 * numberValue12
                      numberValue13 = CMG
                      numberValue13 = numberValue13.DrawText
                      numberValue15 = numberValue5
                      numberValue17 = numberValue7
                      numberValue19 = numberValue8.name
                      numberValue20 = "\n"
                      numberValue21 = numberValue10
                      numberValue19 = numberValue19 .. numberValue20 .. numberValue21
                      numberValue20 = 1.0
                      numberValue20 = numberValue20 - numberValue12
                      numberValue20 = 0.2 * numberValue20
                      numberValue21 = eventRegistration2
                      numberValue20 = numberValue20 * numberValue21
                      numberValue21 = 0
                      numberValue22 = 0
                      numberValue23 = nil
                      flag3 = true
                      numberValue13(numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3)
                      if arg7 then
                        numberValue13 = CMG
                        numberValue13 = numberValue13.getGangPingMarkerIndex
                        numberValue13 = numberValue13()
                        if 3 == numberValue13 then
                          numberValue13 = numberValue12 * 1.25
                          numberValue15 = 1.0
                          numberValue13 = numberValue15 - numberValue13
                          numberValue15 = DrawSprite
                          numberValue17 = "cmg_gang"
                          numberValue19 = "ping"
                          numberValue20 = numberValue5
                          numberValue21 = 0.01 * numberValue13
                          numberValue22 = eventRegistration2
                          numberValue21 = numberValue21 * numberValue22
                          numberValue21 = numberValue7 - numberValue21
                          numberValue22 = 0.03
                          numberValue22 = numberValue22 / arg10
                          numberValue22 = numberValue22 * numberValue13
                          numberValue23 = eventRegistration2
                          numberValue22 = numberValue22 * numberValue23
                          numberValue23 = 0.03 * numberValue13
                          flag3 = eventRegistration2
                          numberValue23 = numberValue23 * flag3
                          flag3 = 0
                          numberValue24 = 255
                          vector3Builder = 255
                          numberValue25 = 255
                          numberValue26 = 255
                          numberValue15(numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
                        end
                      end
                    end
                  end
                  if 3 == arg11 or 4 == arg11 then
                    numberValue8 = CMG
                    numberValue8 = numberValue8.getPlayerCoords
                    -- Beginner: result below is playerCoords.
                    numberValue8 = numberValue8()
                    numberValue9 = math
                    numberValue9 = numberValue9.deg
                    numberValue10 = math
                    numberValue10 = numberValue10.atan
                    numberValue12 = arg17.position
                    numberValue12 = numberValue12.x
                    numberValue13 = numberValue8.x
                    numberValue12 = numberValue12 - numberValue13
                    numberValue13 = arg17.position
                    numberValue13 = numberValue13.y
                    numberValue15 = numberValue8.y
                    numberValue13 = numberValue13 - numberValue15
                    numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26 = numberValue10(numberValue12, numberValue13)
                    numberValue9 = numberValue9(numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
                    numberValue9 = numberValue9 % 360
                    numberValue10 = CMG
                    numberValue10 = numberValue10.addCompassPing
                    numberValue12 = numberValue9
                    numberValue10(numberValue12)
                  end
                end
              end
              arg6 = pairs
              arg7 = workValue7
              arg8 = arg2
              arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26 = arg7(arg8)
              arg6, arg7, arg8, arg9 = arg6(arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
              for arg10, arg11 in arg6, arg7, arg8, arg9 do
                arg122 = dataTable.pinnedPlayers
                arg122 = arg122[arg10]
                if arg122 then
                  arg122 = fullPlayerListData
                  arg122 = arg122[arg10]
                  if arg122 then
                    arg122 = CMG
                    arg122 = arg122.getJobType
                    arg13 = arg10
                    arg122 = arg122(arg13)
                    arg13 = dataTable6
                    arg122 = arg13[arg122]
                    if not arg122 then
                      arg122 = true
                      arg13 = nil
                      arg14 = nil
                      arg15 = dataTable2
                      arg15 = arg15[arg10]
                      if arg15 then
                        arg13 = arg15.health
                        arg14 = arg15.armour
                      end
                      arg16 = fullPlayerListData
                      arg16 = arg16[arg10]
                      arg16 = arg16[1]
                      if arg16 then
                        arg17 = GetPlayerFromServerId
                        arg18 = arg16
                        -- Beginner: result below is playerIndex.
                        arg17 = arg17(arg18)
                        if -1 ~= arg17 then
                          arg18 = GetPlayerPed
                          numberValue5 = arg17
                          -- Beginner: result below is playerPed.
                          arg18 = arg18(numberValue5)
                          if 0 ~= arg18 then
                            numberValue5 = GetEntityHealth
                            numberValue7 = arg18
                            -- Beginner: result below is health.
                            numberValue5 = numberValue5(numberValue7)
                            arg13 = numberValue5
                            numberValue5 = GetPedArmour
                            numberValue7 = arg18
                            numberValue5 = numberValue5(numberValue7)
                            arg14 = numberValue5
                            arg122 = false
                          end
                        end
                      end
                      if arg13 and arg14 then
                        arg17 = math
                        arg17 = arg17.min
                        arg18 = arg13
                        numberValue5 = 200
                        arg17 = arg17(arg18, numberValue5)
                        arg18 = math
                        arg18 = arg18.max
                        numberValue5 = 0
                        numberValue7 = math
                        numberValue7 = numberValue7.floor
                        numberValue8 = arg17 - 100
                        numberValue8 = numberValue8 / 100.0
                        numberValue8 = numberValue8 * 100
                        numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26 = numberValue7(numberValue8)
                        arg18 = arg18(numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26)
                        numberValue5 = arg14
                        if arg13 <= 102 then
                          numberValue5 = 0
                        end
                        if nil ~= arg15 then
                          numberValue7 = arg15.hasRadio
                        end
                        numberValue7 = CMG
                        numberValue7 = numberValue7.doesPlayerHaveRadioItem
                        numberValue8 = arg16
                        numberValue7 = true == numberValue7 or numberValue7
                        numberValue8 = table
                        numberValue8 = numberValue8.insert
                        numberValue9 = arg5
                        numberValue10 = {}
                        numberValue12 = arg11.name
                        numberValue10.name = numberValue12
                        numberValue10.health = arg18
                        numberValue10.armour = numberValue5
                        numberValue10.hasRadio = numberValue7
                        numberValue8(numberValue9, numberValue10)
                      end
                      if arg122 then
                        arg1 = arg1 + 1
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
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg7 = flag4
  arg7 = arg6 - arg7
  if arg7 > 100 then
    flag4 = arg6
    arg7 = CMG
    arg7 = arg7.uiSendMessage
    arg8 = {}
    arg8.action = "GANG_PINNED_UPDATE"
    arg9 = {}
    arg9.players = arg5
    arg10 = {}
    arg11 = arg3.x
    arg10.x = arg11
    arg11 = arg3.y
    arg10.y = arg11
    arg9.position = arg10
    arg10 = CMG
    arg10 = arg10.getGangUIScaleMultiplier
    arg10 = arg10()
    arg9.scale = arg10
    arg9.showPercentage = arg4
    arg8.payload = arg9
    arg7(arg8)
  end
  arg7 = numberValue4
  if arg7 then
    arg7 = numberValue4
    if arg7 == arg2 then
      if arg1 <= 0 then
        arg7 = TriggerServerEvent
        arg8 = "dc39cfbe4e"
        arg9 = nil
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc39cfbe4e".
        arg7(arg8, arg9)
        arg7 = nil
        numberValue4 = arg7
      end
  end
  elseif arg1 > 0 then
    arg7 = workValue
    if arg2 == arg7 then
      arg7 = "own"
      if arg7 then
        goto flow_label_366
      end
    end
    arg7 = "guest"
    ::flow_label_366::
    arg8 = TriggerServerEvent
    arg9 = "dc39cfbe4e"
    arg10 = arg7
    arg8(arg9, arg10)
    numberValue4 = arg2
  end
end
cmgCall9 = AddEventHandler
cmgCall10 = "CMG:onDisplayVisiblityChange"
-- Beginner: this function runs when client event "CMG:onDisplayVisiblityChange" fires.

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  if "gang" ~= arg1 then
    return
  end
  if arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.getGangUIPostion
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.uiSendMessage
  arg5 = {}
  arg5.action = "GANG_PINNED_UPDATE"
  arg6 = {}
  arg7 = {}
  arg6.players = arg7
  arg7 = {}
  arg8 = arg3.x
  arg7.x = arg8
  arg8 = arg3.y
  arg7.y = arg8
  arg6.position = arg7
  arg7 = CMG
  arg7 = arg7.getGangUIScaleMultiplier
  arg7 = arg7()
  arg6.scale = arg7
  arg7 = CMG
  arg7 = arg7.getShowHealthPercentageFlag
  arg7 = arg7()
  arg6.showPercentage = arg7
  arg5.payload = arg6
  arg4(arg5)
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onDisplayVisiblityChange".
cmgCall9(cmgCall10, threadCall)
cmgCall9 = CMG
cmgCall9 = cmgCall9.createThreadOnTick
cmgCall10 = workValue17
threadCall = "Gang Location Pings"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall9(cmgCall10, threadCall)
cmgCall9 = RegisterNetEvent
cmgCall10 = "028443631e"
-- Beginner: this function handles network event "028443631e".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue6
  arg2 = arg2()
  if "polblips" == arg1 and arg2 then
    arg3 = arg2.isAdvanced
    if arg3 then
      arg3 = dataTable.blips
      if arg3 then
        arg3 = TriggerEvent
        arg4 = "e713d91b70"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
        arg3(arg4)
        arg3 = TriggerServerEvent
        arg4 = "f9c26121e2"
        arg5 = "own"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
        arg3(arg4, arg5)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "028443631e".
cmgCall9(cmgCall10, threadCall)
cmgCall9 = Citizen
cmgCall9 = cmgCall9.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: none) ===
function cmgCall10()
  local arg1, arg2, arg3, arg4, arg5
  while true do
    arg1 = numberValue14
    if arg1 > 0 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      arg2 = numberValue14
      arg1 = arg1 - arg2
      arg2 = 300000
      if arg1 > arg2 then
        arg1 = CMG
        arg1 = arg1.getClientUserId
        -- Beginner: result below is userId.
        arg1 = arg1()
        arg2 = workValue
        if arg2 then
          arg2 = workValue.pings
          if arg2 then
            arg2 = workValue.pings
            arg2 = arg2[arg1]
            if arg2 then
              arg2 = TriggerServerEvent
              arg3 = "f1d8cdbd8e"
              arg4 = nil
              arg5 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
              arg2(arg3, arg4, arg5)
            end
          end
        end
        arg2 = 0
        numberValue14 = arg2
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 15000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall9(cmgCall10)
cmgCall9 = AddEventHandler
cmgCall10 = "1c597fc419"
-- Beginner: this function runs when client event "1c597fc419" fires.

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  numberValue16 = arg1
  if arg2 >= 0.0 and arg2 <= 1.0 then
    numberValue18 = arg2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1c597fc419".
cmgCall9(cmgCall10, threadCall)
cmgCall9 = RegisterNetEvent
cmgCall10 = "e35812009c"
-- Beginner: this function handles network event "e35812009c".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2
  arg2 = workValue
  if arg2 then
    workValue.additionalRadios = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e35812009c".
cmgCall9(cmgCall10, threadCall)
cmgCall9 = RegisterNetEvent
cmgCall10 = "bdbde03161"
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2, arg3) ===
function threadCall(arg1, arg2, arg3)
  local arg4, arg5
  arg4 = dataTable5
  arg4 = arg4[arg1]
  if arg4 then
    arg5 = arg4.relationships
    arg5[arg2] = arg3
  end
end
cmgCall9(cmgCall10, threadCall)
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
function cmgCall9()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.clearEnemyGamerTags
  arg1()
end
cmgCall10 = false
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration3; parameters: none) ===
function eventRegistration3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue13, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue22, numberValue23, flag3, numberValue24, vector3Builder, numberValue25, numberValue26, nameValue, workValue10
  arg1 = cmgCall.turfSystemEnabled
  if not arg1 then
    arg1 = true
    cmgCall10 = arg1
    return
  end
  arg1 = 30.0
  arg2 = 40
  arg3 = pairs
  arg4 = cmgCall.turfs
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = PolyZone
    arg10 = arg9
    arg9 = arg9.Create
    arg11 = arg8.bounds
    arg122 = {}
    arg13 = arg8.name
    if not arg13 then
      arg13 = "turf_"
      arg14 = arg7
      arg13 = arg13 .. arg14
    end
    arg122.name = arg13
    arg122.minZ = 0.0
    arg122.maxZ = 150.0
    arg122.debugGrid = false
    arg122.createLines = false
    arg122.gridDivisions = 25
    arg9 = arg9(arg10, arg11, arg122)
    arg11 = arg8.name
    arg10 = cmgCall6
    arg122 = {}
    arg10[arg11] = arg122
    arg10 = nil
    arg11 = nil
    arg122 = nil
    arg13 = nil
    arg14 = ipairs
    arg15 = arg8.bounds
    arg14, arg15, arg16, arg17 = arg14(arg15)
    for arg18, numberValue5 in arg14, arg15, arg16, arg17 do
      numberValue7 = numberValue5.x
      numberValue8 = numberValue5.y
      if 1 == arg18 then
        numberValue9 = numberValue7
        arg11 = numberValue7
        arg10 = numberValue9
        numberValue9 = numberValue8
        arg13 = numberValue8
        arg122 = numberValue9
      else
        if numberValue7 < arg10 then
          arg10 = numberValue7
        end
        if numberValue7 > arg11 then
          arg11 = numberValue7
        end
        if numberValue8 < arg122 then
          arg122 = numberValue8
        end
        if numberValue8 > arg13 then
          arg13 = numberValue8
        end
      end
    end
    arg14 = arg8.bounds
    arg14 = arg14[1]
    if arg14 then
      arg14 = arg8.bounds
      arg14 = arg14[1]
      arg14 = arg14.z
      if arg14 then
        goto flow_label_77
      end
    end
    arg14 = 0.0
    ::flow_label_77::
    arg15 = arg11 - arg10
    arg16 = arg13 - arg122
    arg17 = math
    arg17 = arg17.floor
    arg18 = arg15 / arg1
    arg17 = arg17(arg18)
    arg17 = arg17 + 1
    arg18 = math
    arg18 = arg18.floor
    numberValue5 = arg16 / arg1
    arg18 = arg18(numberValue5)
    arg18 = arg18 + 1
    numberValue5 = {}
    numberValue7 = 0
    numberValue8 = arg18 - 1
    numberValue9 = 1
    for numberValue10 = numberValue7, numberValue8, numberValue9 do
      numberValue12 = {}
      numberValue5[numberValue10] = numberValue12
      numberValue12 = numberValue10 * arg1
      numberValue12 = arg122 + numberValue12
      numberValue13 = 0
      numberValue15 = arg17 - 1
      numberValue17 = 1
      for numberValue19 = numberValue13, numberValue15, numberValue17 do
        numberValue20 = numberValue19 * arg1
        numberValue20 = arg10 + numberValue20
        numberValue21 = arg1 * 0.5
        numberValue21 = numberValue20 + numberValue21
        numberValue22 = arg1 * 0.5
        numberValue22 = numberValue12 + numberValue22
        numberValue23 = numberValue5[numberValue10]
        numberValue24 = arg9
        flag3 = arg9.isPointInside
        vector3Builder = vector3
        numberValue25 = numberValue21
        numberValue26 = numberValue22
        nameValue = arg14
        vector3Builder, numberValue25, numberValue26, nameValue, workValue10 = vector3Builder(numberValue25, numberValue26, nameValue)
        flag3 = flag3(numberValue24, vector3Builder, numberValue25, numberValue26, nameValue, workValue10)
        numberValue23[numberValue19] = flag3
      end
    end
    numberValue7 = 0
    numberValue8 = 0
    numberValue9 = arg18 - 1
    numberValue10 = 1
    for numberValue12 = numberValue8, numberValue9, numberValue10 do
      numberValue13 = numberValue5[numberValue12]
      numberValue15 = 0
      while arg17 > numberValue15 do
        numberValue17 = numberValue13[numberValue15]
        if numberValue17 then
          numberValue17 = numberValue15
          while true do
            numberValue19 = numberValue15 + 1
            if not (arg17 > numberValue19) then
              break
            end
            numberValue19 = numberValue15 + 1
            numberValue19 = numberValue13[numberValue19]
            if not numberValue19 then
              break
            end
            numberValue15 = numberValue15 + 1
          end
          numberValue19 = numberValue15
          numberValue20 = numberValue19 - numberValue17
          numberValue20 = numberValue20 + 1
          numberValue21 = arg1 * numberValue20
          numberValue22 = arg1
          numberValue23 = numberValue17 + numberValue19
          numberValue23 = numberValue23 + 1
          numberValue23 = numberValue23 * 0.5
          numberValue23 = numberValue23 * arg1
          numberValue23 = arg10 + numberValue23
          flag3 = numberValue12 + 0.5
          flag3 = flag3 * arg1
          flag3 = arg122 + flag3
          numberValue24 = AddBlipForArea
          vector3Builder = numberValue23
          numberValue25 = flag3
          numberValue26 = arg14
          nameValue = numberValue21
          workValue10 = numberValue22
          numberValue24 = numberValue24(vector3Builder, numberValue25, numberValue26, nameValue, workValue10)
          vector3Builder = SetBlipDisplay
          numberValue25 = numberValue24
          numberValue26 = 3
          vector3Builder(numberValue25, numberValue26)
          vector3Builder = SetBlipAlpha
          numberValue25 = numberValue24
          numberValue26 = cmgCall.blipAlpha
          vector3Builder(numberValue25, numberValue26)
          vector3Builder = SetBlipColour
          numberValue25 = numberValue24
          numberValue26 = cmgCall.defaultTurfColour
          vector3Builder(numberValue25, numberValue26)
          vector3Builder = SetBlipAsShortRange
          numberValue25 = numberValue24
          numberValue26 = true
          vector3Builder(numberValue25, numberValue26)
          vector3Builder = table
          vector3Builder = vector3Builder.insert
          numberValue26 = arg8.name
          numberValue25 = cmgCall6
          numberValue25 = numberValue25[numberValue26]
          numberValue26 = numberValue24
          vector3Builder(numberValue25, numberValue26)
          numberValue7 = numberValue7 + 1
          if arg2 <= numberValue7 then
            vector3Builder = print
            numberValue25 = "[TURF] Reached max blips per turf for %s, stopping."
            numberValue26 = numberValue25
            numberValue25 = numberValue25.format
            nameValue = arg8.name
            numberValue25, numberValue26, nameValue, workValue10 = numberValue25(numberValue26, nameValue)
            vector3Builder(numberValue25, numberValue26, nameValue, workValue10)
            break
          end
        end
        numberValue15 = numberValue15 + 1
      end
      if arg2 <= numberValue7 then
        break
      end
    end
  end
  arg3 = true
  cmgCall10 = arg3
  arg3 = CMG
  arg3 = arg3.createThreadOnTick
  arg4 = cmgCall9
  arg5 = "Gang Turfs"
  -- Beginner: Run a helper every game frame while this script is active.
  arg3(arg4, arg5)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(eventRegistration3)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7
  while true do
    arg1 = cmgCall10
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = pairs
  arg2 = cmgCall5
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg8 = arg6.ownedByGangId
    arg7 = dataTable5
    arg7 = arg7[arg8]
    arg8 = cmgCall.turfNameToIndex
    arg8 = arg8[arg5]
    if arg8 then
      arg9 = cmgCall.turfs
      arg9 = arg9[arg8]
      arg10 = arg6.attackingBlip
      if arg10 then
        arg10 = RemoveBlip
        arg11 = arg6.attackingBlip
        arg10(arg11)
        arg6.attackingBlip = nil
      end
      arg10 = arg6.ownedByGangId
      if arg10 then
        arg10 = arg6.ownedByGangId
        arg10 = arg10 > 0
      end
      arg11 = arg10 or arg11
      arg11 = arg7 or arg11
      if arg10 and arg7 then
        arg11 = arg9.infoMarker
      end
      if not arg11 then
        arg122 = arg6.ownerBlip
        if arg122 then
          arg122 = tCMG
          arg122 = arg122.removeBlip
          arg13 = arg6.ownerBlip
          arg122(arg13)
          arg6.ownerBlip = nil
        end
      else
        arg122 = arg6.ownerBlip
        if not arg122 then
          arg122 = flag6
          if arg122 then
            arg122 = tCMG
            arg122 = arg122.addBlip
            arg13 = arg9.infoMarker
            arg13 = arg13.x
            arg14 = arg9.infoMarker
            arg14 = arg14.y
            arg15 = arg9.infoMarker
            arg15 = arg15.z
            arg16 = arg7.blipId
            arg17 = 1
            arg18 = arg7.name
            numberValue5 = 1.0
            numberValue7 = false
            arg122 = arg122(arg13, arg14, arg15, arg16, arg17, arg18, numberValue5, numberValue7)
            arg6.ownerBlip = arg122
          end
        end
        arg122 = arg6.ownerBlip
        if arg122 then
          arg122 = SetBlipSprite
          arg13 = arg6.ownerBlip
          arg14 = arg7.blipId
          arg122(arg13, arg14)
          arg122 = SetBlipColour
          arg13 = arg6.ownerBlip
          arg14 = 1
          arg122(arg13, arg14)
          arg122 = SetBlipScale
          arg13 = arg6.ownerBlip
          arg14 = 1.0
          arg122(arg13, arg14)
          arg122 = AddTextEntryByHash
          arg13 = GetHashKey
          arg14 = arg7.name
          -- Beginner: result below is hash.
          arg13 = arg13(arg14)
          arg14 = arg7.name
          arg122(arg13, arg14)
          arg122 = BeginTextCommandSetBlipName
          arg13 = arg7.name
          arg122(arg13)
          arg122 = EndTextCommandSetBlipName
          arg13 = arg6.ownerBlip
          arg122(arg13)
        end
      end
    end
    arg9 = cmgCall6
    arg9 = arg9[arg5]
    if arg9 then
      if arg7 then
        arg10 = cmgCall.colourLookup
        arg11 = arg7.turfColour
        arg10 = arg10[arg11]
        if not arg10 then
          goto flow_label_141
        end
        arg11 = arg6.ownedByGangId
        if arg11 then
          arg11 = arg10.blip
          if arg11 then
            goto flow_label_118
          end
        end
        arg11 = 0
        ::flow_label_118::
        arg122 = pairs
        arg13 = arg9
        arg122, arg13, arg14, arg15 = arg122(arg13)
        for arg16, arg17 in arg122, arg13, arg14, arg15 do
          arg18 = SetBlipColour
          numberValue5 = arg17
          numberValue7 = arg11
          arg18(numberValue5, numberValue7)
        end
      else
        arg10 = pairs
        arg11 = arg9
        arg10, arg11, arg122, arg13 = arg10(arg11)
        for arg14, arg15 in arg10, arg11, arg122, arg13 do
          arg16 = SetBlipColour
          arg17 = arg15
          arg18 = cmgCall.defaultTurfColour
          arg16(arg17, arg18)
        end
      end
    end
    ::flow_label_141::
  end
end
eventRegistration3 = RegisterNetEvent
textValue7 = "adb903a8eb"
-- Beginner: this function handles network event "adb903a8eb".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2) ===
function workValue18(arg1, arg2)
  local arg3, arg4
  arg3 = dataTable5
  arg3 = arg3[arg1]
  if arg3 then
    arg3.turfColour = arg2
    arg4 = threadCall
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg4()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adb903a8eb".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = RegisterNetEvent
textValue7 = "db88e5e716"
-- Beginner: this function handles network event "db88e5e716".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2
  dataTable5 = arg1
  arg2 = CMG
  arg2.gangRecognisedGangs = arg1
  arg2 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "db88e5e716".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = RegisterNetEvent
textValue7 = "a014160254"
-- Beginner: this function handles network event "a014160254".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2, arg3
  cmgCall5 = arg1
  arg2 = CMG
  arg2.gangCapturedTurfs = arg1
  arg2 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2()
  arg2 = TriggerEvent
  arg3 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a014160254".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = RegisterNetEvent
textValue7 = "62e40e243c"
-- Beginner: this function handles network event "62e40e243c".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2) ===
function workValue18(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = dataTable5
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = table
    arg4 = arg4.insert
    arg5 = arg3.onlinePlayers
    arg6 = arg2
    arg4(arg5, arg6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62e40e243c".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = RegisterNetEvent
textValue7 = "5da078c840"
-- Beginner: this function handles network event "5da078c840".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2) ===
function workValue18(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = dataTable5
  arg3 = arg3[arg1]
  if arg3 then
    arg4 = table
    arg4 = arg4.find
    arg5 = arg3.onlinePlayers
    arg6 = arg2
    arg4 = arg4(arg5, arg6)
    arg5 = assert
    arg6 = arg4
    arg5(arg6)
    arg5 = table
    arg5 = arg5.insert
    arg6 = arg3.onlinePlayers
    arg7 = arg4
    arg5(arg6, arg7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5da078c840".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = RegisterNetEvent
textValue7 = "b41c8a1869"
-- Beginner: this function handles network event "b41c8a1869".

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2) ===
function workValue18(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = cmgCall.turfs
  arg3 = arg3[arg1]
  arg5 = arg3.name
  arg4 = cmgCall5
  arg4 = arg4[arg5]
  if not arg4 then
    arg5 = {}
    arg4 = arg5
    arg6 = arg3.name
    arg5 = cmgCall5
    arg5[arg6] = arg4
  end
  arg4.ownedByGangId = arg2
  arg5 = threadCall
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg5()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b41c8a1869".
eventRegistration3(textValue7, workValue18)
eventRegistration3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3
  if not arg1 then
    arg2 = workValue
    arg1 = arg2 or arg1
    if arg2 then
      arg1 = workValue.id
    end
  end
  arg2 = dataTable5
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2.textureName
    if arg3 then
      arg3 = arg2.textureName
      return arg3
    end
  end
  arg3 = nil
  return arg3
end
eventRegistration3.getGangRecognisedTexture = textValue7
eventRegistration3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2
  arg1 = workValue
  if arg1 then
    arg1 = workValue.id
  end
  return arg1
end
eventRegistration3.getGangId = textValue7
eventRegistration3 = CMG
eventRegistration3 = eventRegistration3.registerDevMenuItems
textValue7 = "Gangs"

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = workValue
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.Separator
    arg2 = "~y~No Gang Selected."
    arg1(arg2)
    return
  end
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Set Turf Owned Locally"
  arg3 = "Sets the main gang to being owned locally. This will break sync, use in dev only."
  arg4 = true

  -- === HELPER FUNCTION: arg5(arg12, arg22, arg32) ===
  function arg5(arg12, arg22, arg32)
    local localEventCall, textValue6, numberValue27, networkTime, workValue20
    if arg32 then
      localEventCall = TriggerEvent
      textValue6 = "b41c8a1869"
      numberValue27 = 1
      networkTime = GetNetworkTime
      -- Beginner: result below is networkTime.
      networkTime = networkTime()
      workValue20 = workValue.id
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b41c8a1869".
      localEventCall(textValue6, numberValue27, networkTime, workValue20)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Debug Gang Blips"
  arg3 = "Display all the gang blips near to 0,0. This is just to view them, does nothing else."
  arg4 = true

  -- === HELPER FUNCTION: arg5(arg12, arg22, arg32) ===
  function arg5(arg12, arg22, arg32)
    local localEventCall, textValue6, numberValue27, networkTime, workValue20, workValue21, workValue22, numberValue, workValue2, numberValue2
    if arg32 then
      localEventCall = pairs
      textValue6 = cmgCall.debugGangBlips
      localEventCall, textValue6, numberValue27, networkTime = localEventCall(textValue6)
      for workValue20, workValue21 in localEventCall, textValue6, numberValue27, networkTime do
        workValue22 = AddBlipForCoord
        numberValue = 0.0
        workValue2 = workValue20 * 15.0
        numberValue2 = 0.0
        -- Beginner: result below is blipHandle.
        workValue22 = workValue22(numberValue, workValue2, numberValue2)
        numberValue = SetBlipSprite
        workValue2 = workValue22
        numberValue2 = workValue21
        numberValue(workValue2, numberValue2)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5)
end
eventRegistration3(textValue7, workValue18)
eventRegistration3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17
  flag6 = arg1
  if arg1 then
    arg2 = cmgCall.blipAlpha
    if arg2 then
      goto flow_label_8
    end
  end
  arg2 = 0
  ::flow_label_8::
  arg3 = pairs
  arg4 = cmgCall6
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = pairs
    arg10 = arg8
    arg9, arg10, arg11, arg122 = arg9(arg10)
    for arg13, arg14 in arg9, arg10, arg11, arg122 do
      arg15 = DoesBlipExist
      arg16 = arg14
      arg15 = arg15(arg16)
      if arg15 then
        arg15 = SetBlipAlpha
        arg16 = arg14
        arg17 = arg2
        arg15(arg16, arg17)
      end
    end
  end
  arg3 = pairs
  arg4 = cmgCall5
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = arg8.ownerBlip
    if arg9 then
      arg9 = DoesBlipExist
      arg10 = arg8.ownerBlip
      arg9 = arg9(arg10)
      if arg9 then
        if arg1 then
          arg9 = 255
          if arg9 then
            goto flow_label_49
          end
        end
        arg9 = 0
        ::flow_label_49::
        arg10 = SetBlipAlpha
        arg11 = arg8.ownerBlip
        arg122 = arg9
        arg10(arg11, arg122)
      end
    end
    arg9 = arg8.attackingBlip
    if arg9 then
      arg9 = DoesBlipExist
      arg10 = arg8.attackingBlip
      arg9 = arg9(arg10)
      if arg9 then
        arg9 = SetBlipAlpha
        arg10 = arg8.attackingBlip
        arg11 = arg2
        arg9(arg10, arg11)
      end
    end
  end
end
eventRegistration3.setShowTurfBlips = textValue7
eventRegistration3 = false

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.hasGangRpRagdollPerk
  arg1 = arg1()
  if not arg1 then
    arg1 = false
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.inEvent
  arg1 = arg1()
  if arg1 then
    arg1 = false
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.getPlayerCombatTimer
  arg1 = arg1()
  if arg1 > 0 then
    arg1 = false
    return arg1
  end
  arg1 = tCMG
  arg1 = arg1.canAnim
  arg1 = arg1()
  if not arg1 then
    arg1 = false
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = IsEntityDead
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_41
    end
  end
  arg2 = false
  return arg2
  ::flow_label_41::
  arg2 = CMG
  arg2 = arg2.isHandcuffed
  arg2 = arg2()
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = tCMG
  arg2 = arg2.isInComa
  arg2 = arg2()
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = false
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = IsPedOnFoot
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = IsPedSwimming
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = IsPedSwimmingUnderWater
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_82
    end
  end
  arg2 = false
  return arg2
  ::flow_label_82::
  arg2 = IsPedFalling
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = IsPedInParachuteFreeFall
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_94
    end
  end
  arg2 = false
  return arg2
  ::flow_label_94::
  arg2 = true
  return arg2
end
workValue18 = RegisterCommand
cmgCall11 = "+cmgGangRpRagdoll"
-- Beginner: this function is the command handler for "+cmgGangRpRagdoll".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2
  arg1 = textValue7
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = true
  eventRegistration3 = arg1
  arg1 = notify
  arg2 = "~s~Release ~b~G ~s~to stop ragdolling."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
flag5 = false
-- Beginner: Register a chat/console command. Event/command: "+cmgGangRpRagdoll".
workValue18(cmgCall11, textValue8, flag5)
workValue18 = RegisterCommand
cmgCall11 = "-cmgGangRpRagdoll"
-- Beginner: this function is the command handler for "-cmgGangRpRagdoll".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2
  arg1 = false
  eventRegistration3 = arg1
end
flag5 = false
workValue18(cmgCall11, textValue8, flag5)
workValue18 = RegisterKeyMapping
cmgCall11 = "+cmgGangRpRagdoll"
textValue8 = "Ragdoll (hold)"
flag5 = "keyboard"
textValue9 = "G"
-- Beginner: Bind a command to a keyboard/controller key.
workValue18(cmgCall11, textValue8, flag5, textValue9)
workValue18 = Citizen
workValue18 = workValue18.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall11; parameters: none) ===
function cmgCall11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  while true do
    arg1 = eventRegistration3
    if arg1 then
      arg1 = IsPauseMenuActive
      arg1 = arg1()
      if not arg1 then
        arg1 = textValue7
        arg1 = arg1()
        if arg1 then
          goto flow_label_19
        end
      end
      arg1 = false
      eventRegistration3 = arg1
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 200
      arg1(arg2)
      goto flow_label_42
      ::flow_label_19::
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      if 0 ~= arg1 then
        arg2 = SetPedToRagdoll
        arg3 = arg1
        arg4 = 500
        arg5 = 500
        arg6 = 0
        arg7 = false
        arg8 = false
        arg9 = false
        arg2(arg3, arg4, arg5, arg6, arg7, arg8, arg9)
      end
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = 0
      arg2(arg3)
    else
      arg1 = Citizen
      arg1 = arg1.Wait
      arg2 = 200
      arg1(arg2)
    end
    ::flow_label_42::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue18(cmgCall11)
workValue18 = false
cmgCall11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue18
  if arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.hasGangRpCarTheftPerk
  arg2 = arg2()
  if not arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg3 = IsEntityDead
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      goto flow_label_22
    end
  end
  return
  ::flow_label_22::
  arg3 = CMG
  arg3 = arg3.isHandcuffed
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = tCMG
  arg3 = arg3.isInComa
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = IsPedInAnyVehicle
  arg4 = arg2
  arg5 = false
  arg3 = arg3(arg4, arg5)
  if arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.isInGreenzone
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = true
  workValue18 = arg3
  arg3 = TriggerServerEvent
  arg4 = "8fe4aba1e5"
  arg5 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fe4aba1e5".
  arg3(arg4, arg5)
end
cmgCall11.startGangCarjack = textValue8
cmgCall11 = RegisterNetEvent
textValue8 = "6539f54c12"
-- Beginner: this function handles network event "6539f54c12".

-- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
function flag5()
  local arg1, arg2
  arg1 = false
  workValue18 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6539f54c12".
cmgCall11(textValue8, flag5)
cmgCall11 = RegisterNetEvent
textValue8 = "7fbf0126af"
-- Beginner: this function handles network event "7fbf0126af".

-- === HELPER FUNCTION (decompiler name: flag5; parameters: arg1) ===
function flag5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg122, arg13, arg14, arg15, arg16, arg17
  arg2 = GetPlayerFromServerId
  arg3 = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(arg3)
  if -1 == arg2 then
    arg3 = false
    workValue18 = arg3
    return
  end
  arg3 = GetPlayerPed
  arg4 = arg2
  -- Beginner: result below is playerPed.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    arg4 = false
    workValue18 = arg4
    return
  end
  arg4 = GetVehiclePedIsUsing
  arg5 = arg3
  arg4 = arg4(arg5)
  if 0 == arg4 then
    arg5 = false
    workValue18 = arg5
    return
  end
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetPedRelationshipGroupHash
  arg7 = arg5
  arg6 = arg6(arg7)
  arg7 = GetPedRelationshipGroupHash
  arg8 = arg3
  arg7 = arg7(arg8)
  arg8 = GetRelationshipBetweenGroups
  arg9 = arg6
  arg10 = arg7
  arg8 = arg8(arg9, arg10)
  arg9 = GetRelationshipBetweenGroups
  arg10 = arg7
  arg11 = arg6
  arg9 = arg9(arg10, arg11)
  arg10 = SetRelationshipBetweenGroups
  arg11 = 5
  arg122 = arg6
  arg13 = arg7
  arg10(arg11, arg122, arg13)
  arg10 = SetRelationshipBetweenGroups
  arg11 = 5
  arg122 = arg7
  arg13 = arg6
  arg10(arg11, arg122, arg13)
  arg10 = SetPedCanBeDraggedOut
  arg11 = arg3
  arg122 = true
  arg10(arg11, arg122)
  arg10 = TaskEnterVehicle
  arg11 = arg5
  arg122 = arg4
  arg13 = -1
  arg14 = -1
  arg15 = 1.0
  arg16 = 8
  arg17 = 0
  arg10(arg11, arg122, arg13, arg14, arg15, arg16, arg17)
  arg10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg10 = arg10()
  while true do
    arg11 = GetVehiclePedIsIn
    arg122 = arg5
    arg13 = false
    -- Beginner: result below is currentVehicle.
    arg11 = arg11(arg122, arg13)
    if arg11 == arg4 then
      break
    end
    arg11 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg11 = arg11()
    arg11 = arg11 - arg10
    arg122 = 8000
    if arg11 > arg122 then
      break
    end
    arg11 = Citizen
    arg11 = arg11.Wait
    arg122 = 0
    arg11(arg122)
  end
  arg11 = SetPedCanBeDraggedOut
  arg122 = arg3
  arg13 = false
  arg11(arg122, arg13)
  arg11 = SetRelationshipBetweenGroups
  arg122 = arg8
  arg13 = arg6
  arg14 = arg7
  arg11(arg122, arg13, arg14)
  arg11 = SetRelationshipBetweenGroups
  arg122 = arg9
  arg13 = arg7
  arg14 = arg6
  arg11(arg122, arg13, arg14)
  arg11 = false
  workValue18 = arg11
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7fbf0126af".
cmgCall11(textValue8, flag5)
