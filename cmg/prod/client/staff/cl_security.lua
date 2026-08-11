--[[
    LEVEL 1 BEGINNER GUIDE — Security
    ======================================

    File: cmg/prod/client/staff/cl_security.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Security feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 21
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
local waitCall, numberValue, flag, workValue2, cmgCall, textValue2, workValue3, cmgCall3, cmgCall4, cmgCall5, textValue, workValue
waitCall = Wait
numberValue = 0
waitCall(numberValue)
waitCall = {}
numberValue = 1
flag = false

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3
  arg2 = numberValue
  arg3 = waitCall
  arg3[arg2] = arg1
  arg3 = numberValue
  arg3 = arg3 + 1
  numberValue = arg3
  return arg2
end
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue2 = "screenshot_created"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3
  arg2 = arg1.id
  if arg2 then
    arg3 = arg1.id
    arg2 = waitCall
    arg2 = arg2[arg3]
    if arg2 then
      arg3 = arg1.id
      arg2 = waitCall
      arg2 = arg2[arg3]
      arg3 = arg1.data
      arg2(arg3)
      arg3 = arg1.id
      arg2 = waitCall
      arg2[arg3] = nil
    end
  end
end
cmgCall(textValue2, workValue3)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue2 = "video_created"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.id
  if arg2 then
    arg3 = arg1.id
    arg2 = waitCall
    arg2 = arg2[arg3]
    if arg2 then
      arg3 = arg1.id
      arg2 = waitCall
      arg2 = arg2[arg3]
      arg3 = arg1.currentVideo
      arg4 = arg1.previousVideo
      arg2(arg3, arg4)
      arg3 = arg1.id
      arg2 = waitCall
      arg2[arg3] = nil
    end
  end
end
cmgCall(textValue2, workValue3)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue2 = "video_uploading"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3
  arg2 = arg1.id
  if arg2 then
    arg3 = arg1.id
    arg2 = waitCall
    arg2 = arg2[arg3]
    if arg2 then
      arg3 = arg1.id
      arg2 = waitCall
      arg2 = arg2[arg3]
      arg2()
      arg3 = arg1.id
      arg2 = waitCall
      arg2[arg3] = nil
    end
  end
end
cmgCall(textValue2, workValue3)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue2 = "keep_alive"

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, arg3
  arg2 = arg1.id
  if arg2 then
    arg3 = arg1.id
    arg2 = waitCall
    arg2 = arg2[arg3]
    if arg2 then
      arg3 = arg1.id
      arg2 = waitCall
      arg2 = arg2[arg3]
      arg3 = arg1.failReason
      arg2(arg3)
      arg3 = arg1.id
      arg2 = waitCall
      arg2[arg3] = nil
    end
  end
end
cmgCall(textValue2, workValue3)
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3, arg4) ===
function textValue2(arg1, arg2, arg3, arg4)
  local arg5, dataTable, cmgCall2, dataTable2
  arg5 = arg3 or arg5
  if not arg4 or not arg3 then
    arg5 = {}
    dataTable = {}
    arg5.headers = dataTable
    arg5.encoding = "jpg"
  end
  dataTable = arg4 or dataTable
  if not arg4 then
    dataTable = arg3
  end
  arg5.targetURL = arg1
  arg5.targetField = arg2
  arg5.resultURL = "http://cmgui/screenshot_created"
  cmgCall2 = workValue2
  dataTable2 = dataTable
  cmgCall2 = cmgCall2(dataTable2)
  arg5.correlation = cmgCall2
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.uiSendMessage
  dataTable2 = {}
  dataTable2.action = "securityRecorder"
  dataTable2.data = arg5
  cmgCall2(dataTable2)
end
cmgCall.requestScreenshotUpload = textValue2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3, arg4, arg5) ===
function textValue2(arg1, arg2, arg3, arg4, arg5)
  local dataTable, cmgCall2, dataTable2, dataTable3
  dataTable = arg3 or dataTable
  if not arg4 or not arg3 then
    dataTable = {}
    cmgCall2 = {}
    dataTable.headers = cmgCall2
    dataTable.isVideo = true
    dataTable.isManual = false
    dataTable.encoding = "webm"
  end
  cmgCall2 = arg4 or cmgCall2
  if not arg4 then
    cmgCall2 = arg3
  end
  dataTable.targetURL = arg1
  dataTable.targetField = arg2
  dataTable.resultURL = "http://cmgui/video_created"
  dataTable2 = workValue2
  dataTable3 = cmgCall2
  dataTable2 = dataTable2(dataTable3)
  dataTable.correlation = dataTable2
  if arg5 then
    dataTable.uploadingResultURL = "http://cmgui/video_uploading"
    dataTable2 = workValue2
    dataTable3 = arg5
    dataTable2 = dataTable2(dataTable3)
    dataTable.uploadingCorrelation = dataTable2
  end
  dataTable2 = CMG
  dataTable2 = dataTable2.uiSendMessage
  dataTable3 = {}
  dataTable3.action = "securityRecorder"
  dataTable3.data = dataTable
  dataTable2(dataTable3)
