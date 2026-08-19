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
local cmgOperation, text, dataCollection4, workingValue12, workingValue16, workingValue19, stateFlag6, number28, number29, number30, workingValue, cmgOperation2, cmgOperation3, cmgOperation4, number3, dataCollection, dataCollection2, number4, stateFlag, number6, workingValue3, dataCollection3, workingValue4, number11, stateFlag2, number14, number16, number18, workingValue5, text2, dataCollection5, cmgOperation5, cmgOperation6, workingValue6, workingValue7, workingValue8, cmgOperation7, text3, workingValue9, workingValue11, workingValue13, workingValue14, cmgOperation8, workingValue15, eventHandler, text4, text5, eventHandler2, stateFlag4, dataCollection6, workingValue17, cmgOperation9, cmgOperation10, backgroundThread, eventHandler3, text7, workingValue18, cmgOperation11, text8, stateFlag5, text9
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text)
text = nil
dataCollection4 = {}
workingValue12 = nil
workingValue16 = nil
workingValue19 = nil
stateFlag6 = true
number28 = 18
number29 = 82
number30 = 228
workingValue = nil
cmgOperation2 = CMG
cmgOperation2.gangCachedData = nil
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0
  return localValue2
  ::continueAtStep10::
  localValue2 = {}
  localValue3 = 2
  localValue4 = 5
  localValue5 = 10
  localValue6 = 15
  localValue7 = 20
  localValue8 = 30
  localValue2[1] = localValue3
  localValue2[2] = localValue4
  localValue2[3] = localValue5
  localValue2[4] = localValue6
  localValue2[5] = localValue7
  localValue2[6] = localValue8
  localValue3 = #localValue2
  localValue4 = 1
  localValue5 = -1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue1.gangPerksUnlocked
    localValue8 = "pub_capture_time_"
    localValue9 = localValue6
    localValue8 = localValue8 .. localValue9
    localValue7 = localValue7[localValue8]
    if localValue7 then
      localValue7 = localValue2[localValue6]
      return localValue7
    end
  end
  localValue3 = 0
  return localValue3
end
cmgOperation2.getGangPublicCaptureTimeReductionPercent = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0
  return localValue2
  ::continueAtStep10::
  localValue2 = {}
  localValue3 = 20
  localValue4 = 40
  localValue5 = 50
  localValue6 = 70
  localValue7 = 100
  localValue8 = 150
  localValue2[1] = localValue3
  localValue2[2] = localValue4
  localValue2[3] = localValue5
  localValue2[4] = localValue6
  localValue2[5] = localValue7
  localValue2[6] = localValue8
  localValue3 = 0
  localValue4 = 1
  localValue5 = #localValue2
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    localValue8 = localValue1.gangPerksUnlocked
    localValue9 = "pub_name_distance_"
    localValue10 = localValue7
    localValue9 = localValue9 .. localValue10
    localValue8 = localValue8[localValue9]
    if localValue8 then
      localValue8 = localValue2[localValue7]
      if localValue3 < localValue8 then
        localValue3 = localValue2[localValue7]
      end
    end
  end
  return localValue3
end
cmgOperation2.getGangPublicNameViewDistanceFloor = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = tonumber
  localValue2 = cmgOperation.gangBaseMemberLimit
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = 30
  end
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  if localValue2 then
    localValue3 = localValue2.gangPerksUnlocked
    if localValue3 then
      goto continueAtStep15
    end
  end
  return localValue1
  ::continueAtStep15::
  localValue3 = 0
  localValue4 = 1
  localValue5 = 6
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    localValue8 = localValue2.gangPerksUnlocked
    localValue9 = "pub_member_slots_"
    localValue10 = localValue7
    localValue9 = localValue9 .. localValue10
    localValue8 = localValue8[localValue9]
    if localValue8 then
      localValue3 = localValue3 + 5
    end
  end
  localValue4 = localValue1 + localValue3
  return localValue4
end
cmgOperation2.getClientGangMaxMemberLimit = cmgOperation3
cmgOperation2 = CMG
cmgOperation3 = "getClientGangPublicTurfCommissionBonusPercent"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0
  return localValue2
  ::continueAtStep10::
  localValue2 = 0
  localValue3 = 1
  localValue4 = 5
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue1.gangPerksUnlocked
    localValue8 = "pub_turf_commission_"
    localValue9 = localValue6
    localValue8 = localValue8 .. localValue9
    localValue7 = localValue7[localValue8]
    if localValue7 then
      localValue2 = localValue2 + localValue6
    end
  end
  if localValue2 > 25 then
    localValue2 = 25
  end
  return localValue2
end
cmgOperation2[cmgOperation3] = cmgOperation4
cmgOperation2 = {}
cmgOperation3 = 0.2
cmgOperation4 = 0.3
number3 = 0.4
dataCollection = 0.5
dataCollection2 = 0.6
number4 = 0.7
cmgOperation2[1] = cmgOperation3
cmgOperation2[2] = cmgOperation4
cmgOperation2[3] = number3
cmgOperation2[4] = dataCollection
cmgOperation2[5] = dataCollection2
cmgOperation2[6] = number4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  localValue2 = 0
  if localValue1 then
    localValue3 = localValue1.gangPerksUnlocked
    if localValue3 then
      localValue3 = 1
      localValue4 = cmgOperation2
      localValue4 = #localValue4
      localValue5 = 1
      for localValue6 = localValue3, localValue4, localValue5 do
        localValue7 = localValue1.gangPerksUnlocked
        localValue8 = "pub_deposit_fee_"
        localValue9 = localValue6
        localValue8 = localValue8 .. localValue9
        localValue7 = localValue7[localValue8]
        if localValue7 then
          localValue7 = cmgOperation2
          localValue7 = localValue7[localValue6]
          localValue2 = localValue2 + localValue7
        end
      end
    end
  end
  if localValue2 > 50 then
    localValue2 = 50
  end
  return localValue2
end
cmgOperation3.getClientGangDepositFeeReductionPercent = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.getTunableValue
  localValue2 = "gang_tax"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = 0
  end
  localValue2 = CMG
  localValue2 = localValue2.getClientGangDepositFeeReductionPercent
  localValue2 = localValue2()
  localValue3 = math
  localValue3 = localValue3.max
  localValue4 = 0
  localValue5 = localValue2 / 100
  localValue5 = localValue1 - localValue5
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue3 * 1000
  localValue5 = localValue5 + 0.5
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4 / 10
  return localValue4
end
cmgOperation3.getClientGangDepositFeeDisplayPercent = cmgOperation4
cmgOperation3 = CMG
cmgOperation4 = "getClientGangRpHeistSetupCostAfterDiscount"

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = tonumber
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = 0
  end
  localValue2 = localValue2(localValue3)
  if localValue2 <= 0 then
    localValue3 = 0
    return localValue3
  end
  localValue3 = CMG
  localValue3 = localValue3.gangCachedData
  localValue4 = 0
  if localValue3 then
    localValue5 = localValue3.gangPerksUnlocked
    if localValue5 then
      localValue5 = ipairs
      localValue6 = {}
      localValue7 = 20
      localValue8 = 15
      localValue9 = 10
      localValue10 = 5
      localValue6[1] = localValue7
      localValue6[2] = localValue8
      localValue6[3] = localValue9
      localValue6[4] = localValue10
      localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6)
      for localValue9, localValue10 in localValue5, localValue6, localValue7, localValue8 do
        localValue11 = localValue3.gangPerksUnlocked
        localValue122 = "rp_heist_"
        localValue13 = localValue10
        localValue122 = localValue122 .. localValue13
        localValue11 = localValue11[localValue122]
        if localValue11 then
          localValue4 = localValue10
          break
        end
      end
    end
  end
  if localValue4 <= 0 then
    return localValue2
  end
  localValue5 = math
  localValue5 = localValue5.max
  localValue6 = 0
  localValue7 = math
  localValue7 = localValue7.floor
  localValue8 = 100
  localValue8 = localValue8 - localValue4
  localValue8 = localValue2 * localValue8
  localValue8 = localValue8 / 100
  localValue8 = localValue8 + 0.5
  localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13 = localValue7(localValue8)
  return localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
end
cmgOperation3[cmgOperation4] = number3
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0
  return localValue2
  ::continueAtStep10::
  localValue2 = localValue1.gangPerksUnlocked
  localValue2 = localValue2.rp_spray_50
  if localValue2 then
    localValue2 = 50
    return localValue2
  end
  localValue2 = localValue1.gangPerksUnlocked
  localValue2 = localValue2.rp_spray_25
  if localValue2 then
    localValue2 = 25
    return localValue2
  end
  localValue2 = 0
  return localValue2
end
cmgOperation3.getClientGangRpSpraycanDiscountPercent = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0
  return localValue2
  ::continueAtStep10::
  localValue2 = ipairs
  localValue3 = {}
  localValue4 = 15
  localValue5 = 10
  localValue6 = 7
  localValue7 = 5
  localValue3[1] = localValue4
  localValue3[2] = localValue5
  localValue3[3] = localValue6
  localValue3[4] = localValue7
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = localValue1.gangPerksUnlocked
    localValue9 = "rp_wl_vehicles_"
    localValue10 = localValue7
    localValue9 = localValue9 .. localValue10
    localValue8 = localValue8[localValue9]
    if localValue8 then
      return localValue7
    end
  end
  localValue2 = 0
  return localValue2
end
cmgOperation3.getClientGangRpWlVehiclesDiscountPercent = cmgOperation4
cmgOperation3 = 5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = {}
  ::continueAtStep10::
  localValue3 = 0
  localValue4 = cmgOperation.gangSkills
  if localValue4 then
    localValue4 = pairs
    localValue5 = localValue2
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for localValue8, localValue9 in localValue4, localValue5, localValue6, localValue7 do
      if true == localValue9 then
        localValue10 = cmgOperation.gangSkills
        localValue10 = localValue10[localValue8]
        if localValue10 then
          localValue11 = tonumber
          localValue122 = localValue10.extraRankOutfitSlots
          localValue11 = localValue11(localValue122)
          if localValue11 then
            goto continueAtStep30
          end
        end
        localValue11 = 0
        ::continueAtStep30::
        if localValue11 > 0 then
          localValue3 = localValue3 + localValue11
        end
      end
    end
  end
  localValue4 = 1 + localValue3
  localValue5 = cmgOperation3
  if localValue4 > localValue5 then
    localValue4 = cmgOperation3
  end
  if localValue4 < 1 then
    localValue4 = 1
  end
  return localValue4
end
cmgOperation4.getGangRankOutfitSlotMax = number3
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = localValue1.gangPerksUnlocked
  localValue2 = localValue2.rp_ragdoll
  localValue2 = true == localValue2
  return localValue2
end
cmgOperation4.hasGangRpRagdollPerk = number3
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.gangPerksUnlocked
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = localValue1.gangPerksUnlocked
  localValue2 = localValue2.rp_car_theft
  localValue2 = true == localValue2
  return localValue2
end
cmgOperation4.hasGangRpCarTheftPerk = number3
cmgOperation4 = 1
number3 = 1
dataCollection = {}
dataCollection2 = {}
number4 = nil
stateFlag = false
number6 = 1
workingValue3 = nil
dataCollection3 = {}
workingValue4 = nil
number11 = 1
stateFlag2 = false
number14 = 0
number16 = 0
number18 = 1.0
workingValue5 = cmgOperation.colourLookup
workingValue5 = workingValue5.Red
text2 = GetResourceKvpString
dataCollection5 = "cmg_gang_colour"
text2 = text2(dataCollection5)
if not text2 then
  text2 = "Red"
end
dataCollection5 = {}
cmgOperation5 = CMG
cmgOperation5.gangRecognisedGangs = dataCollection5
cmgOperation5 = {}
cmgOperation6 = CMG
cmgOperation6.gangCapturedTurfs = cmgOperation5
cmgOperation6 = {}

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = workingValue
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1.members
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue2[localValue7] = localValue8
  end
  localValue3 = pairs
  localValue4 = localValue1.guests
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue2[localValue7] = localValue8
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = {}
  localValue2 = pairs
  localValue3 = dataCollection4
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = type
    localValue9 = localValue7
    localValue8 = localValue8(localValue9)
    if "string" == localValue8 and "" ~= localValue7 then
      localValue8 = #localValue1
      localValue8 = localValue8 + 1
      localValue9 = {}
      localValue9.gangName = localValue7
      localValue9.isGuest = false
      localValue1[localValue8] = localValue9
    end
  end
  localValue2 = CMG
  localValue2.gangPendingInvites = localValue1
end
cmgOperation7 = workingValue8
cmgOperation7()
cmgOperation7 = RegisterNetEvent
text3 = "2cc35dc0c0"
-- Beginner: this function handles network event "2cc35dc0c0".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = table
  localValue2 = localValue2.count
  localValue3 = dataCollection4
  -- Beginner: result below is count.
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection4
  localValue3[localValue2] = localValue1
  localValue2 = workingValue8
  localValue2()
  localValue2 = notify
  localValue3 = "~g~Gang invite received from "
  localValue4 = tostring
  localValue5 = localValue1 or localValue5
  if not localValue1 then
    localValue5 = ""
  end
  localValue4 = localValue4(localValue5)
  localValue3 = localValue3 .. localValue4
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = TriggerEvent
  localValue3 = "c89367ffd9"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c89367ffd9".
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2cc35dc0c0".
cmgOperation7(text3, workingValue9)
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  if localValue1 then
    localValue3 = type
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if "string" == localValue3 and "" ~= localValue1 then
      goto continueAtStep11
    end
  end
  return
  ::continueAtStep11::
  localValue3 = TriggerServerEvent
  localValue4 = "125d443003"
  localValue5 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "125d443003".
  localValue3(localValue4, localValue5)
  localValue3 = pairs
  localValue4 = dataCollection4
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    if localValue8 == localValue1 then
      localValue9 = dataCollection4
      localValue9[localValue7] = nil
      break
    end
  end
  localValue3 = workingValue8
  localValue3()
end
cmgOperation7.gangAcceptInvite = text3
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  if localValue1 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "string" == localValue2 and "" ~= localValue1 then
      goto continueAtStep11
    end
  end
  return
  ::continueAtStep11::
  localValue2 = pairs
  localValue3 = dataCollection4
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    if localValue7 == localValue1 then
      localValue8 = dataCollection4
      localValue8[localValue6] = nil
      break
    end
  end
  localValue2 = workingValue8
  localValue2()
