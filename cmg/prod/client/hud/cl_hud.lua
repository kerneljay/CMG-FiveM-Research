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
local cmgOperation, dataCollection6, stateFlag4, stateFlag9, text10, cmgOperation13, workingValue17, workingValue18, cmgOperation14, cmgOperation15, stateFlag, dataCollection, dataCollection2, workingValue3, workingValue4, cmgOperation2, dataCollection3, cmgOperation3, dataCollection4, dataCollection5, dataCollection7, dataCollection9, dataCollection10, dataCollection11, cmgOperation5, dataCollection12, cmgOperation6, text6, workingValue9, cmgOperation7, cmgOperation8, text7, workingValue10, workingValue11, cmgOperation9, cmgOperation10, text8, workingValue12, stateFlag7, stateFlag8, workingValue14, cmgOperation11, cmgOperation12, text9, workingValue15
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection6 = "cfg/cfg_hud"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection6)
dataCollection6 = {}
dataCollection6.compassBehaviour = "mouselook"
dataCollection6.speedType = "mph"
dataCollection6.cinematicMode = false
dataCollection6.streamerMode = false
dataCollection6.playMediaSongs = false
stateFlag4 = false
stateFlag9 = false
text10 = GetResourceKvpString
cmgOperation13 = "cmg_legacy_hud"
text10 = text10(cmgOperation13)
text10 = "1" == text10
cmgOperation13 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2
  localValue1 = text10
  return localValue1
end
cmgOperation13.isLegacyHudEnabled = workingValue17
cmgOperation13 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2
  localValue1 = stateFlag4
  return localValue1
end
cmgOperation13.isHudVehicleCursorEnabled = workingValue17
cmgOperation13 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2
  localValue1 = stateFlag9
  return localValue1
end
cmgOperation13.isHudLoaded = workingValue17
cmgOperation13 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2
  while true do
    localValue1 = stateFlag9
    if localValue1 then
      break
    end
    localValue1 = CMG
    localValue1 = localValue1.uiSendMessage
    localValue2 = {}
    localValue2.action = "CHECK_NUI"
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation13(workingValue17)
cmgOperation13 = nil

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.sendHudNuiMessage
  localValue2 = "HIDE_HUD"
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.sendHudNuiMessage
  localValue2 = "SHOW_HUD"
  localValue1(localValue2)
end
cmgOperation14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: none) ===
function cmgOperation15()
  local localValue1, localValue2
  localValue1 = DisplayRadar
  localValue2 = true
  localValue1(localValue2)
  localValue1 = DisplayHud
  localValue2 = true
  localValue1(localValue2)
  localValue1 = workingValue18
  localValue1()
  localValue1 = cmgOperation13
  if nil ~= localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setHotBarEnabled
    localValue2 = cmgOperation13
    localValue1(localValue2)
    localValue1 = nil
    cmgOperation13 = localValue1
  end
end
cmgOperation14.showHud = cmgOperation15
cmgOperation14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: localValue1) ===
function cmgOperation15(localValue1)
  local localValue2, localValue3
  if localValue1 then
    localValue2 = DisplayRadar
    localValue3 = false
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.sendHudNuiMessage
    localValue3 = "HIDE_HUD_CALL_MANAGER"
    localValue2(localValue3)
  else
    localValue2 = DisplayRadar
    localValue3 = true
    localValue2(localValue3)
    localValue2 = DisplayHud
    localValue3 = true
    localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.sendHudNuiMessage
    localValue3 = "SHOW_HUD_CALL_MANAGER"
    localValue2(localValue3)
  end
end
cmgOperation14.setHudCallManagerNotificationsOnlyMode = cmgOperation15
cmgOperation14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: none) ===
function cmgOperation15()
  local localValue1, localValue2
  localValue1 = DisplayRadar
  localValue2 = false
  localValue1(localValue2)
  localValue1 = DisplayHud
  localValue2 = false
  localValue1(localValue2)
  localValue1 = workingValue17
  localValue1()
  localValue1 = cmgOperation13
  if nil == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getHotBarEnabled
    localValue1 = localValue1()
    cmgOperation13 = localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.setHotBarEnabled
  localValue2 = false
  localValue1(localValue2)
end
cmgOperation14.hideHud = cmgOperation15
cmgOperation14 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: none) ===
function cmgOperation15()
  local localValue1, localValue2
  localValue1 = DisplayRadar
  localValue2 = false
  localValue1(localValue2)
  localValue1 = DisplayHud
  localValue2 = false
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.sendHudNuiMessage
  localValue2 = "HIDE_HUD_DEATH_SCREEN"
  localValue1(localValue2)
  localValue1 = cmgOperation13
  if nil == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getHotBarEnabled
    localValue1 = localValue1()
    cmgOperation13 = localValue1
  end
  localValue1 = CMG
  localValue1 = localValue1.setHotBarEnabled
  localValue2 = false
  localValue1(localValue2)
end
cmgOperation14.hideHudForDeathScreen = cmgOperation15
cmgOperation14 = AddEventHandler
cmgOperation15 = "7ad2e2f656"
-- Beginner: this function runs when client event "7ad2e2f656" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hideHud
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "7ad2e2f656".
cmgOperation14(cmgOperation15, stateFlag)
cmgOperation14 = AddEventHandler
cmgOperation15 = "3ee4eff5d1"
-- Beginner: this function runs when client event "3ee4eff5d1" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.showHud
  localValue1()
end
-- Beginner: Register a client-side event handler. Event/command: "3ee4eff5d1".
cmgOperation14(cmgOperation15, stateFlag)
cmgOperation14 = AddEventHandler
cmgOperation15 = "b9028016de"
-- Beginner: this function runs when client event "b9028016de" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.hideHud
    localValue2()
  else
    localValue2 = CMG
    localValue2 = localValue2.showHud
    localValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "b9028016de".
cmgOperation14(cmgOperation15, stateFlag)

-- === HELPER FUNCTION (decompiler name: cmgOperation14; parameters: none) ===
function cmgOperation14()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number
  localValue1 = GetSafeZoneSize
  localValue1 = localValue1()
  localValue2 = 0.05
  localValue3 = 0.05
  workingValue13 = GetAspectRatio
  stringHelper = false
  workingValue13 = workingValue13(stringHelper)
  stringHelper = GetActiveScreenResolution
  stringHelper, stringHelper2 = stringHelper()
  text11 = 1.0
  text11 = text11 / stringHelper
  number4 = 1.0
  number4 = number4 / stringHelper2
  mathHelper = {}
  number5 = 4 * workingValue13
  number5 = stringHelper / number5
  number5 = text11 * number5
  mathHelper.width = number5
  number5 = stringHelper2 / 5.674
  number5 = number4 * number5
  mathHelper.height = number5
  number5 = math
  number5 = number5.abs
  number = localValue1 - 1.0
  number5 = number5(number)
  number5 = number5 * 10
  number5 = localValue2 * number5
  number5 = stringHelper * number5
  number5 = text11 * number5
  mathHelper.left_x = number5
  number5 = math
  number5 = number5.abs
  number = localValue1 - 1.0
  number5 = number5(number)
  number5 = number5 * 10
  number5 = localValue3 * number5
  number5 = stringHelper2 * number5
  number5 = number4 * number5
  number = 1.0
  number5 = number - number5
  mathHelper.bottom_y = number5
  number5 = mathHelper.left_x
  number = mathHelper.width
  number5 = number5 + number
  mathHelper.right_x = number5
  number5 = mathHelper.bottom_y
  number = mathHelper.height
  number5 = number5 - number
  mathHelper.top_y = number5
  number5 = mathHelper.left_x
  mathHelper.x = number5
  number5 = mathHelper.top_y
  mathHelper.y = number5
  mathHelper.xunit = text11
  mathHelper.yunit = number4
  return mathHelper
end
cmgOperation15 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2
  localValue1 = cmgOperation14
  localValue1 = localValue1()
  localValue1 = localValue1.left_x
  return localValue1
end
cmgOperation15.getHudLeftNormalized = stateFlag
cmgOperation15 = CMG

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: none) ===
function stateFlag()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue1 = GetActiveScreenResolution
  localValue1 = localValue1()
  localValue2 = GetAspectRatio
  localValue3 = false
  localValue2 = localValue2(localValue3)
  localValue3 = 1
  localValue3 = localValue3 / localValue1
  workingValue13 = SetScriptGfxAlign
  stringHelper = string
  stringHelper = stringHelper.byte
  stringHelper2 = "L"
  stringHelper = stringHelper(stringHelper2)
  stringHelper2 = string
  stringHelper2 = stringHelper2.byte
  text11 = "B"
  stringHelper2, text11, number4 = stringHelper2(text11)
  workingValue13(stringHelper, stringHelper2, text11, number4)
  workingValue13 = nil
  stringHelper = nil
  stringHelper2 = IsBigmapActive
  stringHelper2 = stringHelper2()
  if stringHelper2 then
    stringHelper2 = GetScriptGfxPosition
    text11 = -0.003975
    number4 = -0.43841666599999995
    stringHelper2 = stringHelper2(text11, number4)
    workingValue13 = stringHelper2
    stringHelper2 = 2.52 * localValue2
    stringHelper2 = localValue1 / stringHelper2
    stringHelper = localValue3 * stringHelper2
  else
    stringHelper2 = GetScriptGfxPosition
    text11 = -0.0045
    number4 = -0.186888
    stringHelper2 = stringHelper2(text11, number4)
    workingValue13 = stringHelper2
    stringHelper2 = 4 * localValue2
    stringHelper2 = localValue1 / stringHelper2
    stringHelper = localValue3 * stringHelper2
  end
  stringHelper2 = ResetScriptGfxAlign
  stringHelper2()
  stringHelper2 = workingValue13 + stringHelper
  stringHelper2 = stringHelper2 * localValue1
  return stringHelper2
end
cmgOperation15.getRoundMinimapRightPx = stateFlag

