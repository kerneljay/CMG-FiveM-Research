--[[
    LEVEL 1 BEGINNER GUIDE — Radialmenu
    ========================================

    File: cmg/prod/client/ui/cl_radialmenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Radialmenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 74
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
local cmgOperation, cmgOperation3, cmgOperation5, cmgOperation7, text10, workingValue42, workingValue46, workingValue47, workingValue48, workingValue50, workingValue2, workingValue3, stateFlag, workingValue4, workingValue5, stateFlag2, number2, stateFlag3, number3, stateFlag4, number4, workingValue7, workingValue8, workingValue9, cmgOperation4, text2, workingValue11, workingValue13, stateFlag5, text5, stateFlag6, text6, cmgOperation6, workingValue16, text8, eventHandler, text9, workingValue18, stateFlag7, workingValue19, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue32, workingValue33, workingValue34, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue40, workingValue41, workingValue44, workingValue45, cmgOperation8, cmgOperation9, cmgOperation10, text11, stateFlag8, text12
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation3 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.loadModule
cmgOperation5 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgOperation3 = cmgOperation3(cmgOperation5)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.loadModule
cmgOperation7 = "cfg/cfg_casts"
-- Beginner: result below is config.
cmgOperation5 = cmgOperation5(cmgOperation7)
if not cmgOperation5 then
  cmgOperation5 = {}
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.loadModule
text10 = "cfg/items"
-- Beginner: result below is config.
cmgOperation7 = cmgOperation7(text10)
text10 = cmgOperation7.items
if text10 then
  text10 = cmgOperation7.items
  text10 = text10.evidencebag
  if text10 then
    text10 = cmgOperation7.items
    text10 = text10.evidencebag
    text10 = text10.weight
    if text10 then
      goto continueAtStep35
    end
  end
end
text10 = 5.0
::continueAtStep35::

-- === HELPER FUNCTION (decompiler name: workingValue42; parameters: localValue1, localValue2) ===
function workingValue42(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  if 0 ~= localValue1 then
    localValue3 = IsEntityAVehicle
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getVehicleIdFromModel
      localValue4 = GetEntityModel
      localValue5 = localValue1
      localValue4, localValue5 = localValue4(localValue5)
      localValue3 = localValue3(localValue4, localValue5)
      if localValue3 then
        localValue4 = cmgOperation.garages
        localValue4 = localValue4[localValue2]
        if localValue4 then
          localValue4 = cmgOperation.garages
          localValue4 = localValue4[localValue2]
          localValue4 = localValue4[localValue3]
          if localValue4 then
            localValue4 = true
            return localValue4
          end
        end
      end
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue46; parameters: localValue1) ===
function workingValue46(localValue1)
  local localValue2, localValue3, localValue4
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = DecorGetBool
  localValue3 = localValue1
  localValue4 = "6b6dade745"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "aa.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = tCMG
  localValue2 = localValue2.isInGreenzone
  localValue3 = false
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = DecorGetInt
  localValue3 = localValue1
  localValue4 = "0a6cf607ed"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 <= 0 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientInventoryItem
  localValue3 = "lockpick"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientInventoryItem
    localValue3 = "ldnulockpick"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.clientVehicleWasLockpickedThisSession
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = false
        return localValue2
      end
    end
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue47; parameters: localValue1) ===
function workingValue47(localValue1)
  local localValue2, localValue3, localValue4
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = GetPedInVehicleSeat
  localValue3 = localValue1
  localValue4 = -1
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetEntityIsNetworked
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientInventoryItem
  localValue3 = "diyrepairkit"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue48; parameters: localValue1) ===
function workingValue48(localValue1)
  local localValue2, localValue3, localValue4
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = GetPedInVehicleSeat
  localValue3 = localValue1
  localValue4 = -1
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetEntityIsNetworked
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientGroup
  localValue3 = "Trucking"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientInventoryItem
  localValue3 = "truckingrepairkit"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: localValue1) ===
function workingValue50(localValue1)
  local localValue2, localValue3
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep12
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep12::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetEntityIsNetworked
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = true
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "borderforce.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = false
      return localValue2
    end
  end
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep26
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep26::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = DecorGetInt
  localValue3 = localValue1
  localValue4 = "0a6cf607ed"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 > 0 then
    localValue3 = CMG
    localValue3 = localValue3.getSpaceInFirstChest
    localValue3 = localValue3()
    localValue4 = text10
    if localValue3 < localValue4 then
      localValue3 = false
      return localValue3
    end
    localValue3 = true
    return localValue3
  end
  localValue3 = GetEntityAttachedTo
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 ~= localValue3 then
    localValue4 = true
    return localValue4
  end
  localValue4 = false
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.hasGangRpCarTheftPerk
  localValue2 = localValue2()
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  if localValue1 and 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      goto continueAtStep19
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep19::
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = tCMG
  localValue2 = localValue2.isInGreenzone
  localValue3 = false
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = GetPedInVehicleSeat
  localValue3 = localValue1
  localValue4 = -1
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue3 = IsPedAPlayer
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep47
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep47::
  localValue3 = true
  return localValue3
