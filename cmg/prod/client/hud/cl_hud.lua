--[[
    LEVEL 1 BEGINNER GUIDE — Hud
    =================================

    File: cmg/prod/client/hud/cl_hud.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Hud feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 72
      * Background threads: 0
      * Always-running loops: 9
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
local cmgCall, dataTable6, flag4, flag9, textValue10, cmgCall13, workValue17, workValue18, cmgCall14, cmgCall15, flag, dataTable, dataTable2, workValue3, workValue4, cmgCall2, dataTable3, cmgCall3, dataTable4, dataTable5, dataTable7, dataTable9, dataTable10, dataTable11, cmgCall5, dataTable12, cmgCall6, textValue6, workValue9, cmgCall7, cmgCall8, textValue7, workValue10, workValue11, cmgCall9, cmgCall10, textValue8, workValue12, flag7, flag8, workValue14, cmgCall11, cmgCall12, textValue9, workValue15
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable6 = "cfg/cfg_hud"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable6)
dataTable6 = {}
dataTable6.compassBehaviour = "mouselook"
dataTable6.speedType = "mph"
dataTable6.cinematicMode = false
dataTable6.streamerMode = false
dataTable6.playMediaSongs = false
flag4 = false
flag9 = false
textValue10 = GetResourceKvpString
cmgCall13 = "cmg_legacy_hud"
textValue10 = textValue10(cmgCall13)
textValue10 = "1" == textValue10
cmgCall13 = CMG

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2
  arg1 = textValue10
  return arg1
end
cmgCall13.isLegacyHudEnabled = workValue17
cmgCall13 = CMG

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2
  arg1 = flag4
  return arg1
end
cmgCall13.isHudVehicleCursorEnabled = workValue17
cmgCall13 = CMG

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2
  arg1 = flag9
  return arg1
end
cmgCall13.isHudLoaded = workValue17
cmgCall13 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2
  while true do
    arg1 = flag9
    if arg1 then
      break
    end
    arg1 = CMG
    arg1 = arg1.uiSendMessage
    arg2 = {}
    arg2.action = "CHECK_NUI"
    arg1(arg2)
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall13(workValue17)
cmgCall13 = nil

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "HIDE_HUD"
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
function workValue18()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "SHOW_HUD"
  arg1(arg2)
end
cmgCall14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall15; parameters: none) ===
function cmgCall15()
  local arg1, arg2
  arg1 = DisplayRadar
  arg2 = true
  arg1(arg2)
  arg1 = DisplayHud
  arg2 = true
  arg1(arg2)
  arg1 = workValue18
  arg1()
  arg1 = cmgCall13
  if nil ~= arg1 then
    arg1 = CMG
    arg1 = arg1.setHotBarEnabled
    arg2 = cmgCall13
    arg1(arg2)
    arg1 = nil
    cmgCall13 = arg1
  end
end
cmgCall14.showHud = cmgCall15
cmgCall14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall15; parameters: arg1) ===
function cmgCall15(arg1)
  local arg2, arg3
  if arg1 then
    arg2 = DisplayRadar
    arg3 = false
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.sendHudNuiMessage
    arg3 = "HIDE_HUD_CALL_MANAGER"
    arg2(arg3)
  else
    arg2 = DisplayRadar
    arg3 = true
    arg2(arg3)
    arg2 = DisplayHud
    arg3 = true
    arg2(arg3)
    arg2 = CMG
    arg2 = arg2.sendHudNuiMessage
    arg3 = "SHOW_HUD_CALL_MANAGER"
    arg2(arg3)
  end
end
cmgCall14.setHudCallManagerNotificationsOnlyMode = cmgCall15
cmgCall14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall15; parameters: none) ===
function cmgCall15()
  local arg1, arg2
  arg1 = DisplayRadar
  arg2 = false
  arg1(arg2)
  arg1 = DisplayHud
  arg2 = false
  arg1(arg2)
  arg1 = workValue17
  arg1()
  arg1 = cmgCall13
  if nil == arg1 then
    arg1 = CMG
    arg1 = arg1.getHotBarEnabled
    arg1 = arg1()
    cmgCall13 = arg1
  end
  arg1 = CMG
  arg1 = arg1.setHotBarEnabled
  arg2 = false
  arg1(arg2)
end
cmgCall14.hideHud = cmgCall15
cmgCall14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall15; parameters: none) ===
function cmgCall15()
  local arg1, arg2
  arg1 = DisplayRadar
  arg2 = false
  arg1(arg2)
  arg1 = DisplayHud
  arg2 = false
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "HIDE_HUD_DEATH_SCREEN"
  arg1(arg2)
  arg1 = cmgCall13
  if nil == arg1 then
    arg1 = CMG
    arg1 = arg1.getHotBarEnabled
    arg1 = arg1()
    cmgCall13 = arg1
  end
  arg1 = CMG
  arg1 = arg1.setHotBarEnabled
  arg2 = false
  arg1(arg2)
end
cmgCall14.hideHudForDeathScreen = cmgCall15
cmgCall14 = AddEventHandler
cmgCall15 = "7ad2e2f656"
-- Beginner: this function runs when client event "7ad2e2f656" fires.

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hideHud
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "7ad2e2f656".
cmgCall14(cmgCall15, flag)
cmgCall14 = AddEventHandler
cmgCall15 = "3ee4eff5d1"
-- Beginner: this function runs when client event "3ee4eff5d1" fires.

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.showHud
  arg1()
end
-- Beginner: Register a client-side event handler. Event/command: "3ee4eff5d1".
cmgCall14(cmgCall15, flag)
cmgCall14 = AddEventHandler
cmgCall15 = "b9028016de"
-- Beginner: this function runs when client event "b9028016de" fires.

-- === HELPER FUNCTION (decompiler name: flag; parameters: arg1) ===
function flag(arg1)
  local arg2
  if arg1 then
    arg2 = CMG
    arg2 = arg2.hideHud
    arg2()
  else
    arg2 = CMG
    arg2 = arg2.showHud
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b9028016de".
cmgCall14(cmgCall15, flag)

-- === HELPER FUNCTION (decompiler name: cmgCall14; parameters: none) ===
function cmgCall14()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue
  arg1 = GetSafeZoneSize
  arg1 = arg1()
  arg2 = 0.05
  arg3 = 0.05
  workValue13 = GetAspectRatio
  stringHelper = false
  workValue13 = workValue13(stringHelper)
  stringHelper = GetActiveScreenResolution
  stringHelper, stringHelper2 = stringHelper()
  textValue11 = 1.0
  textValue11 = textValue11 / stringHelper
  numberValue4 = 1.0
  numberValue4 = numberValue4 / stringHelper2
  mathHelper = {}
  numberValue5 = 4 * workValue13
  numberValue5 = stringHelper / numberValue5
  numberValue5 = textValue11 * numberValue5
  mathHelper.width = numberValue5
  numberValue5 = stringHelper2 / 5.674
  numberValue5 = numberValue4 * numberValue5
  mathHelper.height = numberValue5
  numberValue5 = math
  numberValue5 = numberValue5.abs
  numberValue = arg1 - 1.0
  numberValue5 = numberValue5(numberValue)
  numberValue5 = numberValue5 * 10
  numberValue5 = arg2 * numberValue5
  numberValue5 = stringHelper * numberValue5
  numberValue5 = textValue11 * numberValue5
  mathHelper.left_x = numberValue5
  numberValue5 = math
  numberValue5 = numberValue5.abs
  numberValue = arg1 - 1.0
  numberValue5 = numberValue5(numberValue)
  numberValue5 = numberValue5 * 10
  numberValue5 = arg3 * numberValue5
  numberValue5 = stringHelper2 * numberValue5
  numberValue5 = numberValue4 * numberValue5
  numberValue = 1.0
  numberValue5 = numberValue - numberValue5
  mathHelper.bottom_y = numberValue5
  numberValue5 = mathHelper.left_x
  numberValue = mathHelper.width
  numberValue5 = numberValue5 + numberValue
  mathHelper.right_x = numberValue5
  numberValue5 = mathHelper.bottom_y
  numberValue = mathHelper.height
  numberValue5 = numberValue5 - numberValue
  mathHelper.top_y = numberValue5
  numberValue5 = mathHelper.left_x
  mathHelper.x = numberValue5
  numberValue5 = mathHelper.top_y
  mathHelper.y = numberValue5
  mathHelper.xunit = textValue11
  mathHelper.yunit = numberValue4
  return mathHelper
end
cmgCall15 = CMG

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2
  arg1 = cmgCall14
  arg1 = arg1()
  arg1 = arg1.left_x
  return arg1
end
cmgCall15.getHudLeftNormalized = flag
cmgCall15 = CMG

-- === HELPER FUNCTION (decompiler name: flag; parameters: none) ===
function flag()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg1 = GetActiveScreenResolution
  arg1 = arg1()
  arg2 = GetAspectRatio
  arg3 = false
  arg2 = arg2(arg3)
  arg3 = 1
  arg3 = arg3 / arg1
  workValue13 = SetScriptGfxAlign
  stringHelper = string
  stringHelper = stringHelper.byte
  stringHelper2 = "L"
  stringHelper = stringHelper(stringHelper2)
  stringHelper2 = string
  stringHelper2 = stringHelper2.byte
  textValue11 = "B"
  stringHelper2, textValue11, numberValue4 = stringHelper2(textValue11)
  workValue13(stringHelper, stringHelper2, textValue11, numberValue4)
  workValue13 = nil
  stringHelper = nil
  stringHelper2 = IsBigmapActive
  stringHelper2 = stringHelper2()
  if stringHelper2 then
    stringHelper2 = GetScriptGfxPosition
    textValue11 = -0.003975
    numberValue4 = -0.43841666599999995
    stringHelper2 = stringHelper2(textValue11, numberValue4)
    workValue13 = stringHelper2
    stringHelper2 = 2.52 * arg2
    stringHelper2 = arg1 / stringHelper2
    stringHelper = arg3 * stringHelper2
  else
    stringHelper2 = GetScriptGfxPosition
    textValue11 = -0.0045
    numberValue4 = -0.186888
    stringHelper2 = stringHelper2(textValue11, numberValue4)
    workValue13 = stringHelper2
    stringHelper2 = 4 * arg2
    stringHelper2 = arg1 / stringHelper2
    stringHelper = arg3 * stringHelper2
  end
  stringHelper2 = ResetScriptGfxAlign
  stringHelper2()
  stringHelper2 = workValue13 + stringHelper
  stringHelper2 = stringHelper2 * arg1
  return stringHelper2
