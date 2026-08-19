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
local cmgOperation, cmgOperation4, text8, workingValue8, workingValue9, workingValue11, workingValue13, workingValue15, workingValue17, workingValue19, workingValue, workingValue3, workingValue4, cmgOperation2, workingValue5, eventHandler, text2, cmgOperation3, text3, text4, text6, text7, workingValue7
cmgOperation = CMG
cmgOperation.gangUseNui = true
cmgOperation = CMG
cmgOperation.gangMembershipTiles = nil
cmgOperation = 0
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.loadModule
text8 = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgOperation4 = cmgOperation4(text8)

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20
  localValue1 = CMG
  localValue1 = localValue1.gangPinnedPlayers
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.gangPinnedPlayers
    return localValue1
  end
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_gang_pinned"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = "{}"
  end
  localValue2 = json
  localValue2 = localValue2.decode
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = {}
  localValue4 = pairs
  localValue5 = localValue2
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for workingValue16 in localValue4, localValue5, localValue6, localValue7 do
    dataCollection6 = tonumber
    workingValue20 = workingValue16
    dataCollection6 = dataCollection6(workingValue20)
    localValue3[dataCollection6] = true
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = text8
  localValue2 = localValue2()
  localValue3 = {}
  localValue4 = localValue1.members
  if localValue4 then
    localValue4 = pairs
    localValue5 = localValue1.members
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for workingValue16, dataCollection6 in localValue4, localValue5, localValue6, localValue7 do
      workingValue20 = tonumber
      workingValue2 = workingValue16
      workingValue20 = workingValue20(workingValue2)
      if not workingValue20 then
        workingValue20 = workingValue16
      end
      workingValue2 = #localValue3
      workingValue2 = workingValue2 + 1
      dataCollection = {}
      dataCollection.user_id = workingValue20
      text = dataCollection6.name
      if not text then
        text = "Unknown"
      end
      dataCollection.name = text
      text = dataCollection6.lastLogin
      if not text then
        text = "Offline"
      end
      dataCollection.lastLogin = text
      text = dataCollection6.permissions
      if not text then
        text = {}
      end
      dataCollection.permissions = text
      dataCollection.isGuest = false
      text = localValue2[workingValue20]
      text = true == text
      dataCollection.isPinned = text
      text = dataCollection6.gangRank
      dataCollection.gangRank = text
      localValue3[workingValue2] = dataCollection
    end
  end
  localValue4 = localValue1.guests
  if localValue4 then
    localValue4 = pairs
    localValue5 = localValue1.guests
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for workingValue16, dataCollection6 in localValue4, localValue5, localValue6, localValue7 do
      workingValue20 = tonumber
      workingValue2 = workingValue16
      workingValue20 = workingValue20(workingValue2)
      if not workingValue20 then
        workingValue20 = workingValue16
      end
      workingValue2 = #localValue3
      workingValue2 = workingValue2 + 1
      dataCollection = {}
      dataCollection.user_id = workingValue20
      text = dataCollection6.name
      if not text then
        text = "Unknown"
      end
      dataCollection.name = text
      dataCollection.lastLogin = "Offline"
      text = dataCollection6.permissions
      if not text then
        text = {}
      end
      dataCollection.permissions = text
      dataCollection.isGuest = true
      text = localValue2[workingValue20]
      text = true == text
      dataCollection.isPinned = text
      text = dataCollection6.gangRank
      dataCollection.gangRank = text
      localValue3[workingValue2] = dataCollection
    end
  end
  localValue4 = cmgOperation4
  if localValue4 then
    localValue4 = cmgOperation4.permissions
    if localValue4 then
      localValue4 = cmgOperation4.permissions
      localValue4 = #localValue4
      if localValue4 then
        goto continueAtStep115
      end
    end
  end
  localValue4 = 0
  ::continueAtStep115::

  -- === HELPER FUNCTION: localValue5(localValue12) ===
  function localValue5(localValue12)
    local localValue22, iterator, dataCollection4, workingValue10, workingValue12, workingValue14, dataCollection5, workingValue18
    localValue22 = localValue12.isGuest
    if localValue22 then
      localValue22 = -1
      return localValue22
    end
    localValue22 = 0
    iterator = pairs
    dataCollection4 = localValue12.permissions
    if not dataCollection4 then
      dataCollection4 = {}
    end
    iterator, dataCollection4, workingValue10, workingValue12 = iterator(dataCollection4)
    for workingValue14, dataCollection5 in iterator, dataCollection4, workingValue10, workingValue12 do
      if dataCollection5 then
        localValue22 = localValue22 + 1
      end
    end
    iterator = localValue4
    if iterator > 0 then
      iterator = localValue4
      iterator = localValue22 / iterator
      if iterator then
        goto continueAtStep31
      end
    end
    iterator = 0
    ::continueAtStep31::
    return iterator
  end
  localValue6 = table
  localValue6 = localValue6.sort
  localValue7 = localValue3

  -- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue12, localValue22) ===
  function workingValue16(localValue12, localValue22)
    local iterator, dataCollection4, workingValue10, workingValue12
    iterator = localValue5
    dataCollection4 = localValue12
    iterator = iterator(dataCollection4)
    dataCollection4 = localValue5
    workingValue10 = localValue22
    dataCollection4 = dataCollection4(workingValue10)
    if iterator ~= dataCollection4 then
      workingValue10 = iterator > dataCollection4
      return workingValue10
    end
    workingValue10 = localValue12.user_id
    workingValue12 = localValue22.user_id
    workingValue10 = workingValue10 < workingValue12
    return workingValue10
  end
  localValue6(localValue7, workingValue16)
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20
  localValue1 = cmgOperation4
  if localValue1 then
    localValue1 = cmgOperation4.permissions
    if localValue1 then
      goto continueAtStep10
    end
  end
  localValue1 = {}
  return localValue1
  ::continueAtStep10::
  localValue1 = {}
  localValue2 = ipairs
  localValue3 = cmgOperation4.permissions
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    workingValue16 = #localValue1
    workingValue16 = workingValue16 + 1
    dataCollection6 = {}
    workingValue20 = localValue7.id
    dataCollection6.id = workingValue20
    workingValue20 = localValue7.name
    if not workingValue20 then
      workingValue20 = localValue7.id
    end
    dataCollection6.name = workingValue20
    workingValue20 = localValue7.description
    if not workingValue20 then
      workingValue20 = ""
    end
    dataCollection6.description = workingValue20
    localValue1[workingValue16] = dataCollection6
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  if localValue2 then
    localValue3 = localValue2.members
    if localValue3 then
      goto continueAtStep10
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep10::
  localValue3 = CMG
  localValue3 = localValue3.getClientUserId
  -- Beginner: result below is userId.
  localValue3 = localValue3()
  localValue4 = localValue2.members
  localValue4 = localValue4[localValue3]
  if not localValue4 then
    localValue4 = localValue2.members
    localValue5 = tostring
    localValue6 = localValue3
    localValue5 = localValue5(localValue6)
    localValue4 = localValue4[localValue5]
  end
  if localValue4 then
    localValue5 = localValue4.permissions
    if localValue5 then
      goto continueAtStep29
    end
  end
  localValue5 = false
  return localValue5
  ::continueAtStep29::
  localValue5 = localValue4.permissions
  localValue5 = localValue5[localValue1]
  localValue5 = localValue4.permissions
  localValue5 = localValue5.leader
  localValue5 = not localValue5
  localValue5 = localValue5 or localValue5
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.gangRecognisedGangs
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.gangRecognisedGangs
    localValue3 = localValue1.id
    localValue2 = localValue2[localValue3]
    if localValue2 then
      goto continueAtStep18
    end
  end
  localValue2 = nil
  ::continueAtStep18::
  localValue3 = {}
  localValue4 = cmgOperation4
  if localValue4 then
    localValue4 = cmgOperation4.colourLookup
    if localValue4 then
      localValue4 = pairs
      localValue5 = cmgOperation4.colourLookup
      localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
      for workingValue16 in localValue4, localValue5, localValue6, localValue7 do
        dataCollection6 = #localValue3
        dataCollection6 = dataCollection6 + 1
        localValue3[dataCollection6] = workingValue16
      end
      localValue4 = table
      localValue4 = localValue4.sort
      localValue5 = localValue3
      localValue4(localValue5)
    end
  end
  localValue4 = nil
  localValue5 = CMG
  localValue5 = localValue5.getClientUserId
  -- Beginner: result below is userId.
  localValue5 = localValue5()
  localValue6 = localValue1.members
  if localValue6 then
    localValue6 = localValue1.members
    localValue6 = localValue6[localValue5]
    if not localValue6 then
      localValue6 = localValue1.members
      localValue7 = tostring
      workingValue16 = localValue5
      localValue7 = localValue7(workingValue16)
      localValue6 = localValue6[localValue7]
    end
    if localValue6 then
      localValue7 = type
      workingValue16 = localValue6.colour
      localValue7 = localValue7(workingValue16)
      if "string" == localValue7 then
        localValue7 = cmgOperation4
        if localValue7 then
          localValue7 = cmgOperation4.colourLookup
          if localValue7 then
            localValue7 = cmgOperation4.colourLookup
            workingValue16 = localValue6.colour
            localValue7 = localValue7[workingValue16]
            if localValue7 then
              localValue4 = localValue6.colour
            end
          end
        end
      end
    end
  end
  if not localValue4 then
    localValue6 = GetResourceKvpString
    localValue7 = "cmg_gang_colour"
    localValue6 = localValue6(localValue7)
    localValue7 = type
    workingValue16 = localValue6
    localValue7 = localValue7(workingValue16)
    if "string" == localValue7 then
      localValue7 = cmgOperation4
      if localValue7 then
        localValue7 = cmgOperation4.colourLookup
        if localValue7 then
          localValue7 = cmgOperation4.colourLookup
          localValue7 = localValue7[localValue6]
          if localValue7 then
            localValue4 = localValue6
          end
        end
      end
    end
  end
  if not localValue4 then
    localValue4 = "Red"
  end
  localValue6 = CMG
  localValue6 = localValue6.gangClientSettings
  if not localValue6 then
    localValue6 = {}
  end
  localValue7 = {}
  workingValue16 = localValue1.isAdvanced
  workingValue16 = true == workingValue16
  localValue7.isAdvanced = workingValue16
  workingValue16 = nil ~= localValue2
  localValue7.isRecognised = workingValue16
  workingValue16 = workingValue11
  dataCollection6 = "leader"
  workingValue16 = workingValue16(dataCollection6)
  localValue7.isLeader = workingValue16
  workingValue16 = workingValue11
  dataCollection6 = "security"
  workingValue16 = workingValue16(dataCollection6)
  localValue7.hasSecurity = workingValue16
  workingValue16 = localValue1.maxWithdraw
  if not workingValue16 then
    workingValue16 = 0
  end
  localValue7.maxWithdraw = workingValue16
  workingValue16 = localValue1.limitWithdrawDeposit
  workingValue16 = true == workingValue16
  localValue7.limitWithdrawDeposit = workingValue16
  if localValue2 then
    workingValue16 = localValue2.tagName
    if workingValue16 then
      goto continueAtStep147
    end
  end
  workingValue16 = localValue1.tagName
  if not workingValue16 then
    workingValue16 = ""
  end
  ::continueAtStep147::
  localValue7.tagName = workingValue16
  if localValue2 then
    workingValue16 = localValue2.turfColour
    if workingValue16 then
      goto continueAtStep154
    end
  end
  workingValue16 = "Red"
  ::continueAtStep154::
  localValue7.turfColour = workingValue16
  localValue7.availableColours = localValue3
  workingValue16 = localValue6.blips
  workingValue16 = true == workingValue16
  localValue7.blips = workingValue16
  workingValue16 = localValue6.pings
  workingValue16 = true == workingValue16
  localValue7.pings = workingValue16
  workingValue16 = localValue6.names
  workingValue16 = true == workingValue16
  localValue7.names = workingValue16
  localValue7.personalBlipColour = localValue4
  return localValue7
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number
  localValue1 = {}
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  if localValue2 then
    localValue3 = ipairs
    localValue4 = CMG
    localValue4 = localValue4.getDrugTurfsUiPayload
    localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number = localValue4()
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number)
    for localValue7, workingValue16 in localValue3, localValue4, localValue5, localValue6 do
      dataCollection6 = #localValue1
      dataCollection6 = dataCollection6 + 1
      localValue1[dataCollection6] = workingValue16
    end
  end
  if not localValue2 then
    return localValue1
  end
  localValue3 = CMG
  localValue3 = localValue3.gangCapturedTurfs
  if not localValue3 then
    localValue3 = {}
  end
  localValue4 = CMG
  localValue4 = localValue4.gangRecognisedGangs
  if not localValue4 then
    localValue4 = {}
  end
  localValue5 = cmgOperation4
  if localValue5 then
    localValue5 = cmgOperation4.turfs
    if localValue5 then
      goto continueAtStep42
    end
  end
  return localValue1
  ::continueAtStep42::
  localValue5 = localValue2.id
  localValue5 = localValue4[localValue5]
  if not localValue5 then
    return localValue1
  end
  localValue6 = ipairs
  localValue7 = cmgOperation4.turfs
  localValue6, localValue7, workingValue16, dataCollection6 = localValue6(localValue7)
  for workingValue20, workingValue2 in localValue6, localValue7, workingValue16, dataCollection6 do
    dataCollection = workingValue2.name
    dataCollection = localValue3[dataCollection]
    text = ""
    dataCollection2 = false
    if dataCollection then
      workingValue6 = dataCollection.ownedByGangId
      if workingValue6 then
        workingValue6 = dataCollection.ownedByGangId
        workingValue6 = localValue4[workingValue6]
        if workingValue6 then
          workingValue6 = dataCollection.ownedByGangId
          workingValue6 = localValue4[workingValue6]
          workingValue6 = workingValue6.name
          text = workingValue6 or text
          if not workingValue6 then
            text = ""
          end
          workingValue6 = dataCollection.ownedByGangId
          stringHelper = localValue2.id
          dataCollection2 = workingValue6 == stringHelper
        end
      end
      workingValue6 = dataCollection.topGangName
      if workingValue6 then
        workingValue6 = dataCollection.topGangName
        if "" ~= workingValue6 then
          text = dataCollection.topGangName
        end
      end
    end
    workingValue6 = #localValue1
    workingValue6 = workingValue6 + 1
    stringHelper = {}
    stringHelper.turfType = "street"
    number = workingValue2.name
    stringHelper.name = number
    stringHelper.ownedByGangName = text
    stringHelper.ownedByUs = dataCollection2
    if dataCollection then
      number = dataCollection.ourStreetCred
      if number then
        goto continueAtStep99
      end
    end
    number = 0
    ::continueAtStep99::
    stringHelper.ourStreetCred = number
    if dataCollection then
      number = dataCollection.topGangStreetCred
      if number then
        goto continueAtStep106
      end
    end
    number = 0
    ::continueAtStep106::
    stringHelper.topGangStreetCred = number
    if dataCollection then
      number = dataCollection.topGangName
      if number then
        goto continueAtStep113
      end
    end
    number = ""
    ::continueAtStep113::
    stringHelper.topGangName = number
    localValue1[workingValue6] = stringHelper
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = {}
  localValue3 = localValue1.isAdvanced
  if localValue3 then
    localValue3 = #localValue2
    localValue3 = localValue3 + 1
    localValue4 = {}
    localValue4.id = 0
    localValue5 = string
    localValue5 = localValue5.format
    localValue6 = "%s (Default)"
    localValue7 = localValue1.name
    localValue5 = localValue5(localValue6, localValue7)
    localValue4.name = localValue5
    localValue2[localValue3] = localValue4
  end
  localValue3 = localValue1.additionalRadios
  if localValue3 then
    localValue3 = ipairs
    localValue4 = localValue1.additionalRadios
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7, workingValue16 in localValue3, localValue4, localValue5, localValue6 do
      dataCollection6 = #localValue2
      dataCollection6 = dataCollection6 + 1
      workingValue20 = {}
      workingValue2 = workingValue16.id
      workingValue20.id = workingValue2
      workingValue2 = workingValue16.name
      workingValue20.name = workingValue2
      localValue2[dataCollection6] = workingValue20
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.gangRecognisedGangs
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = localValue1.id
  localValue3 = localValue2[localValue3]
  if not localValue3 then
    localValue4 = {}
    return localValue4
  end
  localValue4 = {}
  localValue5 = pairs
  localValue6 = localValue2
  localValue5, localValue6, localValue7, workingValue16 = localValue5(localValue6)
  for dataCollection6, workingValue20 in localValue5, localValue6, localValue7, workingValue16 do
    workingValue2 = localValue1.id
    if dataCollection6 ~= workingValue2 then
      workingValue2 = localValue3.relationships
      if workingValue2 then
        workingValue2 = localValue3.relationships
        workingValue2 = workingValue2[dataCollection6]
        if workingValue2 then
          goto continueAtStep38
        end
      end
      workingValue2 = "Neutral"
      ::continueAtStep38::
      dataCollection = workingValue20.relationships
      if dataCollection then
        dataCollection = workingValue20.relationships
        text = localValue1.id
        dataCollection = dataCollection[text]
        if dataCollection then
          goto continueAtStep47
        end
      end
      dataCollection = "Neutral"
      ::continueAtStep47::
      text = #localValue4
      text = text + 1
      dataCollection2 = {}
      dataCollection2.gangId = dataCollection6
      workingValue6 = workingValue20.name
      if not workingValue6 then
        workingValue6 = "Gang "
        stringHelper = tostring
        number = dataCollection6
        stringHelper = stringHelper(number)
        workingValue6 = workingValue6 .. stringHelper
      end
      dataCollection2.gangName = workingValue6
      dataCollection2.ourRelationship = workingValue2
      dataCollection2.theirRelationship = dataCollection
      localValue4[text] = dataCollection2
    end
  end
  localValue5 = table
  localValue5 = localValue5.sort
  localValue6 = localValue4

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22) ===
  function localValue7(localValue12, localValue22)
    local iterator, dataCollection4
    iterator = localValue12.gangName
    dataCollection4 = localValue22.gangName
    iterator = iterator < dataCollection4
    return iterator
  end
  localValue5(localValue6, localValue7)
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6
  localValue1 = CMG
  localValue1 = localValue1.gangMembershipTiles
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.gangMembershipTiles
    localValue1 = #localValue1
    if localValue1 > 0 then
      localValue1 = CMG
      localValue1 = localValue1.gangMembershipTiles
      return localValue1
    end
  end
  localValue1 = {}
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  localValue3 = CMG
  localValue3 = localValue3.gangRecognisedGangs
  if not localValue3 then
    localValue3 = {}
  end
  localValue4 = CMG
  localValue4 = localValue4.gangCapturedTurfs
  if not localValue4 then
    localValue4 = {}
  end
  if localValue2 then
    localValue5 = 0
    localValue6 = localValue2.members
    if localValue6 then
      localValue6 = pairs
      localValue7 = localValue2.members
      localValue6, localValue7, workingValue16, dataCollection6 = localValue6(localValue7)
      for workingValue20 in localValue6, localValue7, workingValue16, dataCollection6 do
        localValue5 = localValue5 + 1
      end
    end
    localValue6 = localValue2.guests
    if localValue6 then
      localValue6 = pairs
      localValue7 = localValue2.guests
      localValue6, localValue7, workingValue16, dataCollection6 = localValue6(localValue7)
      for workingValue20 in localValue6, localValue7, workingValue16, dataCollection6 do
        localValue5 = localValue5 + 1
      end
    end
    localValue6 = localValue2.id
    localValue6 = localValue3[localValue6]
    localValue7 = 0
    workingValue16 = pairs
    dataCollection6 = localValue4
    workingValue16, dataCollection6, workingValue20, workingValue2 = workingValue16(dataCollection6)
    for dataCollection, text in workingValue16, dataCollection6, workingValue20, workingValue2 do
      dataCollection2 = text.ownedByGangId
      workingValue6 = localValue2.id
      if dataCollection2 == workingValue6 then
        localValue7 = localValue7 + 1
      end
    end
    workingValue16 = CMG
    workingValue16 = workingValue16.gangOrgClientState
    dataCollection6 = localValue2.organised
    dataCollection6 = true == dataCollection6
    if not dataCollection6 and workingValue16 then
      workingValue20 = workingValue16.hasOrgPack
      if true == workingValue20 then
        workingValue20 = workingValue16.organised
        if true == workingValue20 then
          workingValue20 = CMG
          workingValue20 = workingValue20.getGangId
          workingValue20 = workingValue20()
          workingValue2 = localValue2.id
          if workingValue20 == workingValue2 then
            dataCollection6 = true
          end
        end
      end
    end
    workingValue20 = #localValue1
    workingValue20 = workingValue20 + 1
    workingValue2 = {}
    dataCollection = localValue2.id
    workingValue2.gangId = dataCollection
    dataCollection = localValue2.name
    if not dataCollection then
      dataCollection = "Unknown"
    end
    workingValue2.gangName = dataCollection
    workingValue2.memberCount = localValue5
    dataCollection = localValue2.isAdvanced
    dataCollection = true == dataCollection
    workingValue2.isAdvanced = dataCollection
    workingValue2.isOrganised = dataCollection6
    dataCollection = nil ~= localValue6
    workingValue2.isRecognised = dataCollection
    workingValue2.isActive = true
    workingValue2.role = "member"
    dataCollection = localValue2.displayMoney
    if not dataCollection then
      dataCollection = 0
    end
    workingValue2.balance = dataCollection
    if localValue6 then
      dataCollection = localValue6.tagName
      if dataCollection then
        goto continueAtStep137
      end
    end
    dataCollection = localValue2.tagName
    if not dataCollection then
      dataCollection = ""
    end
    ::continueAtStep137::
    workingValue2.tagName = dataCollection
    workingValue2.turfsOwned = localValue7
    localValue1[workingValue20] = workingValue2
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue1 = localValue2 or localValue1
  if not localValue2 then
    localValue1 = 1
  end
  if localValue1 < 1 then
    localValue1 = 1
  end
  localValue2 = 10000
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number, mathHelper, dataCollection3, text5
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = 0
  localValue3 = localValue1.members
  if localValue3 then
    localValue3 = pairs
    localValue4 = localValue1.members
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7 in localValue3, localValue4, localValue5, localValue6 do
      localValue2 = localValue2 + 1
    end
  end
  localValue3 = localValue1.guests
  if localValue3 then
    localValue3 = pairs
    localValue4 = localValue1.guests
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
    for localValue7 in localValue3, localValue4, localValue5, localValue6 do
      localValue2 = localValue2 + 1
    end
  end
  localValue3 = CMG
  localValue3 = localValue3.getClientGangDepositFeeDisplayPercent
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.getClientUserId
  -- Beginner: result below is userId.
  localValue4 = localValue4()
  localValue5 = localValue1.members
  if localValue5 then
    localValue5 = localValue1.members
    localValue5 = localValue5[localValue4]
    if not localValue5 then
      localValue5 = localValue1.members
      localValue6 = tostring
      localValue7 = localValue4
      localValue6 = localValue6(localValue7)
      localValue5 = localValue5[localValue6]
    end
  end
  localValue6 = {}
  localValue6.deposit = false
  localValue6.withdraw = false
  localValue6.withdrawturf = false
  if localValue5 then
    localValue7 = localValue5.permissions
    if localValue7 then
      localValue7 = localValue5.permissions
      localValue7 = localValue7.deposit
      if not localValue7 then
        localValue7 = localValue5.permissions
        localValue7 = localValue7.leader
      end
      localValue6.deposit = localValue7
      localValue7 = localValue5.permissions
      localValue7 = localValue7.withdraw
      if not localValue7 then
        localValue7 = localValue5.permissions
        localValue7 = localValue7.leader
      end
      localValue6.withdraw = localValue7
      localValue7 = localValue5.permissions
      localValue7 = localValue7.withdrawturf
      if not localValue7 then
        localValue7 = localValue5.permissions
        localValue7 = localValue7.leader
      end
      localValue6.withdrawturf = localValue7
    end
  end
  localValue7 = CMG
  localValue7 = localValue7.getClientDisplayMoney
  localValue7, workingValue16 = localValue7()
  dataCollection6 = 0
  workingValue20 = CMG
  workingValue20 = workingValue20.gangCapturedTurfs
  if not workingValue20 then
    workingValue20 = {}
  end
  workingValue2 = pairs
  dataCollection = workingValue20
  workingValue2, dataCollection, text, dataCollection2 = workingValue2(dataCollection)
  for workingValue6, stringHelper in workingValue2, dataCollection, text, dataCollection2 do
    number = stringHelper.ownedByGangId
    mathHelper = localValue1.id
    if number == mathHelper then
      dataCollection6 = dataCollection6 + 1
    end
  end
  workingValue2 = tonumber
  dataCollection = localValue1.gangPublicLevel
  workingValue2 = workingValue2(dataCollection)
  if not workingValue2 then
    workingValue2 = 1
  end
  dataCollection = tonumber
  text = localValue1.gangPublicXp
  dataCollection = dataCollection(text)
  if not dataCollection then
    dataCollection = 0
  end
  text = workingValue3
  dataCollection2 = workingValue2
  text = text(dataCollection2)
  dataCollection2 = math
  dataCollection2 = dataCollection2.max
  workingValue6 = 0
  stringHelper = text - dataCollection
  dataCollection2 = dataCollection2(workingValue6, stringHelper)
  workingValue6 = tonumber
  stringHelper = localValue1.gangRpLevel
  workingValue6 = workingValue6(stringHelper)
  if not workingValue6 then
    workingValue6 = 1
  end
  stringHelper = tonumber
  number = localValue1.gangRpXp
  stringHelper = stringHelper(number)
  if not stringHelper then
    stringHelper = 0
  end
  number = workingValue3
  mathHelper = workingValue6
  number = number(mathHelper)
  mathHelper = math
  mathHelper = mathHelper.max
  dataCollection3 = 0
  text5 = number - stringHelper
  mathHelper = mathHelper(dataCollection3, text5)
  dataCollection3 = {}
  text5 = localValue1.name
  if not text5 then
    text5 = ""
  end
  dataCollection3.gangName = text5
  dataCollection3.turfsOwned = dataCollection6
  text5 = localValue1.displayMoney
  if not text5 then
    text5 = 0
  end
  dataCollection3.gangMoney = text5
  dataCollection3.totalMembers = localValue2
  text5 = CMG
  text5 = text5.getClientGangMaxMemberLimit
  text5 = text5()
  dataCollection3.maxMemberLimit = text5
  dataCollection3.gangXpLevel = workingValue2
  dataCollection3.gangXpToNext = dataCollection2
  dataCollection3.gangXpCurrent = dataCollection
  dataCollection3.rpXpLevel = workingValue6
  dataCollection3.rpXpToNext = mathHelper
  dataCollection3.rpXpCurrent = stringHelper
  text5 = localValue1.announcements
  if not text5 then
    text5 = {}
  end
  dataCollection3.announcements = text5
  dataCollection3.depositFeePercent = localValue3
  dataCollection3.fundsPermissions = localValue6
  text5 = workingValue16 or text5
  if not workingValue16 then
    text5 = 0
  end
  dataCollection3.playerBankMoney = text5
  text5 = localValue1.requireWithdrawReason
  text5 = true == text5
  dataCollection3.requireWithdrawReason = text5
  text5 = CMG
  text5 = text5.gangActivityLeaderboard
  if not text5 then
    text5 = {}
  end
  dataCollection3.activityLeaderboard = text5
  text5 = CMG
  text5 = text5.gangActivityLeaderboardPending
  text5 = true == text5
  dataCollection3.activityLeaderboardLoading = text5
  return dataCollection3
