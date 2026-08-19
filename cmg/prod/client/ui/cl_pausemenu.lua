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
local stateFlag, stateFlag2, dataCollection, stateFlag3, workingValue3, workingValue4, cmgOperation2, text2, cmgOperation4, text3, text, workingValue2
stateFlag = false
stateFlag2 = false
dataCollection = {}
stateFlag3 = false

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, dataCollection2
  localValue1 = CMG
  localValue1 = localValue1.showAllDisplays
  localValue2 = "pausemenu"
  localValue1(localValue2)
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
  dataCollection2 = false
  localValue1(localValue2, localValue3, dataCollection2)
  localValue1 = TriggerScreenblurFadeOut
  localValue2 = 0.0
  localValue1(localValue2)
  localValue1 = false
  stateFlag = localValue1
  localValue1 = TriggerEvent
  localValue2 = "3ee4eff5d1"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "3ee4eff5d1".
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, dataCollection2, cmgOperation, dataCollection3, cmgOperation3, tableHelper, workingValue5, number, workingValue
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  localValue2 = fullPlayerListData
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.hideAllDisplays
  dataCollection2 = "pausemenu"
  localValue3(dataCollection2)
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "APP_TOGGLE"
  dataCollection2.app = "pausemenu"
  localValue3(dataCollection2)
  localValue3 = localValue2[3]
  if localValue3 then
    dataCollection2 = #localValue3
    if 0 ~= dataCollection2 then
      goto continueAtStep27
    end
  end
  localValue3 = "Unemployed"
  ::continueAtStep27::
  dataCollection2 = 32
  cmgOperation = pairs
  dataCollection3 = fullPlayerListData
  cmgOperation, dataCollection3, cmgOperation3, tableHelper = cmgOperation(dataCollection3)
  for workingValue5, number in cmgOperation, dataCollection3, cmgOperation3, tableHelper do
    if "_meta" == workingValue5 then
      dataCollection2 = number[4]
      break
    end
  end
  cmgOperation = CMG
  cmgOperation = cmgOperation.uiSendMessage
  dataCollection3 = {}
  dataCollection3.type = "PAUSE_MENU_SET_DATA"
  cmgOperation3 = {}
  tableHelper = localValue2[2]
  cmgOperation3.name = tableHelper
  cmgOperation3.permId = localValue1
  tableHelper = getMoneyStringFormatted
  workingValue5 = localValue2[4]
  tableHelper = tableHelper(workingValue5)
  cmgOperation3.playtime = tableHelper
  cmgOperation3.employment = localValue3
  tableHelper = table
  tableHelper = tableHelper.count
  workingValue5 = fullPlayerListData
  -- Beginner: result below is count.
  tableHelper = tableHelper(workingValue5)
  tableHelper = tableHelper - 1
  cmgOperation3.playerCount = tableHelper
  cmgOperation3.maxPlayerCount = dataCollection2
  tableHelper = GlobalState
  tableHelper = tableHelper.minigamesPlayerCount
  cmgOperation3.minigamesPlayerCount = tableHelper
  tableHelper = CMG
  tableHelper = tableHelper.getSecondsUntilChallengesReset
  tableHelper = tableHelper()
  cmgOperation3.secondsUntilChallengeReset = tableHelper
  dataCollection3.info = cmgOperation3
  cmgOperation(dataCollection3)
  cmgOperation = CMG
  cmgOperation = cmgOperation.uiSetFocus
  dataCollection3 = true
  cmgOperation3 = true
  tableHelper = false
  cmgOperation(dataCollection3, cmgOperation3, tableHelper)
  cmgOperation = TriggerScreenblurFadeIn
  dataCollection3 = 0.0
  cmgOperation(dataCollection3)
  cmgOperation = TriggerEvent
  dataCollection3 = "7ad2e2f656"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "7ad2e2f656".
  cmgOperation(dataCollection3)
  cmgOperation = true
  stateFlag = cmgOperation
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "mapsButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, dataCollection2
  localValue1 = workingValue3
  localValue1()
  localValue1 = ActivateFrontendMenu
  localValue2 = -1171018317
  localValue3 = true
  dataCollection2 = 0
  localValue1(localValue2, localValue3, dataCollection2)
end
cmgOperation2(text2, cmgOperation4)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "settingsButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, dataCollection2
  localValue1 = workingValue3
  localValue1()
  localValue1 = ActivateFrontendMenu
  localValue2 = -1171018317
  localValue3 = true
  dataCollection2 = 6
  localValue1(localValue2, localValue3, dataCollection2)
