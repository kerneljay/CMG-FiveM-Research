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
local cmgCall, cmgCall3, cmgCall5, cmgCall7, textValue10, workValue42, workValue46, workValue47, workValue48, workValue50, workValue2, workValue3, flag, workValue4, workValue5, flag2, numberValue2, flag3, numberValue3, flag4, numberValue4, workValue7, workValue8, workValue9, cmgCall4, textValue2, workValue11, workValue13, flag5, textValue5, flag6, textValue6, cmgCall6, workValue16, textValue8, eventRegistration, textValue9, workValue18, flag7, workValue19, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue44, workValue45, cmgCall8, cmgCall9, cmgCall10, textValue11, flag8, textValue12
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall3 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.loadModule
cmgCall5 = "cfg/cfg_mechanic"
-- Beginner: result below is config.
cmgCall3 = cmgCall3(cmgCall5)
cmgCall5 = CMG
cmgCall5 = cmgCall5.loadModule
cmgCall7 = "cfg/cfg_casts"
-- Beginner: result below is config.
cmgCall5 = cmgCall5(cmgCall7)
if not cmgCall5 then
  cmgCall5 = {}
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.loadModule
textValue10 = "cfg/items"
-- Beginner: result below is config.
cmgCall7 = cmgCall7(textValue10)
textValue10 = cmgCall7.items
if textValue10 then
  textValue10 = cmgCall7.items
  textValue10 = textValue10.evidencebag
  if textValue10 then
    textValue10 = cmgCall7.items
    textValue10 = textValue10.evidencebag
    textValue10 = textValue10.weight
    if textValue10 then
      goto flow_label_35
    end
  end
end
textValue10 = 5.0
::flow_label_35::

-- === HELPER FUNCTION (decompiler name: workValue42; parameters: arg1, arg2) ===
function workValue42(arg1, arg2)
  local arg3, arg4, arg5
  if 0 ~= arg1 then
    arg3 = IsEntityAVehicle
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = CMG
      arg3 = arg3.getVehicleIdFromModel
      arg4 = GetEntityModel
      arg5 = arg1
      arg4, arg5 = arg4(arg5)
      arg3 = arg3(arg4, arg5)
      if arg3 then
        arg4 = cmgCall.garages
        arg4 = arg4[arg2]
        if arg4 then
          arg4 = cmgCall.garages
          arg4 = arg4[arg2]
          arg4 = arg4[arg3]
          if arg4 then
            arg4 = true
            return arg4
          end
        end
      end
    end
  end
  arg3 = false
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue46; parameters: arg1) ===
function workValue46(arg1)
  local arg2, arg3, arg4
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = DecorGetBool
  arg3 = arg1
  arg4 = "6b6dade745"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "aa.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = tCMG
  arg2 = arg2.isInGreenzone
  arg3 = false
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = DecorGetInt
  arg3 = arg1
  arg4 = "0a6cf607ed"
  arg2 = arg2(arg3, arg4)
  if arg2 <= 0 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientInventoryItem
  arg3 = "lockpick"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientInventoryItem
    arg3 = "ldnulockpick"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.clientVehicleWasLockpickedThisSession
      arg3 = arg1
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = false
        return arg2
      end
    end
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue47; parameters: arg1) ===
function workValue47(arg1)
  local arg2, arg3, arg4
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = GetPedInVehicleSeat
  arg3 = arg1
  arg4 = -1
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetEntityIsNetworked
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientInventoryItem
  arg3 = "diyrepairkit"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue48; parameters: arg1) ===
function workValue48(arg1)
  local arg2, arg3, arg4
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = GetPedInVehicleSeat
  arg3 = arg1
  arg4 = -1
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetEntityIsNetworked
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientGroup
  arg3 = "Trucking"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.hasClientInventoryItem
  arg3 = "truckingrepairkit"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue50; parameters: arg1) ===
function workValue50(arg1)
  local arg2, arg3
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_12
    end
  end
  arg2 = false
  return arg2
  ::flow_label_12::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetEntityIsNetworked
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg2 = false
    return arg2
  end
  arg2 = true
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "borderforce.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = false
      return arg2
    end
  end
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_26
    end
  end
  arg2 = false
  return arg2
  ::flow_label_26::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = DecorGetInt
  arg3 = arg1
  arg4 = "0a6cf607ed"
  arg2 = arg2(arg3, arg4)
  if arg2 > 0 then
    arg3 = CMG
    arg3 = arg3.getSpaceInFirstChest
    arg3 = arg3()
    arg4 = textValue10
    if arg3 < arg4 then
      arg3 = false
      return arg3
    end
    arg3 = true
    return arg3
  end
  arg3 = GetEntityAttachedTo
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 ~= arg3 then
    arg4 = true
    return arg4
  end
  arg4 = false
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.hasGangRpCarTheftPerk
  arg2 = arg2()
  if not arg2 then
    arg2 = false
    return arg2
  end
  if arg1 and 0 ~= arg1 then
    arg2 = DoesEntityExist
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_19
    end
  end
  arg2 = false
  return arg2
  ::flow_label_19::
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = tCMG
  arg2 = arg2.isInGreenzone
  arg3 = false
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = GetPedInVehicleSeat
  arg3 = arg1
  arg4 = -1
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg3 = IsPedAPlayer
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_47
    end
  end
  arg3 = false
  return arg3
  ::flow_label_47::
  arg3 = true
  return arg3