-- === HELPER FUNCTION (decompiler name: cmgOperation15; parameters: none) ===
function cmgOperation15()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text
  localValue1 = cmgOperation.minimapPositionPresets
  if localValue1 then
    localValue2 = #localValue1
    if 0 ~= localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = 0.0
  localValue3 = 0.0
  return localValue2, localValue3
  ::continueAtStep10::
  localValue2 = GetResourceKvpInt
  localValue3 = "cmg_minimap_position"
  localValue2 = localValue2(localValue3)
  if not (localValue2 < 1) then
    localValue3 = #localValue1
    if not (localValue2 > localValue3) then
      goto continueAtStep19
    end
  end
  localValue2 = 1
  ::continueAtStep19::
  localValue3 = localValue1[localValue2]
  if not localValue3 then
    workingValue13 = 0.0
    stringHelper = 0.0
    return workingValue13, stringHelper
  end
  workingValue13 = localValue3.dx
  if not workingValue13 then
    workingValue13 = 0.0
  end
  stringHelper = localValue3.dy
  if not stringHelper then
    stringHelper = 0.0
  end
  stringHelper2 = tonumber
  text11 = GetResourceKvpString
  number4 = "cmg_minimap_fine_x"
  text11 = text11(number4)
  if not text11 then
    text11 = ""
  end
  stringHelper2 = stringHelper2(text11)
  if not stringHelper2 then
    stringHelper2 = 0.0
  end
  text11 = tonumber
  number4 = GetResourceKvpString
  mathHelper = "cmg_minimap_fine_y"
  number4 = number4(mathHelper)
  if not number4 then
    number4 = ""
  end
  text11 = text11(number4)
  if not text11 then
    text11 = 0.0
  end
  number4 = cmgOperation.minimapFineOffsetClamp
  if not number4 then
    number4 = 0.25
  end
  mathHelper = math
  mathHelper = mathHelper.min
  number5 = math
  number5 = number5.max
  number = stringHelper2
  text = -number4
  number5 = number5(number, text)
  number = number4
  mathHelper = mathHelper(number5, number)
  stringHelper2 = mathHelper
  mathHelper = math
  mathHelper = mathHelper.min
  number5 = math
  number5 = number5.max
  number = text11
  text = -number4
  number5 = number5(number, text)
  number = number4
  mathHelper = mathHelper(number5, number)
  text11 = mathHelper
  mathHelper = workingValue13 + stringHelper2
  number5 = stringHelper + text11
  return mathHelper, number5
end
stateFlag = false
dataCollection = {}
dataCollection2 = {}
dataCollection2.posX = 0.0
dataCollection2.posY = -0.017
dataCollection2.sizeX = 0.1638
dataCollection2.sizeY = 0.183
dataCollection.mm = dataCollection2
dataCollection2 = {}
dataCollection2.posX = 0.0
dataCollection2.posY = 0.03
dataCollection2.sizeX = 0.128
dataCollection2.sizeY = 0.2
dataCollection.mk = dataCollection2
dataCollection2 = {}
dataCollection2.posX = -0.0085
dataCollection2.posY = 0.058
dataCollection2.sizeX = 0.296
dataCollection2.sizeY = 0.339
dataCollection.bl = dataCollection2

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text, text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8
  localValue1 = type
  localValue2 = CMG
  localValue2 = localValue2.isCallManagerOpen
  localValue1 = localValue1(localValue2)
  if "function" == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isCallManagerOpen
    localValue1 = localValue1()
    if localValue1 then
      return
    end
  end
  localValue1 = 1.7777777777777777
  localValue2 = GetActiveScreenResolution
  localValue2, localValue3 = localValue2()
  workingValue13 = localValue2 / localValue3
  stringHelper = 0
  if localValue1 < workingValue13 then
    stringHelper2 = localValue1 - workingValue13
    text11 = 2.0 * localValue1
    stringHelper = stringHelper2 / text11
  end
  stringHelper2 = GetAspectRatio
  text11 = false
  stringHelper2 = stringHelper2(text11)
  text11 = math
  text11 = text11.min
  number4 = workingValue13
  mathHelper = stringHelper2
  text11 = text11(number4, mathHelper)
  number4 = 1.0
  if localValue1 > text11 then
    number4 = text11 / localValue1
  end
  mathHelper = RequestStreamedTextureDict
  number5 = "squaremap"
  number = false
  mathHelper(number5, number)
  while true do
    mathHelper = HasStreamedTextureDictLoaded
    number5 = "squaremap"
    mathHelper = mathHelper(number5)
    if mathHelper then
      break
    end
    mathHelper = Wait
    number5 = 0
    mathHelper(number5)
  end
  mathHelper = SetMinimapClipType
  number5 = 0
  mathHelper(number5)
  mathHelper = AddReplaceTexture
  number5 = "platform:/textures/graphics"
  number = "radarmasksm"
  text = "squaremap"
  text2 = "radarmasksm"
  mathHelper(number5, number, text, text2)
  mathHelper = AddReplaceTexture
  number5 = "platform:/textures/graphics"
  number = "radarmask1g"
  text = "squaremap"
  text2 = "radarmasksm"
  mathHelper(number5, number, text, text2)
  mathHelper = cmgOperation15
  mathHelper, number5 = mathHelper()
  number = stateFlag
  if number then
    number = dataCollection
    if number then
      goto continueAtStep99
    end
  end
  number = {}
  text = {}
  text.posX = 0.0
  text.posY = -0.017
  text.sizeX = 0.1638
  text.sizeY = 0.183
  number.mm = text
  text = {}
  text.posX = 0.0
  text.posY = 0.03
  text.sizeX = 0.128
  text.sizeY = 0.2
  number.mk = text
  text = {}
  text.posX = -0.0085
  text.posY = 0.058
  text.sizeX = 0.296
  text.sizeY = 0.339
  number.bl = text
  ::continueAtStep99::
  text = SetMinimapComponentPosition
  text2 = "minimap"
  text3 = "L"
  text4 = "B"
  workingValue5 = number.mm
  workingValue5 = workingValue5.posX
  workingValue5 = workingValue5 + stringHelper
  workingValue5 = workingValue5 + mathHelper
  workingValue6 = number.mm
  workingValue6 = workingValue6.posY
  workingValue6 = workingValue6 + number5
  workingValue7 = number.mm
  workingValue7 = workingValue7.sizeX
  workingValue7 = workingValue7 * number4
  workingValue8 = number.mm
  workingValue8 = workingValue8.sizeY
  text(text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8)
  text = SetMinimapComponentPosition
  text2 = "minimap_mask"
  text3 = "L"
  text4 = "B"
  workingValue5 = number.mk
  workingValue5 = workingValue5.posX
  workingValue5 = workingValue5 + stringHelper
  workingValue5 = workingValue5 + mathHelper
  workingValue6 = number.mk
  workingValue6 = workingValue6.posY
  workingValue6 = workingValue6 + number5
  workingValue7 = number.mk
  workingValue7 = workingValue7.sizeX
  workingValue7 = workingValue7 * number4
  workingValue8 = number.mk
  workingValue8 = workingValue8.sizeY
  text(text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8)
  text = SetMinimapComponentPosition
  text2 = "minimap_blur"
  text3 = "L"
  text4 = "B"
  workingValue5 = number.bl
  workingValue5 = workingValue5.posX
  workingValue5 = workingValue5 + stringHelper
  workingValue5 = workingValue5 + mathHelper
  workingValue6 = number.bl
  workingValue6 = workingValue6.posY
  workingValue6 = workingValue6 + number5
  workingValue7 = number.bl
  workingValue7 = workingValue7.sizeX
  workingValue7 = workingValue7 * number4
  workingValue8 = number.bl
  workingValue8 = workingValue8.sizeY
  text(text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8)
  text = SetBlipAlpha
  text2 = GetNorthRadarBlip
  text2 = text2()
  text3 = 0
  text(text2, text3)
  text = SetRadarBigmapEnabled
  text2 = true
  text3 = false
  text(text2, text3)
  text = SetMinimapClipType
  text2 = 0
  text(text2)
  text = Wait
  text2 = 50
  text(text2)
  text = SetRadarBigmapEnabled
  text2 = false
  text3 = false
  text(text2, text3)
  text = SetRadarZoom
  text2 = 1050
  text(text2)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue1 = type
  localValue2 = CMG
  localValue2 = localValue2.isCallManagerOpen
  localValue1 = localValue1(localValue2)
  if "function" == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isCallManagerOpen
    localValue1 = localValue1()
    if localValue1 then
      return
    end
  end
  localValue1 = RemoveReplaceTexture
  localValue2 = "platform:/textures/graphics"
  localValue3 = "radarmasksm"
  localValue1(localValue2, localValue3)
  localValue1 = RemoveReplaceTexture
  localValue2 = "platform:/textures/graphics"
  localValue3 = "radarmask1g"
  localValue1(localValue2, localValue3)
  localValue1 = SetMinimapClipType
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = SetMinimapComponentPosition
  localValue2 = "minimap"
  localValue3 = "L"
  workingValue13 = "B"
  stringHelper = -0.0045
  stringHelper2 = 0.002
  text11 = 0.15
  number4 = 0.188888
  localValue1(localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4)
  localValue1 = SetMinimapComponentPosition
  localValue2 = "minimap_mask"
  localValue3 = "L"
  workingValue13 = "B"
  stringHelper = 0.02
  stringHelper2 = 0.032
  text11 = 0.111
  number4 = 0.159
  localValue1(localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4)
  localValue1 = SetMinimapComponentPosition
  localValue2 = "minimap_blur"
  localValue3 = "L"
  workingValue13 = "B"
  stringHelper = -0.03
  stringHelper2 = 0.022
  text11 = 0.266
  number4 = 0.237
  localValue1(localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4)
  localValue1 = SetBlipAlpha
  localValue2 = GetNorthRadarBlip
  localValue2 = localValue2()
  localValue3 = 255
  localValue1(localValue2, localValue3)
  localValue1 = SetRadarBigmapEnabled
  localValue2 = true
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = SetMinimapClipType
  localValue2 = 0
  localValue1(localValue2)
  localValue1 = Wait
  localValue2 = 50
  localValue1(localValue2)
  localValue1 = SetRadarBigmapEnabled
  localValue2 = false
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = SetRadarZoom
  localValue2 = 1050
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2
  localValue1 = CMG
  localValue1 = localValue1.isLegacyHudEnabled
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = workingValue3
    localValue1()
  else
    localValue1 = dataCollection2
    localValue1()
  end
  localValue1 = GetActiveScreenResolution
  localValue1, localValue2 = localValue1()
  localValue3 = CMG
  localValue3 = localValue3.sendHudNuiMessage
  workingValue13 = "ADJUST_HUD_POSITION"
  stringHelper = {}
  stringHelper2 = cmgOperation14
  stringHelper2 = stringHelper2()
  stringHelper2 = stringHelper2.x
  stringHelper2 = localValue1 * stringHelper2
  stringHelper2 = stringHelper2 + 5
  stringHelper.left = stringHelper2
  localValue3(workingValue13, stringHelper)
  localValue3 = CMG
  localValue3 = localValue3.isLegacyHudEnabled
  localValue3 = localValue3()
  if localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.refreshMoneyUI
    localValue3()
  end