end
cmgOperation7.gangDeclineInvite = text3

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1) ===
function cmgOperation7(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.GetRageInputText
  localValue3 = localValue1
  localValue4 = "Yes | No"
  localValue2 = localValue2(localValue3, localValue4)
  if "yes" == localValue2 or "Yes" == localValue2 then
    localValue3 = true
    return localValue3
  else
    localValue3 = false
    return localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1.members
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = table
    localValue9 = localValue9.copy
    localValue10 = localValue8
    localValue9 = localValue9(localValue10)
    localValue9.user_id = localValue7
    localValue10 = table
    localValue10 = localValue10.insert
    localValue11 = localValue2
    localValue122 = localValue9
    localValue10(localValue11, localValue122)
  end
  localValue3 = pairs
  localValue4 = localValue1.guests
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = table
    localValue9 = localValue9.copy
    localValue10 = localValue8
    localValue9 = localValue9(localValue10)
    localValue9.lastLogin = "Offline"
    localValue9.user_id = localValue7
    localValue10 = table
    localValue10 = localValue10.insert
    localValue11 = localValue2
    localValue122 = localValue9
    localValue10(localValue11, localValue122)
  end
  localValue3 = {}
  localValue4 = workingValue
  if localValue1 == localValue4 then
    localValue4 = cmgOperation4
    if localValue4 then
      goto continueAtStep47
    end
  end
  localValue4 = number11
  ::continueAtStep47::
  localValue5 = localValue4 - 1
  localValue5 = localValue5 * 10
  localValue5 = localValue5 + 1
  localValue6 = table
  localValue6 = localValue6.count
  localValue7 = localValue1.members
  -- Beginner: result below is count.
  localValue6 = localValue6(localValue7)
  localValue7 = table
  localValue7 = localValue7.count
  localValue8 = localValue1.guests
  -- Beginner: result below is count.
  localValue7 = localValue7(localValue8)
  localValue6 = localValue6 + localValue7
  localValue7 = localValue5
  localValue8 = math
  localValue8 = localValue8.min
  localValue9 = localValue5 + 10
  localValue10 = localValue6 + 1
  localValue8 = localValue8(localValue9, localValue10)
  localValue8 = localValue8 - 1
  localValue9 = 1
  for localValue10 = localValue7, localValue8, localValue9 do
    localValue11 = table
    localValue11 = localValue11.insert
    localValue122 = localValue3
    localValue13 = localValue2[localValue10]
    localValue11(localValue122, localValue13)
  end
  localValue7 = #localValue3
  if 0 == localValue7 then
    localValue7 = workingValue
    if localValue1 == localValue7 then
      localValue7 = math
      localValue7 = localValue7.max
      localValue8 = cmgOperation4
      localValue8 = localValue8 - 1
      localValue9 = 1
      localValue7 = localValue7(localValue8, localValue9)
      cmgOperation4 = localValue7
    else
      localValue7 = math
      localValue7 = localValue7.max
      localValue8 = number11
      localValue8 = localValue8 - 1
      localValue9 = 1
      localValue7 = localValue7(localValue8, localValue9)
      number11 = localValue7
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = workingValue
  if localValue1 then
    localValue1 = workingValue.contributions
    if localValue1 then
      goto continueAtStep9
    end
  end
  localValue1 = {}
  ::continueAtStep9::
  localValue2 = table
  localValue2 = localValue2.sort
  localValue3 = localValue1

  -- === HELPER FUNCTION: localValue4(localValue12, localValue22) ===
  function localValue4(localValue12, localValue22)
    local localValue32, localEventCall
    localValue32 = localValue12.amount
    localEventCall = localValue22.amount
    localValue32 = localValue32 > localEventCall
    return localValue32
  end
  localValue2(localValue3, localValue4)
  localValue2 = {}
  localValue3 = number6
  localValue3 = localValue3 - 1
  localValue3 = localValue3 * 10
  localValue3 = localValue3 + 1
  localValue4 = localValue3
  localValue5 = math
  localValue5 = localValue5.min
  localValue6 = number6
  localValue6 = localValue6 + 10
  localValue7 = #localValue1
  localValue7 = localValue7 + 1
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5 - 1
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    localValue8 = table
    localValue8 = localValue8.insert
    localValue9 = localValue2
    localValue10 = localValue1[localValue7]
    localValue8(localValue9, localValue10)
  end
  localValue4 = #localValue2
  if 0 == localValue4 then
    localValue4 = math
    localValue4 = localValue4.max
    localValue5 = number6
    localValue5 = localValue5 - 1
    localValue6 = 1
    localValue4 = localValue4(localValue5, localValue6)
    number6 = localValue4
  end
  localValue4 = localValue2
  localValue5 = #localValue1
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14
  localValue2 = 0
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7 in localValue3, localValue4, localValue5, localValue6 do
    localValue8 = pairs
    localValue9 = cmgOperation.permissions
    localValue8, localValue9, localValue10, localValue11 = localValue8(localValue9)
    for localValue122, localValue13 in localValue8, localValue9, localValue10, localValue11 do
      localValue14 = localValue13.id
      if localValue14 == localValue7 then
        localValue2 = localValue2 + 1
        break
      end
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, localValue4
  if "Friendly" == localValue1 then
    localValue2 = 50
    localValue3 = 255
    localValue4 = 50
    return localValue2, localValue3, localValue4
  elseif "Enemy" == localValue1 then
    localValue2 = 255
    localValue3 = 50
    localValue4 = 50
    return localValue2, localValue3, localValue4
  else
    localValue2 = 50
    localValue3 = 50
    localValue4 = 50
    return localValue2, localValue3, localValue4
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20
  localValue1 = CMG
  localValue1 = localValue1.gangUseNui
  if localValue1 then
    return
  end
  localValue1 = text
  if "noGang" == localValue1 then
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 200
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = CMG
    localValue1 = localValue1.isNewPlayer
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = drawNativeNotification
      localValue2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
    end
    localValue1 = DrawRect
    localValue2 = 0.471
    localValue3 = 0.329
    localValue4 = 0.285
    localValue5 = -0.005
    localValue6 = 0
    localValue7 = 168
    localValue8 = 255
    localValue9 = 204
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.471
    localValue3 = 0.304
    localValue4 = 0.285
    localValue5 = 0.046
    localValue6 = 0
    localValue7 = 0
    localValue8 = 0
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.471
    localValue3 = 0.428
    localValue4 = 0.285
    localValue5 = 0.194
    localValue6 = 0
    localValue7 = 0
    localValue8 = 0
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.383
    localValue3 = 0.442
    localValue4 = 0.066
    localValue5 = 0.046
    localValue6 = CreateGangSelectionRed
    localValue7 = CreateGangSelectionGreen
    localValue8 = CreateGangSelectionBlue
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.469
    localValue3 = 0.442
    localValue4 = 0.066
    localValue5 = 0.046
    localValue6 = JoinGangSelectionRed
    localValue7 = JoinGangSelectionGreen
    localValue8 = JoinGangSelectionBlue
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawAdvancedText
    localValue2 = 0.558
    localValue3 = 0.303
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.539
    localValue7 = "CMG Gangs"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 7
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.478
    localValue3 = 0.442
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.473
    localValue7 = "Create Gang"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.564
    localValue3 = 0.443
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.473
    localValue7 = "Join Gang"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawRect
    localValue2 = 0.561
    localValue3 = 0.377
    localValue4 = 0.065
    localValue5 = -0.003
    localValue6 = 0
    localValue7 = 168
    localValue8 = 255
    localValue9 = 204
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawAdvancedText
    localValue2 = 0.654
    localValue3 = 0.37
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.364
    localValue7 = "Invite list"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = pairs
    localValue2 = dataCollection4
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      localValue7 = DrawAdvancedText
      localValue8 = 0.656
      localValue9 = 0.02 * localValue5
      localValue9 = 0.398 + localValue9
      localValue10 = 0.005
      localValue11 = 0.0028
      localValue122 = 0.234
      localValue13 = localValue6
      localValue14 = 255
      localValue15 = 255
      localValue16 = 255
      localValue17 = 255
      localValue18 = 0
      number5 = 0
      localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
      localValue7 = CursorInArea
      localValue8 = 0.525
      localValue9 = 0.59
      localValue10 = 0.02 * localValue5
      localValue10 = 0.38 + localValue10
      localValue11 = 0.02 * localValue5
      localValue11 = 0.396 + localValue11
      localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11)
      if localValue7 then
        localValue7 = workingValue12
        if localValue5 ~= localValue7 then
          localValue7 = DrawRect
          localValue8 = 0.56
          localValue9 = 0.02 * localValue5
          localValue9 = 0.39 + localValue9
          localValue10 = 0.062
          localValue11 = 0.019
          localValue122 = 0
          localValue13 = 168
          localValue14 = 255
          localValue15 = 150
          localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
          localValue7 = IsControlJustPressed
          localValue8 = 1
          localValue9 = 329
          localValue7 = localValue7(localValue8, localValue9)
          if not localValue7 then
            localValue7 = IsDisabledControlJustPressed
            localValue8 = 1
            localValue9 = 329
            localValue7 = localValue7(localValue8, localValue9)
          end
          if localValue7 then
            workingValue12 = localValue5
          end
      end
      else
        localValue7 = workingValue12
        if localValue5 == localValue7 then
          localValue7 = DrawRect
          localValue8 = 0.56
          localValue9 = 0.02 * localValue5
          localValue9 = 0.39 + localValue9
          localValue10 = 0.062
          localValue11 = 0.019
          localValue122 = 0
          localValue13 = 168
          localValue14 = 255
          localValue15 = 150
          localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
        end
      end
    end
    localValue1 = CursorInArea
    localValue2 = 0.35
    localValue3 = 0.415
    localValue4 = 0.415
    localValue5 = 0.46
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if localValue1 then
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 168
      CreateGangSelectionBlue = 255
      localValue1 = IsControlJustPressed
      localValue2 = 1
      localValue3 = 329
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
      end
      if localValue1 then
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = CMG
        localValue1 = localValue1.GetRageInputText
        localValue2 = "Enter Gang Name:"
        localValue1 = localValue1(localValue2)
        if nil ~= localValue1 and "null" ~= localValue1 and "" ~= localValue1 then
          localValue2 = TriggerServerEvent
          localValue3 = "36ca78a1b5"
          localValue4 = localValue1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ca78a1b5".
          localValue2(localValue3, localValue4)
        else
          localValue2 = tCMG
          localValue2 = localValue2.notify
          localValue3 = "~r~No gang name entered!"
          -- Beginner: Show a notification to the player.
          localValue2(localValue3)
        end
      end
    else
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 0
      CreateGangSelectionBlue = 0
    end
    localValue1 = CursorInArea
    localValue2 = 0.435
    localValue3 = 0.51
    localValue4 = 0.415
    localValue5 = 0.46
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if localValue1 then
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 168
      JoinGangSelectionBlue = 255
      localValue1 = IsControlJustPressed
      localValue2 = 1
      localValue3 = 329
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
      end
      if localValue1 then
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = workingValue12
        if nil ~= localValue1 then
          localValue2 = workingValue12
          localValue1 = dataCollection4
          localValue1 = localValue1[localValue2]
          workingValue12 = localValue1
          localValue1 = TriggerServerEvent
          localValue2 = "125d443003"
          localValue3 = workingValue12
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "125d443003".
          localValue1(localValue2, localValue3)
          localValue1 = {}
          dataCollection4 = localValue1
          localValue1 = workingValue8
          localValue1()
          localValue1 = "gang"
          text = localValue1
        else
          localValue1 = tCMG
          localValue1 = localValue1.notify
          localValue2 = "~r~No gang invite selected"
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        end
      end
    else
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 0
      JoinGangSelectionBlue = 0
    end
    localValue1 = DrawAdvancedText
    localValue2 = 0.478
    localValue3 = 0.372
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.473
    localValue7 = "Guests"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = CursorInAreaRect
    localValue2 = 0.383
    localValue3 = 0.372
    localValue4 = 0.066
    localValue5 = 0.046
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.383
      localValue3 = 0.372
      localValue4 = 0.066
      localValue5 = 0.046
      localValue6 = number28
      localValue7 = number29
      localValue8 = number30
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = IsControlJustPressed
      localValue2 = 1
      localValue3 = 329
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
      end
      if localValue1 then
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = "guest"
        text = localValue1
      end
    else
      localValue1 = DrawRect
      localValue2 = 0.383
      localValue3 = 0.372
      localValue4 = 0.066
      localValue5 = 0.046
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    end
    localValue1 = workingValue3
    if localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.564
      localValue3 = 0.372
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.473
      localValue7 = "Settings"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInAreaRect
      localValue2 = 0.469
      localValue3 = 0.372
      localValue4 = 0.066
      localValue5 = 0.046
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.469
        localValue3 = 0.372
        localValue4 = 0.066
        localValue5 = 0.046
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "settings"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.469
        localValue3 = 0.372
        localValue4 = 0.066
        localValue5 = 0.046
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    if "funds" == localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.558
      localValue4 = 0.421
      localValue5 = 0.326
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.374
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.378
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "cmg gang - funds"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.581
      localValue3 = 0.464
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.5
      localValue7 = "Gang Funds"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 0
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.581
      localValue3 = 0.502
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "\194\163"
      localValue8 = getMoneyStringFormatted
      localValue9 = workingValue.displayMoney
      localValue8 = localValue8(localValue9)
      localValue7 = localValue7 .. localValue8
      localValue8 = 25
      localValue9 = 199
      localValue10 = 65
      localValue11 = 255
      localValue122 = 0
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.436
      localValue3 = 0.578
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Deposit ("
      localValue8 = tostring
      localValue9 = math
      localValue9 = localValue9.floor
      localValue10 = CMG
      localValue10 = localValue10.getTunableValue
      localValue11 = "gang_tax"
      localValue10 = localValue10(localValue11)
      localValue10 = localValue10 * 100.0
      localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue9(localValue10)
      localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      localValue9 = "% Fee)"
      localValue7 = localValue7 .. localValue8 .. localValue9
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.536
      localValue3 = 0.578
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Deposit All ("
      localValue8 = tostring
      localValue9 = math
      localValue9 = localValue9.floor
      localValue10 = CMG
      localValue10 = localValue10.getTunableValue
      localValue11 = "gang_tax"
      localValue10 = localValue10(localValue11)
      localValue10 = localValue10 * 100.0
      localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue9(localValue10)
      localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      localValue9 = "% Fee)"
      localValue7 = localValue7 .. localValue8 .. localValue9
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.637
      localValue3 = 0.578
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Withdraw"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.737
      localValue3 = 0.578
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Withdraw All"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.775
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Back"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.3083
      localValue3 = 0.3718
      localValue4 = 0.549
      localValue5 = 0.5999
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.341
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = CMG
          localValue1 = localValue1.hasGangPermission
          localValue2 = "deposit"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.GetRageInputText
            localValue2 = "Enter amount:"
            localValue1 = localValue1(localValue2)
            if nil ~= localValue1 then
              localValue2 = TriggerServerEvent
              localValue3 = "36ba8d4574"
              localValue4 = localValue1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ba8d4574".
              localValue2(localValue3, localValue4)
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              localValue2(localValue3)
            end
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You don't have permission to deposit"
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.341
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.4083
      localValue3 = 0.4718
      localValue4 = 0.549
      localValue5 = 0.5999
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.441
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = CMG
          localValue1 = localValue1.hasGangPermission
          localValue2 = "deposit"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "8536953bae"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8536953bae".
            localValue1(localValue2)
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You don't have permission to deposit"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.441
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.5088
      localValue3 = 0.5739
      localValue4 = 0.5481
      localValue5 = 0.6018
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.542
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = CMG
          localValue1 = localValue1.hasGangPermission
          localValue2 = "withdraw"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.GetRageInputText
            localValue2 = "Enter amount:"
            localValue1 = localValue1(localValue2)
            if nil ~= localValue1 then
              localValue2 = TriggerServerEvent
              localValue3 = "21cfbc3c22"
              localValue4 = localValue1
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21cfbc3c22".
              localValue2(localValue3, localValue4)
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              localValue2(localValue3)
            end
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You don't have permission to withdraw"
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.542
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.6088
      localValue3 = 0.6739
      localValue4 = 0.5481
      localValue5 = 0.6018
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.642
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = CMG
          localValue1 = localValue1.hasGangPermission
          localValue2 = "withdraw"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "be7d1bceb0"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be7d1bceb0".
            localValue1(localValue2)
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You don't have permission to withdraw"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.642
        localValue3 = 0.576
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.53645
      localValue3 = 0.653
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "View Contributions"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.4083
      localValue3 = 0.4718
      localValue4 = 0.624
      localValue5 = 0.6749
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.44145
        localValue3 = 0.651
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          workingValue.contributions = nil
          localValue1 = TriggerServerEvent
          localValue2 = "cef5792c69"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cef5792c69".
          localValue1(localValue2)
          localValue1 = "contributions"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.44145
        localValue3 = 0.651
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.637
      localValue3 = 0.653
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Withdraw Turf"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.5088
      localValue3 = 0.5739
      localValue4 = 0.624
      localValue5 = 0.6749
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.542
        localValue3 = 0.651
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = CMG
          localValue1 = localValue1.hasGangPermission
          localValue2 = "withdrawturf"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.GetRageInputText
            localValue2 = "Enter amount:"
            localValue1 = localValue1(localValue2)
            if nil ~= localValue1 then
              localValue2 = tonumber
              localValue3 = localValue1
              localValue2 = localValue2(localValue3)
              if localValue2 then
                localValue2 = TriggerServerEvent
                localValue3 = "6aac8fd738"
                localValue4 = tonumber
                localValue5 = localValue1
                localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue4(localValue5)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6aac8fd738".
                localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
            end
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~No amount entered!"
              -- Beginner: Show a notification to the player.
              localValue2(localValue3)
            end
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~You don't have permission to withdraw turf"
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.542
        localValue3 = 0.651
        localValue4 = 0.075
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.6583
      localValue3 = 0.7056
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "gang"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    if "members" == localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.525
      localValue4 = 0.421
      localValue5 = 0.387
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.308
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.312
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "CMG gang - members"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.448
      localValue3 = 0.52
      localValue4 = 0.295
      localValue5 = 0.291
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.449
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Name"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.506
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "ID"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.555
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Control"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.625
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Last Seen"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.675
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Pin"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.39
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Permissions"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.465
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Lockdown"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.54
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Kick"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.615
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Invite"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.491
      localValue3 = 0.695
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Previous"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.581
      localValue3 = 0.695
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Next"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = table
      localValue1 = localValue1.count
      localValue2 = workingValue.members
      -- Beginner: result below is count.
      localValue1 = localValue1(localValue2)
      localValue2 = table
      localValue2 = localValue2.count
      localValue3 = workingValue.guests
      -- Beginner: result below is count.
      localValue2 = localValue2(localValue3)
      localValue1 = localValue1 + localValue2
      localValue2 = DrawAdvancedText
      localValue3 = 0.536
      localValue4 = 0.695
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = tostring
      localValue9 = cmgOperation4
      localValue8 = localValue8(localValue9)
      localValue9 = "/"
      localValue10 = tostring
      localValue11 = math
      localValue11 = localValue11.ceil
      localValue122 = localValue1 / 10.0
      localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue11(localValue122)
      localValue10 = localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      localValue8 = localValue8 .. localValue9 .. localValue10
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.775
      localValue4 = 0.693
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Back"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = pairs
      localValue3 = text3
      localValue4 = workingValue
      localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue3(localValue4)
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = "Guest"
        localValue9 = localValue7.permissions
        if localValue9 then
          localValue9 = tostring
          localValue10 = math
          localValue10 = localValue10.floor
          localValue11 = workingValue11
          localValue122 = localValue7.permissions
          localValue11 = localValue11(localValue122)
          localValue122 = table
          localValue122 = localValue122.count
          localValue13 = cmgOperation.permissions
          -- Beginner: result below is count.
          localValue122 = localValue122(localValue13)
          localValue11 = localValue11 / localValue122
          localValue11 = localValue11 * 100.0
          localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue10(localValue11)
          localValue9 = localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          localValue10 = "%"
          localValue9 = localValue9 .. localValue10
          localValue8 = localValue9
        end
        localValue9 = DrawAdvancedText
        localValue10 = 0.449
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue7.name
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = DrawAdvancedText
        localValue10 = 0.506
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue7.user_id
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = DrawAdvancedText
        localValue10 = 0.555
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue8
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = localValue7.lastLogin
        localValue10 = fullPlayerListData
        localValue11 = localValue7.user_id
        localValue10 = localValue10[localValue11]
        if localValue10 then
          localValue10 = CMG
          localValue10 = localValue10.isUserHidden
          localValue11 = localValue7.user_id
          localValue10 = localValue10(localValue11)
          if not localValue10 then
            localValue9 = "Online"
          end
        end
        localValue10 = DrawAdvancedText
        localValue11 = 0.625
        localValue122 = 0.0287 * localValue6
        localValue122 = 0.361 + localValue122
        localValue13 = 0.005
        localValue14 = 0.0028
        localValue15 = 0.4
        localValue16 = localValue9
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 255
        number8 = 6
        number9 = 0
        localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9)
        localValue10 = dataCollection.pinnedPlayers
        localValue11 = localValue7.user_id
        localValue10 = localValue10[localValue11]
        if localValue10 then
          localValue10 = workingValue.isAdvanced
          if localValue10 then
            localValue10 = "\240\159\147\140"
            if localValue10 then
              goto continueAtStep1502
            end
          end
        end
        localValue10 = "\226\173\149"
        ::continueAtStep1502::
        localValue11 = DrawAdvancedText
        localValue122 = 0.675
        localValue13 = 0.0287 * localValue6
        localValue13 = 0.3665 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.2
        localValue17 = localValue10
        localValue18 = 255
        number5 = 255
        number7 = 255
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = CursorInArea
        localValue122 = 0.3005
        localValue13 = 0.5955
        localValue14 = localValue6 - 1
        localValue14 = 0.0287 * localValue14
        localValue14 = 0.3731 + localValue14
        localValue15 = localValue6 - 1
        localValue15 = 0.0287 * localValue15
        localValue15 = 0.4018 + localValue15
        localValue11 = localValue11(localValue122, localValue13, localValue14, localValue15)
        if localValue11 then
          localValue11 = workingValue16
          localValue122 = localValue7.user_id
          if localValue11 ~= localValue122 then
            localValue11 = DrawRect
            localValue122 = 0.448
            localValue13 = localValue6 - 1
            localValue13 = 0.0287 * localValue13
            localValue13 = 0.388 + localValue13
            localValue14 = 0.295
            localValue15 = 0.027
            localValue16 = number28
            localValue17 = number29
            localValue18 = number30
            number5 = 150
            localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
            localValue11 = IsControlJustPressed
            localValue122 = 1
            localValue13 = 329
            localValue11 = localValue11(localValue122, localValue13)
            if not localValue11 then
              localValue11 = IsDisabledControlJustPressed
              localValue122 = 1
              localValue13 = 329
              localValue11 = localValue11(localValue122, localValue13)
            end
            if localValue11 then
              localValue11 = PlaySound
              localValue122 = -1
              localValue13 = "SELECT"
              localValue14 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              localValue15 = false
              localValue16 = 0
              localValue17 = true
              localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
              localValue11 = localValue7.user_id
              workingValue16 = localValue11
            end
        end
        else
          localValue11 = workingValue16
          localValue122 = localValue7.user_id
          if localValue11 == localValue122 then
            localValue11 = DrawRect
            localValue122 = 0.448
            localValue13 = localValue6 - 1
            localValue13 = 0.0287 * localValue13
            localValue13 = 0.388 + localValue13
            localValue14 = 0.295
            localValue15 = 0.027
            localValue16 = number28
            localValue17 = number29
            localValue18 = number30
            number5 = 150
            localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
          end
        end
        localValue11 = CursorInArea
        localValue122 = 0.5755
        localValue13 = 0.5955
        localValue14 = localValue6 - 1
        localValue14 = 0.0287 * localValue14
        localValue14 = 0.3731 + localValue14
        localValue15 = localValue6 - 1
        localValue15 = 0.0287 * localValue15
        localValue15 = 0.4018 + localValue15
        localValue11 = localValue11(localValue122, localValue13, localValue14, localValue15)
        if localValue11 then
          localValue11 = IsControlJustPressed
          localValue122 = 1
          localValue13 = 329
          localValue11 = localValue11(localValue122, localValue13)
          if not localValue11 then
            localValue11 = IsDisabledControlJustPressed
            localValue122 = 1
            localValue13 = 329
            localValue11 = localValue11(localValue122, localValue13)
            if not localValue11 then
              goto continueAtStep1654
            end
          end
          localValue11 = workingValue.isAdvanced
          if localValue11 then
            localValue11 = dataCollection.pinnedPlayers
            localValue122 = localValue7.user_id
            localValue11 = localValue11[localValue122]
            if localValue11 then
              localValue11 = dataCollection.pinnedPlayers
              localValue122 = localValue7.user_id
              localValue11[localValue122] = nil
            else
              localValue11 = dataCollection.pinnedPlayers
              localValue122 = localValue7.user_id
              localValue11[localValue122] = true
            end
            localValue11 = SetResourceKvp
            localValue122 = "cmg_gang_pinned"
            localValue13 = json
            localValue13 = localValue13.encode
            localValue14 = dataCollection.pinnedPlayers
            localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue13(localValue14)
            localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          else
            localValue11 = notify
            localValue122 = "~r~You must have the advanced gang license to pin a player."
            -- Beginner: Show a notification to the player.
            localValue11(localValue122)
          end
        end
        ::continueAtStep1654::
      end
      localValue2 = CursorInArea
      localValue3 = 0.6182
      localValue4 = 0.6822
      localValue5 = 0.36
      localValue6 = 0.416
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.388
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = workingValue16
          if nil ~= localValue2 then
            localValue2 = workingValue
            if localValue2 then
              localValue2 = workingValue.members
              localValue3 = workingValue16
              localValue2 = localValue2[localValue3]
              if localValue2 then
                localValue2 = "permissions"
                text = localValue2
            end
          end
          else
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~No gang member selected"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.388
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.6182
      localValue4 = 0.6822
      localValue5 = 0.435
      localValue6 = 0.491
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.463
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = workingValue16
          if nil ~= localValue2 then
            localValue2 = workingValue
            if localValue2 then
              localValue2 = workingValue.members
              localValue3 = workingValue16
              localValue2 = localValue2[localValue3]
              if localValue2 then
                localValue2 = TriggerServerEvent
                localValue3 = "e959bf3016"
                localValue4 = workingValue16
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e959bf3016".
                localValue2(localValue3, localValue4)
            end
          end
          else
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~No gang member selected"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.463
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.6182
      localValue4 = 0.6822
      localValue5 = 0.51
      localValue6 = 0.566
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.538
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
          if not localValue2 then
            goto continueAtStep1893
          end
        end
        localValue2 = PlaySound
        localValue3 = -1
        localValue4 = "SELECT"
        localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue6 = false
        localValue7 = 0
        localValue8 = true
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
        localValue2 = workingValue16
        if nil ~= localValue2 then
          localValue2 = workingValue.members
          localValue3 = workingValue16
          localValue2 = localValue2[localValue3]
          localValue2 = nil ~= localValue2
          if localValue2 then
            localValue3 = "kickmember"
            if localValue3 then
              goto continueAtStep1847
            end
          end
          localValue3 = "kickguest"
          ::continueAtStep1847::
          localValue4 = CMG
          localValue4 = localValue4.hasGangPermission
          localValue5 = localValue3
          localValue4 = localValue4(localValue5)
          if localValue4 then
            localValue4 = cmgOperation7
            localValue5 = "Are you sure?"
            localValue4 = localValue4(localValue5)
            if localValue4 then
              localValue4 = workingValue.members
              localValue5 = workingValue16
              localValue4 = localValue4[localValue5]
              if localValue4 then
                localValue4 = TriggerServerEvent
                localValue5 = "85c0cc23f6"
                localValue6 = workingValue16
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "85c0cc23f6".
                localValue4(localValue5, localValue6)
              else
                localValue4 = TriggerServerEvent
                localValue5 = "550d5b91c6"
                localValue6 = workingValue16
                localValue4(localValue5, localValue6)
              end
            end
          else
            localValue4 = tCMG
            localValue4 = localValue4.notify
            localValue5 = "~r~You don't have permission to kick!"
            -- Beginner: Show a notification to the player.
            localValue4(localValue5)
          end
        else
          localValue2 = tCMG
          localValue2 = localValue2.notify
          localValue3 = "~r~No gang member selected"
          localValue2(localValue3)
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.538
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      ::continueAtStep1893::
      localValue2 = CursorInArea
      localValue3 = 0.6182
      localValue4 = 0.6822
      localValue5 = 0.585
      localValue6 = 0.641
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.613
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = CMG
          localValue2 = localValue2.hasGangPermission
          localValue3 = "invitemember"
          localValue2 = localValue2(localValue3)
          if localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.GetRageInputText
            localValue3 = "Enter Perm ID to invite:"
            localValue2 = localValue2(localValue3)
            if nil ~= localValue2 then
              localValue3 = tonumber
              localValue4 = localValue2
              localValue3 = localValue3(localValue4)
              if localValue3 then
                localValue3 = TriggerServerEvent
                localValue4 = "a3ebe947dd"
                localValue5 = tonumber
                localValue6 = localValue2
                localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue5(localValue6)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a3ebe947dd".
                localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
            end
            else
              localValue3 = tCMG
              localValue3 = localValue3.notify
              localValue4 = "Invalid Perm ID entered"
              -- Beginner: Show a notification to the player.
              localValue3(localValue4)
            end
          else
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~You don't have permission to invite players"
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.613
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.3735
      localValue4 = 0.4185
      localValue5 = 0.6768
      localValue6 = 0.7074
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.396
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = cmgOperation4
          if localValue2 <= 1 then
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          else
            localValue2 = cmgOperation4
            localValue2 = localValue2 - 1
            cmgOperation4 = localValue2
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.396
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.4635
      localValue4 = 0.5085
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.486
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = cmgOperation4
          localValue3 = math
          localValue3 = localValue3.ceil
          localValue4 = localValue1 / 10.0
          localValue3 = localValue3(localValue4)
          if localValue2 >= localValue3 then
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          else
            localValue2 = cmgOperation4
            localValue2 = localValue2 + 1
            cmgOperation4 = localValue2
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.486
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.6583
      localValue4 = 0.7056
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = "gang"
          text = localValue2
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    localValue2 = "logs"
    if localValue1 == localValue2 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.525
      localValue4 = 0.421
      localValue5 = 0.387
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.308
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.312
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "CMG gang - logs"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.502
      localValue3 = 0.52
      localValue4 = 0.387
      localValue5 = 0.286
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.449
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Name"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.51
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "UserID"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.583
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Date"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.757
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Amount"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.673
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "New Balance"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.592
      localValue3 = 0.6925
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = tostring
      localValue8 = number3
      localValue7 = localValue7(localValue8)
      localValue8 = "/"
      localValue9 = tostring
      localValue10 = math
      localValue10 = localValue10.ceil
      localValue11 = workingValue
      localValue122 = "logCount"
      localValue11 = localValue11[localValue122]
      localValue11 = localValue11 / 10.0
      localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue10(localValue11)
      localValue9 = localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      localValue7 = localValue7 .. localValue8 .. localValue9
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.775
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Back"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.6583
      localValue3 = 0.7056
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "gang"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = pairs
      localValue2 = workingValue
      localValue3 = "logs"
      localValue2 = localValue2[localValue3]
      if not localValue2 then
        localValue2 = {}
      end
      localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
      for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
        localValue7 = "amount"
        localValue7 = localValue6[localValue7]
        if localValue7 >= 0 then
          localValue7 = 50
          if localValue7 then
            goto continueAtStep2385
          end
        end
        localValue7 = 255
        ::continueAtStep2385::
        localValue8 = "amount"
        localValue8 = localValue6[localValue8]
        if localValue8 >= 0 then
          localValue8 = 255
          if localValue8 then
            goto continueAtStep2393
          end
        end
        localValue8 = 50
        ::continueAtStep2393::
        localValue9 = 50
        localValue10 = localValue6.user_id
        if -1 == localValue10 then
          localValue10 = "N/A"
          if localValue10 then
            goto continueAtStep2403
          end
        end
        localValue10 = tostring
        localValue11 = localValue6.user_id
        localValue10 = localValue10(localValue11)
        ::continueAtStep2403::
        localValue11 = DrawAdvancedText
        localValue122 = 0.449
        localValue13 = 0.0287 * localValue5
        localValue14 = 0.365
        localValue13 = localValue14 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.4
        localValue17 = localValue6.name
        localValue18 = localValue7
        number5 = localValue8
        number7 = localValue9
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = DrawAdvancedText
        localValue122 = 0.51
        localValue13 = 0.0287 * localValue5
        localValue14 = 0.365
        localValue13 = localValue14 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.4
        localValue17 = localValue10
        localValue18 = localValue7
        number5 = localValue8
        number7 = localValue9
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = DrawAdvancedText
        localValue122 = 0.583
        localValue13 = 0.0287 * localValue5
        localValue14 = 0.365
        localValue13 = localValue14 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.4
        localValue17 = "date"
        localValue17 = localValue6[localValue17]
        localValue18 = localValue7
        number5 = localValue8
        number7 = localValue9
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = DrawAdvancedText
        localValue122 = 0.673
        localValue13 = 0.0287 * localValue5
        localValue14 = 0.365
        localValue13 = localValue14 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.4
        localValue17 = "\194\163"
        localValue18 = getMoneyStringFormatted
        number5 = "newBalance"
        number5 = localValue6[number5]
        localValue18 = localValue18(number5)
        localValue17 = localValue17 .. localValue18
        localValue18 = localValue7
        number5 = localValue8
        number7 = localValue9
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = DrawAdvancedText
        localValue122 = 0.757
        localValue13 = 0.0287 * localValue5
        localValue14 = 0.365
        localValue13 = localValue14 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.4
        localValue17 = "\194\163"
        localValue18 = getMoneyStringFormatted
        number5 = math
        number7 = "abs"
        number5 = number5[number7]
        number7 = "amount"
        number7 = localValue6[number7]
        number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = number5(number7)
        localValue18 = localValue18(number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
        localValue17 = localValue17 .. localValue18
        localValue18 = localValue7
        number5 = localValue8
        number7 = localValue9
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = CursorInArea
        localValue122 = 0.3005
        localValue13 = 0.5955
        localValue14 = localValue5 - 1
        localValue14 = 0.0287 * localValue14
        localValue14 = 0.3731 + localValue14
        localValue15 = localValue5 - 1
        localValue15 = 0.0287 * localValue15
        localValue15 = 0.4018 + localValue15
        localValue11 = localValue11(localValue122, localValue13, localValue14, localValue15)
        if localValue11 then
          localValue11 = DrawRect
          localValue122 = 0.502
          localValue13 = localValue5 - 1
          localValue13 = 0.0287 * localValue13
          localValue13 = 0.39 + localValue13
          localValue14 = 0.387
          localValue15 = 0.027
          localValue16 = number28
          localValue17 = number29
          localValue18 = number30
          number5 = 150
          localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
          localValue11 = DrawAdvancedText
          localValue122 = 0.591
          localValue13 = 0.75
          localValue14 = 0.005
          localValue15 = 0.0028
          localValue16 = 0.48
          localValue17 = "reason"
          localValue17 = localValue6[localValue17]
          if localValue17 then
            localValue17 = "reason"
            localValue17 = localValue6[localValue17]
            if localValue17 then
              goto continueAtStep2556
            end
          end
          localValue17 = "No Reason Provided"
          ::continueAtStep2556::
          localValue18 = 255
          number5 = 255
          number7 = 255
          number8 = 255
          number9 = 4
          number10 = 0
          localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        end
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.547
      localValue3 = 0.692
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Previous"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.4195
      localValue3 = 0.4845
      localValue4 = 0.6768
      localValue5 = 0.7074
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.452
        localValue3 = 0.69
        localValue4 = 0.065
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = number3
          if localValue1 <= 1 then
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          else
            localValue1 = number3
            localValue1 = localValue1 - 1
            number3 = localValue1
            localValue1 = workingValue
            localValue2 = "logs"
            localValue1[localValue2] = nil
            localValue1 = TriggerServerEvent
            localValue2 = "3f8f33322f"
            localValue3 = number3
            localValue4 = stateFlag
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
            localValue1(localValue2, localValue3, localValue4)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.452
        localValue3 = 0.69
        localValue4 = 0.065
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.639
      localValue3 = 0.692
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Next"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.5125
      localValue3 = 0.5775
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.545
        localValue3 = 0.69
        localValue4 = 0.065
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = number3
          localValue2 = math
          localValue2 = localValue2.ceil
          localValue3 = workingValue
          localValue4 = "logCount"
          localValue3 = localValue3[localValue4]
          localValue3 = localValue3 / 10.0
          localValue2 = localValue2(localValue3)
          if localValue1 >= localValue2 then
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          else
            localValue1 = number3
            localValue1 = localValue1 + 1
            number3 = localValue1
            localValue1 = workingValue
            localValue2 = "logs"
            localValue1[localValue2] = nil
            localValue1 = TriggerServerEvent
            localValue2 = "3f8f33322f"
            localValue3 = number3
            localValue4 = stateFlag
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
            localValue1(localValue2, localValue3, localValue4)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.545
        localValue3 = 0.69
        localValue4 = 0.065
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.415
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = stateFlag
      if localValue7 then
        localValue7 = "Show Turf"
        if localValue7 then
          goto continueAtStep2753
        end
      end
      localValue7 = "Hide Turf"
      ::continueAtStep2753::
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.2985
      localValue3 = 0.3435
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.321
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = stateFlag
          localValue1 = not localValue1
          stateFlag = localValue1
          localValue1 = workingValue
          localValue2 = "logs"
          localValue1[localValue2] = nil
          localValue1 = TriggerServerEvent
          localValue2 = "3f8f33322f"
          localValue3 = number3
          localValue4 = stateFlag
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
          localValue1(localValue2, localValue3, localValue4)
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.321
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
    end
  end
  localValue1 = text
  if "contributions" == localValue1 then
    localValue1 = workingValue9
    localValue1, localValue2 = localValue1()
    localValue3 = DrawRect
    localValue4 = 0.501
    localValue5 = 0.525
    localValue6 = 0.421
    localValue7 = 0.387
    localValue8 = 0
    localValue9 = 0
    localValue10 = 0
    localValue11 = 150
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    localValue3 = DrawRect
    localValue4 = 0.501
    localValue5 = 0.308
    localValue6 = 0.421
    localValue7 = 0.047
    localValue8 = 18
    localValue9 = 82
    localValue10 = 228
    localValue11 = 248
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    localValue3 = DrawAdvancedText
    localValue4 = 0.591
    localValue5 = 0.312
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.48
    localValue9 = "CMG gang - contributions"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 7
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawRect
    localValue4 = 0.502
    localValue5 = 0.52
    localValue6 = 0.387
    localValue7 = 0.286
    localValue8 = 0
    localValue9 = 0
    localValue10 = 0
    localValue11 = 150
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    localValue3 = DrawAdvancedText
    localValue4 = 0.449
    localValue5 = 0.365
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Name"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawAdvancedText
    localValue4 = 0.53
    localValue5 = 0.365
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "UserID"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawAdvancedText
    localValue4 = 0.623
    localValue5 = 0.365
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Last Contribution"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawAdvancedText
    localValue4 = 0.727
    localValue5 = 0.365
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Total Amount"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawAdvancedText
    localValue4 = 0.592
    localValue5 = 0.6925
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = tostring
    localValue10 = number3
    localValue9 = localValue9(localValue10)
    localValue10 = "/"
    localValue11 = tostring
    localValue122 = math
    localValue122 = localValue122.ceil
    localValue13 = localValue2 / 10.0
    localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue122(localValue13)
    localValue11 = localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
    localValue9 = localValue9 .. localValue10 .. localValue11
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = DrawAdvancedText
    localValue4 = 0.775
    localValue5 = 0.693
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Back"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = CursorInArea
    localValue4 = 0.6583
    localValue5 = 0.7056
    localValue6 = 0.6712
    localValue7 = 0.7064
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
    if localValue3 then
      localValue3 = DrawRect
      localValue4 = 0.681
      localValue5 = 0.689
      localValue6 = 0.045
      localValue7 = 0.036
      localValue8 = number28
      localValue9 = number29
      localValue10 = number30
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
      localValue3 = IsControlJustPressed
      localValue4 = 1
      localValue5 = 329
      localValue3 = localValue3(localValue4, localValue5)
      if not localValue3 then
        localValue3 = IsDisabledControlJustPressed
        localValue4 = 1
        localValue5 = 329
        localValue3 = localValue3(localValue4, localValue5)
      end
      if localValue3 then
        localValue3 = PlaySound
        localValue4 = -1
        localValue5 = "SELECT"
        localValue6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue7 = false
        localValue8 = 0
        localValue9 = true
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue3 = "gang"
        text = localValue3
      end
    else
      localValue3 = DrawRect
      localValue4 = 0.681
      localValue5 = 0.689
      localValue6 = 0.045
      localValue7 = 0.036
      localValue8 = 0
      localValue9 = 0
      localValue10 = 0
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    end
    localValue3 = pairs
    localValue4 = localValue1
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = "amount"
      localValue9 = localValue8[localValue9]
      if localValue9 >= 0 then
        localValue9 = 50
        if localValue9 then
          goto continueAtStep3019
        end
      end
      localValue9 = 255
      ::continueAtStep3019::
      localValue10 = "amount"
      localValue10 = localValue8[localValue10]
      if localValue10 >= 0 then
        localValue10 = 255
        if localValue10 then
          goto continueAtStep3027
        end
      end
      localValue10 = 50
      ::continueAtStep3027::
      localValue11 = 50
      localValue122 = localValue8.user_id
      if -1 == localValue122 then
        localValue122 = "N/A"
        if localValue122 then
          goto continueAtStep3037
        end
      end
      localValue122 = tostring
      localValue13 = localValue8.user_id
      localValue122 = localValue122(localValue13)
      ::continueAtStep3037::
      localValue13 = DrawAdvancedText
      localValue14 = 0.449
      localValue15 = 0.0287 * localValue7
      localValue16 = 0.365
      localValue15 = localValue16 + localValue15
      localValue16 = 0.005
      localValue17 = 0.0028
      localValue18 = 0.4
      number5 = localValue8.name
      number7 = localValue9
      number8 = localValue10
      number9 = localValue11
      number10 = 255
      number12 = 6
      number13 = 0
      localValue13(localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13)
      localValue13 = DrawAdvancedText
      localValue14 = 0.53
      localValue15 = 0.0287 * localValue7
      localValue16 = 0.365
      localValue15 = localValue16 + localValue15
      localValue16 = 0.005
      localValue17 = 0.0028
      localValue18 = 0.4
      number5 = localValue122
      number7 = localValue9
      number8 = localValue10
      number9 = localValue11
      number10 = 255
      number12 = 6
      number13 = 0
      localValue13(localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13)
      localValue13 = DrawAdvancedText
      localValue14 = 0.623
      localValue15 = 0.0287 * localValue7
      localValue16 = 0.365
      localValue15 = localValue16 + localValue15
      localValue16 = 0.005
      localValue17 = 0.0028
      localValue18 = 0.4
      number5 = "lastContribution"
      number5 = localValue8[number5]
      number7 = localValue9
      number8 = localValue10
      number9 = localValue11
      number10 = 255
      number12 = 6
      number13 = 0
      localValue13(localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13)
      localValue13 = DrawAdvancedText
      localValue14 = 0.727
      localValue15 = 0.0287 * localValue7
      localValue16 = 0.365
      localValue15 = localValue16 + localValue15
      localValue16 = 0.005
      localValue17 = 0.0028
      localValue18 = 0.4
      number5 = "\194\163"
      number7 = getMoneyStringFormatted
      number8 = "amount"
      number8 = localValue8[number8]
      number7 = number7(number8)
      number5 = number5 .. number7
      number7 = localValue9
      number8 = localValue10
      number9 = localValue11
      number10 = 255
      number12 = 6
      number13 = 0
      localValue13(localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13)
    end
    localValue3 = DrawAdvancedText
    localValue4 = 0.547
    localValue5 = 0.692
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Previous"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = CursorInArea
    localValue4 = 0.4195
    localValue5 = 0.4845
    localValue6 = 0.6768
    localValue7 = 0.7074
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
    if localValue3 then
      localValue3 = DrawRect
      localValue4 = 0.452
      localValue5 = 0.69
      localValue6 = 0.065
      localValue7 = 0.036
      localValue8 = number28
      localValue9 = number29
      localValue10 = number30
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
      localValue3 = IsControlJustPressed
      localValue4 = 1
      localValue5 = 329
      localValue3 = localValue3(localValue4, localValue5)
      if not localValue3 then
        localValue3 = IsDisabledControlJustPressed
        localValue4 = 1
        localValue5 = 329
        localValue3 = localValue3(localValue4, localValue5)
      end
      if localValue3 then
        localValue3 = PlaySound
        localValue4 = -1
        localValue5 = "SELECT"
        localValue6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue7 = false
        localValue8 = 0
        localValue9 = true
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue3 = number6
        if localValue3 <= 1 then
          localValue3 = tCMG
          localValue3 = localValue3.notify
          localValue4 = "~r~Lowest page reached"
          -- Beginner: Show a notification to the player.
          localValue3(localValue4)
        else
          localValue3 = number6
          localValue3 = localValue3 - 1
          number6 = localValue3
        end
      end
    else
      localValue3 = DrawRect
      localValue4 = 0.452
      localValue5 = 0.69
      localValue6 = 0.065
      localValue7 = 0.036
      localValue8 = 0
      localValue9 = 0
      localValue10 = 0
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    end
    localValue3 = DrawAdvancedText
    localValue4 = 0.639
    localValue5 = 0.692
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Next"
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 4
    localValue15 = 0
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = CursorInArea
    localValue4 = 0.5125
    localValue5 = 0.5775
    localValue6 = 0.6712
    localValue7 = 0.7064
    localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
    if localValue3 then
      localValue3 = DrawRect
      localValue4 = 0.545
      localValue5 = 0.69
      localValue6 = 0.065
      localValue7 = 0.036
      localValue8 = number28
      localValue9 = number29
      localValue10 = number30
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
      localValue3 = IsControlJustPressed
      localValue4 = 1
      localValue5 = 329
      localValue3 = localValue3(localValue4, localValue5)
      if not localValue3 then
        localValue3 = IsDisabledControlJustPressed
        localValue4 = 1
        localValue5 = 329
        localValue3 = localValue3(localValue4, localValue5)
      end
      if localValue3 then
        localValue3 = PlaySound
        localValue4 = -1
        localValue5 = "SELECT"
        localValue6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue7 = false
        localValue8 = 0
        localValue9 = true
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue3 = number6
        localValue4 = math
        localValue4 = localValue4.ceil
        localValue5 = localValue2 / 10.0
        localValue4 = localValue4(localValue5)
        if localValue3 >= localValue4 then
          localValue3 = tCMG
          localValue3 = localValue3.notify
          localValue4 = "~r~Max page reached"
          -- Beginner: Show a notification to the player.
          localValue3(localValue4)
        else
          localValue3 = number6
          localValue3 = localValue3 + 1
          number6 = localValue3
        end
      end
    else
      localValue3 = DrawRect
      localValue4 = 0.545
      localValue5 = 0.69
      localValue6 = 0.065
      localValue7 = 0.036
      localValue8 = 0
      localValue9 = 0
      localValue10 = 0
      localValue11 = 150
      localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
    end
  end
  localValue1 = text
  if "settings" == localValue1 then
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.525
    localValue4 = 0.421
    localValue5 = 0.387
    localValue6 = 0
    localValue7 = 0
    localValue8 = 0
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.308
    localValue4 = 0.421
    localValue5 = 0.047
    localValue6 = 18
    localValue7 = 82
    localValue8 = 228
    localValue9 = 248
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawAdvancedText
    localValue2 = 0.591
    localValue3 = 0.312
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.48
    localValue7 = "CMG gang - settings"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 7
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.398
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "Permissions Guide"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.436
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "New members by can only deposit by default"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.457
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "This can be configured in the members page"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.51
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "To withdraw, invite, kick and access more"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.572
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "A leader has full access to the gang."
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.7
    localValue3 = 0.532
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.46
    localValue7 = "permissions must be given in members page."
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 6
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = workingValue
    if localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 0.451
      localValue3 = 0.616
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Leave Gang"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.554
      localValue3 = 0.615
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Disband Gang"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.5025
      localValue3 = 0.69
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Set Gang Tag"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    end
    localValue1 = DrawAdvancedText
    localValue2 = 0.775
    localValue3 = 0.693
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.4
    localValue7 = "Back"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = workingValue6
    localValue1 = localValue1()
    localValue2 = workingValue
    if localValue2 then
      localValue2 = CursorInArea
      localValue3 = 0.3187
      localValue4 = 0.3937
      localValue5 = 0.5712
      localValue6 = 0.6462
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.357
        localValue4 = 0.61
        localValue5 = 0.075
        localValue6 = 0.076
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = workingValue
          if localValue1 == localValue2 then
            localValue2 = cmgOperation7
            localValue3 = "Are you sure?"
            localValue2 = localValue2(localValue3)
            if localValue2 then
              localValue2 = TriggerServerEvent
              localValue3 = "4d87711de5"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4d87711de5".
              localValue2(localValue3)
              localValue2 = "noGang"
              text = localValue2
              localValue2 = CMG
              localValue3 = "setCursor"
              localValue2 = localValue2[localValue3]
              localValue3 = 0
              localValue2(localValue3)
              localValue2 = _ENV
              localValue3 = "SetPlayerControl"
              localValue2 = localValue2[localValue3]
              localValue3 = _ENV
              localValue4 = "PlayerId"
              localValue3 = localValue3[localValue4]
              localValue3 = localValue3()
              localValue4 = true
              localValue5 = 0
              localValue2(localValue3, localValue4, localValue5)
            end
          else
            localValue2 = notify
            localValue3 = "~r~You must have your main gang selected to use this."
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.357
        localValue4 = 0.61
        localValue5 = 0.075
        localValue6 = 0.076
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.4197
      localValue4 = 0.4932
      localValue5 = 0.5712
      localValue6 = 0.6462
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.457
        localValue4 = 0.61
        localValue5 = 0.075
        localValue6 = 0.076
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = workingValue
          if localValue1 == localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.hasGangPermission
            localValue3 = "leader"
            localValue2 = localValue2(localValue3)
            if localValue2 then
              localValue2 = cmgOperation7
              localValue3 = "Are you sure?"
              localValue2 = localValue2(localValue3)
              if true == localValue2 then
                localValue2 = TriggerServerEvent
                localValue3 = "2b85de9de2"
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2b85de9de2".
                localValue2(localValue3)
              else
                localValue2 = tCMG
                localValue2 = localValue2.notify
                localValue3 = "~r~Cancelled disbanding gang."
                -- Beginner: Show a notification to the player.
                localValue2(localValue3)
              end
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~You don't have permission to disband!"
              localValue2(localValue3)
            end
          else
            localValue2 = notify
            localValue3 = "~r~You must have your main gang selected to use this."
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.457
        localValue4 = 0.61
        localValue5 = 0.075
        localValue6 = 0.076
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInAreaRect
      localValue3 = 0.407
      localValue4 = 0.69
      localValue5 = 0.075
      localValue6 = 0.04
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.407
        localValue4 = 0.687
        localValue5 = 0.075
        localValue6 = 0.04
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = workingValue
          if localValue1 == localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.hasGangPermission
            localValue3 = "leader"
            localValue2 = localValue2(localValue3)
            if localValue2 then
              localValue2 = TriggerServerEvent
              localValue3 = "9dad3c2a94"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dad3c2a94".
              localValue2(localValue3)
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~Only a leader can set the gang tag!"
              -- Beginner: Show a notification to the player.
              localValue2(localValue3)
            end
          else
            localValue2 = notify
            localValue3 = "~r~You must have your main gang selected to use this."
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.407
        localValue4 = 0.687
        localValue5 = 0.075
        localValue6 = 0.04
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    end
    localValue2 = CursorInArea
    localValue3 = 0.6583
    localValue4 = 0.7056
    localValue5 = 0.6712
    localValue6 = 0.7064
    localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
    if localValue2 then
      localValue2 = DrawRect
      localValue3 = 0.681
      localValue4 = 0.689
      localValue5 = 0.045
      localValue6 = 0.036
      localValue7 = number28
      localValue8 = number29
      localValue9 = number30
      localValue10 = 150
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      localValue2 = IsControlJustPressed
      localValue3 = 1
      localValue4 = 329
      localValue2 = localValue2(localValue3, localValue4)
      if not localValue2 then
        localValue2 = IsDisabledControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
      end
      if localValue2 then
        localValue2 = PlaySound
        localValue3 = -1
        localValue4 = "SELECT"
        localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue6 = false
        localValue7 = 0
        localValue8 = true
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
        localValue2 = workingValue
        if localValue2 then
          localValue2 = "gang"
          text = localValue2
        else
          localValue2 = "noGang"
          text = localValue2
        end
      end
    else
      localValue2 = DrawRect
      localValue3 = 0.681
      localValue4 = 0.689
      localValue5 = 0.045
      localValue6 = 0.036
      localValue7 = 0
      localValue8 = 0
      localValue9 = 0
      localValue10 = 150
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
    end
    if localValue1 then
      localValue2 = localValue1.isAdvanced
      if localValue2 then
        localValue2 = dataCollection
        localValue3 = "blips"
        localValue2 = localValue2[localValue3]
        if localValue2 then
          localValue2 = "Disable"
          if localValue2 then
            goto continueAtStep3760
          end
        end
        localValue2 = "Enable"
        ::continueAtStep3760::
        localValue3 = DrawAdvancedText
        localValue4 = 0.451
        localValue5 = 0.416
        localValue6 = 0.005
        localValue7 = 0.0028
        localValue8 = 0.4
        localValue9 = localValue2
        localValue10 = " Blips"
        localValue9 = localValue9 .. localValue10
        localValue10 = 255
        localValue11 = 255
        localValue122 = 255
        localValue13 = 255
        localValue14 = 6
        localValue15 = 0
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
        localValue3 = CursorInArea
        localValue4 = 0.3187
        localValue5 = 0.3937
        localValue6 = 0.3712
        localValue7 = 0.4462
        localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
        if localValue3 then
          localValue3 = DrawRect
          localValue4 = 0.357
          localValue5 = 0.41
          localValue6 = 0.075
          localValue7 = 0.076
          localValue8 = number28
          localValue9 = number29
          localValue10 = number30
          localValue11 = 150
          localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
          localValue3 = IsControlJustPressed
          localValue4 = 1
          localValue5 = 329
          localValue3 = localValue3(localValue4, localValue5)
          if not localValue3 then
            localValue3 = IsDisabledControlJustPressed
            localValue4 = 1
            localValue5 = 329
            localValue3 = localValue3(localValue4, localValue5)
            if not localValue3 then
              goto continueAtStep3874
            end
          end
          localValue3 = PlaySound
          localValue4 = -1
          localValue5 = "SELECT"
          localValue6 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue7 = false
          localValue8 = 0
          localValue9 = true
          localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
          localValue3 = dataCollection
          localValue4 = "blips"
          localValue5 = dataCollection
          localValue6 = "blips"
          localValue5 = localValue5[localValue6]
          localValue5 = not localValue5
          localValue3[localValue4] = localValue5
          localValue3 = _ENV
          localValue4 = "TriggerEvent"
          localValue3 = localValue3[localValue4]
          localValue4 = "e713d91b70"
          localValue3(localValue4)
          localValue3 = dataCollection
          localValue4 = "blips"
          localValue3 = localValue3[localValue4]
          if not localValue3 then
            localValue3 = _ENV
            localValue4 = "TriggerEvent"
            localValue3 = localValue3[localValue4]
            localValue4 = "e713d91b70"
            localValue3(localValue4)
            localValue3 = TriggerServerEvent
            localValue4 = "f9c26121e2"
            localValue5 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
            localValue3(localValue4, localValue5)
          else
            localValue3 = workingValue6
            localValue3 = localValue3()
            localValue4 = workingValue
            if localValue3 == localValue4 then
              localValue3 = "own"
              if localValue3 then
                goto continueAtStep3850
              end
            end
            localValue3 = "guest"
            ::continueAtStep3850::
            localValue4 = TriggerServerEvent
            localValue5 = "f9c26121e2"
            localValue6 = localValue3
            localValue7 = true
            localValue4(localValue5, localValue6, localValue7)
          end
          localValue3 = SetResourceKvp
          localValue4 = "cmg_gang_blips"
          localValue5 = tostring
          localValue6 = dataCollection
          localValue7 = "blips"
          localValue6 = localValue6[localValue7]
          localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue5(localValue6)
          localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
        else
          localValue3 = DrawRect
          localValue4 = 0.357
          localValue5 = 0.41
          localValue6 = 0.075
          localValue7 = 0.076
          localValue8 = 0
          localValue9 = 0
          localValue10 = 0
          localValue11 = 150
          localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
        end
        ::continueAtStep3874::
        localValue3 = dataCollection
        localValue4 = "pings"
        localValue3 = localValue3[localValue4]
        if localValue3 then
          localValue3 = "Disable"
          if localValue3 then
            goto continueAtStep3883
          end
        end
        localValue3 = "Enable"
        ::continueAtStep3883::
        localValue4 = DrawAdvancedText
        localValue5 = 0.554
        localValue6 = 0.415
        localValue7 = 0.005
        localValue8 = 0.0028
        localValue9 = 0.4
        localValue10 = localValue3
        localValue11 = " Pings"
        localValue10 = localValue10 .. localValue11
        localValue11 = 255
        localValue122 = 255
        localValue13 = 255
        localValue14 = 255
        localValue15 = 4
        localValue16 = 0
        localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16)
        localValue4 = CursorInArea
        localValue5 = 0.4197
        localValue6 = 0.4932
        localValue7 = 0.3712
        localValue8 = 0.4462
        localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
        if localValue4 then
          localValue4 = DrawRect
          localValue5 = 0.457
          localValue6 = 0.41
          localValue7 = 0.075
          localValue8 = 0.076
          localValue9 = number28
          localValue10 = number29
          localValue11 = number30
          localValue122 = 150
          localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122)
          localValue4 = IsControlJustPressed
          localValue5 = 1
          localValue6 = 329
          localValue4 = localValue4(localValue5, localValue6)
          if not localValue4 then
            localValue4 = IsDisabledControlJustPressed
            localValue5 = 1
            localValue6 = 329
            localValue4 = localValue4(localValue5, localValue6)
          end
          if localValue4 then
            localValue4 = PlaySound
            localValue5 = -1
            localValue6 = "SELECT"
            localValue7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue8 = false
            localValue9 = 0
            localValue10 = true
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
            localValue4 = dataCollection
            localValue5 = "pings"
            localValue6 = dataCollection
            localValue7 = "pings"
            localValue6 = localValue6[localValue7]
            localValue6 = not localValue6
            localValue4[localValue5] = localValue6
            localValue4 = SetResourceKvp
            localValue5 = "cmg_gang_pings"
            localValue6 = tostring
            localValue7 = dataCollection
            localValue8 = "pings"
            localValue7 = localValue7[localValue8]
            localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue6(localValue7)
            localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          end
        else
          localValue4 = DrawRect
          localValue5 = 0.457
          localValue6 = 0.41
          localValue7 = 0.075
          localValue8 = 0.076
          localValue9 = 0
          localValue10 = 0
          localValue11 = 0
          localValue122 = 150
          localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122)
        end
        localValue4 = dataCollection
        localValue5 = "names"
        localValue4 = localValue4[localValue5]
        if localValue4 then
          localValue4 = "Disable"
          if localValue4 then
            goto continueAtStep3972
          end
        end
        localValue4 = "Enable"
        ::continueAtStep3972::
        localValue5 = DrawAdvancedText
        localValue6 = 0.451
        localValue7 = 0.516
        localValue8 = 0.005
        localValue9 = 0.0028
        localValue10 = 0.4
        localValue11 = localValue4
        localValue122 = " Names"
        localValue11 = localValue11 .. localValue122
        localValue122 = 255
        localValue13 = 255
        localValue14 = 255
        localValue15 = 255
        localValue16 = 6
        localValue17 = 0
        localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
        localValue5 = CursorInArea
        localValue6 = 0.3187
        localValue7 = 0.3937
        localValue8 = 0.4712
        localValue9 = 0.5462
        localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
        if localValue5 then
          localValue5 = DrawRect
          localValue6 = 0.357
          localValue7 = 0.51
          localValue8 = 0.075
          localValue9 = 0.076
          localValue10 = number28
          localValue11 = number29
          localValue122 = number30
          localValue13 = 150
          localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
          localValue5 = IsControlJustPressed
          localValue6 = 1
          localValue7 = 329
          localValue5 = localValue5(localValue6, localValue7)
          if not localValue5 then
            localValue5 = IsDisabledControlJustPressed
            localValue6 = 1
            localValue7 = 329
            localValue5 = localValue5(localValue6, localValue7)
          end
          if localValue5 then
            localValue5 = PlaySound
            localValue6 = -1
            localValue7 = "SELECT"
            localValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue9 = false
            localValue10 = 0
            localValue11 = true
            localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
            localValue5 = dataCollection
            localValue6 = "names"
            localValue7 = dataCollection
            localValue8 = "names"
            localValue7 = localValue7[localValue8]
            localValue7 = not localValue7
            localValue5[localValue6] = localValue7
            localValue5 = SetResourceKvp
            localValue6 = "cmg_gang_names"
            localValue7 = tostring
            localValue8 = dataCollection
            localValue9 = "names"
            localValue8 = localValue8[localValue9]
            localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue7(localValue8)
            localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          end
        else
          localValue5 = DrawRect
          localValue6 = 0.357
          localValue7 = 0.51
          localValue8 = 0.075
          localValue9 = 0.076
          localValue10 = 0
          localValue11 = 0
          localValue122 = 0
          localValue13 = 150
          localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
        end
        localValue5 = workingValue
        if localValue5 then
          localValue5 = DrawAdvancedText
          localValue6 = 0.554
          localValue7 = 0.515
          localValue8 = 0.005
          localValue9 = 0.0028
          localValue10 = 0.4
          localValue11 = "Rename Gang"
          localValue122 = 255
          localValue13 = 255
          localValue14 = 255
          localValue15 = 255
          localValue16 = 4
          localValue17 = 0
          localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
          localValue5 = CursorInArea
          localValue6 = 0.4197
          localValue7 = 0.4932
          localValue8 = 0.4712
          localValue9 = 0.5462
          localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9)
          if localValue5 then
            localValue5 = DrawRect
            localValue6 = 0.457
            localValue7 = 0.51
            localValue8 = 0.075
            localValue9 = 0.076
            localValue10 = number28
            localValue11 = number29
            localValue122 = number30
            localValue13 = 150
            localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
            localValue5 = IsControlJustPressed
            localValue6 = 1
            localValue7 = 329
            localValue5 = localValue5(localValue6, localValue7)
            if not localValue5 then
              localValue5 = IsDisabledControlJustPressed
              localValue6 = 1
              localValue7 = 329
              localValue5 = localValue5(localValue6, localValue7)
            end
            if localValue5 then
              localValue5 = PlaySound
              localValue6 = -1
              localValue7 = "SELECT"
              localValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              localValue9 = false
              localValue10 = 0
              localValue11 = true
              localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
              localValue5 = workingValue.isAdvanced
              if localValue5 then
                localValue5 = CMG
                localValue5 = localValue5.GetRageInputText
                localValue6 = "Enter Gang Name:"
                localValue5 = localValue5(localValue6)
                if nil ~= localValue5 and "null" ~= localValue5 and "" ~= localValue5 then
                  localValue6 = TriggerServerEvent
                  localValue7 = "7a95907fc0"
                  localValue8 = localValue5
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a95907fc0".
                  localValue6(localValue7, localValue8)
                else
                  localValue6 = tCMG
                  localValue6 = localValue6.notify
                  localValue7 = "~r~No gang name entered!"
                  -- Beginner: Show a notification to the player.
                  localValue6(localValue7)
                end
              else
                localValue5 = notify
                localValue6 = "~r~Your main gang does not have the advanced license."
                localValue5(localValue6)
              end
            end
          else
            localValue5 = DrawRect
            localValue6 = 0.457
            localValue7 = 0.51
            localValue8 = 0.075
            localValue9 = 0.076
            localValue10 = 0
            localValue11 = 0
            localValue122 = 0
            localValue13 = 150
            localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
          end
        end
        localValue5 = _ENV
        localValue6 = "GetHudColour"
        localValue5 = localValue5[localValue6]
        localValue6 = cmgOperation
        localValue7 = "colourLookup"
        localValue6 = localValue6[localValue7]
        localValue7 = text2
        localValue6 = localValue6[localValue7]
        localValue7 = "hud"
        localValue6 = localValue6[localValue7]
        localValue5, localValue6, localValue7 = localValue5(localValue6)
        localValue8 = DrawAdvancedText
        localValue9 = 0.645
        localValue10 = 0.63
        localValue11 = 0.005
        localValue122 = 0.0028
        localValue13 = 0.46
        localValue14 = "Your Blip Colour: "
        localValue15 = 255
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 6
        number7 = 0
        localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7)
        localValue8 = DrawRect
        localValue9 = 0.62
        localValue10 = 0.628
        localValue11 = 0.05
        localValue122 = 0.025
        localValue13 = localValue5
        localValue14 = localValue6
        localValue15 = localValue7
        localValue16 = 255
        localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16)
        localValue8 = CursorInArea
        localValue9 = 0.595
        localValue10 = 0.645
        localValue11 = 0.6155
        localValue122 = 0.6405
        localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122)
        if localValue8 then
          localValue8 = IsControlJustPressed
          localValue9 = 1
          localValue10 = 329
          localValue8 = localValue8(localValue9, localValue10)
          if not localValue8 then
            localValue8 = IsDisabledControlJustPressed
            localValue9 = 1
            localValue10 = 329
            localValue8 = localValue8(localValue9, localValue10)
          end
          if localValue8 then
            localValue8 = false
            localValue9 = false
            localValue10 = pairs
            localValue11 = cmgOperation
            localValue122 = "colourLookup"
            localValue11 = localValue11[localValue122]
            localValue10, localValue11, localValue122, localValue13 = localValue10(localValue11)
            for localValue14 in localValue10, localValue11, localValue122, localValue13 do
              localValue15 = text2
              if localValue14 == localValue15 then
                localValue8 = true
              elseif localValue8 then
                text2 = localValue14
                localValue9 = true
                break
              end
            end
            if not localValue9 then
              localValue10 = pairs
              localValue11 = cmgOperation
              localValue122 = "colourLookup"
              localValue11 = localValue11[localValue122]
              localValue10, localValue11, localValue122, localValue13 = localValue10(localValue11)
              for localValue14 in localValue10, localValue11, localValue122, localValue13 do
                text2 = localValue14
                break
              end
            end
            localValue10 = SetResourceKvp
            localValue11 = "cmg_gang_colour"
            localValue122 = text2
            localValue10(localValue11, localValue122)
            localValue10 = TriggerServerEvent
            localValue11 = "a74c553948"
            localValue122 = text2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a74c553948".
            localValue10(localValue11, localValue122)
          end
        end
    end
    else
      localValue2 = DrawAdvancedText
      localValue3 = 0.5
      localValue4 = 0.406
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Purchase Advanced License\n(\194\16350,000,000)"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 6
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.5
      localValue4 = 0.476
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = [[
NOTE:
This purchase is tied to the gang.
Any member will be able to use the features.]]
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 6
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = CursorInArea
      localValue3 = 0.3187
      localValue4 = 0.4932
      localValue5 = 0.3712
      localValue6 = 0.5462
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.407
        localValue4 = 0.46
        localValue5 = 0.175
        localValue6 = 0.176
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = TriggerServerEvent
          localValue3 = "40cb8bd46d"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cb8bd46d".
          localValue2(localValue3)
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.407
        localValue4 = 0.46
        localValue5 = 0.175
        localValue6 = 0.176
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    localValue2 = "rpturfs"
    if localValue1 == localValue2 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.525
      localValue4 = 0.421
      localValue5 = 0.387
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.308
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.312
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "CMG Gang - RP Turfs"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.502
      localValue3 = 0.52
      localValue4 = 0.387
      localValue5 = 0.286
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.449
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Gang Name"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.657
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Our Relationship"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.757
      localValue3 = 0.365
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Their Relationship"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.775
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Back"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.6583
      localValue3 = 0.7056
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "gang"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = workingValue
      localValue2 = "id"
      localValue2 = localValue1[localValue2]
      localValue1 = dataCollection5
      localValue1 = localValue1[localValue2]
      localValue2 = 1
      localValue3 = pairs
      localValue4 = dataCollection5
      localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
      for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
        localValue9 = workingValue
        localValue10 = "id"
        localValue9 = localValue9[localValue10]
        if localValue7 ~= localValue9 then
          localValue9 = "relationships"
          localValue9 = localValue1[localValue9]
          localValue9 = localValue9[localValue7]
          if not localValue9 then
            localValue9 = "Neutral"
          end
          localValue10 = "relationships"
          localValue10 = localValue8[localValue10]
          localValue11 = workingValue
          localValue122 = "id"
          localValue11 = localValue11[localValue122]
          localValue10 = localValue10[localValue11]
          if not localValue10 then
            localValue10 = "Neutral"
          end
          localValue11 = DrawAdvancedText
          localValue122 = 0.449
          localValue13 = 0.0287 * localValue2
          localValue14 = 0.365
          localValue13 = localValue14 + localValue13
          localValue14 = 0.005
          localValue15 = 0.0028
          localValue16 = 0.4
          localValue17 = localValue8.name
          localValue18 = 255
          number5 = 255
          number7 = 255
          number8 = 255
          number9 = 6
          number10 = 0
          localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
          localValue11 = workingValue13
          localValue122 = localValue9
          localValue11, localValue122, localValue13 = localValue11(localValue122)
          localValue14 = DrawAdvancedText
          localValue15 = 0.657
          localValue16 = 0.0287 * localValue2
          localValue17 = 0.365
          localValue16 = localValue17 + localValue16
          localValue17 = 0.005
          localValue18 = 0.0028
          number5 = 0.4
          number7 = localValue9
          number8 = localValue11
          number9 = localValue122
          number10 = localValue13
          number12 = 255
          number13 = 6
          number15 = 0
          localValue14(localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15)
          localValue14 = workingValue13
          localValue15 = localValue10
          localValue14, localValue15, localValue16 = localValue14(localValue15)
          localValue17 = DrawAdvancedText
          localValue18 = 0.757
          number5 = 0.0287 * localValue2
          number7 = 0.365
          number5 = number7 + number5
          number7 = 0.005
          number8 = 0.0028
          number9 = 0.4
          number10 = localValue10
          number12 = localValue14
          number13 = localValue15
          number15 = localValue16
          number17 = 255
          number19 = 6
          number20 = 0
          localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          localValue17 = CursorInArea
          localValue18 = 0.3005
          number5 = 0.6955
          number7 = localValue2 - 1
          number7 = 0.0287 * number7
          number7 = 0.3731 + number7
          number8 = localValue2 - 1
          number8 = 0.0287 * number8
          number8 = 0.4018 + number8
          localValue17 = localValue17(localValue18, number5, number7, number8)
          if localValue17 then
            localValue17 = DrawRect
            localValue18 = 0.502
            number5 = localValue2 - 1
            number5 = 0.0287 * number5
            number5 = 0.39 + number5
            number7 = 0.387
            number8 = 0.027
            number9 = number28
            number10 = number29
            number12 = number30
            number13 = 150
            localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13)
            localValue17 = IsControlJustPressed
            localValue18 = 1
            number5 = 329
            localValue17 = localValue17(localValue18, number5)
            if not localValue17 then
              localValue17 = IsDisabledControlJustPressed
              localValue18 = 1
              number5 = 329
              localValue17 = localValue17(localValue18, number5)
              if not localValue17 then
                goto continueAtStep4649
              end
            end
            localValue17 = PlaySound
            localValue18 = -1
            number5 = "SELECT"
            number7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            number8 = false
            number9 = 0
            number10 = true
            localValue17(localValue18, number5, number7, number8, number9, number10)
            localValue17 = "Friendly"
            if localValue9 == localValue17 then
              localValue17 = TriggerServerEvent
              localValue18 = "bdbde03161"
              number5 = localValue7
              number7 = "Neutral"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
              localValue17(localValue18, number5, number7)
            else
              localValue17 = "Neutral"
              if localValue9 == localValue17 then
                localValue17 = TriggerServerEvent
                localValue18 = "bdbde03161"
                number5 = localValue7
                number7 = "Enemy"
                localValue17(localValue18, number5, number7)
              else
                localValue17 = "Enemy"
                if localValue9 == localValue17 then
                  localValue17 = TriggerServerEvent
                  localValue18 = "bdbde03161"
                  number5 = localValue7
                  number7 = "Friendly"
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
                  localValue17(localValue18, number5, number7)
                end
              end
            end
          end
          ::continueAtStep4649::
          localValue2 = localValue2 + 1
        end
      end
      localValue3 = "turfColour"
      localValue3 = localValue1[localValue3]
      if not localValue3 then
        localValue3 = "Red"
      end
      localValue4 = DrawAdvancedText
      localValue5 = 0.415
      localValue6 = 0.693
      localValue7 = 0.005
      localValue8 = 0.0028
      localValue9 = 0.4
      localValue10 = "Turf Colour:"
      localValue11 = 255
      localValue122 = 255
      localValue13 = 255
      localValue14 = 255
      localValue15 = 4
      localValue16 = 0
      localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16)
      localValue4 = 0
      localValue5 = 0
      localValue6 = 0
      if localValue3 then
        localValue7 = cmgOperation
        localValue8 = "colourLookup"
        localValue7 = localValue7[localValue8]
        localValue7 = localValue7[localValue3]
        if localValue7 then
          localValue7 = _ENV
          localValue8 = "GetHudColour"
          localValue7 = localValue7[localValue8]
          localValue8 = cmgOperation
          localValue9 = "colourLookup"
          localValue8 = localValue8[localValue9]
          localValue8 = localValue8[localValue3]
          localValue9 = "hud"
          localValue8 = localValue8[localValue9]
          localValue7, localValue8, localValue9 = localValue7(localValue8)
          localValue6 = localValue9
          localValue5 = localValue8
          localValue4 = localValue7
        end
      end
      localValue7 = DrawRect
      localValue8 = 0.367
      localValue9 = 0.689
      localValue10 = 0.045
      localValue11 = 0.03
      localValue122 = localValue4
      localValue13 = localValue5
      localValue14 = localValue6
      localValue15 = 255
      localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
      localValue7 = CursorInAreaRect
      localValue8 = 0.367
      localValue9 = 0.689
      localValue10 = 0.045
      localValue11 = 0.03
      localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11)
      if localValue7 then
        localValue7 = IsControlJustPressed
        localValue8 = 1
        localValue9 = 329
        localValue7 = localValue7(localValue8, localValue9)
        if not localValue7 then
          localValue7 = IsDisabledControlJustPressed
          localValue8 = 1
          localValue9 = 329
          localValue7 = localValue7(localValue8, localValue9)
          if not localValue7 then
            goto continueAtStep4769
          end
        end
        localValue7 = PlaySound
        localValue8 = -1
        localValue9 = "SELECT"
        localValue10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue11 = false
        localValue122 = 0
        localValue13 = true
        localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
        localValue7 = false
        localValue8 = nil
        localValue9 = pairs
        localValue10 = cmgOperation
        localValue11 = "colourLookup"
        localValue10 = localValue10[localValue11]
        localValue9, localValue10, localValue11, localValue122 = localValue9(localValue10)
        for localValue13 in localValue9, localValue10, localValue11, localValue122 do
          if localValue13 == localValue3 then
            localValue7 = true
          elseif localValue7 then
            localValue8 = localValue13
            break
          end
        end
        if not localValue8 then
          localValue9 = table
          localValue10 = "keyat"
          localValue9 = localValue9[localValue10]
          localValue10 = cmgOperation
          localValue11 = "colourLookup"
          localValue10 = localValue10[localValue11]
          localValue11 = 1
          localValue9 = localValue9(localValue10, localValue11)
          localValue8 = localValue9
        end
        localValue9 = TriggerServerEvent
        localValue10 = "adb903a8eb"
        localValue11 = localValue8
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "adb903a8eb".
        localValue9(localValue10, localValue11)
      end
    end
  end
  ::continueAtStep4769::
  localValue1 = text
  localValue2 = "turfs"
  if localValue1 == localValue2 then
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.555
    localValue4 = 0.481
    localValue5 = 0.547
    localValue6 = 0
    localValue7 = 0
    localValue8 = 0
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.3
    localValue4 = 0.481
    localValue5 = 0.047
    localValue6 = 18
    localValue7 = 82
    localValue8 = 228
    localValue9 = 248
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawAdvancedText
    localValue2 = 0.591
    localValue3 = 0.303
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.48
    localValue7 = "CMG gang - Turfs"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 7
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = DrawAdvancedText
    localValue2 = 0.5
    localValue3 = 0.345
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.325
    localValue7 = "Turf profits updated every 15 minutes"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 0
    localValue13 = 1
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = CMG
    localValue2 = "getTurfOwnerAndProfit"
    localValue1 = localValue1[localValue2]
    localValue2 = "weed"
    localValue1, localValue2 = localValue1(localValue2)
    localValue3 = DrawAdvancedText
    localValue4 = 0.369
    localValue5 = 0.38
    localValue6 = 0.005
    localValue7 = 0.0028
    localValue8 = 0.4
    localValue9 = "Weed Turf - (Owned by "
    localValue10 = localValue1
    localValue11 = ") Commission - "
    localValue122 = _ENV
    localValue13 = "globalWeedCommissionPercent"
    localValue122 = localValue122[localValue13]
    localValue13 = "% Profit - \194\163"
    localValue14 = getMoneyStringFormatted
    localValue15 = localValue2
    localValue14 = localValue14(localValue15)
    localValue9 = localValue9 .. localValue10 .. localValue11 .. localValue122 .. localValue13 .. localValue14
    localValue10 = 255
    localValue11 = 255
    localValue122 = 255
    localValue13 = 255
    localValue14 = 0
    localValue15 = 1
    localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
    localValue3 = CMG
    localValue4 = "getTurfOwnerAndProfit"
    localValue3 = localValue3[localValue4]
    localValue4 = "cocaine"
    localValue3, localValue4 = localValue3(localValue4)
    localValue5 = DrawAdvancedText
    localValue6 = 0.369
    localValue7 = 0.44
    localValue8 = 0.005
    localValue9 = 0.0028
    localValue10 = 0.4
    localValue11 = "Cocaine Turf - (Owned by "
    localValue122 = localValue3
    localValue13 = ") Commission - "
    localValue14 = _ENV
    localValue15 = "globalCocaineCommissionPercent"
    localValue14 = localValue14[localValue15]
    localValue15 = "% Profit - \194\163"
    localValue16 = getMoneyStringFormatted
    localValue17 = localValue4
    localValue16 = localValue16(localValue17)
    localValue11 = localValue11 .. localValue122 .. localValue13 .. localValue14 .. localValue15 .. localValue16
    localValue122 = 255
    localValue13 = 255
    localValue14 = 255
    localValue15 = 255
    localValue16 = 0
    localValue17 = 1
    localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
    localValue5 = CMG
    localValue6 = "getTurfOwnerAndProfit"
    localValue5 = localValue5[localValue6]
    localValue6 = "meth"
    localValue5, localValue6 = localValue5(localValue6)
    localValue7 = DrawAdvancedText
    localValue8 = 0.369
    localValue9 = 0.5
    localValue10 = 0.005
    localValue11 = 0.0028
    localValue122 = 0.4
    localValue13 = "Meth Turf - (Owned by "
    localValue14 = localValue5
    localValue15 = ") Commission - "
    localValue16 = _ENV
    localValue17 = "globalMethCommissionPercent"
    localValue16 = localValue16[localValue17]
    localValue17 = "% Profit - \194\163"
    localValue18 = getMoneyStringFormatted
    number5 = localValue6
    localValue18 = localValue18(number5)
    localValue13 = localValue13 .. localValue14 .. localValue15 .. localValue16 .. localValue17 .. localValue18
    localValue14 = 255
    localValue15 = 255
    localValue16 = 255
    localValue17 = 255
    localValue18 = 0
    number5 = 1
    localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
    localValue7 = CMG
    localValue8 = "getTurfOwnerAndProfit"
    localValue7 = localValue7[localValue8]
    localValue8 = "heroin"
    localValue7, localValue8 = localValue7(localValue8)
    localValue9 = DrawAdvancedText
    localValue10 = 0.369
    localValue11 = 0.56
    localValue122 = 0.005
    localValue13 = 0.0028
    localValue14 = 0.4
    localValue15 = "Heroin Turf - (Owned by "
    localValue16 = localValue7
    localValue17 = ") Commission - "
    localValue18 = _ENV
    number5 = "globalHeroinCommissionPercent"
    localValue18 = localValue18[number5]
    number5 = "% Profit - \194\163"
    number7 = getMoneyStringFormatted
    number8 = localValue8
    number7 = number7(number8)
    localValue15 = localValue15 .. localValue16 .. localValue17 .. localValue18 .. number5 .. number7
    localValue16 = 255
    localValue17 = 255
    localValue18 = 255
    number5 = 255
    number7 = 0
    number8 = 1
    localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
    localValue9 = CMG
    localValue10 = "getTurfOwnerAndProfit"
    localValue9 = localValue9[localValue10]
    localValue10 = "large_arms"
    localValue9, localValue10 = localValue9(localValue10)
    localValue11 = DrawAdvancedText
    localValue122 = 0.369
    localValue13 = 0.62
    localValue14 = 0.005
    localValue15 = 0.0028
    localValue16 = 0.4
    localValue17 = "Large Arms - (Owned by "
    localValue18 = localValue9
    number5 = ") Commission - "
    number7 = _ENV
    number8 = "globalLargeArmsCommission"
    number7 = number7[number8]
    number8 = "% Profit - \194\163"
    number9 = getMoneyStringFormatted
    number10 = localValue10
    number9 = number9(number10)
    localValue17 = localValue17 .. localValue18 .. number5 .. number7 .. number8 .. number9
    localValue18 = 255
    number5 = 255
    number7 = 255
    number8 = 255
    number9 = 0
    number10 = 1
    localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
    localValue11 = CMG
    localValue122 = "getTurfOwnerAndProfit"
    localValue11 = localValue11[localValue122]
    localValue122 = "lsd_north"
    localValue11, localValue122 = localValue11(localValue122)
    localValue13 = DrawAdvancedText
    localValue14 = 0.369
    localValue15 = 0.68
    localValue16 = 0.005
    localValue17 = 0.0028
    localValue18 = 0.4
    number5 = "LSD North Turf - (Owned by "
    number7 = localValue11
    number8 = ") Commission - "
    number9 = _ENV
    number10 = "globalLSDNorthCommissionPercent"
    number9 = number9[number10]
    number10 = "% Profit - \194\163"
    number12 = getMoneyStringFormatted
    number13 = localValue122
    number12 = number12(number13)
    number5 = number5 .. number7 .. number8 .. number9 .. number10 .. number12
    number7 = 255
    number8 = 255
    number9 = 255
    number10 = 255
    number12 = 0
    number13 = 1
    localValue13(localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13)
    localValue13 = CMG
    localValue14 = "getTurfOwnerAndProfit"
    localValue13 = localValue13[localValue14]
    localValue14 = "lsd_south"
    localValue13, localValue14 = localValue13(localValue14)
    localValue15 = DrawAdvancedText
    localValue16 = 0.369
    localValue17 = 0.74
    localValue18 = 0.005
    number5 = 0.0028
    number7 = 0.4
    number8 = "LSD South Turf - (Owned by "
    number9 = localValue13
    number10 = ") Commission - "
    number12 = _ENV
    number13 = "globalLSDSouthCommissionPercent"
    number12 = number12[number13]
    number13 = "% Profit - \194\163"
    number15 = getMoneyStringFormatted
    number17 = localValue14
    number15 = number15(number17)
    number8 = number8 .. number9 .. number10 .. number12 .. number13 .. number15
    number9 = 255
    number10 = 255
    number12 = 255
    number13 = 255
    number15 = 0
    number17 = 1
    localValue15(localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17)
    localValue15 = CMG
    localValue16 = "getTurfOwnerAndProfit"
    localValue15 = localValue15[localValue16]
    localValue16 = "black_market"
    localValue15, localValue16 = localValue15(localValue16)
    localValue17 = DrawAdvancedText
    localValue18 = 0.369
    number5 = 0.8
    number7 = 0.005
    number8 = 0.0028
    number9 = 0.4
    number10 = "Black Market - (Owned by "
    number12 = localValue15
    number13 = ") Commission - "
    number15 = _ENV
    number17 = "globalBlackMarketCommision"
    number15 = number15[number17]
    number17 = "% Profit - \194\163"
    number19 = getMoneyStringFormatted
    number20 = localValue16
    number19 = number19(number20)
    number10 = number10 .. number12 .. number13 .. number15 .. number17 .. number19
    number12 = 255
    number13 = 255
    number15 = 255
    number17 = 255
    number19 = 0
    number20 = 1
    localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
    localValue17 = DrawAdvancedText
    localValue18 = 0.804
    number5 = 0.744
    number7 = 0.005
    number8 = 0.0028
    number9 = 0.4
    number10 = "Back"
    number12 = 255
    number13 = 255
    number15 = 255
    number17 = 255
    number19 = 4
    number20 = 0
    localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
    localValue17 = CursorInArea
    localValue18 = 0.6873
    number5 = 0.7346
    number7 = 0.7222
    number8 = 0.7574
    localValue17 = localValue17(localValue18, number5, number7, number8)
    if localValue17 then
      localValue17 = DrawRect
      localValue18 = 0.71
      number5 = 0.74
      number7 = 0.045
      number8 = 0.036
      number9 = number28
      number10 = number29
      number12 = number30
      number13 = 150
      localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13)
      localValue17 = IsControlJustPressed
      localValue18 = 1
      number5 = 329
      localValue17 = localValue17(localValue18, number5)
      if not localValue17 then
        localValue17 = IsDisabledControlJustPressed
        localValue18 = 1
        number5 = 329
        localValue17 = localValue17(localValue18, number5)
      end
      if localValue17 then
        localValue17 = PlaySound
        localValue18 = -1
        number5 = "SELECT"
        number7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        number8 = false
        number9 = 0
        number10 = true
        localValue17(localValue18, number5, number7, number8, number9, number10)
        localValue17 = "gang"
        text = localValue17
      end
    else
      localValue17 = DrawRect
      localValue18 = 0.71
      number5 = 0.74
      number7 = 0.045
      number8 = 0.036
      number9 = 0
      number10 = 0
      number12 = 0
      number13 = 150
      localValue17(localValue18, number5, number7, number8, number9, number10, number12, number13)
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    localValue2 = "security"
    if localValue1 == localValue2 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.525
      localValue4 = 0.421
      localValue5 = 0.387
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.308
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.312
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "CMG gang - security"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.375
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "Maximum withdraw amount per member:"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.405
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Sets the maximum amount of money a member can withdraw within a 24 hour time period."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.525
      localValue3 = 0.377
      localValue4 = 0.1
      localValue5 = 0.03
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 175
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.575
      localValue3 = 0.377
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.44
      localValue7 = "\194\163"
      localValue8 = getMoneyStringFormatted
      localValue9 = workingValue
      localValue10 = "maxWithdraw"
      localValue9 = localValue9[localValue10]
      localValue8 = localValue8(localValue9)
      localValue7 = localValue7 .. localValue8
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.31
      localValue3 = 0.65
      localValue4 = 0.36
      localValue5 = 0.41
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
          if not localValue1 then
            goto continueAtStep5281
          end
        end
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = CMG
        localValue1 = localValue1.hasGangPermission
        localValue2 = "security"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.GetRageInputText
          localValue2 = "Enter amount:"
          localValue1 = localValue1(localValue2)
          if localValue1 then
            localValue2 = tonumber
            localValue3 = localValue1
            localValue2 = localValue2(localValue3)
            if localValue2 then
              localValue2 = tonumber
              localValue3 = localValue1
              localValue2 = localValue2(localValue3)
              if localValue2 >= 0 then
                localValue2 = TriggerServerEvent
                localValue3 = "b674c758b8"
                localValue4 = tonumber
                localValue5 = localValue1
                localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue4(localValue5)
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b674c758b8".
                localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
            end
          end
          else
            localValue2 = notify
            localValue3 = "~r~Invalid amount entered."
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          end
        else
          localValue1 = notify
          localValue2 = "~r~You do not have permission to edit security.."
          localValue1(localValue2)
        end
      end
      ::continueAtStep5281::
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.475
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "Limit withdraw amount to deposit amount:"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.505
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Prevents a member withdrawing more money then they have deposited into the funds."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.525
      localValue3 = 0.475
      localValue4 = 0.1
      localValue5 = 0.03
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 175
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.575
      localValue3 = 0.475
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = workingValue
      localValue8 = "limitWithdrawDeposit"
      localValue7 = localValue7[localValue8]
      if localValue7 then
        localValue7 = "Yes"
        if localValue7 then
          goto continueAtStep5334
        end
      end
      localValue7 = "No"
      ::continueAtStep5334::
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.31
      localValue3 = 0.65
      localValue4 = 0.46
      localValue5 = 0.51
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
          if not localValue1 then
            goto continueAtStep5386
          end
        end
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = CMG
        localValue1 = localValue1.hasGangPermission
        localValue2 = "security"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = cmgOperation7
          localValue2 = "Enable?"
          localValue1 = localValue1(localValue2)
          localValue2 = TriggerServerEvent
          localValue3 = "58d834d15a"
          localValue4 = localValue1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58d834d15a".
          localValue2(localValue3, localValue4)
        else
          localValue1 = notify
          localValue2 = "~r~You do not have permission to edit security."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        end
      end
      ::continueAtStep5386::
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.575
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "Require reason for deposit/withdraw:"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.4
      localValue3 = 0.605
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Requires a member to provide a reason for depositing or withdrawing from funds."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.525
      localValue3 = 0.575
      localValue4 = 0.1
      localValue5 = 0.03
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 175
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.575
      localValue3 = 0.575
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = workingValue
      localValue8 = "requireWithdrawReason"
      localValue7 = localValue7[localValue8]
      if localValue7 then
        localValue7 = "Yes"
        if localValue7 then
          goto continueAtStep5439
        end
      end
      localValue7 = "No"
      ::continueAtStep5439::
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 1
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.31
      localValue3 = 0.65
      localValue4 = 0.56
      localValue5 = 0.61
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
          if not localValue1 then
            goto continueAtStep5491
          end
        end
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = CMG
        localValue1 = localValue1.hasGangPermission
        localValue2 = "security"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = cmgOperation7
          localValue2 = "Enable?"
          localValue1 = localValue1(localValue2)
          localValue2 = TriggerServerEvent
          localValue3 = "5d7f40bb9d"
          localValue4 = localValue1
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d7f40bb9d".
          localValue2(localValue3, localValue4)
        else
          localValue1 = notify
          localValue2 = "~r~You do not have permission to edit security."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        end
      end
      ::continueAtStep5491::
      localValue1 = DrawAdvancedText
      localValue2 = 0.775
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Back"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.6583
      localValue3 = 0.7056
      localValue4 = 0.6712
      localValue5 = 0.7064
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "gang"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.681
        localValue3 = 0.689
        localValue4 = 0.045
        localValue5 = 0.036
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    if "permissions" == localValue1 then
      localValue1 = workingValue.members
      localValue2 = workingValue16
      localValue1 = localValue1[localValue2]
      if localValue1 then
        localValue2 = localValue1.permissions
        if localValue2 then
          goto continueAtStep5573
        end
      end
      localValue2 = "members"
      text = localValue2
      return
      ::continueAtStep5573::
      localValue2 = DrawRect
      localValue3 = 0.501
      localValue4 = 0.525
      localValue5 = 0.421
      localValue6 = 0.387
      localValue7 = 0
      localValue8 = 0
      localValue9 = 0
      localValue10 = 150
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      localValue2 = DrawRect
      localValue3 = 0.501
      localValue4 = 0.308
      localValue5 = 0.421
      localValue6 = 0.047
      localValue7 = 18
      localValue8 = 82
      localValue9 = 228
      localValue10 = 248
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      localValue2 = DrawAdvancedText
      localValue3 = 0.591
      localValue4 = 0.312
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.48
      localValue8 = "CMG gang - permissions"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 7
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawRect
      localValue3 = 0.501
      localValue4 = 0.52
      localValue5 = 0.395
      localValue6 = 0.291
      localValue7 = 0
      localValue8 = 0
      localValue9 = 0
      localValue10 = 150
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      localValue2 = DrawAdvancedText
      localValue3 = 0.449
      localValue4 = 0.359
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Permission"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 6
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.536
      localValue4 = 0.359
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Has Access"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 6
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.675
      localValue4 = 0.359
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Description"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 6
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = pairs
      localValue3 = cmgOperation.permissions
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = localValue1.permissions
        localValue9 = "id"
        localValue9 = localValue7[localValue9]
        localValue8 = localValue8[localValue9]
        if localValue8 then
          localValue8 = true
          if localValue8 then
            goto continueAtStep5673
          end
        end
        localValue8 = false
        ::continueAtStep5673::
        if localValue8 then
          localValue9 = 50
          if localValue9 then
            goto continueAtStep5679
          end
        end
        localValue9 = 255
        ::continueAtStep5679::
        if localValue8 then
          localValue10 = 255
          if localValue10 then
            goto continueAtStep5685
          end
        end
        localValue10 = 50
        ::continueAtStep5685::
        localValue11 = 50
        localValue122 = DrawAdvancedText
        localValue13 = 0.449
        localValue14 = 0.0287 * localValue6
        localValue14 = 0.361 + localValue14
        localValue15 = 0.005
        localValue16 = 0.0028
        localValue17 = 0.4
        localValue18 = localValue7.name
        number5 = localValue9
        number7 = localValue10
        number8 = localValue11
        number9 = 255
        number10 = 6
        number12 = 0
        localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12)
        localValue122 = DrawAdvancedText
        localValue13 = 0.536
        localValue14 = 0.0287 * localValue6
        localValue14 = 0.361 + localValue14
        localValue15 = 0.005
        localValue16 = 0.0028
        localValue17 = 0.4
        if localValue8 then
          localValue18 = "Yes"
          if localValue18 then
            goto continueAtStep5718
          end
        end
        localValue18 = "No"
        ::continueAtStep5718::
        number5 = localValue9
        number7 = localValue10
        number8 = localValue11
        number9 = 255
        number10 = 6
        number12 = 0
        localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12)
        localValue122 = DrawAdvancedText
        localValue13 = 0.675
        localValue14 = 0.0287 * localValue6
        localValue14 = 0.361 + localValue14
        localValue15 = 0.005
        localValue16 = 0.0028
        localValue17 = 0.4
        localValue18 = "description"
        localValue18 = localValue7[localValue18]
        number5 = localValue9
        number7 = localValue10
        number8 = localValue11
        number9 = 255
        number10 = 6
        number12 = 0
        localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12)
        localValue122 = CursorInArea
        localValue13 = 0.3005
        localValue14 = 0.5955
        localValue15 = localValue6 - 1
        localValue15 = 0.0287 * localValue15
        localValue15 = 0.3731 + localValue15
        localValue16 = localValue6 - 1
        localValue16 = 0.0287 * localValue16
        localValue16 = 0.4018 + localValue16
        localValue122 = localValue122(localValue13, localValue14, localValue15, localValue16)
        if localValue122 then
          localValue122 = IsControlJustPressed
          localValue13 = 1
          localValue14 = 329
          localValue122 = localValue122(localValue13, localValue14)
          if not localValue122 then
            localValue122 = IsDisabledControlJustPressed
            localValue13 = 1
            localValue14 = 329
            localValue122 = localValue122(localValue13, localValue14)
            if not localValue122 then
              goto continueAtStep5780
            end
          end
          localValue122 = TriggerServerEvent
          localValue13 = "a6cd82c68e"
          localValue14 = workingValue16
          localValue15 = "id"
          localValue15 = localValue7[localValue15]
          localValue16 = not localValue8
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6cd82c68e".
          localValue122(localValue13, localValue14, localValue15, localValue16)
        end
        ::continueAtStep5780::
      end
      localValue2 = DrawAdvancedText
      localValue3 = 0.4
      localValue4 = 0.693
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Editing permissions for "
      localValue9 = localValue1.name
      localValue10 = " (User ID: "
      localValue11 = tostring
      localValue122 = workingValue16
      localValue11 = localValue11(localValue122)
      localValue122 = ")"
      localValue8 = localValue8 .. localValue9 .. localValue10 .. localValue11 .. localValue122
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 1
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.775
      localValue4 = 0.693
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Back"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = CursorInArea
      localValue3 = 0.6583
      localValue4 = 0.7056
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = "members"
          text = localValue2
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    end
  end
  localValue1 = text
  if "guest" == localValue1 then
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.525
    localValue4 = 0.421
    localValue5 = 0.387
    localValue6 = 0
    localValue7 = 0
    localValue8 = 0
    localValue9 = 150
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawRect
    localValue2 = 0.501
    localValue3 = 0.308
    localValue4 = 0.421
    localValue5 = 0.047
    localValue6 = 18
    localValue7 = 82
    localValue8 = 228
    localValue9 = 248
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    localValue1 = DrawAdvancedText
    localValue2 = 0.591
    localValue3 = 0.312
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.48
    localValue7 = "CMG gang - guest"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 7
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = workingValue3
    if localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.448
      localValue3 = 0.52
      localValue4 = 0.295
      localValue5 = 0.291
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.449
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Name"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.506
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "ID"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.555
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Control"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.625
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Last Seen"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.675
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Pin"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = workingValue
      if localValue1 then
        localValue1 = workingValue3
        if localValue1 then
          localValue1 = stateFlag2
          if localValue1 then
            localValue1 = "Remove Selection"
            if localValue1 then
              goto continueAtStep6002
            end
          end
          localValue1 = "Set As Selected"
          ::continueAtStep6002::
          localValue2 = DrawAdvancedText
          localValue3 = 0.746
          localValue4 = 0.465
          localValue5 = 0.005
          localValue6 = 0.0028
          localValue7 = 0.4
          localValue8 = localValue1
          localValue9 = 255
          localValue10 = 255
          localValue11 = 255
          localValue122 = 255
          localValue13 = 4
          localValue14 = 0
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
        end
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.54
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Leave"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.491
      localValue3 = 0.695
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Previous"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.581
      localValue3 = 0.695
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Next"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = table
      localValue1 = localValue1.count
      localValue2 = workingValue3.members
      -- Beginner: result below is count.
      localValue1 = localValue1(localValue2)
      localValue2 = table
      localValue2 = localValue2.count
      localValue3 = workingValue3.guests
      -- Beginner: result below is count.
      localValue2 = localValue2(localValue3)
      localValue1 = localValue1 + localValue2
      localValue2 = DrawAdvancedText
      localValue3 = 0.536
      localValue4 = 0.695
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = tostring
      localValue9 = number11
      localValue8 = localValue8(localValue9)
      localValue9 = "/"
      localValue10 = tostring
      localValue11 = math
      localValue11 = localValue11.ceil
      localValue122 = localValue1 / 10.0
      localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue11(localValue122)
      localValue10 = localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      localValue8 = localValue8 .. localValue9 .. localValue10
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = DrawAdvancedText
      localValue3 = 0.775
      localValue4 = 0.693
      localValue5 = 0.005
      localValue6 = 0.0028
      localValue7 = 0.4
      localValue8 = "Back"
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 255
      localValue13 = 4
      localValue14 = 0
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
      localValue2 = workingValue
      if localValue2 then
        localValue2 = DrawAdvancedText
        localValue3 = 0.746
        localValue4 = 0.622
        localValue5 = 0.005
        localValue6 = 0.0028
        localValue7 = 0.473
        localValue8 = "Invite Guest"
        localValue9 = 255
        localValue10 = 255
        localValue11 = 255
        localValue122 = 255
        localValue13 = 4
        localValue14 = 0
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
        localValue2 = CursorInAreaRect
        localValue3 = 0.651
        localValue4 = 0.622
        localValue5 = 0.065
        localValue6 = 0.056
        localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
        if localValue2 then
          localValue2 = DrawRect
          localValue3 = 0.651
          localValue4 = 0.622
          localValue5 = 0.065
          localValue6 = 0.056
          localValue7 = 0
          localValue8 = 168
          localValue9 = 255
          localValue10 = 150
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
          localValue2 = IsControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
          if not localValue2 then
            localValue2 = IsDisabledControlJustPressed
            localValue3 = 1
            localValue4 = 329
            localValue2 = localValue2(localValue3, localValue4)
          end
          if localValue2 then
            localValue2 = PlaySound
            localValue3 = -1
            localValue4 = "SELECT"
            localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue6 = false
            localValue7 = 0
            localValue8 = true
            localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
            localValue2 = CMG
            localValue2 = localValue2.hasGangPermission
            localValue3 = "inviteguest"
            localValue2 = localValue2(localValue3)
            if localValue2 then
              localValue2 = CMG
              localValue2 = localValue2.GetRageInputText
              localValue3 = "Enter Perm ID to invite:"
              localValue2 = localValue2(localValue3)
              if nil ~= localValue2 then
                localValue3 = tonumber
                localValue4 = localValue2
                localValue3 = localValue3(localValue4)
                if localValue3 then
                  localValue3 = TriggerServerEvent
                  localValue4 = "306a9cdbc9"
                  localValue5 = tonumber
                  localValue6 = localValue2
                  localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue5(localValue6)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "306a9cdbc9".
                  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
              end
              else
                localValue3 = tCMG
                localValue3 = localValue3.notify
                localValue4 = "Invalid Perm ID entered"
                -- Beginner: Show a notification to the player.
                localValue3(localValue4)
              end
            else
              localValue2 = tCMG
              localValue2 = localValue2.notify
              localValue3 = "~r~You don't have permission to invite players"
              localValue2(localValue3)
            end
          end
        else
          localValue2 = DrawRect
          localValue3 = 0.651
          localValue4 = 0.622
          localValue5 = 0.065
          localValue6 = 0.056
          localValue7 = 0
          localValue8 = 0
          localValue9 = 0
          localValue10 = 150
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        end
      end
      localValue2 = pairs
      localValue3 = text3
      localValue4 = workingValue3
      localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue3(localValue4)
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = "Guest"
        localValue9 = localValue7.permissions
        if localValue9 then
          localValue9 = tostring
          localValue10 = math
          localValue10 = localValue10.floor
          localValue11 = table
          localValue11 = localValue11.count
          localValue122 = localValue7.permissions
          -- Beginner: result below is count.
          localValue11 = localValue11(localValue122)
          localValue122 = table
          localValue122 = localValue122.count
          localValue13 = cmgOperation.permissions
          -- Beginner: result below is count.
          localValue122 = localValue122(localValue13)
          localValue11 = localValue11 / localValue122
          localValue11 = localValue11 * 100.0
          localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue10(localValue11)
          localValue9 = localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          localValue10 = "%"
          localValue9 = localValue9 .. localValue10
          localValue8 = localValue9
        end
        localValue9 = DrawAdvancedText
        localValue10 = 0.449
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue7.name
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = DrawAdvancedText
        localValue10 = 0.506
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue7.user_id
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = DrawAdvancedText
        localValue10 = 0.555
        localValue11 = 0.0287 * localValue6
        localValue11 = 0.361 + localValue11
        localValue122 = 0.005
        localValue13 = 0.0028
        localValue14 = 0.4
        localValue15 = localValue8
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 6
        number8 = 0
        localValue9(localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
        localValue9 = localValue7.lastLogin
        localValue10 = fullPlayerListData
        localValue11 = localValue7.user_id
        localValue10 = localValue10[localValue11]
        if localValue10 then
          localValue10 = CMG
          localValue10 = localValue10.isUserHidden
          localValue11 = localValue7.user_id
          localValue10 = localValue10(localValue11)
          if not localValue10 then
            localValue9 = "Online"
          end
        end
        localValue10 = DrawAdvancedText
        localValue11 = 0.625
        localValue122 = 0.0287 * localValue6
        localValue122 = 0.361 + localValue122
        localValue13 = 0.005
        localValue14 = 0.0028
        localValue15 = 0.4
        localValue16 = localValue9
        localValue17 = 255
        localValue18 = 255
        number5 = 255
        number7 = 255
        number8 = 6
        number9 = 0
        localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9)
        localValue10 = dataCollection.pinnedPlayers
        localValue11 = localValue7.user_id
        localValue10 = localValue10[localValue11]
        if localValue10 then
          localValue10 = workingValue3.isAdvanced
          if localValue10 then
            localValue10 = "\240\159\147\140"
            if localValue10 then
              goto continueAtStep6329
            end
          end
        end
        localValue10 = "\226\173\149"
        ::continueAtStep6329::
        localValue11 = DrawAdvancedText
        localValue122 = 0.675
        localValue13 = 0.0287 * localValue6
        localValue13 = 0.3665 + localValue13
        localValue14 = 0.005
        localValue15 = 0.0028
        localValue16 = 0.2
        localValue17 = localValue10
        localValue18 = 255
        number5 = 255
        number7 = 255
        number8 = 255
        number9 = 6
        number10 = 0
        localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10)
        localValue11 = CursorInArea
        localValue122 = 0.5755
        localValue13 = 0.5955
        localValue14 = localValue6 - 1
        localValue14 = 0.0287 * localValue14
        localValue14 = 0.3731 + localValue14
        localValue15 = localValue6 - 1
        localValue15 = 0.0287 * localValue15
        localValue15 = 0.4018 + localValue15
        localValue11 = localValue11(localValue122, localValue13, localValue14, localValue15)
        if localValue11 then
          localValue11 = IsControlJustPressed
          localValue122 = 1
          localValue13 = 329
          localValue11 = localValue11(localValue122, localValue13)
          if not localValue11 then
            localValue11 = IsDisabledControlJustPressed
            localValue122 = 1
            localValue13 = 329
            localValue11 = localValue11(localValue122, localValue13)
            if not localValue11 then
              goto continueAtStep6402
            end
          end
          localValue11 = workingValue3.isAdvanced
          if localValue11 then
            localValue11 = dataCollection.pinnedPlayers
            localValue122 = localValue7.user_id
            localValue11 = localValue11[localValue122]
            if localValue11 then
              localValue11 = dataCollection.pinnedPlayers
              localValue122 = localValue7.user_id
              localValue11[localValue122] = nil
            else
              localValue11 = dataCollection.pinnedPlayers
              localValue122 = localValue7.user_id
              localValue11[localValue122] = true
            end
            localValue11 = SetResourceKvp
            localValue122 = "cmg_gang_pinned"
            localValue13 = json
            localValue13 = localValue13.encode
            localValue14 = dataCollection.pinnedPlayers
            localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue13(localValue14)
            localValue11(localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
          else
            localValue11 = notify
            localValue122 = "~r~You must have the advanced gang license to pin a player."
            -- Beginner: Show a notification to the player.
            localValue11(localValue122)
          end
        end
        ::continueAtStep6402::
      end
      localValue2 = workingValue
      if localValue2 then
        localValue2 = workingValue3
        if localValue2 then
          localValue2 = CursorInArea
          localValue3 = 0.6182
          localValue4 = 0.6822
          localValue5 = 0.435
          localValue6 = 0.491
          localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
          if localValue2 then
            localValue2 = DrawRect
            localValue3 = 0.651
            localValue4 = 0.463
            localValue5 = 0.065
            localValue6 = 0.056
            localValue7 = number28
            localValue8 = number29
            localValue9 = number30
            localValue10 = 150
            localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
            localValue2 = IsControlJustPressed
            localValue3 = 1
            localValue4 = 329
            localValue2 = localValue2(localValue3, localValue4)
            if not localValue2 then
              localValue2 = IsDisabledControlJustPressed
              localValue3 = 1
              localValue4 = 329
              localValue2 = localValue2(localValue3, localValue4)
              if not localValue2 then
                goto continueAtStep6504
              end
            end
            localValue2 = PlaySound
            localValue3 = -1
            localValue4 = "SELECT"
            localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue6 = false
            localValue7 = 0
            localValue8 = true
            localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
            localValue2 = stateFlag2
            if localValue2 then
              localValue2 = notify
              localValue3 = "~g~Set main gang as selected"
              -- Beginner: Show a notification to the player.
              localValue2(localValue3)
              localValue2 = false
              stateFlag2 = localValue2
            else
              localValue2 = notify
              localValue3 = "~g~Set guest gang as selected"
              localValue2(localValue3)
              localValue2 = true
              stateFlag2 = localValue2
            end
            localValue2 = _ENV
            localValue3 = "TriggerEvent"
            localValue2 = localValue2[localValue3]
            localValue3 = "e713d91b70"
            localValue2(localValue3)
            localValue2 = workingValue6
            localValue2 = localValue2()
            if not localValue2 then
              goto continueAtStep6504
            end
            localValue3 = localValue2.isAdvanced
            if not localValue3 then
              goto continueAtStep6504
            end
            localValue3 = dataCollection
            localValue4 = "blips"
            localValue3 = localValue3[localValue4]
            if not localValue3 then
              goto continueAtStep6504
            end
            localValue3 = workingValue6
            localValue3 = localValue3()
            localValue4 = workingValue
            if localValue3 == localValue4 then
              localValue3 = "own"
              if localValue3 then
                goto continueAtStep6489
              end
            end
            localValue3 = "guest"
            ::continueAtStep6489::
            localValue4 = TriggerServerEvent
            localValue5 = "f9c26121e2"
            localValue6 = localValue3
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
            localValue4(localValue5, localValue6)
          else
            localValue2 = DrawRect
            localValue3 = 0.651
            localValue4 = 0.463
            localValue5 = 0.065
            localValue6 = 0.056
            localValue7 = 0
            localValue8 = 0
            localValue9 = 0
            localValue10 = 150
            localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
          end
        end
      end
      ::continueAtStep6504::
      localValue2 = CursorInArea
      localValue3 = 0.6182
      localValue4 = 0.6822
      localValue5 = 0.51
      localValue6 = 0.566
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.538
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = cmgOperation7
          localValue3 = "Are you sure?"
          localValue2 = localValue2(localValue3)
          if localValue2 then
            localValue2 = TriggerServerEvent
            localValue3 = "dc72f21cc8"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc72f21cc8".
            localValue2(localValue3)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.538
        localValue5 = 0.065
        localValue6 = 0.056
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.3735
      localValue4 = 0.4185
      localValue5 = 0.6768
      localValue6 = 0.7074
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.396
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = number11
          if localValue2 <= 1 then
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~Lowest page reached"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          else
            localValue2 = number11
            localValue2 = localValue2 - 1
            number11 = localValue2
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.396
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.4635
      localValue4 = 0.5085
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.486
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = number11
          localValue3 = math
          localValue3 = localValue3.ceil
          localValue4 = localValue1 / 10.0
          localValue3 = localValue3(localValue4)
          if localValue2 >= localValue3 then
            localValue2 = tCMG
            localValue2 = localValue2.notify
            localValue3 = "~r~Max page reached"
            -- Beginner: Show a notification to the player.
            localValue2(localValue3)
          else
            localValue2 = number11
            localValue2 = localValue2 + 1
            number11 = localValue2
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.486
        localValue4 = 0.693
        localValue5 = 0.045
        localValue6 = 0.033
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.6583
      localValue4 = 0.7056
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = "gang"
          text = localValue2
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    else
      localValue1 = DrawAdvancedText
      localValue2 = 0.501
      localValue3 = 0.378
      localValue4 = 0.105
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "Guest Guide"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.501
      localValue3 = 0.416
      localValue4 = 0.105
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "A guest is a player who will temporarily have access to a limited area of your gang."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.501
      localValue3 = 0.454
      localValue4 = 0.105
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "They will be able to pin members, see pings, see blips and name tags."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.501
      localValue3 = 0.492
      localValue4 = 0.105
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "They will not be able to see or access your funds, logs, settings and security."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.501
      localValue3 = 0.53
      localValue4 = 0.105
      localValue5 = 0.0028
      localValue6 = 0.46
      localValue7 = "Being a guest of another gang will not remove you from your current gang."
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = workingValue
      if localValue1 then
        localValue1 = DrawAdvancedText
        localValue2 = 0.478
        localValue3 = 0.642
        localValue4 = 0.005
        localValue5 = 0.0028
        localValue6 = 0.473
        localValue7 = "Invite Guest"
        localValue8 = 255
        localValue9 = 255
        localValue10 = 255
        localValue11 = 255
        localValue122 = 4
        localValue13 = 0
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      end
      localValue1 = DrawAdvancedText
      localValue2 = 0.564
      localValue3 = 0.643
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.473
      localValue7 = "Accept Invite"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.561
      localValue3 = 0.577
      localValue4 = 0.065
      localValue5 = -0.003
      localValue6 = 0
      localValue7 = 168
      localValue8 = 255
      localValue9 = 204
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.654
      localValue3 = 0.57
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.364
      localValue7 = "Guest Invite list"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = pairs
      localValue2 = dataCollection3
      localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
      for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
        localValue7 = DrawAdvancedText
        localValue8 = 0.656
        localValue9 = 0.02 * localValue5
        localValue10 = 0.598
        localValue9 = localValue10 + localValue9
        localValue10 = 0.005
        localValue11 = 0.0028
        localValue122 = 0.234
        localValue13 = localValue6
        localValue14 = 255
        localValue15 = 255
        localValue16 = 255
        localValue17 = 255
        localValue18 = 0
        number5 = 0
        localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
        localValue7 = CursorInArea
        localValue8 = 0.525
        localValue9 = 0.59
        localValue10 = 0.02 * localValue5
        localValue11 = 0.58
        localValue10 = localValue11 + localValue10
        localValue11 = 0.02 * localValue5
        localValue122 = 0.596
        localValue11 = localValue122 + localValue11
        localValue7 = localValue7(localValue8, localValue9, localValue10, localValue11)
        if localValue7 then
          localValue7 = workingValue4
          if localValue5 ~= localValue7 then
            localValue7 = DrawRect
            localValue8 = 0.56
            localValue9 = 0.02 * localValue5
            localValue9 = 0.59 + localValue9
            localValue10 = 0.062
            localValue11 = 0.019
            localValue122 = 0
            localValue13 = 168
            localValue14 = 255
            localValue15 = 150
            localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
            localValue7 = IsControlJustPressed
            localValue8 = 1
            localValue9 = 329
            localValue7 = localValue7(localValue8, localValue9)
            if not localValue7 then
              localValue7 = IsDisabledControlJustPressed
              localValue8 = 1
              localValue9 = 329
              localValue7 = localValue7(localValue8, localValue9)
            end
            if localValue7 then
              workingValue4 = localValue5
            end
        end
        else
          localValue7 = workingValue4
          if localValue5 == localValue7 then
            localValue7 = DrawRect
            localValue8 = 0.56
            localValue9 = 0.02 * localValue5
            localValue9 = 0.59 + localValue9
            localValue10 = 0.062
            localValue11 = 0.019
            localValue122 = 0
            localValue13 = 168
            localValue14 = 255
            localValue15 = 150
            localValue7(localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15)
          end
        end
      end
      localValue1 = workingValue
      if localValue1 then
        localValue1 = CursorInArea
        localValue2 = 0.35
        localValue3 = 0.415
        localValue4 = 0.615
        localValue5 = 0.66
        localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
        if localValue1 then
          localValue1 = DrawRect
          localValue2 = 0.383
          localValue3 = 0.642
          localValue4 = 0.066
          localValue5 = 0.046
          localValue6 = 0
          localValue7 = 168
          localValue8 = 255
          localValue9 = 150
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
          localValue1 = IsControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
          if not localValue1 then
            localValue1 = IsDisabledControlJustPressed
            localValue2 = 1
            localValue3 = 329
            localValue1 = localValue1(localValue2, localValue3)
          end
          if localValue1 then
            localValue1 = PlaySound
            localValue2 = -1
            localValue3 = "SELECT"
            localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue5 = false
            localValue6 = 0
            localValue7 = true
            localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
            localValue1 = CMG
            localValue1 = localValue1.hasGangPermission
            localValue2 = "inviteguest"
            localValue1 = localValue1(localValue2)
            if localValue1 then
              localValue1 = CMG
              localValue1 = localValue1.GetRageInputText
              localValue2 = "Enter Perm ID to invite:"
              localValue1 = localValue1(localValue2)
              if nil ~= localValue1 then
                localValue2 = tonumber
                localValue3 = localValue1
                localValue2 = localValue2(localValue3)
                if localValue2 then
                  localValue2 = TriggerServerEvent
                  localValue3 = "306a9cdbc9"
                  localValue4 = tonumber
                  localValue5 = localValue1
                  localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20 = localValue4(localValue5)
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "306a9cdbc9".
                  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20)
              end
              else
                localValue2 = tCMG
                localValue2 = localValue2.notify
                localValue3 = "Invalid Perm ID entered"
                -- Beginner: Show a notification to the player.
                localValue2(localValue3)
              end
            else
              localValue1 = tCMG
              localValue1 = localValue1.notify
              localValue2 = "~r~You don't have permission to invite players"
              localValue1(localValue2)
            end
          end
        else
          localValue1 = DrawRect
          localValue2 = 0.383
          localValue3 = 0.642
          localValue4 = 0.066
          localValue5 = 0.046
          localValue6 = 0
          localValue7 = 0
          localValue8 = 0
          localValue9 = 150
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        end
      end
      localValue1 = CursorInArea
      localValue2 = 0.435
      localValue3 = 0.51
      localValue4 = 0.615
      localValue5 = 0.66
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.469
        localValue3 = 0.642
        localValue4 = 0.066
        localValue5 = 0.046
        localValue6 = 0
        localValue7 = 168
        localValue8 = 255
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = workingValue4
          if nil ~= localValue1 then
            localValue2 = workingValue4
            localValue1 = dataCollection3
            localValue1 = localValue1[localValue2]
            workingValue4 = localValue1
            localValue1 = TriggerServerEvent
            localValue2 = "6e7e491304"
            localValue3 = workingValue4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6e7e491304".
            localValue1(localValue2, localValue3)
            localValue1 = {}
            dataCollection3 = localValue1
            localValue1 = workingValue8
            localValue1()
          else
            localValue1 = tCMG
            localValue1 = localValue1.notify
            localValue2 = "~r~No guest invite selected"
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.469
        localValue3 = 0.642
        localValue4 = 0.066
        localValue5 = 0.046
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
    end
    localValue1 = DrawAdvancedText
    localValue2 = 0.775
    localValue3 = 0.693
    localValue4 = 0.005
    localValue5 = 0.0028
    localValue6 = 0.4
    localValue7 = "Back"
    localValue8 = 255
    localValue9 = 255
    localValue10 = 255
    localValue11 = 255
    localValue122 = 4
    localValue13 = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
    localValue1 = CursorInArea
    localValue2 = 0.6583
    localValue3 = 0.7056
    localValue4 = 0.6712
    localValue5 = 0.7064
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if localValue1 then
      localValue1 = DrawRect
      localValue2 = 0.681
      localValue3 = 0.689
      localValue4 = 0.045
      localValue5 = 0.036
      localValue6 = number28
      localValue7 = number29
      localValue8 = number30
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = IsControlJustPressed
      localValue2 = 1
      localValue3 = 329
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
      end
      if localValue1 then
        localValue1 = PlaySound
        localValue2 = -1
        localValue3 = "SELECT"
        localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        localValue5 = false
        localValue6 = 0
        localValue7 = true
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue1 = workingValue
        if localValue1 then
          localValue1 = "gang"
          text = localValue1
        else
          localValue1 = "noGang"
          text = localValue1
        end
      end
    else
      localValue1 = DrawRect
      localValue2 = 0.681
      localValue3 = 0.689
      localValue4 = 0.045
      localValue5 = 0.036
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    if "gang" == localValue1 then
      localValue1 = DisableControlAction
      localValue2 = 0
      localValue3 = 200
      localValue4 = true
      localValue1(localValue2, localValue3, localValue4)
      localValue1 = CMG
      localValue1 = localValue1.isNewPlayer
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = drawNativeNotification
        localValue2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue1(localValue2)
      end
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.532
      localValue4 = 0.375
      localValue5 = 0.225
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.396
      localValue4 = 0.375
      localValue5 = 0.046
      localValue6 = 19
      localValue7 = 86
      localValue8 = 223
      localValue9 = 255
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.399
      localValue4 = 0.005
      localValue5 = 0.003
      localValue6 = 0.51
      localValue7 = "CMG Gangs"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.46
      localValue3 = 0.534
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "funds"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.554
      localValue3 = 0.534
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "members"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.642
      localValue3 = 0.534
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "logs"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.732
      localValue3 = 0.534
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "settings"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.46
      localValue3 = 0.604
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Turfs"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.554
      localValue3 = 0.604
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Security"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.642
      localValue3 = 0.604
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Guest"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.732
      localValue3 = 0.604
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Radios"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = CursorInArea
      localValue2 = 0.3333
      localValue3 = 0.3973
      localValue4 = 0.4981
      localValue5 = 0.5537
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.366
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "funds"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.366
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.4244
      localValue3 = 0.4903
      localValue4 = 0.4981
      localValue5 = 0.5537
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.458
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "members"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.458
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.514
      localValue3 = 0.5776
      localValue4 = 0.4981
      localValue5 = 0.5537
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.546
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "logs"
          text = localValue1
          localValue1 = workingValue
          localValue2 = "logs"
          localValue1[localValue2] = nil
          localValue1 = workingValue
          localValue2 = "logCount"
          localValue1[localValue2] = 0
          localValue1 = TriggerServerEvent
          localValue2 = "3f8f33322f"
          localValue3 = number3
          localValue4 = stateFlag
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
          localValue1(localValue2, localValue3, localValue4)
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.546
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.602
      localValue3 = 0.6677
      localValue4 = 0.4981
      localValue5 = 0.5537
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.635
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "settings"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.635
        localValue3 = 0.527
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInAreaRect
      localValue2 = 0.366
      localValue3 = 0.6
      localValue4 = 0.065
      localValue5 = 0.056
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.366
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "turfs"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.366
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInAreaRect
      localValue2 = 0.458
      localValue3 = 0.6
      localValue4 = 0.065
      localValue5 = 0.056
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.458
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = workingValue.isAdvanced
          if localValue1 then
            localValue1 = "security"
            text = localValue1
          else
            localValue1 = notify
            localValue2 = "~r~You must have the advanced gang license to access this page."
            -- Beginner: Show a notification to the player.
            localValue1(localValue2)
          end
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.458
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.514
      localValue3 = 0.5776
      localValue4 = 0.5722
      localValue5 = 0.6259
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.546
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "guest"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.546
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = CursorInArea
      localValue2 = 0.602
      localValue3 = 0.6677
      localValue4 = 0.5722
      localValue5 = 0.6259
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
      if localValue1 then
        localValue1 = DrawRect
        localValue2 = 0.635
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = number28
        localValue7 = number29
        localValue8 = number30
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        localValue1 = IsControlJustPressed
        localValue2 = 1
        localValue3 = 329
        localValue1 = localValue1(localValue2, localValue3)
        if not localValue1 then
          localValue1 = IsDisabledControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
        end
        if localValue1 then
          localValue1 = PlaySound
          localValue2 = -1
          localValue3 = "SELECT"
          localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue5 = false
          localValue6 = 0
          localValue7 = true
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
          localValue1 = "radios"
          text = localValue1
        end
      else
        localValue1 = DrawRect
        localValue2 = 0.635
        localValue3 = 0.6
        localValue4 = 0.065
        localValue5 = 0.056
        localValue6 = 0
        localValue7 = 0
        localValue8 = 0
        localValue9 = 150
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue1 = workingValue
      localValue2 = "id"
      localValue2 = localValue1[localValue2]
      localValue1 = dataCollection5
      localValue1 = localValue1[localValue2]
      if localValue1 then
        localValue1 = DrawAdvancedText
        localValue2 = 0.598
        localValue3 = 0.466
        localValue4 = 0.005
        localValue5 = 0.0028
        localValue6 = 0.4
        localValue7 = "RP Turfs"
        localValue8 = 255
        localValue9 = 255
        localValue10 = 255
        localValue11 = 255
        localValue122 = 7
        localValue13 = 0
        localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
        localValue1 = CursorInAreaRect
        localValue2 = 0.502
        localValue3 = 0.459
        localValue4 = 0.065
        localValue5 = 0.056
        localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
        if localValue1 then
          localValue1 = DrawRect
          localValue2 = 0.502
          localValue3 = 0.459
          localValue4 = 0.065
          localValue5 = 0.056
          localValue6 = number28
          localValue7 = number29
          localValue8 = number30
          localValue9 = 150
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
          localValue1 = IsControlJustPressed
          localValue2 = 1
          localValue3 = 329
          localValue1 = localValue1(localValue2, localValue3)
          if not localValue1 then
            localValue1 = IsDisabledControlJustPressed
            localValue2 = 1
            localValue3 = 329
            localValue1 = localValue1(localValue2, localValue3)
          end
          if localValue1 then
            localValue1 = PlaySound
            localValue2 = -1
            localValue3 = "SELECT"
            localValue4 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            localValue5 = false
            localValue6 = 0
            localValue7 = true
            localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
            localValue1 = "rpturfs"
            text = localValue1
          end
        else
          localValue1 = DrawRect
          localValue2 = 0.502
          localValue3 = 0.459
          localValue4 = 0.065
          localValue5 = 0.056
          localValue6 = 0
          localValue7 = 0
          localValue8 = 0
          localValue9 = 150
          localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
        end
      end
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    localValue2 = "radios"
    if localValue1 == localValue2 then
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.525
      localValue4 = 0.421
      localValue5 = 0.387
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawRect
      localValue2 = 0.501
      localValue3 = 0.308
      localValue4 = 0.421
      localValue5 = 0.047
      localValue6 = 18
      localValue7 = 82
      localValue8 = 228
      localValue9 = 248
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.591
      localValue3 = 0.312
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.48
      localValue7 = "CMG gang - radios"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 7
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawRect
      localValue2 = 0.448
      localValue3 = 0.52
      localValue4 = 0.295
      localValue5 = 0.291
      localValue6 = 0
      localValue7 = 0
      localValue8 = 0
      localValue9 = 150
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      localValue1 = DrawAdvancedText
      localValue2 = 0.479
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Channel Name"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.675
      localValue3 = 0.359
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Edit"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 6
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.746
      localValue3 = 0.455
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = [[
Purchase
Channel]]
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = DrawAdvancedText
      localValue2 = 0.775
      localValue3 = 0.693
      localValue4 = 0.005
      localValue5 = 0.0028
      localValue6 = 0.4
      localValue7 = "Back"
      localValue8 = 255
      localValue9 = 255
      localValue10 = 255
      localValue11 = 255
      localValue122 = 4
      localValue13 = 0
      localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13)
      localValue1 = table
      localValue2 = "copy"
      localValue1 = localValue1[localValue2]
      localValue2 = workingValue
      localValue3 = "additionalRadios"
      localValue2 = localValue2[localValue3]
      localValue1 = localValue1(localValue2)
      localValue2 = workingValue.isAdvanced
      if localValue2 then
        localValue2 = table
        localValue3 = "insert"
        localValue2 = localValue2[localValue3]
        localValue3 = localValue1
        localValue4 = 1
        localValue5 = {}
        localValue6 = "id"
        localValue5[localValue6] = 0
        localValue6 = _ENV
        localValue7 = "string"
        localValue6 = localValue6[localValue7]
        localValue7 = "format"
        localValue6 = localValue6[localValue7]
        localValue7 = "%s (Default)"
        localValue8 = workingValue.name
        localValue6 = localValue6(localValue7, localValue8)
        localValue5.name = localValue6
        localValue2(localValue3, localValue4, localValue5)
      end
      localValue2 = pairs
      localValue3 = localValue1
      localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
      for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
        localValue8 = DrawAdvancedText
        localValue9 = 0.479
        localValue10 = 0.0287 * localValue6
        localValue10 = 0.361 + localValue10
        localValue11 = 0.005
        localValue122 = 0.0028
        localValue13 = 0.4
        localValue14 = localValue7.name
        localValue15 = 255
        localValue16 = 255
        localValue17 = 255
        localValue18 = 255
        number5 = 6
        number7 = 0
        localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7)
        localValue8 = "id"
        localValue8 = localValue7[localValue8]
        if 0 ~= localValue8 then
          localValue8 = DrawAdvancedText
          localValue9 = 0.675
          localValue10 = 0.0287 * localValue6
          localValue10 = 0.3665 + localValue10
          localValue11 = 0.005
          localValue122 = 0.0028
          localValue13 = 0.2
          localValue14 = "\226\156\143\239\184\143"
          localValue15 = 255
          localValue16 = 255
          localValue17 = 255
          localValue18 = 255
          number5 = 6
          number7 = 0
          localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7)
        end
        localValue8 = CursorInArea
        localValue9 = 0.3005
        localValue10 = 0.5955
        localValue11 = localValue6 - 1
        localValue11 = 0.0287 * localValue11
        localValue11 = 0.3731 + localValue11
        localValue122 = localValue6 - 1
        localValue122 = 0.0287 * localValue122
        localValue122 = 0.4018 + localValue122
        localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122)
        if localValue8 then
          localValue8 = workingValue19
          localValue9 = "id"
          localValue9 = localValue7[localValue9]
          if localValue8 ~= localValue9 then
            localValue8 = DrawRect
            localValue9 = 0.448
            localValue10 = localValue6 - 1
            localValue10 = 0.0287 * localValue10
            localValue10 = 0.388 + localValue10
            localValue11 = 0.295
            localValue122 = 0.027
            localValue13 = number28
            localValue14 = number29
            localValue15 = number30
            localValue16 = 150
            localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16)
            localValue8 = IsControlJustPressed
            localValue9 = 1
            localValue10 = 329
            localValue8 = localValue8(localValue9, localValue10)
            if not localValue8 then
              localValue8 = IsDisabledControlJustPressed
              localValue9 = 1
              localValue10 = 329
              localValue8 = localValue8(localValue9, localValue10)
            end
            if localValue8 then
              localValue8 = PlaySound
              localValue9 = -1
              localValue10 = "SELECT"
              localValue11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              localValue122 = false
              localValue13 = 0
              localValue14 = true
              localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
              localValue8 = "id"
              localValue8 = localValue7[localValue8]
              workingValue19 = localValue8
            end
        end
        else
          localValue8 = workingValue19
          localValue9 = "id"
          localValue9 = localValue7[localValue9]
          if localValue8 == localValue9 then
            localValue8 = DrawRect
            localValue9 = 0.448
            localValue10 = localValue6 - 1
            localValue10 = 0.0287 * localValue10
            localValue10 = 0.388 + localValue10
            localValue11 = 0.295
            localValue122 = 0.027
            localValue13 = number28
            localValue14 = number29
            localValue15 = number30
            localValue16 = 150
            localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16)
          end
        end
        localValue8 = CursorInArea
        localValue9 = 0.5755
        localValue10 = 0.5955
        localValue11 = localValue6 - 1
        localValue11 = 0.0287 * localValue11
        localValue11 = 0.3731 + localValue11
        localValue122 = localValue6 - 1
        localValue122 = 0.0287 * localValue122
        localValue122 = 0.4018 + localValue122
        localValue8 = localValue8(localValue9, localValue10, localValue11, localValue122)
        if localValue8 then
          localValue8 = IsControlJustPressed
          localValue9 = 1
          localValue10 = 329
          localValue8 = localValue8(localValue9, localValue10)
          if not localValue8 then
            localValue8 = IsDisabledControlJustPressed
            localValue9 = 1
            localValue10 = 329
            localValue8 = localValue8(localValue9, localValue10)
            if not localValue8 then
              goto continueAtStep8156
            end
          end
          localValue8 = PlaySound
          localValue9 = -1
          localValue10 = "SELECT"
          localValue11 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue122 = false
          localValue13 = 0
          localValue14 = true
          localValue8(localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
          localValue8 = CMG
          localValue8 = localValue8.GetRageInputText
          localValue9 = "Channel Name"
          localValue10 = localValue7.name
          localValue8 = localValue8(localValue9, localValue10)
          if localValue8 then
            localValue9 = TriggerServerEvent
            localValue10 = "8a2894785e"
            localValue11 = "id"
            localValue11 = localValue7[localValue11]
            localValue122 = localValue8
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a2894785e".
            localValue9(localValue10, localValue11, localValue122)
          else
            localValue9 = notify
            localValue10 = "~r~Cancelled changing channel name."
            -- Beginner: Show a notification to the player.
            localValue9(localValue10)
          end
        end
        ::continueAtStep8156::
      end
      localValue2 = CursorInAreaRect
      localValue3 = 0.651
      localValue4 = 0.463
      localValue5 = 0.065
      localValue6 = 0.086
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.463
        localValue5 = 0.065
        localValue6 = 0.086
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = CMG
          localValue2 = localValue2.GetRageInputText
          localValue3 = "Purchase for \194\1635,000,000?"
          localValue4 = "Yes/No"
          localValue2 = localValue2(localValue3, localValue4)
          if localValue2 then
            localValue3 = _ENV
            localValue4 = "string"
            localValue3 = localValue3[localValue4]
            localValue4 = "lower"
            localValue3 = localValue3[localValue4]
            localValue4 = localValue2
            localValue3 = localValue3(localValue4)
            localValue4 = "yes"
            if localValue3 == localValue4 then
              localValue3 = TriggerServerEvent
              localValue4 = "5b98fcee62"
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b98fcee62".
              localValue3(localValue4)
          end
          else
            localValue3 = notify
            localValue4 = "~r~Cancelled purchase of new channel."
            -- Beginner: Show a notification to the player.
            localValue3(localValue4)
          end
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.651
        localValue4 = 0.463
        localValue5 = 0.065
        localValue6 = 0.086
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
      localValue2 = CursorInArea
      localValue3 = 0.6583
      localValue4 = 0.7056
      localValue5 = 0.6712
      localValue6 = 0.7064
      localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
      if localValue2 then
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = number28
        localValue8 = number29
        localValue9 = number30
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
        localValue2 = IsControlJustPressed
        localValue3 = 1
        localValue4 = 329
        localValue2 = localValue2(localValue3, localValue4)
        if not localValue2 then
          localValue2 = IsDisabledControlJustPressed
          localValue3 = 1
          localValue4 = 329
          localValue2 = localValue2(localValue3, localValue4)
        end
        if localValue2 then
          localValue2 = PlaySound
          localValue3 = -1
          localValue4 = "SELECT"
          localValue5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          localValue6 = false
          localValue7 = 0
          localValue8 = true
          localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
          localValue2 = "gang"
          text = localValue2
        end
      else
        localValue2 = DrawRect
        localValue3 = 0.681
        localValue4 = 0.689
        localValue5 = 0.045
        localValue6 = 0.036
        localValue7 = 0
        localValue8 = 0
        localValue9 = 0
        localValue10 = 150
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
      end
    end
  end
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.createThreadOnTick
workingValue15 = workingValue14
eventHandler = "Gang UI"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation8(workingValue15, eventHandler)
cmgOperation8 = 0

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangUseNui
  if localValue1 then
    return
  end
  localValue1 = IsControlJustPressed
  localValue2 = 0
  localValue3 = 166
  localValue1 = localValue1(localValue2, localValue3)
  if not localValue1 then
    localValue1 = IsDisabledControlJustPressed
    localValue2 = 0
    localValue3 = 166
    localValue1 = localValue1(localValue2, localValue3)
    if not localValue1 then
      localValue1 = IsDisabledControlJustReleased
      localValue2 = 0
      localValue3 = 200
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        goto continueAtStep99
      end
      localValue1 = text
      if "noGang" ~= localValue1 then
        localValue1 = text
        if "gang" ~= localValue1 then
          goto continueAtStep99
        end
      end
    end
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = cmgOperation8
  localValue1 = localValue1 - localValue2
  if localValue1 < 100 then
    return
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  cmgOperation8 = localValue1
  localValue1 = workingValue
  if not localValue1 then
    localValue1 = text
    if "noGang" == localValue1 then
      localValue1 = nil
      text = localValue1
      localValue1 = CMG
      localValue1 = localValue1.setCursor
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = CMG
      localValue1 = localValue1.setInGUI
      localValue2 = false
      localValue1(localValue2)
      localValue1 = nil
      workingValue12 = localValue1
    else
      localValue1 = "noGang"
      text = localValue1
      localValue1 = CMG
      localValue1 = localValue1.setCursor
      localValue2 = 1
      localValue1(localValue2)
      localValue1 = CMG
      localValue1 = localValue1.setInGUI
      localValue2 = true
      localValue1(localValue2)
    end
  end
  localValue1 = workingValue
  if localValue1 then
    localValue1 = text
    if "gang" == localValue1 then
      localValue1 = nil
      text = localValue1
      localValue1 = CMG
      localValue1 = localValue1.setCursor
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = CMG
      localValue1 = localValue1.setInGUI
      localValue2 = false
      localValue1(localValue2)
      localValue1 = nil
      workingValue16 = localValue1
    else
      localValue1 = "gang"
      text = localValue1
      localValue1 = CMG
      localValue1 = localValue1.setCursor
      localValue2 = 1
      localValue1(localValue2)
      localValue1 = CMG
      localValue1 = localValue1.setInGUI
      localValue2 = true
      localValue1(localValue2)
    end
  end
  ::continueAtStep99::
end
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue1 = json
  localValue1 = localValue1.decode
  localValue2 = GetResourceKvpString
  localValue3 = "cmg_gang_pinned"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = "{}"
  end
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = {}
  end
  localValue2 = {}
  localValue3 = GetResourceKvpString
  localValue4 = "cmg_gang_blips"
  localValue3 = localValue3(localValue4)
  localValue3 = "true" == localValue3
  localValue2.blips = localValue3
  localValue3 = GetResourceKvpString
  localValue4 = "cmg_gang_pings"
  localValue3 = localValue3(localValue4)
  localValue3 = "true" == localValue3
  localValue2.pings = localValue3
  localValue3 = GetResourceKvpString
  localValue4 = "cmg_gang_names"
  localValue3 = localValue3(localValue4)
  localValue3 = "true" == localValue3
  localValue2.names = localValue3
  localValue3 = {}
  localValue2.pinnedPlayers = localValue3
  dataCollection = localValue2
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6 in localValue2, localValue3, localValue4, localValue5 do
    localValue7 = dataCollection.pinnedPlayers
    localValue8 = tonumber
    localValue9 = localValue6
    localValue8 = localValue8(localValue9)
    localValue7[localValue8] = true
  end
  localValue2 = CMG
  localValue3 = dataCollection.pinnedPlayers
  localValue2.gangPinnedPlayers = localValue3
  localValue2 = CMG
  localValue3 = dataCollection
  localValue2.gangClientSettings = localValue3
  localValue2 = CMG
  localValue2 = localValue2.createThreadOnTick
  localValue3 = workingValue15
  localValue4 = "Gang Key Controls"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue2(localValue3, localValue4)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text4)