end
stateFlag = false
workingValue4 = nil
workingValue5 = nil
stateFlag2 = false
number2 = 0
stateFlag3 = false
number3 = 0
stateFlag4 = false
number4 = 0

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3
  localValue1 = true
  stateFlag4 = localValue1
  localValue1 = SetTimeout
  localValue2 = 1000

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local cmgOperation2, text
    cmgOperation2 = false
    stateFlag4 = cmgOperation2
  end
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue8(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8, dataCollection9, dataCollection10, iterator, tableHelper2, workingValue10, dataCollection11, text3, workingValue12, workingValue14, text4, tableHelper3, workingValue15, dataCollection12, text7, workingValue17
  dataCollection13 = {}
  health = localValue1 or health
  if localValue1 then
    health = GetEntityHealth
    workingValue51 = localValue1
    -- Beginner: result below is health.
    health = health(workingValue51)
    health = health <= 102
  end
  if health and not localValue4 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "revive"
    dataCollection.title = "CPR"
    dataCollection.icon = "#cpr"
    dataCollection13[workingValue51] = dataCollection
  end
  if not localValue4 then
    if localValue6 then
      workingValue51 = #dataCollection13
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "removeHeadbag"
      dataCollection.title = "Remove Bag"
      dataCollection.icon = "#removeHeadbag"
      dataCollection13[workingValue51] = dataCollection
    else
      workingValue51 = #dataCollection13
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "removeHeadbag"
      dataCollection.title = "Place Bag"
      dataCollection.icon = "#removeHeadbag"
      dataCollection13[workingValue51] = dataCollection
    end
  end
  if localValue7 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "transferChips"
    dataCollection.title = "Transfer Chips"
    dataCollection.icon = "#casinoChip"
    dataCollection13[workingValue51] = dataCollection
  end
  if localValue2 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "askId"
    dataCollection.title = "Ask ID"
    dataCollection.icon = "#askId"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "giveCash"
    dataCollection.title = "Give Cash"
    dataCollection.icon = "#giveMoney"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "search"
    dataCollection.title = "Search Player"
    dataCollection.icon = "#searchPerson"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "police"
    dataCollection.title = "Police Service"
    dataCollection.icon = "#metPolice"
    tableHelper = {}
    dataCollection2 = {}
    dataCollection2.id = "handcuff"
    dataCollection2.title = "Handcuff"
    dataCollection2.icon = "#handcuff"
    dataCollection3 = {}
    dataCollection3.id = "drag"
    dataCollection3.title = "Drag"
    dataCollection3.icon = "#drag"
    dataCollection4 = {}
    dataCollection4.id = "putincar"
    dataCollection4.title = "Put in car"
    dataCollection4.icon = "#putInVehicle"
    dataCollection5 = {}
    dataCollection5.id = "gunshottest"
    dataCollection5.title = "GSR Test"
    dataCollection5.icon = "#seizeWeapons"
    dataCollection6 = {}
    dataCollection6.id = "quickFine"
    dataCollection6.title = "Quick Fine"
    dataCollection6.icon = "#giveMoney"
    dataCollection7 = {}
    dataCollection7.id = "quickJail"
    dataCollection7.title = "Quick Jail"
    dataCollection7.icon = "#jail"
    dataCollection8 = {}
    dataCollection8.id = "pardonBounty"
    dataCollection8.title = "Pardon bounty"
    dataCollection8.icon = "#askId"
    dataCollection9 = {}
    dataCollection9.id = "requesttransport"
    dataCollection9.title = "Transport"
    dataCollection9.icon = "#putInVehicle"
    dataCollection10 = {}
    dataCollection10.id = "seizeweapons"
    dataCollection10.title = "Seize Weapons"
    dataCollection10.icon = "#seizeWeapons"
    iterator = {}
    iterator.id = "seizeillegals"
    iterator.title = "Seize Illegals"
    iterator.icon = "#seizeIllegal"
    tableHelper[1] = dataCollection2
    tableHelper[2] = dataCollection3
    tableHelper[3] = dataCollection4
    tableHelper[4] = dataCollection5
    tableHelper[5] = dataCollection6
    tableHelper[6] = dataCollection7
    tableHelper[7] = dataCollection8
    tableHelper[8] = dataCollection9
    tableHelper[9] = dataCollection10
    tableHelper[10] = iterator
    dataCollection.items = tableHelper
    dataCollection13[workingValue51] = dataCollection
  elseif localValue3 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "askId"
    dataCollection.title = "Ask ID"
    dataCollection.icon = "#askId"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "giveCash"
    dataCollection.title = "Give Cash"
    dataCollection.icon = "#giveMoney"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "search"
    dataCollection.title = "Search Player"
    dataCollection.icon = "#searchPerson"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "police"
    dataCollection.title = "Prison Service"
    dataCollection.icon = "#metPolice"
    tableHelper = {}
    dataCollection2 = {}
    dataCollection2.id = "handcuff"
    dataCollection2.title = "Handcuff"
    dataCollection2.icon = "#handcuff"
    dataCollection3 = {}
    dataCollection3.id = "drag"
    dataCollection3.title = "Drag"
    dataCollection3.icon = "#drag"
    dataCollection4 = {}
    dataCollection4.id = "putincar"
    dataCollection4.title = "Put in car"
    dataCollection4.icon = "#putInVehicle"
    dataCollection5 = {}
    dataCollection5.id = "segregation"
    dataCollection5.title = "Segregation"
    dataCollection5.icon = "#rope"
    dataCollection6 = {}
    dataCollection6.id = "jail"
    dataCollection6.title = "Jail"
    dataCollection6.icon = "#jail"
    dataCollection7 = {}
    dataCollection7.id = "seizeweapons"
    dataCollection7.title = "Seize Weapons"
    dataCollection7.icon = "#seizeWeapons"
    dataCollection8 = {}
    dataCollection8.id = "seizeillegals"
    dataCollection8.title = "Seize Illegals"
    dataCollection8.icon = "#seizeIllegal"
    tableHelper[1] = dataCollection2
    tableHelper[2] = dataCollection3
    tableHelper[3] = dataCollection4
    tableHelper[4] = dataCollection5
    tableHelper[5] = dataCollection6
    tableHelper[6] = dataCollection7
    tableHelper[7] = dataCollection8
    dataCollection.items = tableHelper
    dataCollection13[workingValue51] = dataCollection
  elseif localValue5 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "askId"
    dataCollection.title = "Ask ID"
    dataCollection.icon = "#askId"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "giveCash"
    dataCollection.title = "Give Cash"
    dataCollection.icon = "#giveMoney"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "search"
    dataCollection.title = "Search Player"
    dataCollection.icon = "#searchPerson"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "police"
    dataCollection.title = "Vigilante"
    dataCollection.icon = "#vigilante"
    tableHelper = {}
    dataCollection2 = {}
    dataCollection2.id = "handcuff"
    dataCollection2.title = "Handcuff"
    dataCollection2.icon = "#handcuff"
    dataCollection3 = {}
    dataCollection3.id = "drag"
    dataCollection3.title = "Drag"
    dataCollection3.icon = "#drag"
    dataCollection4 = {}
    dataCollection4.id = "putincar"
    dataCollection4.title = "Put in car"
    dataCollection4.icon = "#putInVehicle"
    dataCollection5 = {}
    dataCollection5.id = "jail"
    dataCollection5.title = "Jail"
    dataCollection5.icon = "#jail"
    tableHelper[1] = dataCollection2
    tableHelper[2] = dataCollection3
    tableHelper[3] = dataCollection4
    tableHelper[4] = dataCollection5
    dataCollection.items = tableHelper
    dataCollection13[workingValue51] = dataCollection
  elseif localValue4 then
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "askId"
    dataCollection.title = "Ask ID"
    dataCollection.icon = "#askId"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "giveCash"
    dataCollection.title = "Give Cash"
    dataCollection.icon = "#giveMoney"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = CMG
    workingValue51 = workingValue51.hasClientPermission
    dataCollection = "doctor.permission"
    workingValue51 = workingValue51(dataCollection)
    dataCollection = {}
    if health then
      tableHelper = table
      tableHelper = tableHelper.insert
      dataCollection2 = dataCollection
      dataCollection3 = {}
      dataCollection3.id = "revive"
      dataCollection3.title = "Revive"
      dataCollection3.icon = "#cpr"
      tableHelper(dataCollection2, dataCollection3)
      tableHelper = table
      tableHelper = tableHelper.insert
      dataCollection2 = dataCollection
      dataCollection3 = {}
      dataCollection3.id = "nhsDrag"
      dataCollection3.title = "Drag"
      dataCollection3.icon = "#drag"
      tableHelper(dataCollection2, dataCollection3)
    else
      tableHelper = GetPlayerByEntityID
      dataCollection2 = localValue1
      tableHelper = tableHelper(dataCollection2)
      if tableHelper then
        dataCollection2 = GetPlayerServerId
        dataCollection3 = tableHelper
        -- Beginner: result below is serverId.
        dataCollection2 = dataCollection2(dataCollection3)
        if dataCollection2 then
          goto continueAtStep351
        end
      end
      dataCollection2 = 0
      ::continueAtStep351::
      dataCollection3 = table
      dataCollection3 = dataCollection3.insert
      dataCollection4 = dataCollection
      dataCollection5 = {}
      dataCollection5.id = "medicBandage"
      dataCollection5.title = "Bandage"
      dataCollection5.icon = "#bandage"
      dataCollection3(dataCollection4, dataCollection5)
      dataCollection3 = table
      dataCollection3 = dataCollection3.insert
      dataCollection4 = dataCollection
      dataCollection5 = {}
      dataCollection5.id = "medicMorphine"
      dataCollection5.title = "Apply Morphine"
      dataCollection5.icon = "#morphine"
      dataCollection3(dataCollection4, dataCollection5)
      if workingValue51 then
        if dataCollection2 > 0 then
          dataCollection3 = CMG
          dataCollection3 = dataCollection3.TriggerServerCallback
          dataCollection4 = "d9316895e8"
          dataCollection5 = dataCollection2
          dataCollection3 = dataCollection3(dataCollection4, dataCollection5)
          if dataCollection3 then
            goto continueAtStep381
          end
        end
        dataCollection3 = false
        ::continueAtStep381::
        if dataCollection3 then
          dataCollection4 = "Take off Crutches"
          if dataCollection4 then
            goto continueAtStep387
          end
        end
        dataCollection4 = "Put In Crutches"
        ::continueAtStep387::
        dataCollection5 = table
        dataCollection5 = dataCollection5.insert
        dataCollection6 = dataCollection
        dataCollection7 = {}
        dataCollection7.id = "toggleCrutches"
        dataCollection7.title = dataCollection4
        dataCollection7.icon = "#crutches"
        dataCollection5(dataCollection6, dataCollection7)
        dataCollection5 = table
        dataCollection5 = dataCollection5.insert
        dataCollection6 = dataCollection
        dataCollection7 = {}
        dataCollection7.id = "giveWheelchair"
        dataCollection7.title = "Put In Wheelchair"
        dataCollection7.icon = "#wheelchairSymbol"
        dataCollection5(dataCollection6, dataCollection7)
      end
    end
    tableHelper = table
    tableHelper = tableHelper.insert
    dataCollection2 = dataCollection
    dataCollection3 = {}
    dataCollection3.id = "nhsGiveDonut"
    dataCollection3.title = "Give Donut"
    dataCollection3.icon = "#donut"
    tableHelper(dataCollection2, dataCollection3)
    if workingValue51 then
      tableHelper = cmgOperation5.casts
      if not tableHelper then
        tableHelper = {}
      end
      dataCollection2 = cmgOperation5.categories
      if not dataCollection2 then
        dataCollection2 = {}
      end
      dataCollection3 = {}
      dataCollection4 = ipairs
      dataCollection5 = dataCollection2
      dataCollection4, dataCollection5, dataCollection6, dataCollection7 = dataCollection4(dataCollection5)
      for dataCollection8, dataCollection9 in dataCollection4, dataCollection5, dataCollection6, dataCollection7 do
        dataCollection10 = {}
        iterator = ipairs
        tableHelper2 = dataCollection9.castIds
        if not tableHelper2 then
          tableHelper2 = {}
        end
        iterator, tableHelper2, workingValue10, dataCollection11 = iterator(tableHelper2)
        for text3, workingValue12 in iterator, tableHelper2, workingValue10, dataCollection11 do
          workingValue14 = tableHelper[workingValue12]
          if workingValue14 then
            text4 = dataCollection9.icon
            if not text4 then
              text4 = "#firstaid"
            end
            tableHelper3 = table
            tableHelper3 = tableHelper3.insert
            workingValue15 = dataCollection10
            dataCollection12 = {}
            text7 = "toggleCast_"
            workingValue17 = workingValue12
            text7 = text7 .. workingValue17
            dataCollection12.id = text7
            text7 = workingValue14.label
            dataCollection12.title = text7
            dataCollection12.icon = text4
            dataCollection12.castId = workingValue12
            tableHelper3(workingValue15, dataCollection12)
          end
        end
        iterator = #dataCollection10
        if iterator > 0 then
          iterator = dataCollection9.icon
          if not iterator then
            iterator = "#firstaid"
          end
          tableHelper2 = table
          tableHelper2 = tableHelper2.insert
          workingValue10 = dataCollection3
          dataCollection11 = {}
          text3 = "casts_"
          workingValue12 = dataCollection9.id
          text3 = text3 .. workingValue12
          dataCollection11.id = text3
          text3 = dataCollection9.title
          dataCollection11.title = text3
          dataCollection11.icon = iterator
          dataCollection11.items = dataCollection10
          tableHelper2(workingValue10, dataCollection11)
        end
      end
      dataCollection4 = table
      dataCollection4 = dataCollection4.insert
      dataCollection5 = dataCollection3
      dataCollection6 = {}
      dataCollection6.id = "removeAllCasts"
      dataCollection6.title = "Remove All Casts"
      dataCollection6.icon = "#removeAllCasts"
      dataCollection4(dataCollection5, dataCollection6)
      dataCollection4 = #dataCollection3
      if dataCollection4 > 0 then
        dataCollection4 = table
        dataCollection4 = dataCollection4.insert
        dataCollection5 = dataCollection
        dataCollection6 = {}
        dataCollection6.id = "casts"
        dataCollection6.title = "Casts"
        dataCollection6.icon = "#firstaid"
        dataCollection6.items = dataCollection3
        dataCollection4(dataCollection5, dataCollection6)
      end
    end
    tableHelper = #dataCollection13
    tableHelper = tableHelper + 1
    dataCollection2 = {}
    dataCollection2.id = "healthService"
    dataCollection2.title = "Health Service"
    dataCollection2.icon = "#healthservice"
    dataCollection2.items = dataCollection
    dataCollection13[tableHelper] = dataCollection2
  else
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "askId"
    dataCollection.title = "Ask ID"
    dataCollection.icon = "#askId"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "giveCash"
    dataCollection.title = "Give Cash"
    dataCollection.icon = "#giveMoney"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "search"
    dataCollection.title = "Search Player"
    dataCollection.icon = "#searchPerson"
    dataCollection13[workingValue51] = dataCollection
    workingValue51 = #dataCollection13
    workingValue51 = workingValue51 + 1
    dataCollection = {}
    dataCollection.id = "robPerson"
    dataCollection.title = "Rob Person"
    dataCollection.icon = "#robPlayer"
    dataCollection13[workingValue51] = dataCollection
  end
  return dataCollection13
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue9(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2
  if localValue1 then
    localValue7 = {}
    dataCollection13 = {}
    dataCollection13.id = "lock"
    dataCollection13.title = "Lock Car"
    dataCollection13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workingValue51 = {}
    workingValue51.id = "cleanCar"
    workingValue51.title = "Clean Car"
    workingValue51.icon = "#cleanCar"
    localValue7[1] = dataCollection13
    localValue7[2] = health
    localValue7[3] = workingValue51
    dataCollection13 = workingValue47
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = workingValue48
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    localValue7[dataCollection13] = health
    dataCollection13 = {}
    health = workingValue2
    workingValue51 = localValue6
    health = health(workingValue51)
    if health then
      health = #dataCollection13
      health = health + 1
      workingValue51 = {}
      workingValue51.id = "searchvehicle"
      workingValue51.title = "Search Vehicle"
      workingValue51.icon = "#searchVehicle"
      dataCollection13[health] = workingValue51
    end
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "impoundVehicle"
    workingValue51.title = "Impound Vehicle"
    workingValue51.icon = "#searchVehicle"
    dataCollection13[health] = workingValue51
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "askDriverId"
    workingValue51.title = "Ask Driver ID"
    workingValue51.icon = "#askId"
    dataCollection13[health] = workingValue51
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "ejectPassenger"
    workingValue51.title = "Eject Passenger"
    workingValue51.icon = "#openHood"
    dataCollection13[health] = workingValue51
    health = #localValue7
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "police"
    workingValue51.title = "MET Police"
    workingValue51.icon = "#metPolice"
    workingValue51.items = dataCollection13
    localValue7[health] = workingValue51
    return localValue7
  elseif localValue2 then
    localValue7 = {}
    dataCollection13 = {}
    dataCollection13.id = "lock"
    dataCollection13.title = "Lock Car"
    dataCollection13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workingValue51 = {}
    workingValue51.id = "cleanCar"
    workingValue51.title = "Clean Car"
    workingValue51.icon = "#cleanCar"
    localValue7[1] = dataCollection13
    localValue7[2] = health
    localValue7[3] = workingValue51
    dataCollection13 = workingValue47
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = workingValue48
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    localValue7[dataCollection13] = health
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "police"
    health.title = "HMP"
    health.icon = "#metPolice"
    workingValue51 = {}
    dataCollection = {}
    dataCollection.id = "impoundVehicle"
    dataCollection.title = "Impound Vehicle"
    dataCollection.icon = "#searchVehicle"
    tableHelper = {}
    tableHelper.id = "askDriverId"
    tableHelper.title = "Ask Driver ID"
    tableHelper.icon = "#askId"
    workingValue51[1] = dataCollection
    workingValue51[2] = tableHelper
    health.items = workingValue51
    localValue7[dataCollection13] = health
    return localValue7
  elseif localValue3 then
    localValue7 = GetEntityModel
    dataCollection13 = localValue6
    -- Beginner: result below is modelHash.
    localValue7 = localValue7(dataCollection13)
    dataCollection13 = cmgOperation3.mechanicFlatbedModelHashes
    dataCollection13 = dataCollection13[localValue7]
    if not dataCollection13 then
      dataCollection13 = cmgOperation3.mechanicTowTruckModelHashes
      dataCollection13 = dataCollection13[localValue7]
    end
    health = {}
    workingValue51 = workingValue48
    dataCollection = localValue6
    workingValue51 = workingValue51(dataCollection)
    if workingValue51 then
      workingValue51 = #health
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "repairTrucking"
      dataCollection.title = "Truck repair"
      dataCollection.icon = "#repair"
      health[workingValue51] = dataCollection
    end
    workingValue51 = workingValue50
    dataCollection = localValue6
    workingValue51 = workingValue51(dataCollection)
    if workingValue51 then
      workingValue51 = #health
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "repairAA"
      dataCollection.title = "Repair"
      dataCollection.icon = "#repair"
      health[workingValue51] = dataCollection
    end
    if dataCollection13 then
      workingValue51 = #health
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "detachVehicle"
      dataCollection.title = "Detach Vehicle"
      dataCollection.icon = "#searchVehicle"
      health[workingValue51] = dataCollection
    else
      workingValue51 = #health
      workingValue51 = workingValue51 + 1
      dataCollection = {}
      dataCollection.id = "mechanicHookTargetVehicle"
      dataCollection.title = "Attach to Flatbed"
      dataCollection.icon = "#searchVehicle"
      health[workingValue51] = dataCollection
    end
    workingValue51 = {}
    dataCollection = {}
    dataCollection.id = "lock"
    dataCollection.title = "Lock Car"
    dataCollection.icon = "#carLock"
    tableHelper = {}
    tableHelper.id = "openBoot"
    tableHelper.title = "Open Boot"
    tableHelper.icon = "#openBoot"
    dataCollection2 = {}
    dataCollection2.id = "cleanCar"
    dataCollection2.title = "Clean Car"
    dataCollection2.icon = "#cleanCar"
    workingValue51[1] = dataCollection
    workingValue51[2] = tableHelper
    workingValue51[3] = dataCollection2
    dataCollection = #workingValue51
    dataCollection = dataCollection + 1
    tableHelper = {}
    tableHelper.id = "aa"
    tableHelper.title = "Mechanic"
    tableHelper.icon = "#mechanic"
    tableHelper.items = health
    workingValue51[dataCollection] = tableHelper
    dataCollection = #workingValue51
    dataCollection = dataCollection + 1
    tableHelper = {}
    tableHelper.id = "openHood"
    tableHelper.title = "Open Hood"
    tableHelper.icon = "#openHood"
    workingValue51[dataCollection] = tableHelper
    return workingValue51
  elseif localValue4 then
    localValue7 = {}
    dataCollection13 = {}
    dataCollection13.id = "impoundVehicle"
    dataCollection13.title = "Impound Vehicle"
    dataCollection13.icon = "#searchVehicle"
    localValue7[1] = dataCollection13
    if localValue6 then
      dataCollection13 = workingValue42
      health = localValue6
      workingValue51 = "Health Service Vehicles"
      dataCollection13 = dataCollection13(health, workingValue51)
      if dataCollection13 then
        dataCollection13 = table
        dataCollection13 = dataCollection13.insert
        health = localValue7
        workingValue51 = 1
        dataCollection = {}
        dataCollection.id = "spawnStretcher"
        dataCollection.title = "Spawn Stretcher"
        dataCollection.icon = "#stretcher"
        dataCollection13(health, workingValue51, dataCollection)
      end
    end
    dataCollection13 = {}
    health = {}
    health.id = "lock"
    health.title = "Lock Car"
    health.icon = "#carLock"
    workingValue51 = {}
    workingValue51.id = "openBoot"
    workingValue51.title = "Open Boot"
    workingValue51.icon = "#openBoot"
    dataCollection = {}
    dataCollection.id = "cleanCar"
    dataCollection.title = "Clean Car"
    dataCollection.icon = "#cleanCar"
    dataCollection13[1] = health
    dataCollection13[2] = workingValue51
    dataCollection13[3] = dataCollection
    health = workingValue47
    workingValue51 = localValue6
    health = health(workingValue51)
    if health then
      health = #dataCollection13
      health = health + 1
      workingValue51 = {}
      workingValue51.id = "repair"
      workingValue51.title = "Repair"
      workingValue51.icon = "#repair"
      dataCollection13[health] = workingValue51
    end
    health = workingValue48
    workingValue51 = localValue6
    health = health(workingValue51)
    if health then
      health = #dataCollection13
      health = health + 1
      workingValue51 = {}
      workingValue51.id = "repairTrucking"
      workingValue51.title = "Truck repair"
      workingValue51.icon = "#repair"
      dataCollection13[health] = workingValue51
    end
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "openHood"
    workingValue51.title = "Open Hood"
    workingValue51.icon = "#openHood"
    dataCollection13[health] = workingValue51
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "police"
    workingValue51.title = "Health Service"
    workingValue51.icon = "#healthservice"
    workingValue51.items = localValue7
    dataCollection13[health] = workingValue51
    return dataCollection13
  elseif localValue5 then
    localValue7 = {}
    dataCollection13 = workingValue2
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "searchvehicle"
      health.title = "Search Vehicle"
      health.icon = "#searchVehicle"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "askDriverId"
    health.title = "Ask Driver ID"
    health.icon = "#askId"
    localValue7[dataCollection13] = health
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "ejectPassenger"
    health.title = "Eject Passenger"
    health.icon = "#openHood"
    localValue7[dataCollection13] = health
    dataCollection13 = {}
    health = {}
    health.id = "lock"
    health.title = "Lock Car"
    health.icon = "#carLock"
    workingValue51 = {}
    workingValue51.id = "openBoot"
    workingValue51.title = "Open Boot"
    workingValue51.icon = "#openBoot"
    dataCollection = {}
    dataCollection.id = "cleanCar"
    dataCollection.title = "Clean Car"
    dataCollection.icon = "#cleanCar"
    dataCollection13[1] = health
    dataCollection13[2] = workingValue51
    dataCollection13[3] = dataCollection
    health = workingValue47
    workingValue51 = localValue6
    health = health(workingValue51)
    if health then
      health = #dataCollection13
      health = health + 1
      workingValue51 = {}
      workingValue51.id = "repair"
      workingValue51.title = "Repair"
      workingValue51.icon = "#repair"
      dataCollection13[health] = workingValue51
    end
    health = workingValue48
    workingValue51 = localValue6
    health = health(workingValue51)
    if health then
      health = #dataCollection13
      health = health + 1
      workingValue51 = {}
      workingValue51.id = "repairTrucking"
      workingValue51.title = "Truck repair"
      workingValue51.icon = "#repair"
      dataCollection13[health] = workingValue51
    end
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "openHood"
    workingValue51.title = "Open Hood"
    workingValue51.icon = "#openHood"
    dataCollection13[health] = workingValue51
    health = #dataCollection13
    health = health + 1
    workingValue51 = {}
    workingValue51.id = "vigilante"
    workingValue51.title = "Vigilante"
    workingValue51.icon = "#vigilante"
    workingValue51.items = localValue7
    dataCollection13[health] = workingValue51
    return dataCollection13
  else
    localValue7 = {}
    dataCollection13 = {}
    dataCollection13.id = "lock"
    dataCollection13.title = "Lock Car"
    dataCollection13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workingValue51 = {}
    workingValue51.id = "cleanCar"
    workingValue51.title = "Clean Car"
    workingValue51.icon = "#cleanCar"
    localValue7[1] = dataCollection13
    localValue7[2] = health
    localValue7[3] = workingValue51
    dataCollection13 = workingValue46
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "lockpick"
      health.title = "Lockpick"
      health.icon = "#lockpick"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = workingValue47
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = workingValue48
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = #localValue7
    dataCollection13 = dataCollection13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    localValue7[dataCollection13] = health
    dataCollection13 = workingValue2
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "searchvehicle"
      health.title = "Search Vehicle"
      health.icon = "#searchVehicle"
      localValue7[dataCollection13] = health
    end
    dataCollection13 = workingValue3
    health = localValue6
    dataCollection13 = dataCollection13(health)
    if dataCollection13 then
      dataCollection13 = #localValue7
      dataCollection13 = dataCollection13 + 1
      health = {}
      health.id = "carjack"
      health.title = "Carjack"
      health.icon = "#carjack"
      localValue7[dataCollection13] = health
    end
    return localValue7
  end
end

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3
  localValue2 = stateFlag2
  if localValue2 == localValue1 then
    return
  end
  stateFlag2 = localValue1
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.radialCrosshair = localValue1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
end
Crosshair = cmgOperation4
cmgOperation4 = RegisterNUICallback
text2 = "radialDisablenuifocus"

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1.nuifocus
  stateFlag = localValue2
  localValue2 = SetNuiFocusKeepInput
  localValue3 = false
  localValue2(localValue3)
  localValue2 = SetNuiFocus
  localValue3 = localValue1.nuifocus
  localValue4 = localValue1.nuifocus
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = false
  stateFlag3 = localValue2
end
cmgOperation4(text2, workingValue11)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = GetActivePlayers
  localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51 = localValue3()
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    dataCollection13 = GetPlayerPed
    health = localValue7
    -- Beginner: result below is playerPed.
    dataCollection13 = dataCollection13(health)
    health = GetEntityAttachedTo
    workingValue51 = dataCollection13
    health = health(workingValue51)
    if health == localValue1 then
      return dataCollection13
    end
  end
  localValue2 = 0
  return localValue2
end
cmgOperation4.getDraggedPed = text2

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  if -2100640717 == localValue2 then
    localValue3 = 10.0
    return localValue3
  end
  localValue3 = 3.5
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8
  localValue1 = GetShapeTestResult
  localValue2 = number2
  localValue1, localValue2, localValue3, localValue4, localValue5 = localValue1(localValue2)
  if 1 ~= localValue1 then
    if 2 == localValue1 then
      localValue6 = GetEntityType
      localValue7 = localValue5
      localValue6 = localValue6(localValue7)
      if localValue6 > 0 then
        localValue6 = GetEntityCoords
        localValue7 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue7 = localValue7()
        dataCollection13 = true
        -- Beginner: result below is entityCoords.
        localValue6 = localValue6(localValue7, dataCollection13)
        localValue7 = GetEntityCoords
        dataCollection13 = localValue5
        health = true
        -- Beginner: result below is entityCoords.
        localValue7 = localValue7(dataCollection13, health)
        localValue6 = localValue6 - localValue7
        localValue6 = #localValue6
        localValue7 = cmgOperation4
        dataCollection13 = localValue5
        localValue7 = localValue7(dataCollection13)
        if localValue6 <= localValue7 then
          localValue6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          localValue6 = localValue6()
          if localValue5 ~= localValue6 then
            workingValue4 = localValue5
            localValue6 = GetEntityType
            localValue7 = localValue5
            localValue6 = localValue6(localValue7)
            workingValue5 = localValue6
        end
      end
      else
        localValue6 = nil
        workingValue4 = localValue6
        localValue6 = nil
        workingValue5 = localValue6
      end
      localValue6 = workingValue4
      if not localValue6 then
        localValue6 = GetEntityPlayerIsFreeAimingAt
        localValue7 = PlayerId
        localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8 = localValue7()
        localValue6, localValue7 = localValue6(localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8)
        if localValue6 and 0 ~= localValue7 then
          dataCollection13 = CMG
          dataCollection13 = dataCollection13.getDraggedPed
          dataCollection13 = dataCollection13()
          if localValue7 == dataCollection13 then
            workingValue4 = localValue7
            dataCollection13 = GetEntityType
            health = localValue7
            dataCollection13 = dataCollection13(health)
            workingValue5 = dataCollection13
          end
        end
      end
    end
    localValue6 = GetGameplayCamRot
    localValue7 = 2
    localValue6 = localValue6(localValue7)
    localValue7 = GetGameplayCamCoord
    localValue7 = localValue7()
    dataCollection13 = CMG
    dataCollection13 = dataCollection13.rotationToDirection
    health = localValue6
    dataCollection13 = dataCollection13(health)
    health = vector3
    workingValue51 = localValue7.x
    dataCollection = dataCollection13.x
    dataCollection = dataCollection * 15.0
    workingValue51 = workingValue51 + dataCollection
    dataCollection = localValue7.y
    tableHelper = dataCollection13.y
    tableHelper = tableHelper * 15.0
    dataCollection = dataCollection + tableHelper
    tableHelper = localValue7.z
    dataCollection2 = dataCollection13.z
    dataCollection2 = dataCollection2 * 15.0
    tableHelper = tableHelper + dataCollection2
    health = health(workingValue51, dataCollection, tableHelper)
    workingValue51 = StartShapeTestLosProbe
    dataCollection = localValue7.x
    tableHelper = localValue7.y
    dataCollection2 = localValue7.z
    dataCollection3 = health.x
    dataCollection4 = health.y
    dataCollection5 = health.z
    dataCollection6 = -1
    dataCollection7 = -1
    dataCollection8 = 1
    workingValue51 = workingValue51(dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8)
    number2 = workingValue51
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2
  localValue1 = GetEntityHealth
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  -- Beginner: result below is health.
  localValue1 = localValue1(localValue2)
  localValue1 = localValue1 > 102
  return localValue1
end
workingValue13 = RegisterCommand
stateFlag5 = "lootbag"
-- Beginner: this function is the command handler for "lootbag".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2
  localValue1 = GetFrameCount
  localValue1 = localValue1()
  number3 = localValue1
end
stateFlag6 = true
-- Beginner: Register a chat/console command. Event/command: "lootbag".
workingValue13(stateFlag5, text5, stateFlag6)
workingValue13 = RegisterKeyMapping
stateFlag5 = "lootbag"
text5 = "Open Lootbag"
stateFlag6 = "KEYBOARD"
text6 = "E"
-- Beginner: Bind a command to a keyboard/controller key.
workingValue13(stateFlag5, text5, stateFlag6, text6)

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.isMechanicDebrisCarryingScrap
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = GetFrameCount
  localValue1 = localValue1()
  localValue2 = number3
  localValue2 = localValue2 == localValue1
  return localValue2
end
stateFlag5 = false

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection
  localValue3 = stateFlag5
  if localValue3 then
    localValue3 = notify
    localValue4 = "~r~You are already opening a lootbag."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.hasClientPermission
  localValue4 = "admin.tickets"
  localValue3 = localValue3(localValue4)
  localValue4 = CMG
  localValue4 = localValue4.isNoClipActive
  localValue4 = localValue4()
  if not localValue4 or localValue3 then
    localValue4 = CMG
    localValue4 = localValue4.isCarrying
    localValue4 = localValue4()
    if not localValue4 then
      localValue4 = CMG
      localValue4 = localValue4.isPiggyBackActive
      localValue4 = localValue4()
      if not localValue4 then
        localValue4 = CMG
        localValue4 = localValue4.isKnockedOut
        localValue4 = localValue4()
        if not localValue4 then
          goto continueAtStep35
        end
      end
    end
  end
  return
  ::continueAtStep35::
  localValue4 = DecorExistOn
  localValue5 = localValue2
  localValue6 = "12da94aa7e"
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue4 = DecorGetInt
    localValue5 = localValue2
    localValue6 = "12da94aa7e"
    localValue4 = localValue4(localValue5, localValue6)
    localValue5 = CMG
    localValue5 = localValue5.getClientUserId
    -- Beginner: result below is userId.
    localValue5 = localValue5()
    if localValue4 ~= localValue5 then
      localValue5 = CMG
      localValue5 = localValue5.hasClientGroup
      localValue6 = "Vigilante"
      localValue5 = localValue5(localValue6)
      if localValue5 then
        localValue5 = DecorGetInt
        localValue6 = localValue2
        localValue7 = "5f7af1c5ce"
        localValue5 = localValue5(localValue6, localValue7)
        localValue6 = CMG
        localValue6 = localValue6.isLootbagOwnerVigilante
        localValue7 = localValue5
        localValue6 = localValue6(localValue7)
        if not localValue6 then
          localValue6 = notify
          localValue7 = "~r~You can not open other players lootbags whilst being a vigilante."
          localValue6(localValue7)
          return
        end
      end
    end
  end
  localValue4 = IsEntityVisible
  localValue5 = PlayerPedId
  localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection = localValue5()
  localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection)
  if not localValue4 and not localValue3 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.isHandcuffed
  localValue4 = localValue4()
  if localValue4 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.hasNewPlayerProtection
  localValue4 = localValue4()
  if localValue4 then
    localValue4 = notify
    localValue5 = "~r~You can not open lootbags whilst you have new player protection."
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
    return
  end
  localValue4 = true
  stateFlag5 = localValue4
  localValue4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue4 = localValue4()
  localValue5 = {}
  localValue6 = {}
  localValue7 = "amb@medic@standing@kneel@base"
  dataCollection13 = "base"
  health = 1
  localValue6[1] = localValue7
  localValue6[2] = dataCollection13
  localValue6[3] = health
  localValue7 = {}
  dataCollection13 = "anim@gangops@facility@servers@bodysearch@"
  health = "player_search"
  workingValue51 = 1
  localValue7[1] = dataCollection13
  localValue7[2] = health
  localValue7[3] = workingValue51
  dataCollection13 = {}
  health = "amb@medic@standing@kneel@exit"
  workingValue51 = "exit"
  dataCollection = 1
  dataCollection13[1] = health
  dataCollection13[2] = workingValue51
  dataCollection13[3] = dataCollection
  localValue5[1] = localValue6
  localValue5[2] = localValue7
  localValue5[3] = dataCollection13
  localValue6 = tCMG
  localValue6 = localValue6.playAnim
  localValue7 = false
  dataCollection13 = localValue5
  health = false
  localValue6(localValue7, dataCollection13, health)

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local cmgOperation2, text, number5, workingValue20, workingValue31, workingValue43, stateFlag9, playerPed, workingValue49, workingValue52, number
    cmgOperation2 = pairs
    text = localValue5
    cmgOperation2, text, number5, workingValue20 = cmgOperation2(text)
    for workingValue31, workingValue43 in cmgOperation2, text, number5, workingValue20 do
      stateFlag9 = IsEntityPlayingAnim
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      workingValue49 = workingValue43[1]
      workingValue52 = workingValue43[2]
      number = 3
      stateFlag9 = stateFlag9(playerPed, workingValue49, workingValue52, number)
      if stateFlag9 then
        stateFlag9 = true
        return stateFlag9
      end
    end
    cmgOperation2 = false
    return cmgOperation2
  end
  localValue7 = GetSelectedPedWeapon
  dataCollection13 = PlayerPedId
  dataCollection13, health, workingValue51, dataCollection = dataCollection13()
  -- Beginner: result below is weaponHash.
  localValue7 = localValue7(dataCollection13, health, workingValue51, dataCollection)
  dataCollection13 = CMG
  dataCollection13 = dataCollection13.inEvent
  dataCollection13 = dataCollection13()
  if not dataCollection13 then
    dataCollection13 = CMG
    dataCollection13 = dataCollection13.isEmergencyService
    dataCollection13 = dataCollection13()
    if dataCollection13 or -1569615261 == localValue7 or 883325847 == localValue7 then
      dataCollection13 = Citizen
      dataCollection13 = dataCollection13.CreateThread

      -- === HELPER FUNCTION: health() ===
      function health()
        local cmgOperation2, text, number5, workingValue20, workingValue31
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.startCircularProgressBar
        text = ""
        number5 = 3000
        workingValue20 = nil

        -- === HELPER FUNCTION (decompiler name: workingValue31; parameters: none) ===
        function workingValue31()
          local workingValue, workingValue6
        end
        cmgOperation2(text, number5, workingValue20, workingValue31)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      dataCollection13(health)
      dataCollection13 = Citizen
      dataCollection13 = dataCollection13.Wait
      health = 100
      dataCollection13(health)
      while true do
        dataCollection13 = stateFlag5
        if not dataCollection13 then
          break
        end
        dataCollection13 = tCMG
        dataCollection13 = dataCollection13.isInComa
        dataCollection13 = dataCollection13()
        if dataCollection13 then
          dataCollection13 = CMG
          dataCollection13 = dataCollection13.stopCircularProgressBar
          dataCollection13()
          dataCollection13 = false
          stateFlag5 = dataCollection13
          dataCollection13 = tCMG
          dataCollection13 = dataCollection13.stopAnim
          dataCollection13()
          return
        else
          dataCollection13 = localValue6
          dataCollection13 = dataCollection13()
          if not dataCollection13 then
            dataCollection13 = CMG
            dataCollection13 = dataCollection13.stopCircularProgressBar
            dataCollection13()
            dataCollection13 = false
            stateFlag5 = dataCollection13
            dataCollection13 = notify
            health = "~r~Opening lootbag cancelled."
            -- Beginner: Show a notification to the player.
            dataCollection13(health)
            dataCollection13 = tCMG
            dataCollection13 = dataCollection13.stopAnim
            dataCollection13()
            return
          else
            dataCollection13 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            dataCollection13 = dataCollection13()
            dataCollection13 = dataCollection13 - localValue4
            health = 3000
            if dataCollection13 >= health then
              break
            end
          end
        end
        dataCollection13 = Citizen
        dataCollection13 = dataCollection13.Wait
        health = 0
        dataCollection13(health)
      end
    end
  end
  dataCollection13 = false
  stateFlag5 = dataCollection13
  dataCollection13 = tCMG
  dataCollection13 = dataCollection13.isInComa
  dataCollection13 = dataCollection13()
  if dataCollection13 then
    return
  end
  dataCollection13 = localValue1
  dataCollection13()
end

-- === HELPER FUNCTION (decompiler name: stateFlag6; parameters: none) ===
function stateFlag6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2
  localValue1 = CMG
  localValue1 = localValue1.getDraggedPed
  localValue1 = localValue1()
  if 0 == localValue1 then
    return
  end
  localValue2 = GetFrameCount
  localValue2 = localValue2()
  localValue3 = number4
  if localValue2 ~= localValue3 then
    localValue3 = localValue2 - 1
    localValue4 = number4
    if localValue3 ~= localValue4 then
      goto continueAtStep18
    end
  end
  return
  ::continueAtStep18::
  localValue3 = SetNuiFocus
  localValue4 = true
  localValue5 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue3(localValue4, localValue5)
  localValue3 = SendNUIMessage
  localValue4 = {}
  localValue4.openRadialMenu = true
  localValue4.type = "ped"
  localValue4.entityId = localValue1
  localValue5 = workingValue8
  localValue6 = localValue1
  localValue7 = CMG
  localValue7 = localValue7.hasClientPermission
  dataCollection13 = "police.onduty.permission"
  localValue7 = localValue7(dataCollection13)
  if not localValue7 then
    localValue7 = CMG
    localValue7 = localValue7.hasClientPermission
    dataCollection13 = "borderforce.onduty.permission"
    localValue7 = localValue7(dataCollection13)
  end
  dataCollection13 = CMG
  dataCollection13 = dataCollection13.hasClientPermission
  health = "prisonguard.onduty.permission"
  dataCollection13 = dataCollection13(health)
  health = CMG
  health = health.hasClientPermission
  workingValue51 = "nhs.onduty.permission"
  health = health(workingValue51)
  workingValue51 = CMG
  workingValue51 = workingValue51.hasClientGroup
  dataCollection = "Vigilante"
  workingValue51 = workingValue51(dataCollection)
  dataCollection = DecorGetBool
  tableHelper = localValue1
  dataCollection2 = "4ac0472477"
  dataCollection = dataCollection(tableHelper, dataCollection2)
  tableHelper = CMG
  tableHelper = tableHelper.isDrawingCasinoChipsUI
  tableHelper = tableHelper()
  if tableHelper then
    tableHelper = CMG
    tableHelper = tableHelper.getChipsClientDisplayAmount
    tableHelper = tableHelper()
    tableHelper = tableHelper > 0
  end
  localValue5 = localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper)
  localValue4.menuItems = localValue5
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3
  localValue1 = text2
  localValue1()
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetVehiclePedIsIn
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = stateFlag
  if localValue3 and 0 ~= localValue2 then
    localValue3 = stateFlag3
    if not localValue3 then
      localValue3 = false
      stateFlag = localValue3
      localValue3 = SendNUIMessage
      localValue4 = {}
      localValue4.closeRadialMenu = true
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      localValue3(localValue4)
    end
  end
  localValue3 = CMG
  localValue3 = localValue3.isMechanicDebrisCarryingScrap
  localValue3 = localValue3()
  if localValue3 then
    localValue3 = stateFlag
    if localValue3 then
      localValue3 = false
      stateFlag = localValue3
      localValue3 = SendNUIMessage
      localValue4 = {}
      localValue4.closeRadialMenu = true
      localValue3(localValue4)
      localValue3 = SetNuiFocus
      localValue4 = false
      localValue5 = false
      -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
      localValue3(localValue4, localValue5)
    end
  end
  localValue3 = workingValue4
  if localValue3 then
    localValue3 = workingValue5
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.isMechanicDebrisCarryingScrap
      localValue3 = localValue3()
      if localValue3 then
        localValue3 = Crosshair
        localValue4 = false
        localValue3(localValue4)
      else
        localValue3 = workingValue11
        localValue3 = localValue3()
        if localValue3 and 0 == localValue2 then
          localValue3 = GetRenderingCam
          localValue3 = localValue3()
          if -1 == localValue3 then
            localValue3 = stateFlag4
            if not localValue3 then
              localValue3 = workingValue5
              if 1 == localValue3 then
                localValue3 = workingValue4
                if localValue3 ~= localValue1 then
                  localValue3 = IsPedAPlayer
                  localValue4 = workingValue4
                  localValue3 = localValue3(localValue4)
                  if localValue3 then
                    localValue3 = CMG
                    localValue3 = localValue3.isAtArenaWagerHub
                    localValue3 = localValue3()
                    if localValue3 then
                      localValue3 = Crosshair
                      localValue4 = false
                      localValue3(localValue4)
                    else
                      localValue3 = Crosshair
                      localValue4 = true
                      localValue3(localValue4)
                      localValue3 = workingValue13
                      localValue3 = localValue3()
                      if localValue3 then
                        localValue3 = stateFlag
                        if false == localValue3 then
                          localValue3 = true
                          stateFlag = localValue3
                          localValue3 = SetNuiFocus
                          localValue4 = true
                          localValue5 = true
                          -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
                          localValue3(localValue4, localValue5)
                          localValue3 = SendNUIMessage
                          localValue4 = {}
                          localValue4.openRadialMenu = true
                          localValue4.type = "ped"
                          localValue5 = workingValue4
                          localValue4.entityId = localValue5
                          localValue5 = workingValue8
                          localValue6 = workingValue4
                          localValue7 = CMG
                          localValue7 = localValue7.hasClientPermission
                          dataCollection13 = "police.onduty.permission"
                          localValue7 = localValue7(dataCollection13)
                          if not localValue7 then
                            localValue7 = CMG
                            localValue7 = localValue7.hasClientPermission
                            dataCollection13 = "borderforce.onduty.permission"
                            localValue7 = localValue7(dataCollection13)
                          end
                          dataCollection13 = CMG
                          dataCollection13 = dataCollection13.hasClientPermission
                          health = "prisonguard.onduty.permission"
                          dataCollection13 = dataCollection13(health)
                          health = CMG
                          health = health.hasClientPermission
                          workingValue51 = "nhs.onduty.permission"
                          health = health(workingValue51)
                          workingValue51 = CMG
                          workingValue51 = workingValue51.hasClientGroup
                          dataCollection = "Vigilante"
                          workingValue51 = workingValue51(dataCollection)
                          dataCollection = DecorGetBool
                          tableHelper = workingValue4
                          dataCollection2 = "4ac0472477"
                          dataCollection = dataCollection(tableHelper, dataCollection2)
                          tableHelper = CMG
                          tableHelper = tableHelper.isDrawingCasinoChipsUI
                          tableHelper = tableHelper()
                          if tableHelper then
                            tableHelper = CMG
                            tableHelper = tableHelper.getChipsClientDisplayAmount
                            tableHelper = tableHelper()
                            tableHelper = tableHelper > 0
                          end
                          localValue5 = localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper)
                          localValue4.menuItems = localValue5
                          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                          localValue3(localValue4)
                        end
                      end
                    end
                end
              end
              else
                localValue3 = workingValue5
                if 2 == localValue3 then
                  localValue3 = workingValue4
                  if localValue3 ~= localValue2 then
                    localValue3 = Crosshair
                    localValue4 = true
                    localValue3(localValue4)
                    localValue3 = workingValue13
                    localValue3 = localValue3()
                    if localValue3 then
                      localValue3 = stateFlag
                      if false == localValue3 then
                        localValue3 = GetEntityModel
                        localValue4 = workingValue4
                        -- Beginner: result below is modelHash.
                        localValue3 = localValue3(localValue4)
                        localValue4 = -665859588 == localValue3
                        localValue5 = CMG
                        localValue5 = localValue5.isWheelchairVehicle
                        if localValue5 then
                          localValue5 = CMG
                          localValue5 = localValue5.isWheelchairVehicle
                          localValue6 = workingValue4
                          localValue5 = localValue5(localValue6)
                        end
                        localValue6 = CMG
                        localValue6 = localValue6.hasClientPermission
                        localValue7 = "nhs.onduty.permission"
                        localValue6 = localValue6(localValue7)
                        localValue7 = nil
                        if localValue4 and localValue6 then
                          dataCollection13 = {}
                          health = {}
                          health.id = "removeStretcher"
                          health.title = "Remove Stretcher"
                          health.icon = "#stretcher"
                          dataCollection13[1] = health
                          localValue7 = dataCollection13
                        else
                          if localValue5 and localValue6 then
                            dataCollection13 = CMG
                            dataCollection13 = dataCollection13.hasClientPermission
                            health = "doctor.permission"
                            dataCollection13 = dataCollection13(health)
                            if dataCollection13 then
                              dataCollection13 = {}
                              health = {}
                              health.id = "removeWheelchair"
                              health.title = "Remove Wheelchair"
                              health.icon = "#wheelchairSymbol"
                              dataCollection13[1] = health
                              localValue7 = dataCollection13
                          end
                          else
                            dataCollection13 = workingValue9
                            health = CMG
                            health = health.hasClientPermission
                            workingValue51 = "police.onduty.permission"
                            health = health(workingValue51)
                            if not health then
                              health = CMG
                              health = health.hasClientPermission
                              workingValue51 = "borderforce.onduty.permission"
                              health = health(workingValue51)
                            end
                            workingValue51 = CMG
                            workingValue51 = workingValue51.hasClientPermission
                            dataCollection = "prisonguard.onduty.permission"
                            workingValue51 = workingValue51(dataCollection)
                            dataCollection = CMG
                            dataCollection = dataCollection.hasClientPermission
                            tableHelper = "aa.onduty.permission"
                            dataCollection = dataCollection(tableHelper)
                            tableHelper = localValue6
                            dataCollection2 = CMG
                            dataCollection2 = dataCollection2.hasClientGroup
                            dataCollection3 = "Vigilante"
                            dataCollection2 = dataCollection2(dataCollection3)
                            dataCollection3 = workingValue4
                            dataCollection13 = dataCollection13(health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3)
                            localValue7 = dataCollection13
                          end
                        end
                        dataCollection13 = true
                        stateFlag = dataCollection13
                        dataCollection13 = SetNuiFocus
                        health = true
                        workingValue51 = true
                        -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
                        dataCollection13(health, workingValue51)
                        dataCollection13 = SendNUIMessage
                        health = {}
                        health.openRadialMenu = true
                        health.type = "vehicle"
                        workingValue51 = workingValue4
                        health.entityId = workingValue51
                        health.menuItems = localValue7
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        dataCollection13(health)
                      end
                    end
                end
                else
                  localValue3 = workingValue5
                  if 3 == localValue3 then
                    localValue3 = CMG
                    localValue4 = "getTrapperWarehouseShapeTestPickupPlantId"
                    localValue3 = localValue3[localValue4]
                    localValue4 = workingValue4
                    localValue3 = localValue3(localValue4)
                    if localValue3 then
                      localValue4 = CMG
                      localValue4 = localValue4.isTrapperShelfRadialSuppressedForPlantId
                      localValue5 = localValue3
                      localValue4 = localValue4(localValue5)
                      if localValue4 then
                        localValue4 = Crosshair
                        localValue5 = false
                        localValue4(localValue5)
                    end
                    elseif localValue3 then
                      localValue4 = Crosshair
                      localValue5 = true
                      localValue4(localValue5)
                      localValue4 = workingValue13
                      localValue4 = localValue4()
                      if localValue4 then
                        localValue4 = stateFlag
                        if false == localValue4 then
                          localValue4 = true
                          stateFlag = localValue4
                          localValue4 = CMG
                          localValue4 = localValue4.openTrapperPickupRadial
                          localValue5 = localValue3
                          localValue6 = {}
                          localValue7 = {}
                          localValue7.id = "pickupTrappingItem"
                          localValue7.title = "Pick up"
                          localValue7.icon = "#trapperPickupPackage"
                          localValue6[1] = localValue7
                          localValue4(localValue5, localValue6)
                          localValue4 = workingValue7
                          localValue4()
                        end
                      end
                    else
                      localValue4 = CMG
                      localValue4 = localValue4.hasClientPermission
                      localValue5 = "nhs.onduty.permission"
                      localValue4 = localValue4(localValue5)
                      if not localValue4 then
                        localValue4 = GetEntityModel
                        localValue5 = workingValue4
                        -- Beginner: result below is modelHash.
                        localValue4 = localValue4(localValue5)
                        localValue5 = CMG
                        localValue5 = localValue5.isLootbagModel
                        localValue6 = localValue4
                        localValue5 = localValue5(localValue6)
                        if localValue5 then
                          localValue5 = Crosshair
                          localValue6 = true
                          localValue5(localValue6)
                          localValue5 = workingValue13
                          localValue5 = localValue5()
                          if localValue5 then
                            localValue5 = DecorGetInt
                            localValue6 = workingValue4
                            localValue7 = "5f7af1c5ce"
                            localValue5 = localValue5(localValue6, localValue7)
                            localValue6 = DecorExistOn
                            localValue7 = workingValue4
                            dataCollection13 = "b1457c1a26"
                            localValue6 = localValue6(localValue7, dataCollection13)
                            if localValue6 then
                              localValue6 = DecorGetBool
                              localValue7 = workingValue4
                              dataCollection13 = "b1457c1a26"
                              localValue6 = localValue6(localValue7, dataCollection13)
                            end
                            if not localValue6 then
                              localValue7 = TriggerEvent
                              dataCollection13 = "56e6172373"
                              health = false
                              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                              localValue7(dataCollection13, health)
                            end
                            localValue7 = text5

                            -- === HELPER FUNCTION (decompiler name: dataCollection13; parameters: none) ===
                            function dataCollection13()
                              local cmgOperation2, text, number5
                              cmgOperation2 = TriggerServerEvent
                              text = "bdaf15af25"
                              number5 = localValue5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdaf15af25".
                              cmgOperation2(text, number5)
                            end
                            health = workingValue4
                            localValue7(dataCollection13, health)
                            localValue7 = workingValue7
                            localValue7()
                          end
                        elseif 290621560 == localValue4 then
                          localValue5 = Crosshair
                          localValue6 = true
                          localValue5(localValue6)
                          localValue5 = workingValue13
                          localValue5 = localValue5()
                          if localValue5 then
                            localValue5 = DecorGetInt
                            localValue6 = workingValue4
                            localValue7 = "5f7af1c5ce"
                            localValue5 = localValue5(localValue6, localValue7)
                            localValue6 = TriggerEvent
                            localValue7 = "56e6172373"
                            dataCollection13 = false
                            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                            localValue6(localValue7, dataCollection13)
                            localValue6 = TriggerServerEvent
                            localValue7 = "17e6b6a62a"
                            dataCollection13 = localValue5
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "17e6b6a62a".
                            localValue6(localValue7, dataCollection13)
                            localValue6 = workingValue7
                            localValue6()
                          end
                        elseif -1422265815 == localValue4 then
                          localValue5 = Crosshair
                          localValue6 = true
                          localValue5(localValue6)
                          localValue5 = workingValue13
                          localValue5 = localValue5()
                          if localValue5 then
                            localValue5 = DecorGetInt
                            localValue6 = workingValue4
                            localValue7 = "5f7af1c5ce"
                            localValue5 = localValue5(localValue6, localValue7)
                            localValue6 = TriggerEvent
                            localValue7 = "56e6172373"
                            dataCollection13 = false
                            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                            localValue6(localValue7, dataCollection13)
                            localValue6 = text5

                            -- === HELPER FUNCTION: localValue7() ===
                            function localValue7()
                              local cmgOperation2, text, number5
                              cmgOperation2 = TriggerServerEvent
                              text = "5891aba85f"
                              number5 = localValue5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
                              cmgOperation2(text, number5)
                            end
                            dataCollection13 = workingValue4
                            localValue6(localValue7, dataCollection13)
                            localValue6 = workingValue7
                            localValue6()
                          end
                        elseif 772559902 == localValue4 then
                          localValue5 = Crosshair
                          localValue6 = true
                          localValue5(localValue6)
                          localValue5 = workingValue13
                          localValue5 = localValue5()
                          if localValue5 then
                            localValue5 = DecorGetInt
                            localValue6 = workingValue4
                            localValue7 = "5f7af1c5ce"
                            localValue5 = localValue5(localValue6, localValue7)
                            localValue6 = text5

                            -- === HELPER FUNCTION: localValue7() ===
                            function localValue7()
                              local cmgOperation2, text, number5
                              cmgOperation2 = TriggerServerEvent
                              text = "5891aba85f"
                              number5 = localValue5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
                              cmgOperation2(text, number5)
                            end
                            dataCollection13 = workingValue4
                            localValue6(localValue7, dataCollection13)
                            localValue6 = workingValue7
                            localValue6()
                          end
                        elseif 1879598094 == localValue4 then
                          localValue5 = Crosshair
                          localValue6 = true
                          localValue5(localValue6)
                          localValue5 = workingValue13
                          localValue5 = localValue5()
                          if localValue5 then
                            localValue5 = DecorGetInt
                            localValue6 = workingValue4
                            localValue7 = "f1f74bea1b"
                            localValue5 = localValue5(localValue6, localValue7)
                            localValue6 = TriggerServerEvent
                            localValue7 = "fa763c2c8a"
                            dataCollection13 = localValue5
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa763c2c8a".
                            localValue6(localValue7, dataCollection13)
                            localValue6 = workingValue7
                            localValue6()
                          end
                        else
                          localValue5 = Crosshair
                          localValue6 = false
                          localValue5(localValue6)
                        end
                      else
                        localValue4 = Crosshair
                        localValue5 = false
                        localValue4(localValue5)
                      end
                    end
                  else
                    localValue3 = Crosshair
                    localValue4 = false
                    localValue3(localValue4)
                  end
                end
              end
          end
        end
        else
          localValue3 = Crosshair
          localValue4 = false
          localValue3(localValue4)
        end
      end
  end
  else
    localValue3 = Crosshair
    localValue4 = false
    localValue3(localValue4)
  end
  localValue3 = stateFlag2
  if not localValue3 then
    localValue3 = IsControlJustPressed
    localValue4 = 0
    localValue5 = 38
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.isMechanicDebrisCarryingScrap
      localValue3 = localValue3()
      if not localValue3 then
        localValue3 = CMG
        localValue3 = localValue3.isAtArenaWagerHub
        localValue3 = localValue3()
        if not localValue3 then
          localValue3 = Citizen
          localValue3 = localValue3.CreateThread
          localValue4 = stateFlag6
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          localValue3(localValue4)
        end
      end
    end
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.createThreadOnTick
workingValue16 = text6
text8 = "Radial Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation6(workingValue16, text8)

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = GetOffsetFromEntityInWorldCoords
  localValue5 = localValue2
  localValue6 = 0.0
  localValue7 = localValue1
  dataCollection13 = 0.0
  localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13)
  localValue5 = _ENV
  localValue6 = "StartExpensiveSynchronousShapeTestLosProbe"
  localValue5 = localValue5[localValue6]
  localValue6 = localValue3.x
  localValue7 = localValue3.y
  dataCollection13 = localValue3.z
  health = localValue4.x
  workingValue51 = localValue4.y
  dataCollection = localValue4.z
  tableHelper = -1
  dataCollection2 = localValue2
  dataCollection3 = 0
  localValue5 = localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3)
  localValue6 = GetShapeTestResult
  localValue7 = localValue5
  localValue6, localValue7, dataCollection13, health, workingValue51 = localValue6(localValue7)
  return workingValue51