end
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2
  localValue1 = workingValue4
  localValue1()
end
cmgOperation2.refreshMinimap = dataCollection3
cmgOperation2 = {}
dataCollection3 = {}
dataCollection3.type = "hideMoneyBar"
dataCollection3.legacy = true
dataCollection3.default = false
cmgOperation3 = {}
cmgOperation3.type = "showAllLocation"
cmgOperation3.legacy = false
cmgOperation3.default = true
dataCollection4 = {}
dataCollection4.type = "hideHealth"
dataCollection4.legacy = true
dataCollection4.default = false
dataCollection5 = {}
dataCollection5.type = "hideArmor"
dataCollection5.legacy = true
dataCollection5.default = false
dataCollection7 = {}
dataCollection7.type = "hideHunger"
dataCollection7.legacy = true
dataCollection7.default = false
dataCollection9 = {}
dataCollection9.type = "hideThirst"
dataCollection9.legacy = true
dataCollection9.default = false
dataCollection10 = {}
dataCollection10.type = "hideStress"
dataCollection10.legacy = true
dataCollection10.default = false
dataCollection11 = {}
dataCollection11.type = "hideDynamicStatus"
dataCollection11.legacy = true
dataCollection11.default = false
cmgOperation5 = {}
cmgOperation5.type = "hideBounty"
cmgOperation5.legacy = true
cmgOperation5.default = false
dataCollection12 = {}
dataCollection12.type = "hideMic"
dataCollection12.legacy = true
dataCollection12.default = false
cmgOperation6 = {}
cmgOperation6.type = "showAllSpeedometer"
cmgOperation6.legacy = true
cmgOperation6.default = true
cmgOperation2[1] = dataCollection3
cmgOperation2[2] = cmgOperation3
cmgOperation2[3] = dataCollection4
cmgOperation2[4] = dataCollection5
cmgOperation2[5] = dataCollection7
cmgOperation2[6] = dataCollection9
cmgOperation2[7] = dataCollection10
cmgOperation2[8] = dataCollection11
cmgOperation2[9] = cmgOperation5
cmgOperation2[10] = dataCollection12
cmgOperation2[11] = cmgOperation6

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text, text2
  localValue1 = text10
  if localValue1 then
    localValue1 = ipairs
    localValue2 = cmgOperation2
    localValue1, localValue2, localValue3, workingValue13 = localValue1(localValue2)
    for stringHelper, stringHelper2 in localValue1, localValue2, localValue3, workingValue13 do
      text11 = CMG
      text11 = text11.sendHudNuiMessage
      number4 = "SET_HUD_SETTING"
      mathHelper = {}
      number5 = stringHelper2.type
      mathHelper.type = number5
      number5 = stringHelper2.legacy
      mathHelper.value = number5
      text11(number4, mathHelper)
    end
    return
  end
  localValue1 = {}
  localValue2 = GetResourceKvpString
  localValue3 = "cmg_hud_settings_json"
  localValue2 = localValue2(localValue3)
  if localValue2 and "" ~= localValue2 then
    localValue3 = pcall
    workingValue13 = json
    workingValue13 = workingValue13.decode
    stringHelper = localValue2
    localValue3, workingValue13 = localValue3(workingValue13, stringHelper)
    if localValue3 then
      stringHelper = type
      stringHelper2 = workingValue13
      stringHelper = stringHelper(stringHelper2)
      if "table" == stringHelper then
        localValue1 = workingValue13
      end
    end
  end
  localValue3 = ipairs
  workingValue13 = cmgOperation2
  localValue3, workingValue13, stringHelper, stringHelper2 = localValue3(workingValue13)
  for text11, number4 in localValue3, workingValue13, stringHelper, stringHelper2 do
    mathHelper = number4.default
    number5 = number4.type
    number5 = localValue1[number5]
    if nil ~= number5 then
      number5 = number4.type
      mathHelper = localValue1[number5]
    end
    number5 = CMG
    number5 = number5.sendHudNuiMessage
    number = "SET_HUD_SETTING"
    text = {}
    text2 = number4.type
    text.type = text2
    text.value = mathHelper
    number5(number, text)
  end
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3, workingValue13
  localValue2 = SetResourceKvp
  localValue3 = "cmg_legacy_hud"
  if localValue1 then
    workingValue13 = "1"
    if workingValue13 then
      goto continueAtStep9
    end
  end
  workingValue13 = "0"
  ::continueAtStep9::
  localValue2(localValue3, workingValue13)
  text10 = localValue1
  localValue2 = CMG
  localValue2 = localValue2.refreshMinimap
  localValue2()
  localValue2 = dataCollection3
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.refreshMoneyUI
  localValue2()
end
cmgOperation3.setLegacyHudEnabled = dataCollection4
cmgOperation3 = 200

-- === HELPER FUNCTION (decompiler name: dataCollection4; parameters: localValue1) ===
function dataCollection4(localValue1)
  local localValue2, localValue3
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1 * 400
  localValue3 = localValue3 + 80.5
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local localValue2
  localValue2 = localValue1 - 80
  localValue2 = localValue2 / 400
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text, text2, text3, text4, workingValue5, workingValue6, workingValue7
  localValue1 = true
  stateFlag = localValue1
  localValue1 = 1.7777777777777777
  localValue2 = GetActiveScreenResolution
  localValue2, localValue3 = localValue2()
  workingValue13 = localValue2 / localValue3
  stringHelper = 0
  if localValue1 < workingValue13 then
    stringHelper2 = localValue1 - workingValue13
    text11 = 2.0 * localValue1
    stringHelper = stringHelper2 / text11
  end
  stringHelper2 = GetAspectRatio
  text11 = false
  stringHelper2 = stringHelper2(text11)
  text11 = math
  text11 = text11.min
  number4 = workingValue13
  mathHelper = stringHelper2
  text11 = text11(number4, mathHelper)
  number4 = 1.0
  if localValue1 > text11 then
    number4 = text11 / localValue1
  end
  mathHelper = cmgOperation15
  mathHelper, number5 = mathHelper()
  number = SetMinimapComponentPosition
  text = "minimap"
  text2 = "L"
  text3 = "B"
  text4 = dataCollection.mm
  text4 = text4.posX
  text4 = text4 + stringHelper
  text4 = text4 + mathHelper
  workingValue5 = dataCollection.mm
  workingValue5 = workingValue5.posY
  workingValue5 = workingValue5 + number5
  workingValue6 = dataCollection.mm
  workingValue6 = workingValue6.sizeX
  workingValue6 = workingValue6 * number4
  workingValue7 = dataCollection.mm
  workingValue7 = workingValue7.sizeY
  number(text, text2, text3, text4, workingValue5, workingValue6, workingValue7)
  number = SetMinimapComponentPosition
  text = "minimap_mask"
  text2 = "L"
  text3 = "B"
  text4 = dataCollection.mk
  text4 = text4.posX
  text4 = text4 + stringHelper
  text4 = text4 + mathHelper
  workingValue5 = dataCollection.mk
  workingValue5 = workingValue5.posY
  workingValue5 = workingValue5 + number5
  workingValue6 = dataCollection.mk
  workingValue6 = workingValue6.sizeX
  workingValue6 = workingValue6 * number4
  workingValue7 = dataCollection.mk
  workingValue7 = workingValue7.sizeY
  number(text, text2, text3, text4, workingValue5, workingValue6, workingValue7)
  number = SetMinimapComponentPosition
  text = "minimap_blur"
  text2 = "L"
  text3 = "B"
  text4 = dataCollection.bl
  text4 = text4.posX
  text4 = text4 + stringHelper
  text4 = text4 + mathHelper
  workingValue5 = dataCollection.bl
  workingValue5 = workingValue5.posY
  workingValue5 = workingValue5 + number5
  workingValue6 = dataCollection.bl
  workingValue6 = workingValue6.sizeX
  workingValue6 = workingValue6 * number4
  workingValue7 = dataCollection.bl
  workingValue7 = workingValue7.sizeY
  number(text, text2, text3, text4, workingValue5, workingValue6, workingValue7)
end

-- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
function dataCollection9()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number

  -- === HELPER FUNCTION: localValue1(localValue12) ===
  function localValue1(localValue12)
    local localValue22, localValue32, localValue4
    localValue22 = string
    localValue22 = localValue22.format
    localValue32 = "%.4f"
    localValue4 = localValue12
    return localValue22(localValue32, localValue4)
  end
  localValue2 = print
  localValue3 = "--- Minimap Tuner Values ---"
  localValue2(localValue3)
  localValue2 = print
  localValue3 = "SetMinimapComponentPosition(\"minimap\",      \"L\", \"B\", "
  workingValue13 = localValue1
  stringHelper = dataCollection.mm
  stringHelper = stringHelper.posX
  workingValue13 = workingValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = localValue1
  text11 = dataCollection.mm
  text11 = text11.posY
  stringHelper2 = stringHelper2(text11)
  text11 = ", "
  number4 = localValue1
  mathHelper = dataCollection.mm
  mathHelper = mathHelper.sizeX
  number4 = number4(mathHelper)
  mathHelper = ", "
  number5 = localValue1
  number = dataCollection.mm
  number = number.sizeY
  number5 = number5(number)
  number = ")"
  localValue3 = localValue3 .. workingValue13 .. stringHelper .. stringHelper2 .. text11 .. number4 .. mathHelper .. number5 .. number
  localValue2(localValue3)
  localValue2 = print
  localValue3 = "SetMinimapComponentPosition(\"minimap_mask\",  \"L\", \"B\", "
  workingValue13 = localValue1
  stringHelper = dataCollection.mk
  stringHelper = stringHelper.posX
  workingValue13 = workingValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = localValue1
  text11 = dataCollection.mk
  text11 = text11.posY
  stringHelper2 = stringHelper2(text11)
  text11 = ", "
  number4 = localValue1
  mathHelper = dataCollection.mk
  mathHelper = mathHelper.sizeX
  number4 = number4(mathHelper)
  mathHelper = ", "
  number5 = localValue1
  number = dataCollection.mk
  number = number.sizeY
  number5 = number5(number)
  number = ")"
  localValue3 = localValue3 .. workingValue13 .. stringHelper .. stringHelper2 .. text11 .. number4 .. mathHelper .. number5 .. number
  localValue2(localValue3)
  localValue2 = print
  localValue3 = "SetMinimapComponentPosition(\"minimap_blur\",  \"L\", \"B\", "
  workingValue13 = localValue1
  stringHelper = dataCollection.bl
  stringHelper = stringHelper.posX
  workingValue13 = workingValue13(stringHelper)
  stringHelper = ", "
  stringHelper2 = localValue1
  text11 = dataCollection.bl
  text11 = text11.posY
  stringHelper2 = stringHelper2(text11)
  text11 = ", "
  number4 = localValue1
  mathHelper = dataCollection.bl
  mathHelper = mathHelper.sizeX
  number4 = number4(mathHelper)
  mathHelper = ", "
  number5 = localValue1
  number = dataCollection.bl
  number = number.sizeY
  number5 = number5(number)
  number = ")"
  localValue3 = localValue3 .. workingValue13 .. stringHelper .. stringHelper2 .. text11 .. number4 .. mathHelper .. number5 .. number
  localValue2(localValue3)
  localValue2 = print
  localValue3 = "----------------------------"
  localValue2(localValue3)
end
dataCollection10 = 0

-- === HELPER FUNCTION (decompiler name: dataCollection11; parameters: localValue1, localValue2, localValue3) ===
function dataCollection11(localValue1, localValue2, localValue3)
  local workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text, text2
  workingValue13 = dataCollection4
  stringHelper = dataCollection
  stringHelper = stringHelper[localValue1]
  stringHelper = stringHelper[localValue2]
  workingValue13 = workingValue13(stringHelper)
  stringHelper = RageUI
  stringHelper = stringHelper.Slider
  stringHelper2 = localValue3
  text11 = "  "
  number4 = string
  number4 = number4.format
  mathHelper = "%.3f"
  number5 = dataCollection
  number5 = number5[localValue1]
  number5 = number5[localValue2]
  number4 = number4(mathHelper, number5)
  stringHelper2 = stringHelper2 .. text11 .. number4
  text11 = workingValue13
  number4 = cmgOperation3
  mathHelper = ""
  number5 = false
  number = {}
  text = true

  -- === HELPER FUNCTION (decompiler name: text2; parameters: localValue12, localValue22, localValue32, localValue4) ===
  function text2(localValue12, localValue22, localValue32, localValue4)
    local backgroundThread, workingValue16, number3, stateFlag10
    backgroundThread = workingValue13
    if localValue4 ~= backgroundThread then
      workingValue16 = localValue1
      backgroundThread = dataCollection
      backgroundThread = backgroundThread[workingValue16]
      workingValue16 = localValue2
      number3 = dataCollection5
      stateFlag10 = localValue4
      number3 = number3(stateFlag10)
      backgroundThread[workingValue16] = number3
      backgroundThread = CreateThread
      workingValue16 = dataCollection7
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      backgroundThread(workingValue16)
      backgroundThread = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      backgroundThread = backgroundThread()
      dataCollection10 = backgroundThread
      workingValue16 = SetTimeout
      number3 = 300
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
      function stateFlag10()
        local workingValue, stateFlag2, stateFlag5
        workingValue = dataCollection10
        stateFlag2 = backgroundThread
        if workingValue == stateFlag2 then
          workingValue = SetRadarBigmapEnabled
          stateFlag2 = true
          stateFlag5 = false
          workingValue(stateFlag2, stateFlag5)
          workingValue = SetMinimapClipType
          stateFlag2 = 0
          workingValue(stateFlag2)
          workingValue = SetTimeout
          stateFlag2 = 50

          -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
          function stateFlag5()
            local workingValue2, stateFlag3, stateFlag6
            workingValue2 = SetRadarBigmapEnabled
            stateFlag3 = false
            stateFlag6 = false
            workingValue2(stateFlag3, stateFlag6)
          end
          workingValue(stateFlag2, stateFlag5)
        end
      end
      workingValue16(number3, stateFlag10)
    end
  end
  stringHelper(stringHelper2, text11, number4, mathHelper, number5, number, text, text2)
end
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuItems
dataCollection12 = "Minimap Tuner"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2
  localValue1 = true
  stateFlag = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "~g~Print Values"
  localValue3 = "Print copy-paste-ready code to F8 console"
  workingValue13 = {}
  stringHelper = true

  -- === HELPER FUNCTION: stringHelper2(localValue12, localValue22, localValue32) ===
  function stringHelper2(localValue12, localValue22, localValue32)
    local localValue4
    if localValue32 then
      localValue4 = dataCollection9
      localValue4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, workingValue13, stringHelper, stringHelper2)
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuItems
dataCollection12 = "Minimap Tuner/Content (minimap)"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = true
  stateFlag = localValue1
  localValue1 = dataCollection11
  localValue2 = "mm"
  localValue3 = "posX"
  workingValue13 = "Pos X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mm"
  localValue3 = "posY"
  workingValue13 = "Pos Y"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mm"
  localValue3 = "sizeX"
  workingValue13 = "Size X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mm"
  localValue3 = "sizeY"
  workingValue13 = "Size Y"
  localValue1(localValue2, localValue3, workingValue13)
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuItems
dataCollection12 = "Minimap Tuner/Mask (minimap_mask)"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = true
  stateFlag = localValue1
  localValue1 = dataCollection11
  localValue2 = "mk"
  localValue3 = "posX"
  workingValue13 = "Pos X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mk"
  localValue3 = "posY"
  workingValue13 = "Pos Y"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mk"
  localValue3 = "sizeX"
  workingValue13 = "Size X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "mk"
  localValue3 = "sizeY"
  workingValue13 = "Size Y"
  localValue1(localValue2, localValue3, workingValue13)
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.registerDevMenuItems
dataCollection12 = "Minimap Tuner/Blur (minimap_blur)"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = true
  stateFlag = localValue1
  localValue1 = dataCollection11
  localValue2 = "bl"
  localValue3 = "posX"
  workingValue13 = "Pos X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "bl"
  localValue3 = "posY"
  workingValue13 = "Pos Y"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "bl"
  localValue3 = "sizeX"
  workingValue13 = "Size X"
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = dataCollection11
  localValue2 = "bl"
  localValue3 = "sizeY"
  workingValue13 = "Size Y"
  localValue1(localValue2, localValue3, workingValue13)
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
dataCollection12 = "loaded"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2
  localValue1 = true
  stateFlag9 = localValue1
  localValue1 = workingValue4
  localValue1()
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = AddEventHandler
dataCollection12 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, workingValue13
  while true do
    localValue3 = CMG
    localValue3 = localValue3.isHudLoaded
    localValue3 = localValue3()
    if localValue3 then
      break
    end
    localValue3 = Wait
    workingValue13 = 0
    localValue3(workingValue13)
  end
  if localValue2 then
    localValue3 = DisplayRadar
    workingValue13 = true
    localValue3(workingValue13)
    localValue3 = workingValue18
    localValue3()
    localValue3 = workingValue4
    localValue3()
    localValue3 = Wait
    workingValue13 = 1000
    localValue3(workingValue13)
    localValue3 = workingValue4
    localValue3()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
dataCollection12 = "getHudSetting"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2) ===
function cmgOperation6(localValue1, localValue2)
  local localValue3, workingValue13, stringHelper
  localValue3 = localValue1.type
  workingValue13 = localValue1.value
  stringHelper = dataCollection6
  stringHelper[localValue3] = workingValue13
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
dataCollection12 = "persistHudSettingsJson"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" ~= localValue2 then
    return
  end
  localValue2 = pcall
  localValue3 = json
  localValue3 = localValue3.encode
  workingValue13 = localValue1
  localValue2, localValue3 = localValue2(localValue3, workingValue13)
  if not localValue2 or nil == localValue3 then
    return
  end
  workingValue13 = SetResourceKvp
  stringHelper = "cmg_hud_settings_json"
  stringHelper2 = localValue3
  workingValue13(stringHelper, stringHelper2)
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1, localValue2) ===
function dataCollection12(localValue1, localValue2)
  local localValue3, workingValue13
  while true do
    localValue3 = CMG
    localValue3 = localValue3.isHudLoaded
    localValue3 = localValue3()
    if localValue3 then
      break
    end
    localValue3 = Wait
    workingValue13 = 0
    localValue3(workingValue13)
  end
  localValue3 = CMG
  localValue3 = localValue3.uiSendMessage
  workingValue13 = {}
  workingValue13.action = localValue1
  workingValue13.payload = localValue2
  localValue3(workingValue13)
