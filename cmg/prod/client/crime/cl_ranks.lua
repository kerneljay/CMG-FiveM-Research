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
local dataTable, workValue3, cmgCall, textValue6, dataTable4, dataTable6, dataTable7, rageUiCall6, eventRegistration, textValue8, rageUiCall, textValue, textValue2, rageUiCall3, rageUiCall4, textValue4, textValue5
dataTable = {}
workValue3 = nil
cmgCall = CMG
cmgCall.gangOrgClientState = nil
cmgCall = CMG
cmgCall = cmgCall.registerDevMenuState
textValue6 = "GangOrg"
dataTable4 = {}
dataTable4.drawDebug = false
cmgCall = cmgCall(textValue6, dataTable4)

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5, workValue4, tableHelper, numberValue9, numberValue
  arg2 = {}
  if arg1 then
    iterator = pairs
    cmgCall2 = arg1
    iterator, cmgCall2, cmgCall3, cmgCall4 = iterator(cmgCall2)
    for cmgCall5, workValue4 in iterator, cmgCall2, cmgCall3, cmgCall4 do
      tableHelper = type
      numberValue9 = cmgCall5
      tableHelper = tableHelper(numberValue9)
      if "number" == tableHelper and workValue4 then
        tableHelper = table
        tableHelper = tableHelper.insert
        numberValue9 = arg2
        numberValue = cmgCall5
        tableHelper(numberValue9, numberValue)
      end
    end
  end
  iterator = table
  iterator = iterator.sort
  cmgCall2 = arg2

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg12, arg22) ===
  function cmgCall3(arg12, arg22)
    local arg3
    arg3 = arg12 < arg22
    return arg3
  end
  iterator(cmgCall2, cmgCall3)
  return arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2
  if not arg1 then
    arg2 = {}
    return arg2
  end
  arg2 = arg1.components
  if arg2 then
    arg2 = {}
    arg2[1] = arg1
    return arg2
  end
  return arg1
end
dataTable6 = {}
dataTable7 = {}
dataTable6.blips = dataTable7
dataTable7 = {}
dataTable6.markets = dataTable7
dataTable7 = {}
dataTable6.areas = dataTable7
dataTable6.currentOrg = -1

-- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
function dataTable7()
  local arg1, arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5, workValue4, tableHelper, numberValue9, numberValue, numberValue2, numberValue3, flag, numberValue4, dataTable3, numberValue5
  arg1 = pairs
  arg2 = dataTable6.blips
  arg1, arg2, iterator, cmgCall2 = arg1(arg2)
  for cmgCall3, cmgCall4 in arg1, arg2, iterator, cmgCall2 do
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.removeBlip
    workValue4 = cmgCall4
    cmgCall5(workValue4)
  end
  arg1 = pairs
  arg2 = dataTable6.markets
  arg1, arg2, iterator, cmgCall2 = arg1(arg2)
  for cmgCall3, cmgCall4 in arg1, arg2, iterator, cmgCall2 do
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.removeMarker
    workValue4 = cmgCall4
    cmgCall5(workValue4)
  end
  arg1 = pairs
  arg2 = dataTable6.areas
  arg1, arg2, iterator, cmgCall2 = arg1(arg2)
  for cmgCall3, cmgCall4 in arg1, arg2, iterator, cmgCall2 do
    cmgCall5 = tCMG
    cmgCall5 = cmgCall5.removeArea
    workValue4 = cmgCall4
    cmgCall5(workValue4)
  end
  arg1 = {}
  dataTable6.blips = arg1
  arg1 = {}
  dataTable6.markets = arg1
  arg1 = {}
  dataTable6.areas = arg1
  arg1 = CMG
  arg1 = arg1.gangOrgClientState
  arg2 = CMG
  arg2 = arg2.getGangId
  arg2 = arg2()
  if arg1 then
    iterator = arg1.hasOrgPack
    if true == iterator then
      iterator = arg1.isActiveGangContext
      if iterator then
        iterator = arg1.clockOnPoint
        if iterator and arg2 then
          goto flow_label_62
        end
      end
    end
  end
  return
  ::flow_label_62::
  iterator = arg1.clockOnPoint
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.gangCachedData
  if cmgCall2 then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.gangCachedData
    cmgCall2 = cmgCall2.id
    if cmgCall2 == arg2 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.gangCachedData
      cmgCall2 = cmgCall2.name
      if cmgCall2 then
        goto flow_label_78
      end
    end
  end
  cmgCall2 = "Gang"
  ::flow_label_78::
  cmgCall3 = tCMG
  cmgCall3 = cmgCall3.addMarker
  cmgCall4 = iterator.x
  cmgCall5 = iterator.y
  workValue4 = iterator.z
  workValue4 = workValue4 - 1
  tableHelper = 1.0
  numberValue9 = 1.0
  numberValue = 1.0
  numberValue2 = 20
  numberValue3 = 255
  flag = 90
  numberValue4 = 200
  dataTable3 = 50
  numberValue5 = 1
  cmgCall3 = cmgCall3(cmgCall4, cmgCall5, workValue4, tableHelper, numberValue9, numberValue, numberValue2, numberValue3, flag, numberValue4, dataTable3, numberValue5)
  cmgCall4 = tCMG
  cmgCall4 = cmgCall4.addBlip
  cmgCall5 = iterator.x
  workValue4 = iterator.y
  tableHelper = iterator.z
  tableHelper = tableHelper - 1
  numberValue9 = 366
  numberValue = 2
  numberValue2 = cmgCall2
  numberValue3 = 0.7
  flag = true
  cmgCall4 = cmgCall4(cmgCall5, workValue4, tableHelper, numberValue9, numberValue, numberValue2, numberValue3, flag)
  cmgCall5 = arg2
  workValue4 = CMG
  workValue4 = workValue4.createArea
  tableHelper = string
  tableHelper = tableHelper.format
  numberValue9 = "gang_org_clockon_%s"
  numberValue = cmgCall5
  tableHelper = tableHelper(numberValue9, numberValue)
  numberValue9 = vector3
  numberValue = iterator.x
  numberValue2 = iterator.y
  numberValue3 = iterator.z
  numberValue9 = numberValue9(numberValue, numberValue2, numberValue3)
  numberValue = 1.5
  numberValue2 = 3.0

  -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
  function numberValue3()
    local arg12, arg22, arg3, arg4, dataTable5
    arg12 = cmgCall5
    dataTable6.currentOrg = arg12
    arg12 = RageUI
    arg12 = arg12.Visible
    arg22 = RMenu
    arg3 = arg22
    arg22 = arg22.Get
    arg4 = "organisations"
    dataTable5 = "clockon"
    -- Beginner: result below is menu.
    arg22 = arg22(arg3, arg4, dataTable5)
    arg3 = true
    arg12(arg22, arg3)
  end

  -- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
  function flag()
    local arg12, arg22, arg3, arg4, dataTable5
    arg12 = RageUI
    arg12 = arg12.Visible
    arg22 = RMenu
    arg3 = arg22
    arg22 = arg22.Get
    arg4 = "organisations"
    dataTable5 = "clockon"
    -- Beginner: result below is menu.
    arg22 = arg22(arg3, arg4, dataTable5)
    arg3 = false
    arg12(arg22, arg3)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue4; parameters: none) ===
  function numberValue4()
    local arg12, arg22
  end
  dataTable3 = {}
  workValue4 = workValue4(tableHelper, numberValue9, numberValue, numberValue2, numberValue3, flag, numberValue4, dataTable3)
  tableHelper = table
  tableHelper = tableHelper.insert
  numberValue9 = dataTable6.blips
  numberValue = cmgCall4
  tableHelper(numberValue9, numberValue)
  tableHelper = table
  tableHelper = tableHelper.insert
  numberValue9 = dataTable6.markets
  numberValue = cmgCall3
  tableHelper(numberValue9, numberValue)
  tableHelper = table
  tableHelper = tableHelper.insert
  numberValue9 = dataTable6.areas
  numberValue = workValue4
  tableHelper(numberValue9, numberValue)