end
GetEntInFrontOfPlayer = cmgOperation6

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper
  localValue2 = GetGameplayCamRot
  localValue3 = 2
  localValue2 = localValue2(localValue3)
  localValue3 = GetGameplayCamCoord
  localValue3 = localValue3()
  localValue4 = localValue2.z
  localValue4 = localValue4 * 0.0174532924
  localValue5 = localValue2.x
  localValue5 = localValue5 * 0.0174532924
  localValue6 = math
  localValue6 = localValue6.abs
  localValue7 = math
  localValue7 = localValue7.cos
  dataCollection13 = localValue5
  localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper = localValue7(dataCollection13)
  localValue6 = localValue6(localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper)
  localValue7 = localValue3.x
  dataCollection13 = math
  dataCollection13 = dataCollection13.sin
  health = localValue4
  dataCollection13 = dataCollection13(health)
  dataCollection13 = -dataCollection13
  health = localValue6 + localValue1
  dataCollection13 = dataCollection13 * health
  localValue7 = localValue7 + dataCollection13
  dataCollection13 = localValue3.y
  health = math
  health = health.cos
  workingValue51 = localValue4
  health = health(workingValue51)
  workingValue51 = localValue6 + localValue1
  health = health * workingValue51
  dataCollection13 = dataCollection13 + health
  health = localValue3.z
  workingValue51 = math
  workingValue51 = workingValue51.sin
  dataCollection = localValue5
  workingValue51 = workingValue51(dataCollection)
  workingValue51 = workingValue51 * 8.0
  health = health + workingValue51
  workingValue51 = localValue7
  dataCollection = dataCollection13
  tableHelper = health
  return workingValue51, dataCollection, tableHelper