end
cmgCall15.getRoundMinimapRightPx = flag

-- === HELPER FUNCTION (decompiler name: cmgCall15; parameters: none) ===
function cmgCall15()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue
  arg1 = cmgCall.minimapPositionPresets
  if arg1 then
    arg2 = #arg1
    if 0 ~= arg2 then
      goto flow_label_10
    end
  end
  arg2 = 0.0
  arg3 = 0.0
  return arg2, arg3
  ::flow_label_10::
  arg2 = GetResourceKvpInt
  arg3 = "cmg_minimap_position"
  arg2 = arg2(arg3)
  if not (arg2 < 1) then
    arg3 = #arg1
    if not (arg2 > arg3) then
      goto flow_label_19
    end
  end
  arg2 = 1
  ::flow_label_19::
  arg3 = arg1[arg2]
  if not arg3 then
    workValue13 = 0.0
    stringHelper = 0.0
    return workValue13, stringHelper
  end
  workValue13 = arg3.dx
  if not workValue13 then
    workValue13 = 0.0
  end
  stringHelper = arg3.dy
  if not stringHelper then
    stringHelper = 0.0
  end
  stringHelper2 = tonumber
  textValue11 = GetResourceKvpString
  numberValue4 = "cmg_minimap_fine_x"
  textValue11 = textValue11(numberValue4)
  if not textValue11 then
    textValue11 = ""
  end
  stringHelper2 = stringHelper2(textValue11)
  if not stringHelper2 then
    stringHelper2 = 0.0
  end
  textValue11 = tonumber
  numberValue4 = GetResourceKvpString
  mathHelper = "cmg_minimap_fine_y"
  numberValue4 = numberValue4(mathHelper)
  if not numberValue4 then
    numberValue4 = ""
  end
  textValue11 = textValue11(numberValue4)
  if not textValue11 then
    textValue11 = 0.0
  end
  numberValue4 = cmgCall.minimapFineOffsetClamp
  if not numberValue4 then
    numberValue4 = 0.25
  end
  mathHelper = math
  mathHelper = mathHelper.min
  numberValue5 = math
  numberValue5 = numberValue5.max
  numberValue = stringHelper2
  textValue = -numberValue4
  numberValue5 = numberValue5(numberValue, textValue)
  numberValue = numberValue4
  mathHelper = mathHelper(numberValue5, numberValue)
  stringHelper2 = mathHelper
  mathHelper = math
  mathHelper = mathHelper.min
  numberValue5 = math
  numberValue5 = numberValue5.max
  numberValue = textValue11
  textValue = -numberValue4
  numberValue5 = numberValue5(numberValue, textValue)
  numberValue = numberValue4
  mathHelper = mathHelper(numberValue5, numberValue)
  textValue11 = mathHelper
  mathHelper = workValue13 + stringHelper2
  numberValue5 = stringHelper + textValue11
  return mathHelper, numberValue5
end
flag = false
dataTable = {}
dataTable2 = {}
dataTable2.posX = 0.0
dataTable2.posY = -0.017
dataTable2.sizeX = 0.1638
dataTable2.sizeY = 0.183
dataTable.mm = dataTable2
dataTable2 = {}
dataTable2.posX = 0.0
dataTable2.posY = 0.03
dataTable2.sizeX = 0.128
dataTable2.sizeY = 0.2
dataTable.mk = dataTable2
dataTable2 = {}
dataTable2.posX = -0.0085
dataTable2.posY = 0.058
dataTable2.sizeX = 0.296
dataTable2.sizeY = 0.339
dataTable.bl = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: none) ===
function dataTable2()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8
  arg1 = type
  arg2 = CMG
  arg2 = arg2.isCallManagerOpen
  arg1 = arg1(arg2)
  if "function" == arg1 then
    arg1 = CMG
    arg1 = arg1.isCallManagerOpen
    arg1 = arg1()
    if arg1 then
      return
    end
  end
  arg1 = 1.7777777777777777
  arg2 = GetActiveScreenResolution
  arg2, arg3 = arg2()
  workValue13 = arg2 / arg3
  stringHelper = 0
  if arg1 < workValue13 then
    stringHelper2 = arg1 - workValue13
    textValue11 = 2.0 * arg1
    stringHelper = stringHelper2 / textValue11
  end
  stringHelper2 = GetAspectRatio
  textValue11 = false
  stringHelper2 = stringHelper2(textValue11)
  textValue11 = math
  textValue11 = textValue11.min
  numberValue4 = workValue13
  mathHelper = stringHelper2
  textValue11 = textValue11(numberValue4, mathHelper)
  numberValue4 = 1.0
  if arg1 > textValue11 then
    numberValue4 = textValue11 / arg1
  end
  mathHelper = RequestStreamedTextureDict
  numberValue5 = "squaremap"
  numberValue = false
  mathHelper(numberValue5, numberValue)
  while true do
    mathHelper = HasStreamedTextureDictLoaded
    numberValue5 = "squaremap"
    mathHelper = mathHelper(numberValue5)
    if mathHelper then
      break
    end
    mathHelper = Wait
    numberValue5 = 0
    mathHelper(numberValue5)
  end
  mathHelper = SetMinimapClipType
  numberValue5 = 0
  mathHelper(numberValue5)
  mathHelper = AddReplaceTexture
  numberValue5 = "platform:/textures/graphics"
  numberValue = "radarmasksm"
  textValue = "squaremap"
  textValue2 = "radarmasksm"
  mathHelper(numberValue5, numberValue, textValue, textValue2)
  mathHelper = AddReplaceTexture
  numberValue5 = "platform:/textures/graphics"
  numberValue = "radarmask1g"
  textValue = "squaremap"
  textValue2 = "radarmasksm"
  mathHelper(numberValue5, numberValue, textValue, textValue2)
  mathHelper = cmgCall15
  mathHelper, numberValue5 = mathHelper()
  numberValue = flag
  if numberValue then
    numberValue = dataTable
    if numberValue then
      goto flow_label_99
    end
  end
  numberValue = {}
  textValue = {}
  textValue.posX = 0.0
  textValue.posY = -0.017
  textValue.sizeX = 0.1638
  textValue.sizeY = 0.183
  numberValue.mm = textValue
  textValue = {}
  textValue.posX = 0.0
  textValue.posY = 0.03
  textValue.sizeX = 0.128
  textValue.sizeY = 0.2
  numberValue.mk = textValue
  textValue = {}
  textValue.posX = -0.0085
  textValue.posY = 0.058
  textValue.sizeX = 0.296
  textValue.sizeY = 0.339
  numberValue.bl = textValue
  ::flow_label_99::
  textValue = SetMinimapComponentPosition
  textValue2 = "minimap"
  textValue3 = "L"
  textValue4 = "B"
  workValue5 = numberValue.mm
  workValue5 = workValue5.posX
  workValue5 = workValue5 + stringHelper
  workValue5 = workValue5 + mathHelper
  workValue6 = numberValue.mm
  workValue6 = workValue6.posY
  workValue6 = workValue6 + numberValue5
  workValue7 = numberValue.mm
  workValue7 = workValue7.sizeX
  workValue7 = workValue7 * numberValue4
  workValue8 = numberValue.mm
  workValue8 = workValue8.sizeY
  textValue(textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8)
  textValue = SetMinimapComponentPosition
  textValue2 = "minimap_mask"
  textValue3 = "L"
  textValue4 = "B"
  workValue5 = numberValue.mk
  workValue5 = workValue5.posX
  workValue5 = workValue5 + stringHelper
  workValue5 = workValue5 + mathHelper
  workValue6 = numberValue.mk
  workValue6 = workValue6.posY
  workValue6 = workValue6 + numberValue5
  workValue7 = numberValue.mk
  workValue7 = workValue7.sizeX
  workValue7 = workValue7 * numberValue4
  workValue8 = numberValue.mk
  workValue8 = workValue8.sizeY
  textValue(textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8)
  textValue = SetMinimapComponentPosition
  textValue2 = "minimap_blur"
  textValue3 = "L"
  textValue4 = "B"
  workValue5 = numberValue.bl
  workValue5 = workValue5.posX
  workValue5 = workValue5 + stringHelper
  workValue5 = workValue5 + mathHelper
  workValue6 = numberValue.bl
  workValue6 = workValue6.posY
  workValue6 = workValue6 + numberValue5
  workValue7 = numberValue.bl
  workValue7 = workValue7.sizeX
  workValue7 = workValue7 * numberValue4
  workValue8 = numberValue.bl
  workValue8 = workValue8.sizeY
  textValue(textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8)
  textValue = SetBlipAlpha
  textValue2 = GetNorthRadarBlip
  textValue2 = textValue2()
  textValue3 = 0
  textValue(textValue2, textValue3)
  textValue = SetRadarBigmapEnabled
  textValue2 = true
  textValue3 = false
  textValue(textValue2, textValue3)
  textValue = SetMinimapClipType
  textValue2 = 0
  textValue(textValue2)
  textValue = Wait
  textValue2 = 50
  textValue(textValue2)
  textValue = SetRadarBigmapEnabled
  textValue2 = false
  textValue3 = false
  textValue(textValue2, textValue3)
  textValue = SetRadarZoom
  textValue2 = 1050
  textValue(textValue2)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg1 = type
  arg2 = CMG
  arg2 = arg2.isCallManagerOpen
  arg1 = arg1(arg2)
  if "function" == arg1 then
    arg1 = CMG
    arg1 = arg1.isCallManagerOpen
    arg1 = arg1()
    if arg1 then
      return
    end
  end
  arg1 = RemoveReplaceTexture
  arg2 = "platform:/textures/graphics"
  arg3 = "radarmasksm"
  arg1(arg2, arg3)
  arg1 = RemoveReplaceTexture
  arg2 = "platform:/textures/graphics"
  arg3 = "radarmask1g"
  arg1(arg2, arg3)
  arg1 = SetMinimapClipType
  arg2 = 0
  arg1(arg2)
  arg1 = SetMinimapComponentPosition
  arg2 = "minimap"
  arg3 = "L"
  workValue13 = "B"
  stringHelper = -0.0045
  stringHelper2 = 0.002
  textValue11 = 0.15
  numberValue4 = 0.188888
  arg1(arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4)
  arg1 = SetMinimapComponentPosition
  arg2 = "minimap_mask"
  arg3 = "L"
  workValue13 = "B"
  stringHelper = 0.02
  stringHelper2 = 0.032
  textValue11 = 0.111
  numberValue4 = 0.159
  arg1(arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4)
  arg1 = SetMinimapComponentPosition
  arg2 = "minimap_blur"
  arg3 = "L"
  workValue13 = "B"
  stringHelper = -0.03
  stringHelper2 = 0.022
  textValue11 = 0.266
  numberValue4 = 0.237
  arg1(arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4)
  arg1 = SetBlipAlpha
  arg2 = GetNorthRadarBlip
  arg2 = arg2()
  arg3 = 255
  arg1(arg2, arg3)
  arg1 = SetRadarBigmapEnabled
  arg2 = true
  arg3 = false
  arg1(arg2, arg3)
  arg1 = SetMinimapClipType
  arg2 = 0
  arg1(arg2)
  arg1 = Wait
  arg2 = 50
  arg1(arg2)
  arg1 = SetRadarBigmapEnabled
  arg2 = false
  arg3 = false
  arg1(arg2, arg3)
  arg1 = SetRadarZoom
  arg2 = 1050
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2
  arg1 = CMG
  arg1 = arg1.isLegacyHudEnabled
  arg1 = arg1()
  if arg1 then
    arg1 = workValue3
    arg1()
  else
    arg1 = dataTable2
    arg1()
  end
  arg1 = GetActiveScreenResolution
  arg1, arg2 = arg1()
  arg3 = CMG
  arg3 = arg3.sendHudNuiMessage
  workValue13 = "ADJUST_HUD_POSITION"
  stringHelper = {}
  stringHelper2 = cmgCall14
  stringHelper2 = stringHelper2()
  stringHelper2 = stringHelper2.x
  stringHelper2 = arg1 * stringHelper2
  stringHelper2 = stringHelper2 + 5
  stringHelper.left = stringHelper2
  arg3(workValue13, stringHelper)
  arg3 = CMG
  arg3 = arg3.isLegacyHudEnabled
  arg3 = arg3()
  if arg3 then
    arg3 = CMG
    arg3 = arg3.refreshMoneyUI
    arg3()
  end
