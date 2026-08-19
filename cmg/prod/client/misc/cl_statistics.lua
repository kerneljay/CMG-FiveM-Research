--[[
    LEVEL 1 BEGINNER GUIDE — Statistics
    ========================================

    File: cmg/prod/client/misc/cl_statistics.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Statistics feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 23
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
local dataCollection, dataCollection5, dataCollection7, dataCollection9, dataCollection10, dataCollection11, workingValue11, workingValue12, stateFlag3, eventHandler, cmgOperation, cmgOperation2, cmgOperation3, stateFlag, createVector3, dataCollection3, dataCollection4, number5, number6, number7, number8, number10, number12, number14, number15, number17, text, createVector4, createVector42, dataCollection6, number20, cmgOperation4, text2, stringHelper, number21, number22, workingValue7, workingValue8, workingValue9, dataCollection8, workingValue10
dataCollection = {}
dataCollection5 = {}
dataCollection7 = {}
dataCollection9 = {}
dataCollection10 = {}
dataCollection11 = {}
workingValue11 = nil
workingValue12 = nil
stateFlag3 = false
eventHandler = RegisterNetEvent
cmgOperation = "CMGUI:setStatistics"
-- Beginner: this function handles network event "CMGUI:setStatistics".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.uiSendMessage
  cmgOperation6 = {}
  cmgOperation6.type = "SET_STATS"
  dataCollection12 = {}
  dataCollection12.stats = localValue1
  dataCollection12.userId = localValue2
  cmgOperation7 = math
  cmgOperation7 = cmgOperation7.ceil
  stateFlag2 = localValue3 / 15
  cmgOperation7 = cmgOperation7(stateFlag2)
  dataCollection12.pageCount = cmgOperation7
  cmgOperation6.info = dataCollection12
  cmgOperation5(cmgOperation6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGUI:setStatistics".
eventHandler(cmgOperation, cmgOperation2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, cmgOperation5
  localValue1 = stateFlag3
  localValue1 = not localValue1
  stateFlag3 = localValue1
  localValue1 = stateFlag3
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hideHud
    localValue1()
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = true
    localValue3 = true
    cmgOperation5 = false
    localValue1(localValue2, localValue3, cmgOperation5)
    localValue1 = TriggerScreenblurFadeIn
    localValue2 = 0.0
    localValue1(localValue2)
    localValue1 = CMG
    localValue1 = localValue1.uiSendMessage
    localValue2 = {}
    localValue2.type = "APP_TOGGLE"
    localValue2.app = "stats"
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.showHud
    localValue1()
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = false
    localValue3 = false
    cmgOperation5 = false
    localValue1(localValue2, localValue3, cmgOperation5)
    localValue1 = TriggerScreenblurFadeOut
    localValue2 = 0.0
    localValue1(localValue2)
    localValue1 = CMG
    localValue1 = localValue1.uiSendMessage
    localValue2 = {}
    localValue2.type = "APP_TOGGLE"
    localValue2.app = ""
    localValue1(localValue2)
  end
end
cmgOperation = RegisterCommand
cmgOperation2 = "openstats"
-- Beginner: this function is the command handler for "openstats".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isHudVehicleCursorEnabled
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = GetEntityHealth
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  -- Beginner: result below is health.
  localValue1 = localValue1(localValue2)
  if localValue1 <= 102 then
    return
  end
  localValue1 = eventHandler
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
end
stateFlag = false
-- Beginner: Register a chat/console command. Event/command: "openstats".
cmgOperation(cmgOperation2, cmgOperation3, stateFlag)
cmgOperation = CMG
cmgOperation = cmgOperation.uiRegisterCallback
cmgOperation2 = "closeStatsMenu"

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = eventHandler
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
end
cmgOperation(cmgOperation2, cmgOperation3)
cmgOperation = RegisterKeyMapping
cmgOperation2 = "openstats"
cmgOperation3 = "Open the stats menu"
stateFlag = "keyboard"
createVector3 = "F9"
-- Beginner: Bind a command to a keyboard/controller key.
cmgOperation(cmgOperation2, cmgOperation3, stateFlag, createVector3)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2, localValue3, cmgOperation5
  localValue1 = stateFlag3
  if localValue1 then
    localValue1 = DisableAllControlActions
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = EnableControlAction
    localValue2 = 0
    localValue3 = 249
    cmgOperation5 = true
    localValue1(localValue2, localValue3, cmgOperation5)
    localValue1 = CMG
    localValue1 = localValue1.isNewPlayer
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = drawNativeNotification
      localValue2 = "Press ~INPUT_DF5476D8~ to toggle the Statistics Menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
cmgOperation3 = cmgOperation
stateFlag = "Statistics Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(cmgOperation3, stateFlag)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue
  localValue2 = {}
  localValue3 = pairs
  cmgOperation5 = localValue1
  localValue3, cmgOperation5, cmgOperation6, dataCollection12 = localValue3(cmgOperation5)
  for cmgOperation7, stateFlag2 in localValue3, cmgOperation5, cmgOperation6, dataCollection12 do
    tableHelper = table
    tableHelper = tableHelper.insert
    number23 = localValue2
    dataCollection2 = {}
    workingValue = stateFlag2[1]
    dataCollection2.user_id = workingValue
    workingValue = stateFlag2[2]
    dataCollection2.name = workingValue
    workingValue = stateFlag2[3]
    dataCollection2.playtime = workingValue
    workingValue = stateFlag2[4]
    dataCollection2.kills = workingValue
    workingValue = stateFlag2[5]
    dataCollection2.deaths = workingValue
    workingValue = stateFlag2[6]
    dataCollection2.headshots = workingValue
    workingValue = stateFlag2[7]
    dataCollection2.amount_robbed = workingValue
    workingValue = stateFlag2[8]
    dataCollection2.jailed_time = workingValue
    workingValue = stateFlag2[9]
    dataCollection2.arrests = workingValue
    workingValue = stateFlag2[10]
    dataCollection2.searches = workingValue
    workingValue = stateFlag2[11]
    dataCollection2.amount_fined = workingValue
    workingValue = stateFlag2[12]
    dataCollection2.money_seized = workingValue
    workingValue = stateFlag2[13]
    dataCollection2.revives = workingValue
    workingValue = stateFlag2[14]
    dataCollection2.bodybagged = workingValue
    workingValue = stateFlag2[15]
    dataCollection2.weed_sales = workingValue
    workingValue = stateFlag2[16]
    dataCollection2.cocaine_sales = workingValue
    workingValue = stateFlag2[17]
    dataCollection2.meth_sales = workingValue
    workingValue = stateFlag2[18]
    dataCollection2.heroin_sales = workingValue
    workingValue = stateFlag2[19]
    dataCollection2.lsd_sales = workingValue
    workingValue = stateFlag2[20]
    dataCollection2.copper_sales = workingValue
    workingValue = stateFlag2[21]
    dataCollection2.limestone_sales = workingValue
    workingValue = stateFlag2[22]
    dataCollection2.gold_sales = workingValue
    workingValue = stateFlag2[23]
    dataCollection2.diamond_sales = workingValue
    workingValue = stateFlag2[24]
    dataCollection2.fish_sales = workingValue
    workingValue = stateFlag2[25]
    dataCollection2.vigilante_money = workingValue
    workingValue = stateFlag2[26]
    dataCollection2.vigilante_arrests = workingValue
    workingValue = stateFlag2[27]
    dataCollection2.vigilante_largest_bounty = workingValue
    workingValue = stateFlag2[28]
    dataCollection2.wager_kills = workingValue
    workingValue = stateFlag2[29]
    dataCollection2.wager_deaths = workingValue
    workingValue = stateFlag2[30]
    dataCollection2.black_market_sales = workingValue
    workingValue = stateFlag2[31]
    dataCollection2.organ_kills = workingValue
    workingValue = stateFlag2[32]
    dataCollection2.organ_num_played = workingValue
    workingValue = stateFlag2[33]
    dataCollection2.organ_num_won = workingValue
    workingValue = stateFlag2[34]
    dataCollection2.organ_earned = workingValue
    workingValue = stateFlag2[35]
    dataCollection2.bloodmoney_kills = workingValue
    workingValue = stateFlag2[36]
    dataCollection2.bloodmoney_deaths = workingValue
    workingValue = stateFlag2[37]
    dataCollection2.bloodmoney_earned = workingValue
    workingValue = stateFlag2[38]
    dataCollection2.koth_wins = workingValue
    workingValue = stateFlag2[39]
    dataCollection2.koth_attempts = workingValue
    workingValue = stateFlag2[40]
    dataCollection2.wager_elo = workingValue
    tableHelper(number23, dataCollection2)
  end
  return localValue2
end
cmgOperation3 = RegisterNetEvent
stateFlag = "a11a363123"
-- Beginner: this function handles network event "a11a363123".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2) ===
function createVector3(localValue1, localValue2)
  local localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2
  localValue3 = cmgOperation2
  cmgOperation5 = localValue1
  localValue3 = localValue3(cmgOperation5)
  cmgOperation5 = TriggerEvent
  cmgOperation6 = "CMGUI:setStatistics"
  dataCollection12 = localValue3
  cmgOperation7 = CMG
  cmgOperation7 = cmgOperation7.getClientUserId
  -- Beginner: result below is userId.
  cmgOperation7 = cmgOperation7()
  stateFlag2 = localValue2
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "CMGUI:setStatistics".
  cmgOperation5(cmgOperation6, dataCollection12, cmgOperation7, stateFlag2)
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.uiSendMessage
  cmgOperation6 = {}
  cmgOperation6.type = "SET_USER_STATS"
  dataCollection12 = {}
  cmgOperation7 = workingValue11
  dataCollection12.totalUserStats = cmgOperation7
  cmgOperation7 = workingValue12
  dataCollection12.monthlyUserStats = cmgOperation7
  cmgOperation6.info = dataCollection12
  cmgOperation5(cmgOperation6)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a11a363123".
cmgOperation3(stateFlag, createVector3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
stateFlag = "requestStatisticsPage"

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1) ===
function createVector3(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12
  localValue2 = TriggerServerEvent
  localValue3 = "8eb276deaa"
  cmgOperation5 = localValue1.sortingBy
  cmgOperation6 = localValue1.pageNumber
  dataCollection12 = localValue1.timeframe
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8eb276deaa".
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12)
end
cmgOperation3(stateFlag, createVector3)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, cmgOperation5, cmgOperation6
  localValue3 = IsNamedRendertargetRegistered
  cmgOperation5 = localValue1
  localValue3 = localValue3(cmgOperation5)
  if not localValue3 then
    localValue3 = RegisterNamedRendertarget
    cmgOperation5 = localValue1
    cmgOperation6 = false
    localValue3(cmgOperation5, cmgOperation6)
  end
  localValue3 = IsNamedRendertargetLinked
  cmgOperation5 = localValue2
  localValue3 = localValue3(cmgOperation5)
  if not localValue3 then
    localValue3 = LinkNamedRendertarget
    cmgOperation5 = localValue2
    localValue3(cmgOperation5)
  end
  localValue3 = IsNamedRendertargetLinked
  cmgOperation5 = localValue2
  localValue3 = localValue3(cmgOperation5)
  if localValue3 then
    localValue3 = GetNamedRendertargetRenderId
    cmgOperation5 = localValue1
    return localValue3(cmgOperation5)
  else
    localValue3 = 0
    return localValue3
  end
end
stateFlag = {}
createVector3 = {}
dataCollection3 = 255
dataCollection4 = 215
number5 = 0
createVector3[1] = dataCollection3
createVector3[2] = dataCollection4
createVector3[3] = number5
dataCollection3 = {}
dataCollection4 = 192
number5 = 192
number6 = 192
dataCollection3[1] = dataCollection4
dataCollection3[2] = number5
dataCollection3[3] = number6
dataCollection4 = {}
number5 = 140
number6 = 120
number7 = 83
dataCollection4[1] = number5
dataCollection4[2] = number6
dataCollection4[3] = number7
number5 = {}
number6 = 140
number7 = 120
number8 = 83
number5[1] = number6
number5[2] = number7
number5[3] = number8
number6 = {}
number7 = 140
number8 = 120
number10 = 83
number6[1] = number7
number6[2] = number8
number6[3] = number10
number7 = {}
number8 = 100
number10 = 65
number12 = 23
number7[1] = number8
number7[2] = number10
number7[3] = number12
number8 = {}
number10 = 100
number12 = 65
number14 = 23
number8[1] = number10
number8[2] = number12
number8[3] = number14
number10 = {}
number12 = 100
number14 = 65
number15 = 23
number10[1] = number12
number10[2] = number14
number10[3] = number15
number12 = {}
number14 = 100
number15 = 65
number17 = 23
number12[1] = number14
number12[2] = number15
number12[3] = number17
number14 = {}
number15 = 100
number17 = 65
text = 23
number14[1] = number15
number14[2] = number17
number14[3] = text
stateFlag[1] = createVector3
stateFlag[2] = dataCollection3
stateFlag[3] = dataCollection4
stateFlag[4] = number5
stateFlag[5] = number6
stateFlag[6] = number7
stateFlag[7] = number8
stateFlag[8] = number10
stateFlag[9] = number12
stateFlag[10] = number14
createVector3 = vector3
dataCollection3 = 1602.1811181641
dataCollection4 = 6444.9092773438
number5 = 25.354776382446
createVector3 = createVector3(dataCollection3, dataCollection4, number5)
dataCollection3 = 305134324
dataCollection4 = 0
number5 = 0

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = dataCollection3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CreateObject
  localValue2 = dataCollection3
  localValue3 = createVector3.x
  cmgOperation5 = createVector3.y
  cmgOperation6 = createVector3.z
  dataCollection12 = false
  cmgOperation7 = false
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2)
  number5 = localValue1
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = dataCollection3
  localValue1(localValue2)
  localValue1 = SetEntityHeading
  localValue2 = number5
  localValue3 = 300.0
  -- Beginner: Change the direction an entity is facing.
  localValue1(localValue2, localValue3)
  localValue1 = SetEntityLodDist
  localValue2 = number5
  localValue3 = 75
  localValue1(localValue2, localValue3)
  localValue1 = cmgOperation3
  localValue2 = "cmgtv9"
  localValue3 = dataCollection3
  localValue1 = localValue1(localValue2, localValue3)
  dataCollection4 = localValue1
end

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = number5
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  number5 = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  dataCollection4 = localValue1
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1) ===
function number8(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13
  localValue2 = localValue1.distance
  if localValue2 > 50.0 then
    return
  end
  localValue2 = SetTextRenderId
  localValue3 = dataCollection4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = GetConvar
  localValue3 = "statsDisplayDeaths"
  cmgOperation5 = "0"
  localValue2 = localValue2(localValue3, cmgOperation5)
  localValue2 = "1" == localValue2
  if localValue2 then
    localValue3 = DrawAdvancedText
    cmgOperation5 = 0.6
    cmgOperation6 = 0.0
    dataCollection12 = 0.005
    cmgOperation7 = 0.0028
    stateFlag2 = 1.12
    tableHelper = "Top Deaths This Month"
    number23 = 248
    dataCollection2 = 246
    workingValue = 240
    number = 200
    number2 = 4
    number3 = 0
    localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  else
    localValue3 = DrawAdvancedText
    cmgOperation5 = 0.6
    cmgOperation6 = 0.0
    dataCollection12 = 0.005
    cmgOperation7 = 0.0028
    stateFlag2 = 1.12
    tableHelper = "Top Fraggers This Month"
    number23 = 248
    dataCollection2 = 246
    workingValue = 240
    number = 200
    number2 = 4
    number3 = 0
    localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  end
  localValue3 = DrawAdvancedText
  cmgOperation5 = 0.15
  cmgOperation6 = 0.27
  dataCollection12 = 0.005
  cmgOperation7 = 0.0028
  stateFlag2 = 0.5
  tableHelper = "Name"
  number23 = 248
  dataCollection2 = 246
  workingValue = 240
  number = 255
  number2 = 4
  number3 = 1
  localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  localValue3 = DrawAdvancedText
  cmgOperation5 = 0.5
  cmgOperation6 = 0.27
  dataCollection12 = 0.005
  cmgOperation7 = 0.0028
  stateFlag2 = 0.5
  tableHelper = "Perm ID"
  number23 = 248
  dataCollection2 = 246
  workingValue = 240
  number = 255
  number2 = 4
  number3 = 1
  localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  localValue3 = DrawAdvancedText
  cmgOperation5 = 0.72
  cmgOperation6 = 0.27
  dataCollection12 = 0.005
  cmgOperation7 = 0.0028
  stateFlag2 = 0.5
  if localValue2 then
    tableHelper = "Deaths"
    if tableHelper then
      goto continueAtStep93
    end
  end
  tableHelper = "Kills"
  ::continueAtStep93::
  number23 = 248
  dataCollection2 = 246
  workingValue = 240
  number = 255
  number2 = 4
  number3 = 1
  localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  localValue3 = DrawAdvancedText
  cmgOperation5 = 0.9
  cmgOperation6 = 0.27
  dataCollection12 = 0.005
  cmgOperation7 = 0.0028
  stateFlag2 = 0.5
  tableHelper = "KD"
  number23 = 248
  dataCollection2 = 246
  workingValue = 240
  number = 255
  number2 = 4
  number3 = 1
  localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  localValue3 = DrawRect
  cmgOperation5 = 0.5
  cmgOperation6 = 0.38
  dataCollection12 = 0.95
  cmgOperation7 = 0.005
  stateFlag2 = 248
  tableHelper = 246
  number23 = 240
  dataCollection2 = 255
  localValue3(cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2)
  if localValue2 then
    localValue3 = dataCollection5
    if localValue3 then
      goto continueAtStep130
    end
  end
  localValue3 = dataCollection
  ::continueAtStep130::
  cmgOperation5 = pairs
  cmgOperation6 = localValue3
  cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7 = cmgOperation5(cmgOperation6)
  for stateFlag2, tableHelper in cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7 do
    number23 = stateFlag
    number23 = number23[stateFlag2]
    if number23 and tableHelper then
      dataCollection2 = DrawAdvancedText
      workingValue = 0.15
      number = 0.1 * stateFlag2
      number = 0.291 + number
      number2 = 0.005
      number3 = 0.0028
      number4 = 0.5
      workingValue2 = tableHelper[1]
      workingValue3 = number23[1]
      workingValue4 = number23[2]
      workingValue5 = number23[3]
      number9 = 255
      number11 = 4
      number13 = 1
      dataCollection2(workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13)
      dataCollection2 = DrawAdvancedText
      workingValue = 0.5
      number = 0.1 * stateFlag2
      number = 0.291 + number
      number2 = 0.005
      number3 = 0.0028
      number4 = 0.5
      workingValue2 = tableHelper[2]
      workingValue3 = number23[1]
      workingValue4 = number23[2]
      workingValue5 = number23[3]
      number9 = 255
      number11 = 4
      number13 = 1
      dataCollection2(workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13)
      dataCollection2 = DrawAdvancedText
      workingValue = 0.72
      number = 0.1 * stateFlag2
      number = 0.291 + number
      number2 = 0.005
      number3 = 0.0028
      number4 = 0.5
      workingValue2 = tableHelper[3]
      workingValue3 = number23[1]
      workingValue4 = number23[2]
      workingValue5 = number23[3]
      number9 = 255
      number11 = 4
      number13 = 1
      dataCollection2(workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13)
      dataCollection2 = DrawAdvancedText
      workingValue = 0.9
      number = 0.1 * stateFlag2
      number = 0.291 + number
      number2 = 0.005
      number3 = 0.0028
      number4 = 0.5
      workingValue2 = tableHelper[4]
      workingValue3 = number23[1]
      workingValue4 = number23[2]
      workingValue5 = number23[3]
      number9 = 255
      number11 = 4
      number13 = 1
      dataCollection2(workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13)
    end
  end
  cmgOperation5 = SetTextRenderId
  cmgOperation6 = GetDefaultScriptRendertargetRenderId
  cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13 = cmgOperation6()
  cmgOperation5(cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13)
  cmgOperation5 = SetScriptGfxDrawBehindPausemenu
  cmgOperation6 = false
  cmgOperation5(cmgOperation6)
  cmgOperation5 = localValue1.distance
  cmgOperation6 = 2.5
  if cmgOperation5 < cmgOperation6 then
    cmgOperation5 = drawNativeNotification
    cmgOperation6 = "Press ~INPUT_CONTEXT~ to switch to "
    if localValue2 then
      dataCollection12 = "kills"
      if dataCollection12 then
        goto continueAtStep230
      end
    end
    dataCollection12 = "deaths"
    ::continueAtStep230::
    cmgOperation6 = cmgOperation6 .. dataCollection12
    -- Beginner: Show a GTA-style notification/help prompt.
    cmgOperation5(cmgOperation6)
    cmgOperation5 = IsControlJustPressed
    cmgOperation6 = 0
    dataCollection12 = 51
    cmgOperation5 = cmgOperation5(cmgOperation6, dataCollection12)
    if cmgOperation5 then
      cmgOperation5 = TriggerServerEvent
      cmgOperation6 = "db58871c70"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "db58871c70".
      cmgOperation5(cmgOperation6)
    end
  end
end
number10 = CMG
number10 = number10.createArea
number12 = "rebelTopFraggersTV"
number14 = createVector3
number15 = 100.0
number17 = 500.0
text = number6
createVector4 = number7
createVector42 = number8
dataCollection6 = {}
-- Beginner: Create an interaction area around a world position.
number10(number12, number14, number15, number17, text, createVector4, createVector42, dataCollection6)
number10 = RegisterNetEvent
number12 = "e1fbddf59d"
-- Beginner: this function handles network event "e1fbddf59d".

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1, localValue2) ===
function number14(localValue1, localValue2)
  dataCollection = localValue1
  dataCollection5 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e1fbddf59d".
number10(number12, number14)
number10 = RegisterNetEvent
number12 = "3c185160b0"
-- Beginner: this function handles network event "3c185160b0".

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2
  dataCollection11 = localValue1
end
number10(number12, number14)
-- Beginner: this function handles network event "3c185160b0".

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1) ===
function number10(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = dataCollection3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CreateObject
  localValue3 = dataCollection3
  cmgOperation5 = localValue1.position
  cmgOperation5 = cmgOperation5.x
  cmgOperation6 = localValue1.position
  cmgOperation6 = cmgOperation6.y
  dataCollection12 = localValue1.position
  dataCollection12 = dataCollection12.z
  cmgOperation7 = false
  stateFlag2 = false
  tableHelper = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper)
  number5 = localValue2
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = dataCollection3
  localValue2(localValue3)
  localValue2 = SetEntityHeading
  localValue3 = number5
  cmgOperation5 = localValue1.position
  cmgOperation5 = cmgOperation5.w
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, cmgOperation5)
  localValue2 = SetEntityLodDist
  localValue3 = number5
  cmgOperation5 = 75
  localValue2(localValue3, cmgOperation5)
  localValue2 = cmgOperation3
  localValue3 = "cmgtv9"
  cmgOperation5 = dataCollection3
  localValue2 = localValue2(localValue3, cmgOperation5)
  dataCollection4 = localValue2