end
rageUiCall6 = RMenu
rageUiCall6 = rageUiCall6.Add
eventRegistration = "organisations"
textValue8 = "clockon"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue = ""
textValue2 = "Organisations Clock-On"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue4 = "cmg_orgs"
textValue5 = "cmg_orgs"
rageUiCall, textValue, textValue2, rageUiCall3, rageUiCall4, textValue4, textValue5 = rageUiCall(textValue, textValue2, rageUiCall3, rageUiCall4, textValue4, textValue5)
rageUiCall6(eventRegistration, textValue8, rageUiCall, textValue, textValue2, rageUiCall3, rageUiCall4, textValue4, textValue5)
rageUiCall6 = RageUI
rageUiCall6 = rageUiCall6.CreateWhile
eventRegistration = 1.0
textValue8 = RMenu
rageUiCall = textValue8
textValue8 = textValue8.Get
textValue = "organisations"
textValue2 = "clockon"
-- Beginner: result below is menu.
textValue8 = textValue8(rageUiCall, textValue, textValue2)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  iterator = arg2
  arg2 = arg2.Get
  cmgCall2 = "organisations"
  cmgCall3 = "clockon"
  -- Beginner: result below is menu.
  arg2 = arg2(iterator, cmgCall2, cmgCall3)
  iterator = true
  cmgCall2 = true
  cmgCall3 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
  function cmgCall4()
    local arg12, arg22, arg3, arg4, dataTable5, rageUiCall5, textValue7, workValue5, workValue6, workValue7, workValue, rageUiCall2, stringHelper, textValue3, dataTable2, flag2, workValue2
    arg12 = dataTable6.currentOrg
    if not arg12 or -1 == arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~Organisation not found."
      arg22(arg3)
      return
    end
    arg22 = CMG
    arg22 = arg22.getGangId
    arg22 = arg22()
    if arg22 ~= arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~You do not have permission to clock on to this organisation."
      arg22(arg3)
      return
    end
    arg22 = workValue3
    if arg22 == arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~g~You are clocked on."
      arg22(arg3)
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      arg3 = "Clock Off"
      arg4 = ""
      dataTable5 = {}
      dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiCall5 = true

      -- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg13, arg23, arg32) ===
      function textValue7(arg13, arg23, arg32)
        local serverEventCall, playerPed, flag3, numberValue6, numberValue7, numberValue8
        if arg32 then
          serverEventCall = TriggerServerEvent
          playerPed = "89494969a3"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "89494969a3".
          serverEventCall(playerPed)
          serverEventCall = nil
          workValue3 = serverEventCall
          serverEventCall = SetPedComponentVariation
          playerPed = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          playerPed = playerPed()
          flag3 = 11
          numberValue6 = 0
          numberValue7 = 0
          numberValue8 = 0
          serverEventCall(playerPed, flag3, numberValue6, numberValue7, numberValue8)
          serverEventCall = TriggerEvent
          playerPed = "e892eba4b7"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e892eba4b7".
          serverEventCall(playerPed)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg3, arg4, dataTable5, rageUiCall5, textValue7)
    else
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~You are not currently clocked on."
      arg22(arg3)
      arg22 = dataTable4
      arg3 = dataTable
      arg3 = arg3[arg12]
      arg22 = arg22(arg3)
      arg3 = textValue6
      arg4 = arg22
      arg3 = arg3(arg4)
      arg4 = CMG
      arg4 = arg4.getGangRankOutfitSlotMax
      arg4 = arg4()
      dataTable5 = {}
      rageUiCall5 = ipairs
      textValue7 = arg3
      rageUiCall5, textValue7, workValue5, workValue6 = rageUiCall5(textValue7)
      for workValue7, workValue in rageUiCall5, textValue7, workValue5, workValue6 do
        if workValue <= arg4 then
          rageUiCall2 = #dataTable5
          rageUiCall2 = rageUiCall2 + 1
          dataTable5[rageUiCall2] = workValue
        end
      end
      arg3 = dataTable5
      rageUiCall5 = #arg3
      if 0 == rageUiCall5 then
        rageUiCall5 = RageUI
        rageUiCall5 = rageUiCall5.Separator
        textValue7 = "~r~No outfits available."
        rageUiCall5(textValue7)
      else
        rageUiCall5 = ipairs
        textValue7 = arg3
        rageUiCall5, textValue7, workValue5, workValue6 = rageUiCall5(textValue7)
        for workValue7, workValue in rageUiCall5, textValue7, workValue5, workValue6 do
          rageUiCall2 = RageUI
          rageUiCall2 = rageUiCall2.ButtonWithStyle
          stringHelper = string
          stringHelper = stringHelper.format
          textValue3 = "Clock On (Outfit %s)"
          dataTable2 = workValue
          stringHelper = stringHelper(textValue3, dataTable2)
          textValue3 = ""
          dataTable2 = {}
          dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag2 = true

          -- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg13, arg23, arg32) ===
          function workValue2(arg13, arg23, arg32)
            local serverEventCall, playerPed, flag3
            if arg32 then
              serverEventCall = tCMG
              serverEventCall = serverEventCall.setCustomization
              flag3 = workValue
              playerPed = arg22
              playerPed = playerPed[flag3]
              flag3 = true
              serverEventCall(playerPed, flag3)
              serverEventCall = TriggerServerEvent
              playerPed = "4cf1535b7c"
              flag3 = arg12
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4cf1535b7c".
              serverEventCall(playerPed, flag3)
              serverEventCall = arg12
              workValue3 = serverEventCall
              serverEventCall = arg12
              dataTable6.currentOrg = serverEventCall
              serverEventCall = TriggerEvent
              playerPed = "f7b3a54a8f"
              -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f7b3a54a8f".
              serverEventCall(playerPed)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          rageUiCall2(stringHelper, textValue3, dataTable2, flag2, workValue2)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
  function cmgCall5()
    local arg12, arg22
  end
  arg1(arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5)