end
flag = false
workValue4 = nil
workValue5 = nil
flag2 = false
numberValue2 = 0
flag3 = false
numberValue3 = 0
flag4 = false
numberValue4 = 0

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3
  arg1 = true
  flag4 = arg1
  arg1 = SetTimeout
  arg2 = 1000

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local cmgCall2, textValue
    cmgCall2 = false
    flag4 = cmgCall2
  end
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function workValue8(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8, dataTable9, dataTable10, iterator, tableHelper2, workValue10, dataTable11, textValue3, workValue12, workValue14, textValue4, tableHelper3, workValue15, dataTable12, textValue7, workValue17
  dataTable13 = {}
  health = arg1 or health
  if arg1 then
    health = GetEntityHealth
    workValue51 = arg1
    -- Beginner: result below is health.
    health = health(workValue51)
    health = health <= 102
  end
  if health and not arg4 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "revive"
    dataTable.title = "CPR"
    dataTable.icon = "#cpr"
    dataTable13[workValue51] = dataTable
  end
  if not arg4 then
    if arg6 then
      workValue51 = #dataTable13
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "removeHeadbag"
      dataTable.title = "Remove Bag"
      dataTable.icon = "#removeHeadbag"
      dataTable13[workValue51] = dataTable
    else
      workValue51 = #dataTable13
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "removeHeadbag"
      dataTable.title = "Place Bag"
      dataTable.icon = "#removeHeadbag"
      dataTable13[workValue51] = dataTable
    end
  end
  if arg7 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "transferChips"
    dataTable.title = "Transfer Chips"
    dataTable.icon = "#casinoChip"
    dataTable13[workValue51] = dataTable
  end
  if arg2 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "askId"
    dataTable.title = "Ask ID"
    dataTable.icon = "#askId"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "giveCash"
    dataTable.title = "Give Cash"
    dataTable.icon = "#giveMoney"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "search"
    dataTable.title = "Search Player"
    dataTable.icon = "#searchPerson"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "police"
    dataTable.title = "Police Service"
    dataTable.icon = "#metPolice"
    tableHelper = {}
    dataTable2 = {}
    dataTable2.id = "handcuff"
    dataTable2.title = "Handcuff"
    dataTable2.icon = "#handcuff"
    dataTable3 = {}
    dataTable3.id = "drag"
    dataTable3.title = "Drag"
    dataTable3.icon = "#drag"
    dataTable4 = {}
    dataTable4.id = "putincar"
    dataTable4.title = "Put in car"
    dataTable4.icon = "#putInVehicle"
    dataTable5 = {}
    dataTable5.id = "gunshottest"
    dataTable5.title = "GSR Test"
    dataTable5.icon = "#seizeWeapons"
    dataTable6 = {}
    dataTable6.id = "quickFine"
    dataTable6.title = "Quick Fine"
    dataTable6.icon = "#giveMoney"
    dataTable7 = {}
    dataTable7.id = "quickJail"
    dataTable7.title = "Quick Jail"
    dataTable7.icon = "#jail"
    dataTable8 = {}
    dataTable8.id = "pardonBounty"
    dataTable8.title = "Pardon bounty"
    dataTable8.icon = "#askId"
    dataTable9 = {}
    dataTable9.id = "requesttransport"
    dataTable9.title = "Transport"
    dataTable9.icon = "#putInVehicle"
    dataTable10 = {}
    dataTable10.id = "seizeweapons"
    dataTable10.title = "Seize Weapons"
    dataTable10.icon = "#seizeWeapons"
    iterator = {}
    iterator.id = "seizeillegals"
    iterator.title = "Seize Illegals"
    iterator.icon = "#seizeIllegal"
    tableHelper[1] = dataTable2
    tableHelper[2] = dataTable3
    tableHelper[3] = dataTable4
    tableHelper[4] = dataTable5
    tableHelper[5] = dataTable6
    tableHelper[6] = dataTable7
    tableHelper[7] = dataTable8
    tableHelper[8] = dataTable9
    tableHelper[9] = dataTable10
    tableHelper[10] = iterator
    dataTable.items = tableHelper
    dataTable13[workValue51] = dataTable
  elseif arg3 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "askId"
    dataTable.title = "Ask ID"
    dataTable.icon = "#askId"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "giveCash"
    dataTable.title = "Give Cash"
    dataTable.icon = "#giveMoney"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "search"
    dataTable.title = "Search Player"
    dataTable.icon = "#searchPerson"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "police"
    dataTable.title = "Prison Service"
    dataTable.icon = "#metPolice"
    tableHelper = {}
    dataTable2 = {}
    dataTable2.id = "handcuff"
    dataTable2.title = "Handcuff"
    dataTable2.icon = "#handcuff"
    dataTable3 = {}
    dataTable3.id = "drag"
    dataTable3.title = "Drag"
    dataTable3.icon = "#drag"
    dataTable4 = {}
    dataTable4.id = "putincar"
    dataTable4.title = "Put in car"
    dataTable4.icon = "#putInVehicle"
    dataTable5 = {}
    dataTable5.id = "segregation"
    dataTable5.title = "Segregation"
    dataTable5.icon = "#rope"
    dataTable6 = {}
    dataTable6.id = "jail"
    dataTable6.title = "Jail"
    dataTable6.icon = "#jail"
    dataTable7 = {}
    dataTable7.id = "seizeweapons"
    dataTable7.title = "Seize Weapons"
    dataTable7.icon = "#seizeWeapons"
    dataTable8 = {}
    dataTable8.id = "seizeillegals"
    dataTable8.title = "Seize Illegals"
    dataTable8.icon = "#seizeIllegal"
    tableHelper[1] = dataTable2
    tableHelper[2] = dataTable3
    tableHelper[3] = dataTable4
    tableHelper[4] = dataTable5
    tableHelper[5] = dataTable6
    tableHelper[6] = dataTable7
    tableHelper[7] = dataTable8
    dataTable.items = tableHelper
    dataTable13[workValue51] = dataTable
  elseif arg5 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "askId"
    dataTable.title = "Ask ID"
    dataTable.icon = "#askId"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "giveCash"
    dataTable.title = "Give Cash"
    dataTable.icon = "#giveMoney"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "search"
    dataTable.title = "Search Player"
    dataTable.icon = "#searchPerson"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "police"
    dataTable.title = "Vigilante"
    dataTable.icon = "#vigilante"
    tableHelper = {}
    dataTable2 = {}
    dataTable2.id = "handcuff"
    dataTable2.title = "Handcuff"
    dataTable2.icon = "#handcuff"
    dataTable3 = {}
    dataTable3.id = "drag"
    dataTable3.title = "Drag"
    dataTable3.icon = "#drag"
    dataTable4 = {}
    dataTable4.id = "putincar"
    dataTable4.title = "Put in car"
    dataTable4.icon = "#putInVehicle"
    dataTable5 = {}
    dataTable5.id = "jail"
    dataTable5.title = "Jail"
    dataTable5.icon = "#jail"
    tableHelper[1] = dataTable2
    tableHelper[2] = dataTable3
    tableHelper[3] = dataTable4
    tableHelper[4] = dataTable5
    dataTable.items = tableHelper
    dataTable13[workValue51] = dataTable
  elseif arg4 then
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "askId"
    dataTable.title = "Ask ID"
    dataTable.icon = "#askId"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "giveCash"
    dataTable.title = "Give Cash"
    dataTable.icon = "#giveMoney"
    dataTable13[workValue51] = dataTable
    workValue51 = CMG
    workValue51 = workValue51.hasClientPermission
    dataTable = "doctor.permission"
    workValue51 = workValue51(dataTable)
    dataTable = {}
    if health then
      tableHelper = table
      tableHelper = tableHelper.insert
      dataTable2 = dataTable
      dataTable3 = {}
      dataTable3.id = "revive"
      dataTable3.title = "Revive"
      dataTable3.icon = "#cpr"
      tableHelper(dataTable2, dataTable3)
      tableHelper = table
      tableHelper = tableHelper.insert
      dataTable2 = dataTable
      dataTable3 = {}
      dataTable3.id = "nhsDrag"
      dataTable3.title = "Drag"
      dataTable3.icon = "#drag"
      tableHelper(dataTable2, dataTable3)
    else
      tableHelper = GetPlayerByEntityID
      dataTable2 = arg1
      tableHelper = tableHelper(dataTable2)
      if tableHelper then
        dataTable2 = GetPlayerServerId
        dataTable3 = tableHelper
        -- Beginner: result below is serverId.
        dataTable2 = dataTable2(dataTable3)
        if dataTable2 then
          goto flow_label_351
        end
      end
      dataTable2 = 0
      ::flow_label_351::
      dataTable3 = table
      dataTable3 = dataTable3.insert
      dataTable4 = dataTable
      dataTable5 = {}
      dataTable5.id = "medicBandage"
      dataTable5.title = "Bandage"
      dataTable5.icon = "#bandage"
      dataTable3(dataTable4, dataTable5)
      dataTable3 = table
      dataTable3 = dataTable3.insert
      dataTable4 = dataTable
      dataTable5 = {}
      dataTable5.id = "medicMorphine"
      dataTable5.title = "Apply Morphine"
      dataTable5.icon = "#morphine"
      dataTable3(dataTable4, dataTable5)
      if workValue51 then
        if dataTable2 > 0 then
          dataTable3 = CMG
          dataTable3 = dataTable3.TriggerServerCallback
          dataTable4 = "d9316895e8"
          dataTable5 = dataTable2
          dataTable3 = dataTable3(dataTable4, dataTable5)
          if dataTable3 then
            goto flow_label_381
          end
        end
        dataTable3 = false
        ::flow_label_381::
        if dataTable3 then
          dataTable4 = "Take off Crutches"
          if dataTable4 then
            goto flow_label_387
          end
        end
        dataTable4 = "Put In Crutches"
        ::flow_label_387::
        dataTable5 = table
        dataTable5 = dataTable5.insert
        dataTable6 = dataTable
        dataTable7 = {}
        dataTable7.id = "toggleCrutches"
        dataTable7.title = dataTable4
        dataTable7.icon = "#crutches"
        dataTable5(dataTable6, dataTable7)
        dataTable5 = table
        dataTable5 = dataTable5.insert
        dataTable6 = dataTable
        dataTable7 = {}
        dataTable7.id = "giveWheelchair"
        dataTable7.title = "Put In Wheelchair"
        dataTable7.icon = "#wheelchairSymbol"
        dataTable5(dataTable6, dataTable7)
      end
    end
    tableHelper = table
    tableHelper = tableHelper.insert
    dataTable2 = dataTable
    dataTable3 = {}
    dataTable3.id = "nhsGiveDonut"
    dataTable3.title = "Give Donut"
    dataTable3.icon = "#donut"
    tableHelper(dataTable2, dataTable3)
    if workValue51 then
      tableHelper = cmgCall5.casts
      if not tableHelper then
        tableHelper = {}
      end
      dataTable2 = cmgCall5.categories
      if not dataTable2 then
        dataTable2 = {}
      end
      dataTable3 = {}
      dataTable4 = ipairs
      dataTable5 = dataTable2
      dataTable4, dataTable5, dataTable6, dataTable7 = dataTable4(dataTable5)
      for dataTable8, dataTable9 in dataTable4, dataTable5, dataTable6, dataTable7 do
        dataTable10 = {}
        iterator = ipairs
        tableHelper2 = dataTable9.castIds
        if not tableHelper2 then
          tableHelper2 = {}
        end
        iterator, tableHelper2, workValue10, dataTable11 = iterator(tableHelper2)
        for textValue3, workValue12 in iterator, tableHelper2, workValue10, dataTable11 do
          workValue14 = tableHelper[workValue12]
          if workValue14 then
            textValue4 = dataTable9.icon
            if not textValue4 then
              textValue4 = "#firstaid"
            end
            tableHelper3 = table
            tableHelper3 = tableHelper3.insert
            workValue15 = dataTable10
            dataTable12 = {}
            textValue7 = "toggleCast_"
            workValue17 = workValue12
            textValue7 = textValue7 .. workValue17
            dataTable12.id = textValue7
            textValue7 = workValue14.label
            dataTable12.title = textValue7
            dataTable12.icon = textValue4
            dataTable12.castId = workValue12
            tableHelper3(workValue15, dataTable12)
          end
        end
        iterator = #dataTable10
        if iterator > 0 then
          iterator = dataTable9.icon
          if not iterator then
            iterator = "#firstaid"
          end
          tableHelper2 = table
          tableHelper2 = tableHelper2.insert
          workValue10 = dataTable3
          dataTable11 = {}
          textValue3 = "casts_"
          workValue12 = dataTable9.id
          textValue3 = textValue3 .. workValue12
          dataTable11.id = textValue3
          textValue3 = dataTable9.title
          dataTable11.title = textValue3
          dataTable11.icon = iterator
          dataTable11.items = dataTable10
          tableHelper2(workValue10, dataTable11)
        end
      end
      dataTable4 = table
      dataTable4 = dataTable4.insert
      dataTable5 = dataTable3
      dataTable6 = {}
      dataTable6.id = "removeAllCasts"
      dataTable6.title = "Remove All Casts"
      dataTable6.icon = "#removeAllCasts"
      dataTable4(dataTable5, dataTable6)
      dataTable4 = #dataTable3
      if dataTable4 > 0 then
        dataTable4 = table
        dataTable4 = dataTable4.insert
        dataTable5 = dataTable
        dataTable6 = {}
        dataTable6.id = "casts"
        dataTable6.title = "Casts"
        dataTable6.icon = "#firstaid"
        dataTable6.items = dataTable3
        dataTable4(dataTable5, dataTable6)
      end
    end
    tableHelper = #dataTable13
    tableHelper = tableHelper + 1
    dataTable2 = {}
    dataTable2.id = "healthService"
    dataTable2.title = "Health Service"
    dataTable2.icon = "#healthservice"
    dataTable2.items = dataTable
    dataTable13[tableHelper] = dataTable2
  else
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "askId"
    dataTable.title = "Ask ID"
    dataTable.icon = "#askId"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "giveCash"
    dataTable.title = "Give Cash"
    dataTable.icon = "#giveMoney"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "search"
    dataTable.title = "Search Player"
    dataTable.icon = "#searchPerson"
    dataTable13[workValue51] = dataTable
    workValue51 = #dataTable13
    workValue51 = workValue51 + 1
    dataTable = {}
    dataTable.id = "robPerson"
    dataTable.title = "Rob Person"
    dataTable.icon = "#robPlayer"
    dataTable13[workValue51] = dataTable
  end
  return dataTable13
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function workValue9(arg1, arg2, arg3, arg4, arg5, arg6)
  local arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2
  if arg1 then
    arg7 = {}
    dataTable13 = {}
    dataTable13.id = "lock"
    dataTable13.title = "Lock Car"
    dataTable13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workValue51 = {}
    workValue51.id = "cleanCar"
    workValue51.title = "Clean Car"
    workValue51.icon = "#cleanCar"
    arg7[1] = dataTable13
    arg7[2] = health
    arg7[3] = workValue51
    dataTable13 = workValue47
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = workValue48
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    arg7[dataTable13] = health
    dataTable13 = {}
    health = workValue2
    workValue51 = arg6
    health = health(workValue51)
    if health then
      health = #dataTable13
      health = health + 1
      workValue51 = {}
      workValue51.id = "searchvehicle"
      workValue51.title = "Search Vehicle"
      workValue51.icon = "#searchVehicle"
      dataTable13[health] = workValue51
    end
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "impoundVehicle"
    workValue51.title = "Impound Vehicle"
    workValue51.icon = "#searchVehicle"
    dataTable13[health] = workValue51
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "askDriverId"
    workValue51.title = "Ask Driver ID"
    workValue51.icon = "#askId"
    dataTable13[health] = workValue51
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "ejectPassenger"
    workValue51.title = "Eject Passenger"
    workValue51.icon = "#openHood"
    dataTable13[health] = workValue51
    health = #arg7
    health = health + 1
    workValue51 = {}
    workValue51.id = "police"
    workValue51.title = "MET Police"
    workValue51.icon = "#metPolice"
    workValue51.items = dataTable13
    arg7[health] = workValue51
    return arg7
  elseif arg2 then
    arg7 = {}
    dataTable13 = {}
    dataTable13.id = "lock"
    dataTable13.title = "Lock Car"
    dataTable13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workValue51 = {}
    workValue51.id = "cleanCar"
    workValue51.title = "Clean Car"
    workValue51.icon = "#cleanCar"
    arg7[1] = dataTable13
    arg7[2] = health
    arg7[3] = workValue51
    dataTable13 = workValue47
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = workValue48
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    arg7[dataTable13] = health
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "police"
    health.title = "HMP"
    health.icon = "#metPolice"
    workValue51 = {}
    dataTable = {}
    dataTable.id = "impoundVehicle"
    dataTable.title = "Impound Vehicle"
    dataTable.icon = "#searchVehicle"
    tableHelper = {}
    tableHelper.id = "askDriverId"
    tableHelper.title = "Ask Driver ID"
    tableHelper.icon = "#askId"
    workValue51[1] = dataTable
    workValue51[2] = tableHelper
    health.items = workValue51
    arg7[dataTable13] = health
    return arg7
  elseif arg3 then
    arg7 = GetEntityModel
    dataTable13 = arg6
    -- Beginner: result below is modelHash.
    arg7 = arg7(dataTable13)
    dataTable13 = cmgCall3.mechanicFlatbedModelHashes
    dataTable13 = dataTable13[arg7]
    if not dataTable13 then
      dataTable13 = cmgCall3.mechanicTowTruckModelHashes
      dataTable13 = dataTable13[arg7]
    end
    health = {}
    workValue51 = workValue48
    dataTable = arg6
    workValue51 = workValue51(dataTable)
    if workValue51 then
      workValue51 = #health
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "repairTrucking"
      dataTable.title = "Truck repair"
      dataTable.icon = "#repair"
      health[workValue51] = dataTable
    end
    workValue51 = workValue50
    dataTable = arg6
    workValue51 = workValue51(dataTable)
    if workValue51 then
      workValue51 = #health
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "repairAA"
      dataTable.title = "Repair"
      dataTable.icon = "#repair"
      health[workValue51] = dataTable
    end
    if dataTable13 then
      workValue51 = #health
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "detachVehicle"
      dataTable.title = "Detach Vehicle"
      dataTable.icon = "#searchVehicle"
      health[workValue51] = dataTable
    else
      workValue51 = #health
      workValue51 = workValue51 + 1
      dataTable = {}
      dataTable.id = "mechanicHookTargetVehicle"
      dataTable.title = "Attach to Flatbed"
      dataTable.icon = "#searchVehicle"
      health[workValue51] = dataTable
    end
    workValue51 = {}
    dataTable = {}
    dataTable.id = "lock"
    dataTable.title = "Lock Car"
    dataTable.icon = "#carLock"
    tableHelper = {}
    tableHelper.id = "openBoot"
    tableHelper.title = "Open Boot"
    tableHelper.icon = "#openBoot"
    dataTable2 = {}
    dataTable2.id = "cleanCar"
    dataTable2.title = "Clean Car"
    dataTable2.icon = "#cleanCar"
    workValue51[1] = dataTable
    workValue51[2] = tableHelper
    workValue51[3] = dataTable2
    dataTable = #workValue51
    dataTable = dataTable + 1
    tableHelper = {}
    tableHelper.id = "aa"
    tableHelper.title = "Mechanic"
    tableHelper.icon = "#mechanic"
    tableHelper.items = health
    workValue51[dataTable] = tableHelper
    dataTable = #workValue51
    dataTable = dataTable + 1
    tableHelper = {}
    tableHelper.id = "openHood"
    tableHelper.title = "Open Hood"
    tableHelper.icon = "#openHood"
    workValue51[dataTable] = tableHelper
    return workValue51
  elseif arg4 then
    arg7 = {}
    dataTable13 = {}
    dataTable13.id = "impoundVehicle"
    dataTable13.title = "Impound Vehicle"
    dataTable13.icon = "#searchVehicle"
    arg7[1] = dataTable13
    if arg6 then
      dataTable13 = workValue42
      health = arg6
      workValue51 = "Health Service Vehicles"
      dataTable13 = dataTable13(health, workValue51)
      if dataTable13 then
        dataTable13 = table
        dataTable13 = dataTable13.insert
        health = arg7
        workValue51 = 1
        dataTable = {}
        dataTable.id = "spawnStretcher"
        dataTable.title = "Spawn Stretcher"
        dataTable.icon = "#stretcher"
        dataTable13(health, workValue51, dataTable)
      end
    end
    dataTable13 = {}
    health = {}
    health.id = "lock"
    health.title = "Lock Car"
    health.icon = "#carLock"
    workValue51 = {}
    workValue51.id = "openBoot"
    workValue51.title = "Open Boot"
    workValue51.icon = "#openBoot"
    dataTable = {}
    dataTable.id = "cleanCar"
    dataTable.title = "Clean Car"
    dataTable.icon = "#cleanCar"
    dataTable13[1] = health
    dataTable13[2] = workValue51
    dataTable13[3] = dataTable
    health = workValue47
    workValue51 = arg6
    health = health(workValue51)
    if health then
      health = #dataTable13
      health = health + 1
      workValue51 = {}
      workValue51.id = "repair"
      workValue51.title = "Repair"
      workValue51.icon = "#repair"
      dataTable13[health] = workValue51
    end
    health = workValue48
    workValue51 = arg6
    health = health(workValue51)
    if health then
      health = #dataTable13
      health = health + 1
      workValue51 = {}
      workValue51.id = "repairTrucking"
      workValue51.title = "Truck repair"
      workValue51.icon = "#repair"
      dataTable13[health] = workValue51
    end
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "openHood"
    workValue51.title = "Open Hood"
    workValue51.icon = "#openHood"
    dataTable13[health] = workValue51
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "police"
    workValue51.title = "Health Service"
    workValue51.icon = "#healthservice"
    workValue51.items = arg7
    dataTable13[health] = workValue51
    return dataTable13
  elseif arg5 then
    arg7 = {}
    dataTable13 = workValue2
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "searchvehicle"
      health.title = "Search Vehicle"
      health.icon = "#searchVehicle"
      arg7[dataTable13] = health
    end
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "askDriverId"
    health.title = "Ask Driver ID"
    health.icon = "#askId"
    arg7[dataTable13] = health
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "ejectPassenger"
    health.title = "Eject Passenger"
    health.icon = "#openHood"
    arg7[dataTable13] = health
    dataTable13 = {}
    health = {}
    health.id = "lock"
    health.title = "Lock Car"
    health.icon = "#carLock"
    workValue51 = {}
    workValue51.id = "openBoot"
    workValue51.title = "Open Boot"
    workValue51.icon = "#openBoot"
    dataTable = {}
    dataTable.id = "cleanCar"
    dataTable.title = "Clean Car"
    dataTable.icon = "#cleanCar"
    dataTable13[1] = health
    dataTable13[2] = workValue51
    dataTable13[3] = dataTable
    health = workValue47
    workValue51 = arg6
    health = health(workValue51)
    if health then
      health = #dataTable13
      health = health + 1
      workValue51 = {}
      workValue51.id = "repair"
      workValue51.title = "Repair"
      workValue51.icon = "#repair"
      dataTable13[health] = workValue51
    end
    health = workValue48
    workValue51 = arg6
    health = health(workValue51)
    if health then
      health = #dataTable13
      health = health + 1
      workValue51 = {}
      workValue51.id = "repairTrucking"
      workValue51.title = "Truck repair"
      workValue51.icon = "#repair"
      dataTable13[health] = workValue51
    end
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "openHood"
    workValue51.title = "Open Hood"
    workValue51.icon = "#openHood"
    dataTable13[health] = workValue51
    health = #dataTable13
    health = health + 1
    workValue51 = {}
    workValue51.id = "vigilante"
    workValue51.title = "Vigilante"
    workValue51.icon = "#vigilante"
    workValue51.items = arg7
    dataTable13[health] = workValue51
    return dataTable13
  else
    arg7 = {}
    dataTable13 = {}
    dataTable13.id = "lock"
    dataTable13.title = "Lock Car"
    dataTable13.icon = "#carLock"
    health = {}
    health.id = "openBoot"
    health.title = "Open Boot"
    health.icon = "#openBoot"
    workValue51 = {}
    workValue51.id = "cleanCar"
    workValue51.title = "Clean Car"
    workValue51.icon = "#cleanCar"
    arg7[1] = dataTable13
    arg7[2] = health
    arg7[3] = workValue51
    dataTable13 = workValue46
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "lockpick"
      health.title = "Lockpick"
      health.icon = "#lockpick"
      arg7[dataTable13] = health
    end
    dataTable13 = workValue47
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repair"
      health.title = "Repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = workValue48
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "repairTrucking"
      health.title = "Truck repair"
      health.icon = "#repair"
      arg7[dataTable13] = health
    end
    dataTable13 = #arg7
    dataTable13 = dataTable13 + 1
    health = {}
    health.id = "openHood"
    health.title = "Open Hood"
    health.icon = "#openHood"
    arg7[dataTable13] = health
    dataTable13 = workValue2
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "searchvehicle"
      health.title = "Search Vehicle"
      health.icon = "#searchVehicle"
      arg7[dataTable13] = health
    end
    dataTable13 = workValue3
    health = arg6
    dataTable13 = dataTable13(health)
    if dataTable13 then
      dataTable13 = #arg7
      dataTable13 = dataTable13 + 1
      health = {}
      health.id = "carjack"
      health.title = "Carjack"
      health.icon = "#carjack"
      arg7[dataTable13] = health
    end
    return arg7
  end
end

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3
  arg2 = flag2
  if arg2 == arg1 then
    return
  end
  flag2 = arg1
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.radialCrosshair = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
end
Crosshair = cmgCall4
cmgCall4 = RegisterNUICallback
textValue2 = "radialDisablenuifocus"

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.nuifocus
  flag = arg2
  arg2 = SetNuiFocusKeepInput
  arg3 = false
  arg2(arg3)
  arg2 = SetNuiFocus
  arg3 = arg1.nuifocus
  arg4 = arg1.nuifocus
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = false
  flag3 = arg2
end
cmgCall4(textValue2, workValue11)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = GetActivePlayers
  arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51 = arg3()
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    dataTable13 = GetPlayerPed
    health = arg7
    -- Beginner: result below is playerPed.
    dataTable13 = dataTable13(health)
    health = GetEntityAttachedTo
    workValue51 = dataTable13
    health = health(workValue51)
    if health == arg1 then
      return dataTable13
    end
  end
  arg2 = 0
  return arg2
end
cmgCall4.getDraggedPed = textValue2

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  if -2100640717 == arg2 then
    arg3 = 10.0
    return arg3
  end
  arg3 = 3.5
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8
  arg1 = GetShapeTestResult
  arg2 = numberValue2
  arg1, arg2, arg3, arg4, arg5 = arg1(arg2)
  if 1 ~= arg1 then
    if 2 == arg1 then
      arg6 = GetEntityType
      arg7 = arg5
      arg6 = arg6(arg7)
      if arg6 > 0 then
        arg6 = GetEntityCoords
        arg7 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg7 = arg7()
        dataTable13 = true
        -- Beginner: result below is entityCoords.
        arg6 = arg6(arg7, dataTable13)
        arg7 = GetEntityCoords
        dataTable13 = arg5
        health = true
        -- Beginner: result below is entityCoords.
        arg7 = arg7(dataTable13, health)
        arg6 = arg6 - arg7
        arg6 = #arg6
        arg7 = cmgCall4
        dataTable13 = arg5
        arg7 = arg7(dataTable13)
        if arg6 <= arg7 then
          arg6 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          arg6 = arg6()
          if arg5 ~= arg6 then
            workValue4 = arg5
            arg6 = GetEntityType
            arg7 = arg5
            arg6 = arg6(arg7)
            workValue5 = arg6
        end
      end
      else
        arg6 = nil
        workValue4 = arg6
        arg6 = nil
        workValue5 = arg6
      end
      arg6 = workValue4
      if not arg6 then
        arg6 = GetEntityPlayerIsFreeAimingAt
        arg7 = PlayerId
        arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8 = arg7()
        arg6, arg7 = arg6(arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8)
        if arg6 and 0 ~= arg7 then
          dataTable13 = CMG
          dataTable13 = dataTable13.getDraggedPed
          dataTable13 = dataTable13()
          if arg7 == dataTable13 then
            workValue4 = arg7
            dataTable13 = GetEntityType
            health = arg7
            dataTable13 = dataTable13(health)
            workValue5 = dataTable13
          end
        end
      end
    end
    arg6 = GetGameplayCamRot
    arg7 = 2
    arg6 = arg6(arg7)
    arg7 = GetGameplayCamCoord
    arg7 = arg7()
    dataTable13 = CMG
    dataTable13 = dataTable13.rotationToDirection
    health = arg6
    dataTable13 = dataTable13(health)
    health = vector3
    workValue51 = arg7.x
    dataTable = dataTable13.x
    dataTable = dataTable * 15.0
    workValue51 = workValue51 + dataTable
    dataTable = arg7.y
    tableHelper = dataTable13.y
    tableHelper = tableHelper * 15.0
    dataTable = dataTable + tableHelper
    tableHelper = arg7.z
    dataTable2 = dataTable13.z
    dataTable2 = dataTable2 * 15.0
    tableHelper = tableHelper + dataTable2
    health = health(workValue51, dataTable, tableHelper)
    workValue51 = StartShapeTestLosProbe
    dataTable = arg7.x
    tableHelper = arg7.y
    dataTable2 = arg7.z
    dataTable3 = health.x
    dataTable4 = health.y
    dataTable5 = health.z
    dataTable6 = -1
    dataTable7 = -1
    dataTable8 = 1
    workValue51 = workValue51(dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8)
    numberValue2 = workValue51
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2
  arg1 = GetEntityHealth
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is health.
  arg1 = arg1(arg2)
  arg1 = arg1 > 102
  return arg1
end
workValue13 = RegisterCommand
flag5 = "lootbag"
-- Beginner: this function is the command handler for "lootbag".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = GetFrameCount
  arg1 = arg1()
  numberValue3 = arg1
end
flag6 = true
-- Beginner: Register a chat/console command. Event/command: "lootbag".
workValue13(flag5, textValue5, flag6)
workValue13 = RegisterKeyMapping
flag5 = "lootbag"
textValue5 = "Open Lootbag"
flag6 = "KEYBOARD"
textValue6 = "E"
-- Beginner: Bind a command to a keyboard/controller key.
workValue13(flag5, textValue5, flag6, textValue6)

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.isMechanicDebrisCarryingScrap
  arg1 = arg1()
  if arg1 then
    arg1 = false
    return arg1
  end
  arg1 = GetFrameCount
  arg1 = arg1()
  arg2 = numberValue3
  arg2 = arg2 == arg1
  return arg2
end
flag5 = false

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable
  arg3 = flag5
  if arg3 then
    arg3 = notify
    arg4 = "~r~You are already opening a lootbag."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = CMG
  arg3 = arg3.hasClientPermission
  arg4 = "admin.tickets"
  arg3 = arg3(arg4)
  arg4 = CMG
  arg4 = arg4.isNoClipActive
  arg4 = arg4()
  if not arg4 or arg3 then
    arg4 = CMG
    arg4 = arg4.isCarrying
    arg4 = arg4()
    if not arg4 then
      arg4 = CMG
      arg4 = arg4.isPiggyBackActive
      arg4 = arg4()
      if not arg4 then
        arg4 = CMG
        arg4 = arg4.isKnockedOut
        arg4 = arg4()
        if not arg4 then
          goto flow_label_35
        end
      end
    end
  end
  return
  ::flow_label_35::
  arg4 = DecorExistOn
  arg5 = arg2
  arg6 = "12da94aa7e"
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg4 = DecorGetInt
    arg5 = arg2
    arg6 = "12da94aa7e"
    arg4 = arg4(arg5, arg6)
    arg5 = CMG
    arg5 = arg5.getClientUserId
    -- Beginner: result below is userId.
    arg5 = arg5()
    if arg4 ~= arg5 then
      arg5 = CMG
      arg5 = arg5.hasClientGroup
      arg6 = "Vigilante"
      arg5 = arg5(arg6)
      if arg5 then
        arg5 = DecorGetInt
        arg6 = arg2
        arg7 = "5f7af1c5ce"
        arg5 = arg5(arg6, arg7)
        arg6 = CMG
        arg6 = arg6.isLootbagOwnerVigilante
        arg7 = arg5
        arg6 = arg6(arg7)
        if not arg6 then
          arg6 = notify
          arg7 = "~r~You can not open other players lootbags whilst being a vigilante."
          arg6(arg7)
          return
        end
      end
    end
  end
  arg4 = IsEntityVisible
  arg5 = PlayerPedId
  arg5, arg6, arg7, dataTable13, health, workValue51, dataTable = arg5()
  arg4 = arg4(arg5, arg6, arg7, dataTable13, health, workValue51, dataTable)
  if not arg4 and not arg3 then
    return
  end
  arg4 = CMG
  arg4 = arg4.isHandcuffed
  arg4 = arg4()
  if arg4 then
    return
  end
  arg4 = CMG
  arg4 = arg4.hasNewPlayerProtection
  arg4 = arg4()
  if arg4 then
    arg4 = notify
    arg5 = "~r~You can not open lootbags whilst you have new player protection."
    -- Beginner: Show a notification to the player.
    arg4(arg5)
    return
  end
  arg4 = true
  flag5 = arg4
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  arg5 = {}
  arg6 = {}
  arg7 = "amb@medic@standing@kneel@base"
  dataTable13 = "base"
  health = 1
  arg6[1] = arg7
  arg6[2] = dataTable13
  arg6[3] = health
  arg7 = {}
  dataTable13 = "anim@gangops@facility@servers@bodysearch@"
  health = "player_search"
  workValue51 = 1
  arg7[1] = dataTable13
  arg7[2] = health
  arg7[3] = workValue51
  dataTable13 = {}
  health = "amb@medic@standing@kneel@exit"
  workValue51 = "exit"
  dataTable = 1
  dataTable13[1] = health
  dataTable13[2] = workValue51
  dataTable13[3] = dataTable
  arg5[1] = arg6
  arg5[2] = arg7
  arg5[3] = dataTable13
  arg6 = tCMG
  arg6 = arg6.playAnim
  arg7 = false
  dataTable13 = arg5
  health = false
  arg6(arg7, dataTable13, health)

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local cmgCall2, textValue, numberValue5, workValue20, workValue31, workValue43, flag9, playerPed, workValue49, workValue52, numberValue
    cmgCall2 = pairs
    textValue = arg5
    cmgCall2, textValue, numberValue5, workValue20 = cmgCall2(textValue)
    for workValue31, workValue43 in cmgCall2, textValue, numberValue5, workValue20 do
      flag9 = IsEntityPlayingAnim
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      workValue49 = workValue43[1]
      workValue52 = workValue43[2]
      numberValue = 3
      flag9 = flag9(playerPed, workValue49, workValue52, numberValue)
      if flag9 then
        flag9 = true
        return flag9
      end
    end
    cmgCall2 = false
    return cmgCall2
  end
  arg7 = GetSelectedPedWeapon
  dataTable13 = PlayerPedId
  dataTable13, health, workValue51, dataTable = dataTable13()
  -- Beginner: result below is weaponHash.
  arg7 = arg7(dataTable13, health, workValue51, dataTable)
  dataTable13 = CMG
  dataTable13 = dataTable13.inEvent
  dataTable13 = dataTable13()
  if not dataTable13 then
    dataTable13 = CMG
    dataTable13 = dataTable13.isEmergencyService
    dataTable13 = dataTable13()
    if dataTable13 or -1569615261 == arg7 or 883325847 == arg7 then
      dataTable13 = Citizen
      dataTable13 = dataTable13.CreateThread

      -- === HELPER FUNCTION: health() ===
      function health()
        local cmgCall2, textValue, numberValue5, workValue20, workValue31
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.startCircularProgressBar
        textValue = ""
        numberValue5 = 3000
        workValue20 = nil

        -- === HELPER FUNCTION (decompiler name: workValue31; parameters: none) ===
        function workValue31()
          local workValue, workValue6
        end
        cmgCall2(textValue, numberValue5, workValue20, workValue31)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      dataTable13(health)
      dataTable13 = Citizen
      dataTable13 = dataTable13.Wait
      health = 100
      dataTable13(health)
      while true do
        dataTable13 = flag5
        if not dataTable13 then
          break
        end
        dataTable13 = tCMG
        dataTable13 = dataTable13.isInComa
        dataTable13 = dataTable13()
        if dataTable13 then
          dataTable13 = CMG
          dataTable13 = dataTable13.stopCircularProgressBar
          dataTable13()
          dataTable13 = false
          flag5 = dataTable13
          dataTable13 = tCMG
          dataTable13 = dataTable13.stopAnim
          dataTable13()
          return
        else
          dataTable13 = arg6
          dataTable13 = dataTable13()
          if not dataTable13 then
            dataTable13 = CMG
            dataTable13 = dataTable13.stopCircularProgressBar
            dataTable13()
            dataTable13 = false
            flag5 = dataTable13
            dataTable13 = notify
            health = "~r~Opening lootbag cancelled."
            -- Beginner: Show a notification to the player.
            dataTable13(health)
            dataTable13 = tCMG
            dataTable13 = dataTable13.stopAnim
            dataTable13()
            return
          else
            dataTable13 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            dataTable13 = dataTable13()
            dataTable13 = dataTable13 - arg4
            health = 3000
            if dataTable13 >= health then
              break
            end
          end
        end
        dataTable13 = Citizen
        dataTable13 = dataTable13.Wait
        health = 0
        dataTable13(health)
      end
    end
  end
  dataTable13 = false
  flag5 = dataTable13
  dataTable13 = tCMG
  dataTable13 = dataTable13.isInComa
  dataTable13 = dataTable13()
  if dataTable13 then
    return
  end
  dataTable13 = arg1
  dataTable13()
end

-- === HELPER FUNCTION (decompiler name: flag6; parameters: none) ===
function flag6()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2
  arg1 = CMG
  arg1 = arg1.getDraggedPed
  arg1 = arg1()
  if 0 == arg1 then
    return
  end
  arg2 = GetFrameCount
  arg2 = arg2()
  arg3 = numberValue4
  if arg2 ~= arg3 then
    arg3 = arg2 - 1
    arg4 = numberValue4
    if arg3 ~= arg4 then
      goto flow_label_18
    end
  end
  return
  ::flow_label_18::
  arg3 = SetNuiFocus
  arg4 = true
  arg5 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg3(arg4, arg5)
  arg3 = SendNUIMessage
  arg4 = {}
  arg4.openRadialMenu = true
  arg4.type = "ped"
  arg4.entityId = arg1
  arg5 = workValue8
  arg6 = arg1
  arg7 = CMG
  arg7 = arg7.hasClientPermission
  dataTable13 = "police.onduty.permission"
  arg7 = arg7(dataTable13)
  if not arg7 then
    arg7 = CMG
    arg7 = arg7.hasClientPermission
    dataTable13 = "borderforce.onduty.permission"
    arg7 = arg7(dataTable13)
  end
  dataTable13 = CMG
  dataTable13 = dataTable13.hasClientPermission
  health = "prisonguard.onduty.permission"
  dataTable13 = dataTable13(health)
  health = CMG
  health = health.hasClientPermission
  workValue51 = "nhs.onduty.permission"
  health = health(workValue51)
  workValue51 = CMG
  workValue51 = workValue51.hasClientGroup
  dataTable = "Vigilante"
  workValue51 = workValue51(dataTable)
  dataTable = DecorGetBool
  tableHelper = arg1
  dataTable2 = "4ac0472477"
  dataTable = dataTable(tableHelper, dataTable2)
  tableHelper = CMG
  tableHelper = tableHelper.isDrawingCasinoChipsUI
  tableHelper = tableHelper()
  if tableHelper then
    tableHelper = CMG
    tableHelper = tableHelper.getChipsClientDisplayAmount
    tableHelper = tableHelper()
    tableHelper = tableHelper > 0
  end
  arg5 = arg5(arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper)
  arg4.menuItems = arg5
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3
  arg1 = textValue2
  arg1()
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsIn
  arg3 = arg1
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  arg3 = flag
  if arg3 and 0 ~= arg2 then
    arg3 = flag3
    if not arg3 then
      arg3 = false
      flag = arg3
      arg3 = SendNUIMessage
      arg4 = {}
      arg4.closeRadialMenu = true
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      arg3(arg4)
    end
  end
  arg3 = CMG
  arg3 = arg3.isMechanicDebrisCarryingScrap
  arg3 = arg3()
  if arg3 then
    arg3 = flag
    if arg3 then
      arg3 = false
      flag = arg3
      arg3 = SendNUIMessage
      arg4 = {}
      arg4.closeRadialMenu = true
      arg3(arg4)
      arg3 = SetNuiFocus
      arg4 = false
      arg5 = false
      -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
      arg3(arg4, arg5)
    end
  end
  arg3 = workValue4
  if arg3 then
    arg3 = workValue5
    if arg3 then
      arg3 = CMG
      arg3 = arg3.isMechanicDebrisCarryingScrap
      arg3 = arg3()
      if arg3 then
        arg3 = Crosshair
        arg4 = false
        arg3(arg4)
      else
        arg3 = workValue11
        arg3 = arg3()
        if arg3 and 0 == arg2 then
          arg3 = GetRenderingCam
          arg3 = arg3()
          if -1 == arg3 then
            arg3 = flag4
            if not arg3 then
              arg3 = workValue5
              if 1 == arg3 then
                arg3 = workValue4
                if arg3 ~= arg1 then
                  arg3 = IsPedAPlayer
                  arg4 = workValue4
                  arg3 = arg3(arg4)
                  if arg3 then
                    arg3 = CMG
                    arg3 = arg3.isAtArenaWagerHub
                    arg3 = arg3()
                    if arg3 then
                      arg3 = Crosshair
                      arg4 = false
                      arg3(arg4)
                    else
                      arg3 = Crosshair
                      arg4 = true
                      arg3(arg4)
                      arg3 = workValue13
                      arg3 = arg3()
                      if arg3 then
                        arg3 = flag
                        if false == arg3 then
                          arg3 = true
                          flag = arg3
                          arg3 = SetNuiFocus
                          arg4 = true
                          arg5 = true
                          -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
                          arg3(arg4, arg5)
                          arg3 = SendNUIMessage
                          arg4 = {}
                          arg4.openRadialMenu = true
                          arg4.type = "ped"
                          arg5 = workValue4
                          arg4.entityId = arg5
                          arg5 = workValue8
                          arg6 = workValue4
                          arg7 = CMG
                          arg7 = arg7.hasClientPermission
                          dataTable13 = "police.onduty.permission"
                          arg7 = arg7(dataTable13)
                          if not arg7 then
                            arg7 = CMG
                            arg7 = arg7.hasClientPermission
                            dataTable13 = "borderforce.onduty.permission"
                            arg7 = arg7(dataTable13)
                          end
                          dataTable13 = CMG
                          dataTable13 = dataTable13.hasClientPermission
                          health = "prisonguard.onduty.permission"
                          dataTable13 = dataTable13(health)
                          health = CMG
                          health = health.hasClientPermission
                          workValue51 = "nhs.onduty.permission"
                          health = health(workValue51)
                          workValue51 = CMG
                          workValue51 = workValue51.hasClientGroup
                          dataTable = "Vigilante"
                          workValue51 = workValue51(dataTable)
                          dataTable = DecorGetBool
                          tableHelper = workValue4
                          dataTable2 = "4ac0472477"
                          dataTable = dataTable(tableHelper, dataTable2)
                          tableHelper = CMG
                          tableHelper = tableHelper.isDrawingCasinoChipsUI
                          tableHelper = tableHelper()
                          if tableHelper then
                            tableHelper = CMG
                            tableHelper = tableHelper.getChipsClientDisplayAmount
                            tableHelper = tableHelper()
                            tableHelper = tableHelper > 0
                          end
                          arg5 = arg5(arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper)
                          arg4.menuItems = arg5
                          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                          arg3(arg4)
                        end
                      end
                    end
                end
              end
              else
                arg3 = workValue5
                if 2 == arg3 then
                  arg3 = workValue4
                  if arg3 ~= arg2 then
                    arg3 = Crosshair
                    arg4 = true
                    arg3(arg4)
                    arg3 = workValue13
                    arg3 = arg3()
                    if arg3 then
                      arg3 = flag
                      if false == arg3 then
                        arg3 = GetEntityModel
                        arg4 = workValue4
                        -- Beginner: result below is modelHash.
                        arg3 = arg3(arg4)
                        arg4 = -665859588 == arg3
                        arg5 = CMG
                        arg5 = arg5.isWheelchairVehicle
                        if arg5 then
                          arg5 = CMG
                          arg5 = arg5.isWheelchairVehicle
                          arg6 = workValue4
                          arg5 = arg5(arg6)
                        end
                        arg6 = CMG
                        arg6 = arg6.hasClientPermission
                        arg7 = "nhs.onduty.permission"
                        arg6 = arg6(arg7)
                        arg7 = nil
                        if arg4 and arg6 then
                          dataTable13 = {}
                          health = {}
                          health.id = "removeStretcher"
                          health.title = "Remove Stretcher"
                          health.icon = "#stretcher"
                          dataTable13[1] = health
                          arg7 = dataTable13
                        else
                          if arg5 and arg6 then
                            dataTable13 = CMG
                            dataTable13 = dataTable13.hasClientPermission
                            health = "doctor.permission"
                            dataTable13 = dataTable13(health)
                            if dataTable13 then
                              dataTable13 = {}
                              health = {}
                              health.id = "removeWheelchair"
                              health.title = "Remove Wheelchair"
                              health.icon = "#wheelchairSymbol"
                              dataTable13[1] = health
                              arg7 = dataTable13
                          end
                          else
                            dataTable13 = workValue9
                            health = CMG
                            health = health.hasClientPermission
                            workValue51 = "police.onduty.permission"
                            health = health(workValue51)
                            if not health then
                              health = CMG
                              health = health.hasClientPermission
                              workValue51 = "borderforce.onduty.permission"
                              health = health(workValue51)
                            end
                            workValue51 = CMG
                            workValue51 = workValue51.hasClientPermission
                            dataTable = "prisonguard.onduty.permission"
                            workValue51 = workValue51(dataTable)
                            dataTable = CMG
                            dataTable = dataTable.hasClientPermission
                            tableHelper = "aa.onduty.permission"
                            dataTable = dataTable(tableHelper)
                            tableHelper = arg6
                            dataTable2 = CMG
                            dataTable2 = dataTable2.hasClientGroup
                            dataTable3 = "Vigilante"
                            dataTable2 = dataTable2(dataTable3)
                            dataTable3 = workValue4
                            dataTable13 = dataTable13(health, workValue51, dataTable, tableHelper, dataTable2, dataTable3)
                            arg7 = dataTable13
                          end
                        end
                        dataTable13 = true
                        flag = dataTable13
                        dataTable13 = SetNuiFocus
                        health = true
                        workValue51 = true
                        -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
                        dataTable13(health, workValue51)
                        dataTable13 = SendNUIMessage
                        health = {}
                        health.openRadialMenu = true
                        health.type = "vehicle"
                        workValue51 = workValue4
                        health.entityId = workValue51
                        health.menuItems = arg7
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        dataTable13(health)
                      end
                    end
                end
                else
                  arg3 = workValue5
                  if 3 == arg3 then
                    arg3 = CMG
                    arg4 = "getTrapperWarehouseShapeTestPickupPlantId"
                    arg3 = arg3[arg4]
                    arg4 = workValue4
                    arg3 = arg3(arg4)
                    if arg3 then
                      arg4 = CMG
                      arg4 = arg4.isTrapperShelfRadialSuppressedForPlantId
                      arg5 = arg3
                      arg4 = arg4(arg5)
                      if arg4 then
                        arg4 = Crosshair
                        arg5 = false
                        arg4(arg5)
                    end
                    elseif arg3 then
                      arg4 = Crosshair
                      arg5 = true
                      arg4(arg5)
                      arg4 = workValue13
                      arg4 = arg4()
                      if arg4 then
                        arg4 = flag
                        if false == arg4 then
                          arg4 = true
                          flag = arg4
                          arg4 = CMG
                          arg4 = arg4.openTrapperPickupRadial
                          arg5 = arg3
                          arg6 = {}
                          arg7 = {}
                          arg7.id = "pickupTrappingItem"
                          arg7.title = "Pick up"
                          arg7.icon = "#trapperPickupPackage"
                          arg6[1] = arg7
                          arg4(arg5, arg6)
                          arg4 = workValue7
                          arg4()
                        end
                      end
                    else
                      arg4 = CMG
                      arg4 = arg4.hasClientPermission
                      arg5 = "nhs.onduty.permission"
                      arg4 = arg4(arg5)
                      if not arg4 then
                        arg4 = GetEntityModel
                        arg5 = workValue4
                        -- Beginner: result below is modelHash.
                        arg4 = arg4(arg5)
                        arg5 = CMG
                        arg5 = arg5.isLootbagModel
                        arg6 = arg4
                        arg5 = arg5(arg6)
                        if arg5 then
                          arg5 = Crosshair
                          arg6 = true
                          arg5(arg6)
                          arg5 = workValue13
                          arg5 = arg5()
                          if arg5 then
                            arg5 = DecorGetInt
                            arg6 = workValue4
                            arg7 = "5f7af1c5ce"
                            arg5 = arg5(arg6, arg7)
                            arg6 = DecorExistOn
                            arg7 = workValue4
                            dataTable13 = "b1457c1a26"
                            arg6 = arg6(arg7, dataTable13)
                            if arg6 then
                              arg6 = DecorGetBool
                              arg7 = workValue4
                              dataTable13 = "b1457c1a26"
                              arg6 = arg6(arg7, dataTable13)
                            end
                            if not arg6 then
                              arg7 = TriggerEvent
                              dataTable13 = "56e6172373"
                              health = false
                              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                              arg7(dataTable13, health)
                            end
                            arg7 = textValue5

                            -- === HELPER FUNCTION (decompiler name: dataTable13; parameters: none) ===
                            function dataTable13()
                              local cmgCall2, textValue, numberValue5
                              cmgCall2 = TriggerServerEvent
                              textValue = "bdaf15af25"
                              numberValue5 = arg5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdaf15af25".
                              cmgCall2(textValue, numberValue5)
                            end
                            health = workValue4
                            arg7(dataTable13, health)
                            arg7 = workValue7
                            arg7()
                          end
                        elseif 290621560 == arg4 then
                          arg5 = Crosshair
                          arg6 = true
                          arg5(arg6)
                          arg5 = workValue13
                          arg5 = arg5()
                          if arg5 then
                            arg5 = DecorGetInt
                            arg6 = workValue4
                            arg7 = "5f7af1c5ce"
                            arg5 = arg5(arg6, arg7)
                            arg6 = TriggerEvent
                            arg7 = "56e6172373"
                            dataTable13 = false
                            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                            arg6(arg7, dataTable13)
                            arg6 = TriggerServerEvent
                            arg7 = "17e6b6a62a"
                            dataTable13 = arg5
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "17e6b6a62a".
                            arg6(arg7, dataTable13)
                            arg6 = workValue7
                            arg6()
                          end
                        elseif -1422265815 == arg4 then
                          arg5 = Crosshair
                          arg6 = true
                          arg5(arg6)
                          arg5 = workValue13
                          arg5 = arg5()
                          if arg5 then
                            arg5 = DecorGetInt
                            arg6 = workValue4
                            arg7 = "5f7af1c5ce"
                            arg5 = arg5(arg6, arg7)
                            arg6 = TriggerEvent
                            arg7 = "56e6172373"
                            dataTable13 = false
                            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
                            arg6(arg7, dataTable13)
                            arg6 = textValue5

                            -- === HELPER FUNCTION: arg7() ===
                            function arg7()
                              local cmgCall2, textValue, numberValue5
                              cmgCall2 = TriggerServerEvent
                              textValue = "5891aba85f"
                              numberValue5 = arg5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
                              cmgCall2(textValue, numberValue5)
                            end
                            dataTable13 = workValue4
                            arg6(arg7, dataTable13)
                            arg6 = workValue7
                            arg6()
                          end
                        elseif 772559902 == arg4 then
                          arg5 = Crosshair
                          arg6 = true
                          arg5(arg6)
                          arg5 = workValue13
                          arg5 = arg5()
                          if arg5 then
                            arg5 = DecorGetInt
                            arg6 = workValue4
                            arg7 = "5f7af1c5ce"
                            arg5 = arg5(arg6, arg7)
                            arg6 = textValue5

                            -- === HELPER FUNCTION: arg7() ===
                            function arg7()
                              local cmgCall2, textValue, numberValue5
                              cmgCall2 = TriggerServerEvent
                              textValue = "5891aba85f"
                              numberValue5 = arg5
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
                              cmgCall2(textValue, numberValue5)
                            end
                            dataTable13 = workValue4
                            arg6(arg7, dataTable13)
                            arg6 = workValue7
                            arg6()
                          end
                        elseif 1879598094 == arg4 then
                          arg5 = Crosshair
                          arg6 = true
                          arg5(arg6)
                          arg5 = workValue13
                          arg5 = arg5()
                          if arg5 then
                            arg5 = DecorGetInt
                            arg6 = workValue4
                            arg7 = "f1f74bea1b"
                            arg5 = arg5(arg6, arg7)
                            arg6 = TriggerServerEvent
                            arg7 = "fa763c2c8a"
                            dataTable13 = arg5
                            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fa763c2c8a".
                            arg6(arg7, dataTable13)
                            arg6 = workValue7
                            arg6()
                          end
                        else
                          arg5 = Crosshair
                          arg6 = false
                          arg5(arg6)
                        end
                      else
                        arg4 = Crosshair
                        arg5 = false
                        arg4(arg5)
                      end
                    end
                  else
                    arg3 = Crosshair
                    arg4 = false
                    arg3(arg4)
                  end
                end
              end
          end
        end
        else
          arg3 = Crosshair
          arg4 = false
          arg3(arg4)
        end
      end
  end
  else
    arg3 = Crosshair
    arg4 = false
    arg3(arg4)
  end
  arg3 = flag2
  if not arg3 then
    arg3 = IsControlJustPressed
    arg4 = 0
    arg5 = 38
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg3 = CMG
      arg3 = arg3.isMechanicDebrisCarryingScrap
      arg3 = arg3()
      if not arg3 then
        arg3 = CMG
        arg3 = arg3.isAtArenaWagerHub
        arg3 = arg3()
        if not arg3 then
          arg3 = Citizen
          arg3 = arg3.CreateThread
          arg4 = flag6
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg3(arg4)
        end
      end
    end
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.createThreadOnTick
workValue16 = textValue6
textValue8 = "Radial Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall6(workValue16, textValue8)

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2) ===
function cmgCall6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3
  arg3 = GetEntityCoords
  arg4 = arg2
  arg5 = true
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5)
  arg4 = GetOffsetFromEntityInWorldCoords
  arg5 = arg2
  arg6 = 0.0
  arg7 = arg1
  dataTable13 = 0.0
  arg4 = arg4(arg5, arg6, arg7, dataTable13)
  arg5 = _ENV
  arg6 = "StartExpensiveSynchronousShapeTestLosProbe"
  arg5 = arg5[arg6]
  arg6 = arg3.x
  arg7 = arg3.y
  dataTable13 = arg3.z
  health = arg4.x
  workValue51 = arg4.y
  dataTable = arg4.z
  tableHelper = -1
  dataTable2 = arg2
  dataTable3 = 0
  arg5 = arg5(arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3)
  arg6 = GetShapeTestResult
  arg7 = arg5
  arg6, arg7, dataTable13, health, workValue51 = arg6(arg7)
  return workValue51