end
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2
  arg1 = workValue4
  arg1()
end
cmgCall2.refreshMinimap = dataTable3
cmgCall2 = {}
dataTable3 = {}
dataTable3.type = "hideMoneyBar"
dataTable3.legacy = true
dataTable3.default = false
cmgCall3 = {}
cmgCall3.type = "showAllLocation"
cmgCall3.legacy = false
cmgCall3.default = true
dataTable4 = {}
dataTable4.type = "hideHealth"
dataTable4.legacy = true
dataTable4.default = false
dataTable5 = {}
dataTable5.type = "hideArmor"
dataTable5.legacy = true
dataTable5.default = false
dataTable7 = {}
dataTable7.type = "hideHunger"
dataTable7.legacy = true
dataTable7.default = false
dataTable9 = {}
dataTable9.type = "hideThirst"
dataTable9.legacy = true
dataTable9.default = false
dataTable10 = {}
dataTable10.type = "hideStress"
dataTable10.legacy = true
dataTable10.default = false
dataTable11 = {}
dataTable11.type = "hideDynamicStatus"
dataTable11.legacy = true
dataTable11.default = false
cmgCall5 = {}
cmgCall5.type = "hideBounty"
cmgCall5.legacy = true
cmgCall5.default = false
dataTable12 = {}
dataTable12.type = "hideMic"
dataTable12.legacy = true
dataTable12.default = false
cmgCall6 = {}
cmgCall6.type = "showAllSpeedometer"
cmgCall6.legacy = true
cmgCall6.default = true
cmgCall2[1] = dataTable3
cmgCall2[2] = cmgCall3
cmgCall2[3] = dataTable4
cmgCall2[4] = dataTable5
cmgCall2[5] = dataTable7
cmgCall2[6] = dataTable9
cmgCall2[7] = dataTable10
cmgCall2[8] = dataTable11
cmgCall2[9] = cmgCall5
cmgCall2[10] = dataTable12
cmgCall2[11] = cmgCall6

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2
  arg1 = textValue10
  if arg1 then
    arg1 = ipairs
    arg2 = cmgCall2
    arg1, arg2, arg3, workValue13 = arg1(arg2)
    for stringHelper, stringHelper2 in arg1, arg2, arg3, workValue13 do
      textValue11 = CMG
      textValue11 = textValue11.sendHudNuiMessage
      numberValue4 = "SET_HUD_SETTING"
      mathHelper = {}
      numberValue5 = stringHelper2.type
      mathHelper.type = numberValue5
      numberValue5 = stringHelper2.legacy
      mathHelper.value = numberValue5
      textValue11(numberValue4, mathHelper)
    end
    return
  end
  arg1 = {}
  arg2 = GetResourceKvpString
  arg3 = "cmg_hud_settings_json"
  arg2 = arg2(arg3)
  if arg2 and "" ~= arg2 then
    arg3 = pcall
    workValue13 = json
    workValue13 = workValue13.decode
    stringHelper = arg2
    arg3, workValue13 = arg3(workValue13, stringHelper)
    if arg3 then
      stringHelper = type
      stringHelper2 = workValue13
      stringHelper = stringHelper(stringHelper2)
      if "table" == stringHelper then
        arg1 = workValue13
      end
    end
  end
  arg3 = ipairs
  workValue13 = cmgCall2
  arg3, workValue13, stringHelper, stringHelper2 = arg3(workValue13)
  for textValue11, numberValue4 in arg3, workValue13, stringHelper, stringHelper2 do
    mathHelper = numberValue4.default
    numberValue5 = numberValue4.type
    numberValue5 = arg1[numberValue5]
    if nil ~= numberValue5 then
      numberValue5 = numberValue4.type
      mathHelper = arg1[numberValue5]
    end
    numberValue5 = CMG
    numberValue5 = numberValue5.sendHudNuiMessage
    numberValue = "SET_HUD_SETTING"
    textValue = {}
    textValue2 = numberValue4.type
    textValue.type = textValue2
    textValue.value = mathHelper
    numberValue5(numberValue, textValue)
  end
end
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3, workValue13
  arg2 = SetResourceKvp
  arg3 = "cmg_legacy_hud"
  if arg1 then
    workValue13 = "1"
    if workValue13 then
      goto flow_label_9
    end
  end
  workValue13 = "0"
  ::flow_label_9::
  arg2(arg3, workValue13)
  textValue10 = arg1
  arg2 = CMG
  arg2 = arg2.refreshMinimap
  arg2()
  arg2 = dataTable3
  arg2()
  arg2 = CMG
  arg2 = arg2.refreshMoneyUI
  arg2()
end
cmgCall3.setLegacyHudEnabled = dataTable4
cmgCall3 = 200

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: arg1) ===
function dataTable4(arg1)
  local arg2, arg3
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1 * 400
  arg3 = arg3 + 80.5
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: dataTable5; parameters: arg1) ===
function dataTable5(arg1)
  local arg2
  arg2 = arg1 - 80
  arg2 = arg2 / 400
  return arg2
end

-- === HELPER FUNCTION (decompiler name: dataTable7; parameters: none) ===
function dataTable7()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7
  arg1 = true
  flag = arg1
  arg1 = 1.7777777777777777
  arg2 = GetActiveScreenResolution
  arg2, arg3 = arg2()
  workValue13 = arg2 / arg3
  stringHelper = 0
  if arg1 < workValue13 then
    stringHelper2 = arg1 - workValue13
    textValue11 = 2.0 * arg1
    stringHelper = stringHelper2 / textValue11
  end
  stringHelper2 = GetAspectRatio
  textValue11 = false
  stringHelper2 = stringHelper2(textValue11)
  textValue11 = math
  textValue11 = textValue11.min
  numberValue4 = workValue13
  mathHelper = stringHelper2
  textValue11 = textValue11(numberValue4, mathHelper)
  numberValue4 = 1.0
  if arg1 > textValue11 then
    numberValue4 = textValue11 / arg1
  end
  mathHelper = cmgCall15
  mathHelper, numberValue5 = mathHelper()
  numberValue = SetMinimapComponentPosition
  textValue = "minimap"
  textValue2 = "L"
  textValue3 = "B"
  textValue4 = dataTable.mm
  textValue4 = textValue4.posX
  textValue4 = textValue4 + stringHelper
  textValue4 = textValue4 + mathHelper
  workValue5 = dataTable.mm
  workValue5 = workValue5.posY
  workValue5 = workValue5 + numberValue5
  workValue6 = dataTable.mm
  workValue6 = workValue6.sizeX
  workValue6 = workValue6 * numberValue4
  workValue7 = dataTable.mm
  workValue7 = workValue7.sizeY
  numberValue(textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7)
  numberValue = SetMinimapComponentPosition
  textValue = "minimap_mask"
  textValue2 = "L"
  textValue3 = "B"
  textValue4 = dataTable.mk
  textValue4 = textValue4.posX
  textValue4 = textValue4 + stringHelper
  textValue4 = textValue4 + mathHelper
  workValue5 = dataTable.mk
  workValue5 = workValue5.posY
  workValue5 = workValue5 + numberValue5
  workValue6 = dataTable.mk
  workValue6 = workValue6.sizeX
  workValue6 = workValue6 * numberValue4
  workValue7 = dataTable.mk
  workValue7 = workValue7.sizeY
  numberValue(textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7)
  numberValue = SetMinimapComponentPosition
  textValue = "minimap_blur"
  textValue2 = "L"
  textValue3 = "B"
  textValue4 = dataTable.bl
  textValue4 = textValue4.posX
  textValue4 = textValue4 + stringHelper
  textValue4 = textValue4 + mathHelper
  workValue5 = dataTable.bl
  workValue5 = workValue5.posY
  workValue5 = workValue5 + numberValue5
  workValue6 = dataTable.bl
  workValue6 = workValue6.sizeX
  workValue6 = workValue6 * numberValue4
  workValue7 = dataTable.bl
  workValue7 = workValue7.sizeY
  numberValue(textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7)