end
cmgOperation2(text2, cmgOperation4)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "disconnectButtonClicked"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2
  localValue1 = workingValue3
  localValue1()
  localValue1 = true
  stateFlag3 = localValue1
  localValue1 = TriggerServerEvent
  localValue2 = "4e3937e06c"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4e3937e06c".
  localValue1(localValue2)
end
cmgOperation2(text2, cmgOperation4)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "pauseMenuClosed"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2
  localValue1 = workingValue3
  localValue1()
end
cmgOperation2(text2, cmgOperation4)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "openDisputeUI"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "APP_TOGGLE"
  localValue2.app = "dispute"
  localValue1(localValue2)
  localValue1 = stateFlag2
  if not localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "cf221d5214"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cf221d5214".
    localValue1(localValue2)
  end
end
cmgOperation2(text2, cmgOperation4)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text2 = "minigamesIP"

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3, dataCollection2
  localValue1 = CMG
  localValue1 = localValue1.copyToClipboard
  localValue2 = "connect minigames.cmg.city"
  localValue1(localValue2)
  localValue1 = TriggerEvent
  localValue2 = "371eab1d3a"
  localValue3 = {}
  localValue3.text = "IP Copied To Clipboard"
  localValue3.height = "200px"
  localValue3.width = "auto"
  localValue3.colour = "#FFF"
  localValue3.background = "#32CD32"
  localValue3.pos = "bottom-right"
  localValue3.icon = "success"
  dataCollection2 = 5000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  localValue1(localValue2, localValue3, dataCollection2)
end
cmgOperation2(text2, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "DISPUTE_UI_SET_NOTIFICATIONS"
  dataCollection2 = {}
  cmgOperation = dataCollection
  dataCollection2.notifications = cmgOperation
  dataCollection2.makeNoise = localValue1
  localValue3.info = dataCollection2
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, dataCollection2, cmgOperation, dataCollection3, cmgOperation3, tableHelper, workingValue5, number, workingValue
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isNewPlayer
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = drawNativeNotification
      localValue2 = "Press ~INPUT_FRONTEND_PAUSE_ALTERNATE~ to toggle the pause menu."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue1(localValue2)
    end
    localValue1 = InvalidateIdleCam
    localValue1()
    localValue1 = InvalidateVehicleIdleCam
    localValue1()
  end
  localValue1 = dataCollection
  localValue1 = #localValue1
  if localValue1 > 0 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = false
    localValue3 = pairs
    dataCollection2 = dataCollection
    localValue3, dataCollection2, cmgOperation, dataCollection3 = localValue3(dataCollection2)
    for cmgOperation3, tableHelper in localValue3, dataCollection2, cmgOperation, dataCollection3 do
      workingValue5 = tableHelper.startTime
      workingValue5 = localValue1 - workingValue5
      number = 5000
      if workingValue5 > number then
        workingValue5 = table
        workingValue5 = workingValue5.remove
        number = dataCollection
        workingValue = cmgOperation3
        workingValue5(number, workingValue)
        localValue2 = true
        break
      end
    end
    if localValue2 then
      localValue3 = cmgOperation2
      dataCollection2 = false
      localValue3(dataCollection2)
    end
  end
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuVisible
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = SetPauseMenuActive
      localValue2 = false
      localValue1(localValue2)
      localValue1 = CMG
      localValue1 = localValue1.isPhoneOpen
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 0
        localValue3 = 200
        localValue1 = localValue1(localValue2, localValue3)
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.isOnRadioMenu
          localValue1 = localValue1()
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.isDrawingInventoryUI
            localValue1 = localValue1()
            if not localValue1 then
              localValue1 = workingValue4
              localValue1()
          end
        end
        else
          localValue1 = IsControlJustReleased
          localValue2 = 0
          localValue3 = 199
          localValue1 = localValue1(localValue2, localValue3)
          if localValue1 then
            localValue1 = SetPauseMenuActive
            localValue2 = true
            localValue1(localValue2)
            localValue1 = ActivateFrontendMenu
            localValue2 = -1171018317
            localValue3 = true
            dataCollection2 = -1
            localValue1(localValue2, localValue3, dataCollection2)
          end
        end
      end
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text3 = text2
text = "Pause Menu"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text3, text)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation4.isPauseMenuOpen = text3
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "disputeSendMessage"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation
  localValue2 = TriggerServerEvent
  localValue3 = "10b4fb3796"
  dataCollection2 = localValue1.targetUserId
  cmgOperation = localValue1.content
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "10b4fb3796".
  localValue2(localValue3, dataCollection2, cmgOperation)
