--[[
    LEVEL 1 BEGINNER GUIDE — Ranks
    ===================================

    File: cmg/prod/client/crime/cl_ranks.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Ranks feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 22
      * Background threads: 0
      * Always-running loops: 1
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
local dataCollection, workingValue3, cmgOperation, text6, dataCollection4, dataCollection6, dataCollection7, rageUiOperation6, eventHandler, text8, rageUiOperation, text, text2, rageUiOperation3, rageUiOperation4, text4, text5
dataCollection = {}
workingValue3 = nil
cmgOperation = CMG
cmgOperation.gangOrgClientState = nil
cmgOperation = CMG
cmgOperation = cmgOperation.registerDevMenuState
text6 = "GangOrg"
dataCollection4 = {}
dataCollection4.drawDebug = false
cmgOperation = cmgOperation(text6, dataCollection4)

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, workingValue4, tableHelper, number9, number
  localValue2 = {}
  if localValue1 then
    iterator = pairs
    cmgOperation2 = localValue1
    iterator, cmgOperation2, cmgOperation3, cmgOperation4 = iterator(cmgOperation2)
    for cmgOperation5, workingValue4 in iterator, cmgOperation2, cmgOperation3, cmgOperation4 do
      tableHelper = type
      number9 = cmgOperation5
      tableHelper = tableHelper(number9)
      if "number" == tableHelper and workingValue4 then
        tableHelper = table
        tableHelper = tableHelper.insert
        number9 = localValue2
        number = cmgOperation5
        tableHelper(number9, number)
      end
    end
  end
  iterator = table
  iterator = iterator.sort
  cmgOperation2 = localValue2

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue12, localValue22) ===
  function cmgOperation3(localValue12, localValue22)
    local localValue3
    localValue3 = localValue12 < localValue22
    return localValue3
  end
  iterator(cmgOperation2, cmgOperation3)
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2
  if not localValue1 then
    localValue2 = {}
    return localValue2
  end
  localValue2 = localValue1.components
  if localValue2 then
    localValue2 = {}
    localValue2[1] = localValue1
    return localValue2
  end
  return localValue1
end
dataCollection6 = {}
dataCollection7 = {}
dataCollection6.blips = dataCollection7
dataCollection7 = {}
dataCollection6.markets = dataCollection7
dataCollection7 = {}
dataCollection6.areas = dataCollection7
dataCollection6.currentOrg = -1

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, workingValue4, tableHelper, number9, number, number2, number3, stateFlag, number4, dataCollection3, number5
  localValue1 = pairs
  localValue2 = dataCollection6.blips
  localValue1, localValue2, iterator, cmgOperation2 = localValue1(localValue2)
  for cmgOperation3, cmgOperation4 in localValue1, localValue2, iterator, cmgOperation2 do
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.removeBlip
    workingValue4 = cmgOperation4
    cmgOperation5(workingValue4)
  end
  localValue1 = pairs
  localValue2 = dataCollection6.markets
  localValue1, localValue2, iterator, cmgOperation2 = localValue1(localValue2)
  for cmgOperation3, cmgOperation4 in localValue1, localValue2, iterator, cmgOperation2 do
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.removeMarker
    workingValue4 = cmgOperation4
    cmgOperation5(workingValue4)
  end
  localValue1 = pairs
  localValue2 = dataCollection6.areas
  localValue1, localValue2, iterator, cmgOperation2 = localValue1(localValue2)
  for cmgOperation3, cmgOperation4 in localValue1, localValue2, iterator, cmgOperation2 do
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.removeArea
    workingValue4 = cmgOperation4
    cmgOperation5(workingValue4)
  end
  localValue1 = {}
  dataCollection6.blips = localValue1
  localValue1 = {}
  dataCollection6.markets = localValue1
  localValue1 = {}
  dataCollection6.areas = localValue1
  localValue1 = CMG
  localValue1 = localValue1.gangOrgClientState
  localValue2 = CMG
  localValue2 = localValue2.getGangId
  localValue2 = localValue2()
  if localValue1 then
    iterator = localValue1.hasOrgPack
    if true == iterator then
      iterator = localValue1.isActiveGangContext
      if iterator then
        iterator = localValue1.clockOnPoint
        if iterator and localValue2 then
          goto continueAtStep62
        end
      end
    end
  end
  return
  ::continueAtStep62::
  iterator = localValue1.clockOnPoint
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.gangCachedData
  if cmgOperation2 then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.gangCachedData
    cmgOperation2 = cmgOperation2.id
    if cmgOperation2 == localValue2 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.gangCachedData
      cmgOperation2 = cmgOperation2.name
      if cmgOperation2 then
        goto continueAtStep78
      end
    end
  end
  cmgOperation2 = "Gang"
  ::continueAtStep78::
  cmgOperation3 = tCMG
  cmgOperation3 = cmgOperation3.addMarker
  cmgOperation4 = iterator.x
  cmgOperation5 = iterator.y
  workingValue4 = iterator.z
  workingValue4 = workingValue4 - 1
  tableHelper = 1.0
  number9 = 1.0
  number = 1.0
  number2 = 20
  number3 = 255
  stateFlag = 90
  number4 = 200
  dataCollection3 = 50
  number5 = 1
  cmgOperation3 = cmgOperation3(cmgOperation4, cmgOperation5, workingValue4, tableHelper, number9, number, number2, number3, stateFlag, number4, dataCollection3, number5)
  cmgOperation4 = tCMG
  cmgOperation4 = cmgOperation4.addBlip
  cmgOperation5 = iterator.x
  workingValue4 = iterator.y
  tableHelper = iterator.z
  tableHelper = tableHelper - 1
  number9 = 366
  number = 2
  number2 = cmgOperation2
  number3 = 0.7
  stateFlag = true
  cmgOperation4 = cmgOperation4(cmgOperation5, workingValue4, tableHelper, number9, number, number2, number3, stateFlag)
  cmgOperation5 = localValue2
  workingValue4 = CMG
  workingValue4 = workingValue4.createArea
  tableHelper = string
  tableHelper = tableHelper.format
  number9 = "gang_org_clockon_%s"
  number = cmgOperation5
  tableHelper = tableHelper(number9, number)
  number9 = vector3
  number = iterator.x
  number2 = iterator.y
  number3 = iterator.z
  number9 = number9(number, number2, number3)
  number = 1.5
  number2 = 3.0

  -- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
  function number3()
    local localValue12, localValue22, localValue3, localValue4, dataCollection5
    localValue12 = cmgOperation5
    dataCollection6.currentOrg = localValue12
    localValue12 = RageUI
    localValue12 = localValue12.Visible
    localValue22 = RMenu
    localValue3 = localValue22
    localValue22 = localValue22.Get
    localValue4 = "organisations"
    dataCollection5 = "clockon"
    -- Beginner: result below is menu.
    localValue22 = localValue22(localValue3, localValue4, dataCollection5)
    localValue3 = true
    localValue12(localValue22, localValue3)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
  function stateFlag()
    local localValue12, localValue22, localValue3, localValue4, dataCollection5
    localValue12 = RageUI
    localValue12 = localValue12.Visible
    localValue22 = RMenu
    localValue3 = localValue22
    localValue22 = localValue22.Get
    localValue4 = "organisations"
    dataCollection5 = "clockon"
    -- Beginner: result below is menu.
    localValue22 = localValue22(localValue3, localValue4, dataCollection5)
    localValue3 = false
    localValue12(localValue22, localValue3)
  end

  -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
  function number4()
    local localValue12, localValue22
  end
  dataCollection3 = {}
  workingValue4 = workingValue4(tableHelper, number9, number, number2, number3, stateFlag, number4, dataCollection3)
  tableHelper = table
  tableHelper = tableHelper.insert
  number9 = dataCollection6.blips
  number = cmgOperation4
  tableHelper(number9, number)
  tableHelper = table
  tableHelper = tableHelper.insert
  number9 = dataCollection6.markets
  number = cmgOperation3
  tableHelper(number9, number)
  tableHelper = table
  tableHelper = tableHelper.insert
  number9 = dataCollection6.areas
  number = workingValue4
  tableHelper(number9, number)
end
rageUiOperation6 = RMenu
rageUiOperation6 = rageUiOperation6.Add
eventHandler = "organisations"
text8 = "clockon"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text = ""
text2 = "Organisations Clock-On"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text4 = "cmg_orgs"
text5 = "cmg_orgs"
rageUiOperation, text, text2, rageUiOperation3, rageUiOperation4, text4, text5 = rageUiOperation(text, text2, rageUiOperation3, rageUiOperation4, text4, text5)
rageUiOperation6(eventHandler, text8, rageUiOperation, text, text2, rageUiOperation3, rageUiOperation4, text4, text5)
rageUiOperation6 = RageUI
rageUiOperation6 = rageUiOperation6.CreateWhile
eventHandler = 1.0
text8 = RMenu
rageUiOperation = text8
text8 = text8.Get
text = "organisations"
text2 = "clockon"
-- Beginner: result below is menu.
text8 = text8(rageUiOperation, text, text2)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  iterator = localValue2
  localValue2 = localValue2.Get
  cmgOperation2 = "organisations"
  cmgOperation3 = "clockon"
  -- Beginner: result below is menu.
  localValue2 = localValue2(iterator, cmgOperation2, cmgOperation3)
  iterator = true
  cmgOperation2 = true
  cmgOperation3 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
  function cmgOperation4()
    local localValue12, localValue22, localValue3, localValue4, dataCollection5, rageUiOperation5, text7, workingValue5, workingValue6, workingValue7, workingValue, rageUiOperation2, stringHelper, text3, dataCollection2, stateFlag2, workingValue2
    localValue12 = dataCollection6.currentOrg
    if not localValue12 or -1 == localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~Organisation not found."
      localValue22(localValue3)
      return
    end
    localValue22 = CMG
    localValue22 = localValue22.getGangId
    localValue22 = localValue22()
    if localValue22 ~= localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~You do not have permission to clock on to this organisation."
      localValue22(localValue3)
      return
    end
    localValue22 = workingValue3
    if localValue22 == localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~g~You are clocked on."
      localValue22(localValue3)
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      localValue3 = "Clock Off"
      localValue4 = ""
      dataCollection5 = {}
      dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiOperation5 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
      function text7(localValue13, localValue23, localValue32)
        local serverEventCall, playerPed, stateFlag3, number6, number7, number8
        if localValue32 then
          serverEventCall = TriggerServerEvent
          playerPed = "89494969a3"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "89494969a3".
          serverEventCall(playerPed)
          serverEventCall = nil
          workingValue3 = serverEventCall
          serverEventCall = SetPedComponentVariation
          playerPed = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          playerPed = playerPed()
          stateFlag3 = 11
          number6 = 0
          number7 = 0
          number8 = 0
          serverEventCall(playerPed, stateFlag3, number6, number7, number8)
          serverEventCall = TriggerEvent
          playerPed = "e892eba4b7"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e892eba4b7".
          serverEventCall(playerPed)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue3, localValue4, dataCollection5, rageUiOperation5, text7)
    else
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~You are not currently clocked on."
      localValue22(localValue3)
      localValue22 = dataCollection4
      localValue3 = dataCollection
      localValue3 = localValue3[localValue12]
      localValue22 = localValue22(localValue3)
      localValue3 = text6
      localValue4 = localValue22
      localValue3 = localValue3(localValue4)
      localValue4 = CMG
      localValue4 = localValue4.getGangRankOutfitSlotMax
      localValue4 = localValue4()
      dataCollection5 = {}
      rageUiOperation5 = ipairs
      text7 = localValue3
      rageUiOperation5, text7, workingValue5, workingValue6 = rageUiOperation5(text7)
      for workingValue7, workingValue in rageUiOperation5, text7, workingValue5, workingValue6 do
        if workingValue <= localValue4 then
          rageUiOperation2 = #dataCollection5
          rageUiOperation2 = rageUiOperation2 + 1
          dataCollection5[rageUiOperation2] = workingValue
        end
      end
      localValue3 = dataCollection5
      rageUiOperation5 = #localValue3
      if 0 == rageUiOperation5 then
        rageUiOperation5 = RageUI
        rageUiOperation5 = rageUiOperation5.Separator
        text7 = "~r~No outfits available."
        rageUiOperation5(text7)
      else
        rageUiOperation5 = ipairs
        text7 = localValue3
        rageUiOperation5, text7, workingValue5, workingValue6 = rageUiOperation5(text7)
        for workingValue7, workingValue in rageUiOperation5, text7, workingValue5, workingValue6 do
          rageUiOperation2 = RageUI
          rageUiOperation2 = rageUiOperation2.ButtonWithStyle
          stringHelper = string
          stringHelper = stringHelper.format
          text3 = "Clock On (Outfit %s)"
          dataCollection2 = workingValue
          stringHelper = stringHelper(text3, dataCollection2)
          text3 = ""
          dataCollection2 = {}
          dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag2 = true

          -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue23, localValue32) ===
          function workingValue2(localValue13, localValue23, localValue32)
            local serverEventCall, playerPed, stateFlag3
            if localValue32 then
              serverEventCall = tCMG
              serverEventCall = serverEventCall.setCustomization
              stateFlag3 = workingValue
              playerPed = localValue22
              playerPed = playerPed[stateFlag3]
              stateFlag3 = true
              serverEventCall(playerPed, stateFlag3)
              serverEventCall = TriggerServerEvent
              playerPed = "4cf1535b7c"
              stateFlag3 = localValue12
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4cf1535b7c".
              serverEventCall(playerPed, stateFlag3)
              serverEventCall = localValue12
              workingValue3 = serverEventCall
              serverEventCall = localValue12
              dataCollection6.currentOrg = serverEventCall
              serverEventCall = TriggerEvent
              playerPed = "f7b3a54a8f"
              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f7b3a54a8f".
              serverEventCall(playerPed)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          rageUiOperation2(stringHelper, text3, dataCollection2, stateFlag2, workingValue2)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
  function cmgOperation5()
    local localValue12, localValue22
  end
  localValue1(localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5)