end

-- === HELPER FUNCTION (decompiler name: dataTable9; parameters: none) ===
function dataTable9()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue

  -- === HELPER FUNCTION: arg1(arg12) ===
  function arg1(arg12)
    local arg22, arg32, arg4
    arg22 = string
    arg22 = arg22.format
    arg32 = "%.4f"
    arg4 = arg12
    return arg22(arg32, arg4)
  end
  arg2 = print
  arg3 = "--- Minimap Tuner Values ---"
  arg2(arg3)
  arg2 = print
  arg3 = "SetMinimapComponentPosition(\"minimap\",      \"L\", \"B\", "
  workValue13 = arg1
  stringHelper = dataTable.mm
  stringHelper = stringHelper.posX
  workValue13 = workValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = arg1
  textValue11 = dataTable.mm
  textValue11 = textValue11.posY
  stringHelper2 = stringHelper2(textValue11)
  textValue11 = ", "
  numberValue4 = arg1
  mathHelper = dataTable.mm
  mathHelper = mathHelper.sizeX
  numberValue4 = numberValue4(mathHelper)
  mathHelper = ", "
  numberValue5 = arg1
  numberValue = dataTable.mm
  numberValue = numberValue.sizeY
  numberValue5 = numberValue5(numberValue)
  numberValue = ")"
  arg3 = arg3 .. workValue13 .. stringHelper .. stringHelper2 .. textValue11 .. numberValue4 .. mathHelper .. numberValue5 .. numberValue
  arg2(arg3)
  arg2 = print
  arg3 = "SetMinimapComponentPosition(\"minimap_mask\",  \"L\", \"B\", "
  workValue13 = arg1
  stringHelper = dataTable.mk
  stringHelper = stringHelper.posX
  workValue13 = workValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = arg1
  textValue11 = dataTable.mk
  textValue11 = textValue11.posY
  stringHelper2 = stringHelper2(textValue11)
  textValue11 = ", "
  numberValue4 = arg1
  mathHelper = dataTable.mk
  mathHelper = mathHelper.sizeX
  numberValue4 = numberValue4(mathHelper)
  mathHelper = ", "
  numberValue5 = arg1
  numberValue = dataTable.mk
  numberValue = numberValue.sizeY
  numberValue5 = numberValue5(numberValue)
  numberValue = ")"
  arg3 = arg3 .. workValue13 .. stringHelper .. stringHelper2 .. textValue11 .. numberValue4 .. mathHelper .. numberValue5 .. numberValue
  arg2(arg3)
  arg2 = print
  arg3 = "SetMinimapComponentPosition(\"minimap_blur\",  \"L\", \"B\", "
  workValue13 = arg1
  stringHelper = dataTable.bl
  stringHelper = stringHelper.posX
  workValue13 = workValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = arg1
  textValue11 = dataTable.bl
  textValue11 = textValue11.posY
  stringHelper2 = stringHelper2(textValue11)
  textValue11 = ", "
  numberValue4 = arg1
  mathHelper = dataTable.bl
  mathHelper = mathHelper.sizeX
  numberValue4 = numberValue4(mathHelper)
  mathHelper = ", "
  numberValue5 = arg1
  numberValue = dataTable.bl
  numberValue = numberValue.sizeY
  numberValue5 = numberValue5(numberValue)
  numberValue = ")"
  arg3 = arg3 .. workValue13 .. stringHelper .. stringHelper2 .. textValue11 .. numberValue4 .. mathHelper .. numberValue5 .. numberValue
  arg2(arg3)
  arg2 = print
  arg3 = "----------------------------"
  arg2(arg3)
end
dataTable10 = 0

-- === HELPER FUNCTION (decompiler name: dataTable11; parameters: arg1, arg2, arg3) ===
function dataTable11(arg1, arg2, arg3)
  local workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2
  workValue13 = dataTable4
  stringHelper = dataTable
  stringHelper = stringHelper[arg1]
  stringHelper = stringHelper[arg2]
  workValue13 = workValue13(stringHelper)
  stringHelper = RageUI
  stringHelper = stringHelper.Slider
  stringHelper2 = arg3
  textValue11 = "  "
  numberValue4 = string
  numberValue4 = numberValue4.format
  mathHelper = "%.3f"
  numberValue5 = dataTable
  numberValue5 = numberValue5[arg1]
  numberValue5 = numberValue5[arg2]
  numberValue4 = numberValue4(mathHelper, numberValue5)
  stringHelper2 = stringHelper2 .. textValue11 .. numberValue4
  textValue11 = workValue13
  numberValue4 = cmgCall3
  mathHelper = ""
  numberValue5 = false
  numberValue = {}
  textValue = true

  -- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg12, arg22, arg32, arg4) ===
  function textValue2(arg12, arg22, arg32, arg4)
    local threadCall, workValue16, numberValue3, flag10
    threadCall = workValue13
    if arg4 ~= threadCall then
      workValue16 = arg1
      threadCall = dataTable
      threadCall = threadCall[workValue16]
      workValue16 = arg2
      numberValue3 = dataTable5
      flag10 = arg4
      numberValue3 = numberValue3(flag10)
      threadCall[workValue16] = numberValue3
      threadCall = CreateThread
      workValue16 = dataTable7
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      threadCall(workValue16)
      threadCall = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      threadCall = threadCall()
      dataTable10 = threadCall
      workValue16 = SetTimeout
      numberValue3 = 300
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: flag10; parameters: none) ===
      function flag10()
        local workValue, flag2, flag5
        workValue = dataTable10
        flag2 = threadCall
        if workValue == flag2 then
          workValue = SetRadarBigmapEnabled
          flag2 = true
          flag5 = false
          workValue(flag2, flag5)
          workValue = SetMinimapClipType
          flag2 = 0
          workValue(flag2)
          workValue = SetTimeout
          flag2 = 50

          -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
          function flag5()
            local workValue2, flag3, flag6
            workValue2 = SetRadarBigmapEnabled
            flag3 = false
            flag6 = false
            workValue2(flag3, flag6)
          end
          workValue(flag2, flag5)
        end
      end
      workValue16(numberValue3, flag10)
    end
  end
  stringHelper(stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2)
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuItems
dataTable12 = "Minimap Tuner"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2
  arg1 = true
  flag = arg1
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "~g~Print Values"
  arg3 = "Print copy-paste-ready code to F8 console"
  workValue13 = {}
  stringHelper = true

  -- === HELPER FUNCTION: stringHelper2(arg12, arg22, arg32) ===
  function stringHelper2(arg12, arg22, arg32)
    local arg4
    if arg32 then
      arg4 = dataTable9
      arg4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, workValue13, stringHelper, stringHelper2)
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuItems
dataTable12 = "Minimap Tuner/Content (minimap)"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, workValue13
  arg1 = true
  flag = arg1
  arg1 = dataTable11
  arg2 = "mm"
  arg3 = "posX"
  workValue13 = "Pos X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mm"
  arg3 = "posY"
  workValue13 = "Pos Y"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mm"
  arg3 = "sizeX"
  workValue13 = "Size X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mm"
  arg3 = "sizeY"
  workValue13 = "Size Y"
  arg1(arg2, arg3, workValue13)
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuItems
dataTable12 = "Minimap Tuner/Mask (minimap_mask)"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, workValue13
  arg1 = true
  flag = arg1
  arg1 = dataTable11
  arg2 = "mk"
  arg3 = "posX"
  workValue13 = "Pos X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mk"
  arg3 = "posY"
  workValue13 = "Pos Y"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mk"
  arg3 = "sizeX"
  workValue13 = "Size X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "mk"
  arg3 = "sizeY"
  workValue13 = "Size Y"
  arg1(arg2, arg3, workValue13)
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.registerDevMenuItems
dataTable12 = "Minimap Tuner/Blur (minimap_blur)"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2, arg3, workValue13
  arg1 = true
  flag = arg1
  arg1 = dataTable11
  arg2 = "bl"
  arg3 = "posX"
  workValue13 = "Pos X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "bl"
  arg3 = "posY"
  workValue13 = "Pos Y"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "bl"
  arg3 = "sizeX"
  workValue13 = "Size X"
  arg1(arg2, arg3, workValue13)
  arg1 = dataTable11
  arg2 = "bl"
  arg3 = "sizeY"
  workValue13 = "Size Y"
  arg1(arg2, arg3, workValue13)
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
dataTable12 = "loaded"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2
  arg1 = true
  flag9 = arg1
  arg1 = workValue4
  arg1()
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = AddEventHandler
dataTable12 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2) ===
function cmgCall6(arg1, arg2)
  local arg3, workValue13
  while true do
    arg3 = CMG
    arg3 = arg3.isHudLoaded
    arg3 = arg3()
    if arg3 then
      break
    end
    arg3 = Wait
    workValue13 = 0
    arg3(workValue13)
  end
  if arg2 then
    arg3 = DisplayRadar
    workValue13 = true
    arg3(workValue13)
    arg3 = workValue18
    arg3()
    arg3 = workValue4
    arg3()
    arg3 = Wait
    workValue13 = 1000
    arg3(workValue13)
    arg3 = workValue4
    arg3()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