end

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = number5
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  number5 = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  dataCollection4 = localValue1
end

-- === HELPER FUNCTION (decompiler name: number14; parameters: localValue1) ===
function number14(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9
  localValue2 = localValue1.distance
  if not (localValue2 > 50.0) then
    localValue3 = localValue1.type
    localValue2 = dataCollection11
    localValue2 = localValue2[localValue3]
    if localValue2 then
      goto continueAtStep10
    end
  end
  return
  ::continueAtStep10::
  localValue2 = SetTextRenderId
  localValue3 = dataCollection4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = DrawAdvancedText
  localValue3 = 0.6
  cmgOperation5 = 0.0
  cmgOperation6 = 0.005
  dataCollection12 = 0.0028
  cmgOperation7 = 0.7
  stateFlag2 = "Committed Employees"
  tableHelper = 248
  number23 = 246
  dataCollection2 = 240
  workingValue = 200
  number = 4
  number2 = 0
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.15
  cmgOperation5 = 0.17
  cmgOperation6 = 0.005
  dataCollection12 = 0.0028
  cmgOperation7 = 0.4
  stateFlag2 = "Name"
  tableHelper = 248
  number23 = 246
  dataCollection2 = 240
  workingValue = 255
  number = 4
  number2 = 1
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.5
  cmgOperation5 = 0.17
  cmgOperation6 = 0.005
  dataCollection12 = 0.0028
  cmgOperation7 = 0.4
  stateFlag2 = "Perm ID"
  tableHelper = 248
  number23 = 246
  dataCollection2 = 240
  workingValue = 255
  number = 4
  number2 = 1
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.72
  cmgOperation5 = 0.17
  cmgOperation6 = 0.005
  dataCollection12 = 0.0028
  cmgOperation7 = 0.4
  stateFlag2 = "Level"
  tableHelper = 248
  number23 = 246
  dataCollection2 = 240
  workingValue = 255
  number = 4
  number2 = 1
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2)
  localValue2 = DrawAdvancedText
  localValue3 = 0.9
  cmgOperation5 = 0.17
  cmgOperation6 = 0.005
  dataCollection12 = 0.0028
  cmgOperation7 = 0.4
  stateFlag2 = "Current XP"
  tableHelper = 248
  number23 = 246
  dataCollection2 = 240
  workingValue = 255
  number = 4
  number2 = 1
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2)
  localValue2 = DrawRect
  localValue3 = 0.5
  cmgOperation5 = 0.26
  cmgOperation6 = 0.95
  dataCollection12 = 0.005
  cmgOperation7 = 248
  stateFlag2 = 246
  tableHelper = 240
  number23 = 255
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23)
  localValue2 = pairs
  cmgOperation5 = localValue1.type
  localValue3 = dataCollection11
  localValue3 = localValue3[cmgOperation5]
  localValue2, localValue3, cmgOperation5, cmgOperation6 = localValue2(localValue3)
  for dataCollection12, cmgOperation7 in localValue2, localValue3, cmgOperation5, cmgOperation6 do
    stateFlag2 = stateFlag
    stateFlag2 = stateFlag2[dataCollection12]
    if stateFlag2 and cmgOperation7 then
      tableHelper = DrawAdvancedText
      number23 = 0.15
      dataCollection2 = 0.07 * dataCollection12
      dataCollection2 = 0.205 + dataCollection2
      workingValue = 0.005
      number = 0.0028
      number2 = 0.34
      number3 = cmgOperation7[1]
      number4 = stateFlag2[1]
      workingValue2 = stateFlag2[2]
      workingValue3 = stateFlag2[3]
      workingValue4 = 255
      workingValue5 = 4
      number9 = 1
      tableHelper(number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9)
      tableHelper = DrawAdvancedText
      number23 = 0.5
      dataCollection2 = 0.07 * dataCollection12
      dataCollection2 = 0.205 + dataCollection2
      workingValue = 0.005
      number = 0.0028
      number2 = 0.35
      number3 = cmgOperation7[2]
      number4 = stateFlag2[1]
      workingValue2 = stateFlag2[2]
      workingValue3 = stateFlag2[3]
      workingValue4 = 255
      workingValue5 = 4
      number9 = 1
      tableHelper(number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9)
      tableHelper = DrawAdvancedText
      number23 = 0.72
      dataCollection2 = 0.07 * dataCollection12
      dataCollection2 = 0.205 + dataCollection2
      workingValue = 0.005
      number = 0.0028
      number2 = 0.35
      number3 = cmgOperation7[3]
      number4 = stateFlag2[1]
      workingValue2 = stateFlag2[2]
      workingValue3 = stateFlag2[3]
      workingValue4 = 255
      workingValue5 = 4
      number9 = 1
      tableHelper(number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9)
      tableHelper = DrawAdvancedText
      number23 = 0.9
      dataCollection2 = 0.07 * dataCollection12
      dataCollection2 = 0.205 + dataCollection2
      workingValue = 0.005
      number = 0.0028
      number2 = 0.35
      number3 = getMoneyStringFormatted
      number4 = cmgOperation7[4]
      number3 = number3(number4)
      number4 = stateFlag2[1]
      workingValue2 = stateFlag2[2]
      workingValue3 = stateFlag2[3]
      workingValue4 = 255
      workingValue5 = 4
      number9 = 1
      tableHelper(number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9)
    end
  end
  localValue2 = SetTextRenderId
  localValue3 = GetDefaultScriptRendertargetRenderId
  localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9 = localValue3()
  localValue2(localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = false
  localValue2(localValue3)
end
number15 = {}
number17 = {}
text = "cmg_trucking"
createVector4 = vector4
createVector42 = 857.7736328125
dataCollection6 = -3190.0515625
number20 = 5.593408203125
cmgOperation4 = 89.6220703125
createVector4, createVector42, dataCollection6, number20, cmgOperation4, text2, stringHelper, number21, number22, workingValue7, workingValue8, workingValue9, dataCollection8, workingValue10 = createVector4(createVector42, dataCollection6, number20, cmgOperation4)
number17[1] = text
number17[2] = createVector4
number17[3] = createVector42
number17[4] = dataCollection6
number17[5] = number20
number17[6] = cmgOperation4
number17[7] = text2
number17[8] = stringHelper
number17[9] = number21
number17[10] = number22
number17[11] = workingValue7
number17[12] = workingValue8
number17[13] = workingValue9
number17[14] = dataCollection8
number17[15] = workingValue10
text = {}
createVector4 = "cmg_pilot"
createVector42 = vector4
dataCollection6 = -989.87800292969
number20 = -2945.5913085938
cmgOperation4 = 13.9296875
text2 = 60.27952575684
createVector42, dataCollection6, number20, cmgOperation4, text2, stringHelper, number21, number22, workingValue7, workingValue8, workingValue9, dataCollection8, workingValue10 = createVector42(dataCollection6, number20, cmgOperation4, text2)
text[1] = createVector4
text[2] = createVector42
text[3] = dataCollection6
text[4] = number20
text[5] = cmgOperation4
text[6] = text2
text[7] = stringHelper
text[8] = number21
text[9] = number22
text[10] = workingValue7
text[11] = workingValue8
text[12] = workingValue9
text[13] = dataCollection8
text[14] = workingValue10
number15[1] = number17
number15[2] = text
number17 = pairs
text = number15
number17, text, createVector4, createVector42 = number17(text)
for dataCollection6, number20 in number17, text, createVector4, createVector42 do
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.createArea
  text2 = "level_tv_"
  stringHelper = tostring
  number21 = dataCollection6
  stringHelper = stringHelper(number21)
  text2 = text2 .. stringHelper
  stringHelper = number20[2]
  stringHelper = stringHelper.xyz
  number21 = 100.0
  number22 = 500.0
  workingValue7 = number10
  workingValue8 = number12
  workingValue9 = number14
  dataCollection8 = {}
  workingValue10 = number20[1]
  dataCollection8.type = workingValue10
  workingValue10 = number20[2]
  dataCollection8.position = workingValue10
  -- Beginner: Create an interaction area around a world position.
  cmgOperation4(text2, stringHelper, number21, number22, workingValue7, workingValue8, workingValue9, dataCollection8)
end
number17 = AddEventHandler
text = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION: createVector4(localValue1) ===
function createVector4(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = number5
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = number5
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
number17(text, createVector4)
number17 = vector3
text = 1460.5463867188
createVector4 = 3573.5065429688
createVector42 = 36.305820770264
number17 = number17(text, createVector4, createVector42)
text = 0
createVector4 = 0

-- === HELPER FUNCTION: createVector42() ===
function createVector42()
  local localValue1, localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = dataCollection3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CreateObject
  localValue2 = dataCollection3
  localValue3 = number17.x
  cmgOperation5 = number17.y
  cmgOperation6 = number17.z
  dataCollection12 = false
  cmgOperation7 = false
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2)
  createVector4 = localValue1
  localValue1 = SetModelAsNoLongerNeeded
  localValue2 = dataCollection3
  localValue1(localValue2)
  localValue1 = SetEntityHeading
  localValue2 = createVector4
  localValue3 = 21.0
  -- Beginner: Change the direction an entity is facing.
  localValue1(localValue2, localValue3)
  localValue1 = SetEntityLodDist
  localValue2 = createVector4
  localValue3 = 75
  localValue1(localValue2, localValue3)
  localValue1 = cmgOperation3
  localValue2 = "cmgtv9"
  localValue3 = dataCollection3
  localValue1 = localValue1(localValue2, localValue3)
  text = localValue1
end

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: none) ===
function dataCollection6()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = createVector4
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  createVector4 = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  text = localValue1
end

