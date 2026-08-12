--[[
  LEVEL 1 BEGINNER NOTES - Security

  This file connects the game client to the security recorder UI.

  Big idea:
    1. The Lua side asks the UI to take screenshots or videos.
    2. Each request gets an id.
    3. When the UI finishes, it sends that id back.
    4. The Lua side calls the matching callback.

  Keep the event names exactly as they are. They are shared with the server/UI.
]]

Wait(0)

local pendingCallbacks = {}
local nextCallbackId = 1
local lastKeepAliveFailTime = 0
local screenViewWindowedControlsActive = false
local clockSyncRequested = false

local function storeCallback(callback)
  local callbackId = nextCallbackId

  pendingCallbacks[callbackId] = callback
  nextCallbackId = nextCallbackId + 1

  return callbackId
end

local function runCallbackOnce(callbackId, ...)
  local callback = pendingCallbacks[callbackId]

  if not callback then
    return
  end

  callback(...)
  pendingCallbacks[callbackId] = nil
end

CMG.uiRegisterCallback("screenshot_created", function(data)
  if data.id then
    runCallbackOnce(data.id, data.data)
  end
end)

CMG.uiRegisterCallback("video_created", function(data)
  if data.id then
    runCallbackOnce(data.id, data.currentVideo, data.previousVideo)
  end
end)

CMG.uiRegisterCallback("video_uploading", function(data)
  if data.id then
    runCallbackOnce(data.id)
  end
end)

CMG.uiRegisterCallback("keep_alive", function(data)
  if data.id then
    runCallbackOnce(data.id, data.failReason)
  end
end)

function CMG.requestScreenshotUpload(targetUrl, targetField, options, callback)
  if not callback or not options then
    callback = options
    options = {
      headers = {},
      encoding = "jpg",
    }
  end

  options.targetURL = targetUrl
  options.targetField = targetField
  options.resultURL = "http://cmgui/screenshot_created"
  options.correlation = storeCallback(callback)

  CMG.uiSendMessage({
    action = "securityRecorder",
    data = options,
  })
end

function CMG.requestVideoUpload(targetUrl, targetField, options, callback, uploadingCallback)
  if not callback or not options then
    callback = options
    options = {
      headers = {},
      isVideo = true,
      isManual = false,
      encoding = "webm",
    }
  end

  options.targetURL = targetUrl
  options.targetField = targetField
  options.resultURL = "http://cmgui/video_created"
  options.correlation = storeCallback(callback)

  if uploadingCallback then
    options.uploadingResultURL = "http://cmgui/video_uploading"
    options.uploadingCorrelation = storeCallback(uploadingCallback)
  end

  CMG.uiSendMessage({
    action = "securityRecorder",
    data = options,
  })
end

local function requestRecorderKeepAlive(callback)
  CMG.uiSendMessage({
    action = "securityRecorder",
    data = {
      isKeepAlive = true,
      correlation = storeCallback(callback),
      resultURL = "http://cmgui/keep_alive",
    },
  })
end

local function checkRecorderKeepAlive()
  requestRecorderKeepAlive(function(failReason)
    if not failReason then
      lastKeepAliveFailTime = GetGameTimer()
    end
  end)

  if GetGameTimer() - lastKeepAliveFailTime > 120000 and not CMG.isDevMode() then
    TriggerServerEvent("99f7ddf34a")
  end
end

AddEventHandler("CMG:onClientSpawn", function(_, spawned)
  if not spawned then
    return
  end

  lastKeepAliveFailTime = GetGameTimer()

  while true do
    checkRecorderKeepAlive()
    Citizen.Wait(5000)
  end
end)

RegisterNetEvent("27459d8750", function(guid, shouldOpenBrowser)
  if shouldOpenBrowser then
    local host = "s1.cmg.city"

    if CMG.isDevMode() then
      host = "localhost"
    end

    CMG.openURL("http://" .. host .. ":30120/cmg/screen?guid=" .. guid)
    return
  end

  CMG.uiSendMessage({
    action = "fetchPeerIdForScreenView",
  })
end)

CMG.uiRegisterCallback("fetchPeerIdForScreenView", function(data)
  TriggerServerEvent("27459d8750", data.peerId)
end)

RegisterNetEvent("4193527f42", function(peerId)
  CMG.uiSendMessage({
    action = "connectScreenViewToPeerId",
    data = {
      peerId = peerId,
    },
  })
end)

CMG.uiRegisterCallback("closeScreenView", function()
  TriggerServerEvent("a7d85abf0b")
end)

RegisterNetEvent("ca62cdb8a4", function(isStaff)
  CMG.uiSendMessage({
    action = "closeScreenViewConnection",
    data = {
      isStaff = isStaff,
    },
  })
end)

local function handleWindowedScreenViewControls()
  if IsControlJustPressed(0, 344) then
    CMG.uiSendMessage({
      action = "setScreenViewFullscreen",
    })
  end
end

CMG.uiRegisterCallback("setScreenViewActive", function(data)
  if data.active then
    CMG.hideAllDisplays("screenview")
    CMG.uiSetFocus(true, false, false)
  else
    CMG.showAllDisplays("screenview")
    CMG.uiSetFocus(false, false, false)
  end

  if data.fullscreen then
    if screenViewWindowedControlsActive then
      CMG.deleteThreadOnTick(handleWindowedScreenViewControls)
      screenViewWindowedControlsActive = false
    end

    return
  end

  if not screenViewWindowedControlsActive then
    CMG.createThreadOnTick(handleWindowedScreenViewControls, "Security Windowed Controls")
    screenViewWindowedControlsActive = true
  end
end)

CMG.uiRegisterCallback("scFail", function(data)
  TriggerServerEvent("1210872e84", data)
end)

RegisterNUICallback("syncClock", function(_, cb)
  if not clockSyncRequested then
    TriggerServerEvent("cb3f1ca2d1")
    clockSyncRequested = true
  end

  cb("ok")
end)

CMG.uiRegisterCallback("tasty", function(data)
  local userId = CMG.getClientUserId()

  while not userId do
    userId = CMG.getClientUserId()
    Wait(0)
  end

  local decodedUserId = 0

  if data and data[1] and tonumber(data[1]) then
    decodedUserId = tonumber(data[1]) ~ 3735928559
  end

  if decodedUserId > 0 and decodedUserId ~= userId then
    TriggerServerEvent("f41bab8346", decodedUserId)
    return
  end

  return {
    userId ~ 3735928559,
  }
end)