end
cmgCall.requestVideoUpload = textValue2
cmgCall = 0

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, dataTable
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.action = "securityRecorder"
  arg4 = {}
  arg4.isKeepAlive = true
  arg5 = workValue2
  dataTable = arg1
  arg5 = arg5(dataTable)
  arg4.correlation = arg5
  arg4.resultURL = "http://cmgui/keep_alive"
  arg3.data = arg4
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = textValue2

  -- === HELPER FUNCTION: arg2(arg12) ===
  function arg2(arg12)
    local gameTime
    if not arg12 then
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      cmgCall = gameTime
    end
  end
  arg1(arg2)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = cmgCall
  arg1 = arg1 - arg2
  arg2 = 120000
  if arg1 > arg2 then
    arg1 = CMG
    arg1 = arg1.isDevMode
    arg1 = arg1()
    if not arg1 then
      arg1 = TriggerServerEvent
      arg2 = "99f7ddf34a"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "99f7ddf34a".
      arg1(arg2)
    end
  end
end
cmgCall3 = AddEventHandler
cmgCall4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4
  if arg2 then
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    cmgCall = arg3
    while true do
      arg3 = workValue3
      arg3()
      arg3 = Citizen
      arg3 = arg3.Wait
      arg4 = 5000
      arg3(arg4)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = RegisterNetEvent
cmgCall4 = "27459d8750"
-- Beginner: this function handles network event "27459d8750".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4, arg5, dataTable, cmgCall2
  if arg2 then
    arg3 = CMG
    arg3 = arg3.isDevMode
    arg3 = arg3()
    if arg3 then
      arg3 = "localhost"
      if arg3 then
        goto flow_label_12
      end
    end
    arg3 = "s1.cmg.city"
    ::flow_label_12::
    arg4 = "http://"
    arg5 = arg3
    dataTable = ":30120/cmg/screen?guid="
    cmgCall2 = arg1
    arg4 = arg4 .. arg5 .. dataTable .. cmgCall2
    arg5 = CMG
    arg5 = arg5.openURL
    dataTable = arg4
    arg5(dataTable)
  else
    arg3 = CMG
    arg3 = arg3.uiSendMessage
    arg4 = {}
    arg4.action = "fetchPeerIdForScreenView"
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "27459d8750".
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
cmgCall4 = "fetchPeerIdForScreenView"

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "27459d8750"
  arg4 = arg1.peerId
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "27459d8750".
  arg2(arg3, arg4)
end
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = RegisterNetEvent
cmgCall4 = "4193527f42"
-- Beginner: this function handles network event "4193527f42".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.action = "connectScreenViewToPeerId"
  arg4 = {}
  arg4.peerId = arg1
  arg3.data = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4193527f42".
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
cmgCall4 = "closeScreenView"

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "a7d85abf0b"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a7d85abf0b".
  arg1(arg2)