end
GetEntInFrontOfPlayer = cmgCall6

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1) ===
function cmgCall6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper
  arg2 = GetGameplayCamRot
  arg3 = 2
  arg2 = arg2(arg3)
  arg3 = GetGameplayCamCoord
  arg3 = arg3()
  arg4 = arg2.z
  arg4 = arg4 * 0.0174532924
  arg5 = arg2.x
  arg5 = arg5 * 0.0174532924
  arg6 = math
  arg6 = arg6.abs
  arg7 = math
  arg7 = arg7.cos
  dataTable13 = arg5
  arg7, dataTable13, health, workValue51, dataTable, tableHelper = arg7(dataTable13)
  arg6 = arg6(arg7, dataTable13, health, workValue51, dataTable, tableHelper)
  arg7 = arg3.x
  dataTable13 = math
  dataTable13 = dataTable13.sin
  health = arg4
  dataTable13 = dataTable13(health)
  dataTable13 = -dataTable13
  health = arg6 + arg1
  dataTable13 = dataTable13 * health
  arg7 = arg7 + dataTable13
  dataTable13 = arg3.y
  health = math
  health = health.cos
  workValue51 = arg4
  health = health(workValue51)
  workValue51 = arg6 + arg1
  health = health * workValue51
  dataTable13 = dataTable13 + health
  health = arg3.z
  workValue51 = math
  workValue51 = workValue51.sin
  dataTable = arg5
  workValue51 = workValue51(dataTable)
  workValue51 = workValue51 * 8.0
  health = health + workValue51
  workValue51 = arg7
  dataTable = dataTable13
  tableHelper = health
  return workValue51, dataTable, tableHelper