dataTable12 = "getHudSetting"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2) ===
function cmgCall6(arg1, arg2)
  local arg3, workValue13, stringHelper
  arg3 = arg1.type
  workValue13 = arg1.value
  stringHelper = dataTable6
  stringHelper[arg3] = workValue13
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
dataTable12 = "persistHudSettingsJson"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1) ===
function cmgCall6(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" ~= arg2 then
    return
  end
  arg2 = pcall
  arg3 = json
  arg3 = arg3.encode
  workValue13 = arg1
  arg2, arg3 = arg2(arg3, workValue13)
  if not arg2 or nil == arg3 then
    return
  end
  workValue13 = SetResourceKvp
  stringHelper = "cmg_hud_settings_json"
  stringHelper2 = arg3
  workValue13(stringHelper, stringHelper2)
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: arg1, arg2) ===
function dataTable12(arg1, arg2)
  local arg3, workValue13
  while true do
    arg3 = CMG
    arg3 = arg3.isHudLoaded
    arg3 = arg3()
    if arg3 then
      break
    end
    arg3 = Wait
    workValue13 = 0
    arg3(workValue13)
  end
  arg3 = CMG
  arg3 = arg3.uiSendMessage
  workValue13 = {}
  workValue13.action = arg1
  workValue13.payload = arg2
  arg3(workValue13)
end
cmgCall5.sendHudNuiMessage = dataTable12
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: none) ===
function dataTable12()
  local arg1, arg2, arg3, workValue13
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "SET_NOTIFY_SOUND_ENABLED"
  arg3 = GetResourceKvpInt
  workValue13 = "cmg_disable_notify_sound"
  arg3 = arg3(workValue13)
  arg3 = 1 ~= arg3
  arg1(arg2, arg3)
end
cmgCall5.syncHudNotifySoundEnabled = dataTable12
cmgCall5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: none) ===
function dataTable12()
  local arg1, arg2, arg3, workValue13
  while true do
    arg1 = CMG
    arg1 = arg1.isHudLoaded
    arg1 = arg1()
    if arg1 then
      break
    end
    arg1 = print
    arg2 = "Waiting for HUD to load..."
    arg1(arg2)
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = GetResourceKvpString
  arg2 = "cmg_hud_settings_json"
  arg1 = arg1(arg2)
  if arg1 and "" ~= arg1 then
    arg2 = CMG
    arg2 = arg2.sendHudNuiMessage
    arg3 = "LOAD_HUD_SAVED_SETTINGS"
    workValue13 = arg1
    arg2(arg3, workValue13)
  end
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_MENU"
  workValue13 = cmgCall.Menu
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "LOAD_KEYS"
  workValue13 = cmgCall.UIKeys
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_SHOW_MAP_WALKING"
  workValue13 = true
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_IDENTIFIER"
  workValue13 = CMG
  workValue13 = workValue13.getClientUserId
  -- Beginner: result below is userId.
  workValue13 = workValue13()
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_PLAYER_PP"
  workValue13 = "./assets/images/default-pp.png"
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_COUNTRY_CODE"
  workValue13 = cmgCall.CountryCode
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_LOCALES"
  workValue13 = cmgCall.Locales
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "ENABLE_UI_KEYS"
  workValue13 = cmgCall.EnableUIKeys
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_DEFAULT_SPEED_TYPE"
  workValue13 = cmgCall.DefaultSpeedType
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_MOUSE_CURSOR_KEY_LABEL"
  workValue13 = cmgCall.MouseCursorKeyLabel
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_MAX_VOICE_RANGES"
  workValue13 = cmgCall.MaxVoiceRanges
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SEAT_SETTINGS"
  workValue13 = cmgCall.Seat
  arg2(arg3, workValue13)
  arg2 = CMG
  arg2 = arg2.syncHudNotifySoundEnabled
  arg2()
  arg2 = CMG
  arg2 = arg2.isLegacyHudEnabled
  arg2 = arg2()
  if arg2 then
    arg2 = dataTable3
    arg2()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall5(dataTable12)
cmgCall5 = CMG
cmgCall5 = cmgCall5.uiRegisterCallback
dataTable12 = "resize"

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
function cmgCall6()
  local arg1, arg2
  arg1 = workValue4
  arg1()
end
cmgCall5(dataTable12, cmgCall6)
cmgCall5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: none) ===
function dataTable12()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg1 = GetActiveScreenResolution
  arg1, arg2 = arg1()
  arg3 = GetAspectRatio
  workValue13 = false
  arg3 = arg3(workValue13)
  while true do
    workValue13 = Wait
    stringHelper = 500
    workValue13(stringHelper)
    workValue13 = CMG
    workValue13 = workValue13.isHudLoaded
    workValue13 = workValue13()
    if workValue13 then
      workValue13 = GetActiveScreenResolution
      workValue13, stringHelper = workValue13()
      stringHelper2 = GetAspectRatio
      textValue11 = false
      stringHelper2 = stringHelper2(textValue11)
      if workValue13 == arg1 and stringHelper == arg2 then
        textValue11 = math
        textValue11 = textValue11.abs
        numberValue4 = stringHelper2 - arg3
        textValue11 = textValue11(numberValue4)
        numberValue4 = 0.001
        if not (textValue11 > numberValue4) then
          goto flow_label_36
        end
      end
      arg1 = workValue13
      arg2 = stringHelper
      arg3 = stringHelper2
      textValue11 = workValue4
      textValue11()
    end
    ::flow_label_36::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall5(dataTable12)

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  arg2 = {}
  arg3 = "left"
  workValue13 = "right"
  stringHelper = "front"
  stringHelper2 = "back"
  arg2[1] = arg3
  arg2[2] = workValue13
  arg2[3] = stringHelper
  arg2[4] = stringHelper2
  arg3 = 0
  workValue13 = 3
  stringHelper = 1
  for stringHelper2 = arg3, workValue13, stringHelper do
    textValue11 = IsVehicleNeonLightEnabled
    numberValue4 = arg1
    mathHelper = stringHelper2
    textValue11 = textValue11(numberValue4, mathHelper)
    if textValue11 then
      textValue11 = CMG
      textValue11 = textValue11.sendHudNuiMessage
      numberValue4 = "NEON_ENABLED"
      mathHelper = {}
      numberValue5 = stringHelper2 + 1
      numberValue5 = arg2[numberValue5]
      mathHelper.type = numberValue5
      mathHelper.value = true
      textValue11(numberValue4, mathHelper)
    else
      textValue11 = CMG
      textValue11 = textValue11.sendHudNuiMessage
      numberValue4 = "NEON_ENABLED"
      mathHelper = {}
      numberValue5 = stringHelper2 + 1
      numberValue5 = arg2[numberValue5]
      mathHelper.type = numberValue5
      mathHelper.value = false
      textValue11(numberValue4, mathHelper)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataTable12; parameters: arg1) ===
function dataTable12(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg2 = GetVehicleLightsState
  arg3 = arg1
  arg2, arg3, workValue13 = arg2(arg3)
  if arg2 then
    stringHelper = nil
    if 1 == arg3 and 0 == workValue13 then
      stringHelper = true
    elseif 1 == arg3 and 1 == workValue13 or 0 == arg3 and 1 == workValue13 then
      stringHelper = true
    else
      stringHelper = false
    end
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.sendHudNuiMessage
    textValue11 = "VEHICLE_LIGHTS"
    numberValue4 = stringHelper
    stringHelper2(textValue11, numberValue4)
  end
end
cmgCall6 = CMG
cmgCall6 = cmgCall6.uiRegisterCallback
textValue6 = "closeSettings"

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, workValue13
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = false
  arg3 = false
  workValue13 = false
  arg1(arg2, arg3, workValue13)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "HUD_SET_INTERACTIVE"
  arg2.value = false
  arg1(arg2)
  arg1 = flag4
  if arg1 then
    arg1 = Wait
    arg2 = 350
    arg1(arg2)
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = true
    arg3 = true
    workValue13 = true
    arg1(arg2, arg3, workValue13)
  end
end
cmgCall6(textValue6, workValue9)
cmgCall6 = CMG

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, workValue13
  arg1 = CMG
  arg1 = arg1.sendHudNuiMessage
  arg2 = "OPEN_HUD_SETTINGS"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  arg2 = true
  arg3 = true
  workValue13 = false
  arg1(arg2, arg3, workValue13)
  arg1 = CMG
  arg1 = arg1.uiSendMessage
  arg2 = {}
  arg2.type = "HUD_SET_INTERACTIVE"
  arg2.value = true
  arg1(arg2)
end
cmgCall6.openHudSettings = textValue6
cmgCall6 = {}
cmgCall6.frontLeftDoor = false
cmgCall6.frontRightDoor = false
cmgCall6.backLeftDoor = false
cmgCall6.backRightDoor = false
cmgCall6.hood = false
cmgCall6.trunk = false

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2, arg3) ===
function textValue6(arg1, arg2, arg3)
  local workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue
  workValue13 = true
  stringHelper = pairs
  stringHelper2 = arg2
  stringHelper, stringHelper2, textValue11, numberValue4 = stringHelper(stringHelper2)
  for mathHelper, numberValue5 in stringHelper, stringHelper2, textValue11, numberValue4 do
    numberValue = cmgCall6
    numberValue = numberValue[numberValue5]
    if not numberValue then
      workValue13 = false
    end
  end
  if workValue13 then
    return arg1
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  arg2 = {}
  arg2.frontLeftDoor = false
  arg2.frontRightDoor = false
  arg2.backLeftDoor = false
  arg2.backRightDoor = false
  arg2.hood = false
  arg2.trunk = false
  cmgCall6 = arg2
  arg2 = "vehicle-1.png"
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 0
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.frontLeftDoor = true
  end
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 1
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.frontRightDoor = true
  end
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 2
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.backLeftDoor = true
  end
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 3
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.backRightDoor = true
  end
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 4
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.hood = true
  end
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg1
  stringHelper = 5
  arg3 = arg3(workValue13, stringHelper)
  if 0 ~= arg3 then
    cmgCall6.trunk = true
  end
  arg3 = textValue6
  workValue13 = "vehicle-2.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-3.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-4.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-5.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-10.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-11.png"
  stringHelper = {}
  stringHelper2 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-12.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-13.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-14.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-15.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-6.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-20.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-21.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-22.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-23.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-28.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-62.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-37.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-38.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-39.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-40.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-7.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-8.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-16.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-24.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-29.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-30.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-31.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-32.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-41.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-42.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-43.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-44.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-45.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-46.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-47.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-50.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "frontLeftDoor"
  numberValue4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-51.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-52.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontLeftDoor"
  numberValue4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-53.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-63.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-64.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-9.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "backLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-17.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-18.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-25.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-26.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-33.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-48.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontLeftDoor"
  numberValue4 = "backRightDoor"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-49.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "backRightDoor"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-54.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-55.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "backLeftDoor"
  numberValue4 = "frontRightDoor"
  mathHelper = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-56.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontLeftDoor"
  numberValue4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-57.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-58.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  textValue11 = "frontLeftDoor"
  numberValue4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-59.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "frontRightDoor"
  numberValue4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-65.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-27.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  numberValue5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-19.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  textValue11 = "frontRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  numberValue5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-34.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  numberValue5 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-35.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  numberValue5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-60.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "frontRightDoor"
  mathHelper = "hood"
  numberValue5 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-61.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  textValue11 = "backRightDoor"
  numberValue4 = "frontLeftDoor"
  mathHelper = "hood"
  numberValue5 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = textValue6
  workValue13 = "vehicle-36.png"
  stringHelper = {}
  stringHelper2 = "hood"
  textValue11 = "trunk"
  numberValue4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  numberValue5 = "backRightDoor"
  numberValue = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = textValue11
  stringHelper[3] = numberValue4
  stringHelper[4] = mathHelper
  stringHelper[5] = numberValue5
  stringHelper[6] = numberValue
  stringHelper2 = arg2
  arg3 = arg3(workValue13, stringHelper, stringHelper2)
  arg2 = arg3
  arg3 = CMG
  arg3 = arg3.sendHudNuiMessage
  workValue13 = "VEHICLE_DOORS"
  stringHelper = arg2
  arg3(workValue13, stringHelper)
  arg3 = GetVehicleMaxNumberOfPassengers
  workValue13 = arg1
  arg3 = arg3(workValue13)
  workValue13 = CMG
  workValue13 = workValue13.sendHudNuiMessage
  stringHelper = "VEHICLE_SEATS"
  stringHelper2 = arg3
  workValue13(stringHelper, stringHelper2)