end
rageUiOperation6(eventHandler, text8, rageUiOperation, text)
rageUiOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = workingValue3
  localValue1 = nil ~= localValue1
  return localValue1
end
rageUiOperation6.isClientClockedOnOrganisation = eventHandler

-- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue1, localValue2) ===
function rageUiOperation6(localValue1, localValue2)
  local iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, workingValue4, tableHelper, number9, number, number2, number3
  if not localValue2 then
    iterator = false
    return iterator
  end
  iterator = GetPedDrawableVariation
  cmgOperation2 = localValue1
  cmgOperation3 = 4
  iterator = iterator(cmgOperation2, cmgOperation3)
  cmgOperation2 = GetPedDrawableVariation
  cmgOperation3 = localValue1
  cmgOperation4 = 11
  cmgOperation2 = cmgOperation2(cmgOperation3, cmgOperation4)

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue12) ===
  function cmgOperation3(localValue12)
    local localValue22, localValue3, localValue4, dataCollection5, rageUiOperation5, text7, workingValue5, workingValue6, workingValue7, workingValue
    if localValue12 then
      localValue22 = localValue12.components
      if localValue22 then
        goto continueAtStep8
      end
    end
    localValue22 = false
    return localValue22
    ::continueAtStep8::
    localValue22 = localValue12.components
    localValue22 = localValue22[4]
    localValue3 = localValue12.components
    localValue3 = localValue3[11]
    if not localValue22 or not localValue3 then
      localValue4 = false
      return localValue4
    end
    localValue4 = GetPedDrawableGlobalIndexFromCollection
    dataCollection5 = localValue1
    rageUiOperation5 = 4
    text7 = localValue22.collectionName
    workingValue5 = localValue22.collectionIndex
    localValue4 = localValue4(dataCollection5, rageUiOperation5, text7, workingValue5)
    dataCollection5 = GetPedDrawableGlobalIndexFromCollection
    rageUiOperation5 = localValue1
    text7 = 11
    workingValue5 = localValue3.collectionName
    workingValue6 = localValue3.collectionIndex
    dataCollection5 = dataCollection5(rageUiOperation5, text7, workingValue5, workingValue6)
    rageUiOperation5 = cmgOperation.drawDebug
    if rageUiOperation5 then
      rageUiOperation5 = CMG
      rageUiOperation5 = rageUiOperation5.drawDebugText
      text7 = "Top: %s vs %s | Legs: %s vs %s"
      workingValue5 = cmgOperation2
      workingValue6 = dataCollection5
      workingValue7 = iterator
      workingValue = localValue4
      rageUiOperation5(text7, workingValue5, workingValue6, workingValue7, workingValue)
    end
    rageUiOperation5 = iterator
    rageUiOperation5 = rageUiOperation5 == localValue4
    return rageUiOperation5
  end
  cmgOperation4 = localValue2.components
  if cmgOperation4 then
    cmgOperation4 = cmgOperation3
    cmgOperation5 = localValue2
    return cmgOperation4(cmgOperation5)
  end
  cmgOperation4 = pairs
  cmgOperation5 = localValue2
  cmgOperation4, cmgOperation5, workingValue4, tableHelper = cmgOperation4(cmgOperation5)
  for number9, number in cmgOperation4, cmgOperation5, workingValue4, tableHelper do
    number2 = cmgOperation3
    number3 = number
    number2 = number2(number3)
    if number2 then
      number2 = true
      return number2
    end
  end
  cmgOperation4 = false
  return cmgOperation4