end
GetCoordsFromCam = cmgCall6

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2) ===
function cmgCall6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5
  arg3 = GetGameplayCamCoord
  arg3 = arg3()
  arg4 = GetCoordsFromCam
  arg5 = arg1
  arg4, arg5, arg6 = arg4(arg5)
  arg7 = _ENV
  dataTable13 = "StartExpensiveSynchronousShapeTestLosProbe"
  arg7 = arg7[dataTable13]
  dataTable13 = arg3.x
  health = arg3.y
  workValue51 = arg3.z
  dataTable = arg4
  tableHelper = arg5
  dataTable2 = arg6
  dataTable3 = -1
  dataTable4 = arg2
  dataTable5 = 0
  arg7 = arg7(dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5)
  dataTable13 = GetShapeTestResult
  health = arg7
  dataTable13, health, workValue51, dataTable, tableHelper = dataTable13(health)
  dataTable2 = tableHelper
  dataTable3 = arg4
  dataTable4 = arg5
  dataTable5 = arg6
  return dataTable2, dataTable3, dataTable4, dataTable5
end
Target = cmgCall6

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2
  arg1 = TriggerEvent
  arg2 = "d5c231fe44"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "d5c231fe44".
  arg1(arg2)
end
workValue16 = nil

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  workValue16 = arg1
  arg2 = SetVehicleDoorOpen
  arg3 = arg1
  arg4 = 5
  arg5 = true
  arg6 = false
  arg2(arg3, arg4, arg5, arg6)
  arg2 = TriggerEvent
  arg3 = "a7ce3135a0"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a7ce3135a0".
  arg2(arg3)
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.closeRadialMenu = true
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
  arg2 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg2 = arg2()
  arg3 = PlaySoundFrontend
  arg4 = arg2
  arg5 = "boot_pop"
  arg6 = "dlc_vw_body_disposal_sounds"
  arg7 = true
  arg3(arg4, arg5, arg6, arg7)
  arg3 = ReleaseSoundId
  arg4 = arg2
  arg3(arg4)