end
cmgCall7 = CMG
cmgCall7 = cmgCall7.uiRegisterCallback
cmgCall8 = "vehicleDoors"

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = GetVehicleDoorAngleRatio
  workValue13 = arg2
  stringHelper = arg1.value
  arg3 = arg3(workValue13, stringHelper)
  arg3 = 0 ~= arg3
  if arg3 then
    workValue13 = SetVehicleDoorShut
    stringHelper = arg2
    stringHelper2 = arg1.value
    textValue11 = true
    workValue13(stringHelper, stringHelper2, textValue11)
  else
    workValue13 = SetVehicleDoorOpen
    stringHelper = arg2
    stringHelper2 = arg1.value
    textValue11 = false
    numberValue4 = false
    workValue13(stringHelper, stringHelper2, textValue11, numberValue4)
  end
  workValue13 = Wait
  stringHelper = 100
  workValue13(stringHelper)
  workValue13 = workValue9
  workValue13()
end
cmgCall7(cmgCall8, textValue7)
cmgCall7 = CMG
cmgCall7 = cmgCall7.uiRegisterCallback
cmgCall8 = "toggleVehicleEngine"

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 == arg1 then
    return
  end
  if not arg2 then
    return
  end
  arg3 = GetIsVehicleEngineRunning
  workValue13 = arg1
  arg3 = arg3(workValue13)
  if arg3 then
    workValue13 = SetVehicleEngineOn
    stringHelper = arg1
    stringHelper2 = false
    textValue11 = true
    numberValue4 = true
    workValue13(stringHelper, stringHelper2, textValue11, numberValue4)
  else
    workValue13 = SetVehicleEngineOn
    stringHelper = arg1
    stringHelper2 = true
    textValue11 = false
    numberValue4 = false
    workValue13(stringHelper, stringHelper2, textValue11, numberValue4)
  end
end
cmgCall7(cmgCall8, textValue7)

-- === HELPER FUNCTION (decompiler name: cmgCall7; parameters: arg1, arg2, arg3) ===
function cmgCall7(arg1, arg2, arg3)
  local workValue13, stringHelper, stringHelper2, textValue11
  workValue13 = DoesEntityExist
  stringHelper = arg3
  workValue13 = workValue13(stringHelper)
  if workValue13 then
    workValue13 = IsVehicleWindowIntact
    stringHelper = arg3
    stringHelper2 = arg1
    workValue13 = workValue13(stringHelper, stringHelper2)
    stringHelper = GetIsDoorValid
    stringHelper2 = arg3
    textValue11 = arg2
    stringHelper = stringHelper(stringHelper2, textValue11)
    if stringHelper and workValue13 then
      stringHelper = RollDownWindow
      stringHelper2 = arg3
      textValue11 = arg1
      stringHelper(stringHelper2, textValue11)
    else
      stringHelper = RollUpWindow
      stringHelper2 = arg3
      textValue11 = arg1
      stringHelper(stringHelper2, textValue11)
    end
  end
end
cmgCall8 = CMG
cmgCall8 = cmgCall8.uiRegisterCallback
textValue7 = "toggleWindow"

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3, workValue13, stringHelper, stringHelper2
  arg3 = TriggerServerEvent
  workValue13 = "b43f1cc624"
  stringHelper = arg1.window
  stringHelper2 = arg1.door
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b43f1cc624".
  arg3(workValue13, stringHelper, stringHelper2)
end
cmgCall8(textValue7, workValue10)
cmgCall8 = RegisterNetEvent
textValue7 = "0b1dd98e8e"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0b1dd98e8e".
cmgCall8(textValue7)
cmgCall8 = AddEventHandler
textValue7 = "0b1dd98e8e"
-- Beginner: this function runs when client event "0b1dd98e8e" fires.

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3) ===
function workValue10(arg1, arg2, arg3)
  local workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper
  workValue13 = GetPlayerPed
  stringHelper = GetPlayerFromServerId
  stringHelper2 = arg1
  stringHelper, stringHelper2, textValue11, numberValue4, mathHelper = stringHelper(stringHelper2)
  -- Beginner: result below is playerPed.
  workValue13 = workValue13(stringHelper, stringHelper2, textValue11, numberValue4, mathHelper)
  stringHelper = IsPedInAnyVehicle
  stringHelper2 = workValue13
  textValue11 = false
  stringHelper = stringHelper(stringHelper2, textValue11)
  if stringHelper then
    stringHelper = DoesEntityExist
    stringHelper2 = workValue13
    stringHelper = stringHelper(stringHelper2)
    if stringHelper then
      stringHelper = GetVehiclePedIsIn
      stringHelper2 = workValue13
      textValue11 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(stringHelper2, textValue11)
      stringHelper2 = cmgCall7
      textValue11 = arg2
      numberValue4 = arg3
      mathHelper = stringHelper
      stringHelper2(textValue11, numberValue4, mathHelper)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "0b1dd98e8e".