end
rageUiCall6(eventRegistration, textValue8, rageUiCall, textValue)
rageUiCall6 = CMG

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  arg1 = workValue3
  arg1 = nil ~= arg1
  return arg1
end
rageUiCall6.isClientClockedOnOrganisation = eventRegistration

-- === HELPER FUNCTION (decompiler name: rageUiCall6; parameters: arg1, arg2) ===
function rageUiCall6(arg1, arg2)
  local iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5, workValue4, tableHelper, numberValue9, numberValue, numberValue2, numberValue3
  if not arg2 then
    iterator = false
    return iterator
  end
  iterator = GetPedDrawableVariation
  cmgCall2 = arg1
  cmgCall3 = 4
  iterator = iterator(cmgCall2, cmgCall3)
  cmgCall2 = GetPedDrawableVariation
  cmgCall3 = arg1
  cmgCall4 = 11
  cmgCall2 = cmgCall2(cmgCall3, cmgCall4)

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg12) ===
  function cmgCall3(arg12)
    local arg22, arg3, arg4, dataTable5, rageUiCall5, textValue7, workValue5, workValue6, workValue7, workValue
    if arg12 then
      arg22 = arg12.components
      if arg22 then
        goto flow_label_8
      end
    end
    arg22 = false
    return arg22
    ::flow_label_8::
    arg22 = arg12.components
    arg22 = arg22[4]
    arg3 = arg12.components
    arg3 = arg3[11]
    if not arg22 or not arg3 then
      arg4 = false
      return arg4
    end
    arg4 = GetPedDrawableGlobalIndexFromCollection
    dataTable5 = arg1
    rageUiCall5 = 4
    textValue7 = arg22.collectionName
    workValue5 = arg22.collectionIndex
    arg4 = arg4(dataTable5, rageUiCall5, textValue7, workValue5)
    dataTable5 = GetPedDrawableGlobalIndexFromCollection
    rageUiCall5 = arg1
    textValue7 = 11
    workValue5 = arg3.collectionName
    workValue6 = arg3.collectionIndex
    dataTable5 = dataTable5(rageUiCall5, textValue7, workValue5, workValue6)
    rageUiCall5 = cmgCall.drawDebug
    if rageUiCall5 then
      rageUiCall5 = CMG
      rageUiCall5 = rageUiCall5.drawDebugText
      textValue7 = "Top: %s vs %s | Legs: %s vs %s"
      workValue5 = cmgCall2
      workValue6 = dataTable5
      workValue7 = iterator
      workValue = arg4
      rageUiCall5(textValue7, workValue5, workValue6, workValue7, workValue)
    end
    rageUiCall5 = iterator
    rageUiCall5 = rageUiCall5 == arg4
    return rageUiCall5
  end
  cmgCall4 = arg2.components
  if cmgCall4 then
    cmgCall4 = cmgCall3
    cmgCall5 = arg2
    return cmgCall4(cmgCall5)
  end
  cmgCall4 = pairs
  cmgCall5 = arg2
  cmgCall4, cmgCall5, workValue4, tableHelper = cmgCall4(cmgCall5)
  for numberValue9, numberValue in cmgCall4, cmgCall5, workValue4, tableHelper do
    numberValue2 = cmgCall3
    numberValue3 = numberValue
    numberValue2 = numberValue2(numberValue3)
    if numberValue2 then
      numberValue2 = true
      return numberValue2
    end
  end
  cmgCall4 = false
  return cmgCall4