eventHandler = RegisterNetEvent
text4 = "f9904fb04b"
-- Beginner: this function handles network event "f9904fb04b".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18) ===
function text5(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18)
  local number5, number7, number8
  number5 = {}
  number5.id = localValue10
  number5.name = localValue1
  number5.displayMoney = localValue2
  number5.members = localValue3
  number5.guests = localValue4
  number5.isAdvanced = localValue5
  number5.maxWithdraw = localValue6
  number5.limitWithdrawDeposit = localValue7
  number5.requireWithdrawReason = localValue8
  number7 = {}
  number5.pings = number7
  number5.additionalRadios = localValue9
  number7 = localValue11 or number7
  if not localValue11 then
    number7 = 0
  end
  number5.gangPublicSkillPoints = number7
  number7 = localValue18 or number7
  if not localValue18 then
    number7 = 0
  end
  number5.gangRpSkillPoints = number7
  number7 = localValue122 or number7
  if not localValue122 then
    number7 = {}
  end
  number5.gangPerksUnlocked = number7
  number7 = localValue13 or number7
  if not localValue13 then
    number7 = {}
  end
  number5.announcements = number7
  number7 = localValue14 or number7
  if not localValue14 then
    number7 = 1
  end
  number5.gangPublicLevel = number7
  number7 = localValue15 or number7
  if not localValue15 then
    number7 = 0
  end
  number5.gangPublicXp = number7
  number7 = localValue16 or number7
  if not localValue16 then
    number7 = 1
  end
  number5.gangRpLevel = number7
  number7 = localValue17 or number7
  if not localValue17 then
    number7 = 0
  end
  number5.gangRpXp = number7
  workingValue = number5
  number5 = CMG
  number7 = workingValue
  number5.gangCachedData = number7
  number5 = workingValue.isAdvanced
  if number5 then
    number5 = RequestStreamedTextureDict
    number7 = "cmg_gang"
    number8 = false
    number5(number7, number8)
    number5 = dataCollection.blips
    if number5 then
      number5 = TriggerEvent
      number7 = "e713d91b70"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
      number5(number7)
      number5 = TriggerServerEvent
      number7 = "f9c26121e2"
      number8 = "own"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
      number5(number7, number8)
    end
    number5 = TriggerServerEvent
    number7 = "a74c553948"
    number8 = text2
    number5(number7, number8)
  end
  number5 = text
  if number5 then
    number5 = "gang"
    text = number5
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9904fb04b".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "4a773cc562"
-- Beginner: this function handles network event "4a773cc562".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text5(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6
  localValue6 = nil
  workingValue3 = localValue6
  localValue6 = CMG
  localValue6.gangCachedGuestData = nil
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "d59e8e8fd8"
-- Beginner: this function handles network event "d59e8e8fd8".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.name = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d59e8e8fd8".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "38c659d0a7"
-- Beginner: this function handles network event "38c659d0a7".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.displayMoney = localValue1
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "cbebb2bd7a"
-- Beginner: this function handles network event "cbebb2bd7a".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue
  if localValue1 then
    localValue1 = RequestStreamedTextureDict
    localValue2 = "cmg_gang"
    localValue3 = false
    localValue1(localValue2, localValue3)
    workingValue.isAdvanced = true
  end
  localValue1 = TriggerEvent
  localValue2 = "238e25c639"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbebb2bd7a".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "a7a59eed45"
-- Beginner: this function handles network event "a7a59eed45".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue3
  if localValue1 then
    localValue1 = RequestStreamedTextureDict
    localValue2 = "cmg_gang"
    localValue3 = false
    localValue1(localValue2, localValue3)
    workingValue3.isAdvanced = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a7a59eed45".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "6e6d067235"
-- Beginner: this function handles network event "6e6d067235".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.members
    localValue3[localValue1] = localValue2
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "f5b2ceb8df"
-- Beginner: this function handles network event "f5b2ceb8df".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.members
    localValue3[localValue1] = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f5b2ceb8df".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "363c115205"
-- Beginner: this function handles network event "363c115205".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.guests
    localValue3[localValue1] = localValue2
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "36135ce16e"
-- Beginner: this function handles network event "36135ce16e".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.guests
    localValue3[localValue1] = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36135ce16e".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "6998c9a240"
-- Beginner: this function handles network event "6998c9a240".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.members
      localValue3 = localValue3[localValue1]
      localValue3.permissions = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "f71d7949c0"
-- Beginner: this function handles network event "f71d7949c0".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.members
      localValue3 = localValue3[localValue1]
      localValue3.permissions = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f71d7949c0".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "854c66098d"
-- Beginner: this function handles network event "854c66098d".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.members
      localValue3 = localValue3[localValue1]
      localValue3.lastLogin = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "982c46dbf0"
-- Beginner: this function handles network event "982c46dbf0".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.members
      localValue3 = localValue3[localValue1]
      localValue3.lastLogin = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "982c46dbf0".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "6049cc2bb1"
-- Beginner: this function handles network event "6049cc2bb1".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.members
      localValue3 = localValue3[localValue1]
      localValue3.name = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "f9fdd3de9c"
-- Beginner: this function handles network event "f9fdd3de9c".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.members
      localValue3 = localValue3[localValue1]
      localValue3.name = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9fdd3de9c".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "078a4215cf"
-- Beginner: this function handles network event "078a4215cf".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.guests
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.guests
      localValue3 = localValue3[localValue1]
      localValue3.name = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "24c8e98259"
-- Beginner: this function handles network event "24c8e98259".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.guests
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.guests
      localValue3 = localValue3[localValue1]
      localValue3.name = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "24c8e98259".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "c4fb7a7250"
-- Beginner: this function handles network event "c4fb7a7250".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    localValue2 = workingValue.members
    localValue2[localValue1] = nil
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "4d2c3b82a7"
-- Beginner: this function handles network event "4d2c3b82a7".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue3
  if localValue2 then
    localValue2 = workingValue3.members
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4d2c3b82a7".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "3a92ce94a9"
-- Beginner: this function handles network event "3a92ce94a9".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    localValue2 = workingValue.guests
    localValue2[localValue1] = nil
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "2b3786c5c2"
-- Beginner: this function handles network event "2b3786c5c2".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue3
  if localValue2 then
    localValue2 = workingValue3.guests
    localValue2[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2b3786c5c2".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "b6d14a58c2"
-- Beginner: this function handles network event "b6d14a58c2".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3) ===
function text5(localValue1, localValue2, localValue3)
  local localValue4
  localValue4 = workingValue
  if localValue4 then
    localValue4 = number3
    if localValue4 == localValue1 then
      workingValue.logs = localValue2
      workingValue.logCount = localValue3
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "df6b023891"
-- Beginner: this function handles network event "df6b023891".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = dataCollection.blips
  if localValue1 then
    localValue1 = TriggerEvent
    localValue2 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    localValue1(localValue2)
  end
  localValue1 = text
  if localValue1 then
    localValue1 = "noGang"
    text = localValue1
  end
  localValue1 = nil
  workingValue = localValue1
  localValue1 = CMG
  localValue1.gangCachedData = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "df6b023891".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "ac7da32975"
-- Beginner: this function handles network event "ac7da32975".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = dataCollection.blips
  if localValue1 then
    localValue1 = TriggerEvent
    localValue2 = "e713d91b70"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
    localValue1(localValue2)
  end
  localValue1 = nil
  workingValue3 = localValue1
  localValue1 = CMG
  localValue1.gangCachedGuestData = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ac7da32975".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "0d45fc5353"
-- Beginner: this function handles network event "0d45fc5353".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  dataCollection2 = localValue1
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "b674c758b8"
-- Beginner: this function handles network event "b674c758b8".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.maxWithdraw = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b674c758b8".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "58d834d15a"
-- Beginner: this function handles network event "58d834d15a".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.limitWithdrawDeposit = localValue1
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "5d7f40bb9d"
-- Beginner: this function handles network event "5d7f40bb9d".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.requireWithdrawReason = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5d7f40bb9d".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "aa406726e4"
-- Beginner: this function handles network event "aa406726e4".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.members
      localValue3 = localValue3[localValue1]
      localValue3.colour = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "f4a19c737d"
-- Beginner: this function handles network event "f4a19c737d".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.members
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.members
      localValue3 = localValue3[localValue1]
      localValue3.colour = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f4a19c737d".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "6d46904865"
-- Beginner: this function handles network event "6d46904865".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue
  if localValue3 then
    localValue3 = workingValue.guests
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue.guests
      localValue3 = localValue3[localValue1]
      localValue3.colour = localValue2
    end
  end
end
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "71c5863a91"
-- Beginner: this function handles network event "71c5863a91".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.guests
    localValue3 = localValue3[localValue1]
    if localValue3 then
      localValue3 = workingValue3.guests
      localValue3 = localValue3[localValue1]
      localValue3.colour = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "71c5863a91".
eventHandler(text4, text5)
eventHandler = RegisterNetEvent
text4 = "bb3efd07e8"
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.contributions = localValue1
  end
end
eventHandler(text4, text5)
eventHandler = CMG
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = workingValue
  localValue1 = nil ~= localValue1
  return localValue1
end
eventHandler.isInGang = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = false
  return localValue1
end
eventHandler.isGuestGangSelected = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2
end
eventHandler.setGuestGangSelected = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = workingValue
  if localValue1 then
    localValue1 = workingValue.isAdvanced
    if localValue1 then
      localValue1 = true
      return localValue1
    end
  end
  localValue1 = false
  return localValue1
end
eventHandler.isMainGangAdvanced = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue
  if localValue2 then
    localValue2 = workingValue.members
    localValue3 = CMG
    localValue3 = localValue3.getClientUserId
    -- Beginner: result below is userId.
    localValue3 = localValue3()
    localValue2 = localValue2[localValue3]
    if localValue2 then
      localValue3 = localValue2.permissions
      if localValue3 then
        localValue3 = localValue2.permissions
        localValue3 = localValue3[localValue1]
        if not localValue3 then
          localValue3 = localValue2.permissions
          localValue3 = localValue3.leader
          if not localValue3 then
            goto continueAtStep24
          end
        end
        localValue3 = true
        return localValue3
      end
    end
  end
  ::continueAtStep24::
  localValue2 = false
  return localValue2
end
eventHandler.hasGangPermission = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = workingValue6
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = localValue1.isAdvanced
    if localValue2 then
      localValue2 = true
      return localValue2
    end
  end
  localValue2 = false
  return localValue2
end
eventHandler.isSelectedGangAdvanced = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue6
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = localValue1.isAdvanced
    if localValue2 then
      localValue2 = dataCollection.blips
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.inEvent
        localValue2 = localValue2()
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.hasRadioItem
          localValue2 = localValue2()
          if localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.gangOrgClientState
            if localValue2 then
              localValue3 = localValue2.hasOrgPack
              if true == localValue3 then
                localValue3 = CMG
                localValue3 = localValue3.isClientClockedOnOrganisation
                localValue3 = localValue3()
                if not localValue3 then
                  localValue3 = false
                  return localValue3
                end
              end
            end
            localValue3 = true
            return localValue3
          end
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end
eventHandler.hasGangBlipsEnabled = text4
eventHandler = AddEventHandler
text4 = "e892eba4b7"
-- Beginner: this function runs when client event "e892eba4b7" fires.

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3
  localValue1 = TriggerEvent
  localValue2 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "f9c26121e2"
  localValue3 = nil
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a client-side event handler. Event/command: "e892eba4b7".
eventHandler(text4, text5)
eventHandler = AddEventHandler
text4 = "f7b3a54a8f"
-- Beginner: this function runs when client event "f7b3a54a8f" fires.

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.hasGangBlipsEnabled
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = workingValue6
    localValue1 = localValue1()
    localValue2 = workingValue
    if localValue1 == localValue2 then
      localValue1 = "own"
      if localValue1 then
        goto continueAtStep15
      end
    end
    localValue1 = "guest"
    ::continueAtStep15::
    localValue2 = TriggerServerEvent
    localValue3 = "f9c26121e2"
    localValue4 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "f7b3a54a8f".
eventHandler(text4, text5)
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = workingValue6
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = localValue1.isAdvanced
    if localValue2 then
      localValue2 = dataCollection.names
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.inEvent
        localValue2 = localValue2()
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.hasRadioItem
          localValue2 = localValue2()
          if localValue2 then
            localValue2 = true
            return localValue2
          end
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end
eventHandler.hasGangNamesEnabled = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = workingValue6
  localValue2 = localValue2()
  if localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.inEvent
    localValue3 = localValue3()
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.clientGetUserIdFromSource
      localValue4 = localValue1
      -- Beginner: result below is userId.
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue4 = localValue2.members
        localValue4 = localValue4[localValue3]
        if localValue4 then
          localValue5 = true
          localValue6 = cmgOperation.colourLookup
          localValue7 = localValue4.colour
          localValue6 = localValue6[localValue7]
          if not localValue6 then
            localValue6 = workingValue5
          end
          return localValue5, localValue6
        end
        localValue5 = localValue2.guests
        localValue5 = localValue5[localValue3]
        if localValue5 then
          localValue6 = true
          localValue7 = cmgOperation.colourLookup
          localValue8 = localValue5.colour
          localValue7 = localValue7[localValue8]
          if not localValue7 then
            localValue7 = workingValue5
          end
          return localValue6, localValue7
        end
      end
    end
  end
  localValue3 = false
  localValue4 = workingValue5
  return localValue3, localValue4
end
eventHandler.isPlayerInSelectedGang = text4
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2
  localValue2 = dataCollection
  if localValue2 then
    localValue2 = dataCollection.pinnedPlayers
    if localValue2 then
      localValue2 = dataCollection.pinnedPlayers
      localValue2 = localValue2[localValue1]
      if localValue2 then
        goto continueAtStep12
      end
    end
  end
  localValue2 = false
  ::continueAtStep12::
  return localValue2
end
eventHandler.isPlayerPinnedInGang = text4

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = GetControlInstructionalButton
  localValue2 = 2
  localValue3 = -175937621
  localValue4 = true
  localValue1 = localValue1(localValue2, localValue3, localValue4)
  localValue2 = GetControlInstructionalButton
  localValue3 = 2
  localValue4 = -1943871200
  localValue5 = true
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue1 = localValue1 == localValue2
  return localValue1
end
text4 = RegisterCommand
text5 = "pinglocation"
-- Beginner: this function is the command handler for "pinglocation".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8
  localValue1 = workingValue6
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = localValue1.isAdvanced
    if localValue2 then
      localValue2 = dataCollection.pings
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.isEmergencyService
        localValue2 = localValue2()
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.inEvent
          localValue2 = localValue2()
          if not localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.hasRadioItem
            localValue2 = localValue2()
            if localValue2 then
              localValue2 = eventHandler
              localValue2 = localValue2()
              if localValue2 then
                localValue2 = localValue1.pings
                localValue3 = CMG
                localValue3 = localValue3.getClientUserId
                -- Beginner: result below is userId.
                localValue3 = localValue3()
                localValue2 = localValue2[localValue3]
                if localValue2 then
                  return
                end
              end
              localValue2 = GetGameplayCamCoord
              localValue2 = localValue2()
              localValue3 = CMG
              localValue3 = localValue3.rotationToDirection
              localValue4 = GetGameplayCamRot
              localValue5 = 2
              localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8 = localValue4(localValue5)
              localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8)
              localValue4 = localValue3 * 500.0
              localValue4 = localValue2 + localValue4
              localValue5 = _ENV
              localValue6 = "StartExpensiveSynchronousShapeTestLosProbe"
              localValue5 = localValue5[localValue6]
              localValue6 = localValue2.x
              localValue7 = localValue2.y
              localValue8 = localValue2.z
              localValue9 = localValue4.x
              localValue10 = localValue4.y
              localValue11 = localValue4.z
              localValue122 = -1
              localValue13 = PlayerPedId
              -- Beginner: result below is localPlayerPed.
              localValue13 = localValue13()
              localValue14 = 8
              localValue5 = localValue5(localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14)
              localValue6 = GetShapeTestResult
              localValue7 = localValue5
              localValue6, localValue7, localValue8 = localValue6(localValue7)
              if not localValue7 or 0 == localValue7 then
                localValue9 = nil
                localValue10 = 2.0
                localValue11 = 20
                localValue122 = 500
                localValue13 = 1
                for localValue14 = localValue11, localValue122, localValue13 do
                  if localValue14 > 50 and not localValue9 then
                    localValue10 = 10.0
                  end
                  localValue15 = localValue3 * localValue14
                  localValue15 = localValue2 + localValue15
                  localValue16 = GetGroundZFor_3dCoord
                  localValue17 = localValue15.x
                  localValue18 = localValue15.y
                  number5 = localValue15.z
                  number7 = 0.0
                  number8 = false
                  localValue16, localValue17 = localValue16(localValue17, localValue18, number5, number7, number8)
                  if localValue16 then
                    localValue18 = vector3
                    number5 = localValue15.x
                    number7 = localValue15.y
                    number8 = localValue17
                    localValue18 = localValue18(number5, number7, number8)
                    number5 = localValue15 - localValue18
                    number5 = #number5
                    if localValue10 > number5 then
                      localValue9 = localValue18
                      localValue10 = number5
                    end
                  end
                end
                if localValue9 then
                  localValue7 = true
                  localValue8 = localValue9
                end
              end
              if localValue7 and 0 ~= localValue7 then
                localValue9 = GetGameTimer
                -- Beginner: result below is gameTimeMs.
                localValue9 = localValue9()
                number14 = localValue9
                localValue9 = TriggerServerEvent
                localValue10 = "f1d8cdbd8e"
                localValue11 = localValue8
                localValue122 = false
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
                localValue9(localValue10, localValue11, localValue122)
              end
            end
          end
        end
      end
    end
  end