end
eventRegistration = RegisterNetEvent
textValue9 = "2a70dddd80"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2a70dddd80".
eventRegistration(textValue9)
eventRegistration = AddEventHandler
textValue9 = "2a70dddd80"
-- Beginner: this function runs when client event "2a70dddd80" fires.

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, arg2, arg3, arg4
  arg1 = workValue16
  if arg1 then
    arg1 = SetVehicleDoorShut
    arg2 = workValue16
    arg3 = 5
    arg4 = true
    arg1(arg2, arg3, arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "2a70dddd80".
eventRegistration(textValue9, workValue18)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityHealth
  arg4 = arg2
  -- Beginner: result below is health.
  arg3 = arg3(arg4)
  if arg3 > 102 then
    arg3 = IsEntityDead
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = TaskStartScenarioInPlace
      arg4 = arg2
      arg5 = "world_human_maid_clean"
      arg6 = 0
      arg7 = true
      arg3(arg4, arg5, arg6, arg7)
      arg3 = Wait
      arg4 = 10000
      arg3(arg4)
      arg3 = SetVehicleDirtLevel
      arg4 = arg1
      arg5 = 0.0
      arg3(arg4, arg5)
      arg3 = SetVehicleUndriveable
      arg4 = arg1
      arg5 = false
      arg3(arg4, arg5)
      arg3 = ClearPedSecondaryTask
      arg4 = arg2
      arg3(arg4)
      arg3 = ClearPedTasks
      arg4 = arg2
      arg3(arg4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerEvent
  arg3 = "1631601e81"
  arg4 = arg1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "1631601e81".
  arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = NetworkGetEntityIsNetworked
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = NetworkGetNetworkIdFromEntity
    arg3 = arg1
    arg2 = arg2(arg3)
    if 0 ~= arg2 then
      arg3 = TriggerServerEvent
      arg4 = "aa1fa541c3"
      arg5 = arg1
      arg6 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aa1fa541c3".
      arg3(arg4, arg5, arg6)
    end
  end
end
flag7 = false

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1) ===
function workValue19(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = flag7
  if not arg2 then
    arg2 = SetVehicleDoorOpen
    arg3 = arg1
    arg4 = 4
    arg5 = false
    arg6 = false
    arg2(arg3, arg4, arg5, arg6)
    arg2 = true
    flag7 = arg2
  else
    arg2 = SetVehicleDoorShut
    arg3 = arg1
    arg4 = 4
    arg5 = false
    arg2(arg3, arg4, arg5)
    arg2 = false
    flag7 = arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1) ===
function workValue21(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "borderforce.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_17
    end
  end
  arg2 = TriggerEvent
  arg3 = "918c11c450"
  arg4 = arg1
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "918c11c450".
  arg2(arg3, arg4)
  ::flow_label_17::
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: arg1) ===
function workValue22(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "prisonguard.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = CMG
    arg2 = arg2.isPlayerNearPrison
    arg2 = arg2()
    if not arg2 then
      arg2 = workValue42
      arg3 = arg1
      arg4 = "Prison Service Vehicles"
      arg2 = arg2(arg3, arg4)
      if not arg2 then
        arg2 = notify
        arg3 = "~r~You can not impound outside of the prison"
        -- Beginner: Show a notification to the player.
        arg2(arg3)
        return
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "nhs.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = workValue42
    arg3 = arg1
    arg4 = "Health Service Vehicles"
    arg2 = arg2(arg3, arg4)
    if not arg2 then
      arg2 = workValue42
      arg3 = arg1
      arg4 = "Health Service Helicopters"
      arg2 = arg2(arg3, arg4)
      if not arg2 then
        arg2 = notify
        arg3 = "~r~You can only impound NHS vehicles."
        arg2(arg3)
        return
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientPermission
        arg3 = "nhs.onduty.permission"
        arg2 = arg2(arg3)
        if not arg2 then
          goto flow_label_124
        end
      end
    end
  end
  arg2 = tonumber
  arg3 = DecorGetInt
  arg4 = arg1
  arg5 = "ac76c9d452"
  arg3, arg4, arg5, arg6, arg7, dataTable13, health = arg3(arg4, arg5)
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, dataTable13, health)
  arg3 = DecorGetInt
  arg4 = arg1
  arg5 = "0a6cf607ed"
  arg3 = arg3(arg4, arg5)
  if arg2 and arg2 > 0 and arg3 > 0 then
    arg4 = CMG
    arg4 = arg4.impoundVehicleOptions
    arg5 = arg2
    arg6 = GetEntityModel
    arg7 = arg1
    -- Beginner: result below is modelHash.
    arg6 = arg6(arg7)
    arg7 = VehToNet
    dataTable13 = arg1
    arg7 = arg7(dataTable13)
    dataTable13 = arg1
    health = arg3
    arg4(arg5, arg6, arg7, dataTable13, health)
  else
    arg4 = TriggerEvent
    arg5 = "408b84e9ad"
    arg6 = "~r~Vehicle is not owned by anyone"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
    arg4(arg5, arg6)
    arg4 = GetPedInVehicleSeat
    arg5 = arg1
    arg6 = -1
    arg4 = arg4(arg5, arg6)
    if 0 == arg4 then
      arg4 = GetPedInVehicleSeat
      arg5 = arg1
      arg6 = 0
      arg4 = arg4(arg5, arg6)
      if 0 == arg4 then
        arg4 = NetworkGetEntityIsNetworked
        arg5 = arg1
        arg4 = arg4(arg5)
        if arg4 then
          arg4 = TriggerServerEvent
          arg5 = "90508c11e5"
          arg6 = NetworkGetNetworkIdFromEntity
          arg7 = arg1
          arg6, arg7, dataTable13, health = arg6(arg7)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90508c11e5".
          arg4(arg5, arg6, arg7, dataTable13, health)
        end
      end
    end
  end
  ::flow_label_124::
end

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg1) ===
function workValue23(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = GetSelectedPedWeapon
    arg5 = PlayerPedId
    arg5, arg6 = arg5()
    -- Beginner: result below is weaponHash.
    arg4 = arg4(arg5, arg6)
    if -1569615261 ~= arg4 then
      arg4 = TriggerServerEvent
      arg5 = "42f4c2df43"
      arg6 = arg3
      arg4(arg5, arg6)
    else
      arg4 = TriggerEvent
      arg5 = "408b84e9ad"
      arg6 = "~r~You need a weapon in your hands."
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
      arg4(arg5, arg6)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: arg1) ===