end
eventHandler = RegisterNetEvent
text8 = "656095f1f0"
-- Beginner: this function handles network event "656095f1f0".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2
  localValue2 = localValue1 or nil
  if not localValue1 then
    localValue2 = {}
  end
  dataCollection = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "656095f1f0".
eventHandler(text8, rageUiOperation)
eventHandler = RegisterNetEvent
text8 = "6a730425f2"
-- Beginner: this function handles network event "6a730425f2".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local iterator
  if not localValue1 then
    return
  end
  iterator = dataCollection
  iterator[localValue1] = localValue2
end
eventHandler(text8, rageUiOperation)
eventHandler = RegisterNetEvent
text8 = "33422a179e"
-- Beginner: this function handles network event "33422a179e".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33422a179e".
eventHandler(text8, rageUiOperation)
eventHandler = RegisterNetEvent
text8 = "78494c1664"
-- Beginner: this function handles network event "78494c1664".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, workingValue4, tableHelper
  if not localValue1 then
    localValue2 = CMG
    localValue2.gangOrgClientState = nil
    localValue2 = nil
    workingValue3 = localValue2
    localValue2 = TriggerEvent
    iterator = "238e25c639"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
    localValue2(iterator)
    localValue2 = dataCollection7
    localValue2()
    return
  end
  localValue2 = localValue1.hasOrgPack
  if false == localValue2 then
    localValue2 = CMG
    localValue2.gangOrgClientState = localValue1
  else
    localValue2 = localValue1.hasOrgPack
    if true == localValue2 then
      localValue2 = CMG
      localValue2.gangOrgClientState = localValue1
    else
      localValue2 = CMG
      localValue2 = localValue2.gangOrgClientState
      if not localValue2 then
        localValue2 = {}
      end
      iterator = CMG
      cmgOperation2 = {}
      iterator.gangOrgClientState = cmgOperation2
      iterator = pairs
      cmgOperation2 = localValue2
      iterator, cmgOperation2, cmgOperation3, cmgOperation4 = iterator(cmgOperation2)
      for cmgOperation5, workingValue4 in iterator, cmgOperation2, cmgOperation3, cmgOperation4 do
        tableHelper = CMG
        tableHelper = tableHelper.gangOrgClientState
        tableHelper[cmgOperation5] = workingValue4
      end
      iterator = pairs
      cmgOperation2 = localValue1
      iterator, cmgOperation2, cmgOperation3, cmgOperation4 = iterator(cmgOperation2)
      for cmgOperation5, workingValue4 in iterator, cmgOperation2, cmgOperation3, cmgOperation4 do
        tableHelper = CMG
        tableHelper = tableHelper.gangOrgClientState
        tableHelper[cmgOperation5] = workingValue4
      end
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.gangOrgClientState
  if localValue2 then
    iterator = localValue2.hasOrgPack
    if false == iterator then
      iterator = nil
      workingValue3 = iterator
  end
  elseif localValue2 then
    iterator = localValue2.isClockedOn
    if iterator then
      iterator = localValue2.clockedGangId
      if iterator then
        iterator = localValue2.clockedGangId
        workingValue3 = iterator
    end
    else
      iterator = localValue2.isClockedOn
      if false == iterator then
        iterator = nil
        workingValue3 = iterator
      end
    end
  end
  iterator = TriggerEvent
  cmgOperation2 = "238e25c639"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
  iterator(cmgOperation2)
  iterator = dataCollection7
  iterator()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "78494c1664".