end
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "pinglocation".
text4(text5, eventHandler2, stateFlag4)
text4 = RegisterKeyMapping
text5 = "pinglocation"
eventHandler2 = "Create Gang Ping"
stateFlag4 = "MOUSE_BUTTON"
dataCollection6 = "MOUSE_MIDDLE"
-- Beginner: Bind a command to a keyboard/controller key.
text4(text5, eventHandler2, stateFlag4, dataCollection6)
text4 = RegisterCommand
text5 = "deletepinglocation"
-- Beginner: this function is the command handler for "deletepinglocation".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = workingValue6
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = localValue1.pings
    localValue3 = CMG
    localValue3 = localValue3.getClientUserId
    -- Beginner: result below is userId.
    localValue3 = localValue3()
    localValue2 = localValue2[localValue3]
    if localValue2 then
      localValue2 = eventHandler
      localValue2 = localValue2()
      if localValue2 then
        localValue2 = localValue1.pings
        localValue3 = CMG
        localValue3 = localValue3.getClientUserId
        -- Beginner: result below is userId.
        localValue3 = localValue3()
        localValue2 = localValue2[localValue3]
        if not localValue2 then
          return
        end
      end
      localValue2 = TriggerServerEvent
      localValue3 = "f1d8cdbd8e"
      localValue4 = nil
      localValue5 = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
      localValue2(localValue3, localValue4, localValue5)
    end
  end