end
GetCoordsFromCam = cmgOperation6

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5
  localValue3 = GetGameplayCamCoord
  localValue3 = localValue3()
  localValue4 = GetCoordsFromCam
  localValue5 = localValue1
  localValue4, localValue5, localValue6 = localValue4(localValue5)
  localValue7 = _ENV
  dataCollection13 = "StartExpensiveSynchronousShapeTestLosProbe"
  localValue7 = localValue7[dataCollection13]
  dataCollection13 = localValue3.x
  health = localValue3.y
  workingValue51 = localValue3.z
  dataCollection = localValue4
  tableHelper = localValue5
  dataCollection2 = localValue6
  dataCollection3 = -1
  dataCollection4 = localValue2
  dataCollection5 = 0
  localValue7 = localValue7(dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5)
  dataCollection13 = GetShapeTestResult
  health = localValue7
  dataCollection13, health, workingValue51, dataCollection, tableHelper = dataCollection13(health)
  dataCollection2 = tableHelper
  dataCollection3 = localValue4
  dataCollection4 = localValue5
  dataCollection5 = localValue6
  return dataCollection2, dataCollection3, dataCollection4, dataCollection5
end
Target = cmgOperation6

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2
  localValue1 = TriggerEvent
  localValue2 = "d5c231fe44"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "d5c231fe44".
  localValue1(localValue2)