-- === HELPER FUNCTION (decompiler name: number20; parameters: localValue1) ===
function number20(localValue1)
  local localValue2, localValue3, cmgOperation5, cmgOperation6, dataCollection12, cmgOperation7, stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19
  localValue2 = localValue1.distance
  if localValue2 > 50.0 then
    return
  end
  localValue2 = SetTextRenderId
  localValue3 = text
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = GetConvar
  localValue3 = "statsWagersDisplayElo"
  cmgOperation5 = "0"
  localValue2 = localValue2(localValue3, cmgOperation5)
  localValue2 = "1" == localValue2
  localValue3 = not localValue2
  cmgOperation5 = nil
  cmgOperation6 = nil
  dataCollection12 = nil
  if localValue2 then
    cmgOperation5 = "Top ELO This Month"
    cmgOperation6 = "ELO"
    dataCollection12 = "kills"
  elseif localValue3 then
    cmgOperation5 = "Top Deaths This Month"
    cmgOperation6 = "Deaths"
    dataCollection12 = "ELO"
  else
    cmgOperation5 = "Top Kills This Month"
    cmgOperation6 = "Kills"
    dataCollection12 = "deaths"
  end
  cmgOperation7 = DrawAdvancedText
  stateFlag2 = 0.6
  tableHelper = 0.0
  number23 = 0.005
  dataCollection2 = 0.0028
  workingValue = 1.12
  number = cmgOperation5
  number2 = 248
  number3 = 246
  number4 = 240
  workingValue2 = 200
  workingValue3 = 4
  workingValue4 = 0
  cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4)
  cmgOperation7 = DrawAdvancedText
  stateFlag2 = 0.15
  tableHelper = 0.27
  number23 = 0.005
  dataCollection2 = 0.0028
  workingValue = 0.5
  number = "Name"
  number2 = 248
  number3 = 246
  number4 = 240
  workingValue2 = 255
  workingValue3 = 4
  workingValue4 = 1
  cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4)
  cmgOperation7 = DrawAdvancedText
  stateFlag2 = 0.5
  tableHelper = 0.27
  number23 = 0.005
  dataCollection2 = 0.0028
  workingValue = 0.5
  number = "Perm ID"
  number2 = 248
  number3 = 246
  number4 = 240
  workingValue2 = 255
  workingValue3 = 4
  workingValue4 = 1
  cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4)
  cmgOperation7 = DrawAdvancedText
  if localValue2 then
    stateFlag2 = 0.85
    if stateFlag2 then
      goto continueAtStep97
    end
  end
  stateFlag2 = 0.72
  ::continueAtStep97::
  tableHelper = 0.27
  number23 = 0.005
  dataCollection2 = 0.0028
  workingValue = 0.5
  number = cmgOperation6
  number2 = 248
  number3 = 246
  number4 = 240
  workingValue2 = 255
  workingValue3 = 4
  workingValue4 = 1
  cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4)
  if not localValue2 then
    cmgOperation7 = DrawAdvancedText
    stateFlag2 = 0.9
    tableHelper = 0.27
    number23 = 0.005
    dataCollection2 = 0.0028
    workingValue = 0.5
    number = "KD"
    number2 = 248
    number3 = 246
    number4 = 240
    workingValue2 = 255
    workingValue3 = 4
    workingValue4 = 1
    cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4)
  end
  cmgOperation7 = DrawRect
  stateFlag2 = 0.5
  tableHelper = 0.38
  number23 = 0.95
  dataCollection2 = 0.005
  workingValue = 248
  number = 246
  number2 = 240
  number3 = 255
  cmgOperation7(stateFlag2, tableHelper, number23, dataCollection2, workingValue, number, number2, number3)
  cmgOperation7 = nil
  if localValue2 then
    cmgOperation7 = dataCollection10
  elseif localValue3 then
    cmgOperation7 = dataCollection9
  else
    cmgOperation7 = dataCollection7
  end
  stateFlag2 = pairs
  tableHelper = cmgOperation7
  stateFlag2, tableHelper, number23, dataCollection2 = stateFlag2(tableHelper)
  for workingValue, number in stateFlag2, tableHelper, number23, dataCollection2 do
    number2 = stateFlag
    number2 = number2[workingValue]
    if number2 and number then
      number3 = DrawAdvancedText
      number4 = 0.15
      workingValue2 = 0.1 * workingValue
      workingValue2 = 0.291 + workingValue2
      workingValue3 = 0.005
      workingValue4 = 0.0028
      workingValue5 = 0.5
      number9 = number[1]
      number11 = number2[1]
      number13 = number2[2]
      workingValue6 = number2[3]
      number16 = 255
      number18 = 4
      number19 = 1
      number3(number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19)
      number3 = DrawAdvancedText
      number4 = 0.5
      workingValue2 = 0.1 * workingValue
      workingValue2 = 0.291 + workingValue2
      workingValue3 = 0.005
      workingValue4 = 0.0028
      workingValue5 = 0.5
      number9 = number[2]
      number11 = number2[1]
      number13 = number2[2]
      workingValue6 = number2[3]
      number16 = 255
      number18 = 4
      number19 = 1
      number3(number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19)
      number3 = DrawAdvancedText
      if localValue2 then
        number4 = 0.85
        if number4 then
          goto continueAtStep196
        end
      end
      number4 = 0.72
      ::continueAtStep196::
      workingValue2 = 0.1 * workingValue
      workingValue2 = 0.291 + workingValue2
      workingValue3 = 0.005
      workingValue4 = 0.0028
      workingValue5 = 0.5
      number9 = number[3]
      number11 = number2[1]
      number13 = number2[2]
      workingValue6 = number2[3]
      number16 = 255
      number18 = 4
      number19 = 1
      number3(number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19)
      if not localValue2 then
        number3 = DrawAdvancedText
        number4 = 0.9
        workingValue2 = 0.1 * workingValue
        workingValue2 = 0.291 + workingValue2
        workingValue3 = 0.005
        workingValue4 = 0.0028
        workingValue5 = 0.5
        number9 = number[4]
        number11 = number2[1]
        number13 = number2[2]
        workingValue6 = number2[3]
        number16 = 255
        number18 = 4
        number19 = 1
        number3(number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19)
      end
    end
  end
  stateFlag2 = SetTextRenderId
  tableHelper = GetDefaultScriptRendertargetRenderId
  tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19 = tableHelper()
  stateFlag2(tableHelper, number23, dataCollection2, workingValue, number, number2, number3, number4, workingValue2, workingValue3, workingValue4, workingValue5, number9, number11, number13, workingValue6, number16, number18, number19)
  stateFlag2 = SetScriptGfxDrawBehindPausemenu
  tableHelper = false
  stateFlag2(tableHelper)
  stateFlag2 = localValue1.distance
  tableHelper = 2.5
  if stateFlag2 < tableHelper then
    stateFlag2 = drawNativeNotification
    tableHelper = "Press ~INPUT_CONTEXT~ to switch to "
    number23 = dataCollection12
    tableHelper = tableHelper .. number23
    -- Beginner: Show a GTA-style notification/help prompt.
    stateFlag2(tableHelper)
    stateFlag2 = IsControlJustPressed
    tableHelper = 0
    number23 = 51
    stateFlag2 = stateFlag2(tableHelper, number23)
    if stateFlag2 then
      stateFlag2 = TriggerServerEvent
      tableHelper = "056ad3eab8"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "056ad3eab8".
      stateFlag2(tableHelper)
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createArea
text2 = "wagerTopFraggersTV"
stringHelper = number17
number21 = 100.0
number22 = 500.0
workingValue7 = createVector42
workingValue8 = dataCollection6
workingValue9 = number20
dataCollection8 = {}
-- Beginner: Create an interaction area around a world position.
cmgOperation4(text2, stringHelper, number21, number22, workingValue7, workingValue8, workingValue9, dataCollection8)
cmgOperation4 = RegisterNetEvent
text2 = "bcc476284c"
-- Beginner: this function handles network event "bcc476284c".

-- === HELPER FUNCTION: stringHelper(localValue1, localValue2, localValue3) ===
function stringHelper(localValue1, localValue2, localValue3)
  local cmgOperation5
  dataCollection7 = localValue1
  dataCollection9 = localValue2
  cmgOperation5 = localValue3 or cmgOperation5
  if not localValue3 then
    cmgOperation5 = {}
  end
  dataCollection10 = cmgOperation5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bcc476284c".
cmgOperation4(text2, stringHelper)
cmgOperation4 = RegisterNetEvent
text2 = "ca1eb91cc9"
-- Beginner: this function handles network event "ca1eb91cc9".

-- === HELPER FUNCTION: stringHelper(localValue1, localValue2) ===
function stringHelper(localValue1, localValue2)
  workingValue11 = localValue1
  workingValue12 = localValue2
end
cmgOperation4(text2, stringHelper)