end
cmgOperation4(text3, text)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "disputeSetMuted"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation
  localValue2 = TriggerServerEvent
  localValue3 = "27c55677f1"
  dataCollection2 = localValue1.targetUserId
  cmgOperation = localValue1.isMuted
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27c55677f1".
  localValue2(localValue3, dataCollection2, cmgOperation)
end
cmgOperation4(text3, text)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "disputeSetBlocked"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation
  localValue2 = TriggerServerEvent
  localValue3 = "c50fd01afe"
  dataCollection2 = localValue1.targetUserId
  cmgOperation = localValue1.isBlocked
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c50fd01afe".
  localValue2(localValue3, dataCollection2, cmgOperation)
end
cmgOperation4(text3, text)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "disputeDelete"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2
  localValue2 = TriggerServerEvent
  localValue3 = "970e626ed0"
  dataCollection2 = localValue1.targetUserId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "970e626ed0".
  localValue2(localValue3, dataCollection2)
end
cmgOperation4(text3, text)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "disputeMakePayment"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2
  localValue2 = TriggerServerEvent
  localValue3 = "574cbfaa43"
  dataCollection2 = localValue1.messageId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "574cbfaa43".
  localValue2(localValue3, dataCollection2)
end
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "31952662d5"
-- Beginner: this function handles network event "31952662d5".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3) ===
function text(localValue1, localValue2, localValue3)
  local dataCollection2, cmgOperation, dataCollection3, cmgOperation3
  dataCollection2 = stateFlag2
  if dataCollection2 and not localValue3 then
    return
  end
  dataCollection2 = true
  stateFlag2 = dataCollection2
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.uiSendMessage
  cmgOperation = {}
  cmgOperation.type = "DISPUTE_UI_SET_DATA"
  dataCollection3 = {}
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getClientUserId
  -- Beginner: result below is userId.
  cmgOperation3 = cmgOperation3()
  dataCollection3.localUserId = cmgOperation3
  dataCollection3.disputesResult = localValue1
  dataCollection3.messagesResult = localValue2
  cmgOperation.info = dataCollection3
  dataCollection2(cmgOperation)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "31952662d5".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "27c55677f1"