end
eventRegistration = RegisterNetEvent
textValue8 = "656095f1f0"
-- Beginner: this function handles network event "656095f1f0".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2
  arg2 = arg1 or nil
  if not arg1 then
    arg2 = {}
  end
  dataTable = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "656095f1f0".
eventRegistration(textValue8, rageUiCall)
eventRegistration = RegisterNetEvent
textValue8 = "6a730425f2"
-- Beginner: this function handles network event "6a730425f2".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1, arg2) ===
function rageUiCall(arg1, arg2)
  local iterator
  if not arg1 then
    return
  end
  iterator = dataTable
  iterator[arg1] = arg2
end
eventRegistration(textValue8, rageUiCall)
eventRegistration = RegisterNetEvent
textValue8 = "33422a179e"
-- Beginner: this function handles network event "33422a179e".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33422a179e".
eventRegistration(textValue8, rageUiCall)
eventRegistration = RegisterNetEvent
textValue8 = "78494c1664"
-- Beginner: this function handles network event "78494c1664".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5, workValue4, tableHelper
  if not arg1 then
    arg2 = CMG
    arg2.gangOrgClientState = nil
    arg2 = nil
    workValue3 = arg2
    arg2 = TriggerEvent
    iterator = "238e25c639"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
    arg2(iterator)
    arg2 = dataTable7
    arg2()
    return
  end
  arg2 = arg1.hasOrgPack
  if false == arg2 then
    arg2 = CMG
    arg2.gangOrgClientState = arg1
  else
    arg2 = arg1.hasOrgPack
    if true == arg2 then
      arg2 = CMG
      arg2.gangOrgClientState = arg1
    else
      arg2 = CMG
      arg2 = arg2.gangOrgClientState
      if not arg2 then
        arg2 = {}
      end
      iterator = CMG
      cmgCall2 = {}
      iterator.gangOrgClientState = cmgCall2
      iterator = pairs
      cmgCall2 = arg2
      iterator, cmgCall2, cmgCall3, cmgCall4 = iterator(cmgCall2)
      for cmgCall5, workValue4 in iterator, cmgCall2, cmgCall3, cmgCall4 do
        tableHelper = CMG
        tableHelper = tableHelper.gangOrgClientState
        tableHelper[cmgCall5] = workValue4
      end
      iterator = pairs
      cmgCall2 = arg1
      iterator, cmgCall2, cmgCall3, cmgCall4 = iterator(cmgCall2)
      for cmgCall5, workValue4 in iterator, cmgCall2, cmgCall3, cmgCall4 do
        tableHelper = CMG
        tableHelper = tableHelper.gangOrgClientState
        tableHelper[cmgCall5] = workValue4
      end
    end
  end
  arg2 = CMG
  arg2 = arg2.gangOrgClientState
  if arg2 then
    iterator = arg2.hasOrgPack
    if false == iterator then
      iterator = nil
      workValue3 = iterator
  end
  elseif arg2 then
    iterator = arg2.isClockedOn
    if iterator then
      iterator = arg2.clockedGangId
      if iterator then
        iterator = arg2.clockedGangId
        workValue3 = iterator
    end
    else
      iterator = arg2.isClockedOn
      if false == iterator then
        iterator = nil
        workValue3 = iterator
      end
    end
  end
  iterator = TriggerEvent
  cmgCall2 = "238e25c639"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "238e25c639".
  iterator(cmgCall2)
  iterator = dataTable7
  iterator()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "78494c1664".