end
workingValue16 = nil

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  workingValue16 = localValue1
  localValue2 = SetVehicleDoorOpen
  localValue3 = localValue1
  localValue4 = 5
  localValue5 = true
  localValue6 = false
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = TriggerEvent
  localValue3 = "a7ce3135a0"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a7ce3135a0".
  localValue2(localValue3)
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.closeRadialMenu = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
  localValue2 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue2 = localValue2()
  localValue3 = PlaySoundFrontend
  localValue4 = localValue2
  localValue5 = "boot_pop"
  localValue6 = "dlc_vw_body_disposal_sounds"
  localValue7 = true
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = ReleaseSoundId
  localValue4 = localValue2
  localValue3(localValue4)
end
eventHandler = RegisterNetEvent
text9 = "2a70dddd80"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2a70dddd80".
eventHandler(text9)
eventHandler = AddEventHandler
text9 = "2a70dddd80"
-- Beginner: this function runs when client event "2a70dddd80" fires.

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue16
  if localValue1 then
    localValue1 = SetVehicleDoorShut
    localValue2 = workingValue16
    localValue3 = 5
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2a70dddd80".
eventHandler(text9, workingValue18)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityHealth
  localValue4 = localValue2
  -- Beginner: result below is health.
  localValue3 = localValue3(localValue4)
  if localValue3 > 102 then
    localValue3 = IsEntityDead
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = TaskStartScenarioInPlace
      localValue4 = localValue2
      localValue5 = "world_human_maid_clean"
      localValue6 = 0
      localValue7 = true
      localValue3(localValue4, localValue5, localValue6, localValue7)
      localValue3 = Wait
      localValue4 = 10000
      localValue3(localValue4)
      localValue3 = SetVehicleDirtLevel
      localValue4 = localValue1
      localValue5 = 0.0
      localValue3(localValue4, localValue5)
      localValue3 = SetVehicleUndriveable
      localValue4 = localValue1
      localValue5 = false
      localValue3(localValue4, localValue5)
      localValue3 = ClearPedSecondaryTask
      localValue4 = localValue2
      localValue3(localValue4)
      localValue3 = ClearPedTasks
      localValue4 = localValue2
      localValue3(localValue4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerEvent
  localValue3 = "1631601e81"
  localValue4 = localValue1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "1631601e81".
  localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = NetworkGetEntityIsNetworked
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = NetworkGetNetworkIdFromEntity
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if 0 ~= localValue2 then
      localValue3 = TriggerServerEvent
      localValue4 = "aa1fa541c3"
      localValue5 = localValue1
      localValue6 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aa1fa541c3".
      localValue3(localValue4, localValue5, localValue6)
    end
  end
end
stateFlag7 = false

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1) ===
function workingValue19(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = stateFlag7
  if not localValue2 then
    localValue2 = SetVehicleDoorOpen
    localValue3 = localValue1
    localValue4 = 4
    localValue5 = false
    localValue6 = false
    localValue2(localValue3, localValue4, localValue5, localValue6)
    localValue2 = true
    stateFlag7 = localValue2
  else
    localValue2 = SetVehicleDoorShut
    localValue3 = localValue1
    localValue4 = 4
    localValue5 = false
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = false
    stateFlag7 = localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "borderforce.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep17
    end
  end
  localValue2 = TriggerEvent
  localValue3 = "918c11c450"
  localValue4 = localValue1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "918c11c450".
  localValue2(localValue3, localValue4)
  ::continueAtStep17::
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "prisonguard.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isPlayerNearPrison
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = workingValue42
      localValue3 = localValue1
      localValue4 = "Prison Service Vehicles"
      localValue2 = localValue2(localValue3, localValue4)
      if not localValue2 then
        localValue2 = notify
        localValue3 = "~r~You can not impound outside of the prison"
        -- Beginner: Show a notification to the player.
        localValue2(localValue3)
        return
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "nhs.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = workingValue42
    localValue3 = localValue1
    localValue4 = "Health Service Vehicles"
    localValue2 = localValue2(localValue3, localValue4)
    if not localValue2 then
      localValue2 = workingValue42
      localValue3 = localValue1
      localValue4 = "Health Service Helicopters"
      localValue2 = localValue2(localValue3, localValue4)
      if not localValue2 then
        localValue2 = notify
        localValue3 = "~r~You can only impound NHS vehicles."
        localValue2(localValue3)
        return
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientPermission
        localValue3 = "nhs.onduty.permission"
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          goto continueAtStep124
        end
      end
    end
  end
  localValue2 = tonumber
  localValue3 = DecorGetInt
  localValue4 = localValue1
  localValue5 = "ac76c9d452"
  localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health = localValue3(localValue4, localValue5)
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health)
  localValue3 = DecorGetInt
  localValue4 = localValue1
  localValue5 = "0a6cf607ed"
  localValue3 = localValue3(localValue4, localValue5)
  if localValue2 and localValue2 > 0 and localValue3 > 0 then
    localValue4 = CMG
    localValue4 = localValue4.impoundVehicleOptions
    localValue5 = localValue2
    localValue6 = GetEntityModel
    localValue7 = localValue1
    -- Beginner: result below is modelHash.
    localValue6 = localValue6(localValue7)
    localValue7 = VehToNet
    dataCollection13 = localValue1
    localValue7 = localValue7(dataCollection13)
    dataCollection13 = localValue1
    health = localValue3
    localValue4(localValue5, localValue6, localValue7, dataCollection13, health)
  else
    localValue4 = TriggerEvent
    localValue5 = "408b84e9ad"
    localValue6 = "~r~Vehicle is not owned by anyone"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
    localValue4(localValue5, localValue6)
    localValue4 = GetPedInVehicleSeat
    localValue5 = localValue1
    localValue6 = -1
    localValue4 = localValue4(localValue5, localValue6)
    if 0 == localValue4 then
      localValue4 = GetPedInVehicleSeat
      localValue5 = localValue1
      localValue6 = 0
      localValue4 = localValue4(localValue5, localValue6)
      if 0 == localValue4 then
        localValue4 = NetworkGetEntityIsNetworked
        localValue5 = localValue1
        localValue4 = localValue4(localValue5)
        if localValue4 then
          localValue4 = TriggerServerEvent
          localValue5 = "90508c11e5"
          localValue6 = NetworkGetNetworkIdFromEntity
          localValue7 = localValue1
          localValue6, localValue7, dataCollection13, health = localValue6(localValue7)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90508c11e5".
          localValue4(localValue5, localValue6, localValue7, dataCollection13, health)
        end
      end
    end
  end
  ::continueAtStep124::
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = GetSelectedPedWeapon
    localValue5 = PlayerPedId
    localValue5, localValue6 = localValue5()
    -- Beginner: result below is weaponHash.
    localValue4 = localValue4(localValue5, localValue6)
    if -1569615261 ~= localValue4 then
      localValue4 = TriggerServerEvent
      localValue5 = "42f4c2df43"
      localValue6 = localValue3
      localValue4(localValue5, localValue6)
    else
      localValue4 = TriggerEvent
      localValue5 = "408b84e9ad"
      localValue6 = "~r~You need a weapon in your hands."
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
      localValue4(localValue5, localValue6)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1) ===