end
cmgOperation2 = CMG
cmgOperation2.gangNuiOpen = false
cmgOperation2 = CMG
cmgOperation2.gangPaycheckNuiPreview = nil
cmgOperation2 = CMG
cmgOperation2.gangActivityLeaderboard = nil
cmgOperation2 = CMG
cmgOperation2.gangActivityLeaderboardPending = false

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1.gangActivityLeaderboardPending = true
  localValue1 = TriggerServerEvent
  localValue2 = "cf2a446fae"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cf2a446fae".
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue1 = CMG
    localValue1.gangActivityLeaderboard = nil
    localValue1 = CMG
    localValue1.gangActivityLeaderboardPending = false
    localValue1 = workingValue
    localValue1 = localValue1()
    if localValue1 then
      localValue2 = #localValue1
      if localValue2 > 0 then
        localValue2 = CMG
        localValue2 = localValue2.uiSendMessage
        localValue3 = {}
        localValue3.action = "GANG_SET_DATA"
        localValue4 = {}
        localValue4.gangTiles = localValue1
        localValue5 = CMG
        localValue5 = localValue5.gangPendingInvites
        if not localValue5 then
          localValue5 = {}
        end
        localValue4.pendingInvites = localValue5
        localValue4.currentPage = "gangs"
        localValue5 = CMG
        localValue5 = localValue5.gangPaycheckNuiPreview
        localValue4.paycheckPreview = localValue5
        localValue3.payload = localValue4
        localValue2(localValue3)
        return
      end
    end
    localValue2 = CMG
    localValue2 = localValue2.uiSendMessage
    localValue3 = {}
    localValue3.action = "GANG_SET_DATA"
    localValue4 = {}
    localValue5 = {}
    localValue4.gangTiles = localValue5
    localValue5 = CMG
    localValue5 = localValue5.gangPendingInvites
    if not localValue5 then
      localValue5 = {}
    end
    localValue4.pendingInvites = localValue5
    localValue4.currentPage = "gangs"
    localValue5 = CMG
    localValue5 = localValue5.gangPaycheckNuiPreview
    localValue4.paycheckPreview = localValue5
    localValue3.payload = localValue4
    localValue2(localValue3)
    return
  end
  localValue1 = workingValue4
  localValue1 = localValue1()
  localValue2 = workingValue8
  localValue2 = localValue2()
  localValue3 = workingValue9
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.gangOrgClientState
  localValue5 = {}
  localValue5.dashboard = localValue1
  localValue5.members = localValue2
  localValue5.permissionsConfig = localValue3
  localValue6 = workingValue13
  localValue6 = localValue6()
  localValue5.settings = localValue6
  localValue6 = workingValue15
  localValue6 = localValue6()
  localValue5.turfs = localValue6
  localValue6 = CMG
  localValue6 = localValue6.getNextMoneyTurfPayoutEpoch
  localValue6 = localValue6()
  localValue5.nextMoneyTurfPayout = localValue6
  localValue6 = workingValue17
  localValue6 = localValue6()
  localValue5.radios = localValue6
  localValue6 = workingValue19
  localValue6 = localValue6()
  localValue5.relationships = localValue6
  localValue6 = workingValue
  localValue6 = localValue6()
  localValue5.gangTiles = localValue6
  localValue6 = CMG
  localValue6 = localValue6.gangPendingInvites
  if not localValue6 then
    localValue6 = {}
  end
  localValue5.pendingInvites = localValue6
  localValue6 = CMG
  localValue6 = localValue6.gangPaycheckNuiPreview
  localValue5.paycheckPreview = localValue6
  if nil ~= localValue4 then
    localValue6 = {}
    localValue7 = pairs
    workingValue16 = localValue4
    localValue7, workingValue16, dataCollection6, workingValue20 = localValue7(workingValue16)
    for workingValue2, dataCollection in localValue7, workingValue16, dataCollection6, workingValue20 do
      localValue6[workingValue2] = dataCollection
    end
    localValue7 = CMG
    localValue7 = localValue7.getGangRankOutfitSlotMax
    localValue7 = localValue7()
    localValue6.rankOutfitSlotMax = localValue7
    localValue5.gangOrg = localValue6
  end
  localValue6 = CMG
  localValue6 = localValue6.uiSendMessage
  localValue7 = {}
  localValue7.action = "GANG_SET_DATA"
  localValue7.payload = localValue5
  localValue6(localValue7)