eventRegistration(textValue8, rageUiCall)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, iterator, cmgCall2, cmgCall3, cmgCall4, cmgCall5, workValue4, tableHelper, numberValue9, numberValue
  while true do
    arg1 = cmgCall.drawDebug
    if arg1 then
      arg1 = CMG
      arg1 = arg1.drawDebugText
      arg2 = "Clocked On: %s (GangID: %s)"
      iterator = workValue3
      iterator = not iterator
      iterator = not iterator
      cmgCall2 = workValue3
      if not cmgCall2 then
        cmgCall2 = "N/A"
      end
      arg1(arg2, iterator, cmgCall2)
    end
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = nil
    iterator = pairs
    cmgCall2 = dataTable
    iterator, cmgCall2, cmgCall3, cmgCall4 = iterator(cmgCall2)
    for cmgCall5, workValue4 in iterator, cmgCall2, cmgCall3, cmgCall4 do
      tableHelper = rageUiCall6
      numberValue9 = arg1
      numberValue = workValue4
      tableHelper = tableHelper(numberValue9, numberValue)
      if tableHelper then
        arg2 = cmgCall5
        break
      end
    end
    if arg2 then
      iterator = workValue3
      if not iterator then
        iterator = CMG
        iterator = iterator.showGangNuiNotify
        cmgCall2 = true
        cmgCall3 = "You have been clocked on to your gang rank outfit."
        iterator(cmgCall2, cmgCall3)
        iterator = TriggerServerEvent
        cmgCall2 = "4cf1535b7c"
        cmgCall3 = arg2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4cf1535b7c".
        iterator(cmgCall2, cmgCall3)
        workValue3 = arg2
        iterator = TriggerEvent
        cmgCall2 = "f7b3a54a8f"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f7b3a54a8f".
        iterator(cmgCall2)
    end
    elseif not arg2 then
      iterator = workValue3
      if iterator then
        iterator = TriggerServerEvent
        cmgCall2 = "89494969a3"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "89494969a3".
        iterator(cmgCall2)
        iterator = nil
        workValue3 = iterator
        iterator = TriggerEvent
        cmgCall2 = "e892eba4b7"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e892eba4b7".
        iterator(cmgCall2)
        iterator = CMG
        iterator = iterator.showGangNuiNotify
        cmgCall2 = false
        cmgCall3 = "You have been clocked off after removing your rank outfit."
        iterator(cmgCall2, cmgCall3)
      end
    end
    iterator = Wait
    cmgCall2 = cmgCall.drawDebug
    if cmgCall2 then
      cmgCall2 = 0
      if cmgCall2 then
        goto flow_label_78
      end
    end
    cmgCall2 = 10000
    ::flow_label_78::
    iterator(cmgCall2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue8)
eventRegistration = CMG
eventRegistration = eventRegistration.registerDevMenuItems
textValue8 = "GangOrg"

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, iterator, cmgCall2, cmgCall3, cmgCall4
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "View Debug"
  iterator = "Displays outfit clock debug"
  cmgCall2 = cmgCall.drawDebug
  cmgCall3 = {}

  -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg12, arg22, arg3, arg4) ===
  function cmgCall4(arg12, arg22, arg3, arg4)
    cmgCall.drawDebug = arg4
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, iterator, cmgCall2, cmgCall3, cmgCall4)
end
eventRegistration(textValue8, rageUiCall)