end
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "deletepinglocation".
text4(text5, eventHandler2, stateFlag4)
text4 = RegisterKeyMapping
text5 = "deletepinglocation"
eventHandler2 = "Delete Gang Ping"
stateFlag4 = "MOUSE_BUTTON"
dataCollection6 = "MOUSE_MIDDLE"
-- Beginner: Bind a command to a keyboard/controller key.
text4(text5, eventHandler2, stateFlag4, dataCollection6)

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5
  localValue2 = CMG
  localValue2 = localValue2.getGangPingMarkerIndex
  localValue2 = localValue2()
  if 2 == localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isEmergencyService
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.inEvent
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = GetGroundZFor_3dCoord
        localValue3 = localValue1.x
        localValue4 = localValue1.y
        localValue5 = localValue1.z
        localValue6 = localValue1.z
        localValue7 = false
        localValue2, localValue3 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
        localValue4 = math
        localValue4 = localValue4.abs
        localValue5 = localValue1.z
        localValue5 = localValue3 - localValue5
        localValue4 = localValue4(localValue5)
        if localValue4 > 10.0 then
          localValue5 = localValue1.z
          if localValue5 then
            goto continueAtStep35
          end
        end
        localValue5 = localValue3
        ::continueAtStep35::
        localValue5 = localValue5 - 1.0
        localValue6 = CreateCheckpoint
        localValue7 = 47
        localValue8 = localValue1.x
        localValue9 = localValue1.y
        localValue10 = localValue5
        localValue11 = localValue1.x
        localValue122 = localValue1.y
        localValue13 = localValue1.z
        localValue13 = localValue13 + 200.0
        localValue14 = 1.0
        localValue15 = 255
        localValue16 = 50
        localValue17 = 50
        localValue18 = 125
        number5 = 0
        return localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5)
    end
  end
  else
    localValue2 = nil
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.getGangAdditionalPingMarkerIndex
  localValue2 = localValue2()
  if 2 ~= localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getGangAdditionalPingMarkerIndex
    localValue2 = localValue2()
    if 4 ~= localValue2 then
      goto continueAtStep25
    end
  end
  localValue2 = AddBlipForCoord
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue5 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = SetBlipSprite
  localValue4 = localValue2
  localValue5 = 162
  localValue3(localValue4, localValue5)
  localValue3 = SetBlipDisplay
  localValue4 = localValue2
  localValue5 = 9
  localValue3(localValue4, localValue5)
  return localValue2
  ::continueAtStep25::
  localValue2 = nil
  return localValue2