end
eventHandler = RegisterNetEvent
text2 = "89ec0abbf0"
-- Beginner: this function handles network event "89ec0abbf0".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2
  localValue2 = CMG
  localValue2.gangPaycheckNuiPreview = localValue1
  localValue2 = CMG
  localValue2 = localValue2.gangNuiOpen
  if localValue2 then
    localValue2 = workingValue5
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "89ec0abbf0".
eventHandler(text2, cmgOperation3)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1.gangNuiOpen = true
  localValue1 = CMG
  localValue1 = localValue1.hideHud
  localValue1()
  localValue1 = TriggerServerEvent
  localValue2 = "c4e52b6139"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4e52b6139".
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "e78941ef83"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = "gang"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = true
  localValue3 = true
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = TriggerServerEvent
  localValue2 = "a058b23a4e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a058b23a4e".
  localValue1(localValue2)
  localValue1 = cmgOperation2
  localValue1()
  localValue1 = workingValue5
  localValue1()
  localValue1 = TriggerServerEvent
  localValue2 = "3c3c3b9444"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3c3c3b9444".
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "5b6e20cdd5"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1.gangNuiOpen = false
  localValue1 = CMG
  localValue1.gangActivityLeaderboard = nil
  localValue1 = CMG
  localValue1.gangActivityLeaderboardPending = false
  localValue1 = CMG
  localValue1 = localValue1.showHud
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = ""
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangRefreshPaycheckPreview"

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "c4e52b6139"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c4e52b6139".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangClose"

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = text2
  localValue1()
  localValue1 = {}
  return localValue1
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangInvitePlayer"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.userId
    if not localValue2 then
      localValue2 = localValue1.permId
    end
  end
  if localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "a3ebe947dd"
    localValue5 = tonumber
    localValue6 = localValue2
    localValue5, localValue6 = localValue5(localValue6)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a3ebe947dd".
    localValue3(localValue4, localValue5, localValue6)
  end
  localValue3 = {}
  return localValue3
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangAcceptInvite"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.gangName
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.isGuest
    localValue3 = true == localValue3
  end
  localValue4 = type
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if "string" == localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.gangAcceptInvite
    if localValue4 then
      localValue4 = CMG
      localValue4 = localValue4.gangAcceptInvite
      localValue5 = localValue2
      localValue6 = localValue3
      localValue4(localValue5, localValue6)
      localValue4 = workingValue5
      localValue4()
    end
  end
  localValue4 = {}
  return localValue4
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangPostAnnouncement"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.title
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.description
  end
  localValue4 = type
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if "string" == localValue4 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "string" == localValue4 then
      goto continueAtStep20
    end
  end
  localValue4 = {}
  return localValue4
  ::continueAtStep20::
  localValue4 = TriggerServerEvent
  localValue5 = "aee924bc24"
  localValue6 = localValue2
  localValue7 = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aee924bc24".
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = {}
  return localValue4
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangCreateGang"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.name
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "^%s+"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = string
  localValue3 = localValue3.gsub
  localValue4 = localValue2
  localValue5 = "%s+$"
  localValue6 = ""
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2 = localValue3
  localValue3 = #localValue2
  if localValue3 < 1 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = TriggerServerEvent
  localValue4 = "36ca78a1b5"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ca78a1b5".
  localValue3(localValue4, localValue5)
  localValue3 = {}
  return localValue3
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangDeclineInvite"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.gangName
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.gangDeclineInvite
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.gangDeclineInvite
      localValue4 = localValue2
      localValue3(localValue4)
      localValue3 = workingValue5
      localValue3()
    end
  end
  localValue3 = {}
  return localValue3