end
cmgOperation5.sendHudNuiMessage = dataCollection12
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: none) ===
function dataCollection12()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = CMG
  localValue1 = localValue1.sendHudNuiMessage
  localValue2 = "SET_NOTIFY_SOUND_ENABLED"
  localValue3 = GetResourceKvpInt
  workingValue13 = "cmg_disable_notify_sound"
  localValue3 = localValue3(workingValue13)
  localValue3 = 1 ~= localValue3
  localValue1(localValue2, localValue3)
end
cmgOperation5.syncHudNotifySoundEnabled = dataCollection12
cmgOperation5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: none) ===
function dataCollection12()
  local localValue1, localValue2, localValue3, workingValue13
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isHudLoaded
    localValue1 = localValue1()
    if localValue1 then
      break
    end
    localValue1 = print
    localValue2 = "Waiting for HUD to load..."
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = GetResourceKvpString
  localValue2 = "cmg_hud_settings_json"
  localValue1 = localValue1(localValue2)
  if localValue1 and "" ~= localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.sendHudNuiMessage
    localValue3 = "LOAD_HUD_SAVED_SETTINGS"
    workingValue13 = localValue1
    localValue2(localValue3, workingValue13)
  end
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_MENU"
  workingValue13 = cmgOperation.Menu
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "LOAD_KEYS"
  workingValue13 = cmgOperation.UIKeys
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_SHOW_MAP_WALKING"
  workingValue13 = true
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_IDENTIFIER"
  workingValue13 = CMG
  workingValue13 = workingValue13.getClientUserId
  -- Beginner: result below is userId.
  workingValue13 = workingValue13()
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_PLAYER_PP"
  workingValue13 = "./assets/images/default-pp.png"
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_COUNTRY_CODE"
  workingValue13 = cmgOperation.CountryCode
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_LOCALES"
  workingValue13 = cmgOperation.Locales
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "ENABLE_UI_KEYS"
  workingValue13 = cmgOperation.EnableUIKeys
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_DEFAULT_SPEED_TYPE"
  workingValue13 = cmgOperation.DefaultSpeedType
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_MOUSE_CURSOR_KEY_LABEL"
  workingValue13 = cmgOperation.MouseCursorKeyLabel
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_MAX_VOICE_RANGES"
  workingValue13 = cmgOperation.MaxVoiceRanges
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SEAT_SETTINGS"
  workingValue13 = cmgOperation.Seat
  localValue2(localValue3, workingValue13)
  localValue2 = CMG
  localValue2 = localValue2.syncHudNotifySoundEnabled
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.isLegacyHudEnabled
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = dataCollection3
    localValue2()
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation5(dataCollection12)
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.uiRegisterCallback
dataCollection12 = "resize"

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2
  localValue1 = workingValue4
  localValue1()
end
cmgOperation5(dataCollection12, cmgOperation6)
cmgOperation5 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: none) ===
function dataCollection12()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue1 = GetActiveScreenResolution
  localValue1, localValue2 = localValue1()
  localValue3 = GetAspectRatio
  workingValue13 = false
  localValue3 = localValue3(workingValue13)
  while true do
    workingValue13 = Wait
    stringHelper = 500
    workingValue13(stringHelper)
    workingValue13 = CMG
    workingValue13 = workingValue13.isHudLoaded
    workingValue13 = workingValue13()
    if workingValue13 then
      workingValue13 = GetActiveScreenResolution
      workingValue13, stringHelper = workingValue13()
      stringHelper2 = GetAspectRatio
      text11 = false
      stringHelper2 = stringHelper2(text11)
      if workingValue13 == localValue1 and stringHelper == localValue2 then
        text11 = math
        text11 = text11.abs
        number4 = stringHelper2 - localValue3
        text11 = text11(number4)
        number4 = 0.001
        if not (text11 > number4) then
          goto continueAtStep36
        end
      end
      localValue1 = workingValue13
      localValue2 = stringHelper
      localValue3 = stringHelper2
      text11 = workingValue4
      text11()
    end
    ::continueAtStep36::
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation5(dataCollection12)

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  localValue2 = {}
  localValue3 = "left"
  workingValue13 = "right"
  stringHelper = "front"
  stringHelper2 = "back"
  localValue2[1] = localValue3
  localValue2[2] = workingValue13
  localValue2[3] = stringHelper
  localValue2[4] = stringHelper2
  localValue3 = 0
  workingValue13 = 3
  stringHelper = 1
  for stringHelper2 = localValue3, workingValue13, stringHelper do
    text11 = IsVehicleNeonLightEnabled
    number4 = localValue1
    mathHelper = stringHelper2
    text11 = text11(number4, mathHelper)
    if text11 then
      text11 = CMG
      text11 = text11.sendHudNuiMessage
      number4 = "NEON_ENABLED"
      mathHelper = {}
      number5 = stringHelper2 + 1
      number5 = localValue2[number5]
      mathHelper.type = number5
      mathHelper.value = true
      text11(number4, mathHelper)
    else
      text11 = CMG
      text11 = text11.sendHudNuiMessage
      number4 = "NEON_ENABLED"
      mathHelper = {}
      number5 = stringHelper2 + 1
      number5 = localValue2[number5]
      mathHelper.type = number5
      mathHelper.value = false
      text11(number4, mathHelper)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: dataCollection12; parameters: localValue1) ===
function dataCollection12(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue2 = GetVehicleLightsState
  localValue3 = localValue1
  localValue2, localValue3, workingValue13 = localValue2(localValue3)
  if localValue2 then
    stringHelper = nil
    if 1 == localValue3 and 0 == workingValue13 then
      stringHelper = true
    elseif 1 == localValue3 and 1 == workingValue13 or 0 == localValue3 and 1 == workingValue13 then
      stringHelper = true
    else
      stringHelper = false
    end
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.sendHudNuiMessage
    text11 = "VEHICLE_LIGHTS"
    number4 = stringHelper
    stringHelper2(text11, number4)
  end
end
cmgOperation6 = CMG
cmgOperation6 = cmgOperation6.uiRegisterCallback
text6 = "closeSettings"

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  workingValue13 = false
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "HUD_SET_INTERACTIVE"
  localValue2.value = false
  localValue1(localValue2)
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = Wait
    localValue2 = 350
    localValue1(localValue2)
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = true
    localValue3 = true
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
  end
end
cmgOperation6(text6, workingValue9)
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = CMG
  localValue1 = localValue1.sendHudNuiMessage
  localValue2 = "OPEN_HUD_SETTINGS"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = true
  localValue3 = true
  workingValue13 = false
  localValue1(localValue2, localValue3, workingValue13)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.type = "HUD_SET_INTERACTIVE"
  localValue2.value = true
  localValue1(localValue2)
end
cmgOperation6.openHudSettings = text6
cmgOperation6 = {}
cmgOperation6.frontLeftDoor = false
cmgOperation6.frontRightDoor = false
cmgOperation6.backLeftDoor = false
cmgOperation6.backRightDoor = false
cmgOperation6.hood = false
cmgOperation6.trunk = false

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2, localValue3) ===
function text6(localValue1, localValue2, localValue3)
  local workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number
  workingValue13 = true
  stringHelper = pairs
  stringHelper2 = localValue2
  stringHelper, stringHelper2, text11, number4 = stringHelper(stringHelper2)
  for mathHelper, number5 in stringHelper, stringHelper2, text11, number4 do
    number = cmgOperation6
    number = number[number5]
    if not number then
      workingValue13 = false
    end
  end
  if workingValue13 then
    return localValue1
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  localValue2 = {}
  localValue2.frontLeftDoor = false
  localValue2.frontRightDoor = false
  localValue2.backLeftDoor = false
  localValue2.backRightDoor = false
  localValue2.hood = false
  localValue2.trunk = false
  cmgOperation6 = localValue2
  localValue2 = "vehicle-1.png"
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 0
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.frontLeftDoor = true
  end
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 1
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.frontRightDoor = true
  end
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 2
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.backLeftDoor = true
  end
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 3
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.backRightDoor = true
  end
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 4
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.hood = true
  end
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue1
  stringHelper = 5
  localValue3 = localValue3(workingValue13, stringHelper)
  if 0 ~= localValue3 then
    cmgOperation6.trunk = true
  end
  localValue3 = text6
  workingValue13 = "vehicle-2.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-3.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-4.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-5.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-10.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-11.png"
  stringHelper = {}
  stringHelper2 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-12.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-13.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-14.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-15.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-6.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-20.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-21.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-22.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-23.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-28.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-62.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-37.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-38.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-39.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-40.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-7.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "frontRightDoor"
  number4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-8.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "frontRightDoor"
  number4 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-16.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-24.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-29.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-30.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-31.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-32.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-41.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "backLeftDoor"
  number4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-42.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backLeftDoor"
  number4 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-43.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "backRightDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-44.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backLeftDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-45.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backLeftDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-46.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "backLeftDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-47.png"
  stringHelper = {}
  stringHelper2 = "frontRightDoor"
  text11 = "backRightDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-50.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "frontLeftDoor"
  number4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-51.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontRightDoor"
  number4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-52.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontLeftDoor"
  number4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-53.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "frontRightDoor"
  number4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-63.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  number4 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-64.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  number4 = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-9.png"
  stringHelper = {}
  stringHelper2 = "frontLeftDoor"
  text11 = "frontRightDoor"
  number4 = "backLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-17.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-18.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-25.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-26.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-33.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-48.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontLeftDoor"
  number4 = "backRightDoor"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-49.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontRightDoor"
  number4 = "backRightDoor"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-54.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "backLeftDoor"
  number4 = "frontLeftDoor"
  mathHelper = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-55.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "backLeftDoor"
  number4 = "frontRightDoor"
  mathHelper = "hood"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-56.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontLeftDoor"
  number4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-57.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "frontRightDoor"
  number4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-58.png"
  stringHelper = {}
  stringHelper2 = "backRightDoor"
  text11 = "frontLeftDoor"
  number4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-59.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "frontRightDoor"
  number4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-65.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  number4 = "hood"
  mathHelper = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-27.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  number5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-19.png"
  stringHelper = {}
  stringHelper2 = "trunk"
  text11 = "frontRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "backLeftDoor"
  number5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-34.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  number5 = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-35.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  number5 = "backRightDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-60.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  number4 = "frontRightDoor"
  mathHelper = "hood"
  number5 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-61.png"
  stringHelper = {}
  stringHelper2 = "backLeftDoor"
  text11 = "backRightDoor"
  number4 = "frontLeftDoor"
  mathHelper = "hood"
  number5 = "trunk"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = text6
  workingValue13 = "vehicle-36.png"
  stringHelper = {}
  stringHelper2 = "hood"
  text11 = "trunk"
  number4 = "frontRightDoor"
  mathHelper = "frontLeftDoor"
  number5 = "backRightDoor"
  number = "backLeftDoor"
  stringHelper[1] = stringHelper2
  stringHelper[2] = text11
  stringHelper[3] = number4
  stringHelper[4] = mathHelper
  stringHelper[5] = number5
  stringHelper[6] = number
  stringHelper2 = localValue2
  localValue3 = localValue3(workingValue13, stringHelper, stringHelper2)
  localValue2 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.sendHudNuiMessage
  workingValue13 = "VEHICLE_DOORS"
  stringHelper = localValue2
  localValue3(workingValue13, stringHelper)
  localValue3 = GetVehicleMaxNumberOfPassengers
  workingValue13 = localValue1
  localValue3 = localValue3(workingValue13)
  workingValue13 = CMG
  workingValue13 = workingValue13.sendHudNuiMessage
  stringHelper = "VEHICLE_SEATS"
  stringHelper2 = localValue3
  workingValue13(stringHelper, stringHelper2)
