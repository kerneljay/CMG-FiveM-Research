--[[
    LEVEL 1 BEGINNER GUIDE — Trade
    ===================================

    File: cmg/prod/client/misc/cl_trade.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Trade feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 25
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
local cmgCall, flag, workValue2, workValue3, workValue4, cmgCall3, textValue2, workValue6, flag2
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag = "cfg/cfg_trade"
-- Beginner: result below is config.
cmgCall = cmgCall(flag)
flag = false

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local cmgCall2, dataTable
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.uiSendMessage
  dataTable = {}
  dataTable.action = arg1
  dataTable.payload = arg2
  cmgCall2(dataTable)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, cmgCall2, dataTable
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = true
  flag = arg1
  arg1 = CMG
  arg1 = arg1.hideHud
  arg1()
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = "Trade"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = true
  cmgCall2 = true
  dataTable = false
  arg1(arg2, cmgCall2, dataTable)
  arg1 = workValue2
  arg2 = "TRADE_CONFIG"
  cmgCall2 = {}
  dataTable = cmgCall.requireGreenzone
  dataTable = true == dataTable
  cmgCall2.requireGreenzone = dataTable
  dataTable = cmgCall.strings
  cmgCall2.strings = dataTable
  arg1(arg2, cmgCall2)
  arg1 = workValue2
  arg2 = "TRADE_SEARCH_RESULT"
  cmgCall2 = {}
  dataTable = {}
  cmgCall2.players = dataTable
  arg1(arg2, cmgCall2)
  arg1 = workValue2
  arg2 = "TRADE_RECEIVED_CODES"
  cmgCall2 = {}
  dataTable = {}
  cmgCall2.codes = dataTable
  arg1(arg2, cmgCall2)
  arg1 = TriggerServerEvent
  arg2 = "fbcf63271b"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fbcf63271b".
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "51e7a220eb"
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "a059ad9b7e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a059ad9b7e".
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, cmgCall2, dataTable
  arg1 = flag
  if not arg1 then
    return
  end
  arg1 = false
  flag = arg1
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "APP_TOGGLE"
  arg2.app = ""
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  cmgCall2 = false
  dataTable = false
  arg1(arg2, cmgCall2, dataTable)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerCommand
textValue2 = "trade"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = cmgCall.requireGreenzone
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isInGreenzone
    arg1 = arg1()
    if not arg1 then
      arg1 = tCMG
      arg1 = arg1.notify
      arg2 = "~r~You must be in a greenzone to open a secure trade."
      -- Beginner: Show a notification to the player.
      arg1(arg2)
      return
    end
  end
  arg1 = workValue3
  arg1()
end
flag2 = false
cmgCall3(textValue2, workValue6, flag2)
cmgCall3 = RegisterNetEvent
textValue2 = "ba8e9e6cb6"
-- Beginner: this function handles network event "ba8e9e6cb6".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = workValue3
  arg2()
  arg2 = workValue2
  cmgCall2 = "TRADE_OPEN_REQUEST"
  dataTable = {}
  dataTable.id = arg1
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ba8e9e6cb6".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "ef22611740"
-- Beginner: this function handles network event "ef22611740".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = flag
  if arg2 then
    arg2 = workValue2
    cmgCall2 = "TRADE_TRADES"
    dataTable = {}
    if arg1 then
      stringHelper3 = arg1.trades
      if stringHelper3 then
        goto flow_label_15
      end
    end
    stringHelper3 = {}
    ::flow_label_15::
    dataTable.trades = stringHelper3
    arg2(cmgCall2, dataTable)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ef22611740".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "910d817f7c"
-- Beginner: this function handles network event "910d817f7c".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3, textValue
  arg2 = flag
  if arg2 then
    arg2 = workValue2
    cmgCall2 = "TRADE_NOTIFY"
    dataTable = {}
    dataTable.success = true
    stringHelper3 = tostring
    textValue = arg1
    stringHelper3 = stringHelper3(textValue)
    textValue = " sent you a trade offer."
    stringHelper3 = stringHelper3 .. textValue
    dataTable.message = stringHelper3
    arg2(cmgCall2, dataTable)
  else
    arg2 = tCMG
    arg2 = arg2.notify
    cmgCall2 = "~g~"
    dataTable = tostring
    stringHelper3 = arg1
    dataTable = dataTable(stringHelper3)
    stringHelper3 = " ~w~sent you a trade offer. Type ~g~/trade~w~ to view it."
    cmgCall2 = cmgCall2 .. dataTable .. stringHelper3
    -- Beginner: Show a notification to the player.
    arg2(cmgCall2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "910d817f7c".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "8065ef8ec9"
-- Beginner: this function handles network event "8065ef8ec9".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local cmgCall2, dataTable, stringHelper3
  cmgCall2 = flag
  if cmgCall2 then
    cmgCall2 = workValue2
    dataTable = "TRADE_CLOSED"
    stringHelper3 = {}
    stringHelper3.id = arg1
    stringHelper3.reason = arg2
    cmgCall2(dataTable, stringHelper3)
    cmgCall2 = TriggerServerEvent
    dataTable = "51e7a220eb"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "51e7a220eb".
    cmgCall2(dataTable)
    cmgCall2 = TriggerServerEvent
    dataTable = "a059ad9b7e"
    cmgCall2(dataTable)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8065ef8ec9".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "b9cdb13387"
-- Beginner: this function handles network event "b9cdb13387".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = workValue2
  cmgCall2 = "TRADE_SEARCH_RESULT"
  dataTable = {}
  stringHelper3 = arg1 or stringHelper3
  if not arg1 then
    stringHelper3 = {}
  end
  dataTable.players = stringHelper3
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b9cdb13387".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "fe689155ce"
-- Beginner: this function handles network event "fe689155ce".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3, textValue, workValue5, workValue7, workValue8, workValue9, stringHelper, stringHelper2, workValue
  if arg1 then
    arg2 = type
    cmgCall2 = arg1.vehicles
    arg2 = arg2(cmgCall2)
    if "table" == arg2 then
      arg2 = CMG
      arg2 = arg2.getTradeVehicleGrouping
      arg2 = arg2()
      cmgCall2 = {}
      dataTable = ipairs
      stringHelper3 = arg1.vehicles
      dataTable, stringHelper3, textValue, workValue5 = dataTable(stringHelper3)
      for workValue7, workValue8 in dataTable, stringHelper3, textValue, workValue5 do
        workValue9 = arg2.byUuid
        stringHelper = tostring
        stringHelper2 = workValue8.uuid
        stringHelper = stringHelper(stringHelper2)
        workValue9 = workValue9[stringHelper]
        if workValue9 then
          stringHelper = workValue9.name
          if stringHelper then
            stringHelper = workValue9.name
            if "" ~= stringHelper then
              stringHelper = workValue9.name
              workValue8.name = stringHelper
            end
          end
          stringHelper = workValue9.garage
          workValue8.garage = stringHelper
          stringHelper = arg2.folderOf
          stringHelper2 = tostring
          workValue = workValue8.uuid
          stringHelper2 = stringHelper2(workValue)
          stringHelper = stringHelper[stringHelper2]
          workValue8.folder = stringHelper
          stringHelper = #cmgCall2
          stringHelper = stringHelper + 1
          cmgCall2[stringHelper] = workValue8
        end
      end
      arg1.vehicles = cmgCall2
    end
  end
  arg2 = workValue2
  cmgCall2 = "TRADE_OWNED_ASSETS"
  dataTable = arg1 or dataTable
  if not arg1 then
    dataTable = {}
  end
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe689155ce".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "9fde748e2f"
-- Beginner: this function handles network event "9fde748e2f".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = workValue2
  cmgCall2 = "TRADE_NEARBY"
  dataTable = {}
  stringHelper3 = arg1 or stringHelper3
  if not arg1 then
    stringHelper3 = {}
  end
  dataTable.players = stringHelper3
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9fde748e2f".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "37caf2095f"
-- Beginner: this function handles network event "37caf2095f".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = workValue2
  cmgCall2 = "TRADE_HISTORY"
  dataTable = {}
  stringHelper3 = arg1 or stringHelper3
  if not arg1 then
    stringHelper3 = {}
  end
  dataTable.history = stringHelper3
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "37caf2095f".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "d814734263"
-- Beginner: this function handles network event "d814734263".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = workValue2
  cmgCall2 = "TRADE_RECEIVED_CODES"
  dataTable = {}
  stringHelper3 = arg1 or stringHelper3
  if not arg1 then
    stringHelper3 = {}
  end
  dataTable.codes = stringHelper3
  arg2(cmgCall2, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d814734263".
cmgCall3(textValue2, workValue6)
cmgCall3 = RegisterNetEvent
textValue2 = "4f46039970"
-- Beginner: this function handles network event "4f46039970".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local cmgCall2, dataTable, stringHelper3, textValue
  cmgCall2 = flag
  if cmgCall2 then
    cmgCall2 = workValue2
    dataTable = "TRADE_NOTIFY"
    stringHelper3 = {}
    textValue = true == arg1
    stringHelper3.success = textValue
    stringHelper3.message = arg2
    cmgCall2(dataTable, stringHelper3)
  else
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.notify
    if arg1 then
      dataTable = "~g~"
      if dataTable then
        goto flow_label_24
      end
    end
    dataTable = "~r~"
    ::flow_label_24::
    stringHelper3 = tostring
    textValue = arg2
    stringHelper3 = stringHelper3(textValue)
    dataTable = dataTable .. stringHelper3
    -- Beginner: Show a notification to the player.
    cmgCall2(dataTable)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4f46039970".
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeClose"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = workValue4
  arg1()
  arg1 = {}
  return arg1
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeRequestAssets"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "51e7a220eb"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "51e7a220eb".
  arg1(arg2)
  arg1 = {}
  return arg1
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeRequestNearby"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "a059ad9b7e"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a059ad9b7e".
  arg1(arg2)
  arg1 = {}
  return arg1
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeRequestHistory"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "2fd1627707"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2fd1627707".
  arg1(arg2)
  arg1 = {}
  return arg1
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeSearchPlayers"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.query
  end
  cmgCall2 = type
  dataTable = arg2
  cmgCall2 = cmgCall2(dataTable)
  if "string" == cmgCall2 then
    cmgCall2 = TriggerServerEvent
    dataTable = "a1240f68eb"
    stringHelper3 = arg2
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1240f68eb".
    cmgCall2(dataTable, stringHelper3)
  end
  cmgCall2 = {}
  return cmgCall2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeSendRequest"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable, stringHelper3, textValue
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.userId
    if not arg2 then
      arg2 = arg1.permId
    end
  end
  if arg2 then
    cmgCall2 = TriggerServerEvent
    dataTable = "74b159a53a"
    stringHelper3 = tonumber
    textValue = arg2
    stringHelper3 = stringHelper3(textValue)
    if not stringHelper3 then
      stringHelper3 = arg2
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "74b159a53a".
    cmgCall2(dataTable, stringHelper3)
  end
  cmgCall2 = {}
  return cmgCall2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeAddEntry"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = type
  cmgCall2 = arg1
  arg2 = arg2(cmgCall2)
  if "table" == arg2 then
    arg2 = TriggerServerEvent
    cmgCall2 = "707df9c39b"
    dataTable = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "707df9c39b".
    arg2(cmgCall2, dataTable)
  end
  arg2 = {}
  return arg2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeRemoveEntry"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = type
  cmgCall2 = arg1
  arg2 = arg2(cmgCall2)
  if "table" == arg2 then
    arg2 = arg1.entryId
    if arg2 then
      arg2 = TriggerServerEvent
      cmgCall2 = "d934a3fb01"
      dataTable = arg1
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d934a3fb01".
      arg2(cmgCall2, dataTable)
    end
  end
  arg2 = {}
  return arg2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeSetLock"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = type
  cmgCall2 = arg1
  arg2 = arg2(cmgCall2)
  if "table" == arg2 then
    arg2 = TriggerServerEvent
    cmgCall2 = "fe062b772b"
    dataTable = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fe062b772b".
    arg2(cmgCall2, dataTable)
  end
  arg2 = {}
  return arg2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeConfirm"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = TriggerServerEvent
  cmgCall2 = "060631779e"
  dataTable = arg1 or dataTable
  if arg1 then
    dataTable = arg1.sessionId
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "060631779e".
  arg2(cmgCall2, dataTable)
  arg2 = {}
  return arg2
end
cmgCall3(textValue2, workValue6)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "tradeCancel"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, cmgCall2, dataTable
  arg2 = TriggerServerEvent
  cmgCall2 = "208a35e0a1"
  dataTable = arg1 or dataTable
  if arg1 then
    dataTable = arg1.sessionId
  end
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "208a35e0a1".
  arg2(cmgCall2, dataTable)
  arg2 = {}
  return arg2
end
cmgCall3(textValue2, workValue6)