function workingValue24(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = GetPedInVehicleSeat
  localValue3 = localValue1
  localValue4 = -1
  localValue2 = localValue2(localValue3, localValue4)
  if 0 ~= localValue2 then
    localValue3 = GetPlayerByEntityID
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      return
    end
    localValue4 = GetPlayerServerId
    localValue5 = localValue3
    -- Beginner: result below is serverId.
    localValue4 = localValue4(localValue5)
    if localValue4 > 0 then
      localValue5 = TriggerServerEvent
      localValue6 = "2eb52f2bce"
      localValue7 = localValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2eb52f2bce".
      localValue5(localValue6, localValue7)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1) ===
function workingValue25(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "2eb52f2bce"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1) ===
function workingValue26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "80473a9734"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "80473a9734".
    localValue4(localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1) ===
function workingValue27(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13
  localValue2 = tCMG
  localValue2 = localValue2.canAnim
  localValue2 = localValue2()
  if not localValue2 then
    return
  end
  localValue2 = GetEntityHealth
  localValue3 = localValue1
  -- Beginner: result below is health.
  localValue2 = localValue2(localValue3)
  if localValue2 <= 102 then
    localValue2 = TriggerEvent
    localValue3 = "408b84e9ad"
    localValue4 = "~r~You can not search a player who is dead."
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
    localValue2(localValue3, localValue4)
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.isPlayerInRedZone
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = notify
    localValue3 = "~r~You can not search players while in a red zone."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    localValue2 = true
    return localValue2
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.hasClientPermission
  localValue4 = "police.onduty.permission"
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.hasClientPermission
    localValue4 = "prisonguard.onduty.permission"
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.hasClientPermission
      localValue4 = "borderforce.onduty.permission"
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = CMG
        localValue3 = localValue3.hasClientGroup
        localValue4 = "Vigilante"
        localValue3 = localValue3(localValue4)
        if not localValue3 then
          localValue3 = GetPlayerPed
          localValue4 = localValue2
          -- Beginner: result below is playerPed.
          localValue3 = localValue3(localValue4)
          if nil == localValue3 then
            goto continueAtStep110
          end
          localValue4 = IsEntityPlayingAnim
          localValue5 = localValue3
          localValue6 = "missminuteman_1ig_2"
          localValue7 = "handsup_enter"
          dataCollection13 = 3
          localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13)
          if not localValue4 then
            localValue4 = IsEntityPlayingAnim
            localValue5 = localValue3
            localValue6 = "random@arrests"
            localValue7 = "idle_2_hands_up"
            dataCollection13 = 3
            localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13)
            if not localValue4 then
              localValue4 = IsEntityPlayingAnim
              localValue5 = localValue3
              localValue6 = "random@arrests@busted"
              localValue7 = "idle_a"
              dataCollection13 = 3
              localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13)
              if not localValue4 then
                goto continueAtStep96
              end
            end
          end
          localValue4 = GetPlayerServerId
          localValue5 = localValue2
          -- Beginner: result below is serverId.
          localValue4 = localValue4(localValue5)
          if localValue4 > 0 then
            localValue5 = TriggerServerEvent
            localValue6 = "f54bde726f"
            localValue7 = localValue4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f54bde726f".
            localValue5(localValue6, localValue7)
            goto continueAtStep110
            ::continueAtStep96::
            localValue4 = TriggerEvent
            localValue5 = "408b84e9ad"
            localValue6 = "~r~Player must have their hands up or be on their knees!"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
            localValue4(localValue5, localValue6)
          end
      end
    end
  end
  else
    localValue3 = GetPlayerServerId
    localValue4 = localValue2
    -- Beginner: result below is serverId.
    localValue3 = localValue3(localValue4)
    if localValue3 > 0 then
      localValue4 = TriggerServerEvent
      localValue5 = "f54bde726f"
      localValue6 = localValue3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f54bde726f".
      localValue4(localValue5, localValue6)
    end
  end
  ::continueAtStep110::
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "6583aad871"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: localValue1) ===
function workingValue29(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientGroup
        localValue3 = "Vigilante"
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          goto continueAtStep39
        end
      end
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = ExecuteCommand
    localValue5 = "cuff"
    localValue4(localValue5)
  end
  ::continueAtStep39::
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
function workingValue30(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "nhs.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = GetPlayerByEntityID
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      return
    end
    localValue3 = GetPlayerServerId
    localValue4 = localValue2
    -- Beginner: result below is serverId.
    localValue3 = localValue3(localValue4)
    if localValue3 > 0 then
      localValue4 = CMG
      localValue4 = localValue4.startNhsDragFromRadial
      if localValue4 then
        localValue4 = CMG
        localValue4 = localValue4.startNhsDragFromRadial
        localValue5 = localValue3
        localValue4(localValue5)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: localValue1) ===
function workingValue32(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientGroup
        localValue3 = "Vigilante"
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          goto continueAtStep40
        end
      end
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "c5274515e4"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5274515e4".
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep40::
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1) ===
function workingValue33(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientGroup
        localValue3 = "Vigilante"
        localValue2 = localValue2(localValue3)
        if not localValue2 then
          goto continueAtStep40
        end
      end
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "c2eb9806b2"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep40::
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "8fd6319695"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fd6319695".
    localValue4(localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1) ===
function workingValue35(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.hasClientPermission
  localValue5 = "police.onduty.permission"
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.hasClientPermission
    localValue5 = "prisonguard.onduty.permission"
    localValue4 = localValue4(localValue5)
    if not localValue4 then
      localValue4 = CMG
      localValue4 = localValue4.hasClientPermission
      localValue5 = "borderforce.onduty.permission"
      localValue4 = localValue4(localValue5)
      if not localValue4 then
        goto continueAtStep40
      end
    end
  end
  localValue4 = TriggerServerEvent
  localValue5 = "61172cd221"
  localValue6 = localValue3
  localValue4(localValue5, localValue6)
  localValue4 = TriggerServerEvent
  localValue5 = "6915ac5021"
  localValue6 = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6915ac5021".
  localValue4(localValue5, localValue6)
  goto continueAtStep50
  ::continueAtStep40::
  localValue4 = CMG
  localValue4 = localValue4.hasClientGroup
  localValue5 = "Vigilante"
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = TriggerServerEvent
    localValue5 = "6c006240e4"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep50::
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: localValue1) ===
function workingValue36(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep28
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "227b779c06"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "227b779c06".
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep28::
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: localValue1) ===
function workingValue37(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.clientGetUserIdFromSource
  localValue5 = localValue3
  -- Beginner: result below is userId.
  localValue4 = localValue4(localValue5)
  if not localValue4 or 0 == localValue4 then
    localValue5 = notify
    localValue6 = "~r~Could not resolve target player."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
    return
  end
  localValue5 = TriggerServerEvent
  localValue6 = "a12d48ef57"
  localValue7 = localValue4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a12d48ef57".
  localValue5(localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: localValue1) ===
function workingValue38(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        goto continueAtStep34
      end
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "61172cd221"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep34::
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: localValue1) ===
function workingValue39(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      localValue3 = "borderforce.onduty.permission"
      localValue2 = localValue2(localValue3)
      if not localValue2 then
        goto continueAtStep34
      end
    end
  end
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "05699b6c7f"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "05699b6c7f".
    localValue4(localValue5, localValue6)
  end
  ::continueAtStep34::
end

-- === HELPER FUNCTION (decompiler name: workingValue40; parameters: localValue1) ===
function workingValue40(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    return
  end
  localValue4 = DecorGetBool
  localValue5 = localValue1
  localValue6 = "4ac0472477"
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue4 = TriggerServerEvent
    localValue5 = "eb96303226"
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  else
    localValue4 = TriggerServerEvent
    localValue5 = "a02d917ea8"
    localValue6 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a02d917ea8".
    localValue4(localValue5, localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue41; parameters: localValue1) ===
function workingValue41(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    return
  end
  localValue4 = TriggerServerEvent
  localValue5 = "cdcf103ded"
  localValue6 = localValue3
  localValue4(localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue44; parameters: localValue1) ===
function workingValue44(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetPlayerByEntityID
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = GetPlayerServerId
  localValue4 = localValue2
  -- Beginner: result below is serverId.
  localValue3 = localValue3(localValue4)
  if localValue3 <= 0 then
    return
  end
  localValue4 = TriggerServerEvent
  localValue5 = "a91c36f550"
  localValue6 = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a91c36f550".
  localValue4(localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: localValue1) ===
function workingValue45(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2
  localValue2 = IsEntityAVehicle
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue2 = 0
  localValue3 = 10.0
  localValue4 = GetVehicleModelNumberOfSeats
  localValue5 = GetEntityModel
  localValue6 = localValue1
  localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2 = localValue5(localValue6)
  localValue4 = localValue4(localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2)
  localValue5 = -1
  localValue6 = localValue4 - 2
  localValue7 = 1
  for dataCollection13 = localValue5, localValue6, localValue7 do
    health = GetPedInVehicleSeat
    workingValue51 = localValue1
    dataCollection = dataCollection13
    health = health(workingValue51, dataCollection)
    if 0 ~= health then
      workingValue51 = GetPedBoneIndex
      dataCollection = health
      tableHelper = 0
      workingValue51 = workingValue51(dataCollection, tableHelper)
      if workingValue51 > -1 then
        dataCollection = GetWorldPositionOfEntityBone
        tableHelper = health
        dataCollection2 = workingValue51
        dataCollection = dataCollection(tableHelper, dataCollection2)
        tableHelper = CMG
        tableHelper = tableHelper.getPlayerCoords
        -- Beginner: result below is playerCoords.
        tableHelper = tableHelper()
        dataCollection = dataCollection - tableHelper
        dataCollection = #dataCollection
        if localValue3 > dataCollection then
          localValue2 = health
          localValue3 = dataCollection
        end
      end
    end
  end
  if 0 == localValue2 then
    localValue5 = notify
    localValue6 = "~r~No player nearby to pull out vehicle."
    -- Beginner: Show a notification to the player.
    localValue5(localValue6)
    return
  end
  localValue5 = NetworkGetPlayerIndexFromPed
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  if localValue5 >= 0 then
    localValue6 = GetPlayerServerId
    localValue7 = localValue5
    -- Beginner: result below is serverId.
    localValue6 = localValue6(localValue7)
    if localValue6 > 0 then
      localValue7 = TriggerServerEvent
      dataCollection13 = "1fccdc61f1"
      health = localValue6
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fccdc61f1".
      localValue7(dataCollection13, health)
    end
  end
end
cmgOperation8 = RegisterNUICallback
cmgOperation9 = "radialClick"

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: localValue1) ===
function cmgOperation10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection
  localValue2 = localValue1.itemid
  localValue3 = localValue1.entity
  if "pickupTrappingItem" == localValue2 then
    localValue4 = localValue1.trapperPlantId
    if localValue4 then
      localValue5 = type
      localValue6 = localValue4
      localValue5 = localValue5(localValue6)
      if "string" == localValue5 then
        localValue5 = TriggerServerEvent
        localValue6 = "b8b99c63a7"
        localValue7 = localValue4
        localValue5(localValue6, localValue7)
      end
    end
    return
  end
  localValue4 = IsPedInAnyVehicle
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = true
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 then
    localValue4 = stateFlag3
    if not localValue4 then
      localValue4 = localValue2 or localValue4
      if localValue2 then
        localValue5 = localValue2
        localValue4 = localValue2.sub
        localValue6 = 1
        localValue7 = 11
        localValue4 = localValue4(localValue5, localValue6, localValue7)
        localValue4 = "toggleCast_" == localValue4 or "removeAllCasts" == localValue2 or "medicBandage" == localValue2 or "medicMorphine" == localValue2
      end
      if not localValue4 then
        return
      end
    end
  end
  if localValue2 then
    localValue5 = localValue2
    localValue4 = localValue2.sub
    localValue6 = 1
    localValue7 = 11
    localValue4 = localValue4(localValue5, localValue6, localValue7)
    if "toggleCast_" == localValue4 then
      localValue5 = localValue2
      localValue4 = localValue2.sub
      localValue6 = 12
      localValue4 = localValue4(localValue5, localValue6)
      localValue5 = GetPlayerByEntityID
      localValue6 = localValue3
      localValue5 = localValue5(localValue6)
      if localValue5 and "" ~= localValue4 then
        localValue6 = GetPlayerServerId
        localValue7 = localValue5
        -- Beginner: result below is serverId.
        localValue6 = localValue6(localValue7)
        if localValue6 > 0 then
          localValue7 = CMG
          localValue7 = localValue7.TriggerServerCallback
          dataCollection13 = "2b2bfb838d"
          health = localValue6
          workingValue51 = localValue4
          localValue7(dataCollection13, health, workingValue51)
        end
      end
  end
  elseif "removeAllCasts" == localValue2 then
    localValue4 = GetPlayerByEntityID
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue5 = GetPlayerServerId
      localValue6 = localValue4
      -- Beginner: result below is serverId.
      localValue5 = localValue5(localValue6)
      if localValue5 > 0 then
        localValue6 = TriggerServerEvent
        localValue7 = "5c706bee2d"
        dataCollection13 = localValue5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c706bee2d".
        localValue6(localValue7, dataCollection13)
      end
    end
  elseif "medicBandage" == localValue2 then
    localValue4 = GetPlayerByEntityID
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue5 = GetPlayerServerId
      localValue6 = localValue4
      -- Beginner: result below is serverId.
      localValue5 = localValue5(localValue6)
      if localValue5 > 0 then
        localValue6 = CMG
        localValue6 = localValue6.TriggerServerCallback
        localValue7 = "0685d077c4"
        dataCollection13 = localValue5
        localValue6 = localValue6(localValue7, dataCollection13)
        if localValue6 then
          localValue7 = notify
          dataCollection13 = "~g~Applying bandage..."
          -- Beginner: Show a notification to the player.
          localValue7(dataCollection13)
        else
          localValue7 = notify
          dataCollection13 = "~r~Target is not bleeding."
          localValue7(dataCollection13)
        end
      end
    end
  elseif "medicMorphine" == localValue2 then
    localValue4 = GetPlayerByEntityID
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue5 = GetPlayerServerId
      localValue6 = localValue4
      -- Beginner: result below is serverId.
      localValue5 = localValue5(localValue6)
      if localValue5 > 0 then
        localValue6 = CMG
        localValue6 = localValue6.TriggerServerCallback
        localValue7 = "0711499036"
        dataCollection13 = localValue5
        localValue6, localValue7 = localValue6(localValue7, dataCollection13)
        if localValue6 then
          dataCollection13 = notify
          health = "~g~Applying morphine..."
          -- Beginner: Show a notification to the player.
          dataCollection13(health)
        elseif localValue7 and localValue7 > 0 then
          dataCollection13 = notify
          health = "~r~User is in combat timer, try again in "
          workingValue51 = tostring
          dataCollection = localValue7
          workingValue51 = workingValue51(dataCollection)
          dataCollection = " seconds."
          health = health .. workingValue51 .. dataCollection
          dataCollection13(health)
        else
          dataCollection13 = notify
          health = "~r~Could not apply morphine."
          -- Beginner: Show a notification to the player.
          dataCollection13(health)
        end
      end
    end
  elseif "lock" == localValue2 then
    localValue4 = cmgOperation6
    -- Beginner: Run a helper every game frame while this script is active.
    localValue4()
  elseif "openBoot" == localValue2 then
    localValue4 = text8
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "cleanCar" == localValue2 then
    localValue4 = eventHandler
    localValue5 = localValue3
    -- Beginner: Register a client-side event handler.
    localValue4(localValue5)
  elseif "lockpick" == localValue2 then
    localValue4 = text9
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "mechanicHookTargetVehicle" == localValue2 then
    localValue4 = CMG
    localValue4 = localValue4.tryMechanicAttachFromTargetVehicle
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "detachVehicle" == localValue2 then
    localValue4 = CMG
    localValue4 = localValue4.detachTowedVehicle
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "repair" == localValue2 then
    localValue4 = TriggerEvent
    localValue5 = "a37e8d69f4"
    localValue6 = "diy"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a37e8d69f4".
    localValue4(localValue5, localValue6)
  elseif "repairTrucking" == localValue2 then
    localValue4 = TriggerEvent
    localValue5 = "a37e8d69f4"
    localValue6 = "trucking"
    localValue4(localValue5, localValue6)
  elseif "repairAA" == localValue2 then
    localValue4 = workingValue18
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "openHood" == localValue2 then
    localValue4 = workingValue19
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "searchvehicle" == localValue2 then
    localValue4 = workingValue21
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "impoundVehicle" == localValue2 then
    localValue4 = workingValue22
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "askDriverId" == localValue2 then
    localValue4 = workingValue24
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "ejectPassenger" == localValue2 then
    localValue4 = workingValue45
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "carjack" == localValue2 then
    if localValue3 and 0 ~= localValue3 then
      localValue4 = DoesEntityExist
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        localValue4 = IsEntityAVehicle
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if localValue4 then
          localValue4 = GetPedInVehicleSeat
          localValue5 = localValue3
          localValue6 = -1
          localValue4 = localValue4(localValue5, localValue6)
          if 0 ~= localValue4 then
            localValue5 = IsPedAPlayer
            localValue6 = localValue4
            localValue5 = localValue5(localValue6)
            if localValue5 then
              localValue5 = NetworkGetPlayerIndexFromPed
              localValue6 = localValue4
              localValue5 = localValue5(localValue6)
              if localValue5 >= 0 then
                localValue6 = GetPlayerServerId
                localValue7 = localValue5
                -- Beginner: result below is serverId.
                localValue6 = localValue6(localValue7)
                if localValue6 > 0 then
                  localValue7 = CMG
                  localValue7 = localValue7.startGangCarjack
                  dataCollection13 = localValue6
                  localValue7(dataCollection13)
                end
              end
            end
          end
        end
      end
    end
  elseif "askId" == localValue2 then
    localValue4 = workingValue25
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "giveCash" == localValue2 then
    localValue4 = workingValue26
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "search" == localValue2 then
    localValue4 = workingValue27
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "robPerson" == localValue2 then
    localValue4 = workingValue23
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "revive" == localValue2 then
    localValue4 = workingValue28
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "handcuff" == localValue2 then
    localValue4 = workingValue29
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "nhsDrag" == localValue2 then
    localValue4 = workingValue30
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "drag" == localValue2 then
    localValue4 = workingValue32
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "putincar" == localValue2 then
    localValue4 = workingValue33
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "gunshottest" == localValue2 then
    localValue4 = workingValue34
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "jail" == localValue2 then
    localValue4 = workingValue35
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "quickFine" == localValue2 then
    localValue4 = CMG
    localValue4 = localValue4.openQuickChargesMenu
    localValue5 = localValue3
    localValue6 = "fine"
    localValue4(localValue5, localValue6)
  elseif "quickJail" == localValue2 then
    localValue4 = CMG
    localValue4 = localValue4.openQuickChargesMenu
    localValue5 = localValue3
    localValue6 = "jail"
    localValue4(localValue5, localValue6)
  elseif "pardonBounty" == localValue2 then
    localValue4 = workingValue37
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "requesttransport" == localValue2 then
    localValue4 = workingValue36
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "seizeweapons" == localValue2 then
    localValue4 = workingValue38
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "seizeillegals" == localValue2 then
    localValue4 = workingValue39
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "removeHeadbag" == localValue2 then
    localValue4 = workingValue40
    localValue5 = localValue3
    localValue4(localValue5)
  elseif "leaveRadio" == localValue2 then
    localValue4 = TriggerEvent
    localValue5 = "24a888d2b3"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "24a888d2b3".
    localValue4(localValue5)
  elseif "toggleMute" == localValue2 then
    localValue4 = ExecuteCommand
    localValue5 = "toggleradiomute"
    localValue4(localValue5)
  elseif "radioConfig" == localValue2 then
    localValue4 = TriggerEvent
    localValue5 = "c9189814b6"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c9189814b6".
    localValue4(localValue5)
  else
    localValue4 = string
    localValue4 = localValue4.match
    localValue5 = localValue2
    localValue6 = "radioChannel"
    localValue4 = localValue4(localValue5, localValue6)
    if localValue4 then
      localValue4 = string
      localValue4 = localValue4.sub
      localValue5 = localValue2
      localValue6 = 13
      localValue7 = #localValue2
      localValue4 = localValue4(localValue5, localValue6, localValue7)
      localValue5 = TriggerEvent
      localValue6 = "c96f59b76d"
      localValue7 = tonumber
      dataCollection13 = localValue4
      localValue7, dataCollection13, health, workingValue51, dataCollection = localValue7(dataCollection13)
      localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection)
    elseif "segregation" == localValue2 then
      localValue4 = workingValue44
      localValue5 = localValue3
      localValue4(localValue5)
    elseif "transferChips" == localValue2 then
      localValue4 = workingValue41
      localValue5 = localValue3
      localValue4(localValue5)
    elseif "spawnStretcher" == localValue2 then
      localValue4 = type
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      localValue4 = localValue3 or localValue4
      if "number" ~= localValue4 or 0 == localValue3 or not localValue3 then
        localValue4 = nil
      end
      if localValue4 then
        localValue5 = DoesEntityExist
        localValue6 = localValue4
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = workingValue42
          localValue6 = localValue4
          localValue7 = "Health Service Vehicles"
          localValue5 = localValue5(localValue6, localValue7)
          if localValue5 then
            localValue5 = ExecuteCommand
            localValue6 = "stretcher"
            localValue5(localValue6)
        end
        else
          localValue5 = notify
          localValue6 = "~r~You can only spawn stretchers from NHS vehicles."
          -- Beginner: Show a notification to the player.
          localValue5(localValue6)
        end
      else
        localValue5 = notify
        localValue6 = "~r~You can only spawn stretchers from NHS vehicles."
        localValue5(localValue6)
      end
    elseif "removeStretcher" == localValue2 then
      localValue4 = type
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      localValue4 = localValue3 or localValue4
      if "number" ~= localValue4 or 0 == localValue3 or not localValue3 then
        localValue4 = nil
      end
      if localValue4 then
        localValue5 = DoesEntityExist
        localValue6 = localValue4
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = GetEntityModel
          localValue6 = localValue4
          -- Beginner: result below is modelHash.
          localValue5 = localValue5(localValue6)
          if -665859588 == localValue5 then
            localValue5 = TriggerServerEvent
            localValue6 = "2bfff324f7"
            localValue7 = CMG
            localValue7 = localValue7.getNetId
            dataCollection13 = localValue4
            health = "Stretchers"
            localValue7, dataCollection13, health, workingValue51, dataCollection = localValue7(dataCollection13, health)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bfff324f7".
            localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection)
        end
        else
          localValue5 = ExecuteCommand
          localValue6 = "removestretcher"
          localValue5(localValue6)
        end
      else
        localValue5 = ExecuteCommand
        localValue6 = "removestretcher"
        localValue5(localValue6)
      end
    elseif "toggleCrutches" == localValue2 then
      localValue4 = GetPlayerByEntityID
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        localValue5 = GetPlayerServerId
        localValue6 = localValue4
        -- Beginner: result below is serverId.
        localValue5 = localValue5(localValue6)
        if localValue5 > 0 then
          localValue6 = CMG
          localValue6 = localValue6.TriggerServerCallback
          localValue7 = "1e07024b66"
          dataCollection13 = localValue5
          localValue6(localValue7, dataCollection13)
        end
      end
    elseif "giveWheelchair" == localValue2 then
      localValue4 = GetPlayerByEntityID
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        localValue5 = GetPlayerServerId
        localValue6 = localValue4
        -- Beginner: result below is serverId.
        localValue5 = localValue5(localValue6)
        if localValue5 > 0 then
          localValue6 = notify
          localValue7 = "~g~Providing wheelchair..."
          -- Beginner: Show a notification to the player.
          localValue6(localValue7)
          localValue6 = TriggerServerEvent
          localValue7 = "05e4b09a9e"
          dataCollection13 = localValue5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "05e4b09a9e".
          localValue6(localValue7, dataCollection13)
        else
          localValue6 = notify
          localValue7 = "~r~Could not get target player."
          -- Beginner: Show a notification to the player.
          localValue6(localValue7)
        end
      else
        localValue5 = notify
        localValue6 = "~r~No valid target player."
        localValue5(localValue6)
      end
    elseif "removeWheelchair" == localValue2 then
      localValue4 = type
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      localValue4 = localValue3 or localValue4
      if "number" ~= localValue4 or 0 == localValue3 or not localValue3 then
        localValue4 = nil
      end
      if localValue4 then
        localValue5 = DoesEntityExist
        localValue6 = localValue4
        localValue5 = localValue5(localValue6)
        if localValue5 then
          localValue5 = CMG
          localValue5 = localValue5.isWheelchairVehicle
          if localValue5 then
            localValue5 = CMG
            localValue5 = localValue5.isWheelchairVehicle
            localValue6 = localValue4
            localValue5 = localValue5(localValue6)
            if localValue5 then
              localValue5 = TriggerServerEvent
              localValue6 = "cc35a3d2bc"
              localValue7 = NetworkGetNetworkIdFromEntity
              dataCollection13 = localValue4
              localValue7, dataCollection13, health, workingValue51, dataCollection = localValue7(dataCollection13)
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cc35a3d2bc".
              localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection)
            end
          end
        end
      end
    elseif "nhsGiveDonut" == localValue2 then
      localValue4 = GetPlayerByEntityID
      localValue5 = localValue3
      localValue4 = localValue4(localValue5)
      if localValue4 then
        localValue5 = GetPlayerServerId
        localValue6 = localValue4
        -- Beginner: result below is serverId.
        localValue5 = localValue5(localValue6)
        if localValue5 > 0 then
          localValue6 = TriggerServerEvent
          localValue7 = "9353a3745a"
          dataCollection13 = localValue5
          localValue6(localValue7, dataCollection13)
        end
      end
    end
  end
end
cmgOperation8(cmgOperation9, cmgOperation10)

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue1) ===
function cmgOperation8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health
  localValue2 = ipairs
  localValue3 = GetActivePlayers
  localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health = localValue3()
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    dataCollection13 = GetPlayerPed
    health = localValue7
    -- Beginner: result below is playerPed.
    dataCollection13 = dataCollection13(health)
    if localValue1 == dataCollection13 then
      return localValue7
    end
  end
  localValue2 = nil
  return localValue2
end
GetPlayerByEntityID = cmgOperation8
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: none) ===
function cmgOperation9()
  local localValue1, localValue2
  localValue1 = workingValue4
  localValue2 = workingValue5
  return localValue1, localValue2
end
cmgOperation8.getSelectedEntity = cmgOperation9
cmgOperation8 = AddEventHandler
cmgOperation9 = "CMGUI:showRadioWheel"
-- Beginner: this function runs when client event "CMGUI:showRadioWheel" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: localValue1) ===
function cmgOperation10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health
  localValue2 = stateFlag3
  if localValue2 then
    return
  end
  localValue2 = true
  stateFlag = localValue2
  localValue2 = true
  stateFlag3 = localValue2
  localValue2 = SetNuiFocusKeepInput
  localValue3 = true
  localValue2(localValue3)
  localValue2 = SetNuiFocus
  localValue3 = true
  localValue4 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = SendNUIMessage
  localValue3 = {}
  localValue3.openRadialMenu = true
  localValue3.type = "radios"
  localValue3.wheelData = localValue1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue2(localValue3)
  while true do
    localValue2 = stateFlag3
    if not localValue2 then
      break
    end
    localValue2 = 0
    localValue3 = 6
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      localValue6 = DisableControlAction
      localValue7 = 0
      dataCollection13 = localValue5
      health = true
      localValue6(localValue7, dataCollection13, health)
    end
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 24
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 25
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 69
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 79
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 92
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 114
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 140
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 141
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 142
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 257
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 263
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 264
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMGUI:showRadioWheel".
cmgOperation8(cmgOperation9, cmgOperation10)

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: none) ===
function cmgOperation8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = 0
  localValue4 = 3.0
  localValue5 = pairs
  localValue6 = GetGamePool
  localValue7 = "CObject"
  localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5 = localValue6(localValue7)
  localValue5, localValue6, localValue7, dataCollection13 = localValue5(localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5)
  for health, workingValue51 in localValue5, localValue6, localValue7, dataCollection13 do
    dataCollection = GetEntityModel
    tableHelper = workingValue51
    -- Beginner: result below is modelHash.
    dataCollection = dataCollection(tableHelper)
    tableHelper = CMG
    tableHelper = tableHelper.isLootbagModel
    dataCollection2 = dataCollection
    tableHelper = tableHelper(dataCollection2)
    if tableHelper or -1422265815 == dataCollection or 772559902 == dataCollection then
      tableHelper = GetEntityCoords
      dataCollection2 = workingValue51
      dataCollection3 = true
      -- Beginner: result below is entityCoords.
      tableHelper = tableHelper(dataCollection2, dataCollection3)
      tableHelper = tableHelper - localValue2
      tableHelper = #tableHelper
      if localValue4 > tableHelper then
        dataCollection2 = HasEntityClearLosToEntity
        dataCollection3 = localValue1
        dataCollection4 = workingValue51
        dataCollection5 = 17
        dataCollection2 = dataCollection2(dataCollection3, dataCollection4, dataCollection5)
        if dataCollection2 then
          localValue3 = workingValue51
          localValue4 = tableHelper
        end
      end
    end
  end
  return localValue3