-- Beginner: this function handles network event "27c55677f1".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, dataCollection2, cmgOperation
  localValue3 = stateFlag2
  if not localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "DISPUTE_UI_SET_MUTED"
  cmgOperation = {}
  cmgOperation.targetUserId = localValue1
  cmgOperation.isMuted = localValue2
  dataCollection2.info = cmgOperation
  localValue3(dataCollection2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "27c55677f1".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "c50fd01afe"
-- Beginner: this function handles network event "c50fd01afe".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, dataCollection2, cmgOperation
  localValue3 = stateFlag2
  if not localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "DISPUTE_UI_SET_BLOCKED"
  cmgOperation = {}
  cmgOperation.targetUserId = localValue1
  cmgOperation.isBlocked = localValue2
  dataCollection2.info = cmgOperation
  localValue3(dataCollection2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c50fd01afe".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "5abfdd0563"
-- Beginner: this function handles network event "5abfdd0563".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, dataCollection2, cmgOperation
  localValue3 = stateFlag2
  if not localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "DISPUTE_UI_SET_MUTED_BY_OTHER"
  cmgOperation = {}
  cmgOperation.targetUserId = localValue1
  cmgOperation.isMuted = localValue2
  dataCollection2.info = cmgOperation
  localValue3(dataCollection2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5abfdd0563".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "82d1d19438"
-- Beginner: this function handles network event "82d1d19438".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, dataCollection2, cmgOperation
  localValue3 = stateFlag2
  if not localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "DISPUTE_UI_SET_BLOCKED_BY_OTHER"
  cmgOperation = {}
  cmgOperation.targetUserId = localValue1
  cmgOperation.isBlocked = localValue2
  dataCollection2.info = cmgOperation
  localValue3(dataCollection2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "82d1d19438".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "10b4fb3796"
-- Beginner: this function handles network event "10b4fb3796".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, dataCollection2, cmgOperation, dataCollection3
  if not localValue2 then
    localValue3 = table
    localValue3 = localValue3.insert
    dataCollection2 = dataCollection
    cmgOperation = {}
    dataCollection3 = localValue1.name
    cmgOperation.name = dataCollection3
    dataCollection3 = localValue1.message
    cmgOperation.content = dataCollection3
    dataCollection3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    dataCollection3 = dataCollection3()
    cmgOperation.startTime = dataCollection3
    localValue3(dataCollection2, cmgOperation)
    localValue3 = cmgOperation2
    dataCollection2 = true
    localValue3(dataCollection2)
  end
  localValue3 = stateFlag2
  if not localValue3 then
    return
  end
  localValue3 = CMG
  localValue3 = localValue3.getClientUserId
  -- Beginner: result below is userId.
  localValue3 = localValue3()
  localValue1.localUserId = localValue3
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  dataCollection2 = {}
  dataCollection2.type = "DISPUTE_UI_ADD_MESSAGE"
  dataCollection2.info = localValue1
  localValue3(dataCollection2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "10b4fb3796".
cmgOperation4(text3, text)
cmgOperation4 = RegisterNetEvent
text3 = "970e626ed0"
-- Beginner: this function handles network event "970e626ed0".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "DISPUTE_UI_DELETE_USER"
  dataCollection2 = {}
  dataCollection2.targetUserId = localValue1
  localValue3.info = dataCollection2
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "970e626ed0".
cmgOperation4(text3, text)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.uiRegisterCallback
text3 = "notification"

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation
  localValue2 = localValue1.colour
  if "red" == localValue2 then
    localValue2 = TriggerEvent
    localValue3 = "371eab1d3a"
    dataCollection2 = {}
    cmgOperation = localValue1.message
    dataCollection2.text = cmgOperation
    dataCollection2.height = "60px"
    dataCollection2.width = "auto"
    dataCollection2.colour = "#FFF"
    dataCollection2.background = "#ff0000"
    dataCollection2.pos = "bottom-right"
    dataCollection2.icon = "bad"
    cmgOperation = 5000
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
    localValue2(localValue3, dataCollection2, cmgOperation)
  else
    localValue2 = TriggerEvent
    localValue3 = "371eab1d3a"
    dataCollection2 = {}
    cmgOperation = localValue1.message
    dataCollection2.text = cmgOperation
    dataCollection2.height = "200px"
    dataCollection2.width = "auto"
    dataCollection2.colour = "#FFF"
    dataCollection2.background = "#32CD32"
    dataCollection2.pos = "bottom-right"
    dataCollection2.icon = "success"
    cmgOperation = 5000
    localValue2(localValue3, dataCollection2, cmgOperation)
  end
end
cmgOperation4(text3, text)
cmgOperation4 = nil
text3 = AddEventHandler
text = "1e1208e937"
-- Beginner: this function runs when client event "1e1208e937" fires.

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, dataCollection2, cmgOperation, dataCollection3, cmgOperation3, tableHelper
  localValue2 = IsPedAPlayer
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = NetworkGetPlayerIndexFromPed
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 >= 0 then
      localValue3 = GetPlayerServerId
      dataCollection2 = localValue2
      -- Beginner: result below is serverId.
      localValue3 = localValue3(dataCollection2)
      if localValue3 > 0 then
        dataCollection2 = CMG
        dataCollection2 = dataCollection2.getPlayerName
        cmgOperation = localValue2
        dataCollection2 = dataCollection2(cmgOperation)
        cmgOperation = CMG
        cmgOperation = cmgOperation.clientGetUserIdFromSource
        dataCollection3 = localValue3
        -- Beginner: result below is userId.
        cmgOperation = cmgOperation(dataCollection3)
        if dataCollection2 and cmgOperation then
          dataCollection3 = cmgOperation4
          if cmgOperation ~= dataCollection3 then
            dataCollection3 = CMG
            dataCollection3 = dataCollection3.uiSendMessage
            cmgOperation3 = {}
            cmgOperation3.type = "DISPUTE_UI_ADD_RECENT"
            tableHelper = {}
            tableHelper.targetUserId = cmgOperation
            tableHelper.name = dataCollection2
            cmgOperation3.info = tableHelper
            dataCollection3(cmgOperation3)
            cmgOperation4 = cmgOperation
          end
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1e1208e937".
text3(text, workingValue2)
text3 = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = stateFlag3
  return localValue1
end
text3.isQuittingGame = text