end
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text3 = "gangSearchPlayers"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.query
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = TriggerServerEvent
    localValue4 = "66ff06be33"
    localValue5 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "66ff06be33".
    localValue3(localValue4, localValue5)
  end
  localValue3 = {}
  return localValue3
end
cmgOperation3(text3, text4)
cmgOperation3 = RegisterNetEvent
text3 = "c2f28c01bd"
-- Beginner: this function handles network event "c2f28c01bd".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.action = "GANG_SEARCH_RESULT"
  localValue4 = {}
  localValue5 = localValue1 or localValue5
  if not localValue1 then
    localValue5 = {}
  end
  localValue4.players = localValue5
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c2f28c01bd".
cmgOperation3(text3, text4)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  if not localValue2 or "" == localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.gangNuiOpen
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.uiSendMessage
    localValue4 = {}
    localValue4.action = "GANG_NOTIFICATION"
    localValue5 = {}
    localValue5.success = localValue1
    localValue5.message = localValue2
    localValue4.payload = localValue5
    localValue3(localValue4)
  else
    if localValue1 then
      localValue3 = "~g~"
      if localValue3 then
        goto continueAtStep28
      end
    end
    localValue3 = "~r~"
    ::continueAtStep28::
    localValue4 = tCMG
    localValue4 = localValue4.notify
    localValue5 = localValue3
    localValue6 = localValue2
    localValue5 = localValue5 .. localValue6
    -- Beginner: Show a notification to the player.
    localValue4(localValue5)
  end