end
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.uiRegisterCallback
cmgOperation8 = "vehicleDoors"

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  localValue3 = GetVehicleDoorAngleRatio
  workingValue13 = localValue2
  stringHelper = localValue1.value
  localValue3 = localValue3(workingValue13, stringHelper)
  localValue3 = 0 ~= localValue3
  if localValue3 then
    workingValue13 = SetVehicleDoorShut
    stringHelper = localValue2
    stringHelper2 = localValue1.value
    text11 = true
    workingValue13(stringHelper, stringHelper2, text11)
  else
    workingValue13 = SetVehicleDoorOpen
    stringHelper = localValue2
    stringHelper2 = localValue1.value
    text11 = false
    number4 = false
    workingValue13(stringHelper, stringHelper2, text11, number4)
  end
  workingValue13 = Wait
  stringHelper = 100
  workingValue13(stringHelper)
  workingValue13 = workingValue9
  workingValue13()
end
cmgOperation7(cmgOperation8, text7)
cmgOperation7 = CMG
cmgOperation7 = cmgOperation7.uiRegisterCallback
cmgOperation8 = "toggleVehicleEngine"

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 == localValue1 then
    return
  end
  if not localValue2 then
    return
  end
  localValue3 = GetIsVehicleEngineRunning
  workingValue13 = localValue1
  localValue3 = localValue3(workingValue13)
  if localValue3 then
    workingValue13 = SetVehicleEngineOn
    stringHelper = localValue1
    stringHelper2 = false
    text11 = true
    number4 = true
    workingValue13(stringHelper, stringHelper2, text11, number4)
  else
    workingValue13 = SetVehicleEngineOn
    stringHelper = localValue1
    stringHelper2 = true
    text11 = false
    number4 = false
    workingValue13(stringHelper, stringHelper2, text11, number4)
  end
end
cmgOperation7(cmgOperation8, text7)

-- === HELPER FUNCTION (decompiler name: cmgOperation7; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation7(localValue1, localValue2, localValue3)
  local workingValue13, stringHelper, stringHelper2, text11
  workingValue13 = DoesEntityExist
  stringHelper = localValue3
  workingValue13 = workingValue13(stringHelper)
  if workingValue13 then
    workingValue13 = IsVehicleWindowIntact
    stringHelper = localValue3
    stringHelper2 = localValue1
    workingValue13 = workingValue13(stringHelper, stringHelper2)
    stringHelper = GetIsDoorValid
    stringHelper2 = localValue3
    text11 = localValue2
    stringHelper = stringHelper(stringHelper2, text11)
    if stringHelper and workingValue13 then
      stringHelper = RollDownWindow
      stringHelper2 = localValue3
      text11 = localValue1
      stringHelper(stringHelper2, text11)
    else
      stringHelper = RollUpWindow
      stringHelper2 = localValue3
      text11 = localValue1
      stringHelper(stringHelper2, text11)
    end
  end
end
cmgOperation8 = CMG
cmgOperation8 = cmgOperation8.uiRegisterCallback
text7 = "toggleWindow"

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3, workingValue13, stringHelper, stringHelper2
  localValue3 = TriggerServerEvent
  workingValue13 = "b43f1cc624"
  stringHelper = localValue1.window
  stringHelper2 = localValue1.door
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b43f1cc624".
  localValue3(workingValue13, stringHelper, stringHelper2)
end
cmgOperation8(text7, workingValue10)
cmgOperation8 = RegisterNetEvent
text7 = "0b1dd98e8e"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0b1dd98e8e".
cmgOperation8(text7)
cmgOperation8 = AddEventHandler
text7 = "0b1dd98e8e"
-- Beginner: this function runs when client event "0b1dd98e8e" fires.

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2, localValue3) ===
function workingValue10(localValue1, localValue2, localValue3)
  local workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper
  workingValue13 = GetPlayerPed
  stringHelper = GetPlayerFromServerId
  stringHelper2 = localValue1
  stringHelper, stringHelper2, text11, number4, mathHelper = stringHelper(stringHelper2)
  -- Beginner: result below is playerPed.
  workingValue13 = workingValue13(stringHelper, stringHelper2, text11, number4, mathHelper)
  stringHelper = IsPedInAnyVehicle
  stringHelper2 = workingValue13
  text11 = false
  stringHelper = stringHelper(stringHelper2, text11)
  if stringHelper then
    stringHelper = DoesEntityExist
    stringHelper2 = workingValue13
    stringHelper = stringHelper(stringHelper2)
    if stringHelper then
      stringHelper = GetVehiclePedIsIn
      stringHelper2 = workingValue13
      text11 = false
      -- Beginner: result below is currentVehicle.
      stringHelper = stringHelper(stringHelper2, text11)
      stringHelper2 = cmgOperation7
      text11 = localValue2
      number4 = localValue3
      mathHelper = stringHelper
      stringHelper2(text11, number4, mathHelper)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "0b1dd98e8e".
cmgOperation8(text7, workingValue10)
cmgOperation8 = {}
text7 = false

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, workingValue13
  localValue2 = cmgOperation8
  localValue2 = localValue2[localValue1]
  if nil ~= localValue2 then
    localValue2 = true
    return localValue2
  end
  localValue2 = IsVehicleNeonLightEnabled
  localValue3 = localValue1
  workingValue13 = 0
  localValue2 = localValue2(localValue3, workingValue13)
  if localValue2 then
    localValue2 = cmgOperation8
    localValue2[localValue1] = true
    localValue2 = true
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3
  localValue1 = text7
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    localValue2 = true
    text7 = localValue2
    localValue2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local localValue12, localValue22, localValue32, localValue4, backgroundThread, workingValue16, number3, stateFlag10
      while true do
        localValue12 = text7
        if not localValue12 then
          break
        end
        localValue12 = 0
        localValue22 = 3
        localValue32 = 1
        for localValue4 = localValue12, localValue22, localValue32 do
          backgroundThread = IsVehicleNeonLightEnabled
          workingValue16 = localValue1
          number3 = localValue4
          backgroundThread = backgroundThread(workingValue16, number3)
          if backgroundThread then
            backgroundThread = SetVehicleNeonLightEnabled
            workingValue16 = localValue1
            number3 = localValue4
            stateFlag10 = false
            backgroundThread(workingValue16, number3, stateFlag10)
          else
            backgroundThread = SetVehicleNeonLightEnabled
            workingValue16 = localValue1
            number3 = localValue4
            stateFlag10 = true
            backgroundThread(workingValue16, number3, stateFlag10)
          end
          backgroundThread = Wait
          workingValue16 = 120
          backgroundThread(workingValue16)
        end
        localValue12 = Wait
        localValue22 = 0
        localValue12(localValue22)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    localValue2(localValue3)
    localValue2 = Wait
    localValue3 = 12000
    localValue2(localValue3)
    localValue2 = false
    text7 = localValue2
  end
