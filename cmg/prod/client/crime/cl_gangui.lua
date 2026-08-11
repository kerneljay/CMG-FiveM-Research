--[[
    LEVEL 1 BEGINNER GUIDE — Gangui
    ====================================

    File: cmg/prod/client/crime/cl_gangui.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Gangui feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 108
      * Background threads: 0
      * Always-running loops: 0
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
local cmgCall, cmgCall4, textValue8, workValue8, workValue9, workValue11, workValue13, workValue15, workValue17, workValue19, workValue, workValue3, workValue4, cmgCall2, workValue5, eventRegistration, textValue2, cmgCall3, textValue3, textValue4, textValue6, textValue7, workValue7
cmgCall = CMG
cmgCall.gangUseNui = true
cmgCall = CMG
cmgCall.gangMembershipTiles = nil
cmgCall = 0
cmgCall4 = CMG
cmgCall4 = cmgCall4.loadModule
textValue8 = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgCall4 = cmgCall4(textValue8)

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20
  arg1 = CMG
  arg1 = arg1.gangPinnedPlayers
  if arg1 then
    arg1 = CMG
    arg1 = arg1.gangPinnedPlayers
    return arg1
  end
  arg1 = GetResourceKvpString
  arg2 = "cmg_gang_pinned"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = "{}"
  end
  arg2 = json
  arg2 = arg2.decode
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = {}
  end
  arg3 = {}
  arg4 = pairs
  arg5 = arg2
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for workValue16 in arg4, arg5, arg6, arg7 do
    dataTable6 = tonumber
    workValue20 = workValue16
    dataTable6 = dataTable6(workValue20)
    arg3[dataTable6] = true
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = textValue8
  arg2 = arg2()
  arg3 = {}
  arg4 = arg1.members
  if arg4 then
    arg4 = pairs
    arg5 = arg1.members
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for workValue16, dataTable6 in arg4, arg5, arg6, arg7 do
      workValue20 = tonumber
      workValue2 = workValue16
      workValue20 = workValue20(workValue2)
      if not workValue20 then
        workValue20 = workValue16
      end
      workValue2 = #arg3
      workValue2 = workValue2 + 1
      dataTable = {}
      dataTable.user_id = workValue20
      textValue = dataTable6.name
      if not textValue then
        textValue = "Unknown"
      end
      dataTable.name = textValue
      textValue = dataTable6.lastLogin
      if not textValue then
        textValue = "Offline"
      end
      dataTable.lastLogin = textValue
      textValue = dataTable6.permissions
      if not textValue then
        textValue = {}
      end
      dataTable.permissions = textValue
      dataTable.isGuest = false
      textValue = arg2[workValue20]
      textValue = true == textValue
      dataTable.isPinned = textValue
      textValue = dataTable6.gangRank
      dataTable.gangRank = textValue
      arg3[workValue2] = dataTable
    end
  end
  arg4 = arg1.guests
  if arg4 then
    arg4 = pairs
    arg5 = arg1.guests
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for workValue16, dataTable6 in arg4, arg5, arg6, arg7 do
      workValue20 = tonumber
      workValue2 = workValue16
      workValue20 = workValue20(workValue2)
      if not workValue20 then
        workValue20 = workValue16
      end
      workValue2 = #arg3
      workValue2 = workValue2 + 1
      dataTable = {}
      dataTable.user_id = workValue20
      textValue = dataTable6.name
      if not textValue then
        textValue = "Unknown"
      end
      dataTable.name = textValue
      dataTable.lastLogin = "Offline"
      textValue = dataTable6.permissions
      if not textValue then
        textValue = {}
      end
      dataTable.permissions = textValue
      dataTable.isGuest = true
      textValue = arg2[workValue20]
      textValue = true == textValue
      dataTable.isPinned = textValue
      textValue = dataTable6.gangRank
      dataTable.gangRank = textValue
      arg3[workValue2] = dataTable
    end
  end
  arg4 = cmgCall4
  if arg4 then
    arg4 = cmgCall4.permissions
    if arg4 then
      arg4 = cmgCall4.permissions
      arg4 = #arg4
      if arg4 then
        goto flow_label_115
      end
    end
  end
  arg4 = 0
  ::flow_label_115::

  -- === HELPER FUNCTION: arg5(arg12) ===
  function arg5(arg12)
    local arg22, iterator, dataTable4, workValue10, workValue12, workValue14, dataTable5, workValue18
    arg22 = arg12.isGuest
    if arg22 then
      arg22 = -1
      return arg22
    end
    arg22 = 0
    iterator = pairs
    dataTable4 = arg12.permissions
    if not dataTable4 then
      dataTable4 = {}
    end
    iterator, dataTable4, workValue10, workValue12 = iterator(dataTable4)
    for workValue14, dataTable5 in iterator, dataTable4, workValue10, workValue12 do
      if dataTable5 then
        arg22 = arg22 + 1
      end
    end
    iterator = arg4
    if iterator > 0 then
      iterator = arg4
      iterator = arg22 / iterator
      if iterator then
        goto flow_label_31
      end
    end
    iterator = 0
    ::flow_label_31::
    return iterator
  end
  arg6 = table
  arg6 = arg6.sort
  arg7 = arg3

  -- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg12, arg22) ===
  function workValue16(arg12, arg22)
    local iterator, dataTable4, workValue10, workValue12
    iterator = arg5
    dataTable4 = arg12
    iterator = iterator(dataTable4)
    dataTable4 = arg5
    workValue10 = arg22
    dataTable4 = dataTable4(workValue10)
    if iterator ~= dataTable4 then
      workValue10 = iterator > dataTable4
      return workValue10
    end
    workValue10 = arg12.user_id
    workValue12 = arg22.user_id
    workValue10 = workValue10 < workValue12
    return workValue10
  end
  arg6(arg7, workValue16)
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20
  arg1 = cmgCall4
  if arg1 then
    arg1 = cmgCall4.permissions
    if arg1 then
      goto flow_label_10
    end
  end
  arg1 = {}
  return arg1
  ::flow_label_10::
  arg1 = {}
  arg2 = ipairs
  arg3 = cmgCall4.permissions
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    workValue16 = #arg1
    workValue16 = workValue16 + 1
    dataTable6 = {}
    workValue20 = arg7.id
    dataTable6.id = workValue20
    workValue20 = arg7.name
    if not workValue20 then
      workValue20 = arg7.id
    end
    dataTable6.name = workValue20
    workValue20 = arg7.description
    if not workValue20 then
      workValue20 = ""
    end
    dataTable6.description = workValue20
    arg1[workValue16] = dataTable6
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = CMG
  arg2 = arg2.gangCachedData
  if arg2 then
    arg3 = arg2.members
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = false
  return arg3
  ::flow_label_10::
  arg3 = CMG
  arg3 = arg3.getClientUserId
  -- Beginner: result below is userId.
  arg3 = arg3()
  arg4 = arg2.members
  arg4 = arg4[arg3]
  if not arg4 then
    arg4 = arg2.members
    arg5 = tostring
    arg6 = arg3
    arg5 = arg5(arg6)
    arg4 = arg4[arg5]
  end
  if arg4 then
    arg5 = arg4.permissions
    if arg5 then
      goto flow_label_29
    end
  end
  arg5 = false
  return arg5
  ::flow_label_29::
  arg5 = arg4.permissions
  arg5 = arg5[arg1]
  arg5 = arg4.permissions
  arg5 = arg5.leader
  arg5 = not arg5
  arg5 = arg5 or arg5
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.gangRecognisedGangs
  if arg2 then
    arg2 = CMG
    arg2 = arg2.gangRecognisedGangs
    arg3 = arg1.id
    arg2 = arg2[arg3]
    if arg2 then
      goto flow_label_18
    end
  end
  arg2 = nil
  ::flow_label_18::
  arg3 = {}
  arg4 = cmgCall4
  if arg4 then
    arg4 = cmgCall4.colourLookup
    if arg4 then
      arg4 = pairs
      arg5 = cmgCall4.colourLookup
      arg4, arg5, arg6, arg7 = arg4(arg5)
      for workValue16 in arg4, arg5, arg6, arg7 do
        dataTable6 = #arg3
        dataTable6 = dataTable6 + 1
        arg3[dataTable6] = workValue16
      end
      arg4 = table
      arg4 = arg4.sort
      arg5 = arg3
      arg4(arg5)
    end
  end
  arg4 = nil
  arg5 = CMG
  arg5 = arg5.getClientUserId
  -- Beginner: result below is userId.
  arg5 = arg5()
  arg6 = arg1.members
  if arg6 then
    arg6 = arg1.members
    arg6 = arg6[arg5]
    if not arg6 then
      arg6 = arg1.members
      arg7 = tostring
      workValue16 = arg5
      arg7 = arg7(workValue16)
      arg6 = arg6[arg7]
    end
    if arg6 then
      arg7 = type
      workValue16 = arg6.colour
      arg7 = arg7(workValue16)
      if "string" == arg7 then
        arg7 = cmgCall4
        if arg7 then
          arg7 = cmgCall4.colourLookup
          if arg7 then
            arg7 = cmgCall4.colourLookup
            workValue16 = arg6.colour
            arg7 = arg7[workValue16]
            if arg7 then
              arg4 = arg6.colour
            end
          end
        end
      end
    end
  end
  if not arg4 then
    arg6 = GetResourceKvpString
    arg7 = "cmg_gang_colour"
    arg6 = arg6(arg7)
    arg7 = type
    workValue16 = arg6
    arg7 = arg7(workValue16)
    if "string" == arg7 then
      arg7 = cmgCall4
      if arg7 then
        arg7 = cmgCall4.colourLookup
        if arg7 then
          arg7 = cmgCall4.colourLookup
          arg7 = arg7[arg6]
          if arg7 then
            arg4 = arg6
          end
        end
      end
    end
  end
  if not arg4 then
    arg4 = "Red"
  end
  arg6 = CMG
  arg6 = arg6.gangClientSettings
  if not arg6 then
    arg6 = {}
  end
  arg7 = {}
  workValue16 = arg1.isAdvanced
  workValue16 = true == workValue16
  arg7.isAdvanced = workValue16
  workValue16 = nil ~= arg2
  arg7.isRecognised = workValue16
  workValue16 = workValue11
  dataTable6 = "leader"
  workValue16 = workValue16(dataTable6)
  arg7.isLeader = workValue16
  workValue16 = workValue11
  dataTable6 = "security"
  workValue16 = workValue16(dataTable6)
  arg7.hasSecurity = workValue16
  workValue16 = arg1.maxWithdraw
  if not workValue16 then
    workValue16 = 0
  end
  arg7.maxWithdraw = workValue16
  workValue16 = arg1.limitWithdrawDeposit
  workValue16 = true == workValue16
  arg7.limitWithdrawDeposit = workValue16
  if arg2 then
    workValue16 = arg2.tagName
    if workValue16 then
      goto flow_label_147
    end
  end
  workValue16 = arg1.tagName
  if not workValue16 then
    workValue16 = ""
  end
  ::flow_label_147::
  arg7.tagName = workValue16
  if arg2 then
    workValue16 = arg2.turfColour
    if workValue16 then
      goto flow_label_154
    end
  end
  workValue16 = "Red"
  ::flow_label_154::
  arg7.turfColour = workValue16
  arg7.availableColours = arg3
  workValue16 = arg6.blips
  workValue16 = true == workValue16
  arg7.blips = workValue16
  workValue16 = arg6.pings
  workValue16 = true == workValue16
  arg7.pings = workValue16
  workValue16 = arg6.names
  workValue16 = true == workValue16
  arg7.names = workValue16
  arg7.personalBlipColour = arg4
  return arg7
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue
  arg1 = {}
  arg2 = CMG
  arg2 = arg2.gangCachedData
  if arg2 then
    arg3 = ipairs
    arg4 = CMG
    arg4 = arg4.getDrugTurfsUiPayload
    arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue = arg4()
    arg3, arg4, arg5, arg6 = arg3(arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue)
    for arg7, workValue16 in arg3, arg4, arg5, arg6 do
      dataTable6 = #arg1
      dataTable6 = dataTable6 + 1
      arg1[dataTable6] = workValue16
    end
  end
  if not arg2 then
    return arg1
  end
  arg3 = CMG
  arg3 = arg3.gangCapturedTurfs
  if not arg3 then
    arg3 = {}
  end
  arg4 = CMG
  arg4 = arg4.gangRecognisedGangs
  if not arg4 then
    arg4 = {}
  end
  arg5 = cmgCall4
  if arg5 then
    arg5 = cmgCall4.turfs
    if arg5 then
      goto flow_label_42
    end
  end
  return arg1
  ::flow_label_42::
  arg5 = arg2.id
  arg5 = arg4[arg5]
  if not arg5 then
    return arg1
  end
  arg6 = ipairs
  arg7 = cmgCall4.turfs
  arg6, arg7, workValue16, dataTable6 = arg6(arg7)
  for workValue20, workValue2 in arg6, arg7, workValue16, dataTable6 do
    dataTable = workValue2.name
    dataTable = arg3[dataTable]
    textValue = ""
    dataTable2 = false
    if dataTable then
      workValue6 = dataTable.ownedByGangId
      if workValue6 then
        workValue6 = dataTable.ownedByGangId
        workValue6 = arg4[workValue6]
        if workValue6 then
          workValue6 = dataTable.ownedByGangId
          workValue6 = arg4[workValue6]
          workValue6 = workValue6.name
          textValue = workValue6 or textValue
          if not workValue6 then
            textValue = ""
          end
          workValue6 = dataTable.ownedByGangId
          stringHelper = arg2.id
          dataTable2 = workValue6 == stringHelper
        end
      end
      workValue6 = dataTable.topGangName
      if workValue6 then
        workValue6 = dataTable.topGangName
        if "" ~= workValue6 then
          textValue = dataTable.topGangName
        end
      end
    end
    workValue6 = #arg1
    workValue6 = workValue6 + 1
    stringHelper = {}
    stringHelper.turfType = "street"
    numberValue = workValue2.name
    stringHelper.name = numberValue
    stringHelper.ownedByGangName = textValue
    stringHelper.ownedByUs = dataTable2
    if dataTable then
      numberValue = dataTable.ourStreetCred
      if numberValue then
        goto flow_label_99
      end
    end
    numberValue = 0
    ::flow_label_99::
    stringHelper.ourStreetCred = numberValue
    if dataTable then
      numberValue = dataTable.topGangStreetCred
      if numberValue then
        goto flow_label_106
      end
    end
    numberValue = 0
    ::flow_label_106::
    stringHelper.topGangStreetCred = numberValue
    if dataTable then
      numberValue = dataTable.topGangName
      if numberValue then
        goto flow_label_113
      end
    end
    numberValue = ""
    ::flow_label_113::
    stringHelper.topGangName = numberValue
    arg1[workValue6] = stringHelper
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = {}
  arg3 = arg1.isAdvanced
  if arg3 then
    arg3 = #arg2
    arg3 = arg3 + 1
    arg4 = {}
    arg4.id = 0
    arg5 = string
    arg5 = arg5.format
    arg6 = "%s (Default)"
    arg7 = arg1.name
    arg5 = arg5(arg6, arg7)
    arg4.name = arg5
    arg2[arg3] = arg4
  end
  arg3 = arg1.additionalRadios
  if arg3 then
    arg3 = ipairs
    arg4 = arg1.additionalRadios
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7, workValue16 in arg3, arg4, arg5, arg6 do
      dataTable6 = #arg2
      dataTable6 = dataTable6 + 1
      workValue20 = {}
      workValue2 = workValue16.id
      workValue20.id = workValue2
      workValue2 = workValue16.name
      workValue20.name = workValue2
      arg2[dataTable6] = workValue20
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.gangRecognisedGangs
  if not arg2 then
    arg2 = {}
  end
  arg3 = arg1.id
  arg3 = arg2[arg3]
  if not arg3 then
    arg4 = {}
    return arg4
  end
  arg4 = {}
  arg5 = pairs
  arg6 = arg2
  arg5, arg6, arg7, workValue16 = arg5(arg6)
  for dataTable6, workValue20 in arg5, arg6, arg7, workValue16 do
    workValue2 = arg1.id
    if dataTable6 ~= workValue2 then
      workValue2 = arg3.relationships
      if workValue2 then
        workValue2 = arg3.relationships
        workValue2 = workValue2[dataTable6]
        if workValue2 then
          goto flow_label_38
        end
      end
      workValue2 = "Neutral"
      ::flow_label_38::
      dataTable = workValue20.relationships
      if dataTable then
        dataTable = workValue20.relationships
        textValue = arg1.id
        dataTable = dataTable[textValue]
        if dataTable then
          goto flow_label_47
        end
      end
      dataTable = "Neutral"
      ::flow_label_47::
      textValue = #arg4
      textValue = textValue + 1
      dataTable2 = {}
      dataTable2.gangId = dataTable6
      workValue6 = workValue20.name
      if not workValue6 then
        workValue6 = "Gang "
        stringHelper = tostring
        numberValue = dataTable6
        stringHelper = stringHelper(numberValue)
        workValue6 = workValue6 .. stringHelper
      end
      dataTable2.gangName = workValue6
      dataTable2.ourRelationship = workValue2
      dataTable2.theirRelationship = dataTable
      arg4[textValue] = dataTable2
    end
  end
  arg5 = table
  arg5 = arg5.sort
  arg6 = arg4

  -- === HELPER FUNCTION: arg7(arg12, arg22) ===
  function arg7(arg12, arg22)
    local iterator, dataTable4
    iterator = arg12.gangName
    dataTable4 = arg22.gangName
    iterator = iterator < dataTable4
    return iterator
  end
  arg5(arg6, arg7)
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6
  arg1 = CMG
  arg1 = arg1.gangMembershipTiles
  if arg1 then
    arg1 = CMG
    arg1 = arg1.gangMembershipTiles
    arg1 = #arg1
    if arg1 > 0 then
      arg1 = CMG
      arg1 = arg1.gangMembershipTiles
      return arg1
    end
  end
  arg1 = {}
  arg2 = CMG
  arg2 = arg2.gangCachedData
  arg3 = CMG
  arg3 = arg3.gangRecognisedGangs
  if not arg3 then
    arg3 = {}
  end
  arg4 = CMG
  arg4 = arg4.gangCapturedTurfs
  if not arg4 then
    arg4 = {}
  end
  if arg2 then
    arg5 = 0
    arg6 = arg2.members
    if arg6 then
      arg6 = pairs
      arg7 = arg2.members
      arg6, arg7, workValue16, dataTable6 = arg6(arg7)
      for workValue20 in arg6, arg7, workValue16, dataTable6 do
        arg5 = arg5 + 1
      end
    end
    arg6 = arg2.guests
    if arg6 then
      arg6 = pairs
      arg7 = arg2.guests
      arg6, arg7, workValue16, dataTable6 = arg6(arg7)
      for workValue20 in arg6, arg7, workValue16, dataTable6 do
        arg5 = arg5 + 1
      end
    end
    arg6 = arg2.id
    arg6 = arg3[arg6]
    arg7 = 0
    workValue16 = pairs
    dataTable6 = arg4
    workValue16, dataTable6, workValue20, workValue2 = workValue16(dataTable6)
    for dataTable, textValue in workValue16, dataTable6, workValue20, workValue2 do
      dataTable2 = textValue.ownedByGangId
      workValue6 = arg2.id
      if dataTable2 == workValue6 then
        arg7 = arg7 + 1
      end
    end
    workValue16 = CMG
    workValue16 = workValue16.gangOrgClientState
    dataTable6 = arg2.organised
    dataTable6 = true == dataTable6
    if not dataTable6 and workValue16 then
      workValue20 = workValue16.hasOrgPack
      if true == workValue20 then
        workValue20 = workValue16.organised
        if true == workValue20 then
          workValue20 = CMG
          workValue20 = workValue20.getGangId
          workValue20 = workValue20()
          workValue2 = arg2.id
          if workValue20 == workValue2 then
            dataTable6 = true
          end
        end
      end
    end
    workValue20 = #arg1
    workValue20 = workValue20 + 1
    workValue2 = {}
    dataTable = arg2.id
    workValue2.gangId = dataTable
    dataTable = arg2.name
    if not dataTable then
      dataTable = "Unknown"
    end
    workValue2.gangName = dataTable
    workValue2.memberCount = arg5
    dataTable = arg2.isAdvanced
    dataTable = true == dataTable
    workValue2.isAdvanced = dataTable
    workValue2.isOrganised = dataTable6
    dataTable = nil ~= arg6
    workValue2.isRecognised = dataTable
    workValue2.isActive = true
    workValue2.role = "member"
    dataTable = arg2.displayMoney
    if not dataTable then
      dataTable = 0
    end
    workValue2.balance = dataTable
    if arg6 then
      dataTable = arg6.tagName
      if dataTable then
        goto flow_label_137
      end
    end
    dataTable = arg2.tagName
    if not dataTable then
      dataTable = ""
    end
    ::flow_label_137::
    workValue2.tagName = dataTable
    workValue2.turfsOwned = arg7
    arg1[workValue20] = workValue2
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  arg1 = arg2 or arg1
  if not arg2 then
    arg1 = 1
  end
  if arg1 < 1 then
    arg1 = 1
  end
  arg2 = 10000
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue, mathHelper, dataTable3, textValue5
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = 0
  arg3 = arg1.members
  if arg3 then
    arg3 = pairs
    arg4 = arg1.members
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7 in arg3, arg4, arg5, arg6 do
      arg2 = arg2 + 1
    end
  end
  arg3 = arg1.guests
  if arg3 then
    arg3 = pairs
    arg4 = arg1.guests
    arg3, arg4, arg5, arg6 = arg3(arg4)
    for arg7 in arg3, arg4, arg5, arg6 do
      arg2 = arg2 + 1
    end
  end
  arg3 = CMG
  arg3 = arg3.getClientGangDepositFeeDisplayPercent
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.getClientUserId
  -- Beginner: result below is userId.
  arg4 = arg4()
  arg5 = arg1.members
  if arg5 then
    arg5 = arg1.members
    arg5 = arg5[arg4]
    if not arg5 then
      arg5 = arg1.members
      arg6 = tostring
      arg7 = arg4
      arg6 = arg6(arg7)
      arg5 = arg5[arg6]
    end
  end
  arg6 = {}
  arg6.deposit = false
  arg6.withdraw = false
  arg6.withdrawturf = false
  if arg5 then
    arg7 = arg5.permissions
    if arg7 then
      arg7 = arg5.permissions
      arg7 = arg7.deposit
      if not arg7 then
        arg7 = arg5.permissions
        arg7 = arg7.leader
      end
      arg6.deposit = arg7
      arg7 = arg5.permissions
      arg7 = arg7.withdraw
      if not arg7 then
        arg7 = arg5.permissions
        arg7 = arg7.leader
      end
      arg6.withdraw = arg7
      arg7 = arg5.permissions
      arg7 = arg7.withdrawturf
      if not arg7 then
        arg7 = arg5.permissions
        arg7 = arg7.leader
      end
      arg6.withdrawturf = arg7
    end
  end
  arg7 = CMG
  arg7 = arg7.getClientDisplayMoney
  arg7, workValue16 = arg7()
  dataTable6 = 0
  workValue20 = CMG
  workValue20 = workValue20.gangCapturedTurfs
  if not workValue20 then
    workValue20 = {}
  end
  workValue2 = pairs
  dataTable = workValue20
  workValue2, dataTable, textValue, dataTable2 = workValue2(dataTable)
  for workValue6, stringHelper in workValue2, dataTable, textValue, dataTable2 do
    numberValue = stringHelper.ownedByGangId
    mathHelper = arg1.id
    if numberValue == mathHelper then
      dataTable6 = dataTable6 + 1
    end
  end
  workValue2 = tonumber
  dataTable = arg1.gangPublicLevel
  workValue2 = workValue2(dataTable)
  if not workValue2 then
    workValue2 = 1
  end
  dataTable = tonumber
  textValue = arg1.gangPublicXp
  dataTable = dataTable(textValue)
  if not dataTable then
    dataTable = 0
  end
  textValue = workValue3
  dataTable2 = workValue2
  textValue = textValue(dataTable2)
  dataTable2 = math
  dataTable2 = dataTable2.max
  workValue6 = 0
  stringHelper = textValue - dataTable
  dataTable2 = dataTable2(workValue6, stringHelper)
  workValue6 = tonumber
  stringHelper = arg1.gangRpLevel
  workValue6 = workValue6(stringHelper)
  if not workValue6 then
    workValue6 = 1
  end
  stringHelper = tonumber
  numberValue = arg1.gangRpXp
  stringHelper = stringHelper(numberValue)
  if not stringHelper then
    stringHelper = 0
  end
  numberValue = workValue3
  mathHelper = workValue6
  numberValue = numberValue(mathHelper)
  mathHelper = math
  mathHelper = mathHelper.max
  dataTable3 = 0
  textValue5 = numberValue - stringHelper
  mathHelper = mathHelper(dataTable3, textValue5)
  dataTable3 = {}
  textValue5 = arg1.name
  if not textValue5 then
    textValue5 = ""
  end
  dataTable3.gangName = textValue5
  dataTable3.turfsOwned = dataTable6
  textValue5 = arg1.displayMoney
  if not textValue5 then
    textValue5 = 0
  end
  dataTable3.gangMoney = textValue5
  dataTable3.totalMembers = arg2
  textValue5 = CMG
  textValue5 = textValue5.getClientGangMaxMemberLimit
  textValue5 = textValue5()
  dataTable3.maxMemberLimit = textValue5
  dataTable3.gangXpLevel = workValue2
  dataTable3.gangXpToNext = dataTable2
  dataTable3.gangXpCurrent = dataTable
  dataTable3.rpXpLevel = workValue6
  dataTable3.rpXpToNext = mathHelper
  dataTable3.rpXpCurrent = stringHelper
  textValue5 = arg1.announcements
  if not textValue5 then
    textValue5 = {}
  end
  dataTable3.announcements = textValue5
  dataTable3.depositFeePercent = arg3
  dataTable3.fundsPermissions = arg6
  textValue5 = workValue16 or textValue5
  if not workValue16 then
    textValue5 = 0
  end
  dataTable3.playerBankMoney = textValue5
  textValue5 = arg1.requireWithdrawReason
  textValue5 = true == textValue5
  dataTable3.requireWithdrawReason = textValue5
  textValue5 = CMG
  textValue5 = textValue5.gangActivityLeaderboard
  if not textValue5 then
    textValue5 = {}
  end
  dataTable3.activityLeaderboard = textValue5
  textValue5 = CMG
  textValue5 = textValue5.gangActivityLeaderboardPending
  textValue5 = true == textValue5
  dataTable3.activityLeaderboardLoading = textValue5
  return dataTable3
end
cmgCall2 = CMG
cmgCall2.gangNuiOpen = false
cmgCall2 = CMG
cmgCall2.gangPaycheckNuiPreview = nil
cmgCall2 = CMG
cmgCall2.gangActivityLeaderboard = nil
cmgCall2 = CMG
cmgCall2.gangActivityLeaderboardPending = false

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1.gangActivityLeaderboardPending = true
  arg1 = TriggerServerEvent
  arg2 = "cf2a446fae"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cf2a446fae".
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg1 = CMG
    arg1.gangActivityLeaderboard = nil
    arg1 = CMG
    arg1.gangActivityLeaderboardPending = false
    arg1 = workValue
    arg1 = arg1()
    if arg1 then
      arg2 = #arg1
      if arg2 > 0 then
        arg2 = CMG
        arg2 = arg2.uiSendMessage
        arg3 = {}
        arg3.action = "GANG_SET_DATA"
        arg4 = {}
        arg4.gangTiles = arg1
        arg5 = CMG
        arg5 = arg5.gangPendingInvites
        if not arg5 then
          arg5 = {}
        end
        arg4.pendingInvites = arg5
        arg4.currentPage = "gangs"
        arg5 = CMG
        arg5 = arg5.gangPaycheckNuiPreview
        arg4.paycheckPreview = arg5
        arg3.payload = arg4
        arg2(arg3)
        return
      end
    end
    arg2 = CMG
    arg2 = arg2.uiSendMessage
    arg3 = {}
    arg3.action = "GANG_SET_DATA"
    arg4 = {}
    arg5 = {}
    arg4.gangTiles = arg5
    arg5 = CMG
    arg5 = arg5.gangPendingInvites
    if not arg5 then
      arg5 = {}
    end
    arg4.pendingInvites = arg5
    arg4.currentPage = "gangs"
    arg5 = CMG
    arg5 = arg5.gangPaycheckNuiPreview
    arg4.paycheckPreview = arg5
    arg3.payload = arg4
    arg2(arg3)
    return
  end
  arg1 = workValue4
  arg1 = arg1()
  arg2 = workValue8
  arg2 = arg2()
  arg3 = workValue9
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.gangOrgClientState
  arg5 = {}
  arg5.dashboard = arg1
  arg5.members = arg2
  arg5.permissionsConfig = arg3
  arg6 = workValue13
  arg6 = arg6()
  arg5.settings = arg6
  arg6 = workValue15
  arg6 = arg6()
  arg5.turfs = arg6
  arg6 = CMG
  arg6 = arg6.getNextMoneyTurfPayoutEpoch
  arg6 = arg6()
  arg5.nextMoneyTurfPayout = arg6
  arg6 = workValue17
  arg6 = arg6()
  arg5.radios = arg6
  arg6 = workValue19
  arg6 = arg6()
  arg5.relationships = arg6
  arg6 = workValue
  arg6 = arg6()
  arg5.gangTiles = arg6
  arg6 = CMG
  arg6 = arg6.gangPendingInvites
  if not arg6 then
    arg6 = {}
  end
  arg5.pendingInvites = arg6
  arg6 = CMG
  arg6 = arg6.gangPaycheckNuiPreview
  arg5.paycheckPreview = arg6
  if nil ~= arg4 then
    arg6 = {}
    arg7 = pairs
    workValue16 = arg4
    arg7, workValue16, dataTable6, workValue20 = arg7(workValue16)
    for workValue2, dataTable in arg7, workValue16, dataTable6, workValue20 do
      arg6[workValue2] = dataTable
    end
    arg7 = CMG
    arg7 = arg7.getGangRankOutfitSlotMax
    arg7 = arg7()
    arg6.rankOutfitSlotMax = arg7
    arg5.gangOrg = arg6
  end
  arg6 = CMG
  arg6 = arg6.uiSendMessage
  arg7 = {}
  arg7.action = "GANG_SET_DATA"
  arg7.payload = arg5
  arg6(arg7)
end
eventRegistration = RegisterNetEvent
textValue2 = "89ec0abbf0"
-- Beginner: this function handles network event "89ec0abbf0".

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2
  arg2 = CMG
  arg2.gangPaycheckNuiPreview = arg1
  arg2 = CMG
  arg2 = arg2.gangNuiOpen
  if arg2 then
    arg2 = workValue5
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "89ec0abbf0".
eventRegistration(textValue2, cmgCall3)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1.gangNuiOpen = true
  arg1 = CMG
  arg1 = arg1.hideHud
  arg1()
  arg1 = TriggerServerEvent
  arg2 = "c4e52b6139"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4e52b6139".
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "e78941ef83"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = "gang"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = true
  arg3 = true
  arg4 = false
  arg1(arg2, arg3, arg4)
  arg1 = TriggerServerEvent
  arg2 = "a058b23a4e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a058b23a4e".
  arg1(arg2)
  arg1 = cmgCall2
  arg1()
  arg1 = workValue5
  arg1()
  arg1 = TriggerServerEvent
  arg2 = "3c3c3b9444"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c3c3b9444".
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "5b6e20cdd5"
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1.gangNuiOpen = false
  arg1 = CMG
  arg1.gangActivityLeaderboard = nil
  arg1 = CMG
  arg1.gangActivityLeaderboardPending = false
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = ""
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  arg4 = false
  arg1(arg2, arg3, arg4)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangRefreshPaycheckPreview"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "c4e52b6139"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4e52b6139".
  arg1(arg2)
  arg1 = {}
  return arg1
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangClose"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = textValue2
  arg1()
  arg1 = {}
  return arg1
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangInvitePlayer"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.userId
    if not arg2 then
      arg2 = arg1.permId
    end
  end
  if arg2 then
    arg3 = TriggerServerEvent
    arg4 = "a3ebe947dd"
    arg5 = tonumber
    arg6 = arg2
    arg5, arg6 = arg5(arg6)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a3ebe947dd".
    arg3(arg4, arg5, arg6)
  end
  arg3 = {}
  return arg3
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangAcceptInvite"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.gangName
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.isGuest
    arg3 = true == arg3
  end
  arg4 = type
  arg5 = arg2
  arg4 = arg4(arg5)
  if "string" == arg4 then
    arg4 = CMG
    arg4 = arg4.gangAcceptInvite
    if arg4 then
      arg4 = CMG
      arg4 = arg4.gangAcceptInvite
      arg5 = arg2
      arg6 = arg3
      arg4(arg5, arg6)
      arg4 = workValue5
      arg4()
    end
  end
  arg4 = {}
  return arg4
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangPostAnnouncement"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.title
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.description
  end
  arg4 = type
  arg5 = arg2
  arg4 = arg4(arg5)
  if "string" == arg4 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "string" == arg4 then
      goto flow_label_20
    end
  end
  arg4 = {}
  return arg4
  ::flow_label_20::
  arg4 = TriggerServerEvent
  arg5 = "aee924bc24"
  arg6 = arg2
  arg7 = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aee924bc24".
  arg4(arg5, arg6, arg7)
  arg4 = {}
  return arg4
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangCreateGang"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.name
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 then
    arg3 = {}
    return arg3
  end
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "^%s+"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = string
  arg3 = arg3.gsub
  arg4 = arg2
  arg5 = "%s+$"
  arg6 = ""
  arg3 = arg3(arg4, arg5, arg6)
  arg2 = arg3
  arg3 = #arg2
  if arg3 < 1 then
    arg3 = {}
    return arg3
  end
  arg3 = TriggerServerEvent
  arg4 = "36ca78a1b5"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ca78a1b5".
  arg3(arg4, arg5)
  arg3 = {}
  return arg3
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangDeclineInvite"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.gangName
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = CMG
    arg3 = arg3.gangDeclineInvite
    if arg3 then
      arg3 = CMG
      arg3 = arg3.gangDeclineInvite
      arg4 = arg2
      arg3(arg4)
      arg3 = workValue5
      arg3()
    end
  end
  arg3 = {}
  return arg3
end
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue3 = "gangSearchPlayers"

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.query
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = TriggerServerEvent
    arg4 = "66ff06be33"
    arg5 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "66ff06be33".
    arg3(arg4, arg5)
  end
  arg3 = {}
  return arg3
end
cmgCall3(textValue3, textValue4)
cmgCall3 = RegisterNetEvent
textValue3 = "c2f28c01bd"
-- Beginner: this function handles network event "c2f28c01bd".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.action = "GANG_SEARCH_RESULT"
  arg4 = {}
  arg5 = arg1 or arg5
  if not arg1 then
    arg5 = {}
  end
  arg4.players = arg5
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c2f28c01bd".
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, arg6
  if not arg2 or "" == arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.gangNuiOpen
  if arg3 then
    arg3 = CMG
    arg3 = arg3.uiSendMessage
    arg4 = {}
    arg4.action = "GANG_NOTIFICATION"
    arg5 = {}
    arg5.success = arg1
    arg5.message = arg2
    arg4.payload = arg5
    arg3(arg4)
  else
    if arg1 then
      arg3 = "~g~"
      if arg3 then
        goto flow_label_28
      end
    end
    arg3 = "~r~"
    ::flow_label_28::
    arg4 = tCMG
    arg4 = arg4.notify
    arg5 = arg3
    arg6 = arg2
    arg5 = arg5 .. arg6
    -- Beginner: Show a notification to the player.
    arg4(arg5)
  end
end
cmgCall3.showGangNuiNotify = textValue3
cmgCall3 = RegisterNetEvent
textValue3 = "bbe75200c0"
-- Beginner: this function handles network event "bbe75200c0".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = CMG
  arg3 = arg3.showGangNuiNotify
  arg4 = arg1
  arg5 = arg2 or arg5
  if not arg2 then
    if arg1 then
      arg5 = "Invite sent."
      if arg5 then
        goto flow_label_12
      end
    end
    arg5 = "Failed to send invite."
  end
  ::flow_label_12::
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bbe75200c0".
cmgCall3(textValue3, textValue4)
cmgCall3 = RegisterNetEvent
textValue3 = "38cce5f704"
-- Beginner: this function handles network event "38cce5f704".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = CMG
  arg3 = arg3.showGangNuiNotify
  arg4 = arg1
  arg5 = arg2
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "38cce5f704".
cmgCall3(textValue3, textValue4)
cmgCall3 = AddEventHandler
textValue3 = "e394af4876"
-- Beginner: this function runs when client event "e394af4876" fires.

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = workValue5
    arg1()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "e394af4876".
cmgCall3(textValue3, textValue4)
cmgCall3 = AddEventHandler
textValue3 = "c89367ffd9"
-- Beginner: this function runs when client event "c89367ffd9" fires.

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = workValue5
    arg1()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "c89367ffd9".
cmgCall3(textValue3, textValue4)
-- Beginner: this function runs when client event "c89367ffd9" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    return
  end
  arg1 = workValue8
  arg1 = arg1()
  arg2 = workValue4
  arg2 = arg2()
  arg3 = workValue9
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.uiSendMessage
  arg5 = {}
  arg5.action = "GANG_SET_DATA"
  arg6 = {}
  arg6.dashboard = arg2
  arg6.members = arg1
  arg6.permissionsConfig = arg3
  arg7 = CMG
  arg7 = arg7.gangPaycheckNuiPreview
  arg6.paycheckPreview = arg7
  arg5.payload = arg6
  arg4(arg5)
end
textValue3 = RegisterNetEvent
textValue4 = "6998c9a240"
-- Beginner: this function handles network event "6998c9a240".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = cmgCall3
    -- Beginner: Register a client-side event handler.
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6998c9a240".
textValue3(textValue4, textValue6)
textValue3 = RegisterNetEvent
textValue4 = "f71d7949c0"
-- Beginner: this function handles network event "f71d7949c0".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = cmgCall3
    -- Beginner: Register a client-side event handler.
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f71d7949c0".
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangPinMember"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.userId
    if not arg2 then
      arg2 = arg1.user_id
    end
  end
  if not arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = tonumber
  arg4 = arg2
  arg3 = arg3(arg4)
  arg2 = arg3
  arg3 = CMG
  arg3 = arg3.gangPinnedPlayers
  if not arg3 then
    arg4 = GetResourceKvpString
    arg5 = "cmg_gang_pinned"
    arg4 = arg4(arg5)
    if not arg4 then
      arg4 = "{}"
    end
    arg5 = json
    arg5 = arg5.decode
    arg6 = arg4
    arg5 = arg5(arg6)
    if not arg5 then
      arg5 = {}
    end
    arg6 = {}
    arg3 = arg6
    arg6 = pairs
    arg7 = arg5
    arg6, arg7, workValue16, dataTable6 = arg6(arg7)
    for workValue20 in arg6, arg7, workValue16, dataTable6 do
      workValue2 = tonumber
      dataTable = workValue20
      workValue2 = workValue2(dataTable)
      arg3[workValue2] = true
    end
    arg6 = CMG
    arg6.gangPinnedPlayers = arg3
  end
  if arg2 then
    arg4 = arg3[arg2]
    if arg4 then
      arg3[arg2] = nil
    else
      arg3[arg2] = true
    end
  end
  arg4 = SetResourceKvp
  arg5 = "cmg_gang_pinned"
  arg6 = json
  arg6 = arg6.encode
  arg7 = arg3
  arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable = arg6(arg7)
  arg4(arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable)
  arg4 = TriggerEvent
  arg5 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  arg4(arg5)
  arg4 = CMG
  arg4 = arg4.gangCachedData
  if arg4 then
    arg4 = CMG
    arg4 = arg4.gangCachedData
    arg4 = arg4.isAdvanced
    if arg4 then
      arg4 = GetResourceKvpString
      arg5 = "cmg_gang_blips"
      arg4 = arg4(arg5)
      arg4 = "true" == arg4
      if arg4 then
        arg5 = TriggerServerEvent
        arg6 = "f9c26121e2"
        arg7 = "own"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
        arg5(arg6, arg7)
      end
    end
  end
  arg4 = cmgCall3
  -- Beginner: Register a client-side event handler.
  arg4()
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangKickMember"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.userId
    if not arg2 then
      arg2 = arg1.user_id
    end
  end
  if not arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = tonumber
  arg4 = arg2
  arg3 = arg3(arg4)
  arg2 = arg3
  arg3 = arg1.isGuest
  if arg3 then
    arg3 = TriggerServerEvent
    arg4 = "550d5b91c6"
    arg5 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "550d5b91c6".
    arg3(arg4, arg5)
  else
    arg3 = TriggerServerEvent
    arg4 = "85c0cc23f6"
    arg5 = arg2
    arg3(arg4, arg5)
  end
  arg3 = Citizen
  arg3 = arg3.SetTimeout
  arg4 = 500

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local arg12, arg22
    arg12 = cmgCall3
    -- Beginner: Register a client-side event handler.
    arg12()
  end
  arg3(arg4, arg5)
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetMemberPermission"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6
  if arg1 then
    arg2 = arg1.userId
    if arg2 then
      arg2 = arg1.permissionId
      if nil ~= arg2 then
        arg2 = TriggerServerEvent
        arg3 = "a6cd82c68e"
        arg4 = tonumber
        arg5 = arg1.userId
        arg4 = arg4(arg5)
        arg5 = arg1.permissionId
        arg6 = arg1.enabled
        arg6 = true == arg6
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6cd82c68e".
        arg2(arg3, arg4, arg5, arg6)
      end
    end
  end
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangDeposit"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.amount
  end
  if nil == arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = TriggerServerEvent
  arg4 = "36ba8d4574"
  arg5 = tonumber
  arg6 = arg2
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = arg2
  end
  arg6 = arg1.reason
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ba8d4574".
  arg3(arg4, arg5, arg6)
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangDepositAll"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "8536953bae"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.reason
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8536953bae".
  arg2(arg3, arg4)
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangWithdraw"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.amount
  end
  if nil == arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = TriggerServerEvent
  arg4 = "21cfbc3c22"
  arg5 = tonumber
  arg6 = arg2
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = arg2
  end
  arg6 = arg1.reason
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21cfbc3c22".
  arg3(arg4, arg5, arg6)
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangWithdrawAll"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "be7d1bceb0"
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.reason
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be7d1bceb0".
  arg2(arg3, arg4)
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangWithdrawTurf"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.amount
  end
  if nil == arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = tonumber
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 and arg3 > 0 then
    arg4 = TriggerServerEvent
    arg5 = "6aac8fd738"
    arg6 = math
    arg6 = arg6.floor
    arg7 = arg3
    arg6, arg7 = arg6(arg7)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6aac8fd738".
    arg4(arg5, arg6, arg7)
  end
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangRequestContributions"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "cef5792c69"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cef5792c69".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangRequestLogs"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  if arg1 then
    arg2 = arg1.page
    if arg2 then
      goto flow_label_7
    end
  end
  arg2 = 1
  ::flow_label_7::
  if arg1 then
    arg3 = arg1.hideTurf
    if arg3 then
      goto flow_label_13
    end
  end
  arg3 = false
  ::flow_label_13::
  arg4 = tonumber
  arg5 = arg2
  arg4 = arg4(arg5)
  arg2 = arg4 or arg2
  if not arg4 then
    arg2 = 1
  end
  arg4 = TriggerServerEvent
  arg5 = "3f8f33322f"
  arg6 = arg2
  arg7 = true == arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
  arg4(arg5, arg6, arg7)
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = RegisterNetEvent
textValue4 = "38c659d0a7"
-- Beginner: this function handles network event "38c659d0a7".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2
  arg2 = CMG
  arg2 = arg2.gangCachedData
  if arg2 then
    arg2 = CMG
    arg2 = arg2.gangCachedData
    arg2.displayMoney = arg1
  end
  arg2 = CMG
  arg2 = arg2.gangNuiOpen
  if arg2 then
    arg2 = workValue5
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "38c659d0a7".
textValue3(textValue4, textValue6)
textValue3 = RegisterNetEvent
textValue4 = "bb3efd07e8"
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.gangNuiOpen
  if arg2 and arg1 then
    arg2 = CMG
    arg2 = arg2.uiSendMessage
    arg3 = {}
    arg3.action = "GANG_SET_CONTRIBUTIONS"
    arg4 = {}
    arg4.contributions = arg1
    arg3.payload = arg4
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bb3efd07e8".
textValue3(textValue4, textValue6)
textValue3 = RegisterNetEvent
textValue4 = "b6d14a58c2"
-- Beginner: this function handles network event "b6d14a58c2".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2, arg3) ===
function textValue6(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = CMG
  arg4 = arg4.gangNuiOpen
  if not arg4 then
    return
  end
  arg4 = CMG
  arg4 = arg4.uiSendMessage
  arg5 = {}
  arg5.action = "GANG_SET_LOGS"
  arg6 = {}
  arg6.pageNumber = arg1
  arg7 = arg2 or arg7
  if not arg2 then
    arg7 = {}
  end
  arg6.logs = arg7
  arg7 = arg3 or arg7
  if not arg3 then
    arg7 = 0
  end
  arg6.totalCount = arg7
  arg5.payload = arg6
  arg4(arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b6d14a58c2".
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetMaxWithdraw"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.amount
  end
  if nil ~= arg2 then
    arg3 = TriggerServerEvent
    arg4 = "b674c758b8"
    arg5 = tonumber
    arg6 = arg2
    arg5 = arg5(arg6)
    if not arg5 then
      arg5 = 0
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b674c758b8".
    arg3(arg4, arg5)
  end
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetLimitWithdrawDeposit"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.enabled
  end
  arg3 = TriggerServerEvent
  arg4 = "58d834d15a"
  arg5 = true == arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58d834d15a".
  arg3(arg4, arg5)
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetRequireWithdrawReason"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.enabled
  end
  arg3 = TriggerServerEvent
  arg4 = "5d7f40bb9d"
  arg5 = true == arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d7f40bb9d".
  arg3(arg4, arg5)
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetTag"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.tag
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = #arg2
    if arg3 > 0 then
      arg3 = TriggerServerEvent
      arg4 = "9dad3c2a94"
      arg5 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dad3c2a94".
      arg3(arg4, arg5)
    end
  end
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangRenameGang"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.name
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = #arg2
    if arg3 > 0 then
      arg3 = TriggerServerEvent
      arg4 = "7a95907fc0"
      arg5 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a95907fc0".
      arg3(arg4, arg5)
    end
  end
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangPurchaseAdvancedLicense"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "40cb8bd46d"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cb8bd46d".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetTurfColour"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.colour
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = #arg2
    if arg3 > 0 then
      arg3 = TriggerServerEvent
      arg4 = "adb903a8eb"
      arg5 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "adb903a8eb".
      arg3(arg4, arg5)
    end
  end
  arg3 = {}
  return arg3
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetPersonalBlipColour"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.colour
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 or "" == arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = cmgCall4
  if arg3 then
    arg3 = cmgCall4.colourLookup
    if arg3 then
      arg3 = cmgCall4.colourLookup
      arg3 = arg3[arg2]
      if arg3 then
        goto flow_label_27
      end
    end
  end
  arg3 = {}
  return arg3
  ::flow_label_27::
  arg3 = SetResourceKvp
  arg4 = "cmg_gang_colour"
  arg5 = arg2
  arg3(arg4, arg5)
  arg3 = CMG
  arg3 = arg3.getClientUserId
  -- Beginner: result below is userId.
  arg3 = arg3()
  arg4 = CMG
  arg4 = arg4.gangCachedData
  if arg4 then
    arg5 = arg4.members
    if arg5 and arg3 then
      arg5 = arg4.members
      arg5 = arg5[arg3]
      if not arg5 then
        arg5 = arg4.members
        arg6 = tostring
        arg7 = arg3
        arg6 = arg6(arg7)
        arg5 = arg5[arg6]
      end
      if arg5 then
        arg5.colour = arg2
      end
    end
  end
  arg5 = TriggerServerEvent
  arg6 = "a74c553948"
  arg7 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a74c553948".
  arg5(arg6, arg7)
  arg5 = workValue5
  arg5()
  arg5 = {}
  return arg5
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangToggleBlips"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = CMG
  arg1 = arg1.gangClientSettings
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = arg1.blips
  arg2 = not arg2
  arg1.blips = arg2
  arg2 = TriggerEvent
  arg3 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  arg2(arg3)
  arg2 = arg1.blips
  if arg2 then
    arg2 = "own"
    arg3 = TriggerServerEvent
    arg4 = "f9c26121e2"
    arg5 = arg2
    arg6 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    arg3(arg4, arg5, arg6)
  else
    arg2 = TriggerServerEvent
    arg3 = "f9c26121e2"
    arg4 = nil
    arg2(arg3, arg4)
  end
  arg2 = SetResourceKvp
  arg3 = "cmg_gang_blips"
  arg4 = tostring
  arg5 = arg1.blips
  arg4, arg5, arg6 = arg4(arg5)
  arg2(arg3, arg4, arg5, arg6)
  arg2 = workValue5
  arg2()
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangTogglePings"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.gangClientSettings
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = arg1.pings
  arg2 = not arg2
  arg1.pings = arg2
  arg2 = SetResourceKvp
  arg3 = "cmg_gang_pings"
  arg4 = tostring
  arg5 = arg1.pings
  arg4, arg5 = arg4(arg5)
  arg2(arg3, arg4, arg5)
  arg2 = workValue5
  arg2()
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangToggleNames"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.gangClientSettings
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = arg1.names
  arg2 = not arg2
  arg1.names = arg2
  arg2 = SetResourceKvp
  arg3 = "cmg_gang_names"
  arg4 = tostring
  arg5 = arg1.names
  arg4, arg5 = arg4(arg5)
  arg2(arg3, arg4, arg5)
  arg2 = workValue5
  arg2()
  arg2 = {}
  return arg2
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetActiveGang"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = tonumber
    arg3 = arg1.gangId
    arg2 = arg2(arg3)
  end
  if not arg2 or arg2 <= 0 then
    arg3 = {}
    return arg3
  end
  arg3 = TriggerServerEvent
  arg4 = "bb20e42129"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb20e42129".
  arg3(arg4, arg5)
  arg3 = TriggerEvent
  arg4 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.gangClientSettings
  if not arg3 then
    arg3 = {}
  end
  arg4 = arg3.blips
  if arg4 then
    arg4 = TriggerServerEvent
    arg5 = "f9c26121e2"
    arg6 = "own"
    arg7 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    arg4(arg5, arg6, arg7)
  end
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangLeaveGang"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "4d87711de5"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4d87711de5".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangDisbandGang"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "2b85de9de2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2b85de9de2".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangRenameRadioChannel"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.channelId
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.name
  end
  if nil ~= arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "string" == arg4 then
      arg4 = #arg3
      if arg4 > 0 then
        arg4 = TriggerServerEvent
        arg5 = "8a2894785e"
        arg6 = tonumber
        arg7 = arg2
        arg6 = arg6(arg7)
        arg7 = arg3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a2894785e".
        arg4(arg5, arg6, arg7)
      end
    end
  end
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangPurchaseRadioChannel"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "5b98fcee62"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b98fcee62".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue3(textValue4, textValue6)
textValue3 = CMG
textValue3 = textValue3.uiRegisterCallback
textValue4 = "gangSetRelationship"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.gangId
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.relationship
  end
  if arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "string" == arg4 then
      arg4 = TriggerServerEvent
      arg5 = "bdbde03161"
      arg6 = tonumber
      arg7 = arg2
      arg6 = arg6(arg7)
      arg7 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
      arg4(arg5, arg6, arg7)
    end
  end
  arg4 = {}
  return arg4
end
textValue3(textValue4, textValue6)
textValue3 = RegisterNetEvent
textValue4 = "f9904fb04b"
-- Beginner: this function handles network event "f9904fb04b".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = CMG
    arg1.gangActivityLeaderboard = nil
    arg1 = CMG
    arg1.gangActivityLeaderboardPending = true
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
      arg12 = cmgCall2
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9904fb04b".
textValue3(textValue4, textValue6)

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20
  arg2 = {}
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "table" ~= arg3 then
    return arg2
  end
  arg3 = 1
  arg4 = #arg1
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = #arg2
    arg7 = arg7 + 1
    workValue16 = arg1[arg6]
    arg2[arg7] = workValue16
  end
  arg3 = #arg2
  if arg3 > 0 then
    return arg2
  end
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, workValue16 in arg3, arg4, arg5, arg6 do
    dataTable6 = type
    workValue20 = workValue16
    dataTable6 = dataTable6(workValue20)
    if "table" == dataTable6 then
      dataTable6 = workValue16.userId
      if nil == dataTable6 then
        dataTable6 = workValue16.user_id
        if nil == dataTable6 then
          goto flow_label_42
        end
      end
      dataTable6 = #arg2
      dataTable6 = dataTable6 + 1
      arg2[dataTable6] = workValue16
    end
    ::flow_label_42::
  end
  return arg2
end
textValue4 = RegisterNetEvent
textValue6 = "b01ff8ce87"
-- Beginner: this function handles network event "b01ff8ce87".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2.gangActivityLeaderboardPending = false
  arg2 = CMG
  arg3 = textValue3
  arg4 = arg1
  arg3 = arg3(arg4)
  arg2.gangActivityLeaderboard = arg3
  arg2 = CMG
  arg2 = arg2.gangNuiOpen
  if arg2 then
    arg2 = workValue5
    arg2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b01ff8ce87".
textValue4(textValue6, textValue7)
textValue4 = AddEventHandler
textValue6 = "238e25c639"
-- Beginner: this function runs when client event "238e25c639" fires.

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function runs when client event "238e25c639" fires.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "238e25c639".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "53c0495633"
-- Beginner: this function handles network event "53c0495633".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  if arg1 then
    arg3 = arg1.gangs
    if arg3 then
      goto flow_label_8
    end
  end
  arg3 = nil
  ::flow_label_8::
  arg2.gangMembershipTiles = arg3
  arg2 = CMG
  arg2 = arg2.gangNuiOpen
  if arg2 then
    arg2 = Citizen
    arg2 = arg2.SetTimeout
    arg3 = 100

    -- === HELPER FUNCTION: arg4() ===
    function arg4()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53c0495633".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "4a773cc562"
-- Beginner: this function handles network event "4a773cc562".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "4a773cc562".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a773cc562".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "e35812009c"
-- Beginner: this function handles network event "e35812009c".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "e35812009c".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e35812009c".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "bdbde03161"
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "bdbde03161".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bdbde03161".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "adb903a8eb"
-- Beginner: this function handles network event "adb903a8eb".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "adb903a8eb".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adb903a8eb".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "d59e8e8fd8"
-- Beginner: this function handles network event "d59e8e8fd8".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "d59e8e8fd8".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d59e8e8fd8".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "b674c758b8"
-- Beginner: this function handles network event "b674c758b8".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "b674c758b8".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b674c758b8".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "58d834d15a"
-- Beginner: this function handles network event "58d834d15a".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "58d834d15a".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "58d834d15a".
textValue4(textValue6, textValue7)
textValue4 = RegisterNetEvent
textValue6 = "5d7f40bb9d"
-- Beginner: this function handles network event "5d7f40bb9d".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.gangNuiOpen
  if arg1 then
    arg1 = Citizen
    arg1 = arg1.SetTimeout
    arg2 = 100
    -- Beginner: this function handles network event "5d7f40bb9d".

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    arg1(arg2, arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5d7f40bb9d".
textValue4(textValue6, textValue7)
textValue4 = CMG
textValue4 = textValue4.uiRegisterCallback
textValue6 = "gangGetSkillCategories"

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue, mathHelper, dataTable3
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = arg1.gangPerksUnlocked
  if not arg2 then
    arg2 = {}
  end
  arg3 = {}
  arg4 = cmgCall4
  if arg4 then
    arg4 = cmgCall4.gangSkillCategories
    if arg4 then
      arg4 = ipairs
      arg5 = cmgCall4.gangSkillCategories
      arg4, arg5, arg6, arg7 = arg4(arg5)
      for workValue16, dataTable6 in arg4, arg5, arg6, arg7 do
        workValue20 = 0
        workValue2 = 0
        dataTable = cmgCall4.gangSkills
        if dataTable then
          dataTable = pairs
          textValue = cmgCall4.gangSkills
          dataTable, textValue, dataTable2, workValue6 = dataTable(textValue)
          for stringHelper, numberValue in dataTable, textValue, dataTable2, workValue6 do
            mathHelper = numberValue.skillCategory
            dataTable3 = dataTable6.id
            if mathHelper == dataTable3 then
              workValue2 = workValue2 + 1
              mathHelper = arg2[stringHelper]
              if mathHelper then
                workValue20 = workValue20 + 1
              end
            end
          end
        end
        dataTable = #arg3
        dataTable = dataTable + 1
        textValue = {}
        dataTable2 = dataTable6.id
        textValue.id = dataTable2
        dataTable2 = dataTable6.title
        textValue.title = dataTable2
        dataTable2 = dataTable6.description
        textValue.description = dataTable2
        dataTable2 = dataTable6.requireRecognised
        dataTable2 = true == dataTable2
        textValue.requireRecognised = dataTable2
        textValue.perksUsed = workValue20
        textValue.perksMax = workValue2
        dataTable2 = dataTable6.id
        if "gang_rp" == dataTable2 then
          dataTable2 = arg1.gangRpSkillPoints
          if dataTable2 then
            goto flow_label_80
          end
          dataTable2 = 0
          if dataTable2 then
            goto flow_label_80
          end
        end
        dataTable2 = arg1.gangPublicSkillPoints
        if not dataTable2 then
          dataTable2 = 0
        end
        ::flow_label_80::
        textValue.skillPoints = dataTable2
        arg3[dataTable] = textValue
      end
    end
  end
  arg4 = CMG
  arg4 = arg4.uiSendMessage
  arg5 = {}
  arg5.action = "GANG_SET_SKILL_CATEGORIES"
  arg6 = {}
  arg6.categories = arg3
  arg5.payload = arg6
  arg4(arg5)
  arg4 = {}
  return arg4
end
textValue4(textValue6, textValue7)
textValue4 = CMG
textValue4 = textValue4.uiRegisterCallback
textValue6 = "gangSelectSkillTree"

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable, textValue, dataTable2, workValue6, stringHelper, numberValue, mathHelper
  arg2 = CMG
  arg2 = arg2.gangCachedData
  if not arg2 then
    arg3 = {}
    return arg3
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.categoryId
  end
  arg4 = type
  arg5 = arg3
  arg4 = arg4(arg5)
  if "string" ~= arg4 then
    arg4 = {}
    return arg4
  end
  arg4 = CMG
  arg4.gangViewedSkillCategory = arg3
  arg4 = arg2.gangPerksUnlocked
  if not arg4 then
    arg4 = {}
  end
  if "gang_rp" == arg3 then
    arg5 = arg2.gangRpSkillPoints
    if arg5 then
      goto flow_label_38
    end
    arg5 = 0
    if arg5 then
      goto flow_label_38
    end
  end
  arg5 = arg2.gangPublicSkillPoints
  if not arg5 then
    arg5 = 0
  end
  ::flow_label_38::
  arg6 = {}
  arg7 = {}
  workValue16 = cmgCall4
  if workValue16 then
    workValue16 = cmgCall4.gangSkills
    if workValue16 then
      workValue16 = pairs
      dataTable6 = cmgCall4.gangSkills
      workValue16, dataTable6, workValue20, workValue2 = workValue16(dataTable6)
      for dataTable, textValue in workValue16, dataTable6, workValue20, workValue2 do
        dataTable2 = textValue.skillCategory
        if dataTable2 == arg3 then
          dataTable2 = arg4[dataTable]
          dataTable2 = true == dataTable2
          workValue6 = #arg6
          workValue6 = workValue6 + 1
          stringHelper = {}
          stringHelper.id = dataTable
          numberValue = textValue.name
          if not numberValue then
            numberValue = dataTable
          end
          stringHelper.title = numberValue
          numberValue = textValue.description
          stringHelper.desc = numberValue
          numberValue = textValue.cost
          if not numberValue then
            numberValue = 1
          end
          stringHelper.cost = numberValue
          stringHelper.unlocked = dataTable2
          numberValue = textValue.icon
          if not numberValue then
            numberValue = "bolt"
          end
          stringHelper.icon = numberValue
          numberValue = textValue.implemented
          numberValue = false ~= numberValue
          stringHelper.implemented = numberValue
          arg6[workValue6] = stringHelper
        end
      end
    end
  end
  workValue16 = table
  workValue16 = workValue16.sort
  dataTable6 = arg6

  -- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg12, arg22) ===
  function workValue20(arg12, arg22)
    local iterator, dataTable4
    iterator = arg12.id
    dataTable4 = arg22.id
    iterator = iterator < dataTable4
    return iterator
  end
  workValue16(dataTable6, workValue20)
  workValue16 = cmgCall4
  if workValue16 then
    workValue16 = cmgCall4.gangSkillTrees
    if workValue16 then
      workValue16 = cmgCall4.gangSkillTrees
      workValue16 = workValue16[arg3]
    end
  end
  if workValue16 then
    dataTable6 = workValue16.edges
    if dataTable6 then
      dataTable6 = ipairs
      workValue20 = workValue16.edges
      dataTable6, workValue20, workValue2, dataTable = dataTable6(workValue20)
      for textValue, dataTable2 in dataTable6, workValue20, workValue2, dataTable do
        workValue6 = #arg7
        workValue6 = workValue6 + 1
        stringHelper = {}
        numberValue = dataTable2.from
        stringHelper.from = numberValue
        numberValue = dataTable2.to
        stringHelper.to = numberValue
        arg7[workValue6] = stringHelper
      end
    end
  end
  dataTable6 = {}
  workValue20 = ipairs
  workValue2 = arg7
  workValue20, workValue2, dataTable, textValue = workValue20(workValue2)
  for dataTable2, workValue6 in workValue20, workValue2, dataTable, textValue do
    stringHelper = workValue6.to
    if stringHelper then
      stringHelper = workValue6.to
      dataTable6[stringHelper] = true
    end
  end
  workValue20 = nil
  workValue2 = ipairs
  dataTable = arg6
  workValue2, dataTable, textValue, dataTable2 = workValue2(dataTable)
  for workValue6, stringHelper in workValue2, dataTable, textValue, dataTable2 do
    numberValue = stringHelper.id
    numberValue = dataTable6[numberValue]
    if not numberValue then
      workValue20 = stringHelper.id
      break
    end
  end
  if not workValue20 then
    workValue2 = arg6[1]
    if workValue2 then
      workValue2 = arg6[1]
      workValue20 = workValue2.id
    end
  end
  workValue2 = arg3
  dataTable = cmgCall4
  if dataTable then
    dataTable = cmgCall4.gangSkillCategories
    if dataTable then
      dataTable = ipairs
      textValue = cmgCall4.gangSkillCategories
      dataTable, textValue, dataTable2, workValue6 = dataTable(textValue)
      for stringHelper, numberValue in dataTable, textValue, dataTable2, workValue6 do
        mathHelper = numberValue.id
        if mathHelper == arg3 then
          workValue2 = numberValue.title
          break
        end
      end
    end
  end
  dataTable = CMG
  dataTable = dataTable.uiSendMessage
  textValue = {}
  textValue.action = "GANG_OPEN_SKILL_TREE"
  dataTable2 = {}
  dataTable2.categoryId = arg3
  dataTable2.categoryTitle = workValue2
  dataTable2.points = arg5
  dataTable2.nodes = arg6
  dataTable2.edges = arg7
  dataTable2.selectedNodeId = workValue20
  textValue.payload = dataTable2
  dataTable(textValue)
  dataTable = {}
  return dataTable
end
textValue4(textValue6, textValue7)

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
function textValue4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.gangCachedData
  if arg1 then
    arg2 = arg1.id
    if arg2 then
      goto flow_label_9
    end
  end
  arg2 = nil
  ::flow_label_9::
  return arg2
end
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgCreateRank"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4
  arg1 = textValue4
  arg1 = arg1()
  if arg1 then
    arg2 = TriggerServerEvent
    arg3 = "dc44c30fb0"
    arg4 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc44c30fb0".
    arg2(arg3, arg4)
  end
  arg2 = {}
  return arg2
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgDeleteRank"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = textValue4
  arg2 = arg2()
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.rankName
  end
  if arg2 then
    arg4 = type
    arg5 = arg3
    arg4 = arg4(arg5)
    if "string" == arg4 then
      arg4 = TriggerServerEvent
      arg5 = "be906f2085"
      arg6 = arg2
      arg7 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be906f2085".
      arg4(arg5, arg6, arg7)
    end
  end
  arg4 = {}
  return arg4
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgChangeRank"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6
  arg2 = textValue4
  arg2 = arg2()
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = tonumber
    arg4 = arg1.userId
    arg3 = arg3(arg4)
  end
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.rankName
  end
  if arg2 and arg3 then
    arg5 = type
    arg6 = arg4
    arg5 = arg5(arg6)
    if "string" == arg5 then
      arg5 = TriggerServerEvent
      arg6 = "a310f50e5f"
      arg7 = arg2
      workValue16 = arg3
      dataTable6 = arg4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a310f50e5f".
      arg5(arg6, arg7, workValue16, dataTable6)
    end
  end
  arg5 = {}
  return arg5
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgSetClockPoint"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = textValue4
  arg1 = arg1()
  if arg1 then
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    arg3 = TriggerServerEvent
    arg4 = "3bcedbf249"
    arg5 = arg1
    arg6 = {}
    arg7 = arg2.x
    arg6.x = arg7
    arg7 = arg2.y
    arg6.y = arg7
    arg7 = arg2.z
    arg6.z = arg7
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3bcedbf249".
    arg3(arg4, arg5, arg6)
  end
  arg2 = {}
  return arg2
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgClockOn"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4
  arg1 = textValue4
  arg1 = arg1()
  if arg1 then
    arg2 = TriggerServerEvent
    arg3 = "6db7399c62"
    arg4 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6db7399c62".
    arg2(arg3, arg4)
  end
  arg2 = {}
  return arg2
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgClockOff"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "1117763922"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1117763922".
  arg1(arg2)
  arg1 = {}
  return arg1
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangOrgSaveRankOutfit"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue16, dataTable6, workValue20, workValue2, dataTable
  arg2 = textValue4
  arg2 = arg2()
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = arg1.rankName
  end
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.update
    arg4 = true == arg4
  end
  if arg1 then
    arg5 = tonumber
    arg6 = arg1.outfitId
    arg5 = arg5(arg6)
    if arg5 then
      goto flow_label_21
    end
  end
  arg5 = 1
  ::flow_label_21::
  arg6 = CMG
  arg6 = arg6.getGangRankOutfitSlotMax
  arg6 = arg6()
  if arg5 < 1 or arg5 > arg6 then
    arg7 = {}
    return arg7
  end
  if arg2 then
    arg7 = type
    workValue16 = arg3
    arg7 = arg7(workValue16)
    if "string" == arg7 then
      arg7 = TriggerServerEvent
      workValue16 = "63443bd729"
      dataTable6 = arg2
      workValue20 = arg3
      workValue2 = arg4
      dataTable = arg5
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "63443bd729".
      arg7(workValue16, dataTable6, workValue20, workValue2, dataTable)
    end
  end
  arg7 = {}
  return arg7
end
textValue6(textValue7, workValue7)
textValue6 = CMG
textValue6 = textValue6.uiRegisterCallback
textValue7 = "gangBuySkillNode"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue16
  arg3 = arg1 or nil
  if arg1 then
    arg3 = arg1.categoryId
  end
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = arg1.nodeId
  end
  arg5 = type
  arg6 = arg3
  arg5 = arg5(arg6)
  if "string" == arg5 then
    arg5 = type
    arg6 = arg4
    arg5 = arg5(arg6)
    if "string" == arg5 then
      goto flow_label_25
    end
  end
  if arg2 then
    arg5 = arg2
    arg6 = {}
    arg6.ok = false
    arg5(arg6)
  end
  return
  ::flow_label_25::
  arg5 = TriggerServerEvent
  arg6 = "ddad9cd813"
  arg7 = arg3
  workValue16 = arg4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ddad9cd813".
  arg5(arg6, arg7, workValue16)
  if arg2 then
    arg5 = arg2
    arg6 = {}
    arg6.ok = true
    arg5(arg6)
  end
  arg5 = {}
  return arg5
end
textValue6(textValue7, workValue7)
textValue6 = RegisterNetEvent
textValue7 = "e1bb552050"
-- Beginner: this function handles network event "e1bb552050".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function workValue7(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local workValue16, dataTable6, workValue20, workValue2, dataTable, textValue
  workValue16 = CMG
  workValue16 = workValue16.gangCachedData
  if workValue16 then
    workValue16 = CMG
    workValue16 = workValue16.gangCachedData
    workValue16.gangPublicSkillPoints = arg1
    workValue16 = CMG
    workValue16 = workValue16.gangCachedData
    dataTable6 = arg7 or dataTable6
    if not arg7 then
      dataTable6 = 0
    end
    workValue16.gangRpSkillPoints = dataTable6
    workValue16 = CMG
    workValue16 = workValue16.gangCachedData
    workValue16.gangPerksUnlocked = arg2
    if nil ~= arg3 then
      workValue16 = CMG
      workValue16 = workValue16.gangCachedData
      workValue16.gangPublicLevel = arg3
    end
    if nil ~= arg4 then
      workValue16 = CMG
      workValue16 = workValue16.gangCachedData
      workValue16.gangPublicXp = arg4
    end
    if nil ~= arg5 then
      workValue16 = CMG
      workValue16 = workValue16.gangCachedData
      workValue16.gangRpLevel = arg5
    end
    if nil ~= arg6 then
      workValue16 = CMG
      workValue16 = workValue16.gangCachedData
      workValue16.gangRpXp = arg6
    end
  end
  workValue16 = CMG
  workValue16 = workValue16.gangNuiOpen
  if workValue16 then
    workValue16 = CMG
    workValue16 = workValue16.gangViewedSkillCategory
    if "gang_rp" == workValue16 then
      if arg7 then
        goto flow_label_51
        dataTable6 = arg7 or dataTable6
      end
      dataTable6 = 0
      if dataTable6 then
        goto flow_label_51
      end
    end
    dataTable6 = arg1
    ::flow_label_51::
    workValue20 = CMG
    workValue20 = workValue20.uiSendMessage
    workValue2 = {}
    workValue2.action = "GANG_UPDATE_SKILL_TREE"
    dataTable = {}
    dataTable.points = dataTable6
    textValue = CMG
    textValue = textValue.getClientGangMaxMemberLimit
    textValue = textValue()
    dataTable.maxMemberLimit = textValue
    textValue = CMG
    textValue = textValue.getClientGangDepositFeeDisplayPercent
    textValue = textValue()
    dataTable.depositFeePercent = textValue

    -- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
    function textValue()
      local arg12, arg22, iterator, dataTable4, workValue10, workValue12, workValue14, dataTable5
      arg12 = {}
      arg22 = pairs
      iterator = arg2
      if not iterator then
        iterator = {}
      end
      arg22, iterator, dataTable4, workValue10 = arg22(iterator)
      for workValue12 in arg22, iterator, dataTable4, workValue10 do
        workValue14 = #arg12
        workValue14 = workValue14 + 1
        dataTable5 = {}
        dataTable5.id = workValue12
        dataTable5.unlocked = true
        arg12[workValue14] = dataTable5
      end
      return arg12
    end
    textValue = textValue()
    dataTable.nodes = textValue
    workValue2.payload = dataTable
    workValue20(workValue2)
    workValue20 = Citizen
    workValue20 = workValue20.SetTimeout
    workValue2 = 0

    -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
    function dataTable()
      local arg12, arg22
      arg12 = workValue5
      arg12()
    end
    workValue20(workValue2, dataTable)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e1bb552050".
textValue6(textValue7, workValue7)

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3
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
      goto flow_label_32
    end
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = cmgCall
  arg1 = arg1 - arg2
  if arg1 < 100 then
    return
  end
  arg1 = tCMG
  arg1 = arg1.isInComa
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  cmgCall = arg1
  arg1 = eventRegistration
  arg1()
  ::flow_label_32::
end
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = textValue6
  arg3 = "Gang NUI Key Controls"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(workValue7)
