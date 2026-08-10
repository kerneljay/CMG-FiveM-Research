--[[
    Beginner Guide: cl_statistics.lua
    =================================

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
    BEGINNER GUIDE — Statistics
    ===========================

    File: cmg/prod/client/misc/cl_statistics.lua
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

    Commands/command-like entries found:
      * openstats

    Network/hash identifiers found: 8
      They are intentionally left unchanged because matching server code may use them.
      * a11a363123
      * 8eb276deaa
      * db58871c70
      * e1fbddf59d
      * 3c185160b0
      * 056ad3eab8
      * bcc476284c
      * ca1eb91cc9

    Named framework/network events found:
      * CMGUI:setStatistics

    Example player-facing text in this file:
      * closeStatsMenu
      * Open the stats menu
      * Press ~INPUT_DF5476D8~ to toggle the Statistics Menu.
      * Statistics Menu
      * Press ~INPUT_CONTEXT~ to switch to 

]]
local dataTable, dataTable5, dataTable7, dataTable9, dataTable10, dataTable11, workValue11, workValue12, flag3, eventRegistration, cmgCall, cmgCall2, cmgCall3, flag, vector3Builder, dataTable3, dataTable4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue10, numberValue12, numberValue14, numberValue15, numberValue17, textValue, vector4Builder, vector4Builder2, dataTable6, numberValue20, cmgCall4, textValue2, stringHelper, numberValue21, numberValue22, workValue7, workValue8, workValue9, dataTable8, workValue10
dataTable = {}
dataTable5 = {}
dataTable7 = {}
dataTable9 = {}
dataTable10 = {}
dataTable11 = {}
workValue11 = nil
workValue12 = nil
flag3 = false
eventRegistration = RegisterNetEvent
cmgCall = "CMGUI:setStatistics"
-- Beginner: this function handles network event "CMGUI:setStatistics".
function cmgCall2(arg1, arg2, arg3)
  local cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.uiSendMessage
  cmgCall6 = {}
  cmgCall6.type = "SET_STATS"
  dataTable12 = {}
  dataTable12.stats = arg1
  dataTable12.userId = arg2
  cmgCall7 = math
  cmgCall7 = cmgCall7.ceil
  flag2 = arg3 / 15
  cmgCall7 = cmgCall7(flag2)
  dataTable12.pageCount = cmgCall7
  cmgCall6.info = dataTable12
  cmgCall5(cmgCall6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGUI:setStatistics".
eventRegistration(cmgCall, cmgCall2)
function eventRegistration()
  local arg1, arg2, arg3, cmgCall5
  arg1 = flag3
  arg1 = not arg1
  flag3 = arg1
  arg1 = flag3
  if arg1 then
    arg1 = CMG
    arg1 = arg1.hideHud
    arg1()
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = true
    arg3 = true
    cmgCall5 = false
    arg1(arg2, arg3, cmgCall5)
    arg1 = TriggerScreenblurFadeIn
    arg2 = 0.0
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.uiSendMessage
    arg2 = {}
    arg2.type = "APP_TOGGLE"
    arg2.app = "stats"
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.showHud
    arg1()
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = false
    arg3 = false
    cmgCall5 = false
    arg1(arg2, arg3, cmgCall5)
    arg1 = TriggerScreenblurFadeOut
    arg2 = 0.0
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.uiSendMessage
    arg2 = {}
    arg2.type = "APP_TOGGLE"
    arg2.app = ""
    arg1(arg2)
  end
end
cmgCall = RegisterCommand
cmgCall2 = "openstats"
-- Beginner: this function is the command handler for "openstats".
function cmgCall3()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isHudVehicleCursorEnabled
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = GetEntityHealth
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is health.
  arg1 = arg1(arg2)
  if arg1 <= 102 then
    return
  end
  arg1 = eventRegistration
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
end
flag = false
-- Beginner: Register a chat/console command. Event/command: "openstats".
cmgCall(cmgCall2, cmgCall3, flag)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
cmgCall2 = "closeStatsMenu"
function cmgCall3()
  local arg1, arg2
  arg1 = eventRegistration
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
end
cmgCall(cmgCall2, cmgCall3)
cmgCall = RegisterKeyMapping
cmgCall2 = "openstats"
cmgCall3 = "Open the stats menu"
flag = "keyboard"
vector3Builder = "F9"
-- Beginner: Bind a command to a keyboard/controller key.
cmgCall(cmgCall2, cmgCall3, flag, vector3Builder)
function cmgCall()
  local arg1, arg2, arg3, cmgCall5
  arg1 = flag3
  if arg1 then
    arg1 = DisableAllControlActions
    arg2 = 0
    arg1(arg2)
    arg1 = EnableControlAction
    arg2 = 0
    arg3 = 249
    cmgCall5 = true
    arg1(arg2, arg3, cmgCall5)
    arg1 = CMG
    arg1 = arg1.isNewPlayer
    arg1 = arg1()
    if arg1 then
      arg1 = drawNativeNotification
      arg2 = "Press ~INPUT_DF5476D8~ to toggle the Statistics Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
cmgCall3 = cmgCall
flag = "Statistics Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(cmgCall3, flag)
function cmgCall2(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue
  arg2 = {}
  arg3 = pairs
  cmgCall5 = arg1
  arg3, cmgCall5, cmgCall6, dataTable12 = arg3(cmgCall5)
  for cmgCall7, flag2 in arg3, cmgCall5, cmgCall6, dataTable12 do
    tableHelper = table
    tableHelper = tableHelper.insert
    numberValue23 = arg2
    dataTable2 = {}
    workValue = flag2[1]
    dataTable2.user_id = workValue
    workValue = flag2[2]
    dataTable2.name = workValue
    workValue = flag2[3]
    dataTable2.playtime = workValue
    workValue = flag2[4]
    dataTable2.kills = workValue
    workValue = flag2[5]
    dataTable2.deaths = workValue
    workValue = flag2[6]
    dataTable2.headshots = workValue
    workValue = flag2[7]
    dataTable2.amount_robbed = workValue
    workValue = flag2[8]
    dataTable2.jailed_time = workValue
    workValue = flag2[9]
    dataTable2.arrests = workValue
    workValue = flag2[10]
    dataTable2.searches = workValue
    workValue = flag2[11]
    dataTable2.amount_fined = workValue
    workValue = flag2[12]
    dataTable2.money_seized = workValue
    workValue = flag2[13]
    dataTable2.revives = workValue
    workValue = flag2[14]
    dataTable2.bodybagged = workValue
    workValue = flag2[15]
    dataTable2.weed_sales = workValue
    workValue = flag2[16]
    dataTable2.cocaine_sales = workValue
    workValue = flag2[17]
    dataTable2.meth_sales = workValue
    workValue = flag2[18]
    dataTable2.heroin_sales = workValue
    workValue = flag2[19]
    dataTable2.lsd_sales = workValue
    workValue = flag2[20]
    dataTable2.copper_sales = workValue
    workValue = flag2[21]
    dataTable2.limestone_sales = workValue
    workValue = flag2[22]
    dataTable2.gold_sales = workValue
    workValue = flag2[23]
    dataTable2.diamond_sales = workValue
    workValue = flag2[24]
    dataTable2.fish_sales = workValue
    workValue = flag2[25]
    dataTable2.vigilante_money = workValue
    workValue = flag2[26]
    dataTable2.vigilante_arrests = workValue
    workValue = flag2[27]
    dataTable2.vigilante_largest_bounty = workValue
    workValue = flag2[28]
    dataTable2.wager_kills = workValue
    workValue = flag2[29]
    dataTable2.wager_deaths = workValue
    workValue = flag2[30]
    dataTable2.black_market_sales = workValue
    workValue = flag2[31]
    dataTable2.organ_kills = workValue
    workValue = flag2[32]
    dataTable2.organ_num_played = workValue
    workValue = flag2[33]
    dataTable2.organ_num_won = workValue
    workValue = flag2[34]
    dataTable2.organ_earned = workValue
    workValue = flag2[35]
    dataTable2.bloodmoney_kills = workValue
    workValue = flag2[36]
    dataTable2.bloodmoney_deaths = workValue
    workValue = flag2[37]
    dataTable2.bloodmoney_earned = workValue
    workValue = flag2[38]
    dataTable2.koth_wins = workValue
    workValue = flag2[39]
    dataTable2.koth_attempts = workValue
    workValue = flag2[40]
    dataTable2.wager_elo = workValue
    tableHelper(numberValue23, dataTable2)
  end
  return arg2
end
cmgCall3 = RegisterNetEvent
flag = "a11a363123"
-- Beginner: this function handles network event "a11a363123".
function vector3Builder(arg1, arg2)
  local arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2
  arg3 = cmgCall2
  cmgCall5 = arg1
  arg3 = arg3(cmgCall5)
  cmgCall5 = TriggerEvent
  cmgCall6 = "CMGUI:setStatistics"
  dataTable12 = arg3
  cmgCall7 = CMG
  cmgCall7 = cmgCall7.getClientUserId
  -- Beginner: result below is userId.
  cmgCall7 = cmgCall7()
  flag2 = arg2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMGUI:setStatistics".
  cmgCall5(cmgCall6, dataTable12, cmgCall7, flag2)
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.uiSendMessage
  cmgCall6 = {}
  cmgCall6.type = "SET_USER_STATS"
  dataTable12 = {}
  cmgCall7 = workValue11
  dataTable12.totalUserStats = cmgCall7
  cmgCall7 = workValue12
  dataTable12.monthlyUserStats = cmgCall7
  cmgCall6.info = dataTable12
  cmgCall5(cmgCall6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a11a363123".
cmgCall3(flag, vector3Builder)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
flag = "requestStatisticsPage"
function vector3Builder(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12
  arg2 = TriggerServerEvent
  arg3 = "8eb276deaa"
  cmgCall5 = arg1.sortingBy
  cmgCall6 = arg1.pageNumber
  dataTable12 = arg1.timeframe
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8eb276deaa".
  arg2(arg3, cmgCall5, cmgCall6, dataTable12)
end
cmgCall3(flag, vector3Builder)
function cmgCall3(arg1, arg2)
  local arg3, cmgCall5, cmgCall6
  arg3 = IsNamedRendertargetRegistered
  cmgCall5 = arg1
  arg3 = arg3(cmgCall5)
  if not arg3 then
    arg3 = RegisterNamedRendertarget
    cmgCall5 = arg1
    cmgCall6 = false
    arg3(cmgCall5, cmgCall6)
  end
  arg3 = IsNamedRendertargetLinked
  cmgCall5 = arg2
  arg3 = arg3(cmgCall5)
  if not arg3 then
    arg3 = LinkNamedRendertarget
    cmgCall5 = arg2
    arg3(cmgCall5)
  end
  arg3 = IsNamedRendertargetLinked
  cmgCall5 = arg2
  arg3 = arg3(cmgCall5)
  if arg3 then
    arg3 = GetNamedRendertargetRenderId
    cmgCall5 = arg1
    return arg3(cmgCall5)
  else
    arg3 = 0
    return arg3
  end
end
flag = {}
vector3Builder = {}
dataTable3 = 255
dataTable4 = 215
numberValue5 = 0
vector3Builder[1] = dataTable3
vector3Builder[2] = dataTable4
vector3Builder[3] = numberValue5
dataTable3 = {}
dataTable4 = 192
numberValue5 = 192
numberValue6 = 192
dataTable3[1] = dataTable4
dataTable3[2] = numberValue5
dataTable3[3] = numberValue6
dataTable4 = {}
numberValue5 = 140
numberValue6 = 120
numberValue7 = 83
dataTable4[1] = numberValue5
dataTable4[2] = numberValue6
dataTable4[3] = numberValue7
numberValue5 = {}
numberValue6 = 140
numberValue7 = 120
numberValue8 = 83
numberValue5[1] = numberValue6
numberValue5[2] = numberValue7
numberValue5[3] = numberValue8
numberValue6 = {}
numberValue7 = 140
numberValue8 = 120
numberValue10 = 83
numberValue6[1] = numberValue7
numberValue6[2] = numberValue8
numberValue6[3] = numberValue10
numberValue7 = {}
numberValue8 = 100
numberValue10 = 65
numberValue12 = 23
numberValue7[1] = numberValue8
numberValue7[2] = numberValue10
numberValue7[3] = numberValue12
numberValue8 = {}
numberValue10 = 100
numberValue12 = 65
numberValue14 = 23
numberValue8[1] = numberValue10
numberValue8[2] = numberValue12
numberValue8[3] = numberValue14
numberValue10 = {}
numberValue12 = 100
numberValue14 = 65
numberValue15 = 23
numberValue10[1] = numberValue12
numberValue10[2] = numberValue14
numberValue10[3] = numberValue15
numberValue12 = {}
numberValue14 = 100
numberValue15 = 65
numberValue17 = 23
numberValue12[1] = numberValue14
numberValue12[2] = numberValue15
numberValue12[3] = numberValue17
numberValue14 = {}
numberValue15 = 100
numberValue17 = 65
textValue = 23
numberValue14[1] = numberValue15
numberValue14[2] = numberValue17
numberValue14[3] = textValue
flag[1] = vector3Builder
flag[2] = dataTable3
flag[3] = dataTable4
flag[4] = numberValue5
flag[5] = numberValue6
flag[6] = numberValue7
flag[7] = numberValue8
flag[8] = numberValue10
flag[9] = numberValue12
flag[10] = numberValue14
vector3Builder = vector3
dataTable3 = 1602.1811181641
dataTable4 = 6444.9092773438
numberValue5 = 25.354776382446
vector3Builder = vector3Builder(dataTable3, dataTable4, numberValue5)
dataTable3 = 305134324
dataTable4 = 0
numberValue5 = 0
function numberValue6()
  local arg1, arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = dataTable3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CreateObject
  arg2 = dataTable3
  arg3 = vector3Builder.x
  cmgCall5 = vector3Builder.y
  cmgCall6 = vector3Builder.z
  dataTable12 = false
  cmgCall7 = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2)
  numberValue5 = arg1
  arg1 = SetModelAsNoLongerNeeded
  arg2 = dataTable3
  arg1(arg2)
  arg1 = SetEntityHeading
  arg2 = numberValue5
  arg3 = 300.0
  -- Beginner: Change the direction an entity is facing.
  arg1(arg2, arg3)
  arg1 = SetEntityLodDist
  arg2 = numberValue5
  arg3 = 75
  arg1(arg2, arg3)
  arg1 = cmgCall3
  arg2 = "cmgtv9"
  arg3 = dataTable3
  arg1 = arg1(arg2, arg3)
  dataTable4 = arg1
end
function numberValue7()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = numberValue5
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  numberValue5 = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  dataTable4 = arg1
end
function numberValue8(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13
  arg2 = arg1.distance
  if arg2 > 50.0 then
    return
  end
  arg2 = SetTextRenderId
  arg3 = dataTable4
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = GetConvar
  arg3 = "statsDisplayDeaths"
  cmgCall5 = "0"
  arg2 = arg2(arg3, cmgCall5)
  arg2 = "1" == arg2
  if arg2 then
    arg3 = DrawAdvancedText
    cmgCall5 = 0.6
    cmgCall6 = 0.0
    dataTable12 = 0.005
    cmgCall7 = 0.0028
    flag2 = 1.12
    tableHelper = "Top Deaths This Month"
    numberValue23 = 248
    dataTable2 = 246
    workValue = 240
    numberValue = 200
    numberValue2 = 4
    numberValue3 = 0
    arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  else
    arg3 = DrawAdvancedText
    cmgCall5 = 0.6
    cmgCall6 = 0.0
    dataTable12 = 0.005
    cmgCall7 = 0.0028
    flag2 = 1.12
    tableHelper = "Top Fraggers This Month"
    numberValue23 = 248
    dataTable2 = 246
    workValue = 240
    numberValue = 200
    numberValue2 = 4
    numberValue3 = 0
    arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  end
  arg3 = DrawAdvancedText
  cmgCall5 = 0.15
  cmgCall6 = 0.27
  dataTable12 = 0.005
  cmgCall7 = 0.0028
  flag2 = 0.5
  tableHelper = "Name"
  numberValue23 = 248
  dataTable2 = 246
  workValue = 240
  numberValue = 255
  numberValue2 = 4
  numberValue3 = 1
  arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  arg3 = DrawAdvancedText
  cmgCall5 = 0.5
  cmgCall6 = 0.27
  dataTable12 = 0.005
  cmgCall7 = 0.0028
  flag2 = 0.5
  tableHelper = "Perm ID"
  numberValue23 = 248
  dataTable2 = 246
  workValue = 240
  numberValue = 255
  numberValue2 = 4
  numberValue3 = 1
  arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  arg3 = DrawAdvancedText
  cmgCall5 = 0.72
  cmgCall6 = 0.27
  dataTable12 = 0.005
  cmgCall7 = 0.0028
  flag2 = 0.5
  if arg2 then
    tableHelper = "Deaths"
    if tableHelper then
      goto flow_label_93
    end
  end
  tableHelper = "Kills"
  ::flow_label_93::
  numberValue23 = 248
  dataTable2 = 246
  workValue = 240
  numberValue = 255
  numberValue2 = 4
  numberValue3 = 1
  arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  arg3 = DrawAdvancedText
  cmgCall5 = 0.9
  cmgCall6 = 0.27
  dataTable12 = 0.005
  cmgCall7 = 0.0028
  flag2 = 0.5
  tableHelper = "KD"
  numberValue23 = 248
  dataTable2 = 246
  workValue = 240
  numberValue = 255
  numberValue2 = 4
  numberValue3 = 1
  arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  arg3 = DrawRect
  cmgCall5 = 0.5
  cmgCall6 = 0.38
  dataTable12 = 0.95
  cmgCall7 = 0.005
  flag2 = 248
  tableHelper = 246
  numberValue23 = 240
  dataTable2 = 255
  arg3(cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2)
  if arg2 then
    arg3 = dataTable5
    if arg3 then
      goto flow_label_130
    end
  end
  arg3 = dataTable
  ::flow_label_130::
  cmgCall5 = pairs
  cmgCall6 = arg3
  cmgCall5, cmgCall6, dataTable12, cmgCall7 = cmgCall5(cmgCall6)
  for flag2, tableHelper in cmgCall5, cmgCall6, dataTable12, cmgCall7 do
    numberValue23 = flag
    numberValue23 = numberValue23[flag2]
    if numberValue23 and tableHelper then
      dataTable2 = DrawAdvancedText
      workValue = 0.15
      numberValue = 0.1 * flag2
      numberValue = 0.291 + numberValue
      numberValue2 = 0.005
      numberValue3 = 0.0028
      numberValue4 = 0.5
      workValue2 = tableHelper[1]
      workValue3 = numberValue23[1]
      workValue4 = numberValue23[2]
      workValue5 = numberValue23[3]
      numberValue9 = 255
      numberValue11 = 4
      numberValue13 = 1
      dataTable2(workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13)
      dataTable2 = DrawAdvancedText
      workValue = 0.5
      numberValue = 0.1 * flag2
      numberValue = 0.291 + numberValue
      numberValue2 = 0.005
      numberValue3 = 0.0028
      numberValue4 = 0.5
      workValue2 = tableHelper[2]
      workValue3 = numberValue23[1]
      workValue4 = numberValue23[2]
      workValue5 = numberValue23[3]
      numberValue9 = 255
      numberValue11 = 4
      numberValue13 = 1
      dataTable2(workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13)
      dataTable2 = DrawAdvancedText
      workValue = 0.72
      numberValue = 0.1 * flag2
      numberValue = 0.291 + numberValue
      numberValue2 = 0.005
      numberValue3 = 0.0028
      numberValue4 = 0.5
      workValue2 = tableHelper[3]
      workValue3 = numberValue23[1]
      workValue4 = numberValue23[2]
      workValue5 = numberValue23[3]
      numberValue9 = 255
      numberValue11 = 4
      numberValue13 = 1
      dataTable2(workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13)
      dataTable2 = DrawAdvancedText
      workValue = 0.9
      numberValue = 0.1 * flag2
      numberValue = 0.291 + numberValue
      numberValue2 = 0.005
      numberValue3 = 0.0028
      numberValue4 = 0.5
      workValue2 = tableHelper[4]
      workValue3 = numberValue23[1]
      workValue4 = numberValue23[2]
      workValue5 = numberValue23[3]
      numberValue9 = 255
      numberValue11 = 4
      numberValue13 = 1
      dataTable2(workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13)
    end
  end
  cmgCall5 = SetTextRenderId
  cmgCall6 = GetDefaultScriptRendertargetRenderId
  cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13 = cmgCall6()
  cmgCall5(cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13)
  cmgCall5 = SetScriptGfxDrawBehindPausemenu
  cmgCall6 = false
  cmgCall5(cmgCall6)
  cmgCall5 = arg1.distance
  cmgCall6 = 2.5
  if cmgCall5 < cmgCall6 then
    cmgCall5 = drawNativeNotification
    cmgCall6 = "Press ~INPUT_CONTEXT~ to switch to "
    if arg2 then
      dataTable12 = "kills"
      if dataTable12 then
        goto flow_label_230
      end
    end
    dataTable12 = "deaths"
    ::flow_label_230::
    cmgCall6 = cmgCall6 .. dataTable12
    -- Beginner: Show a GTA-style notification/help prompt.
    cmgCall5(cmgCall6)
    cmgCall5 = IsControlJustPressed
    cmgCall6 = 0
    dataTable12 = 51
    cmgCall5 = cmgCall5(cmgCall6, dataTable12)
    if cmgCall5 then
      cmgCall5 = TriggerServerEvent
      cmgCall6 = "db58871c70"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "db58871c70".
      cmgCall5(cmgCall6)
    end
  end
end
numberValue10 = CMG
numberValue10 = numberValue10.createArea
numberValue12 = "rebelTopFraggersTV"
numberValue14 = vector3Builder
numberValue15 = 100.0
numberValue17 = 500.0
textValue = numberValue6
vector4Builder = numberValue7
vector4Builder2 = numberValue8
dataTable6 = {}
-- Beginner: Create an interaction area around a world position.
numberValue10(numberValue12, numberValue14, numberValue15, numberValue17, textValue, vector4Builder, vector4Builder2, dataTable6)
numberValue10 = RegisterNetEvent
numberValue12 = "e1fbddf59d"
-- Beginner: this function handles network event "e1fbddf59d".
function numberValue14(arg1, arg2)
  dataTable = arg1
  dataTable5 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e1fbddf59d".
numberValue10(numberValue12, numberValue14)
numberValue10 = RegisterNetEvent
numberValue12 = "3c185160b0"
-- Beginner: this function handles network event "3c185160b0".
function numberValue14(arg1)
  local arg2
  dataTable11 = arg1
end
numberValue10(numberValue12, numberValue14)
-- Beginner: this function handles network event "3c185160b0".
function numberValue10(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = dataTable3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreateObject
  arg3 = dataTable3
  cmgCall5 = arg1.position
  cmgCall5 = cmgCall5.x
  cmgCall6 = arg1.position
  cmgCall6 = cmgCall6.y
  dataTable12 = arg1.position
  dataTable12 = dataTable12.z
  cmgCall7 = false
  flag2 = false
  tableHelper = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper)
  numberValue5 = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = dataTable3
  arg2(arg3)
  arg2 = SetEntityHeading
  arg3 = numberValue5
  cmgCall5 = arg1.position
  cmgCall5 = cmgCall5.w
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, cmgCall5)
  arg2 = SetEntityLodDist
  arg3 = numberValue5
  cmgCall5 = 75
  arg2(arg3, cmgCall5)
  arg2 = cmgCall3
  arg3 = "cmgtv9"
  cmgCall5 = dataTable3
  arg2 = arg2(arg3, cmgCall5)
  dataTable4 = arg2
end
function numberValue12()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = numberValue5
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  numberValue5 = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  dataTable4 = arg1
end
function numberValue14(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9
  arg2 = arg1.distance
  if not (arg2 > 50.0) then
    arg3 = arg1.type
    arg2 = dataTable11
    arg2 = arg2[arg3]
    if arg2 then
      goto flow_label_10
    end
  end
  return
  ::flow_label_10::
  arg2 = SetTextRenderId
  arg3 = dataTable4
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = DrawAdvancedText
  arg3 = 0.6
  cmgCall5 = 0.0
  cmgCall6 = 0.005
  dataTable12 = 0.0028
  cmgCall7 = 0.7
  flag2 = "Committed Employees"
  tableHelper = 248
  numberValue23 = 246
  dataTable2 = 240
  workValue = 200
  numberValue = 4
  numberValue2 = 0
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2)
  arg2 = DrawAdvancedText
  arg3 = 0.15
  cmgCall5 = 0.17
  cmgCall6 = 0.005
  dataTable12 = 0.0028
  cmgCall7 = 0.4
  flag2 = "Name"
  tableHelper = 248
  numberValue23 = 246
  dataTable2 = 240
  workValue = 255
  numberValue = 4
  numberValue2 = 1
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2)
  arg2 = DrawAdvancedText
  arg3 = 0.5
  cmgCall5 = 0.17
  cmgCall6 = 0.005
  dataTable12 = 0.0028
  cmgCall7 = 0.4
  flag2 = "Perm ID"
  tableHelper = 248
  numberValue23 = 246
  dataTable2 = 240
  workValue = 255
  numberValue = 4
  numberValue2 = 1
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2)
  arg2 = DrawAdvancedText
  arg3 = 0.72
  cmgCall5 = 0.17
  cmgCall6 = 0.005
  dataTable12 = 0.0028
  cmgCall7 = 0.4
  flag2 = "Level"
  tableHelper = 248
  numberValue23 = 246
  dataTable2 = 240
  workValue = 255
  numberValue = 4
  numberValue2 = 1
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2)
  arg2 = DrawAdvancedText
  arg3 = 0.9
  cmgCall5 = 0.17
  cmgCall6 = 0.005
  dataTable12 = 0.0028
  cmgCall7 = 0.4
  flag2 = "Current XP"
  tableHelper = 248
  numberValue23 = 246
  dataTable2 = 240
  workValue = 255
  numberValue = 4
  numberValue2 = 1
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2)
  arg2 = DrawRect
  arg3 = 0.5
  cmgCall5 = 0.26
  cmgCall6 = 0.95
  dataTable12 = 0.005
  cmgCall7 = 248
  flag2 = 246
  tableHelper = 240
  numberValue23 = 255
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23)
  arg2 = pairs
  cmgCall5 = arg1.type
  arg3 = dataTable11
  arg3 = arg3[cmgCall5]
  arg2, arg3, cmgCall5, cmgCall6 = arg2(arg3)
  for dataTable12, cmgCall7 in arg2, arg3, cmgCall5, cmgCall6 do
    flag2 = flag
    flag2 = flag2[dataTable12]
    if flag2 and cmgCall7 then
      tableHelper = DrawAdvancedText
      numberValue23 = 0.15
      dataTable2 = 0.07 * dataTable12
      dataTable2 = 0.205 + dataTable2
      workValue = 0.005
      numberValue = 0.0028
      numberValue2 = 0.34
      numberValue3 = cmgCall7[1]
      numberValue4 = flag2[1]
      workValue2 = flag2[2]
      workValue3 = flag2[3]
      workValue4 = 255
      workValue5 = 4
      numberValue9 = 1
      tableHelper(numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9)
      tableHelper = DrawAdvancedText
      numberValue23 = 0.5
      dataTable2 = 0.07 * dataTable12
      dataTable2 = 0.205 + dataTable2
      workValue = 0.005
      numberValue = 0.0028
      numberValue2 = 0.35
      numberValue3 = cmgCall7[2]
      numberValue4 = flag2[1]
      workValue2 = flag2[2]
      workValue3 = flag2[3]
      workValue4 = 255
      workValue5 = 4
      numberValue9 = 1
      tableHelper(numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9)
      tableHelper = DrawAdvancedText
      numberValue23 = 0.72
      dataTable2 = 0.07 * dataTable12
      dataTable2 = 0.205 + dataTable2
      workValue = 0.005
      numberValue = 0.0028
      numberValue2 = 0.35
      numberValue3 = cmgCall7[3]
      numberValue4 = flag2[1]
      workValue2 = flag2[2]
      workValue3 = flag2[3]
      workValue4 = 255
      workValue5 = 4
      numberValue9 = 1
      tableHelper(numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9)
      tableHelper = DrawAdvancedText
      numberValue23 = 0.9
      dataTable2 = 0.07 * dataTable12
      dataTable2 = 0.205 + dataTable2
      workValue = 0.005
      numberValue = 0.0028
      numberValue2 = 0.35
      numberValue3 = getMoneyStringFormatted
      numberValue4 = cmgCall7[4]
      numberValue3 = numberValue3(numberValue4)
      numberValue4 = flag2[1]
      workValue2 = flag2[2]
      workValue3 = flag2[3]
      workValue4 = 255
      workValue5 = 4
      numberValue9 = 1
      tableHelper(numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9)
    end
  end
  arg2 = SetTextRenderId
  arg3 = GetDefaultScriptRendertargetRenderId
  arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9 = arg3()
  arg2(arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = false
  arg2(arg3)
end
numberValue15 = {}
numberValue17 = {}
textValue = "cmg_trucking"
vector4Builder = vector4
vector4Builder2 = 857.7736328125
dataTable6 = -3190.0515625
numberValue20 = 5.593408203125
cmgCall4 = 89.6220703125
vector4Builder, vector4Builder2, dataTable6, numberValue20, cmgCall4, textValue2, stringHelper, numberValue21, numberValue22, workValue7, workValue8, workValue9, dataTable8, workValue10 = vector4Builder(vector4Builder2, dataTable6, numberValue20, cmgCall4)
numberValue17[1] = textValue
numberValue17[2] = vector4Builder
numberValue17[3] = vector4Builder2
numberValue17[4] = dataTable6
numberValue17[5] = numberValue20
numberValue17[6] = cmgCall4
numberValue17[7] = textValue2
numberValue17[8] = stringHelper
numberValue17[9] = numberValue21
numberValue17[10] = numberValue22
numberValue17[11] = workValue7
numberValue17[12] = workValue8
numberValue17[13] = workValue9
numberValue17[14] = dataTable8
numberValue17[15] = workValue10
textValue = {}
vector4Builder = "cmg_pilot"
vector4Builder2 = vector4
dataTable6 = -989.87800292969
numberValue20 = -2945.5913085938
cmgCall4 = 13.9296875
textValue2 = 60.27952575684
vector4Builder2, dataTable6, numberValue20, cmgCall4, textValue2, stringHelper, numberValue21, numberValue22, workValue7, workValue8, workValue9, dataTable8, workValue10 = vector4Builder2(dataTable6, numberValue20, cmgCall4, textValue2)
textValue[1] = vector4Builder
textValue[2] = vector4Builder2
textValue[3] = dataTable6
textValue[4] = numberValue20
textValue[5] = cmgCall4
textValue[6] = textValue2
textValue[7] = stringHelper
textValue[8] = numberValue21
textValue[9] = numberValue22
textValue[10] = workValue7
textValue[11] = workValue8
textValue[12] = workValue9
textValue[13] = dataTable8
textValue[14] = workValue10
numberValue15[1] = numberValue17
numberValue15[2] = textValue
numberValue17 = pairs
textValue = numberValue15
numberValue17, textValue, vector4Builder, vector4Builder2 = numberValue17(textValue)
for dataTable6, numberValue20 in numberValue17, textValue, vector4Builder, vector4Builder2 do
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.createArea
  textValue2 = "level_tv_"
  stringHelper = tostring
  numberValue21 = dataTable6
  stringHelper = stringHelper(numberValue21)
  textValue2 = textValue2 .. stringHelper
  stringHelper = numberValue20[2]
  stringHelper = stringHelper.xyz
  numberValue21 = 100.0
  numberValue22 = 500.0
  workValue7 = numberValue10
  workValue8 = numberValue12
  workValue9 = numberValue14
  dataTable8 = {}
  workValue10 = numberValue20[1]
  dataTable8.type = workValue10
  workValue10 = numberValue20[2]
  dataTable8.position = workValue10
  -- Beginner: Create an interaction area around a world position.
  cmgCall4(textValue2, stringHelper, numberValue21, numberValue22, workValue7, workValue8, workValue9, dataTable8)
end
numberValue17 = AddEventHandler
textValue = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function vector4Builder(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = DoesEntityExist
    arg3 = numberValue5
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = numberValue5
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
numberValue17(textValue, vector4Builder)
numberValue17 = vector3
textValue = 1460.5463867188
vector4Builder = 3573.5065429688
vector4Builder2 = 36.305820770264
numberValue17 = numberValue17(textValue, vector4Builder, vector4Builder2)
textValue = 0
vector4Builder = 0
function vector4Builder2()
  local arg1, arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = dataTable3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CreateObject
  arg2 = dataTable3
  arg3 = numberValue17.x
  cmgCall5 = numberValue17.y
  cmgCall6 = numberValue17.z
  dataTable12 = false
  cmgCall7 = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2)
  vector4Builder = arg1
  arg1 = SetModelAsNoLongerNeeded
  arg2 = dataTable3
  arg1(arg2)
  arg1 = SetEntityHeading
  arg2 = vector4Builder
  arg3 = 21.0
  -- Beginner: Change the direction an entity is facing.
  arg1(arg2, arg3)
  arg1 = SetEntityLodDist
  arg2 = vector4Builder
  arg3 = 75
  arg1(arg2, arg3)
  arg1 = cmgCall3
  arg2 = "cmgtv9"
  arg3 = dataTable3
  arg1 = arg1(arg2, arg3)
  textValue = arg1
end
function dataTable6()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = vector4Builder
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  vector4Builder = arg1
  arg1 = ReleaseNamedRendertarget
  arg2 = "cmgtv9"
  arg1(arg2)
  arg1 = 0
  textValue = arg1
end
function numberValue20(arg1)
  local arg2, arg3, cmgCall5, cmgCall6, dataTable12, cmgCall7, flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19
  arg2 = arg1.distance
  if arg2 > 50.0 then
    return
  end
  arg2 = SetTextRenderId
  arg3 = textValue
  arg2(arg3)
  arg2 = SetScriptGfxDrawOrder
  arg3 = 4
  arg2(arg3)
  arg2 = SetScriptGfxDrawBehindPausemenu
  arg3 = true
  arg2(arg3)
  arg2 = GetConvar
  arg3 = "statsWagersDisplayElo"
  cmgCall5 = "0"
  arg2 = arg2(arg3, cmgCall5)
  arg2 = "1" == arg2
  arg3 = not arg2
  cmgCall5 = nil
  cmgCall6 = nil
  dataTable12 = nil
  if arg2 then
    cmgCall5 = "Top ELO This Month"
    cmgCall6 = "ELO"
    dataTable12 = "kills"
  elseif arg3 then
    cmgCall5 = "Top Deaths This Month"
    cmgCall6 = "Deaths"
    dataTable12 = "ELO"
  else
    cmgCall5 = "Top Kills This Month"
    cmgCall6 = "Kills"
    dataTable12 = "deaths"
  end
  cmgCall7 = DrawAdvancedText
  flag2 = 0.6
  tableHelper = 0.0
  numberValue23 = 0.005
  dataTable2 = 0.0028
  workValue = 1.12
  numberValue = cmgCall5
  numberValue2 = 248
  numberValue3 = 246
  numberValue4 = 240
  workValue2 = 200
  workValue3 = 4
  workValue4 = 0
  cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4)
  cmgCall7 = DrawAdvancedText
  flag2 = 0.15
  tableHelper = 0.27
  numberValue23 = 0.005
  dataTable2 = 0.0028
  workValue = 0.5
  numberValue = "Name"
  numberValue2 = 248
  numberValue3 = 246
  numberValue4 = 240
  workValue2 = 255
  workValue3 = 4
  workValue4 = 1
  cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4)
  cmgCall7 = DrawAdvancedText
  flag2 = 0.5
  tableHelper = 0.27
  numberValue23 = 0.005
  dataTable2 = 0.0028
  workValue = 0.5
  numberValue = "Perm ID"
  numberValue2 = 248
  numberValue3 = 246
  numberValue4 = 240
  workValue2 = 255
  workValue3 = 4
  workValue4 = 1
  cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4)
  cmgCall7 = DrawAdvancedText
  if arg2 then
    flag2 = 0.85
    if flag2 then
      goto flow_label_97
    end
  end
  flag2 = 0.72
  ::flow_label_97::
  tableHelper = 0.27
  numberValue23 = 0.005
  dataTable2 = 0.0028
  workValue = 0.5
  numberValue = cmgCall6
  numberValue2 = 248
  numberValue3 = 246
  numberValue4 = 240
  workValue2 = 255
  workValue3 = 4
  workValue4 = 1
  cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4)
  if not arg2 then
    cmgCall7 = DrawAdvancedText
    flag2 = 0.9
    tableHelper = 0.27
    numberValue23 = 0.005
    dataTable2 = 0.0028
    workValue = 0.5
    numberValue = "KD"
    numberValue2 = 248
    numberValue3 = 246
    numberValue4 = 240
    workValue2 = 255
    workValue3 = 4
    workValue4 = 1
    cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4)
  end
  cmgCall7 = DrawRect
  flag2 = 0.5
  tableHelper = 0.38
  numberValue23 = 0.95
  dataTable2 = 0.005
  workValue = 248
  numberValue = 246
  numberValue2 = 240
  numberValue3 = 255
  cmgCall7(flag2, tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3)
  cmgCall7 = nil
  if arg2 then
    cmgCall7 = dataTable10
  elseif arg3 then
    cmgCall7 = dataTable9
  else
    cmgCall7 = dataTable7
  end
  flag2 = pairs
  tableHelper = cmgCall7
  flag2, tableHelper, numberValue23, dataTable2 = flag2(tableHelper)
  for workValue, numberValue in flag2, tableHelper, numberValue23, dataTable2 do
    numberValue2 = flag
    numberValue2 = numberValue2[workValue]
    if numberValue2 and numberValue then
      numberValue3 = DrawAdvancedText
      numberValue4 = 0.15
      workValue2 = 0.1 * workValue
      workValue2 = 0.291 + workValue2
      workValue3 = 0.005
      workValue4 = 0.0028
      workValue5 = 0.5
      numberValue9 = numberValue[1]
      numberValue11 = numberValue2[1]
      numberValue13 = numberValue2[2]
      workValue6 = numberValue2[3]
      numberValue16 = 255
      numberValue18 = 4
      numberValue19 = 1
      numberValue3(numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19)
      numberValue3 = DrawAdvancedText
      numberValue4 = 0.5
      workValue2 = 0.1 * workValue
      workValue2 = 0.291 + workValue2
      workValue3 = 0.005
      workValue4 = 0.0028
      workValue5 = 0.5
      numberValue9 = numberValue[2]
      numberValue11 = numberValue2[1]
      numberValue13 = numberValue2[2]
      workValue6 = numberValue2[3]
      numberValue16 = 255
      numberValue18 = 4
      numberValue19 = 1
      numberValue3(numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19)
      numberValue3 = DrawAdvancedText
      if arg2 then
        numberValue4 = 0.85
        if numberValue4 then
          goto flow_label_196
        end
      end
      numberValue4 = 0.72
      ::flow_label_196::
      workValue2 = 0.1 * workValue
      workValue2 = 0.291 + workValue2
      workValue3 = 0.005
      workValue4 = 0.0028
      workValue5 = 0.5
      numberValue9 = numberValue[3]
      numberValue11 = numberValue2[1]
      numberValue13 = numberValue2[2]
      workValue6 = numberValue2[3]
      numberValue16 = 255
      numberValue18 = 4
      numberValue19 = 1
      numberValue3(numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19)
      if not arg2 then
        numberValue3 = DrawAdvancedText
        numberValue4 = 0.9
        workValue2 = 0.1 * workValue
        workValue2 = 0.291 + workValue2
        workValue3 = 0.005
        workValue4 = 0.0028
        workValue5 = 0.5
        numberValue9 = numberValue[4]
        numberValue11 = numberValue2[1]
        numberValue13 = numberValue2[2]
        workValue6 = numberValue2[3]
        numberValue16 = 255
        numberValue18 = 4
        numberValue19 = 1
        numberValue3(numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19)
      end
    end
  end
  flag2 = SetTextRenderId
  tableHelper = GetDefaultScriptRendertargetRenderId
  tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19 = tableHelper()
  flag2(tableHelper, numberValue23, dataTable2, workValue, numberValue, numberValue2, numberValue3, numberValue4, workValue2, workValue3, workValue4, workValue5, numberValue9, numberValue11, numberValue13, workValue6, numberValue16, numberValue18, numberValue19)
  flag2 = SetScriptGfxDrawBehindPausemenu
  tableHelper = false
  flag2(tableHelper)
  flag2 = arg1.distance
  tableHelper = 2.5
  if flag2 < tableHelper then
    flag2 = drawNativeNotification
    tableHelper = "Press ~INPUT_CONTEXT~ to switch to "
    numberValue23 = dataTable12
    tableHelper = tableHelper .. numberValue23
    -- Beginner: Show a GTA-style notification/help prompt.
    flag2(tableHelper)
    flag2 = IsControlJustPressed
    tableHelper = 0
    numberValue23 = 51
    flag2 = flag2(tableHelper, numberValue23)
    if flag2 then
      flag2 = TriggerServerEvent
      tableHelper = "056ad3eab8"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "056ad3eab8".
      flag2(tableHelper)
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createArea
textValue2 = "wagerTopFraggersTV"
stringHelper = numberValue17
numberValue21 = 100.0
numberValue22 = 500.0
workValue7 = vector4Builder2
workValue8 = dataTable6
workValue9 = numberValue20
dataTable8 = {}
-- Beginner: Create an interaction area around a world position.
cmgCall4(textValue2, stringHelper, numberValue21, numberValue22, workValue7, workValue8, workValue9, dataTable8)
cmgCall4 = RegisterNetEvent
textValue2 = "bcc476284c"
-- Beginner: this function handles network event "bcc476284c".
function stringHelper(arg1, arg2, arg3)
  local cmgCall5
  dataTable7 = arg1
  dataTable9 = arg2
  cmgCall5 = arg3 or cmgCall5
  if not arg3 then
    cmgCall5 = {}
  end
  dataTable10 = cmgCall5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bcc476284c".
cmgCall4(textValue2, stringHelper)
cmgCall4 = RegisterNetEvent
textValue2 = "ca1eb91cc9"
-- Beginner: this function handles network event "ca1eb91cc9".
function stringHelper(arg1, arg2)
  workValue11 = arg1
  workValue12 = arg2
end
cmgCall4(textValue2, stringHelper)