end
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.uiRegisterCallback
cmgOperation10 = "toggleNeon"

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  localValue3 = workingValue10
  workingValue13 = localValue2
  localValue3 = localValue3(workingValue13)
  if not localValue3 then
    workingValue13 = notify
    stringHelper = "~r~This car does not have neon installed, purhcase it at LS Customs"
    -- Beginner: Show a notification to the player.
    workingValue13(stringHelper)
    return
  end
  workingValue13 = false
  text7 = workingValue13
  workingValue13 = localValue1.type
  if "neon" == workingValue13 then
    workingValue13 = IsVehicleNeonLightEnabled
    stringHelper = localValue2
    stringHelper2 = localValue1.value
    workingValue13 = workingValue13(stringHelper, stringHelper2)
    if workingValue13 then
      workingValue13 = SetVehicleNeonLightEnabled
      stringHelper = localValue2
      stringHelper2 = localValue1.value
      text11 = false
      workingValue13(stringHelper, stringHelper2, text11)
    else
      workingValue13 = SetVehicleNeonLightEnabled
      stringHelper = localValue2
      stringHelper2 = localValue1.value
      text11 = true
      workingValue13(stringHelper, stringHelper2, text11)
    end
    workingValue13 = cmgOperation5
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workingValue13()
  else
    workingValue13 = localValue1.type
    if "party" == workingValue13 then
      workingValue13 = workingValue11
      workingValue13()
    else
      workingValue13 = localValue1.type
      if "all" == workingValue13 then
        workingValue13 = true
        stringHelper = 0
        stringHelper2 = 3
        text11 = 1
        for number4 = stringHelper, stringHelper2, text11 do
          mathHelper = IsVehicleNeonLightEnabled
          number5 = localValue2
          number = number4
          mathHelper = mathHelper(number5, number)
          if mathHelper then
            workingValue13 = false
          end
        end
        stringHelper = 0
        stringHelper2 = 3
        text11 = 1
        for number4 = stringHelper, stringHelper2, text11 do
          mathHelper = SetVehicleNeonLightEnabled
          number5 = localValue2
          number = number4
          text = workingValue13
          mathHelper(number5, number, text)
        end
      end
    end
  end
end
cmgOperation9(cmgOperation10, text8)
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.uiRegisterCallback
cmgOperation10 = "OnInputFocus"

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = true
    localValue3 = true
    workingValue13 = false
    localValue1(localValue2, localValue3, workingValue13)
  end
end
cmgOperation9(cmgOperation10, text8)
cmgOperation9 = CMG
cmgOperation9 = cmgOperation9.uiRegisterCallback
cmgOperation10 = "OnInputFocusRemove"

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, workingValue13
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.uiSetFocus
    localValue2 = true
    localValue3 = true
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
  end
end
cmgOperation9(cmgOperation10, text8)

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text
  localValue2 = -1
  localValue3 = false
  workingValue13 = CMG
  workingValue13 = workingValue13.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workingValue13 = workingValue13()
  stringHelper = GetEntityCoords
  stringHelper2 = workingValue13
  -- Beginner: result below is entityCoords.
  stringHelper = stringHelper(stringHelper2)
  stringHelper2 = pairs
  text11 = localValue1
  stringHelper2, text11, number4, mathHelper = stringHelper2(text11)
  for number5, number in stringHelper2, text11, number4, mathHelper do
    text = stringHelper - number
    text = #text
    if -1 == localValue2 or localValue2 > text then
      localValue2 = text
      localValue3 = number
    end
  end
  return localValue3
end
cmgOperation10 = CMG
cmgOperation10 = cmgOperation10.uiRegisterCallback
text8 = "waypoint"

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, workingValue13, stringHelper, stringHelper2
  localValue2 = cmgOperation.QuickLocations
  localValue3 = localValue1.type
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1.type
  if "gun_store" == localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.getSmallArmsShopCoordsForHudWaypoint
    if localValue3 then
      localValue3 = CMG
      localValue3 = localValue3.getSmallArmsShopCoordsForHudWaypoint
      localValue3 = localValue3()
      if localValue3 then
        goto continueAtStep19
        localValue2 = localValue3 or localValue2
      end
    end
    localValue3 = {}
    localValue2 = localValue3
  end
  ::continueAtStep19::
  if localValue2 then
    localValue3 = cmgOperation9
    workingValue13 = localValue2
    localValue3 = localValue3(workingValue13)
    if localValue3 then
      goto continueAtStep27
    end
  end
  localValue3 = nil
  ::continueAtStep27::
  if localValue3 then
    workingValue13 = SetNewWaypoint
    stringHelper = localValue3.x
    stringHelper2 = localValue3.y
    workingValue13(stringHelper, stringHelper2)
  end
end
cmgOperation10(text8, workingValue12)

-- === HELPER FUNCTION (decompiler name: cmgOperation10; parameters: localValue1, localValue2) ===
function cmgOperation10(localValue1, localValue2)
  local localValue3, workingValue13, stringHelper
  localValue3 = localValue2 or nil
  if not localValue2 then
    localValue3 = 0
  end
  workingValue13 = 10
  localValue3 = workingValue13 ^ localValue3
  workingValue13 = math
  workingValue13 = workingValue13.floor
  stringHelper = 0.5 * localValue3
  stringHelper = localValue1 + stringHelper
  return workingValue13(stringHelper)
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2
  localValue1 = dataCollection6.speedType
  if "kmh" == localValue1 then
    localValue1 = 3.6
    if localValue1 then
      goto continueAtStep8
    end
  end
  localValue1 = 2.23694
  ::continueAtStep8::
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, workingValue13
  if not localValue2 then
    localValue2 = 0
  end
  localValue3 = type
  workingValue13 = localValue1
  localValue3 = localValue3(workingValue13)
  if "number" ~= localValue3 then
    return localValue2
  end
  if localValue1 ~= localValue1 then
    return localValue2
  end
  localValue3 = math
  localValue3 = localValue3.huge
  if localValue1 ~= localValue3 then
    localValue3 = math
    localValue3 = localValue3.huge
    localValue3 = -localValue3
    if localValue1 ~= localValue3 then
      goto continueAtStep23
    end
  end
  return localValue2
  ::continueAtStep23::
  return localValue1
end
stateFlag7 = false
stateFlag8 = false

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper
  localValue1 = stateFlag4
  if localValue1 then
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 0
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 1
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 2
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 3
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 4
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 5
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 6
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 199
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 200
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 75
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 200
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 202
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 177
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 288
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 166
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 167
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 56
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = DisableControlAction
    localValue2 = 0
    localValue3 = 57
    workingValue13 = true
    localValue1(localValue2, localValue3, workingValue13)
    localValue1 = HideHudComponentThisFrame
    localValue2 = 16
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = IsUsingKeyboard
    localValue3 = 0
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = IsDisabledControlJustPressed
      localValue3 = 0
      workingValue13 = cmgOperation.MouseCursorKey
      localValue2 = localValue2(localValue3, workingValue13)
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.getHudVehicleType
        localValue3 = localValue1
        localValue2 = localValue2(localValue3)
        if "bike" ~= localValue2 then
          localValue2 = stateFlag4
          localValue2 = not localValue2
          stateFlag4 = localValue2
          localValue2 = CMG
          localValue2 = localValue2.uiSetFocus
          localValue3 = stateFlag4
          workingValue13 = stateFlag4
          stringHelper = stateFlag4
          localValue2(localValue3, workingValue13, stringHelper)
          localValue2 = CMG
          localValue2 = localValue2.uiSendMessage
          localValue3 = {}
          localValue3.type = "HUD_SET_INTERACTIVE"
          workingValue13 = stateFlag4
          localValue3.value = workingValue13
          localValue2(localValue3)
        end
      end
    end
  else
    localValue2 = stateFlag4
    if localValue2 then
      localValue2 = false
      stateFlag4 = localValue2
      localValue2 = CMG
      localValue2 = localValue2.uiSetFocus
      localValue3 = stateFlag4
      workingValue13 = stateFlag4
      stringHelper = stateFlag4
      localValue2(localValue3, workingValue13, stringHelper)
      localValue2 = CMG
      localValue2 = localValue2.uiSendMessage
      localValue3 = {}
      localValue3.type = "HUD_SET_INTERACTIVE"
      localValue3.value = false
      localValue2(localValue3)
    end
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue2 = IsControlPressed
    localValue3 = 0
    workingValue13 = 76
    localValue2 = localValue2(localValue3, workingValue13)
    if localValue2 then
      localValue2 = stateFlag7
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.sendHudNuiMessage
        localValue3 = "handbrake"
        workingValue13 = true
        localValue2(localValue3, workingValue13)
        localValue2 = true
        stateFlag7 = localValue2
      end
    else
      localValue2 = stateFlag7
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.sendHudNuiMessage
        localValue3 = "handbrake"
        workingValue13 = false
        localValue2(localValue3, workingValue13)
        localValue2 = false
        stateFlag7 = localValue2
      end
    end
    localValue2 = CMG
    localValue2 = localValue2.getVehicleMode
    localValue2 = localValue2()
    if "drift" == localValue2 then
      localValue2 = IsControlPressed
      localValue3 = 0
      workingValue13 = 72
      localValue2 = localValue2(localValue3, workingValue13)
      if localValue2 then
        localValue2 = stateFlag8
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.sendHudNuiMessage
          localValue3 = "abs"
          workingValue13 = true
          localValue2(localValue3, workingValue13)
          localValue2 = true
          stateFlag8 = localValue2
        end
      else
        localValue2 = stateFlag8
        if localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.sendHudNuiMessage
          localValue3 = "abs"
          workingValue13 = false
          localValue2(localValue3, workingValue13)
          localValue2 = false
          stateFlag8 = localValue2
        end
      end
    else
      localValue2 = stateFlag8
      if localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.sendHudNuiMessage
        localValue3 = "abs"
        workingValue13 = false
        localValue2(localValue3, workingValue13)
        localValue2 = false
        stateFlag8 = localValue2
      end
    end
  end