end
cmgOperation9 = RegisterCommand
cmgOperation10 = "lootclosestbag"
-- Beginner: this function is the command handler for "lootclosestbag".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.isDrawingInventoryUI
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = TriggerEvent
    localValue2 = "2a70dddd80"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2a70dddd80".
    localValue1(localValue2)
    return
  end
  localValue1 = workingValue11
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    if 0 == localValue1 then
      localValue1 = GetRenderingCam
      localValue1 = localValue1()
      if -1 == localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "nhs.onduty.permission"
        localValue1 = localValue1(localValue2)
        if not localValue1 then
          goto continueAtStep30
        end
      end
    end
  end
  return
  ::continueAtStep30::
  localValue1 = cmgOperation8
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = GetEntityModel
    localValue3 = localValue1
    -- Beginner: result below is modelHash.
    localValue2 = localValue2(localValue3)
    localValue3 = DecorGetInt
    localValue4 = localValue1
    localValue5 = "5f7af1c5ce"
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = CMG
    localValue4 = localValue4.isLootbagModel
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DecorExistOn
      localValue5 = localValue1
      localValue6 = "b1457c1a26"
      localValue4 = localValue4(localValue5, localValue6)
      if localValue4 then
        localValue4 = DecorGetBool
        localValue5 = localValue1
        localValue6 = "b1457c1a26"
        localValue4 = localValue4(localValue5, localValue6)
      end
      if not localValue4 then
        localValue5 = TriggerEvent
        localValue6 = "56e6172373"
        localValue7 = false
        localValue5(localValue6, localValue7)
      end
      localValue5 = text5

      -- === HELPER FUNCTION: localValue6() ===
      function localValue6()
        local cmgOperation2, text, number5
        cmgOperation2 = TriggerServerEvent
        text = "bdaf15af25"
        number5 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdaf15af25".
        cmgOperation2(text, number5)
      end
      localValue7 = localValue1
      localValue5(localValue6, localValue7)
    elseif -1422265815 == localValue2 then
      localValue4 = TriggerEvent
      localValue5 = "56e6172373"
      localValue6 = false
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
      localValue4(localValue5, localValue6)
      localValue4 = text5

      -- === HELPER FUNCTION: localValue5() ===
      function localValue5()
        local cmgOperation2, text, number5
        cmgOperation2 = TriggerServerEvent
        text = "5891aba85f"
        number5 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
        cmgOperation2(text, number5)
      end
      localValue6 = localValue1
      localValue4(localValue5, localValue6)
    elseif 772559902 == localValue2 then
      localValue4 = text5

      -- === HELPER FUNCTION: localValue5() ===
      function localValue5()
        local cmgOperation2, text, number5
        cmgOperation2 = TriggerServerEvent
        text = "5891aba85f"
        number5 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
        cmgOperation2(text, number5)
      end
      localValue6 = localValue1
      localValue4(localValue5, localValue6)
    end
  end