end
cmgOperation3.showGangNuiNotify = text3
cmgOperation3 = RegisterNetEvent
text3 = "bbe75200c0"
-- Beginner: this function handles network event "bbe75200c0".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = CMG
  localValue3 = localValue3.showGangNuiNotify
  localValue4 = localValue1
  localValue5 = localValue2 or localValue5
  if not localValue2 then
    if localValue1 then
      localValue5 = "Invite sent."
      if localValue5 then
        goto continueAtStep12
      end
    end
    localValue5 = "Failed to send invite."
  end
  ::continueAtStep12::
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bbe75200c0".
cmgOperation3(text3, text4)
cmgOperation3 = RegisterNetEvent
text3 = "38cce5f704"
-- Beginner: this function handles network event "38cce5f704".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = CMG
  localValue3 = localValue3.showGangNuiNotify
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "38cce5f704".
cmgOperation3(text3, text4)
cmgOperation3 = AddEventHandler
text3 = "e394af4876"
-- Beginner: this function runs when client event "e394af4876" fires.

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = workingValue5
    localValue1()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "e394af4876".
cmgOperation3(text3, text4)
cmgOperation3 = AddEventHandler
text3 = "c89367ffd9"
-- Beginner: this function runs when client event "c89367ffd9" fires.

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = workingValue5
    localValue1()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "c89367ffd9".
cmgOperation3(text3, text4)
-- Beginner: this function runs when client event "c89367ffd9" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    return
  end
  localValue1 = workingValue8
  localValue1 = localValue1()
  localValue2 = workingValue4
  localValue2 = localValue2()
  localValue3 = workingValue9
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.uiSendMessage
  localValue5 = {}
  localValue5.action = "GANG_SET_DATA"
  localValue6 = {}
  localValue6.dashboard = localValue2
  localValue6.members = localValue1
  localValue6.permissionsConfig = localValue3
  localValue7 = CMG
  localValue7 = localValue7.gangPaycheckNuiPreview
  localValue6.paycheckPreview = localValue7
  localValue5.payload = localValue6
  localValue4(localValue5)