eventHandler(text8, rageUiOperation)
eventHandler = Citizen
eventHandler = eventHandler.CreateThread

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4, cmgOperation5, workingValue4, tableHelper, number9, number
  while true do
    localValue1 = cmgOperation.drawDebug
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.drawDebugText
      localValue2 = "Clocked On: %s (GangID: %s)"
      iterator = workingValue3
      iterator = not iterator
      iterator = not iterator
      cmgOperation2 = workingValue3
      if not cmgOperation2 then
        cmgOperation2 = "N/A"
      end
      localValue1(localValue2, iterator, cmgOperation2)
    end
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = nil
    iterator = pairs
    cmgOperation2 = dataCollection
    iterator, cmgOperation2, cmgOperation3, cmgOperation4 = iterator(cmgOperation2)
    for cmgOperation5, workingValue4 in iterator, cmgOperation2, cmgOperation3, cmgOperation4 do
      tableHelper = rageUiOperation6
      number9 = localValue1
      number = workingValue4
      tableHelper = tableHelper(number9, number)
      if tableHelper then
        localValue2 = cmgOperation5
        break
      end
    end
    if localValue2 then
      iterator = workingValue3
      if not iterator then
        iterator = CMG
        iterator = iterator.showGangNuiNotify
        cmgOperation2 = true
        cmgOperation3 = "You have been clocked on to your gang rank outfit."
        iterator(cmgOperation2, cmgOperation3)
        iterator = TriggerServerEvent
        cmgOperation2 = "4cf1535b7c"
        cmgOperation3 = localValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4cf1535b7c".
        iterator(cmgOperation2, cmgOperation3)
        workingValue3 = localValue2
        iterator = TriggerEvent
        cmgOperation2 = "f7b3a54a8f"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f7b3a54a8f".
        iterator(cmgOperation2)
    end
    elseif not localValue2 then
      iterator = workingValue3
      if iterator then
        iterator = TriggerServerEvent
        cmgOperation2 = "89494969a3"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "89494969a3".
        iterator(cmgOperation2)
        iterator = nil
        workingValue3 = iterator
        iterator = TriggerEvent
        cmgOperation2 = "e892eba4b7"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e892eba4b7".
        iterator(cmgOperation2)
        iterator = CMG
        iterator = iterator.showGangNuiNotify
        cmgOperation2 = false
        cmgOperation3 = "You have been clocked off after removing your rank outfit."
        iterator(cmgOperation2, cmgOperation3)
      end
    end
    iterator = Wait
    cmgOperation2 = cmgOperation.drawDebug
    if cmgOperation2 then
      cmgOperation2 = 0
      if cmgOperation2 then
        goto continueAtStep78
      end
    end
    cmgOperation2 = 10000
    ::continueAtStep78::
    iterator(cmgOperation2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(text8)
eventHandler = CMG
eventHandler = eventHandler.registerDevMenuItems
text8 = "GangOrg"

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "View Debug"
  iterator = "Displays outfit clock debug"
  cmgOperation2 = cmgOperation.drawDebug
  cmgOperation3 = {}

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue12, localValue22, localValue3, localValue4) ===
  function cmgOperation4(localValue12, localValue22, localValue3, localValue4)
    cmgOperation.drawDebug = localValue4
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, iterator, cmgOperation2, cmgOperation3, cmgOperation4)
end
eventHandler(text8, rageUiOperation)
