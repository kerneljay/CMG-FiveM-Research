local tradeConfig = CMG.loadModule("cfg/cfg_trade")
local tradeUiOpen = false

local function sendTradeUiAction(action, payload)
  CMG.uiSendMessage({
    action = action,
    payload = payload
  })
end

local function requestTradeDataFromServer()
  TriggerServerEvent("fbcf63271b")
  TriggerServerEvent("51e7a220eb")
  TriggerServerEvent("a059ad9b7e")
end

local function openTradeUi()
  if tradeUiOpen then
    return
  end

  tradeUiOpen = true
  CMG.hideHud()
  CMG.uiSendMessage({
    type = "APP_TOGGLE",
    app = "Trade"
  })
  CMG.uiSetFocus(true, true, false)

  sendTradeUiAction("TRADE_CONFIG", {
    requireGreenzone = tradeConfig.requireGreenzone == true,
    strings = tradeConfig.strings
  })

  sendTradeUiAction("TRADE_SEARCH_RESULT", { players = {} })
  sendTradeUiAction("TRADE_RECEIVED_CODES", { codes = {} })
  requestTradeDataFromServer()
end

local function closeTradeUi()
  if not tradeUiOpen then
    return
  end

  tradeUiOpen = false
  CMG.showHud()
  CMG.uiSendMessage({
    type = "APP_TOGGLE",
    app = ""
  })
  CMG.uiSetFocus(false, false, false)
end

CMG.registerCommand("trade", function()
  if tradeConfig.requireGreenzone and not CMG.isInGreenzone() then
    tCMG.notify("~r~You must be in a greenzone to open a secure trade.")
    return
  end

  openTradeUi()
end, false)

RegisterNetEvent("ba8e9e6cb6", function(requestId)
  openTradeUi()
  sendTradeUiAction("TRADE_OPEN_REQUEST", {
    id = requestId
  })
end)

RegisterNetEvent("ef22611740", function(data)
  if tradeUiOpen then
    sendTradeUiAction("TRADE_TRADES", {
      trades = data and data.trades or {}
    })
  end
end)

RegisterNetEvent("910d817f7c", function(senderName)
  if tradeUiOpen then
    sendTradeUiAction("TRADE_NOTIFY", {
      success = true,
      message = tostring(senderName) .. " sent you a trade offer."
    })
  else
    tCMG.notify("~g~" .. tostring(senderName) .. " ~w~sent you a trade offer. Type ~g~/trade~w~ to view it.")
  end
end)

RegisterNetEvent("8065ef8ec9", function(sessionId, reason)
  if not tradeUiOpen then
    return
  end

  sendTradeUiAction("TRADE_CLOSED", {
    id = sessionId,
    reason = reason
  })

  TriggerServerEvent("51e7a220eb")
  TriggerServerEvent("a059ad9b7e")
end)

RegisterNetEvent("b9cdb13387", function(players)
  sendTradeUiAction("TRADE_SEARCH_RESULT", {
    players = players or {}
  })
end)

local function attachVehicleDisplayData(assets)
  if not assets or type(assets.vehicles) ~= "table" then
    return assets or {}
  end

  local vehicleGrouping = CMG.getTradeVehicleGrouping()
  local visibleVehicles = {}

  for _, vehicle in ipairs(assets.vehicles) do
    local groupedVehicle = vehicleGrouping.byUuid[tostring(vehicle.uuid)]

    if groupedVehicle then
      if groupedVehicle.name and groupedVehicle.name ~= "" then
        vehicle.name = groupedVehicle.name
      end

      vehicle.garage = groupedVehicle.garage
      vehicle.folder = vehicleGrouping.folderOf[tostring(vehicle.uuid)]
      visibleVehicles[#visibleVehicles + 1] = vehicle
    end
  end

  assets.vehicles = visibleVehicles
  return assets
end

RegisterNetEvent("fe689155ce", function(assets)
  sendTradeUiAction("TRADE_OWNED_ASSETS", attachVehicleDisplayData(assets))
end)

RegisterNetEvent("9fde748e2f", function(players)
  sendTradeUiAction("TRADE_NEARBY", {
    players = players or {}
  })
end)

RegisterNetEvent("37caf2095f", function(history)
  sendTradeUiAction("TRADE_HISTORY", {
    history = history or {}
  })
end)

RegisterNetEvent("d814734263", function(codes)
  sendTradeUiAction("TRADE_RECEIVED_CODES", {
    codes = codes or {}
  })
end)

RegisterNetEvent("4f46039970", function(success, message)
  if tradeUiOpen then
    sendTradeUiAction("TRADE_NOTIFY", {
      success = success == true,
      message = message
    })
  else
    tCMG.notify((success and "~g~" or "~r~") .. tostring(message))
  end
end)

CMG.uiRegisterCallback("tradeClose", function()
  closeTradeUi()
  return {}
end)

CMG.uiRegisterCallback("tradeRequestAssets", function()
  TriggerServerEvent("51e7a220eb")
  return {}
end)

CMG.uiRegisterCallback("tradeRequestNearby", function()
  TriggerServerEvent("a059ad9b7e")
  return {}
end)

CMG.uiRegisterCallback("tradeRequestHistory", function()
  TriggerServerEvent("2fd1627707")
  return {}
end)

CMG.uiRegisterCallback("tradeSearchPlayers", function(data)
  local query = data and data.query

  if type(query) == "string" then
    TriggerServerEvent("a1240f68eb", query)
  end

  return {}
end)

CMG.uiRegisterCallback("tradeSendRequest", function(data)
  local userId = data and (data.userId or data.permId)

  if userId then
    TriggerServerEvent("74b159a53a", tonumber(userId) or userId)
  end

  return {}
end)

CMG.uiRegisterCallback("tradeAddEntry", function(data)
  if type(data) == "table" then
    TriggerServerEvent("707df9c39b", data)
  end

  return {}
end)

CMG.uiRegisterCallback("tradeRemoveEntry", function(data)
  if type(data) == "table" and data.entryId then
    TriggerServerEvent("d934a3fb01", data)
  end

  return {}
end)

CMG.uiRegisterCallback("tradeSetLock", function(data)
  if type(data) == "table" then
    TriggerServerEvent("fe062b772b", data)
  end

  return {}
end)

CMG.uiRegisterCallback("tradeConfirm", function(data)
  TriggerServerEvent("060631779e", data and data.sessionId or nil)
  return {}
end)

CMG.uiRegisterCallback("tradeCancel", function(data)
  TriggerServerEvent("208a35e0a1", data and data.sessionId or nil)
  return {}
end)