function workValue24(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = GetPedInVehicleSeat
  arg3 = arg1
  arg4 = -1
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg3 = GetPlayerByEntityID
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      return
    end
    arg4 = GetPlayerServerId
    arg5 = arg3
    -- Beginner: result below is serverId.
    arg4 = arg4(arg5)
    if arg4 > 0 then
      arg5 = TriggerServerEvent
      arg6 = "2eb52f2bce"
      arg7 = arg4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2eb52f2bce".
      arg5(arg6, arg7)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1) ===
function workValue25(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "2eb52f2bce"
    arg6 = arg3
    arg4(arg5, arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: arg1) ===
function workValue26(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "80473a9734"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "80473a9734".
    arg4(arg5, arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg1) ===
function workValue27(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13
  arg2 = tCMG
  arg2 = arg2.canAnim
  arg2 = arg2()
  if not arg2 then
    return
  end
  arg2 = GetEntityHealth
  arg3 = arg1
  -- Beginner: result below is health.
  arg2 = arg2(arg3)
  if arg2 <= 102 then
    arg2 = TriggerEvent
    arg3 = "408b84e9ad"
    arg4 = "~r~You can not search a player who is dead."
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
    arg2(arg3, arg4)
    return
  end
  arg2 = CMG
  arg2 = arg2.isPlayerInRedZone
  arg2 = arg2()
  if arg2 then
    arg2 = notify
    arg3 = "~r~You can not search players while in a red zone."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    arg2 = true
    return arg2
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.hasClientPermission
  arg4 = "police.onduty.permission"
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = CMG
    arg3 = arg3.hasClientPermission
    arg4 = "prisonguard.onduty.permission"
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = CMG
      arg3 = arg3.hasClientPermission
      arg4 = "borderforce.onduty.permission"
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = CMG
        arg3 = arg3.hasClientGroup
        arg4 = "Vigilante"
        arg3 = arg3(arg4)
        if not arg3 then
          arg3 = GetPlayerPed
          arg4 = arg2
          -- Beginner: result below is playerPed.
          arg3 = arg3(arg4)
          if nil == arg3 then
            goto flow_label_110
          end
          arg4 = IsEntityPlayingAnim
          arg5 = arg3
          arg6 = "missminuteman_1ig_2"
          arg7 = "handsup_enter"
          dataTable13 = 3
          arg4 = arg4(arg5, arg6, arg7, dataTable13)
          if not arg4 then
            arg4 = IsEntityPlayingAnim
            arg5 = arg3
            arg6 = "random@arrests"
            arg7 = "idle_2_hands_up"
            dataTable13 = 3
            arg4 = arg4(arg5, arg6, arg7, dataTable13)
            if not arg4 then
              arg4 = IsEntityPlayingAnim
              arg5 = arg3
              arg6 = "random@arrests@busted"
              arg7 = "idle_a"
              dataTable13 = 3
              arg4 = arg4(arg5, arg6, arg7, dataTable13)
              if not arg4 then
                goto flow_label_96
              end
            end
          end
          arg4 = GetPlayerServerId
          arg5 = arg2
          -- Beginner: result below is serverId.
          arg4 = arg4(arg5)
          if arg4 > 0 then
            arg5 = TriggerServerEvent
            arg6 = "f54bde726f"
            arg7 = arg4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f54bde726f".
            arg5(arg6, arg7)
            goto flow_label_110
            ::flow_label_96::
            arg4 = TriggerEvent
            arg5 = "408b84e9ad"
            arg6 = "~r~Player must have their hands up or be on their knees!"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "408b84e9ad".
            arg4(arg5, arg6)
          end
      end
    end
  end
  else
    arg3 = GetPlayerServerId
    arg4 = arg2
    -- Beginner: result below is serverId.
    arg3 = arg3(arg4)
    if arg3 > 0 then
      arg4 = TriggerServerEvent
      arg5 = "f54bde726f"
      arg6 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f54bde726f".
      arg4(arg5, arg6)
    end
  end
  ::flow_label_110::
end

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: arg1) ===
function workValue28(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "6583aad871"
    arg6 = arg3
    arg4(arg5, arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue29; parameters: arg1) ===
function workValue29(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientGroup
        arg3 = "Vigilante"
        arg2 = arg2(arg3)
        if not arg2 then
          goto flow_label_39
        end
      end
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = ExecuteCommand
    arg5 = "cuff"
    arg4(arg5)
  end
  ::flow_label_39::
end

-- === HELPER FUNCTION (decompiler name: workValue30; parameters: arg1) ===
function workValue30(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "nhs.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = GetPlayerByEntityID
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      return
    end
    arg3 = GetPlayerServerId
    arg4 = arg2
    -- Beginner: result below is serverId.
    arg3 = arg3(arg4)
    if arg3 > 0 then
      arg4 = CMG
      arg4 = arg4.startNhsDragFromRadial
      if arg4 then
        arg4 = CMG
        arg4 = arg4.startNhsDragFromRadial
        arg5 = arg3
        arg4(arg5)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue32; parameters: arg1) ===
function workValue32(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientGroup
        arg3 = "Vigilante"
        arg2 = arg2(arg3)
        if not arg2 then
          goto flow_label_40
        end
      end
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "c5274515e4"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c5274515e4".
    arg4(arg5, arg6)
  end
  ::flow_label_40::
end

-- === HELPER FUNCTION (decompiler name: workValue33; parameters: arg1) ===
function workValue33(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientGroup
        arg3 = "Vigilante"
        arg2 = arg2(arg3)
        if not arg2 then
          goto flow_label_40
        end
      end
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "c2eb9806b2"
    arg6 = arg3
    arg4(arg5, arg6)
  end
  ::flow_label_40::
end

-- === HELPER FUNCTION (decompiler name: workValue34; parameters: arg1) ===
function workValue34(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "8fd6319695"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fd6319695".
    arg4(arg5, arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue35; parameters: arg1) ===
function workValue35(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    return
  end
  arg4 = CMG
  arg4 = arg4.hasClientPermission
  arg5 = "police.onduty.permission"
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = CMG
    arg4 = arg4.hasClientPermission
    arg5 = "prisonguard.onduty.permission"
    arg4 = arg4(arg5)
    if not arg4 then
      arg4 = CMG
      arg4 = arg4.hasClientPermission
      arg5 = "borderforce.onduty.permission"
      arg4 = arg4(arg5)
      if not arg4 then
        goto flow_label_40
      end
    end
  end
  arg4 = TriggerServerEvent
  arg5 = "61172cd221"
  arg6 = arg3
  arg4(arg5, arg6)
  arg4 = TriggerServerEvent
  arg5 = "6915ac5021"
  arg6 = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6915ac5021".
  arg4(arg5, arg6)
  goto flow_label_50
  ::flow_label_40::
  arg4 = CMG
  arg4 = arg4.hasClientGroup
  arg5 = "Vigilante"
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = TriggerServerEvent
    arg5 = "6c006240e4"
    arg6 = arg3
    arg4(arg5, arg6)
  end
  ::flow_label_50::
end

-- === HELPER FUNCTION (decompiler name: workValue36; parameters: arg1) ===
function workValue36(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_28
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "227b779c06"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "227b779c06".
    arg4(arg5, arg6)
  end
  ::flow_label_28::
end

-- === HELPER FUNCTION (decompiler name: workValue37; parameters: arg1) ===
function workValue37(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    return
  end
  arg4 = CMG
  arg4 = arg4.clientGetUserIdFromSource
  arg5 = arg3
  -- Beginner: result below is userId.
  arg4 = arg4(arg5)
  if not arg4 or 0 == arg4 then
    arg5 = notify
    arg6 = "~r~Could not resolve target player."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    return
  end
  arg5 = TriggerServerEvent
  arg6 = "a12d48ef57"
  arg7 = arg4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a12d48ef57".
  arg5(arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: workValue38; parameters: arg1) ===
function workValue38(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        goto flow_label_34
      end
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "61172cd221"
    arg6 = arg3
    arg4(arg5, arg6)
  end
  ::flow_label_34::
end

-- === HELPER FUNCTION (decompiler name: workValue39; parameters: arg1) ===
function workValue39(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "borderforce.onduty.permission"
      arg2 = arg2(arg3)
      if not arg2 then
        goto flow_label_34
      end
    end
  end
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "05699b6c7f"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "05699b6c7f".
    arg4(arg5, arg6)
  end
  ::flow_label_34::
end

-- === HELPER FUNCTION (decompiler name: workValue40; parameters: arg1) ===
function workValue40(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    return
  end
  arg4 = DecorGetBool
  arg5 = arg1
  arg6 = "4ac0472477"
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg4 = TriggerServerEvent
    arg5 = "eb96303226"
    arg6 = arg3
    arg4(arg5, arg6)
  else
    arg4 = TriggerServerEvent
    arg5 = "a02d917ea8"
    arg6 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a02d917ea8".
    arg4(arg5, arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue41; parameters: arg1) ===
function workValue41(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    return
  end
  arg4 = TriggerServerEvent
  arg5 = "cdcf103ded"
  arg6 = arg3
  arg4(arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue44; parameters: arg1) ===
function workValue44(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetPlayerByEntityID
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = GetPlayerServerId
  arg4 = arg2
  -- Beginner: result below is serverId.
  arg3 = arg3(arg4)
  if arg3 <= 0 then
    return
  end
  arg4 = TriggerServerEvent
  arg5 = "a91c36f550"
  arg6 = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a91c36f550".
  arg4(arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue45; parameters: arg1) ===
function workValue45(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2
  arg2 = IsEntityAVehicle
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg2 = 0
  arg3 = 10.0
  arg4 = GetVehicleModelNumberOfSeats
  arg5 = GetEntityModel
  arg6 = arg1
  arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2 = arg5(arg6)
  arg4 = arg4(arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2)
  arg5 = -1
  arg6 = arg4 - 2
  arg7 = 1
  for dataTable13 = arg5, arg6, arg7 do
    health = GetPedInVehicleSeat
    workValue51 = arg1
    dataTable = dataTable13
    health = health(workValue51, dataTable)
    if 0 ~= health then
      workValue51 = GetPedBoneIndex
      dataTable = health
      tableHelper = 0
      workValue51 = workValue51(dataTable, tableHelper)
      if workValue51 > -1 then
        dataTable = GetWorldPositionOfEntityBone
        tableHelper = health
        dataTable2 = workValue51
        dataTable = dataTable(tableHelper, dataTable2)
        tableHelper = CMG
        tableHelper = tableHelper.getPlayerCoords
        -- Beginner: result below is playerCoords.
        tableHelper = tableHelper()
        dataTable = dataTable - tableHelper
        dataTable = #dataTable
        if arg3 > dataTable then
          arg2 = health
          arg3 = dataTable
        end
      end
    end
  end
  if 0 == arg2 then
    arg5 = notify
    arg6 = "~r~No player nearby to pull out vehicle."
    -- Beginner: Show a notification to the player.
    arg5(arg6)
    return
  end
  arg5 = NetworkGetPlayerIndexFromPed
  arg6 = arg2
  arg5 = arg5(arg6)
  if arg5 >= 0 then
    arg6 = GetPlayerServerId
    arg7 = arg5
    -- Beginner: result below is serverId.
    arg6 = arg6(arg7)
    if arg6 > 0 then
      arg7 = TriggerServerEvent
      dataTable13 = "1fccdc61f1"
      health = arg6
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fccdc61f1".
      arg7(dataTable13, health)
    end
  end
end
cmgCall8 = RegisterNUICallback
cmgCall9 = "radialClick"

-- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: arg1) ===
function cmgCall10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable
  arg2 = arg1.itemid
  arg3 = arg1.entity
  if "pickupTrappingItem" == arg2 then
    arg4 = arg1.trapperPlantId
    if arg4 then
      arg5 = type
      arg6 = arg4
      arg5 = arg5(arg6)
      if "string" == arg5 then
        arg5 = TriggerServerEvent
        arg6 = "b8b99c63a7"
        arg7 = arg4
        arg5(arg6, arg7)
      end
    end
    return
  end
  arg4 = IsPedInAnyVehicle
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = true
  arg4 = arg4(arg5, arg6)
  if arg4 then
    arg4 = flag3
    if not arg4 then
      arg4 = arg2 or arg4
      if arg2 then
        arg5 = arg2
        arg4 = arg2.sub
        arg6 = 1
        arg7 = 11
        arg4 = arg4(arg5, arg6, arg7)
        arg4 = "toggleCast_" == arg4 or "removeAllCasts" == arg2 or "medicBandage" == arg2 or "medicMorphine" == arg2
      end
      if not arg4 then
        return
      end
    end
  end
  if arg2 then
    arg5 = arg2
    arg4 = arg2.sub
    arg6 = 1
    arg7 = 11
    arg4 = arg4(arg5, arg6, arg7)
    if "toggleCast_" == arg4 then
      arg5 = arg2
      arg4 = arg2.sub
      arg6 = 12
      arg4 = arg4(arg5, arg6)
      arg5 = GetPlayerByEntityID
      arg6 = arg3
      arg5 = arg5(arg6)
      if arg5 and "" ~= arg4 then
        arg6 = GetPlayerServerId
        arg7 = arg5
        -- Beginner: result below is serverId.
        arg6 = arg6(arg7)
        if arg6 > 0 then
          arg7 = CMG
          arg7 = arg7.TriggerServerCallback
          dataTable13 = "2b2bfb838d"
          health = arg6
          workValue51 = arg4
          arg7(dataTable13, health, workValue51)
        end
      end
  end
  elseif "removeAllCasts" == arg2 then
    arg4 = GetPlayerByEntityID
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg5 = GetPlayerServerId
      arg6 = arg4
      -- Beginner: result below is serverId.
      arg5 = arg5(arg6)
      if arg5 > 0 then
        arg6 = TriggerServerEvent
        arg7 = "5c706bee2d"
        dataTable13 = arg5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c706bee2d".
        arg6(arg7, dataTable13)
      end
    end
  elseif "medicBandage" == arg2 then
    arg4 = GetPlayerByEntityID
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg5 = GetPlayerServerId
      arg6 = arg4
      -- Beginner: result below is serverId.
      arg5 = arg5(arg6)
      if arg5 > 0 then
        arg6 = CMG
        arg6 = arg6.TriggerServerCallback
        arg7 = "0685d077c4"
        dataTable13 = arg5
        arg6 = arg6(arg7, dataTable13)
        if arg6 then
          arg7 = notify
          dataTable13 = "~g~Applying bandage..."
          -- Beginner: Show a notification to the player.
          arg7(dataTable13)
        else
          arg7 = notify
          dataTable13 = "~r~Target is not bleeding."
          arg7(dataTable13)
        end
      end
    end
  elseif "medicMorphine" == arg2 then
    arg4 = GetPlayerByEntityID
    arg5 = arg3
    arg4 = arg4(arg5)
    if arg4 then
      arg5 = GetPlayerServerId
      arg6 = arg4
      -- Beginner: result below is serverId.
      arg5 = arg5(arg6)
      if arg5 > 0 then
        arg6 = CMG
        arg6 = arg6.TriggerServerCallback
        arg7 = "0711499036"
        dataTable13 = arg5
        arg6, arg7 = arg6(arg7, dataTable13)
        if arg6 then
          dataTable13 = notify
          health = "~g~Applying morphine..."
          -- Beginner: Show a notification to the player.
          dataTable13(health)
        elseif arg7 and arg7 > 0 then
          dataTable13 = notify
          health = "~r~User is in combat timer, try again in "
          workValue51 = tostring
          dataTable = arg7
          workValue51 = workValue51(dataTable)
          dataTable = " seconds."
          health = health .. workValue51 .. dataTable
          dataTable13(health)
        else
          dataTable13 = notify
          health = "~r~Could not apply morphine."
          -- Beginner: Show a notification to the player.
          dataTable13(health)
        end
      end
    end
  elseif "lock" == arg2 then
    arg4 = cmgCall6
    -- Beginner: Run a helper every game frame while this script is active.
    arg4()
  elseif "openBoot" == arg2 then
    arg4 = textValue8
    arg5 = arg3
    arg4(arg5)
  elseif "cleanCar" == arg2 then
    arg4 = eventRegistration
    arg5 = arg3
    -- Beginner: Register a client-side event handler.
    arg4(arg5)
  elseif "lockpick" == arg2 then
    arg4 = textValue9
    arg5 = arg3
    arg4(arg5)
  elseif "mechanicHookTargetVehicle" == arg2 then
    arg4 = CMG
    arg4 = arg4.tryMechanicAttachFromTargetVehicle
    arg5 = arg3
    arg4(arg5)
  elseif "detachVehicle" == arg2 then
    arg4 = CMG
    arg4 = arg4.detachTowedVehicle
    arg5 = arg3
    arg4(arg5)
  elseif "repair" == arg2 then
    arg4 = TriggerEvent
    arg5 = "a37e8d69f4"
    arg6 = "diy"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "a37e8d69f4".
    arg4(arg5, arg6)
  elseif "repairTrucking" == arg2 then
    arg4 = TriggerEvent
    arg5 = "a37e8d69f4"
    arg6 = "trucking"
    arg4(arg5, arg6)
  elseif "repairAA" == arg2 then
    arg4 = workValue18
    arg5 = arg3
    arg4(arg5)
  elseif "openHood" == arg2 then
    arg4 = workValue19
    arg5 = arg3
    arg4(arg5)
  elseif "searchvehicle" == arg2 then
    arg4 = workValue21
    arg5 = arg3
    arg4(arg5)
  elseif "impoundVehicle" == arg2 then
    arg4 = workValue22
    arg5 = arg3
    arg4(arg5)
  elseif "askDriverId" == arg2 then
    arg4 = workValue24
    arg5 = arg3
    arg4(arg5)
  elseif "ejectPassenger" == arg2 then
    arg4 = workValue45
    arg5 = arg3
    arg4(arg5)
  elseif "carjack" == arg2 then
    if arg3 and 0 ~= arg3 then
      arg4 = DoesEntityExist
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        arg4 = IsEntityAVehicle
        arg5 = arg3
        arg4 = arg4(arg5)
        if arg4 then
          arg4 = GetPedInVehicleSeat
          arg5 = arg3
          arg6 = -1
          arg4 = arg4(arg5, arg6)
          if 0 ~= arg4 then
            arg5 = IsPedAPlayer
            arg6 = arg4
            arg5 = arg5(arg6)
            if arg5 then
              arg5 = NetworkGetPlayerIndexFromPed
              arg6 = arg4
              arg5 = arg5(arg6)
              if arg5 >= 0 then
                arg6 = GetPlayerServerId
                arg7 = arg5
                -- Beginner: result below is serverId.
                arg6 = arg6(arg7)
                if arg6 > 0 then
                  arg7 = CMG
                  arg7 = arg7.startGangCarjack
                  dataTable13 = arg6
                  arg7(dataTable13)
                end
              end
            end
          end
        end
      end
    end
  elseif "askId" == arg2 then
    arg4 = workValue25
    arg5 = arg3
    arg4(arg5)
  elseif "giveCash" == arg2 then
    arg4 = workValue26
    arg5 = arg3
    arg4(arg5)
  elseif "search" == arg2 then
    arg4 = workValue27
    arg5 = arg3
    arg4(arg5)
  elseif "robPerson" == arg2 then
    arg4 = workValue23
    arg5 = arg3
    arg4(arg5)
  elseif "revive" == arg2 then
    arg4 = workValue28
    arg5 = arg3
    arg4(arg5)
  elseif "handcuff" == arg2 then
    arg4 = workValue29
    arg5 = arg3
    arg4(arg5)
  elseif "nhsDrag" == arg2 then
    arg4 = workValue30
    arg5 = arg3
    arg4(arg5)
  elseif "drag" == arg2 then
    arg4 = workValue32
    arg5 = arg3
    arg4(arg5)
  elseif "putincar" == arg2 then
    arg4 = workValue33
    arg5 = arg3
    arg4(arg5)
  elseif "gunshottest" == arg2 then
    arg4 = workValue34
    arg5 = arg3
    arg4(arg5)
  elseif "jail" == arg2 then
    arg4 = workValue35
    arg5 = arg3
    arg4(arg5)
  elseif "quickFine" == arg2 then
    arg4 = CMG
    arg4 = arg4.openQuickChargesMenu
    arg5 = arg3
    arg6 = "fine"
    arg4(arg5, arg6)
  elseif "quickJail" == arg2 then
    arg4 = CMG
    arg4 = arg4.openQuickChargesMenu
    arg5 = arg3
    arg6 = "jail"
    arg4(arg5, arg6)
  elseif "pardonBounty" == arg2 then
    arg4 = workValue37
    arg5 = arg3
    arg4(arg5)
  elseif "requesttransport" == arg2 then
    arg4 = workValue36
    arg5 = arg3
    arg4(arg5)
  elseif "seizeweapons" == arg2 then
    arg4 = workValue38
    arg5 = arg3
    arg4(arg5)
  elseif "seizeillegals" == arg2 then
    arg4 = workValue39
    arg5 = arg3
    arg4(arg5)
  elseif "removeHeadbag" == arg2 then
    arg4 = workValue40
    arg5 = arg3
    arg4(arg5)
  elseif "leaveRadio" == arg2 then
    arg4 = TriggerEvent
    arg5 = "24a888d2b3"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "24a888d2b3".
    arg4(arg5)
  elseif "toggleMute" == arg2 then
    arg4 = ExecuteCommand
    arg5 = "toggleradiomute"
    arg4(arg5)
  elseif "radioConfig" == arg2 then
    arg4 = TriggerEvent
    arg5 = "c9189814b6"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c9189814b6".
    arg4(arg5)
  else
    arg4 = string
    arg4 = arg4.match
    arg5 = arg2
    arg6 = "radioChannel"
    arg4 = arg4(arg5, arg6)
    if arg4 then
      arg4 = string
      arg4 = arg4.sub
      arg5 = arg2
      arg6 = 13
      arg7 = #arg2
      arg4 = arg4(arg5, arg6, arg7)
      arg5 = TriggerEvent
      arg6 = "c96f59b76d"
      arg7 = tonumber
      dataTable13 = arg4
      arg7, dataTable13, health, workValue51, dataTable = arg7(dataTable13)
      arg5(arg6, arg7, dataTable13, health, workValue51, dataTable)
    elseif "segregation" == arg2 then
      arg4 = workValue44
      arg5 = arg3
      arg4(arg5)
    elseif "transferChips" == arg2 then
      arg4 = workValue41
      arg5 = arg3
      arg4(arg5)
    elseif "spawnStretcher" == arg2 then
      arg4 = type
      arg5 = arg3
      arg4 = arg4(arg5)
      arg4 = arg3 or arg4
      if "number" ~= arg4 or 0 == arg3 or not arg3 then
        arg4 = nil
      end
      if arg4 then
        arg5 = DoesEntityExist
        arg6 = arg4
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = workValue42
          arg6 = arg4
          arg7 = "Health Service Vehicles"
          arg5 = arg5(arg6, arg7)
          if arg5 then
            arg5 = ExecuteCommand
            arg6 = "stretcher"
            arg5(arg6)
        end
        else
          arg5 = notify
          arg6 = "~r~You can only spawn stretchers from NHS vehicles."
          -- Beginner: Show a notification to the player.
          arg5(arg6)
        end
      else
        arg5 = notify
        arg6 = "~r~You can only spawn stretchers from NHS vehicles."
        arg5(arg6)
      end
    elseif "removeStretcher" == arg2 then
      arg4 = type
      arg5 = arg3
      arg4 = arg4(arg5)
      arg4 = arg3 or arg4
      if "number" ~= arg4 or 0 == arg3 or not arg3 then
        arg4 = nil
      end
      if arg4 then
        arg5 = DoesEntityExist
        arg6 = arg4
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = GetEntityModel
          arg6 = arg4
          -- Beginner: result below is modelHash.
          arg5 = arg5(arg6)
          if -665859588 == arg5 then
            arg5 = TriggerServerEvent
            arg6 = "2bfff324f7"
            arg7 = CMG
            arg7 = arg7.getNetId
            dataTable13 = arg4
            health = "Stretchers"
            arg7, dataTable13, health, workValue51, dataTable = arg7(dataTable13, health)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2bfff324f7".
            arg5(arg6, arg7, dataTable13, health, workValue51, dataTable)
        end
        else
          arg5 = ExecuteCommand
          arg6 = "removestretcher"
          arg5(arg6)
        end
      else
        arg5 = ExecuteCommand
        arg6 = "removestretcher"
        arg5(arg6)
      end
    elseif "toggleCrutches" == arg2 then
      arg4 = GetPlayerByEntityID
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        arg5 = GetPlayerServerId
        arg6 = arg4
        -- Beginner: result below is serverId.
        arg5 = arg5(arg6)
        if arg5 > 0 then
          arg6 = CMG
          arg6 = arg6.TriggerServerCallback
          arg7 = "1e07024b66"
          dataTable13 = arg5
          arg6(arg7, dataTable13)
        end
      end
    elseif "giveWheelchair" == arg2 then
      arg4 = GetPlayerByEntityID
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        arg5 = GetPlayerServerId
        arg6 = arg4
        -- Beginner: result below is serverId.
        arg5 = arg5(arg6)
        if arg5 > 0 then
          arg6 = notify
          arg7 = "~g~Providing wheelchair..."
          -- Beginner: Show a notification to the player.
          arg6(arg7)
          arg6 = TriggerServerEvent
          arg7 = "05e4b09a9e"
          dataTable13 = arg5
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "05e4b09a9e".
          arg6(arg7, dataTable13)
        else
          arg6 = notify
          arg7 = "~r~Could not get target player."
          -- Beginner: Show a notification to the player.
          arg6(arg7)
        end
      else
        arg5 = notify
        arg6 = "~r~No valid target player."
        arg5(arg6)
      end
    elseif "removeWheelchair" == arg2 then
      arg4 = type
      arg5 = arg3
      arg4 = arg4(arg5)
      arg4 = arg3 or arg4
      if "number" ~= arg4 or 0 == arg3 or not arg3 then
        arg4 = nil
      end
      if arg4 then
        arg5 = DoesEntityExist
        arg6 = arg4
        arg5 = arg5(arg6)
        if arg5 then
          arg5 = CMG
          arg5 = arg5.isWheelchairVehicle
          if arg5 then
            arg5 = CMG
            arg5 = arg5.isWheelchairVehicle
            arg6 = arg4
            arg5 = arg5(arg6)
            if arg5 then
              arg5 = TriggerServerEvent
              arg6 = "cc35a3d2bc"
              arg7 = NetworkGetNetworkIdFromEntity
              dataTable13 = arg4
              arg7, dataTable13, health, workValue51, dataTable = arg7(dataTable13)
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cc35a3d2bc".
              arg5(arg6, arg7, dataTable13, health, workValue51, dataTable)
            end
          end
        end
      end
    elseif "nhsGiveDonut" == arg2 then
      arg4 = GetPlayerByEntityID
      arg5 = arg3
      arg4 = arg4(arg5)
      if arg4 then
        arg5 = GetPlayerServerId
        arg6 = arg4
        -- Beginner: result below is serverId.
        arg5 = arg5(arg6)
        if arg5 > 0 then
          arg6 = TriggerServerEvent
          arg7 = "9353a3745a"
          dataTable13 = arg5
          arg6(arg7, dataTable13)
        end
      end
    end
  end
end
cmgCall8(cmgCall9, cmgCall10)

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg1) ===
function cmgCall8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health
  arg2 = ipairs
  arg3 = GetActivePlayers
  arg3, arg4, arg5, arg6, arg7, dataTable13, health = arg3()
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, dataTable13, health)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    dataTable13 = GetPlayerPed
    health = arg7
    -- Beginner: result below is playerPed.
    dataTable13 = dataTable13(health)
    if arg1 == dataTable13 then
      return arg7
    end
  end
  arg2 = nil
  return arg2
end
GetPlayerByEntityID = cmgCall8
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: none) ===
function cmgCall9()
  local arg1, arg2
  arg1 = workValue4
  arg2 = workValue5
  return arg1, arg2
end
cmgCall8.getSelectedEntity = cmgCall9
cmgCall8 = AddEventHandler
cmgCall9 = "CMGUI:showRadioWheel"
-- Beginner: this function runs when client event "CMGUI:showRadioWheel" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: arg1) ===
function cmgCall10(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health
  arg2 = flag3
  if arg2 then
    return
  end
  arg2 = true
  flag = arg2
  arg2 = true
  flag3 = arg2
  arg2 = SetNuiFocusKeepInput
  arg3 = true
  arg2(arg3)
  arg2 = SetNuiFocus
  arg3 = true
  arg4 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = SendNUIMessage
  arg3 = {}
  arg3.openRadialMenu = true
  arg3.type = "radios"
  arg3.wheelData = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg2(arg3)
  while true do
    arg2 = flag3
    if not arg2 then
      break
    end
    arg2 = 0
    arg3 = 6
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      arg6 = DisableControlAction
      arg7 = 0
      dataTable13 = arg5
      health = true
      arg6(arg7, dataTable13, health)
    end
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 24
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 25
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 69
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 79
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 92
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 114
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 140
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 141
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 142
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 257
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 263
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 264
    arg5 = true
    arg2(arg3, arg4, arg5)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMGUI:showRadioWheel".
cmgCall8(cmgCall9, cmgCall10)

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: none) ===
function cmgCall8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = 0
  arg4 = 3.0
  arg5 = pairs
  arg6 = GetGamePool
  arg7 = "CObject"
  arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5 = arg6(arg7)
  arg5, arg6, arg7, dataTable13 = arg5(arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5)
  for health, workValue51 in arg5, arg6, arg7, dataTable13 do
    dataTable = GetEntityModel
    tableHelper = workValue51
    -- Beginner: result below is modelHash.
    dataTable = dataTable(tableHelper)
    tableHelper = CMG
    tableHelper = tableHelper.isLootbagModel
    dataTable2 = dataTable
    tableHelper = tableHelper(dataTable2)
    if tableHelper or -1422265815 == dataTable or 772559902 == dataTable then
      tableHelper = GetEntityCoords
      dataTable2 = workValue51
      dataTable3 = true
      -- Beginner: result below is entityCoords.
      tableHelper = tableHelper(dataTable2, dataTable3)
      tableHelper = tableHelper - arg2
      tableHelper = #tableHelper
      if arg4 > tableHelper then
        dataTable2 = HasEntityClearLosToEntity
        dataTable3 = arg1
        dataTable4 = workValue51
        dataTable5 = 17
        dataTable2 = dataTable2(dataTable3, dataTable4, dataTable5)
        if dataTable2 then
          arg3 = workValue51
          arg4 = tableHelper
        end
      end
    end
  end
  return arg3
end
cmgCall9 = RegisterCommand
cmgCall10 = "lootclosestbag"
-- Beginner: this function is the command handler for "lootclosestbag".

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.isDrawingInventoryUI
  arg1 = arg1()
  if arg1 then
    arg1 = TriggerEvent
    arg2 = "2a70dddd80"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2a70dddd80".
    arg1(arg2)
    return
  end
  arg1 = workValue11
  arg1 = arg1()
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    if 0 == arg1 then
      arg1 = GetRenderingCam
      arg1 = arg1()
      if -1 == arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "nhs.onduty.permission"
        arg1 = arg1(arg2)
        if not arg1 then
          goto flow_label_30
        end
      end
    end
  end
  return
  ::flow_label_30::
  arg1 = cmgCall8
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = GetEntityModel
    arg3 = arg1
    -- Beginner: result below is modelHash.
    arg2 = arg2(arg3)
    arg3 = DecorGetInt
    arg4 = arg1
    arg5 = "5f7af1c5ce"
    arg3 = arg3(arg4, arg5)
    arg4 = CMG
    arg4 = arg4.isLootbagModel
    arg5 = arg2
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DecorExistOn
      arg5 = arg1
      arg6 = "b1457c1a26"
      arg4 = arg4(arg5, arg6)
      if arg4 then
        arg4 = DecorGetBool
        arg5 = arg1
        arg6 = "b1457c1a26"
        arg4 = arg4(arg5, arg6)
      end
      if not arg4 then
        arg5 = TriggerEvent
        arg6 = "56e6172373"
        arg7 = false
        arg5(arg6, arg7)
      end
      arg5 = textValue5

      -- === HELPER FUNCTION: arg6() ===
      function arg6()
        local cmgCall2, textValue, numberValue5
        cmgCall2 = TriggerServerEvent
        textValue = "bdaf15af25"
        numberValue5 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdaf15af25".
        cmgCall2(textValue, numberValue5)
      end
      arg7 = arg1
      arg5(arg6, arg7)
    elseif -1422265815 == arg2 then
      arg4 = TriggerEvent
      arg5 = "56e6172373"
      arg6 = false
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
      arg4(arg5, arg6)
      arg4 = textValue5

      -- === HELPER FUNCTION: arg5() ===
      function arg5()
        local cmgCall2, textValue, numberValue5
        cmgCall2 = TriggerServerEvent
        textValue = "5891aba85f"
        numberValue5 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
        cmgCall2(textValue, numberValue5)
      end
      arg6 = arg1
      arg4(arg5, arg6)
    elseif 772559902 == arg2 then
      arg4 = textValue5

      -- === HELPER FUNCTION: arg5() ===
      function arg5()
        local cmgCall2, textValue, numberValue5
        cmgCall2 = TriggerServerEvent
        textValue = "5891aba85f"
        numberValue5 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5891aba85f".
        cmgCall2(textValue, numberValue5)
      end
      arg6 = arg1
      arg4(arg5, arg6)
    end
  end
end
flag8 = false
-- Beginner: Register a chat/console command. Event/command: "lootclosestbag".
cmgCall9(cmgCall10, textValue11, flag8)
cmgCall9 = RegisterKeyMapping
cmgCall10 = "lootclosestbag"
textValue11 = "Loot Closest Bag"
flag8 = "KEYBOARD"
textValue12 = "CAPITAL"
-- Beginner: Bind a command to a keyboard/controller key.
cmgCall9(cmgCall10, textValue11, flag8, textValue12)
cmgCall9 = Citizen
cmgCall9 = cmgCall9.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: none) ===
function cmgCall10()
  local arg1, arg2, arg3
  while true do
    arg1 = false
    arg2 = CMG
    arg2 = arg2.isNewPlayer
    arg2 = arg2()
    if arg2 then
      arg2 = cmgCall8
      arg2 = arg2()
      if 0 ~= arg2 then
        arg2 = drawNativeNotification
        arg3 = "Press ~INPUT_EEE09CC7~ to loot the lootbag."
        -- Beginner: Show a GTA-style notification/help prompt.
        arg2(arg3)
        arg1 = true
      end
    end
    arg2 = Wait
    if arg1 then
      arg3 = 0
      if arg3 then
        goto flow_label_22
      end
    end
    arg3 = 2000
    ::flow_label_22::
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall9(cmgCall10)
cmgCall9 = false
cmgCall10 = RegisterNetEvent
textValue11 = "c09ac80094"
-- Beginner: this function handles network event "c09ac80094".

-- === HELPER FUNCTION (decompiler name: flag8; parameters: none) ===
function flag8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8
  arg1 = tCMG
  arg1 = arg1.canAnim
  arg1 = arg1()
  if arg1 then
    arg1 = cmgCall9
    if not arg1 then
      arg1 = true
      cmgCall9 = arg1
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = CMG
      arg2 = arg2.loadModel
      arg3 = 1047179740
      -- Beginner: Request/load a GTA model before spawning or applying it.
      arg2(arg3)
      arg2 = CMG
      arg2 = arg2.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg2 = arg2()
      arg3 = CMG
      arg3 = arg3.requestEntitySpawn
      arg4 = "hand_over_card_object"
      arg3(arg4)
      arg3 = CreateObject
      arg4 = 1047179740
      arg5 = arg2.x
      arg6 = arg2.y
      arg7 = arg2.z
      dataTable13 = true
      health = false
      workValue51 = false
      -- Beginner: result below is objectEntity.
      arg3 = arg3(arg4, arg5, arg6, arg7, dataTable13, health, workValue51)
      arg4 = AttachEntityToEntity
      arg5 = arg3
      arg6 = arg1
      arg7 = GetPedBoneIndex
      dataTable13 = arg1
      health = 57005
      arg7 = arg7(dataTable13, health)
      dataTable13 = 0.14
      health = 0.04
      workValue51 = -0.02
      dataTable = 208.0
      tableHelper = 6.0
      dataTable2 = 2.0
      dataTable3 = false
      dataTable4 = false
      dataTable5 = false
      dataTable6 = true
      dataTable7 = 2
      dataTable8 = true
      -- Beginner: Attach one entity to another entity.
      arg4(arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable8)
      arg4 = SetModelAsNoLongerNeeded
      arg5 = 1047179740
      arg4(arg5)
      arg4 = CMG
      arg4 = arg4.loadAnimDict
      arg5 = "mp_common"
      -- Beginner: Load a GTA animation dictionary before using it.
      arg4(arg5)
      arg4 = TaskPlayAnim
      arg5 = arg1
      arg6 = "mp_common"
      arg7 = "givetake1_a"
      dataTable13 = 8.0
      health = 8.0
      workValue51 = -1
      dataTable = 1
      tableHelper = 0
      dataTable2 = false
      dataTable3 = false
      dataTable4 = false
      -- Beginner: Play an animation on a ped.
      arg4(arg5, arg6, arg7, dataTable13, health, workValue51, dataTable, tableHelper, dataTable2, dataTable3, dataTable4)
      arg4 = RemoveAnimDict
      arg5 = "mp_common"
      arg4(arg5)
      arg4 = Citizen
      arg4 = arg4.Wait
      arg5 = 2000
      arg4(arg5)
      arg4 = DeleteEntity
      arg5 = arg3
      -- Beginner: Delete a GTA entity.
      arg4(arg5)
      arg4 = StopAnimTask
      arg5 = arg1
      arg6 = "mp_common"
      arg7 = "givetake1_a"
      dataTable13 = 1.0
      arg4(arg5, arg6, arg7, dataTable13)
      arg4 = false
      cmgCall9 = arg4
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c09ac80094".
cmgCall10(textValue11, flag8)
cmgCall10 = CMG

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: arg1, arg2) ===
function textValue11(arg1, arg2)
  local arg3, arg4, arg5
  if arg1 and arg2 then
    arg3 = #arg2
    if 0 ~= arg3 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg3 = true
  flag = arg3
  arg3 = SetNuiFocus
  arg4 = true
  arg5 = true
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg3(arg4, arg5)
  arg3 = SendNUIMessage
  arg4 = {}
  arg4.openRadialMenu = true
  arg4.type = "trapperPickup"
  arg4.trapperPlantId = arg1
  arg4.menuItems = arg2
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg3(arg4)
end
cmgCall10.openTrapperPickupRadial = textValue11
cmgCall10 = CMG

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2
  arg1 = flag3
  return arg1
end
cmgCall10.isOnRadioMenu = textValue11
cmgCall10 = CMG

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2
  arg1 = GetFrameCount
  arg1 = arg1()
  numberValue4 = arg1
end
cmgCall10.setIgnoreRadialInputThisFrame = textValue11