end
stateFlag8 = false
-- Beginner: Register a chat/console command. Event/command: "lootclosestbag".
cmgOperation9(cmgOperation10, text11, stateFlag8)
cmgOperation9 = RegisterKeyMapping
cmgOperation10 = "lootclosestbag"
text11 = "Loot Closest Bag"
stateFlag8 = "KEYBOARD"
text12 = "CAPITAL"
-- Beginner: Bind a command to a keyboard/controller key.
cmgOperation9(cmgOperation10, text11, stateFlag8, text12)
cmgOperation9 = Citizen
cmgOperation9 = cmgOperation9.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: none) ===
function cmgOperation10()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = false
    localValue2 = CMG
    localValue2 = localValue2.isNewPlayer
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = cmgOperation8
      localValue2 = localValue2()
      if 0 ~= localValue2 then
        localValue2 = drawNativeNotification
        localValue3 = "Press ~INPUT_EEE09CC7~ to loot the lootbag."
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue2(localValue3)
        localValue1 = true
      end
    end
    localValue2 = Wait
    if localValue1 then
      localValue3 = 0
      if localValue3 then
        goto continueAtStep22
      end
    end
    localValue3 = 2000
    ::continueAtStep22::
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation9(cmgOperation10)
cmgOperation9 = false
cmgOperation10 = RegisterNetEvent
text11 = "c09ac80094"
-- Beginner: this function handles network event "c09ac80094".

-- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
function stateFlag8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8
  localValue1 = tCMG
  localValue1 = localValue1.canAnim
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = cmgOperation9
    if not localValue1 then
      localValue1 = true
      cmgOperation9 = localValue1
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = CMG
      localValue2 = localValue2.loadModel
      localValue3 = 1047179740
      -- Beginner: Request/load a GTA model before spawning or applying it.
      localValue2(localValue3)
      localValue2 = CMG
      localValue2 = localValue2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue2 = localValue2()
      localValue3 = CMG
      localValue3 = localValue3.requestEntitySpawn
      localValue4 = "hand_over_card_object"
      localValue3(localValue4)
      localValue3 = CreateObject
      localValue4 = 1047179740
      localValue5 = localValue2.x
      localValue6 = localValue2.y
      localValue7 = localValue2.z
      dataCollection13 = true
      health = false
      workingValue51 = false
      -- Beginner: result below is objectEntity.
      localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, dataCollection13, health, workingValue51)
      localValue4 = AttachEntityToEntity
      localValue5 = localValue3
      localValue6 = localValue1
      localValue7 = GetPedBoneIndex
      dataCollection13 = localValue1
      health = 57005
      localValue7 = localValue7(dataCollection13, health)
      dataCollection13 = 0.14
      health = 0.04
      workingValue51 = -0.02
      dataCollection = 208.0
      tableHelper = 6.0
      dataCollection2 = 2.0
      dataCollection3 = false
      dataCollection4 = false
      dataCollection5 = false
      dataCollection6 = true
      dataCollection7 = 2
      dataCollection8 = true
      -- Beginner: Attach one entity to another entity.
      localValue4(localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection8)
      localValue4 = SetModelAsNoLongerNeeded
      localValue5 = 1047179740
      localValue4(localValue5)
      localValue4 = CMG
      localValue4 = localValue4.loadAnimDict
      localValue5 = "mp_common"
      -- Beginner: Load a GTA animation dictionary before using it.
      localValue4(localValue5)
      localValue4 = TaskPlayAnim
      localValue5 = localValue1
      localValue6 = "mp_common"
      localValue7 = "givetake1_a"
      dataCollection13 = 8.0
      health = 8.0
      workingValue51 = -1
      dataCollection = 1
      tableHelper = 0
      dataCollection2 = false
      dataCollection3 = false
      dataCollection4 = false
      -- Beginner: Play an animation on a ped.
      localValue4(localValue5, localValue6, localValue7, dataCollection13, health, workingValue51, dataCollection, tableHelper, dataCollection2, dataCollection3, dataCollection4)
      localValue4 = RemoveAnimDict
      localValue5 = "mp_common"
      localValue4(localValue5)
      localValue4 = Citizen
      localValue4 = localValue4.Wait
      localValue5 = 2000
      localValue4(localValue5)
      localValue4 = DeleteEntity
      localValue5 = localValue3
      -- Beginner: Delete a GTA entity.
      localValue4(localValue5)
      localValue4 = StopAnimTask
      localValue5 = localValue1
      localValue6 = "mp_common"
      localValue7 = "givetake1_a"
      dataCollection13 = 1.0
      localValue4(localValue5, localValue6, localValue7, dataCollection13)
      localValue4 = false
      cmgOperation9 = localValue4
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c09ac80094".
cmgOperation10(text11, stateFlag8)
cmgOperation10 = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2) ===
function text11(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  if localValue1 and localValue2 then
    localValue3 = #localValue2
    if 0 ~= localValue3 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue3 = true
  stateFlag = localValue3
  localValue3 = SetNuiFocus
  localValue4 = true
  localValue5 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue3(localValue4, localValue5)
  localValue3 = SendNUIMessage
  localValue4 = {}
  localValue4.openRadialMenu = true
  localValue4.type = "trapperPickup"
  localValue4.trapperPlantId = localValue1
  localValue4.menuItems = localValue2
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  localValue3(localValue4)
end
cmgOperation10.openTrapperPickupRadial = text11
cmgOperation10 = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2
  localValue1 = stateFlag3
  return localValue1
end
cmgOperation10.isOnRadioMenu = text11
cmgOperation10 = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2
  localValue1 = GetFrameCount
  localValue1 = localValue1()
  number4 = localValue1
end
cmgOperation10.setIgnoreRadialInputThisFrame = text11