cmgCall8(textValue7, workValue10)
cmgCall8 = {}
textValue7 = false

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2, arg3, workValue13
  arg2 = cmgCall8
  arg2 = arg2[arg1]
  if nil ~= arg2 then
    arg2 = true
    return arg2
  end
  arg2 = IsVehicleNeonLightEnabled
  arg3 = arg1
  workValue13 = 0
  arg2 = arg2(arg3, workValue13)
  if arg2 then
    arg2 = cmgCall8
    arg2[arg1] = true
    arg2 = true
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3
  arg1 = textValue7
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    arg2 = true
    textValue7 = arg2
    arg2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local arg12, arg22, arg32, arg4, threadCall, workValue16, numberValue3, flag10
      while true do
        arg12 = textValue7
        if not arg12 then
          break
        end
        arg12 = 0
        arg22 = 3
        arg32 = 1
        for arg4 = arg12, arg22, arg32 do
          threadCall = IsVehicleNeonLightEnabled
          workValue16 = arg1
          numberValue3 = arg4
          threadCall = threadCall(workValue16, numberValue3)
          if threadCall then
            threadCall = SetVehicleNeonLightEnabled
            workValue16 = arg1
            numberValue3 = arg4
            flag10 = false
            threadCall(workValue16, numberValue3, flag10)
          else
            threadCall = SetVehicleNeonLightEnabled
            workValue16 = arg1
            numberValue3 = arg4
            flag10 = true
            threadCall(workValue16, numberValue3, flag10)
          end
          threadCall = Wait
          workValue16 = 120
          threadCall(workValue16)
        end
        arg12 = Wait
        arg22 = 0
        arg12(arg22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(arg3)
    arg2 = Wait
    arg3 = 12000
    arg2(arg3)
    arg2 = false
    textValue7 = arg2
  end
end
cmgCall9 = CMG
cmgCall9 = cmgCall9.uiRegisterCallback
cmgCall10 = "toggleNeon"

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = workValue10
  workValue13 = arg2
  arg3 = arg3(workValue13)
  if not arg3 then
    workValue13 = notify
    stringHelper = "~r~This car does not have neon installed, purhcase it at LS Customs"
    -- Beginner: Show a notification to the player.
    workValue13(stringHelper)
    return
  end
  workValue13 = false
  textValue7 = workValue13
  workValue13 = arg1.type
  if "neon" == workValue13 then
    workValue13 = IsVehicleNeonLightEnabled
    stringHelper = arg2
    stringHelper2 = arg1.value
    workValue13 = workValue13(stringHelper, stringHelper2)
    if workValue13 then
      workValue13 = SetVehicleNeonLightEnabled
      stringHelper = arg2
      stringHelper2 = arg1.value
      textValue11 = false
      workValue13(stringHelper, stringHelper2, textValue11)
    else
      workValue13 = SetVehicleNeonLightEnabled
      stringHelper = arg2
      stringHelper2 = arg1.value
      textValue11 = true
      workValue13(stringHelper, stringHelper2, textValue11)
    end
    workValue13 = cmgCall5
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workValue13()
  else
    workValue13 = arg1.type
    if "party" == workValue13 then
      workValue13 = workValue11
      workValue13()
    else
      workValue13 = arg1.type
      if "all" == workValue13 then
        workValue13 = true
        stringHelper = 0
        stringHelper2 = 3
        textValue11 = 1
        for numberValue4 = stringHelper, stringHelper2, textValue11 do
          mathHelper = IsVehicleNeonLightEnabled
          numberValue5 = arg2
          numberValue = numberValue4
          mathHelper = mathHelper(numberValue5, numberValue)
          if mathHelper then
            workValue13 = false
          end
        end
        stringHelper = 0
        stringHelper2 = 3
        textValue11 = 1
        for numberValue4 = stringHelper, stringHelper2, textValue11 do
          mathHelper = SetVehicleNeonLightEnabled
          numberValue5 = arg2
          numberValue = numberValue4
          textValue = workValue13
          mathHelper(numberValue5, numberValue, textValue)
        end
      end
    end
  end
end
cmgCall9(cmgCall10, textValue8)
cmgCall9 = CMG
cmgCall9 = cmgCall9.uiRegisterCallback
cmgCall10 = "OnInputFocus"

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, workValue13
  arg1 = flag4
  if arg1 then
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = true
    arg3 = true
    workValue13 = false
    arg1(arg2, arg3, workValue13)
  end
end
cmgCall9(cmgCall10, textValue8)
cmgCall9 = CMG
cmgCall9 = cmgCall9.uiRegisterCallback
cmgCall10 = "OnInputFocusRemove"

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, workValue13
  arg1 = flag4
  if arg1 then
    arg1 = CMG
    arg1 = arg1.uiSetFocus
    arg2 = true
    arg3 = true
    workValue13 = true
    arg1(arg2, arg3, workValue13)
  end
end
cmgCall9(cmgCall10, textValue8)

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1) ===
function cmgCall9(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue
  arg2 = -1
  arg3 = false
  workValue13 = CMG
  workValue13 = workValue13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue13 = workValue13()
  stringHelper = GetEntityCoords
  stringHelper2 = workValue13
  -- Beginner: result below is entityCoords.
  stringHelper = stringHelper(stringHelper2)
  stringHelper2 = pairs
  textValue11 = arg1
  stringHelper2, textValue11, numberValue4, mathHelper = stringHelper2(textValue11)
  for numberValue5, numberValue in stringHelper2, textValue11, numberValue4, mathHelper do
    textValue = stringHelper - numberValue
    textValue = #textValue
    if -1 == arg2 or arg2 > textValue then
      arg2 = textValue
      arg3 = numberValue
    end
  end
  return arg3
end
cmgCall10 = CMG
cmgCall10 = cmgCall10.uiRegisterCallback
textValue8 = "waypoint"

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1) ===
function workValue12(arg1)
  local arg2, arg3, workValue13, stringHelper, stringHelper2
  arg2 = cmgCall.QuickLocations
  arg3 = arg1.type
  arg2 = arg2[arg3]
  arg3 = arg1.type
  if "gun_store" == arg3 then
    arg3 = CMG
    arg3 = arg3.getSmallArmsShopCoordsForHudWaypoint
    if arg3 then
      arg3 = CMG
      arg3 = arg3.getSmallArmsShopCoordsForHudWaypoint
      arg3 = arg3()
      if arg3 then
        goto flow_label_19
        arg2 = arg3 or arg2
      end
    end
    arg3 = {}
    arg2 = arg3
  end
  ::flow_label_19::
  if arg2 then
    arg3 = cmgCall9
    workValue13 = arg2
    arg3 = arg3(workValue13)
    if arg3 then
      goto flow_label_27
    end
  end
  arg3 = nil
  ::flow_label_27::
  if arg3 then
    workValue13 = SetNewWaypoint
    stringHelper = arg3.x
    stringHelper2 = arg3.y
    workValue13(stringHelper, stringHelper2)
  end
end
cmgCall10(textValue8, workValue12)

-- === HELPER FUNCTION (decompiler name: cmgCall10; parameters: arg1, arg2) ===
function cmgCall10(arg1, arg2)
  local arg3, workValue13, stringHelper
  arg3 = arg2 or nil
  if not arg2 then
    arg3 = 0
  end
  workValue13 = 10
  arg3 = workValue13 ^ arg3
  workValue13 = math
  workValue13 = workValue13.floor
  stringHelper = 0.5 * arg3
  stringHelper = arg1 + stringHelper
  return workValue13(stringHelper)
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2
  arg1 = dataTable6.speedType
  if "kmh" == arg1 then
    arg1 = 3.6
    if arg1 then
      goto flow_label_8
    end
  end
  arg1 = 2.23694
  ::flow_label_8::
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2) ===
function workValue12(arg1, arg2)
  local arg3, workValue13
  if not arg2 then
    arg2 = 0
  end
  arg3 = type
  workValue13 = arg1
  arg3 = arg3(workValue13)
  if "number" ~= arg3 then
    return arg2
  end
  if arg1 ~= arg1 then
    return arg2
  end
  arg3 = math
  arg3 = arg3.huge
  if arg1 ~= arg3 then
    arg3 = math
    arg3 = arg3.huge
    arg3 = -arg3
    if arg1 ~= arg3 then
      goto flow_label_23
    end
  end
  return arg2
  ::flow_label_23::
  return arg1
end
flag7 = false
flag8 = false

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, workValue13, stringHelper
  arg1 = flag4
  if arg1 then
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 0
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 1
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 2
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 3
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 4
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 5
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 6
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 199
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 200
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 75
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 200
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 202
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 177
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 288
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 166
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 167
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 56
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = DisableControlAction
    arg2 = 0
    arg3 = 57
    workValue13 = true
    arg1(arg2, arg3, workValue13)
    arg1 = HideHudComponentThisFrame
    arg2 = 16
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = IsUsingKeyboard
    arg3 = 0
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = IsDisabledControlJustPressed
      arg3 = 0
      workValue13 = cmgCall.MouseCursorKey
      arg2 = arg2(arg3, workValue13)
      if arg2 then
        arg2 = CMG
        arg2 = arg2.getHudVehicleType
        arg3 = arg1
        arg2 = arg2(arg3)
        if "bike" ~= arg2 then
          arg2 = flag4
          arg2 = not arg2
          flag4 = arg2
          arg2 = CMG
          arg2 = arg2.uiSetFocus
          arg3 = flag4
          workValue13 = flag4
          stringHelper = flag4
          arg2(arg3, workValue13, stringHelper)
          arg2 = CMG
          arg2 = arg2.uiSendMessage
          arg3 = {}
          arg3.type = "HUD_SET_INTERACTIVE"
          workValue13 = flag4
          arg3.value = workValue13
          arg2(arg3)
        end
      end
    end
  else
    arg2 = flag4
    if arg2 then
      arg2 = false
      flag4 = arg2
      arg2 = CMG
      arg2 = arg2.uiSetFocus
      arg3 = flag4
      workValue13 = flag4
      stringHelper = flag4
      arg2(arg3, workValue13, stringHelper)
      arg2 = CMG
      arg2 = arg2.uiSendMessage
      arg3 = {}
      arg3.type = "HUD_SET_INTERACTIVE"
      arg3.value = false
      arg2(arg3)
    end
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg2 = IsControlPressed
    arg3 = 0
    workValue13 = 76
    arg2 = arg2(arg3, workValue13)
    if arg2 then
      arg2 = flag7
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.sendHudNuiMessage
        arg3 = "handbrake"
        workValue13 = true
        arg2(arg3, workValue13)
        arg2 = true
        flag7 = arg2
      end
    else
      arg2 = flag7
      if arg2 then
        arg2 = CMG
        arg2 = arg2.sendHudNuiMessage
        arg3 = "handbrake"
        workValue13 = false
        arg2(arg3, workValue13)
        arg2 = false
        flag7 = arg2
      end
    end
    arg2 = CMG
    arg2 = arg2.getVehicleMode
    arg2 = arg2()
    if "drift" == arg2 then
      arg2 = IsControlPressed
      arg3 = 0
      workValue13 = 72
      arg2 = arg2(arg3, workValue13)
      if arg2 then
        arg2 = flag8
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.sendHudNuiMessage
          arg3 = "abs"
          workValue13 = true
          arg2(arg3, workValue13)
          arg2 = true
          flag8 = arg2
        end
      else
        arg2 = flag8
        if arg2 then
          arg2 = CMG
          arg2 = arg2.sendHudNuiMessage
          arg3 = "abs"
          workValue13 = false
          arg2(arg3, workValue13)
          arg2 = false
          flag8 = arg2
        end
      end
    else
      arg2 = flag8
      if arg2 then
        arg2 = CMG
        arg2 = arg2.sendHudNuiMessage
        arg3 = "abs"
        workValue13 = false
        arg2(arg3, workValue13)
        arg2 = false
        flag8 = arg2
      end
    end
  end