end
text3 = RegisterNetEvent
text4 = "6998c9a240"
-- Beginner: this function handles network event "6998c9a240".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = cmgOperation3
    -- Beginner: Register a client-side event handler.
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6998c9a240".
text3(text4, text6)
text3 = RegisterNetEvent
text4 = "f71d7949c0"
-- Beginner: this function handles network event "f71d7949c0".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = cmgOperation3
    -- Beginner: Register a client-side event handler.
    localValue1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f71d7949c0".
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangPinMember"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.userId
    if not localValue2 then
      localValue2 = localValue1.user_id
    end
  end
  if not localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = tonumber
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue2 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.gangPinnedPlayers
  if not localValue3 then
    localValue4 = GetResourceKvpString
    localValue5 = "cmg_gang_pinned"
    localValue4 = localValue4(localValue5)
    if not localValue4 then
      localValue4 = "{}"
    end
    localValue5 = json
    localValue5 = localValue5.decode
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if not localValue5 then
      localValue5 = {}
    end
    localValue6 = {}
    localValue3 = localValue6
    localValue6 = pairs
    localValue7 = localValue5
    localValue6, localValue7, workingValue16, dataCollection6 = localValue6(localValue7)
    for workingValue20 in localValue6, localValue7, workingValue16, dataCollection6 do
      workingValue2 = tonumber
      dataCollection = workingValue20
      workingValue2 = workingValue2(dataCollection)
      localValue3[workingValue2] = true
    end
    localValue6 = CMG
    localValue6.gangPinnedPlayers = localValue3
  end
  if localValue2 then
    localValue4 = localValue3[localValue2]
    if localValue4 then
      localValue3[localValue2] = nil
    else
      localValue3[localValue2] = true
    end
  end
  localValue4 = SetResourceKvp
  localValue5 = "cmg_gang_pinned"
  localValue6 = json
  localValue6 = localValue6.encode
  localValue7 = localValue3
  localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection = localValue6(localValue7)
  localValue4(localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection)
  localValue4 = TriggerEvent
  localValue5 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  localValue4(localValue5)
  localValue4 = CMG
  localValue4 = localValue4.gangCachedData
  if localValue4 then
    localValue4 = CMG
    localValue4 = localValue4.gangCachedData
    localValue4 = localValue4.isAdvanced
    if localValue4 then
      localValue4 = GetResourceKvpString
      localValue5 = "cmg_gang_blips"
      localValue4 = localValue4(localValue5)
      localValue4 = "true" == localValue4
      if localValue4 then
        localValue5 = TriggerServerEvent
        localValue6 = "f9c26121e2"
        localValue7 = "own"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
        localValue5(localValue6, localValue7)
      end
    end
  end
  localValue4 = cmgOperation3
  -- Beginner: Register a client-side event handler.
  localValue4()
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangKickMember"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.userId
    if not localValue2 then
      localValue2 = localValue1.user_id
    end
  end
  if not localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = tonumber
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue2 = localValue3
  localValue3 = localValue1.isGuest
  if localValue3 then
    localValue3 = TriggerServerEvent
    localValue4 = "550d5b91c6"
    localValue5 = localValue2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "550d5b91c6".
    localValue3(localValue4, localValue5)
  else
    localValue3 = TriggerServerEvent
    localValue4 = "85c0cc23f6"
    localValue5 = localValue2
    localValue3(localValue4, localValue5)
  end
  localValue3 = Citizen
  localValue3 = localValue3.SetTimeout
  localValue4 = 500

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22
    localValue12 = cmgOperation3
    -- Beginner: Register a client-side event handler.
    localValue12()
  end
  localValue3(localValue4, localValue5)
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetMemberPermission"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  if localValue1 then
    localValue2 = localValue1.userId
    if localValue2 then
      localValue2 = localValue1.permissionId
      if nil ~= localValue2 then
        localValue2 = TriggerServerEvent
        localValue3 = "a6cd82c68e"
        localValue4 = tonumber
        localValue5 = localValue1.userId
        localValue4 = localValue4(localValue5)
        localValue5 = localValue1.permissionId
        localValue6 = localValue1.enabled
        localValue6 = true == localValue6
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a6cd82c68e".
        localValue2(localValue3, localValue4, localValue5, localValue6)
      end
    end
  end
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangDeposit"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.amount
  end
  if nil == localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = TriggerServerEvent
  localValue4 = "36ba8d4574"
  localValue5 = tonumber
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = localValue2
  end
  localValue6 = localValue1.reason
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36ba8d4574".
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangDepositAll"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "8536953bae"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.reason
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8536953bae".
  localValue2(localValue3, localValue4)
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangWithdraw"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.amount
  end
  if nil == localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = TriggerServerEvent
  localValue4 = "21cfbc3c22"
  localValue5 = tonumber
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = localValue2
  end
  localValue6 = localValue1.reason
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21cfbc3c22".
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangWithdrawAll"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = TriggerServerEvent
  localValue3 = "be7d1bceb0"
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.reason
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be7d1bceb0".
  localValue2(localValue3, localValue4)
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangWithdrawTurf"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.amount
  end
  if nil == localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = tonumber
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 and localValue3 > 0 then
    localValue4 = TriggerServerEvent
    localValue5 = "6aac8fd738"
    localValue6 = math
    localValue6 = localValue6.floor
    localValue7 = localValue3
    localValue6, localValue7 = localValue6(localValue7)
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6aac8fd738".
    localValue4(localValue5, localValue6, localValue7)
  end
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangRequestContributions"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "cef5792c69"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cef5792c69".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangRequestLogs"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  if localValue1 then
    localValue2 = localValue1.page
    if localValue2 then
      goto continueAtStep7
    end
  end
  localValue2 = 1
  ::continueAtStep7::
  if localValue1 then
    localValue3 = localValue1.hideTurf
    if localValue3 then
      goto continueAtStep13
    end
  end
  localValue3 = false
  ::continueAtStep13::
  localValue4 = tonumber
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue2 = localValue4 or localValue2
  if not localValue4 then
    localValue2 = 1
  end
  localValue4 = TriggerServerEvent
  localValue5 = "3f8f33322f"
  localValue6 = localValue2
  localValue7 = true == localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3f8f33322f".
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = RegisterNetEvent
text4 = "38c659d0a7"
-- Beginner: this function handles network event "38c659d0a7".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.gangCachedData
    localValue2.displayMoney = localValue1
  end
  localValue2 = CMG
  localValue2 = localValue2.gangNuiOpen
  if localValue2 then
    localValue2 = workingValue5
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "38c659d0a7".
text3(text4, text6)
text3 = RegisterNetEvent
text4 = "bb3efd07e8"
-- Beginner: this function handles network event "bb3efd07e8".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.gangNuiOpen
  if localValue2 and localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.uiSendMessage
    localValue3 = {}
    localValue3.action = "GANG_SET_CONTRIBUTIONS"
    localValue4 = {}
    localValue4.contributions = localValue1
    localValue3.payload = localValue4
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bb3efd07e8".
text3(text4, text6)
text3 = RegisterNetEvent
text4 = "b6d14a58c2"
-- Beginner: this function handles network event "b6d14a58c2".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2, localValue3) ===
function text6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = CMG
  localValue4 = localValue4.gangNuiOpen
  if not localValue4 then
    return
  end
  localValue4 = CMG
  localValue4 = localValue4.uiSendMessage
  localValue5 = {}
  localValue5.action = "GANG_SET_LOGS"
  localValue6 = {}
  localValue6.pageNumber = localValue1
  localValue7 = localValue2 or localValue7
  if not localValue2 then
    localValue7 = {}
  end
  localValue6.logs = localValue7
  localValue7 = localValue3 or localValue7
  if not localValue3 then
    localValue7 = 0
  end
  localValue6.totalCount = localValue7
  localValue5.payload = localValue6
  localValue4(localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b6d14a58c2".
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetMaxWithdraw"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.amount
  end
  if nil ~= localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "b674c758b8"
    localValue5 = tonumber
    localValue6 = localValue2
    localValue5 = localValue5(localValue6)
    if not localValue5 then
      localValue5 = 0
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b674c758b8".
    localValue3(localValue4, localValue5)
  end
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetLimitWithdrawDeposit"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.enabled
  end
  localValue3 = TriggerServerEvent
  localValue4 = "58d834d15a"
  localValue5 = true == localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58d834d15a".
  localValue3(localValue4, localValue5)
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetRequireWithdrawReason"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.enabled
  end
  localValue3 = TriggerServerEvent
  localValue4 = "5d7f40bb9d"
  localValue5 = true == localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5d7f40bb9d".
  localValue3(localValue4, localValue5)
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetTag"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.tag
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = #localValue2
    if localValue3 > 0 then
      localValue3 = TriggerServerEvent
      localValue4 = "9dad3c2a94"
      localValue5 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9dad3c2a94".
      localValue3(localValue4, localValue5)
    end
  end
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangRenameGang"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.name
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = #localValue2
    if localValue3 > 0 then
      localValue3 = TriggerServerEvent
      localValue4 = "7a95907fc0"
      localValue5 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a95907fc0".
      localValue3(localValue4, localValue5)
    end
  end
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangPurchaseAdvancedLicense"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "40cb8bd46d"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cb8bd46d".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetTurfColour"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.colour
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = #localValue2
    if localValue3 > 0 then
      localValue3 = TriggerServerEvent
      localValue4 = "adb903a8eb"
      localValue5 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "adb903a8eb".
      localValue3(localValue4, localValue5)
    end
  end
  localValue3 = {}
  return localValue3
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetPersonalBlipColour"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.colour
  end
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 or "" == localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = cmgOperation4
  if localValue3 then
    localValue3 = cmgOperation4.colourLookup
    if localValue3 then
      localValue3 = cmgOperation4.colourLookup
      localValue3 = localValue3[localValue2]
      if localValue3 then
        goto continueAtStep27
      end
    end
  end
  localValue3 = {}
  return localValue3
  ::continueAtStep27::
  localValue3 = SetResourceKvp
  localValue4 = "cmg_gang_colour"
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
  localValue3 = CMG
  localValue3 = localValue3.getClientUserId
  -- Beginner: result below is userId.
  localValue3 = localValue3()
  localValue4 = CMG
  localValue4 = localValue4.gangCachedData
  if localValue4 then
    localValue5 = localValue4.members
    if localValue5 and localValue3 then
      localValue5 = localValue4.members
      localValue5 = localValue5[localValue3]
      if not localValue5 then
        localValue5 = localValue4.members
        localValue6 = tostring
        localValue7 = localValue3
        localValue6 = localValue6(localValue7)
        localValue5 = localValue5[localValue6]
      end
      if localValue5 then
        localValue5.colour = localValue2
      end
    end
  end
  localValue5 = TriggerServerEvent
  localValue6 = "a74c553948"
  localValue7 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a74c553948".
  localValue5(localValue6, localValue7)
  localValue5 = workingValue5
  localValue5()
  localValue5 = {}
  return localValue5
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangToggleBlips"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.gangClientSettings
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = localValue1.blips
  localValue2 = not localValue2
  localValue1.blips = localValue2
  localValue2 = TriggerEvent
  localValue3 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  localValue2(localValue3)
  localValue2 = localValue1.blips
  if localValue2 then
    localValue2 = "own"
    localValue3 = TriggerServerEvent
    localValue4 = "f9c26121e2"
    localValue5 = localValue2
    localValue6 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    localValue3(localValue4, localValue5, localValue6)
  else
    localValue2 = TriggerServerEvent
    localValue3 = "f9c26121e2"
    localValue4 = nil
    localValue2(localValue3, localValue4)
  end
  localValue2 = SetResourceKvp
  localValue3 = "cmg_gang_blips"
  localValue4 = tostring
  localValue5 = localValue1.blips
  localValue4, localValue5, localValue6 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = workingValue5
  localValue2()
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangTogglePings"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.gangClientSettings
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = localValue1.pings
  localValue2 = not localValue2
  localValue1.pings = localValue2
  localValue2 = SetResourceKvp
  localValue3 = "cmg_gang_pings"
  localValue4 = tostring
  localValue5 = localValue1.pings
  localValue4, localValue5 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = workingValue5
  localValue2()
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangToggleNames"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.gangClientSettings
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = localValue1.names
  localValue2 = not localValue2
  localValue1.names = localValue2
  localValue2 = SetResourceKvp
  localValue3 = "cmg_gang_names"
  localValue4 = tostring
  localValue5 = localValue1.names
  localValue4, localValue5 = localValue4(localValue5)
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = workingValue5
  localValue2()
  localValue2 = {}
  return localValue2
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetActiveGang"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = tonumber
    localValue3 = localValue1.gangId
    localValue2 = localValue2(localValue3)
  end
  if not localValue2 or localValue2 <= 0 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = TriggerServerEvent
  localValue4 = "bb20e42129"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb20e42129".
  localValue3(localValue4, localValue5)
  localValue3 = TriggerEvent
  localValue4 = "e713d91b70"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e713d91b70".
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.gangClientSettings
  if not localValue3 then
    localValue3 = {}
  end
  localValue4 = localValue3.blips
  if localValue4 then
    localValue4 = TriggerServerEvent
    localValue5 = "f9c26121e2"
    localValue6 = "own"
    localValue7 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f9c26121e2".
    localValue4(localValue5, localValue6, localValue7)
  end
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangLeaveGang"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "4d87711de5"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4d87711de5".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangDisbandGang"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "2b85de9de2"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2b85de9de2".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangRenameRadioChannel"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.channelId
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.name
  end
  if nil ~= localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "string" == localValue4 then
      localValue4 = #localValue3
      if localValue4 > 0 then
        localValue4 = TriggerServerEvent
        localValue5 = "8a2894785e"
        localValue6 = tonumber
        localValue7 = localValue2
        localValue6 = localValue6(localValue7)
        localValue7 = localValue3
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a2894785e".
        localValue4(localValue5, localValue6, localValue7)
      end
    end
  end
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangPurchaseRadioChannel"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "5b98fcee62"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b98fcee62".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text3(text4, text6)
text3 = CMG
text3 = text3.uiRegisterCallback
text4 = "gangSetRelationship"

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1 or nil
  if localValue1 then
    localValue2 = localValue1.gangId
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.relationship
  end
  if localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "string" == localValue4 then
      localValue4 = TriggerServerEvent
      localValue5 = "bdbde03161"
      localValue6 = tonumber
      localValue7 = localValue2
      localValue6 = localValue6(localValue7)
      localValue7 = localValue3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdbde03161".
      localValue4(localValue5, localValue6, localValue7)
    end
  end
  localValue4 = {}
  return localValue4
end
text3(text4, text6)
text3 = RegisterNetEvent
text4 = "f9904fb04b"
-- Beginner: this function handles network event "f9904fb04b".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = CMG
    localValue1.gangActivityLeaderboard = nil
    localValue1 = CMG
    localValue1.gangActivityLeaderboardPending = true
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
      localValue12 = cmgOperation2
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9904fb04b".
text3(text4, text6)

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20
  localValue2 = {}
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "table" ~= localValue3 then
    return localValue2
  end
  localValue3 = 1
  localValue4 = #localValue1
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = #localValue2
    localValue7 = localValue7 + 1
    workingValue16 = localValue1[localValue6]
    localValue2[localValue7] = workingValue16
  end
  localValue3 = #localValue2
  if localValue3 > 0 then
    return localValue2
  end
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, workingValue16 in localValue3, localValue4, localValue5, localValue6 do
    dataCollection6 = type
    workingValue20 = workingValue16
    dataCollection6 = dataCollection6(workingValue20)
    if "table" == dataCollection6 then
      dataCollection6 = workingValue16.userId
      if nil == dataCollection6 then
        dataCollection6 = workingValue16.user_id
        if nil == dataCollection6 then
          goto continueAtStep42
        end
      end
      dataCollection6 = #localValue2
      dataCollection6 = dataCollection6 + 1
      localValue2[dataCollection6] = workingValue16
    end
    ::continueAtStep42::
  end
  return localValue2
end
text4 = RegisterNetEvent
text6 = "b01ff8ce87"
-- Beginner: this function handles network event "b01ff8ce87".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2.gangActivityLeaderboardPending = false
  localValue2 = CMG
  localValue3 = text3
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue2.gangActivityLeaderboard = localValue3
  localValue2 = CMG
  localValue2 = localValue2.gangNuiOpen
  if localValue2 then
    localValue2 = workingValue5
    localValue2()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b01ff8ce87".
text4(text6, text7)
text4 = AddEventHandler
text6 = "238e25c639"
-- Beginner: this function runs when client event "238e25c639" fires.

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function runs when client event "238e25c639" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "238e25c639".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "53c0495633"
-- Beginner: this function handles network event "53c0495633".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  if localValue1 then
    localValue3 = localValue1.gangs
    if localValue3 then
      goto continueAtStep8
    end
  end
  localValue3 = nil
  ::continueAtStep8::
  localValue2.gangMembershipTiles = localValue3
  localValue2 = CMG
  localValue2 = localValue2.gangNuiOpen
  if localValue2 then
    localValue2 = Citizen
    localValue2 = localValue2.SetTimeout
    localValue3 = 100

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "53c0495633".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "4a773cc562"
-- Beginner: this function handles network event "4a773cc562".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "4a773cc562".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a773cc562".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "e35812009c"
-- Beginner: this function handles network event "e35812009c".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "e35812009c".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e35812009c".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "bdbde03161"
-- Beginner: this function handles network event "bdbde03161".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "bdbde03161".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bdbde03161".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "adb903a8eb"
-- Beginner: this function handles network event "adb903a8eb".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "adb903a8eb".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "adb903a8eb".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "d59e8e8fd8"
-- Beginner: this function handles network event "d59e8e8fd8".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "d59e8e8fd8".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d59e8e8fd8".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "b674c758b8"
-- Beginner: this function handles network event "b674c758b8".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "b674c758b8".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b674c758b8".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "58d834d15a"
-- Beginner: this function handles network event "58d834d15a".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "58d834d15a".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "58d834d15a".
text4(text6, text7)
text4 = RegisterNetEvent
text6 = "5d7f40bb9d"
-- Beginner: this function handles network event "5d7f40bb9d".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.gangNuiOpen
  if localValue1 then
    localValue1 = Citizen
    localValue1 = localValue1.SetTimeout
    localValue2 = 100
    -- Beginner: this function handles network event "5d7f40bb9d".

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    localValue1(localValue2, localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5d7f40bb9d".
text4(text6, text7)
text4 = CMG
text4 = text4.uiRegisterCallback
text6 = "gangGetSkillCategories"

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number, mathHelper, dataCollection3
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = localValue1.gangPerksUnlocked
  if not localValue2 then
    localValue2 = {}
  end
  localValue3 = {}
  localValue4 = cmgOperation4
  if localValue4 then
    localValue4 = cmgOperation4.gangSkillCategories
    if localValue4 then
      localValue4 = ipairs
      localValue5 = cmgOperation4.gangSkillCategories
      localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
      for workingValue16, dataCollection6 in localValue4, localValue5, localValue6, localValue7 do
        workingValue20 = 0
        workingValue2 = 0
        dataCollection = cmgOperation4.gangSkills
        if dataCollection then
          dataCollection = pairs
          text = cmgOperation4.gangSkills
          dataCollection, text, dataCollection2, workingValue6 = dataCollection(text)
          for stringHelper, number in dataCollection, text, dataCollection2, workingValue6 do
            mathHelper = number.skillCategory
            dataCollection3 = dataCollection6.id
            if mathHelper == dataCollection3 then
              workingValue2 = workingValue2 + 1
              mathHelper = localValue2[stringHelper]
              if mathHelper then
                workingValue20 = workingValue20 + 1
              end
            end
          end
        end
        dataCollection = #localValue3
        dataCollection = dataCollection + 1
        text = {}
        dataCollection2 = dataCollection6.id
        text.id = dataCollection2
        dataCollection2 = dataCollection6.title
        text.title = dataCollection2
        dataCollection2 = dataCollection6.description
        text.description = dataCollection2
        dataCollection2 = dataCollection6.requireRecognised
        dataCollection2 = true == dataCollection2
        text.requireRecognised = dataCollection2
        text.perksUsed = workingValue20
        text.perksMax = workingValue2
        dataCollection2 = dataCollection6.id
        if "gang_rp" == dataCollection2 then
          dataCollection2 = localValue1.gangRpSkillPoints
          if dataCollection2 then
            goto continueAtStep80
          end
          dataCollection2 = 0
          if dataCollection2 then
            goto continueAtStep80
          end
        end
        dataCollection2 = localValue1.gangPublicSkillPoints
        if not dataCollection2 then
          dataCollection2 = 0
        end
        ::continueAtStep80::
        text.skillPoints = dataCollection2
        localValue3[dataCollection] = text
      end
    end
  end
  localValue4 = CMG
  localValue4 = localValue4.uiSendMessage
  localValue5 = {}
  localValue5.action = "GANG_SET_SKILL_CATEGORIES"
  localValue6 = {}
  localValue6.categories = localValue3
  localValue5.payload = localValue6
  localValue4(localValue5)
  localValue4 = {}
  return localValue4
end
text4(text6, text7)
text4 = CMG
text4 = text4.uiRegisterCallback
text6 = "gangSelectSkillTree"

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text, dataCollection2, workingValue6, stringHelper, number, mathHelper
  localValue2 = CMG
  localValue2 = localValue2.gangCachedData
  if not localValue2 then
    localValue3 = {}
    return localValue3
  end
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.categoryId
  end
  localValue4 = type
  localValue5 = localValue3
  localValue4 = localValue4(localValue5)
  if "string" ~= localValue4 then
    localValue4 = {}
    return localValue4
  end
  localValue4 = CMG
  localValue4.gangViewedSkillCategory = localValue3
  localValue4 = localValue2.gangPerksUnlocked
  if not localValue4 then
    localValue4 = {}
  end
  if "gang_rp" == localValue3 then
    localValue5 = localValue2.gangRpSkillPoints
    if localValue5 then
      goto continueAtStep38
    end
    localValue5 = 0
    if localValue5 then
      goto continueAtStep38
    end
  end
  localValue5 = localValue2.gangPublicSkillPoints
  if not localValue5 then
    localValue5 = 0
  end
  ::continueAtStep38::
  localValue6 = {}
  localValue7 = {}
  workingValue16 = cmgOperation4
  if workingValue16 then
    workingValue16 = cmgOperation4.gangSkills
    if workingValue16 then
      workingValue16 = pairs
      dataCollection6 = cmgOperation4.gangSkills
      workingValue16, dataCollection6, workingValue20, workingValue2 = workingValue16(dataCollection6)
      for dataCollection, text in workingValue16, dataCollection6, workingValue20, workingValue2 do
        dataCollection2 = text.skillCategory
        if dataCollection2 == localValue3 then
          dataCollection2 = localValue4[dataCollection]
          dataCollection2 = true == dataCollection2
          workingValue6 = #localValue6
          workingValue6 = workingValue6 + 1
          stringHelper = {}
          stringHelper.id = dataCollection
          number = text.name
          if not number then
            number = dataCollection
          end
          stringHelper.title = number
          number = text.description
          stringHelper.desc = number
          number = text.cost
          if not number then
            number = 1
          end
          stringHelper.cost = number
          stringHelper.unlocked = dataCollection2
          number = text.icon
          if not number then
            number = "bolt"
          end
          stringHelper.icon = number
          number = text.implemented
          number = false ~= number
          stringHelper.implemented = number
          localValue6[workingValue6] = stringHelper
        end
      end
    end
  end
  workingValue16 = table
  workingValue16 = workingValue16.sort
  dataCollection6 = localValue6

  -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue12, localValue22) ===
  function workingValue20(localValue12, localValue22)
    local iterator, dataCollection4
    iterator = localValue12.id
    dataCollection4 = localValue22.id
    iterator = iterator < dataCollection4
    return iterator
  end
  workingValue16(dataCollection6, workingValue20)
  workingValue16 = cmgOperation4
  if workingValue16 then
    workingValue16 = cmgOperation4.gangSkillTrees
    if workingValue16 then
      workingValue16 = cmgOperation4.gangSkillTrees
      workingValue16 = workingValue16[localValue3]
    end
  end
  if workingValue16 then
    dataCollection6 = workingValue16.edges
    if dataCollection6 then
      dataCollection6 = ipairs
      workingValue20 = workingValue16.edges
      dataCollection6, workingValue20, workingValue2, dataCollection = dataCollection6(workingValue20)
      for text, dataCollection2 in dataCollection6, workingValue20, workingValue2, dataCollection do
        workingValue6 = #localValue7
        workingValue6 = workingValue6 + 1
        stringHelper = {}
        number = dataCollection2.from
        stringHelper.from = number
        number = dataCollection2.to
        stringHelper.to = number
        localValue7[workingValue6] = stringHelper
      end
    end
  end
  dataCollection6 = {}
  workingValue20 = ipairs
  workingValue2 = localValue7
  workingValue20, workingValue2, dataCollection, text = workingValue20(workingValue2)
  for dataCollection2, workingValue6 in workingValue20, workingValue2, dataCollection, text do
    stringHelper = workingValue6.to
    if stringHelper then
      stringHelper = workingValue6.to
      dataCollection6[stringHelper] = true
    end
  end
  workingValue20 = nil
  workingValue2 = ipairs
  dataCollection = localValue6
  workingValue2, dataCollection, text, dataCollection2 = workingValue2(dataCollection)
  for workingValue6, stringHelper in workingValue2, dataCollection, text, dataCollection2 do
    number = stringHelper.id
    number = dataCollection6[number]
    if not number then
      workingValue20 = stringHelper.id
      break
    end
  end
  if not workingValue20 then
    workingValue2 = localValue6[1]
    if workingValue2 then
      workingValue2 = localValue6[1]
      workingValue20 = workingValue2.id
    end
  end
  workingValue2 = localValue3
  dataCollection = cmgOperation4
  if dataCollection then
    dataCollection = cmgOperation4.gangSkillCategories
    if dataCollection then
      dataCollection = ipairs
      text = cmgOperation4.gangSkillCategories
      dataCollection, text, dataCollection2, workingValue6 = dataCollection(text)
      for stringHelper, number in dataCollection, text, dataCollection2, workingValue6 do
        mathHelper = number.id
        if mathHelper == localValue3 then
          workingValue2 = number.title
          break
        end
      end
    end
  end
  dataCollection = CMG
  dataCollection = dataCollection.uiSendMessage
  text = {}
  text.action = "GANG_OPEN_SKILL_TREE"
  dataCollection2 = {}
  dataCollection2.categoryId = localValue3
  dataCollection2.categoryTitle = workingValue2
  dataCollection2.points = localValue5
  dataCollection2.nodes = localValue6
  dataCollection2.edges = localValue7
  dataCollection2.selectedNodeId = workingValue20
  text.payload = dataCollection2
  dataCollection(text)
  dataCollection = {}
  return dataCollection
end
text4(text6, text7)

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.gangCachedData
  if localValue1 then
    localValue2 = localValue1.id
    if localValue2 then
      goto continueAtStep9
    end
  end
  localValue2 = nil
  ::continueAtStep9::
  return localValue2
end
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgCreateRank"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = text4
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "dc44c30fb0"
    localValue4 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "dc44c30fb0".
    localValue2(localValue3, localValue4)
  end
  localValue2 = {}
  return localValue2
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgDeleteRank"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = text4
  localValue2 = localValue2()
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.rankName
  end
  if localValue2 then
    localValue4 = type
    localValue5 = localValue3
    localValue4 = localValue4(localValue5)
    if "string" == localValue4 then
      localValue4 = TriggerServerEvent
      localValue5 = "be906f2085"
      localValue6 = localValue2
      localValue7 = localValue3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "be906f2085".
      localValue4(localValue5, localValue6, localValue7)
    end
  end
  localValue4 = {}
  return localValue4
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgChangeRank"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6
  localValue2 = text4
  localValue2 = localValue2()
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = tonumber
    localValue4 = localValue1.userId
    localValue3 = localValue3(localValue4)
  end
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.rankName
  end
  if localValue2 and localValue3 then
    localValue5 = type
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if "string" == localValue5 then
      localValue5 = TriggerServerEvent
      localValue6 = "a310f50e5f"
      localValue7 = localValue2
      workingValue16 = localValue3
      dataCollection6 = localValue4
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a310f50e5f".
      localValue5(localValue6, localValue7, workingValue16, dataCollection6)
    end
  end
  localValue5 = {}
  return localValue5
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgSetClockPoint"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = text4
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue2 = localValue2()
    localValue3 = TriggerServerEvent
    localValue4 = "3bcedbf249"
    localValue5 = localValue1
    localValue6 = {}
    localValue7 = localValue2.x
    localValue6.x = localValue7
    localValue7 = localValue2.y
    localValue6.y = localValue7
    localValue7 = localValue2.z
    localValue6.z = localValue7
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3bcedbf249".
    localValue3(localValue4, localValue5, localValue6)
  end
  localValue2 = {}
  return localValue2
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgClockOn"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = text4
  localValue1 = localValue1()
  if localValue1 then
    localValue2 = TriggerServerEvent
    localValue3 = "6db7399c62"
    localValue4 = localValue1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6db7399c62".
    localValue2(localValue3, localValue4)
  end
  localValue2 = {}
  return localValue2
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgClockOff"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "1117763922"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1117763922".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangOrgSaveRankOutfit"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection
  localValue2 = text4
  localValue2 = localValue2()
  localValue3 = localValue1 or localValue3
  if localValue1 then
    localValue3 = localValue1.rankName
  end
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.update
    localValue4 = true == localValue4
  end
  if localValue1 then
    localValue5 = tonumber
    localValue6 = localValue1.outfitId
    localValue5 = localValue5(localValue6)
    if localValue5 then
      goto continueAtStep21
    end
  end
  localValue5 = 1
  ::continueAtStep21::
  localValue6 = CMG
  localValue6 = localValue6.getGangRankOutfitSlotMax
  localValue6 = localValue6()
  if localValue5 < 1 or localValue5 > localValue6 then
    localValue7 = {}
    return localValue7
  end
  if localValue2 then
    localValue7 = type
    workingValue16 = localValue3
    localValue7 = localValue7(workingValue16)
    if "string" == localValue7 then
      localValue7 = TriggerServerEvent
      workingValue16 = "63443bd729"
      dataCollection6 = localValue2
      workingValue20 = localValue3
      workingValue2 = localValue4
      dataCollection = localValue5
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "63443bd729".
      localValue7(workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection)
    end
  end
  localValue7 = {}
  return localValue7
end
text6(text7, workingValue7)
text6 = CMG
text6 = text6.uiRegisterCallback
text7 = "gangBuySkillNode"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue16
  localValue3 = localValue1 or nil
  if localValue1 then
    localValue3 = localValue1.categoryId
  end
  localValue4 = localValue1 or localValue4
  if localValue1 then
    localValue4 = localValue1.nodeId
  end
  localValue5 = type
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  if "string" == localValue5 then
    localValue5 = type
    localValue6 = localValue4
    localValue5 = localValue5(localValue6)
    if "string" == localValue5 then
      goto continueAtStep25
    end
  end
  if localValue2 then
    localValue5 = localValue2
    localValue6 = {}
    localValue6.ok = false
    localValue5(localValue6)
  end
  return
  ::continueAtStep25::
  localValue5 = TriggerServerEvent
  localValue6 = "ddad9cd813"
  localValue7 = localValue3
  workingValue16 = localValue4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ddad9cd813".
  localValue5(localValue6, localValue7, workingValue16)
  if localValue2 then
    localValue5 = localValue2
    localValue6 = {}
    localValue6.ok = true
    localValue5(localValue6)
  end
  localValue5 = {}
  return localValue5
end
text6(text7, workingValue7)
text6 = RegisterNetEvent
text7 = "e1bb552050"
-- Beginner: this function handles network event "e1bb552050".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue7(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local workingValue16, dataCollection6, workingValue20, workingValue2, dataCollection, text
  workingValue16 = CMG
  workingValue16 = workingValue16.gangCachedData
  if workingValue16 then
    workingValue16 = CMG
    workingValue16 = workingValue16.gangCachedData
    workingValue16.gangPublicSkillPoints = localValue1
    workingValue16 = CMG
    workingValue16 = workingValue16.gangCachedData
    dataCollection6 = localValue7 or dataCollection6
    if not localValue7 then
      dataCollection6 = 0
    end
    workingValue16.gangRpSkillPoints = dataCollection6
    workingValue16 = CMG
    workingValue16 = workingValue16.gangCachedData
    workingValue16.gangPerksUnlocked = localValue2
    if nil ~= localValue3 then
      workingValue16 = CMG
      workingValue16 = workingValue16.gangCachedData
      workingValue16.gangPublicLevel = localValue3
    end
    if nil ~= localValue4 then
      workingValue16 = CMG
      workingValue16 = workingValue16.gangCachedData
      workingValue16.gangPublicXp = localValue4
    end
    if nil ~= localValue5 then
      workingValue16 = CMG
      workingValue16 = workingValue16.gangCachedData
      workingValue16.gangRpLevel = localValue5
    end
    if nil ~= localValue6 then
      workingValue16 = CMG
      workingValue16 = workingValue16.gangCachedData
      workingValue16.gangRpXp = localValue6
    end
  end
  workingValue16 = CMG
  workingValue16 = workingValue16.gangNuiOpen
  if workingValue16 then
    workingValue16 = CMG
    workingValue16 = workingValue16.gangViewedSkillCategory
    if "gang_rp" == workingValue16 then
      if localValue7 then
        goto continueAtStep51
        dataCollection6 = localValue7 or dataCollection6
      end
      dataCollection6 = 0
      if dataCollection6 then
        goto continueAtStep51
      end
    end
    dataCollection6 = localValue1
    ::continueAtStep51::
    workingValue20 = CMG
    workingValue20 = workingValue20.uiSendMessage
    workingValue2 = {}
    workingValue2.action = "GANG_UPDATE_SKILL_TREE"
    dataCollection = {}
    dataCollection.points = dataCollection6
    text = CMG
    text = text.getClientGangMaxMemberLimit
    text = text()
    dataCollection.maxMemberLimit = text
    text = CMG
    text = text.getClientGangDepositFeeDisplayPercent
    text = text()
    dataCollection.depositFeePercent = text

    -- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
    function text()
      local localValue12, localValue22, iterator, dataCollection4, workingValue10, workingValue12, workingValue14, dataCollection5
      localValue12 = {}
      localValue22 = pairs
      iterator = localValue2
      if not iterator then
        iterator = {}
      end
      localValue22, iterator, dataCollection4, workingValue10 = localValue22(iterator)
      for workingValue12 in localValue22, iterator, dataCollection4, workingValue10 do
        workingValue14 = #localValue12
        workingValue14 = workingValue14 + 1
        dataCollection5 = {}
        dataCollection5.id = workingValue12
        dataCollection5.unlocked = true
        localValue12[workingValue14] = dataCollection5
      end
      return localValue12
    end
    text = text()
    dataCollection.nodes = text
    workingValue2.payload = dataCollection
    workingValue20(workingValue2)
    workingValue20 = Citizen
    workingValue20 = workingValue20.SetTimeout
    workingValue2 = 0

    -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
    function dataCollection()
      local localValue12, localValue22
      localValue12 = workingValue5
      localValue12()
    end
    workingValue20(workingValue2, dataCollection)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e1bb552050".
text6(text7, workingValue7)

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3
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
      goto continueAtStep32
    end
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = cmgOperation
  localValue1 = localValue1 - localValue2
  if localValue1 < 100 then
    return
  end
  localValue1 = tCMG
  localValue1 = localValue1.isInComa
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  cmgOperation = localValue1
  localValue1 = eventHandler
  localValue1()
  ::continueAtStep32::
end
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = text6
  localValue3 = "Gang NUI Key Controls"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(workingValue7)