end
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = RegisterNetEvent
cmgCall4 = "ca62cdb8a4"
-- Beginner: this function handles network event "ca62cdb8a4".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1) ===
function cmgCall5(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.action = "closeScreenViewConnection"
  arg4 = {}
  arg4.isStaff = arg1
  arg3.data = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ca62cdb8a4".
cmgCall3(cmgCall4, cmgCall5)

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 344
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.uiSendMessage
    arg2 = {}
    arg2.action = "setScreenViewFullscreen"
    arg1(arg2)
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
cmgCall5 = "setScreenViewActive"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1.active
  if arg2 then
    arg2 = CMG
    arg2 = arg2.hideAllDisplays
    arg3 = "screenview"
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.uiSetFocus
    arg3 = true
    arg4 = false
    arg5 = false
    arg2(arg3, arg4, arg5)
  else
    arg2 = CMG
    arg2 = arg2.showAllDisplays
    arg3 = "screenview"
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.uiSetFocus
    arg3 = false
    arg4 = false
    arg5 = false
    arg2(arg3, arg4, arg5)
  end
  arg2 = arg1.fullscreen
  if arg2 then
    arg2 = flag
    if arg2 then
      arg2 = CMG
      arg2 = arg2.deleteThreadOnTick
      arg3 = cmgCall3
      arg2(arg3)
      arg2 = false
      flag = arg2
    end
  else
    arg2 = flag
    if not arg2 then
      arg2 = CMG
      arg2 = arg2.createThreadOnTick
      arg3 = cmgCall3
      arg4 = "Security Windowed Controls"
      -- Beginner: Run a helper every game frame while this script is active.
      arg2(arg3, arg4)
      arg2 = true
      flag = arg2
    end
  end
end
cmgCall4(cmgCall5, textValue)
cmgCall4 = CMG
cmgCall4 = cmgCall4.uiRegisterCallback
cmgCall5 = "scFail"

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, arg3, arg4
  arg2 = TriggerServerEvent
  arg3 = "1210872e84"
  arg4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1210872e84".
  arg2(arg3, arg4)
end
cmgCall4(cmgCall5, textValue)
cmgCall4 = false
cmgCall5 = RegisterNUICallback
textValue = "syncClock"

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3, arg4
  arg3 = cmgCall4
  if not arg3 then
    arg3 = TriggerServerEvent
    arg4 = "cb3f1ca2d1"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cb3f1ca2d1".
    arg3(arg4)
    arg3 = true
    cmgCall4 = arg3
  end
  arg3 = arg2
  arg4 = "ok"
  arg3(arg4)
end
cmgCall5(textValue, workValue)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
textValue = "tasty"

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, arg5, dataTable
  arg2 = CMG
  arg2 = arg2.getClientUserId
  -- Beginner: result below is userId.
  arg2 = arg2()
  while not arg2 do
    arg3 = CMG
    arg3 = arg3.getClientUserId
    -- Beginner: result below is userId.
    arg3 = arg3()
    arg2 = arg3
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = 0
  if arg1 then
    arg4 = arg1[1]
    if arg4 then
      arg4 = tonumber
      arg5 = arg1[1]
      arg4 = arg4(arg5)
      if arg4 then
        arg4 = tonumber
        arg5 = arg1[1]
        arg4 = arg4(arg5)
        arg3 = arg4 ~ 3735928559
      end
    end
  end
  if arg3 > 0 and arg3 ~= arg2 then
    arg4 = TriggerServerEvent
    arg5 = "f41bab8346"
    dataTable = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f41bab8346".
    arg4(arg5, dataTable)
    return
  end
  arg4 = {}
  arg5 = arg2 ~ 3735928559
  arg4[1] = arg5
  return arg4
end
cmgCall5(textValue, workValue)
