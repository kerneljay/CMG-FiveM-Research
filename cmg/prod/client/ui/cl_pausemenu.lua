--[[
    LEVEL 1 BEGINNER GUIDE — Pausemenu
    =======================================

    File: cmg/prod/client/ui/cl_pausemenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Pausemenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 26
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
local flag, flag2, dataTable, flag3, workValue3, workValue4, cmgCall2, textValue2, cmgCall4, textValue3, textValue, workValue2
flag = false
flag2 = false
dataTable = {}
flag3 = false

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, dataTable2
  arg1 = CMG
  arg1 = arg1.showAllDisplays
  arg2 = "pausemenu"
  arg1(arg2)
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
  dataTable2 = false
  arg1(arg2, arg3, dataTable2)
  arg1 = TriggerScreenblurFadeOut
  arg2 = 0.0
  arg1(arg2)
  arg1 = false
  flag = arg1
  arg1 = TriggerEvent
  arg2 = "3ee4eff5d1"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "3ee4eff5d1".
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, dataTable2, cmgCall, dataTable3, cmgCall3, tableHelper, workValue5, numberValue, workValue
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  arg2 = fullPlayerListData
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = CMG
  arg3 = arg3.hideAllDisplays
  dataTable2 = "pausemenu"
  arg3(dataTable2)
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "APP_TOGGLE"
  dataTable2.app = "pausemenu"
  arg3(dataTable2)
  arg3 = arg2[3]
  if arg3 then
    dataTable2 = #arg3
    if 0 ~= dataTable2 then
      goto flow_label_27
    end
  end
  arg3 = "Unemployed"
  ::flow_label_27::
  dataTable2 = 32
  cmgCall = pairs
  dataTable3 = fullPlayerListData
  cmgCall, dataTable3, cmgCall3, tableHelper = cmgCall(dataTable3)
  for workValue5, numberValue in cmgCall, dataTable3, cmgCall3, tableHelper do
    if "_meta" == workValue5 then
      dataTable2 = numberValue[4]
      break
    end
  end
  cmgCall = CMG
  cmgCall = cmgCall.uiSendMessage
  dataTable3 = {}
  dataTable3.type = "PAUSE_MENU_SET_DATA"
  cmgCall3 = {}
  tableHelper = arg2[2]
  cmgCall3.name = tableHelper
  cmgCall3.permId = arg1
  tableHelper = getMoneyStringFormatted
  workValue5 = arg2[4]
  tableHelper = tableHelper(workValue5)
  cmgCall3.playtime = tableHelper
  cmgCall3.employment = arg3
  tableHelper = table
  tableHelper = tableHelper.count
  workValue5 = fullPlayerListData
  -- Beginner: result below is count.
  tableHelper = tableHelper(workValue5)
  tableHelper = tableHelper - 1
  cmgCall3.playerCount = tableHelper
  cmgCall3.maxPlayerCount = dataTable2
  tableHelper = GlobalState
  tableHelper = tableHelper.minigamesPlayerCount
  cmgCall3.minigamesPlayerCount = tableHelper
  tableHelper = CMG
  tableHelper = tableHelper.getSecondsUntilChallengesReset
  tableHelper = tableHelper()
  cmgCall3.secondsUntilChallengeReset = tableHelper
  dataTable3.info = cmgCall3
  cmgCall(dataTable3)
  cmgCall = CMG
  cmgCall = cmgCall.uiSetFocus
  dataTable3 = true
  cmgCall3 = true
  tableHelper = false
  cmgCall(dataTable3, cmgCall3, tableHelper)
  cmgCall = TriggerScreenblurFadeIn
  dataTable3 = 0.0
  cmgCall(dataTable3)
  cmgCall = TriggerEvent
  dataTable3 = "7ad2e2f656"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "7ad2e2f656".
  cmgCall(dataTable3)
  cmgCall = true
  flag = cmgCall
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "mapsButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, dataTable2
  arg1 = workValue3
  arg1()
  arg1 = ActivateFrontendMenu
  arg2 = -1171018317
  arg3 = true
  dataTable2 = 0
  arg1(arg2, arg3, dataTable2)
end
cmgCall2(textValue2, cmgCall4)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "settingsButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, dataTable2
  arg1 = workValue3
  arg1()
  arg1 = ActivateFrontendMenu
  arg2 = -1171018317
  arg3 = true
  dataTable2 = 6
  arg1(arg2, arg3, dataTable2)
end
cmgCall2(textValue2, cmgCall4)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "disconnectButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2
  arg1 = workValue3
  arg1()
  arg1 = true
  flag3 = arg1
  arg1 = TriggerServerEvent
  arg2 = "4e3937e06c"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e3937e06c".
  arg1(arg2)
end
cmgCall2(textValue2, cmgCall4)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "pauseMenuClosed"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2
  arg1 = workValue3
  arg1()
end
cmgCall2(textValue2, cmgCall4)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "openDisputeUI"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = "dispute"
  arg1(arg2)
  arg1 = flag2
  if not arg1 then
    arg1 = TriggerServerEvent
    arg2 = "cf221d5214"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cf221d5214".
    arg1(arg2)
  end
end
cmgCall2(textValue2, cmgCall4)
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue2 = "minigamesIP"

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3, dataTable2
  arg1 = CMG
  arg1 = arg1.copyToClipboard
  arg2 = "connect minigames.cmg.city"
  arg1(arg2)
  arg1 = TriggerEvent
  arg2 = "371eab1d3a"
  arg3 = {}
  arg3.text = "IP Copied To Clipboard"
  arg3.height = "200px"
  arg3.width = "auto"
  arg3.colour = "#FFF"
  arg3.background = "#32CD32"
  arg3.pos = "bottom-right"
  arg3.icon = "success"
  dataTable2 = 5000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  arg1(arg2, arg3, dataTable2)
end
cmgCall2(textValue2, cmgCall4)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, dataTable2, cmgCall
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "DISPUTE_UI_SET_NOTIFICATIONS"
  dataTable2 = {}
  cmgCall = dataTable
  dataTable2.notifications = cmgCall
  dataTable2.makeNoise = arg1
  arg3.info = dataTable2
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, dataTable2, cmgCall, dataTable3, cmgCall3, tableHelper, workValue5, numberValue, workValue
  arg1 = flag
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isNewPlayer
    arg1 = arg1()
    if arg1 then
      arg1 = drawNativeNotification
      arg2 = "Press ~INPUT_FRONTEND_PAUSE_ALTERNATE~ to toggle the pause menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
    end
    arg1 = InvalidateIdleCam
    arg1()
    arg1 = InvalidateVehicleIdleCam
    arg1()
  end
  arg1 = dataTable
  arg1 = #arg1
  if arg1 > 0 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = false
    arg3 = pairs
    dataTable2 = dataTable
    arg3, dataTable2, cmgCall, dataTable3 = arg3(dataTable2)
    for cmgCall3, tableHelper in arg3, dataTable2, cmgCall, dataTable3 do
      workValue5 = tableHelper.startTime
      workValue5 = arg1 - workValue5
      numberValue = 5000
      if workValue5 > numberValue then
        workValue5 = table
        workValue5 = workValue5.remove
        numberValue = dataTable
        workValue = cmgCall3
        workValue5(numberValue, workValue)
        arg2 = true
        break
      end
    end
    if arg2 then
      arg3 = cmgCall2
      dataTable2 = false
      arg3(dataTable2)
    end
  end
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuVisible
    arg1 = arg1()
    if not arg1 then
      arg1 = SetPauseMenuActive
      arg2 = false
      arg1(arg2)
      arg1 = CMG
      arg1 = arg1.isPhoneOpen
      arg1 = arg1()
      if not arg1 then
        arg1 = IsControlJustPressed
        arg2 = 0
        arg3 = 200
        arg1 = arg1(arg2, arg3)
        if arg1 then
          arg1 = CMG
          arg1 = arg1.isOnRadioMenu
          arg1 = arg1()
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.isDrawingInventoryUI
            arg1 = arg1()
            if not arg1 then
              arg1 = workValue4
              arg1()
          end
        end
        else
          arg1 = IsControlJustReleased
          arg2 = 0
          arg3 = 199
          arg1 = arg1(arg2, arg3)
          if arg1 then
            arg1 = SetPauseMenuActive
            arg2 = true
            arg1(arg2)
            arg1 = ActivateFrontendMenu
            arg2 = -1171018317
            arg3 = true
            dataTable2 = -1
            arg1(arg2, arg3, dataTable2)
          end
        end
      end
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue3 = textValue2
textValue = "Pause Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue3, textValue)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall4.isPauseMenuOpen = textValue3
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "disputeSendMessage"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2, cmgCall
  arg2 = TriggerServerEvent
  arg3 = "10b4fb3796"
  dataTable2 = arg1.targetUserId
  cmgCall = arg1.content
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10b4fb3796".
  arg2(arg3, dataTable2, cmgCall)
end
cmgCall4(textValue3, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "disputeSetMuted"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2, cmgCall
  arg2 = TriggerServerEvent
  arg3 = "27c55677f1"
  dataTable2 = arg1.targetUserId
  cmgCall = arg1.isMuted
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27c55677f1".
  arg2(arg3, dataTable2, cmgCall)
end
cmgCall4(textValue3, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "disputeSetBlocked"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2, cmgCall
  arg2 = TriggerServerEvent
  arg3 = "c50fd01afe"
  dataTable2 = arg1.targetUserId
  cmgCall = arg1.isBlocked
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c50fd01afe".
  arg2(arg3, dataTable2, cmgCall)
end
cmgCall4(textValue3, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "disputeDelete"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2
  arg2 = TriggerServerEvent
  arg3 = "970e626ed0"
  dataTable2 = arg1.targetUserId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "970e626ed0".
  arg2(arg3, dataTable2)
end
cmgCall4(textValue3, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "disputeMakePayment"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2
  arg2 = TriggerServerEvent
  arg3 = "574cbfaa43"
  dataTable2 = arg1.messageId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "574cbfaa43".
  arg2(arg3, dataTable2)
end
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "31952662d5"
-- Beginner: this function handles network event "31952662d5".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2, arg3) ===
function textValue(arg1, arg2, arg3)
  local dataTable2, cmgCall, dataTable3, cmgCall3
  dataTable2 = flag2
  if dataTable2 and not arg3 then
    return
  end
  dataTable2 = true
  flag2 = dataTable2
  dataTable2 = CMG
  dataTable2 = dataTable2.uiSendMessage
  cmgCall = {}
  cmgCall.type = "DISPUTE_UI_SET_DATA"
  dataTable3 = {}
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getClientUserId
  -- Beginner: result below is userId.
  cmgCall3 = cmgCall3()
  dataTable3.localUserId = cmgCall3
  dataTable3.disputesResult = arg1
  dataTable3.messagesResult = arg2
  cmgCall.info = dataTable3
  dataTable2(cmgCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31952662d5".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "27c55677f1"
-- Beginner: this function handles network event "27c55677f1".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, dataTable2, cmgCall
  arg3 = flag2
  if not arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "DISPUTE_UI_SET_MUTED"
  cmgCall = {}
  cmgCall.targetUserId = arg1
  cmgCall.isMuted = arg2
  dataTable2.info = cmgCall
  arg3(dataTable2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "27c55677f1".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "c50fd01afe"
-- Beginner: this function handles network event "c50fd01afe".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, dataTable2, cmgCall
  arg3 = flag2
  if not arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "DISPUTE_UI_SET_BLOCKED"
  cmgCall = {}
  cmgCall.targetUserId = arg1
  cmgCall.isBlocked = arg2
  dataTable2.info = cmgCall
  arg3(dataTable2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c50fd01afe".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "5abfdd0563"
-- Beginner: this function handles network event "5abfdd0563".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, dataTable2, cmgCall
  arg3 = flag2
  if not arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "DISPUTE_UI_SET_MUTED_BY_OTHER"
  cmgCall = {}
  cmgCall.targetUserId = arg1
  cmgCall.isMuted = arg2
  dataTable2.info = cmgCall
  arg3(dataTable2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5abfdd0563".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "82d1d19438"
-- Beginner: this function handles network event "82d1d19438".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, dataTable2, cmgCall
  arg3 = flag2
  if not arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "DISPUTE_UI_SET_BLOCKED_BY_OTHER"
  cmgCall = {}
  cmgCall.targetUserId = arg1
  cmgCall.isBlocked = arg2
  dataTable2.info = cmgCall
  arg3(dataTable2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82d1d19438".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "10b4fb3796"
-- Beginner: this function handles network event "10b4fb3796".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local arg3, dataTable2, cmgCall, dataTable3
  if not arg2 then
    arg3 = table
    arg3 = arg3.insert
    dataTable2 = dataTable
    cmgCall = {}
    dataTable3 = arg1.name
    cmgCall.name = dataTable3
    dataTable3 = arg1.message
    cmgCall.content = dataTable3
    dataTable3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    dataTable3 = dataTable3()
    cmgCall.startTime = dataTable3
    arg3(dataTable2, cmgCall)
    arg3 = cmgCall2
    dataTable2 = true
    arg3(dataTable2)
  end
  arg3 = flag2
  if not arg3 then
    return
  end
  arg3 = CMG
  arg3 = arg3.getClientUserId
  -- Beginner: result below is userId.
  arg3 = arg3()
  arg1.localUserId = arg3
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  dataTable2 = {}
  dataTable2.type = "DISPUTE_UI_ADD_MESSAGE"
  dataTable2.info = arg1
  arg3(dataTable2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "10b4fb3796".
cmgCall4(textValue3, textValue)
cmgCall4 = RegisterNetEvent
textValue3 = "970e626ed0"
-- Beginner: this function handles network event "970e626ed0".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "DISPUTE_UI_DELETE_USER"
  dataTable2 = {}
  dataTable2.targetUserId = arg1
  arg3.info = dataTable2
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "970e626ed0".
cmgCall4(textValue3, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
textValue3 = "notification"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, dataTable2, cmgCall
  arg2 = arg1.colour
  if "red" == arg2 then
    arg2 = TriggerEvent
    arg3 = "371eab1d3a"
    dataTable2 = {}
    cmgCall = arg1.message
    dataTable2.text = cmgCall
    dataTable2.height = "60px"
    dataTable2.width = "auto"
    dataTable2.colour = "#FFF"
    dataTable2.background = "#ff0000"
    dataTable2.pos = "bottom-right"
    dataTable2.icon = "bad"
    cmgCall = 5000
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
    arg2(arg3, dataTable2, cmgCall)
  else
    arg2 = TriggerEvent
    arg3 = "371eab1d3a"
    dataTable2 = {}
    cmgCall = arg1.message
    dataTable2.text = cmgCall
    dataTable2.height = "200px"
    dataTable2.width = "auto"
    dataTable2.colour = "#FFF"
    dataTable2.background = "#32CD32"
    dataTable2.pos = "bottom-right"
    dataTable2.icon = "success"
    cmgCall = 5000
    arg2(arg3, dataTable2, cmgCall)
  end
end
cmgCall4(textValue3, textValue)
cmgCall4 = nil
textValue3 = AddEventHandler
textValue = "1e1208e937"
-- Beginner: this function runs when client event "1e1208e937" fires.

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, dataTable2, cmgCall, dataTable3, cmgCall3, tableHelper
  arg2 = IsPedAPlayer
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = NetworkGetPlayerIndexFromPed
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 >= 0 then
      arg3 = GetPlayerServerId
      dataTable2 = arg2
      -- Beginner: result below is serverId.
      arg3 = arg3(dataTable2)
      if arg3 > 0 then
        dataTable2 = CMG
        dataTable2 = dataTable2.getPlayerName
        cmgCall = arg2
        dataTable2 = dataTable2(cmgCall)
        cmgCall = CMG
        cmgCall = cmgCall.clientGetUserIdFromSource
        dataTable3 = arg3
        -- Beginner: result below is userId.
        cmgCall = cmgCall(dataTable3)
        if dataTable2 and cmgCall then
          dataTable3 = cmgCall4
          if cmgCall ~= dataTable3 then
            dataTable3 = CMG
            dataTable3 = dataTable3.uiSendMessage
            cmgCall3 = {}
            cmgCall3.type = "DISPUTE_UI_ADD_RECENT"
            tableHelper = {}
            tableHelper.targetUserId = cmgCall
            tableHelper.name = dataTable2
            cmgCall3.info = tableHelper
            dataTable3(cmgCall3)
            cmgCall4 = cmgCall
          end
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1e1208e937".
textValue3(textValue, workValue2)
textValue3 = CMG

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2
  arg1 = flag3
  return arg1
end
textValue3.isQuittingGame = textValue