end
cmgCall11 = CMG
cmgCall11 = cmgCall11.createThreadOnTick
cmgCall12 = workValue14
textValue9 = "handbrake_check"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall11(cmgCall12, textValue9)
cmgCall11 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgCall12; parameters: none) ===
function cmgCall12()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg2 = arg2()
    if 0 ~= arg2 then
      arg3 = GetEntitySpeed
      workValue13 = arg2
      -- Beginner: result below is speed.
      arg3 = arg3(workValue13)
      workValue13 = textValue8
      workValue13 = workValue13()
      arg3 = arg3 * workValue13
      workValue13 = GetEntityHeading
      stringHelper = arg1
      -- Beginner: result below is heading.
      workValue13 = workValue13(stringHelper)
      stringHelper = 249
      if arg3 > stringHelper then
        stringHelper = 250
        if arg3 < stringHelper then
          arg3 = 250
        end
      end
      stringHelper = tonumber
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      textValue11 = "%.1f"
      numberValue4 = GetVehicleCurrentRpm
      mathHelper = arg2
      numberValue4, mathHelper, numberValue5, numberValue, textValue = numberValue4(mathHelper)
      stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue = stringHelper2(textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue)
      stringHelper = stringHelper(stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue)
      stringHelper2 = workValue12
      textValue11 = stringHelper
      numberValue4 = 0
      stringHelper2 = stringHelper2(textValue11, numberValue4)
      stringHelper2 = stringHelper2 - 0.2
      textValue11 = workValue12
      numberValue4 = stringHelper2
      mathHelper = 0
      textValue11 = textValue11(numberValue4, mathHelper)
      stringHelper2 = textValue11
      textValue11 = CMG
      textValue11 = textValue11.sendHudNuiMessage
      numberValue4 = "SET_SPEED"
      mathHelper = {}
      numberValue5 = workValue12
      numberValue = arg3
      textValue = 0
      numberValue5 = numberValue5(numberValue, textValue)
      mathHelper.current = numberValue5
      mathHelper.rpm = stringHelper2
      numberValue5 = workValue12
      numberValue = GetVehicleEstimatedMaxSpeed
      textValue = arg2
      numberValue = numberValue(textValue)
      textValue = textValue8
      textValue = textValue()
      numberValue = numberValue * textValue
      textValue = 0
      numberValue5 = numberValue5(numberValue, textValue)
      mathHelper.max = numberValue5
      numberValue5 = workValue12
      numberValue = GetEntityRoll
      textValue = arg2
      numberValue = numberValue(textValue)
      numberValue = -numberValue
      textValue = 0
      numberValue5 = numberValue5(numberValue, textValue)
      mathHelper.roll = numberValue5
      numberValue5 = workValue12
      numberValue = workValue13
      textValue = 0
      numberValue5 = numberValue5(numberValue, textValue)
      mathHelper.headingValue = numberValue5
      numberValue5 = workValue12
      numberValue = GetWindSpeed
      numberValue = numberValue()
      textValue = 0
      numberValue5 = numberValue5(numberValue, textValue)
      mathHelper.wind = numberValue5
      numberValue5 = GetVehicleCurrentGear
      numberValue = arg2
      numberValue5 = numberValue5(numberValue)
      mathHelper.gear = numberValue5
      textValue11(numberValue4, mathHelper)
    end
    arg3 = Wait
    workValue13 = 0
    arg3(workValue13)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall11(cmgCall12)
cmgCall11 = {}
cmgCall11.N = 360
cmgCall11.NE = 315
cmgCall11.E = 270
cmgCall11.SE = 225
cmgCall11.S = 180
cmgCall11.SW = 135
cmgCall11.W = 90
cmgCall11.NW = 45
cmgCall12 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, arg3, workValue13, stringHelper, stringHelper2, textValue11, numberValue4, mathHelper, numberValue5, numberValue, textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8, textValue5, dataTable8, cmgCall4, numberValue2
  arg1 = false
  arg2 = false
  arg3 = {}
  arg3.r = false
  arg3.g = false
  arg3.b = false
  while true do
    workValue13 = CMG
    workValue13 = workValue13.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workValue13 = workValue13()
    stringHelper = GetEntityCoords
    stringHelper2 = workValue13
    -- Beginner: result below is entityCoords.
    stringHelper = stringHelper(stringHelper2)
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.getPlayerVehicle
    stringHelper2, textValue11 = stringHelper2()
    numberValue4 = 0 ~= stringHelper2
    if numberValue4 and not arg2 then
      arg2 = true
      mathHelper = CMG
      mathHelper = mathHelper.getHudVehicleType
      numberValue5 = stringHelper2
      mathHelper = mathHelper(numberValue5)
      if textValue11 then
        numberValue5 = CMG
        numberValue5 = numberValue5.sendHudNuiMessage
        numberValue = "IN_VEHICLE"
        textValue = {}
        textValue.value = true
        textValue.type = mathHelper
        numberValue5(numberValue, textValue)
      else
        numberValue5 = CMG
        numberValue5 = numberValue5.sendHudNuiMessage
        numberValue = "IN_VEHICLE"
        textValue = {}
        textValue.value = true
        textValue.type = mathHelper
        numberValue5(numberValue, textValue)
        numberValue5 = CMG
        numberValue5 = numberValue5.sendHudNuiMessage
        numberValue = "SET_IN_PASSENGER_SIDE"
        textValue = true
        numberValue5(numberValue, textValue)
      end
    elseif not numberValue4 and arg2 then
      arg2 = false
      mathHelper = CMG
      mathHelper = mathHelper.sendHudNuiMessage
      numberValue5 = "IN_VEHICLE"
      numberValue = {}
      numberValue.value = false
      numberValue.type = false
      mathHelper(numberValue5, numberValue)
      mathHelper = CMG
      mathHelper = mathHelper.sendHudNuiMessage
      numberValue5 = "SET_IN_PASSENGER_SIDE"
      numberValue = false
      mathHelper(numberValue5, numberValue)
      mathHelper = CMG
      mathHelper = mathHelper.resetVehicleMode
      mathHelper()
    end
    if numberValue4 then
      mathHelper = GetIsVehicleEngineRunning
      numberValue5 = stringHelper2
      mathHelper = mathHelper(numberValue5)
      if mathHelper ~= arg1 then
        arg1 = mathHelper
        if mathHelper then
          numberValue5 = CMG
          numberValue5 = numberValue5.sendHudNuiMessage
          numberValue = "ENGINE_STATUS"
          textValue = true
          numberValue5(numberValue, textValue)
        else
          numberValue5 = CMG
          numberValue5 = numberValue5.sendHudNuiMessage
          numberValue = "ENGINE_STATUS"
          textValue = false
          numberValue5(numberValue, textValue)
        end
      end
    end
    mathHelper = GetStreetNameAtCoord
    numberValue5 = stringHelper.x
    numberValue = stringHelper.y
    textValue = stringHelper.z
    textValue2 = Citizen
    textValue2 = textValue2.ResultAsInteger
    textValue2 = textValue2()
    textValue3 = Citizen
    textValue3 = textValue3.ResultAsInteger
    textValue3, textValue4, workValue5, workValue6, workValue7, workValue8, textValue5, dataTable8, cmgCall4, numberValue2 = textValue3()
    mathHelper, numberValue5 = mathHelper(numberValue5, numberValue, textValue, textValue2, textValue3, textValue4, workValue5, workValue6, workValue7, workValue8, textValue5, dataTable8, cmgCall4, numberValue2)
    numberValue = GetNameOfZone
    textValue = stringHelper.x
    textValue2 = stringHelper.y
    textValue3 = stringHelper.z
    numberValue = numberValue(textValue, textValue2, textValue3)
    textValue = GetLabelText
    textValue2 = numberValue
    textValue = textValue(textValue2)
    textValue2 = GetStreetNameFromHashKey
    textValue3 = mathHelper
    textValue2 = textValue2(textValue3)
    textValue3 = GetEntityHeading
    textValue4 = workValue13
    -- Beginner: result below is heading.
    textValue3 = textValue3(textValue4)
    textValue4 = "N"
    workValue5 = dataTable6.compassBehaviour
    if "mouselook" == workValue5 then
      workValue5 = GetGameplayCamRot
      workValue6 = 0
      workValue5 = workValue5(workValue6)
      workValue6 = cmgCall10
      workValue7 = workValue5.z
      workValue7 = workValue7 + 360.0
      workValue7 = workValue7 % 360.0
      workValue8 = 360.0
      workValue7 = workValue8 - workValue7
      workValue6 = workValue6(workValue7)
      textValue3 = workValue6
    end
    workValue5 = pairs
    workValue6 = cmgCall11
    workValue5, workValue6, workValue7, workValue8 = workValue5(workValue6)
    for textValue5, dataTable8 in workValue5, workValue6, workValue7, workValue8 do
      cmgCall4 = math
      cmgCall4 = cmgCall4.abs
      numberValue2 = textValue3 - dataTable8
      cmgCall4 = cmgCall4(numberValue2)
      numberValue2 = 22.5
      if cmgCall4 < numberValue2 then
        textValue4 = textValue5
        if 1 == textValue3 then
          textValue4 = "N"
          break
        end
        break
      end
    end
    workValue5 = CMG
    workValue5 = workValue5.sendHudNuiMessage
    workValue6 = "SET_LOCATION"
    workValue7 = {}
    workValue7.street = textValue2
    workValue7.zone = textValue
    workValue7.heading = textValue4
    workValue5(workValue6, workValue7)
    if numberValue4 then
      workValue5 = GetVehicleNeonLightsColour
      workValue6 = stringHelper2
      workValue5, workValue6, workValue7 = workValue5(workValue6)
      workValue8 = arg3.r
      if workValue8 == workValue5 then
        workValue8 = arg3.g
        if workValue8 == workValue6 then
          workValue8 = arg3.b
          if workValue8 == workValue7 then
            workValue8 = Wait
            textValue5 = 2000
            workValue8(textValue5)
          end
        end
      end
      workValue8 = {}
      workValue8.r = workValue5
      workValue8.g = workValue6
      workValue8.b = workValue7
      arg3 = workValue8
      workValue8 = CMG
      workValue8 = workValue8.sendHudNuiMessage
      textValue5 = "NEON_LIGHTS"
      dataTable8 = {}
      dataTable8.r = workValue5
      dataTable8.g = workValue6
      dataTable8.b = workValue7
      workValue8(textValue5, dataTable8)
      workValue8 = CMG
      workValue8 = workValue8.sendHudNuiMessage
      textValue5 = "FUEL"
      dataTable8 = workValue12
      cmgCall4 = CMG
      cmgCall4 = cmgCall4.getVehicleFuel
      numberValue2 = stringHelper2
      cmgCall4 = cmgCall4(numberValue2)
      numberValue2 = 0
      dataTable8, cmgCall4, numberValue2 = dataTable8(cmgCall4, numberValue2)
      workValue8(textValue5, dataTable8, cmgCall4, numberValue2)
      workValue8 = workValue9
      workValue8()
      workValue8 = cmgCall5
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      workValue8()
      workValue8 = dataTable12
      textValue5 = stringHelper2
      workValue8(textValue5)
    end
    workValue5 = Wait
    workValue6 = 100
    workValue5(workValue6)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall12(textValue9)
cmgCall12 = CMG
cmgCall12 = cmgCall12.uiRegisterCallback
textValue9 = "changeSeat"

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.changeSeat
  arg3 = arg1.seat
  arg2(arg3)
end
cmgCall12(textValue9, workValue15)