end
cmgOperation11 = CMG
cmgOperation11 = cmgOperation11.createThreadOnTick
cmgOperation12 = workingValue14
text9 = "handbrake_check"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation11(cmgOperation12, text9)
cmgOperation11 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgOperation12; parameters: none) ===
function cmgOperation12()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue2 = localValue2()
    if 0 ~= localValue2 then
      localValue3 = GetEntitySpeed
      workingValue13 = localValue2
      -- Beginner: result below is speed.
      localValue3 = localValue3(workingValue13)
      workingValue13 = text8
      workingValue13 = workingValue13()
      localValue3 = localValue3 * workingValue13
      workingValue13 = GetEntityHeading
      stringHelper = localValue1
      -- Beginner: result below is heading.
      workingValue13 = workingValue13(stringHelper)
      stringHelper = 249
      if localValue3 > stringHelper then
        stringHelper = 250
        if localValue3 < stringHelper then
          localValue3 = 250
        end
      end
      stringHelper = tonumber
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      text11 = "%.1f"
      number4 = GetVehicleCurrentRpm
      mathHelper = localValue2
      number4, mathHelper, number5, number, text = number4(mathHelper)
      stringHelper2, text11, number4, mathHelper, number5, number, text = stringHelper2(text11, number4, mathHelper, number5, number, text)
      stringHelper = stringHelper(stringHelper2, text11, number4, mathHelper, number5, number, text)
      stringHelper2 = workingValue12
      text11 = stringHelper
      number4 = 0
      stringHelper2 = stringHelper2(text11, number4)
      stringHelper2 = stringHelper2 - 0.2
      text11 = workingValue12
      number4 = stringHelper2
      mathHelper = 0
      text11 = text11(number4, mathHelper)
      stringHelper2 = text11
      text11 = CMG
      text11 = text11.sendHudNuiMessage
      number4 = "SET_SPEED"
      mathHelper = {}
      number5 = workingValue12
      number = localValue3
      text = 0
      number5 = number5(number, text)
      mathHelper.current = number5
      mathHelper.rpm = stringHelper2
      number5 = workingValue12
      number = GetVehicleEstimatedMaxSpeed
      text = localValue2
      number = number(text)
      text = text8
      text = text()
      number = number * text
      text = 0
      number5 = number5(number, text)
      mathHelper.max = number5
      number5 = workingValue12
      number = GetEntityRoll
      text = localValue2
      number = number(text)
      number = -number
      text = 0
      number5 = number5(number, text)
      mathHelper.roll = number5
      number5 = workingValue12
      number = workingValue13
      text = 0
      number5 = number5(number, text)
      mathHelper.headingValue = number5
      number5 = workingValue12
      number = GetWindSpeed
      number = number()
      text = 0
      number5 = number5(number, text)
      mathHelper.wind = number5
      number5 = GetVehicleCurrentGear
      number = localValue2
      number5 = number5(number)
      mathHelper.gear = number5
      text11(number4, mathHelper)
    end
    localValue3 = Wait
    workingValue13 = 0
    localValue3(workingValue13)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation11(cmgOperation12)
cmgOperation11 = {}
cmgOperation11.N = 360
cmgOperation11.NE = 315
cmgOperation11.E = 270
cmgOperation11.SE = 225
cmgOperation11.S = 180
cmgOperation11.SW = 135
cmgOperation11.W = 90
cmgOperation11.NW = 45
cmgOperation12 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, workingValue13, stringHelper, stringHelper2, text11, number4, mathHelper, number5, number, text, text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8, text5, dataCollection8, cmgOperation4, number2
  localValue1 = false
  localValue2 = false
  localValue3 = {}
  localValue3.r = false
  localValue3.g = false
  localValue3.b = false
  while true do
    workingValue13 = CMG
    workingValue13 = workingValue13.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workingValue13 = workingValue13()
    stringHelper = GetEntityCoords
    stringHelper2 = workingValue13
    -- Beginner: result below is entityCoords.
    stringHelper = stringHelper(stringHelper2)
    stringHelper2 = CMG
    stringHelper2 = stringHelper2.getPlayerVehicle
    stringHelper2, text11 = stringHelper2()
    number4 = 0 ~= stringHelper2
    if number4 and not localValue2 then
      localValue2 = true
      mathHelper = CMG
      mathHelper = mathHelper.getHudVehicleType
      number5 = stringHelper2
      mathHelper = mathHelper(number5)
      if text11 then
        number5 = CMG
        number5 = number5.sendHudNuiMessage
        number = "IN_VEHICLE"
        text = {}
        text.value = true
        text.type = mathHelper
        number5(number, text)
      else
        number5 = CMG
        number5 = number5.sendHudNuiMessage
        number = "IN_VEHICLE"
        text = {}
        text.value = true
        text.type = mathHelper
        number5(number, text)
        number5 = CMG
        number5 = number5.sendHudNuiMessage
        number = "SET_IN_PASSENGER_SIDE"
        text = true
        number5(number, text)
      end
    elseif not number4 and localValue2 then
      localValue2 = false
      mathHelper = CMG
      mathHelper = mathHelper.sendHudNuiMessage
      number5 = "IN_VEHICLE"
      number = {}
      number.value = false
      number.type = false
      mathHelper(number5, number)
      mathHelper = CMG
      mathHelper = mathHelper.sendHudNuiMessage
      number5 = "SET_IN_PASSENGER_SIDE"
      number = false
      mathHelper(number5, number)
      mathHelper = CMG
      mathHelper = mathHelper.resetVehicleMode
      mathHelper()
    end
    if number4 then
      mathHelper = GetIsVehicleEngineRunning
      number5 = stringHelper2
      mathHelper = mathHelper(number5)
      if mathHelper ~= localValue1 then
        localValue1 = mathHelper
        if mathHelper then
          number5 = CMG
          number5 = number5.sendHudNuiMessage
          number = "ENGINE_STATUS"
          text = true
          number5(number, text)
        else
          number5 = CMG
          number5 = number5.sendHudNuiMessage
          number = "ENGINE_STATUS"
          text = false
          number5(number, text)
        end
      end
    end
    mathHelper = GetStreetNameAtCoord
    number5 = stringHelper.x
    number = stringHelper.y
    text = stringHelper.z
    text2 = Citizen
    text2 = text2.ResultAsInteger
    text2 = text2()
    text3 = Citizen
    text3 = text3.ResultAsInteger
    text3, text4, workingValue5, workingValue6, workingValue7, workingValue8, text5, dataCollection8, cmgOperation4, number2 = text3()
    mathHelper, number5 = mathHelper(number5, number, text, text2, text3, text4, workingValue5, workingValue6, workingValue7, workingValue8, text5, dataCollection8, cmgOperation4, number2)
    number = GetNameOfZone
    text = stringHelper.x
    text2 = stringHelper.y
    text3 = stringHelper.z
    number = number(text, text2, text3)
    text = GetLabelText
    text2 = number
    text = text(text2)
    text2 = GetStreetNameFromHashKey
    text3 = mathHelper
    text2 = text2(text3)
    text3 = GetEntityHeading
    text4 = workingValue13
    -- Beginner: result below is heading.
    text3 = text3(text4)
    text4 = "N"
    workingValue5 = dataCollection6.compassBehaviour
    if "mouselook" == workingValue5 then
      workingValue5 = GetGameplayCamRot
      workingValue6 = 0
      workingValue5 = workingValue5(workingValue6)
      workingValue6 = cmgOperation10
      workingValue7 = workingValue5.z
      workingValue7 = workingValue7 + 360.0
      workingValue7 = workingValue7 % 360.0
      workingValue8 = 360.0
      workingValue7 = workingValue8 - workingValue7
      workingValue6 = workingValue6(workingValue7)
      text3 = workingValue6
    end
    workingValue5 = pairs
    workingValue6 = cmgOperation11
    workingValue5, workingValue6, workingValue7, workingValue8 = workingValue5(workingValue6)
    for text5, dataCollection8 in workingValue5, workingValue6, workingValue7, workingValue8 do
      cmgOperation4 = math
      cmgOperation4 = cmgOperation4.abs
      number2 = text3 - dataCollection8
      cmgOperation4 = cmgOperation4(number2)
      number2 = 22.5
      if cmgOperation4 < number2 then
        text4 = text5
        if 1 == text3 then
          text4 = "N"
          break
        end
        break
      end
    end
    workingValue5 = CMG
    workingValue5 = workingValue5.sendHudNuiMessage
    workingValue6 = "SET_LOCATION"
    workingValue7 = {}
    workingValue7.street = text2
    workingValue7.zone = text
    workingValue7.heading = text4
    workingValue5(workingValue6, workingValue7)
    if number4 then
      workingValue5 = GetVehicleNeonLightsColour
      workingValue6 = stringHelper2
      workingValue5, workingValue6, workingValue7 = workingValue5(workingValue6)
      workingValue8 = localValue3.r
      if workingValue8 == workingValue5 then
        workingValue8 = localValue3.g
        if workingValue8 == workingValue6 then
          workingValue8 = localValue3.b
          if workingValue8 == workingValue7 then
            workingValue8 = Wait
            text5 = 2000
            workingValue8(text5)
          end
        end
      end
      workingValue8 = {}
      workingValue8.r = workingValue5
      workingValue8.g = workingValue6
      workingValue8.b = workingValue7
      localValue3 = workingValue8
      workingValue8 = CMG
      workingValue8 = workingValue8.sendHudNuiMessage
      text5 = "NEON_LIGHTS"
      dataCollection8 = {}
      dataCollection8.r = workingValue5
      dataCollection8.g = workingValue6
      dataCollection8.b = workingValue7
      workingValue8(text5, dataCollection8)
      workingValue8 = CMG
      workingValue8 = workingValue8.sendHudNuiMessage
      text5 = "FUEL"
      dataCollection8 = workingValue12
      cmgOperation4 = CMG
      cmgOperation4 = cmgOperation4.getVehicleFuel
      number2 = stringHelper2
      cmgOperation4 = cmgOperation4(number2)
      number2 = 0
      dataCollection8, cmgOperation4, number2 = dataCollection8(cmgOperation4, number2)
      workingValue8(text5, dataCollection8, cmgOperation4, number2)
      workingValue8 = workingValue9
      workingValue8()
      workingValue8 = cmgOperation5
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      workingValue8()
      workingValue8 = dataCollection12
      text5 = stringHelper2
      workingValue8(text5)
    end
    workingValue5 = Wait
    workingValue6 = 100
    workingValue5(workingValue6)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation12(text9)
cmgOperation12 = CMG
cmgOperation12 = cmgOperation12.uiRegisterCallback
text9 = "changeSeat"

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.changeSeat
  localValue3 = localValue1.seat
  localValue2(localValue3)
end
cmgOperation12(text9, workingValue15)