end
eventHandler2 = RegisterNetEvent
stateFlag4 = "f1d8cdbd8e"
-- Beginner: this function handles network event "f1d8cdbd8e".

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue1, localValue2) ===
function dataCollection6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue3 = workingValue
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.hasRadioItem
    localValue3 = localValue3()
    if localValue3 then
      localValue3 = workingValue.pings
      localValue3 = localValue3[localValue1]
      if localValue3 then
        localValue4 = localValue3.checkpoint
        if localValue4 then
          localValue4 = DeleteCheckpoint
          localValue5 = localValue3.checkpoint
          localValue4(localValue5)
          localValue3.checkpoint = nil
        end
      end
      if localValue3 then
        localValue4 = localValue3.blip
        if localValue4 then
          localValue4 = RemoveBlip
          localValue5 = localValue3.blip
          localValue4(localValue5)
          localValue3.blip = nil
        end
      end
      if localValue2 then
        localValue4 = workingValue.pings
        localValue5 = {}
        localValue5.position = localValue2
        localValue6 = text4
        localValue7 = localValue2
        localValue6 = localValue6(localValue7)
        localValue5.checkpoint = localValue6
        localValue6 = text5
        localValue7 = localValue2
        localValue6 = localValue6(localValue7)
        localValue5.blip = localValue6
        localValue4[localValue1] = localValue5
        localValue4 = number16
        if localValue4 > 0 then
          localValue4 = CMG
          localValue4 = localValue4.getClientUserId
          -- Beginner: result below is userId.
          localValue4 = localValue4()
          if localValue1 ~= localValue4 then
            localValue4 = SendNUIMessage
            localValue5 = {}
            localValue6 = "gangping"
            localValue7 = tostring
            localValue8 = number16
            localValue7 = localValue7(localValue8)
            localValue6 = localValue6 .. localValue7
            localValue5.transactionType = localValue6
            localValue6 = number18
            localValue5.volumeOverride = localValue6
            -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
            localValue4(localValue5)
          end
        end
      else
        localValue4 = workingValue.pings
        localValue4[localValue1] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f1d8cdbd8e".
eventHandler2(stateFlag4, dataCollection6)
eventHandler2 = RegisterNetEvent
stateFlag4 = "eef17f8aa1"
-- Beginner: this function handles network event "eef17f8aa1".

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue1, localValue2) ===
function dataCollection6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.hasRadioItem
    localValue3 = localValue3()
    if localValue3 then
      localValue3 = workingValue3.pings
      localValue3 = localValue3[localValue1]
      if localValue3 then
        localValue4 = localValue3.checkpoint
        if localValue4 then
          localValue4 = DeleteCheckpoint
          localValue5 = localValue3.checkpoint
          localValue4(localValue5)
          localValue3.checkpoint = nil
        end
      end
      if localValue3 then
        localValue4 = localValue3.blip
        if localValue4 then
          localValue4 = RemoveBlip
          localValue5 = localValue3.blip
          localValue4(localValue5)
          localValue3.blip = nil
        end
      end
      if localValue2 then
        localValue4 = workingValue3.pings
        localValue5 = {}
        localValue5.position = localValue2
        localValue6 = text4
        localValue7 = localValue2
        localValue6 = localValue6(localValue7)
        localValue5.checkpoint = localValue6
        localValue6 = text5
        localValue7 = localValue2
        localValue6 = localValue6(localValue7)
        localValue5.blip = localValue6
        localValue4[localValue1] = localValue5
      else
        localValue4 = workingValue3.pings
        localValue4[localValue1] = nil
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "eef17f8aa1".
eventHandler2(stateFlag4, dataCollection6)
eventHandler2 = 0.8
stateFlag4 = 0
dataCollection6 = {}
dataCollection6.metpd = true
dataCollection6.nhs = true
dataCollection6.hmp = true
dataCollection6.lfb = true

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26
  localValue1 = 0
  localValue2 = workingValue6
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.getGangUIPostion
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.getShowHealthPercentageFlag
  localValue4 = localValue4()
  localValue5 = {}
  if localValue2 then
    localValue6 = localValue2.isAdvanced
    if localValue6 then
      localValue6 = CMG
      localValue6 = localValue6.isEmergencyService
      localValue6 = localValue6()
      if not localValue6 then
        localValue6 = CMG
        localValue6 = localValue6.isDisplayVisible
        localValue7 = "gang"
        localValue6 = localValue6(localValue7)
        if localValue6 then
          localValue6 = CMG
          localValue6 = localValue6.inEvent
          localValue6 = localValue6()
          if not localValue6 then
            localValue6 = CMG
            localValue6 = localValue6.hasRadioItem
            localValue6 = localValue6()
            if localValue6 then
              localValue6 = dataCollection.pings
              if localValue6 then
                localValue6 = GetGameplayCamCoord
                localValue6 = localValue6()
                localValue7 = HasStreamedTextureDictLoaded
                localValue8 = "cmg_gang"
                localValue7 = localValue7(localValue8)
                localValue8 = GetActiveScreenResolution
                localValue8, localValue9 = localValue8()
                localValue10 = localValue8 / localValue9
                localValue11 = CMG
                localValue11 = localValue11.getGangAdditionalPingMarkerIndex
                localValue11 = localValue11()
                localValue122 = pairs
                localValue13 = localValue2.pings
                localValue122, localValue13, localValue14, localValue15 = localValue122(localValue13)
                for localValue16, localValue17 in localValue122, localValue13, localValue14, localValue15 do
                  localValue18 = GetScreenCoordFromWorldCoord
                  number5 = localValue17.position
                  number5 = number5.x
                  number7 = localValue17.position
                  number7 = number7.y
                  number8 = localValue17.position
                  number8 = number8.z
                  localValue18, number5, number7 = localValue18(number5, number7, number8)
                  if localValue18 then
                    number8 = workingValue7
                    number9 = localValue2
                    number8 = number8(number9)
                    number8 = number8[localValue16]
                    if number8 then
                      number9 = localValue17.position
                      number9 = localValue6 - number9
                      number9 = #number9
                      number10 = tostring
                      number12 = math
                      number12 = number12.floor
                      number13 = number9
                      number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26 = number12(number13)
                      number10 = number10(number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
                      number12 = "m"
                      number10 = number10 .. number12
                      number12 = 1000.0
                      if number9 > number12 then
                        number12 = tostring
                        number13 = math
                        number13 = number13.round
                        number15 = number9 / 1000.0
                        number17 = 1
                        number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26 = number13(number15, number17)
                        number12 = number12(number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
                        number13 = "km"
                        number12 = number12 .. number13
                        number10 = number12
                      end
                      number12 = math
                      number12 = number12.min
                      number13 = number9 / 1000.0
                      number15 = 1.0
                      number12 = number12(number13, number15)
                      number12 = 0.4 * number12
                      number13 = CMG
                      number13 = number13.DrawText
                      number15 = number5
                      number17 = number7
                      number19 = number8.name
                      number20 = "\n"
                      number21 = number10
                      number19 = number19 .. number20 .. number21
                      number20 = 1.0
                      number20 = number20 - number12
                      number20 = 0.2 * number20
                      number21 = eventHandler2
                      number20 = number20 * number21
                      number21 = 0
                      number22 = 0
                      number23 = nil
                      stateFlag3 = true
                      number13(number15, number17, number19, number20, number21, number22, number23, stateFlag3)
                      if localValue7 then
                        number13 = CMG
                        number13 = number13.getGangPingMarkerIndex
                        number13 = number13()
                        if 3 == number13 then
                          number13 = number12 * 1.25
                          number15 = 1.0
                          number13 = number15 - number13
                          number15 = DrawSprite
                          number17 = "cmg_gang"
                          number19 = "ping"
                          number20 = number5
                          number21 = 0.01 * number13
                          number22 = eventHandler2
                          number21 = number21 * number22
                          number21 = number7 - number21
                          number22 = 0.03
                          number22 = number22 / localValue10
                          number22 = number22 * number13
                          number23 = eventHandler2
                          number22 = number22 * number23
                          number23 = 0.03 * number13
                          stateFlag3 = eventHandler2
                          number23 = number23 * stateFlag3
                          stateFlag3 = 0
                          number24 = 255
                          createVector3 = 255
                          number25 = 255
                          number26 = 255
                          number15(number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
                        end
                      end
                    end
                  end
                  if 3 == localValue11 or 4 == localValue11 then
                    number8 = CMG
                    number8 = number8.getPlayerCoords
                    -- Beginner: result below is playerCoords.
                    number8 = number8()
                    number9 = math
                    number9 = number9.deg
                    number10 = math
                    number10 = number10.atan
                    number12 = localValue17.position
                    number12 = number12.x
                    number13 = number8.x
                    number12 = number12 - number13
                    number13 = localValue17.position
                    number13 = number13.y
                    number15 = number8.y
                    number13 = number13 - number15
                    number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26 = number10(number12, number13)
                    number9 = number9(number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
                    number9 = number9 % 360
                    number10 = CMG
                    number10 = number10.addCompassPing
                    number12 = number9
                    number10(number12)
                  end
                end
              end
              localValue6 = pairs
              localValue7 = workingValue7
              localValue8 = localValue2
              localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26 = localValue7(localValue8)
              localValue6, localValue7, localValue8, localValue9 = localValue6(localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
              for localValue10, localValue11 in localValue6, localValue7, localValue8, localValue9 do
                localValue122 = dataCollection.pinnedPlayers
                localValue122 = localValue122[localValue10]
                if localValue122 then
                  localValue122 = fullPlayerListData
                  localValue122 = localValue122[localValue10]
                  if localValue122 then
                    localValue122 = CMG
                    localValue122 = localValue122.getJobType
                    localValue13 = localValue10
                    localValue122 = localValue122(localValue13)
                    localValue13 = dataCollection6
                    localValue122 = localValue13[localValue122]
                    if not localValue122 then
                      localValue122 = true
                      localValue13 = nil
                      localValue14 = nil
                      localValue15 = dataCollection2
                      localValue15 = localValue15[localValue10]
                      if localValue15 then
                        localValue13 = localValue15.health
                        localValue14 = localValue15.armour
                      end
                      localValue16 = fullPlayerListData
                      localValue16 = localValue16[localValue10]
                      localValue16 = localValue16[1]
                      if localValue16 then
                        localValue17 = GetPlayerFromServerId
                        localValue18 = localValue16
                        -- Beginner: result below is playerIndex.
                        localValue17 = localValue17(localValue18)
                        if -1 ~= localValue17 then
                          localValue18 = GetPlayerPed
                          number5 = localValue17
                          -- Beginner: result below is playerPed.
                          localValue18 = localValue18(number5)
                          if 0 ~= localValue18 then
                            number5 = GetEntityHealth
                            number7 = localValue18
                            -- Beginner: result below is health.
                            number5 = number5(number7)
                            localValue13 = number5
                            number5 = GetPedArmour
                            number7 = localValue18
                            number5 = number5(number7)
                            localValue14 = number5
                            localValue122 = false
                          end
                        end
                      end
                      if localValue13 and localValue14 then
                        localValue17 = math
                        localValue17 = localValue17.min
                        localValue18 = localValue13
                        number5 = 200
                        localValue17 = localValue17(localValue18, number5)
                        localValue18 = math
                        localValue18 = localValue18.max
                        number5 = 0
                        number7 = math
                        number7 = number7.floor
                        number8 = localValue17 - 100
                        number8 = number8 / 100.0
                        number8 = number8 * 100
                        number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26 = number7(number8)
                        localValue18 = localValue18(number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26)
                        number5 = localValue14
                        if localValue13 <= 102 then
                          number5 = 0
                        end
                        if nil ~= localValue15 then
                          number7 = localValue15.hasRadio
                        end
                        number7 = CMG
                        number7 = number7.doesPlayerHaveRadioItem
                        number8 = localValue16
                        number7 = true == number7 or number7
                        number8 = table
                        number8 = number8.insert
                        number9 = localValue5
                        number10 = {}
                        number12 = localValue11.name
                        number10.name = number12
                        number10.health = localValue18
                        number10.armour = number5
                        number10.hasRadio = number7
                        number8(number9, number10)
                      end
                      if localValue122 then
                        localValue1 = localValue1 + 1
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
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue7 = stateFlag4
  localValue7 = localValue6 - localValue7
  if localValue7 > 100 then
    stateFlag4 = localValue6
    localValue7 = CMG
    localValue7 = localValue7.uiSendMessage
    localValue8 = {}
    localValue8.action = "GANG_PINNED_UPDATE"
    localValue9 = {}
    localValue9.players = localValue5
    localValue10 = {}
    localValue11 = localValue3.x
    localValue10.x = localValue11
    localValue11 = localValue3.y
    localValue10.y = localValue11
    localValue9.position = localValue10
    localValue10 = CMG
    localValue10 = localValue10.getGangUIScaleMultiplier
    localValue10 = localValue10()
    localValue9.scale = localValue10
    localValue9.showPercentage = localValue4
    localValue8.payload = localValue9
    localValue7(localValue8)
  end
  localValue7 = number4
  if localValue7 then
    localValue7 = number4
    if localValue7 == localValue2 then
      if localValue1 <= 0 then
        localValue7 = TriggerServerEvent
        localValue8 = "dc39cfbe4e"
        localValue9 = nil
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc39cfbe4e".
        localValue7(localValue8, localValue9)
        localValue7 = nil
        number4 = localValue7
      end
  end
  elseif localValue1 > 0 then
    localValue7 = workingValue
    if localValue2 == localValue7 then
      localValue7 = "own"
      if localValue7 then
        goto continueAtStep366
      end
    end
    localValue7 = "guest"
    ::continueAtStep366::
    localValue8 = TriggerServerEvent
    localValue9 = "dc39cfbe4e"
    localValue10 = localValue7
    localValue8(localValue9, localValue10)
    number4 = localValue2
  end
end
cmgOperation9 = AddEventHandler
cmgOperation10 = "CMG:onDisplayVisiblityChange"
-- Beginner: this function runs when client event "CMG:onDisplayVisiblityChange" fires.

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  if "gang" ~= localValue1 then
    return
  end
  if localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getGangUIPostion
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.uiSendMessage
  localValue5 = {}
  localValue5.action = "GANG_PINNED_UPDATE"
  localValue6 = {}
  localValue7 = {}
  localValue6.players = localValue7
  localValue7 = {}
  localValue8 = localValue3.x
  localValue7.x = localValue8
  localValue8 = localValue3.y
  localValue7.y = localValue8
  localValue6.position = localValue7
  localValue7 = CMG
  localValue7 = localValue7.getGangUIScaleMultiplier
  localValue7 = localValue7()
  localValue6.scale = localValue7
  localValue7 = CMG
  localValue7 = localValue7.getShowHealthPercentageFlag
  localValue7 = localValue7()
  localValue6.showPercentage = localValue7
  localValue5.payload = localValue6
  localValue4(localValue5)
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onDisplayVisiblityChange".
cmgOperation9(cmgOperation10, backgroundThread)
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.createThreadOnTick
cmgOperation10 = workingValue17
backgroundThread = "Gang Location Pings"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation9(cmgOperation10, backgroundThread)
cmgOperation9 = RegisterNetEvent
cmgOperation10 = "028443631e"
-- Beginner: this function handles network event "028443631e".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue6
  localValue2 = localValue2()
  if "polblips" == localValue1 and localValue2 then
    localValue3 = localValue2.isAdvanced
    if localValue3 then
      localValue3 = dataCollection.blips
      if localValue3 then
        localValue3 = TriggerEvent
        localValue4 = "e713d91b70"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
        localValue3(localValue4)
        localValue3 = TriggerServerEvent
        localValue4 = "f9c26121e2"
        localValue5 = "own"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
        localValue3(localValue4, localValue5)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "028443631e".
cmgOperation9(cmgOperation10, backgroundThread)
cmgOperation9 = Citizen
cmgOperation9 = cmgOperation9.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: none) ===
function cmgOperation10()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  while true do
    localValue1 = number14
    if localValue1 > 0 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      localValue2 = number14
      localValue1 = localValue1 - localValue2
      localValue2 = 300000
      if localValue1 > localValue2 then
        localValue1 = CMG
        localValue1 = localValue1.getClientUserId
        -- Beginner: result below is userId.
        localValue1 = localValue1()
        localValue2 = workingValue
        if localValue2 then
          localValue2 = workingValue.pings
          if localValue2 then
            localValue2 = workingValue.pings
            localValue2 = localValue2[localValue1]
            if localValue2 then
              localValue2 = TriggerServerEvent
              localValue3 = "f1d8cdbd8e"
              localValue4 = nil
              localValue5 = false
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f1d8cdbd8e".
              localValue2(localValue3, localValue4, localValue5)
            end
          end
        end
        localValue2 = 0
        number14 = localValue2
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 15000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation9(cmgOperation10)
cmgOperation9 = AddEventHandler
cmgOperation10 = "1c597fc419"
-- Beginner: this function runs when client event "1c597fc419" fires.

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  number16 = localValue1
  if localValue2 >= 0.0 and localValue2 <= 1.0 then
    number18 = localValue2
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1c597fc419".
cmgOperation9(cmgOperation10, backgroundThread)
cmgOperation9 = RegisterNetEvent
cmgOperation10 = "e35812009c"
-- Beginner: this function handles network event "e35812009c".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2
  localValue2 = workingValue
  if localValue2 then
    workingValue.additionalRadios = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e35812009c".
cmgOperation9(cmgOperation10, backgroundThread)
cmgOperation9 = RegisterNetEvent
cmgOperation10 = "bdbde03161"
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2, localValue3) ===
function backgroundThread(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue4 = dataCollection5
  localValue4 = localValue4[localValue1]
  if localValue4 then
    localValue5 = localValue4.relationships
    localValue5[localValue2] = localValue3
  end
end
cmgOperation9(cmgOperation10, backgroundThread)
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
function cmgOperation9()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.clearEnemyGamerTags
  localValue1()
end
cmgOperation10 = false
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7, number8, number9, number10, number12, number13, number15, number17, number19, number20, number21, number22, number23, stateFlag3, number24, createVector3, number25, number26, nameValue, workingValue10
  localValue1 = cmgOperation.turfSystemEnabled
  if not localValue1 then
    localValue1 = true
    cmgOperation10 = localValue1
    return
  end
  localValue1 = 30.0
  localValue2 = 40
  localValue3 = pairs
  localValue4 = cmgOperation.turfs
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = PolyZone
    localValue10 = localValue9
    localValue9 = localValue9.Create
    localValue11 = localValue8.bounds
    localValue122 = {}
    localValue13 = localValue8.name
    if not localValue13 then
      localValue13 = "turf_"
      localValue14 = localValue7
      localValue13 = localValue13 .. localValue14
    end
    localValue122.name = localValue13
    localValue122.minZ = 0.0
    localValue122.maxZ = 150.0
    localValue122.debugGrid = false
    localValue122.createLines = false
    localValue122.gridDivisions = 25
    localValue9 = localValue9(localValue10, localValue11, localValue122)
    localValue11 = localValue8.name
    localValue10 = cmgOperation6
    localValue122 = {}
    localValue10[localValue11] = localValue122
    localValue10 = nil
    localValue11 = nil
    localValue122 = nil
    localValue13 = nil
    localValue14 = ipairs
    localValue15 = localValue8.bounds
    localValue14, localValue15, localValue16, localValue17 = localValue14(localValue15)
    for localValue18, number5 in localValue14, localValue15, localValue16, localValue17 do
      number7 = number5.x
      number8 = number5.y
      if 1 == localValue18 then
        number9 = number7
        localValue11 = number7
        localValue10 = number9
        number9 = number8
        localValue13 = number8
        localValue122 = number9
      else
        if number7 < localValue10 then
          localValue10 = number7
        end
        if number7 > localValue11 then
          localValue11 = number7
        end
        if number8 < localValue122 then
          localValue122 = number8
        end
        if number8 > localValue13 then
          localValue13 = number8
        end
      end
    end
    localValue14 = localValue8.bounds
    localValue14 = localValue14[1]
    if localValue14 then
      localValue14 = localValue8.bounds
      localValue14 = localValue14[1]
      localValue14 = localValue14.z
      if localValue14 then
        goto continueAtStep77
      end
    end
    localValue14 = 0.0
    ::continueAtStep77::
    localValue15 = localValue11 - localValue10
    localValue16 = localValue13 - localValue122
    localValue17 = math
    localValue17 = localValue17.floor
    localValue18 = localValue15 / localValue1
    localValue17 = localValue17(localValue18)
    localValue17 = localValue17 + 1
    localValue18 = math
    localValue18 = localValue18.floor
    number5 = localValue16 / localValue1
    localValue18 = localValue18(number5)
    localValue18 = localValue18 + 1
    number5 = {}
    number7 = 0
    number8 = localValue18 - 1
    number9 = 1
    for number10 = number7, number8, number9 do
      number12 = {}
      number5[number10] = number12
      number12 = number10 * localValue1
      number12 = localValue122 + number12
      number13 = 0
      number15 = localValue17 - 1
      number17 = 1
      for number19 = number13, number15, number17 do
        number20 = number19 * localValue1
        number20 = localValue10 + number20
        number21 = localValue1 * 0.5
        number21 = number20 + number21
        number22 = localValue1 * 0.5
        number22 = number12 + number22
        number23 = number5[number10]
        number24 = localValue9
        stateFlag3 = localValue9.isPointInside
        createVector3 = vector3
        number25 = number21
        number26 = number22
        nameValue = localValue14
        createVector3, number25, number26, nameValue, workingValue10 = createVector3(number25, number26, nameValue)
        stateFlag3 = stateFlag3(number24, createVector3, number25, number26, nameValue, workingValue10)
        number23[number19] = stateFlag3
      end
    end
    number7 = 0
    number8 = 0
    number9 = localValue18 - 1
    number10 = 1
    for number12 = number8, number9, number10 do
      number13 = number5[number12]
      number15 = 0
      while localValue17 > number15 do
        number17 = number13[number15]
        if number17 then
          number17 = number15
          while true do
            number19 = number15 + 1
            if not (localValue17 > number19) then
              break
            end
            number19 = number15 + 1
            number19 = number13[number19]
            if not number19 then
              break
            end
            number15 = number15 + 1
          end
          number19 = number15
          number20 = number19 - number17
          number20 = number20 + 1
          number21 = localValue1 * number20
          number22 = localValue1
          number23 = number17 + number19
          number23 = number23 + 1
          number23 = number23 * 0.5
          number23 = number23 * localValue1
          number23 = localValue10 + number23
          stateFlag3 = number12 + 0.5
          stateFlag3 = stateFlag3 * localValue1
          stateFlag3 = localValue122 + stateFlag3
          number24 = AddBlipForArea
          createVector3 = number23
          number25 = stateFlag3
          number26 = localValue14
          nameValue = number21
          workingValue10 = number22
          number24 = number24(createVector3, number25, number26, nameValue, workingValue10)
          createVector3 = SetBlipDisplay
          number25 = number24
          number26 = 3
          createVector3(number25, number26)
          createVector3 = SetBlipAlpha
          number25 = number24
          number26 = cmgOperation.blipAlpha
          createVector3(number25, number26)
          createVector3 = SetBlipColour
          number25 = number24
          number26 = cmgOperation.defaultTurfColour
          createVector3(number25, number26)
          createVector3 = SetBlipAsShortRange
          number25 = number24
          number26 = true
          createVector3(number25, number26)
          createVector3 = table
          createVector3 = createVector3.insert
          number26 = localValue8.name
          number25 = cmgOperation6
          number25 = number25[number26]
          number26 = number24
          createVector3(number25, number26)
          number7 = number7 + 1
          if localValue2 <= number7 then
            createVector3 = print
            number25 = "[TURF] Reached max blips per turf for %s, stopping."
            number26 = number25
            number25 = number25.format
            nameValue = localValue8.name
            number25, number26, nameValue, workingValue10 = number25(number26, nameValue)
            createVector3(number25, number26, nameValue, workingValue10)
            break
          end
        end
        number15 = number15 + 1
      end
      if localValue2 <= number7 then
        break
      end
    end
  end
  localValue3 = true
  cmgOperation10 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.createThreadOnTick
  localValue4 = cmgOperation9
  localValue5 = "Gang Turfs"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue3(localValue4, localValue5)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(eventHandler3)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7
  while true do
    localValue1 = cmgOperation10
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = pairs
  localValue2 = cmgOperation5
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue8 = localValue6.ownedByGangId
    localValue7 = dataCollection5
    localValue7 = localValue7[localValue8]
    localValue8 = cmgOperation.turfNameToIndex
    localValue8 = localValue8[localValue5]
    if localValue8 then
      localValue9 = cmgOperation.turfs
      localValue9 = localValue9[localValue8]
      localValue10 = localValue6.attackingBlip
      if localValue10 then
        localValue10 = RemoveBlip
        localValue11 = localValue6.attackingBlip
        localValue10(localValue11)
        localValue6.attackingBlip = nil
      end
      localValue10 = localValue6.ownedByGangId
      if localValue10 then
        localValue10 = localValue6.ownedByGangId
        localValue10 = localValue10 > 0
      end
      localValue11 = localValue10 or localValue11
      localValue11 = localValue7 or localValue11
      if localValue10 and localValue7 then
        localValue11 = localValue9.infoMarker
      end
      if not localValue11 then
        localValue122 = localValue6.ownerBlip
        if localValue122 then
          localValue122 = tCMG
          localValue122 = localValue122.removeBlip
          localValue13 = localValue6.ownerBlip
          localValue122(localValue13)
          localValue6.ownerBlip = nil
        end
      else
        localValue122 = localValue6.ownerBlip
        if not localValue122 then
          localValue122 = stateFlag6
          if localValue122 then
            localValue122 = tCMG
            localValue122 = localValue122.addBlip
            localValue13 = localValue9.infoMarker
            localValue13 = localValue13.x
            localValue14 = localValue9.infoMarker
            localValue14 = localValue14.y
            localValue15 = localValue9.infoMarker
            localValue15 = localValue15.z
            localValue16 = localValue7.blipId
            localValue17 = 1
            localValue18 = localValue7.name
            number5 = 1.0
            number7 = false
            localValue122 = localValue122(localValue13, localValue14, localValue15, localValue16, localValue17, localValue18, number5, number7)
            localValue6.ownerBlip = localValue122
          end
        end
        localValue122 = localValue6.ownerBlip
        if localValue122 then
          localValue122 = SetBlipSprite
          localValue13 = localValue6.ownerBlip
          localValue14 = localValue7.blipId
          localValue122(localValue13, localValue14)
          localValue122 = SetBlipColour
          localValue13 = localValue6.ownerBlip
          localValue14 = 1
          localValue122(localValue13, localValue14)
          localValue122 = SetBlipScale
          localValue13 = localValue6.ownerBlip
          localValue14 = 1.0
          localValue122(localValue13, localValue14)
          localValue122 = AddTextEntryByHash
          localValue13 = GetHashKey
          localValue14 = localValue7.name
          -- Beginner: result below is hash.
          localValue13 = localValue13(localValue14)
          localValue14 = localValue7.name
          localValue122(localValue13, localValue14)
          localValue122 = BeginTextCommandSetBlipName
          localValue13 = localValue7.name
          localValue122(localValue13)
          localValue122 = EndTextCommandSetBlipName
          localValue13 = localValue6.ownerBlip
          localValue122(localValue13)
        end
      end
    end
    localValue9 = cmgOperation6
    localValue9 = localValue9[localValue5]
    if localValue9 then
      if localValue7 then
        localValue10 = cmgOperation.colourLookup
        localValue11 = localValue7.turfColour
        localValue10 = localValue10[localValue11]
        if not localValue10 then
          goto continueAtStep141
        end
        localValue11 = localValue6.ownedByGangId
        if localValue11 then
          localValue11 = localValue10.blip
          if localValue11 then
            goto continueAtStep118
          end
        end
        localValue11 = 0
        ::continueAtStep118::
        localValue122 = pairs
        localValue13 = localValue9
        localValue122, localValue13, localValue14, localValue15 = localValue122(localValue13)
        for localValue16, localValue17 in localValue122, localValue13, localValue14, localValue15 do
          localValue18 = SetBlipColour
          number5 = localValue17
          number7 = localValue11
          localValue18(number5, number7)
        end
      else
        localValue10 = pairs
        localValue11 = localValue9
        localValue10, localValue11, localValue122, localValue13 = localValue10(localValue11)
        for localValue14, localValue15 in localValue10, localValue11, localValue122, localValue13 do
          localValue16 = SetBlipColour
          localValue17 = localValue15
          localValue18 = cmgOperation.defaultTurfColour
          localValue16(localValue17, localValue18)
        end
      end
    end
    ::continueAtStep141::
  end
end
eventHandler3 = RegisterNetEvent
text7 = "adb903a8eb"
-- Beginner: this function handles network event "adb903a8eb".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2) ===
function workingValue18(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = dataCollection5
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3.turfColour = localValue2
    localValue4 = backgroundThread
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue4()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adb903a8eb".
eventHandler3(text7, workingValue18)
eventHandler3 = RegisterNetEvent
text7 = "db88e5e716"
-- Beginner: this function handles network event "db88e5e716".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2
  dataCollection5 = localValue1
  localValue2 = CMG
  localValue2.gangRecognisedGangs = localValue1
  localValue2 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "db88e5e716".
eventHandler3(text7, workingValue18)
eventHandler3 = RegisterNetEvent
text7 = "a014160254"
-- Beginner: this function handles network event "a014160254".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3
  cmgOperation5 = localValue1
  localValue2 = CMG
  localValue2.gangCapturedTurfs = localValue1
  localValue2 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2()
  localValue2 = TriggerEvent
  localValue3 = "e394af4876"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e394af4876".
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a014160254".
eventHandler3(text7, workingValue18)
eventHandler3 = RegisterNetEvent
text7 = "62e40e243c"
-- Beginner: this function handles network event "62e40e243c".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2) ===
function workingValue18(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = dataCollection5
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = table
    localValue4 = localValue4.insert
    localValue5 = localValue3.onlinePlayers
    localValue6 = localValue2
    localValue4(localValue5, localValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62e40e243c".
eventHandler3(text7, workingValue18)
eventHandler3 = RegisterNetEvent
text7 = "5da078c840"
-- Beginner: this function handles network event "5da078c840".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2) ===
function workingValue18(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = dataCollection5
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue4 = table
    localValue4 = localValue4.find
    localValue5 = localValue3.onlinePlayers
    localValue6 = localValue2
    localValue4 = localValue4(localValue5, localValue6)
    localValue5 = assert
    localValue6 = localValue4
    localValue5(localValue6)
    localValue5 = table
    localValue5 = localValue5.insert
    localValue6 = localValue3.onlinePlayers
    localValue7 = localValue4
    localValue5(localValue6, localValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5da078c840".
eventHandler3(text7, workingValue18)
eventHandler3 = RegisterNetEvent
text7 = "b41c8a1869"
-- Beginner: this function handles network event "b41c8a1869".

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2) ===
function workingValue18(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = cmgOperation.turfs
  localValue3 = localValue3[localValue1]
  localValue5 = localValue3.name
  localValue4 = cmgOperation5
  localValue4 = localValue4[localValue5]
  if not localValue4 then
    localValue5 = {}
    localValue4 = localValue5
    localValue6 = localValue3.name
    localValue5 = cmgOperation5
    localValue5[localValue6] = localValue4
  end
  localValue4.ownedByGangId = localValue2
  localValue5 = backgroundThread
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue5()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b41c8a1869".
eventHandler3(text7, workingValue18)
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3
  if not localValue1 then
    localValue2 = workingValue
    localValue1 = localValue2 or localValue1
    if localValue2 then
      localValue1 = workingValue.id
    end
  end
  localValue2 = dataCollection5
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2.textureName
    if localValue3 then
      localValue3 = localValue2.textureName
      return localValue3
    end
  end
  localValue3 = nil
  return localValue3
end
eventHandler3.getGangRecognisedTexture = text7
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  localValue1 = workingValue
  if localValue1 then
    localValue1 = workingValue.id
  end
  return localValue1
end
eventHandler3.getGangId = text7
eventHandler3 = CMG
eventHandler3 = eventHandler3.registerDevMenuItems
text7 = "Gangs"

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = workingValue
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Separator
    localValue2 = "~y~No Gang Selected."
    localValue1(localValue2)
    return
  end
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Set Turf Owned Locally"
  localValue3 = "Sets the main gang to being owned locally. This will break sync, use in dev only."
  localValue4 = true

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22, localValue32) ===
  function localValue5(localValue12, localValue22, localValue32)
    local localEventCall, text6, number27, networkTime, workingValue20
    if localValue32 then
      localEventCall = TriggerEvent
      text6 = "b41c8a1869"
      number27 = 1
      networkTime = GetNetworkTime
      -- Beginner: result below is networkTime.
      networkTime = networkTime()
      workingValue20 = workingValue.id
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b41c8a1869".
      localEventCall(text6, number27, networkTime, workingValue20)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Debug Gang Blips"
  localValue3 = "Display all the gang blips near to 0,0. This is just to view them, does nothing else."
  localValue4 = true

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22, localValue32) ===
  function localValue5(localValue12, localValue22, localValue32)
    local localEventCall, text6, number27, networkTime, workingValue20, workingValue21, workingValue22, number, workingValue2, number2
    if localValue32 then
      localEventCall = pairs
      text6 = cmgOperation.debugGangBlips
      localEventCall, text6, number27, networkTime = localEventCall(text6)
      for workingValue20, workingValue21 in localEventCall, text6, number27, networkTime do
        workingValue22 = AddBlipForCoord
        number = 0.0
        workingValue2 = workingValue20 * 15.0
        number2 = 0.0
        -- Beginner: result below is blipHandle.
        workingValue22 = workingValue22(number, workingValue2, number2)
        number = SetBlipSprite
        workingValue2 = workingValue22
        number2 = workingValue21
        number(workingValue2, number2)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5)
end
eventHandler3(text7, workingValue18)
eventHandler3 = CMG

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17
  stateFlag6 = localValue1
  if localValue1 then
    localValue2 = cmgOperation.blipAlpha
    if localValue2 then
      goto continueAtStep8
    end
  end
  localValue2 = 0
  ::continueAtStep8::
  localValue3 = pairs
  localValue4 = cmgOperation6
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = pairs
    localValue10 = localValue8
    localValue9, localValue10, localValue11, localValue122 = localValue9(localValue10)
    for localValue13, localValue14 in localValue9, localValue10, localValue11, localValue122 do
      localValue15 = DoesBlipExist
      localValue16 = localValue14
      localValue15 = localValue15(localValue16)
      if localValue15 then
        localValue15 = SetBlipAlpha
        localValue16 = localValue14
        localValue17 = localValue2
        localValue15(localValue16, localValue17)
      end
    end
  end
  localValue3 = pairs
  localValue4 = cmgOperation5
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = localValue8.ownerBlip
    if localValue9 then
      localValue9 = DoesBlipExist
      localValue10 = localValue8.ownerBlip
      localValue9 = localValue9(localValue10)
      if localValue9 then
        if localValue1 then
          localValue9 = 255
          if localValue9 then
            goto continueAtStep49
          end
        end
        localValue9 = 0
        ::continueAtStep49::
        localValue10 = SetBlipAlpha
        localValue11 = localValue8.ownerBlip
        localValue122 = localValue9
        localValue10(localValue11, localValue122)
      end
    end
    localValue9 = localValue8.attackingBlip
    if localValue9 then
      localValue9 = DoesBlipExist
      localValue10 = localValue8.attackingBlip
      localValue9 = localValue9(localValue10)
      if localValue9 then
        localValue9 = SetBlipAlpha
        localValue10 = localValue8.attackingBlip
        localValue11 = localValue2
        localValue9(localValue10, localValue11)
      end
    end
  end
end
eventHandler3.setShowTurfBlips = text7
eventHandler3 = false

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.hasGangRpRagdollPerk
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.inEvent
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCombatTimer
  localValue1 = localValue1()
  if localValue1 > 0 then
    localValue1 = false
    return localValue1
  end
  localValue1 = tCMG
  localValue1 = localValue1.canAnim
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = IsEntityDead
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep41
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep41::
  localValue2 = CMG
  localValue2 = localValue2.isHandcuffed
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = tCMG
  localValue2 = localValue2.isInComa
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = false
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = IsPedOnFoot
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = IsPedSwimming
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = IsPedSwimmingUnderWater
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep82
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep82::
  localValue2 = IsPedFalling
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = IsPedInParachuteFreeFall
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep94
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep94::
  localValue2 = true
  return localValue2
end
workingValue18 = RegisterCommand
cmgOperation11 = "+cmgGangRpRagdoll"
-- Beginner: this function is the command handler for "+cmgGangRpRagdoll".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = text7
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = true
  eventHandler3 = localValue1
  localValue1 = notify
  localValue2 = "~s~Release ~b~G ~s~to stop ragdolling."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end
stateFlag5 = false
-- Beginner: Register a chat/console command. Event/command: "+cmgGangRpRagdoll".
workingValue18(cmgOperation11, text8, stateFlag5)
workingValue18 = RegisterCommand
cmgOperation11 = "-cmgGangRpRagdoll"
-- Beginner: this function is the command handler for "-cmgGangRpRagdoll".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = false
  eventHandler3 = localValue1
end
stateFlag5 = false
workingValue18(cmgOperation11, text8, stateFlag5)
workingValue18 = RegisterKeyMapping
cmgOperation11 = "+cmgGangRpRagdoll"
text8 = "Ragdoll (hold)"
stateFlag5 = "keyboard"
text9 = "G"
-- Beginner: Bind a command to a keyboard/controller key.
workingValue18(cmgOperation11, text8, stateFlag5, text9)
workingValue18 = Citizen
workingValue18 = workingValue18.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation11; parameters: none) ===
function cmgOperation11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  while true do
    localValue1 = eventHandler3
    if localValue1 then
      localValue1 = IsPauseMenuActive
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = text7
        localValue1 = localValue1()
        if localValue1 then
          goto continueAtStep19
        end
      end
      localValue1 = false
      eventHandler3 = localValue1
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 200
      localValue1(localValue2)
      goto continueAtStep42
      ::continueAtStep19::
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      if 0 ~= localValue1 then
        localValue2 = SetPedToRagdoll
        localValue3 = localValue1
        localValue4 = 500
        localValue5 = 500
        localValue6 = 0
        localValue7 = false
        localValue8 = false
        localValue9 = false
        localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9)
      end
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = 0
      localValue2(localValue3)
    else
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 200
      localValue1(localValue2)
    end
    ::continueAtStep42::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue18(cmgOperation11)
workingValue18 = false
cmgOperation11 = CMG

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue18
  if localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.hasGangRpCarTheftPerk
  localValue2 = localValue2()
  if not localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue3 = IsEntityDead
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      goto continueAtStep22
    end
  end
  return
  ::continueAtStep22::
  localValue3 = CMG
  localValue3 = localValue3.isHandcuffed
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = tCMG
  localValue3 = localValue3.isInComa
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = IsPedInAnyVehicle
  localValue4 = localValue2
  localValue5 = false
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.isInGreenzone
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = true
  workingValue18 = localValue3
  localValue3 = TriggerServerEvent
  localValue4 = "8fe4aba1e5"
  localValue5 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fe4aba1e5".
  localValue3(localValue4, localValue5)
end
cmgOperation11.startGangCarjack = text8
cmgOperation11 = RegisterNetEvent
text8 = "6539f54c12"
-- Beginner: this function handles network event "6539f54c12".

-- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
function stateFlag5()
  local localValue1, localValue2
  localValue1 = false
  workingValue18 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6539f54c12".
cmgOperation11(text8, stateFlag5)
cmgOperation11 = RegisterNetEvent
text8 = "7fbf0126af"
-- Beginner: this function handles network event "7fbf0126af".

-- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue1) ===
function stateFlag5(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17
  localValue2 = GetPlayerFromServerId
  localValue3 = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(localValue3)
  if -1 == localValue2 then
    localValue3 = false
    workingValue18 = localValue3
    return
  end
  localValue3 = GetPlayerPed
  localValue4 = localValue2
  -- Beginner: result below is playerPed.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    localValue4 = false
    workingValue18 = localValue4
    return
  end
  localValue4 = GetVehiclePedIsUsing
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if 0 == localValue4 then
    localValue5 = false
    workingValue18 = localValue5
    return
  end
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetPedRelationshipGroupHash
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  localValue7 = GetPedRelationshipGroupHash
  localValue8 = localValue3
  localValue7 = localValue7(localValue8)
  localValue8 = GetRelationshipBetweenGroups
  localValue9 = localValue6
  localValue10 = localValue7
  localValue8 = localValue8(localValue9, localValue10)
  localValue9 = GetRelationshipBetweenGroups
  localValue10 = localValue7
  localValue11 = localValue6
  localValue9 = localValue9(localValue10, localValue11)
  localValue10 = SetRelationshipBetweenGroups
  localValue11 = 5
  localValue122 = localValue6
  localValue13 = localValue7
  localValue10(localValue11, localValue122, localValue13)
  localValue10 = SetRelationshipBetweenGroups
  localValue11 = 5
  localValue122 = localValue7
  localValue13 = localValue6
  localValue10(localValue11, localValue122, localValue13)
  localValue10 = SetPedCanBeDraggedOut
  localValue11 = localValue3
  localValue122 = true
  localValue10(localValue11, localValue122)
  localValue10 = TaskEnterVehicle
  localValue11 = localValue5
  localValue122 = localValue4
  localValue13 = -1
  localValue14 = -1
  localValue15 = 1.0
  localValue16 = 8
  localValue17 = 0
  localValue10(localValue11, localValue122, localValue13, localValue14, localValue15, localValue16, localValue17)
  localValue10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue10 = localValue10()
  while true do
    localValue11 = GetVehiclePedIsIn
    localValue122 = localValue5
    localValue13 = false
    -- Beginner: result below is currentVehicle.
    localValue11 = localValue11(localValue122, localValue13)
    if localValue11 == localValue4 then
      break
    end
    localValue11 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue11 = localValue11()
    localValue11 = localValue11 - localValue10
    localValue122 = 8000
    if localValue11 > localValue122 then
      break
    end
    localValue11 = Citizen
    localValue11 = localValue11.Wait
    localValue122 = 0
    localValue11(localValue122)
  end
  localValue11 = SetPedCanBeDraggedOut
  localValue122 = localValue3
  localValue13 = false
  localValue11(localValue122, localValue13)
  localValue11 = SetRelationshipBetweenGroups
  localValue122 = localValue8
  localValue13 = localValue6
  localValue14 = localValue7
  localValue11(localValue122, localValue13, localValue14)
  localValue11 = SetRelationshipBetweenGroups
  localValue122 = localValue9
  localValue13 = localValue7
  localValue14 = localValue6
  localValue11(localValue122, localValue13, localValue14)
  localValue11 = false
  workingValue18 = localValue11
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7fbf0126af".
cmgOperation11(text8, stateFlag5)
