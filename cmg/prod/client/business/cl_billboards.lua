--[[
    LEVEL 1 BEGINNER GUIDE — Billboards
    ========================================

    File: cmg/prod/client/business/cl_billboards.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Billboards feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 61
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
local cmgOperation, dataCollection2, number14, stateFlag9, workingValue11, number16, dataCollection3, dataCollection4, workingValue15, text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/cfg_billboards"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
number14 = 0
stateFlag9 = false
workingValue11 = nil
number16 = 1
dataCollection3 = {}
dataCollection4 = 1
workingValue15 = cmgOperation.numRenderTargets
text14 = 1
for text = dataCollection4, workingValue15, text14 do
  rageUiOperation2 = table
  rageUiOperation2 = rageUiOperation2.insert
  text2 = dataCollection3
  cmgOperation2 = text
  rageUiOperation2(text2, cmgOperation2)
end
dataCollection4 = {}
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text14 = "billboards"
text = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text2 = ""
cmgOperation2 = "CMG Billboards"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation4()
rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation2(text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15(text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text14 = "billboards"
text = "available"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text2 = RMenu
cmgOperation2 = text2
text2 = text2.Get
rageUiOperation3 = "billboards"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text2 = text2(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "CMG Billboards"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation5()
rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation2(text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15(text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text14 = "billboards"
text = "purchase"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text2 = RMenu
cmgOperation2 = text2
text2 = text2.Get
rageUiOperation3 = "billboards"
rageUiOperation4 = "available"
-- Beginner: result below is menu.
text2 = text2(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "CMG Billboards"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation5()
rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation2(text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15(text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text14 = "billboards"
text = "owned"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text2 = RMenu
cmgOperation2 = text2
text2 = text2.Get
rageUiOperation3 = "billboards"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text2 = text2(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "CMG Billboards"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation5()
rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation2(text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15(text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text14 = "billboards"
text = "editowned"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text2 = RMenu
cmgOperation2 = text2
text2 = text2.Get
rageUiOperation3 = "billboards"
rageUiOperation4 = "owned"
-- Beginner: result below is menu.
text2 = text2(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "CMG Billboards"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation5()
rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8 = rageUiOperation2(text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15(text14, text, rageUiOperation2, text2, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text4, createVector3, text6, text8, number10, workingValue5, workingValue6, workingValue7, cmgOperation3, text9, workingValue8)
workingValue15 = CMG
workingValue15 = workingValue15.registerDevMenuState
text14 = "Billboards"
text = {}
text.enabled = false
workingValue15 = workingValue15(text14, text)
text14 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2
  localValue2 = true
  stateFlag9 = localValue2
  localValue2 = number14
  if 0 == localValue2 then
    localValue2 = CreateCam
    stateFlag8 = "DEFAULT_SCRIPTED_CAMERA"
    stateFlag10 = true
    -- Beginner: result below is cameraHandle.
    localValue2 = localValue2(stateFlag8, stateFlag10)
    number14 = localValue2
    localValue2 = SetCamActive
    stateFlag8 = number14
    stateFlag10 = true
    localValue2(stateFlag8, stateFlag10)
    localValue2 = RenderScriptCams
    stateFlag8 = true
    stateFlag10 = false
    number15 = 0
    stateFlag12 = false
    stateFlag13 = false
    localValue2(stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
  end
  localValue2 = workingValue11
  if localValue2 ~= localValue1 then
    localValue2 = cmgOperation.locations
    localValue2 = localValue2[localValue1]
    stateFlag8 = SetCamCoord
    stateFlag10 = number14
    number15 = localValue2.cameraPosition
    number15 = number15.x
    stateFlag12 = localValue2.cameraPosition
    stateFlag12 = stateFlag12.y
    stateFlag13 = localValue2.cameraPosition
    stateFlag13 = stateFlag13.z
    stateFlag8(stateFlag10, number15, stateFlag12, stateFlag13)
    stateFlag8 = PointCamAtCoord
    stateFlag10 = number14
    number15 = localValue2.centerPosition
    number15 = number15.x
    stateFlag12 = localValue2.centerPosition
    stateFlag12 = stateFlag12.y
    stateFlag13 = localValue2.centerPosition
    stateFlag13 = stateFlag13.z
    stateFlag8(stateFlag10, number15, stateFlag12, stateFlag13)
    stateFlag8 = SetFocusPosAndVel
    stateFlag10 = localValue2.cameraPosition
    stateFlag10 = stateFlag10.x
    number15 = localValue2.cameraPosition
    number15 = number15.y
    stateFlag12 = localValue2.cameraPosition
    stateFlag12 = stateFlag12.z
    stateFlag13 = 0.0
    number17 = 0.0
    stringHelper = 0.0
    stateFlag8(stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper)
    stateFlag8 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stateFlag8 = stateFlag8()
    stateFlag10 = text14
    if not stateFlag10 then
      stateFlag10 = CMG
      stateFlag10 = stateFlag10.getPlayerCoords
      -- Beginner: result below is playerCoords.
      stateFlag10 = stateFlag10()
      text14 = stateFlag10
    end
    stateFlag10 = SetEntityCoords
    number15 = stateFlag8
    stateFlag12 = localValue2.cameraPosition
    stateFlag12 = stateFlag12.x
    stateFlag13 = localValue2.cameraPosition
    stateFlag13 = stateFlag13.y
    number17 = localValue2.cameraPosition
    number17 = number17.z
    number17 = number17 - 2.0
    stringHelper = true
    stateFlag14 = false
    stateFlag = false
    stateFlag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    stateFlag10(number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2)
    stateFlag10 = FreezeEntityPosition
    number15 = stateFlag8
    stateFlag12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag10(number15, stateFlag12)
    stateFlag10 = SetEntityVisible
    number15 = stateFlag8
    stateFlag12 = false
    stateFlag13 = false
    stateFlag10(number15, stateFlag12, stateFlag13)
    workingValue11 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag
  if not localValue1 or "" == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = false
  stateFlag8 = pairs
  stateFlag10 = cmgOperation.allowedUrls
  stateFlag8, stateFlag10, number15, stateFlag12 = stateFlag8(stateFlag10)
  for stateFlag13, number17 in stateFlag8, stateFlag10, number15, stateFlag12 do
    stringHelper = string
    stringHelper = stringHelper.starts
    stateFlag14 = localValue1
    stateFlag = number17
    stringHelper = stringHelper(stateFlag14, stateFlag)
    if stringHelper then
      localValue2 = true
      break
    end
  end
  if not localValue2 then
    stateFlag8 = nil
    return stateFlag8
  end
  stateFlag8 = string
  stateFlag8 = stateFlag8.sub
  stateFlag10 = localValue1
  number15 = #localValue1
  number15 = number15 - 3
  stateFlag8 = stateFlag8(stateFlag10, number15)
  stateFlag10 = table
  stateFlag10 = stateFlag10.has
  number15 = cmgOperation.allowedExtensions
  stateFlag12 = stateFlag8
  stateFlag10 = stateFlag10(number15, stateFlag12)
  if not stateFlag10 then
    stateFlag10 = nil
    return stateFlag10
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local stateFlag8
  while 0 ~= localValue2 do
    stateFlag8 = localValue2
    localValue2 = localValue1 % localValue2
    localValue1 = stateFlag8
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17
  stateFlag8 = text2
  stateFlag10 = localValue1
  number15 = localValue2
  stateFlag8 = stateFlag8(stateFlag10, number15)
  stateFlag10 = string
  stateFlag10 = stateFlag10.format
  number15 = "%s:%s"
  stateFlag12 = math
  stateFlag12 = stateFlag12.floor
  stateFlag13 = localValue1 / stateFlag8
  stateFlag12 = stateFlag12(stateFlag13)
  stateFlag13 = math
  stateFlag13 = stateFlag13.floor
  number17 = localValue2 / stateFlag8
  stateFlag13, number17 = stateFlag13(number17)
  return stateFlag10(number15, stateFlag12, stateFlag13, number17)
end
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateWhile
rageUiOperation4 = 1.0
rageUiOperation5 = RMenu
text4 = rageUiOperation5
rageUiOperation5 = rageUiOperation5.Get
createVector3 = "billboards"
text6 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation5 = rageUiOperation5(text4, createVector3, text6)
text4 = nil

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag10 = "billboards"
  number15 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag10, number15)
  stateFlag8 = true
  stateFlag10 = false
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~View Available"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
    function text12()
      local localValue13, localValue23
    end
    workingValue12 = RMenu
    workingValue14 = workingValue12
    workingValue12 = workingValue12.Get
    cmgOperation5 = "billboards"
    dataCollection5 = "available"
    workingValue12, workingValue14, cmgOperation5, dataCollection5 = workingValue12(workingValue14, cmgOperation5, dataCollection5)
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~View Owned"
    localValue3 = ""
    localValue4 = {}
    localValue4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
    function text12()
      local localValue13, localValue23
    end
    workingValue12 = RMenu
    workingValue14 = workingValue12
    workingValue12 = workingValue12.Get
    cmgOperation5 = "billboards"
    dataCollection5 = "owned"
    workingValue12, workingValue14, cmgOperation5, dataCollection5 = workingValue12(workingValue14, cmgOperation5, dataCollection5)
    localValue12(localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag10 = "billboards"
  number15 = "available"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag10, number15)
  stateFlag8 = true
  stateFlag10 = false
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5, rageUiOperation, mathHelper, workingValue, dataCollection, stateFlag3, text3
    localValue12 = RageUI
    localValue12 = localValue12.BackspaceMenuCallback

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23
      localValue13 = false
      stateFlag9 = localValue13
    end
    localValue12(localValue22)
    localValue12 = false
    localValue22 = pairs
    localValue3 = cmgOperation.locations
    localValue22, localValue3, localValue4, stateFlag11 = localValue22(localValue3)
    for text12 in localValue22, localValue3, localValue4, stateFlag11 do
      workingValue12 = dataCollection2
      workingValue12 = workingValue12[text12]
      if not workingValue12 then
        workingValue12 = RageUI
        workingValue12 = workingValue12.ButtonWithStyle
        workingValue14 = text12
        cmgOperation5 = ""
        dataCollection5 = {}
        dataCollection5.RightLabel = "\226\134\146\226\134\146\226\134\146"
        rageUiOperation = true

        -- === HELPER FUNCTION: mathHelper(localValue13, localValue23, localValue32) ===
        function mathHelper(localValue13, localValue23, localValue32)
          local localValue42, text11
          if localValue23 then
            localValue42 = text
            text11 = text12
            localValue42(text11)
          end
        end
        workingValue = RMenu
        dataCollection = workingValue
        workingValue = workingValue.Get
        stateFlag3 = "billboards"
        text3 = "purchase"
        workingValue, dataCollection, stateFlag3, text3 = workingValue(dataCollection, stateFlag3, text3)
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue12(workingValue14, cmgOperation5, dataCollection5, rageUiOperation, mathHelper, workingValue, dataCollection, stateFlag3, text3)
        localValue12 = true
      end
    end
    if not localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~There are no available billboards for sale."
      localValue22(localValue3)
      localValue22 = false
      stateFlag9 = localValue22
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag10 = "billboards"
  number15 = "purchase"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag10, number15)
  stateFlag8 = true
  stateFlag10 = false
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5
    localValue12 = cmgOperation.locations
    localValue22 = workingValue11
    localValue12 = localValue12[localValue22]
    if localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~y~Name: "
      localValue4 = workingValue11
      localValue3 = localValue3 .. localValue4
      localValue22(localValue3)
      localValue22 = RageUI
      localValue22 = localValue22.List
      localValue3 = "Rent Duration"
      localValue4 = cmgOperation.rentDurations
      stateFlag11 = number16
      text12 = ""
      workingValue12 = {}
      workingValue14 = true

      -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue13, localValue23, localValue32, localValue42) ===
      function cmgOperation5(localValue13, localValue23, localValue32, localValue42)
        local text11
        text11 = number16
        if localValue42 ~= text11 then
          number16 = localValue42
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue22(localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5)
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      localValue3 = "~g~Confirm Purchase"
      localValue4 = ""
      stateFlag11 = {}
      text12 = "\194\163"
      workingValue12 = getMoneyStringFormatted
      workingValue14 = localValue12.price
      workingValue12 = workingValue12(workingValue14)
      text12 = text12 .. workingValue12
      stateFlag11.RightLabel = text12
      text12 = true

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13, localValue23, localValue32) ===
      function workingValue12(localValue13, localValue23, localValue32)
        local localValue42, text11, text13, workingValue13
        if localValue32 then
          localValue42 = TriggerServerEvent
          text11 = "d5e3e2d189"
          text13 = workingValue11
          workingValue13 = number16
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5e3e2d189".
          localValue42(text11, text13, workingValue13)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(localValue3, localValue4, stateFlag11, text12, workingValue12)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag10 = "billboards"
  number15 = "owned"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag10, number15)
  stateFlag8 = true
  stateFlag10 = false
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5, rageUiOperation, mathHelper, workingValue, dataCollection, stateFlag3, text3, workingValue2, workingValue3, text5, text7
    localValue12 = RageUI
    localValue12 = localValue12.BackspaceMenuCallback

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23
      localValue13 = false
      stateFlag9 = localValue13
    end
    localValue12(localValue22)
    localValue12 = false
    localValue22 = pairs
    localValue3 = cmgOperation.locations
    localValue22, localValue3, localValue4, stateFlag11 = localValue22(localValue3)
    for text12 in localValue22, localValue3, localValue4, stateFlag11 do
      workingValue12 = dataCollection2
      workingValue12 = workingValue12[text12]
      if workingValue12 then
        workingValue14 = workingValue12.ownerUserId
        cmgOperation5 = CMG
        cmgOperation5 = cmgOperation5.getClientUserId
        -- Beginner: result below is userId.
        cmgOperation5 = cmgOperation5()
        if workingValue14 == cmgOperation5 then
          workingValue14 = "~g~"
          cmgOperation5 = workingValue12.pendingURL
          if cmgOperation5 then
            cmgOperation5 = workingValue12.denied
            if cmgOperation5 then
              workingValue14 = "~r~"
            else
              workingValue14 = "~y~"
            end
          end
          cmgOperation5 = workingValue14
          dataCollection5 = text12
          cmgOperation5 = cmgOperation5 .. dataCollection5
          dataCollection5 = ""
          rageUiOperation = workingValue12.pendingURL
          if rageUiOperation then
            rageUiOperation = workingValue12.denied
            if rageUiOperation then
              dataCollection5 = "Your requested image has been denied."
            else
              dataCollection5 = "An image is pending approval for this billboard."
            end
          end
          rageUiOperation = RageUI
          rageUiOperation = rageUiOperation.ButtonWithStyle
          mathHelper = cmgOperation5
          workingValue = dataCollection5
          dataCollection = {}
          dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag3 = true

          -- === HELPER FUNCTION (decompiler name: text3; parameters: localValue13, localValue23, localValue32) ===
          function text3(localValue13, localValue23, localValue32)
            local localValue42, text11
            if localValue23 then
              localValue42 = text
              text11 = text12
              localValue42(text11)
            end
          end
          workingValue2 = RMenu
          workingValue3 = workingValue2
          workingValue2 = workingValue2.Get
          text5 = "billboards"
          text7 = "editowned"
          workingValue2, workingValue3, text5, text7 = workingValue2(workingValue3, text5, text7)
          -- Beginner: Draw a selectable RageUI menu button.
          rageUiOperation(mathHelper, workingValue, dataCollection, stateFlag3, text3, workingValue2, workingValue3, text5, text7)
          localValue12 = true
        end
      end
    end
    if not localValue12 then
      localValue22 = RageUI
      localValue22 = localValue22.Separator
      localValue3 = "~r~You do not own any billboards."
      localValue22(localValue3)
      localValue22 = false
      stateFlag9 = localValue22
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag10 = "billboards"
  number15 = "editowned"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag10, number15)
  stateFlag8 = true
  stateFlag10 = false
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: none) ===
  function stateFlag12()
    local localValue12, localValue22, localValue3, localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5, rageUiOperation, mathHelper, workingValue
    localValue12 = "Only CMG Image URLs are allowed. Once uploaded your image will be reviewed by staff and either approved or rejected."
    localValue3 = workingValue11
    localValue22 = dataCollection2
    localValue22 = localValue22[localValue3]
    if localValue22 then
      localValue3 = localValue22.pendingURL
      if localValue3 then
        localValue3 = localValue22.denied
        if localValue3 then
          localValue3 = RageUI
          localValue3 = localValue3.Separator
          localValue4 = "~r~URL is denied."
          localValue3(localValue4)
          localValue3 = localValue12
          localValue4 = string
          localValue4 = localValue4.format
          stateFlag11 = [[


~r~Denied Image URL:
%s]]
          text12 = localValue22.pendingURL
          localValue4 = localValue4(stateFlag11, text12)
          localValue3 = localValue3 .. localValue4
          localValue12 = localValue3
        else
          localValue3 = RageUI
          localValue3 = localValue3.Separator
          localValue4 = "~r~URL is pending approval."
          localValue3(localValue4)
          localValue3 = localValue12
          localValue4 = string
          localValue4 = localValue4.format
          stateFlag11 = [[


~y~Pending Image URL:
%s]]
          text12 = localValue22.pendingURL
          localValue4 = localValue4(stateFlag11, text12)
          localValue3 = localValue3 .. localValue4
          localValue12 = localValue3
        end
      else
        localValue3 = RageUI
        localValue3 = localValue3.Separator
        localValue4 = "~g~No upload is pending for this billboard."
        localValue3(localValue4)
      end
      localValue3 = localValue22.rentedUntil
      if localValue3 then
        localValue3 = RageUI
        localValue3 = localValue3.Separator
        localValue4 = "~y~Rent End: "
        stateFlag11 = localValue22.rentedUntil
        localValue4 = localValue4 .. stateFlag11
        localValue3(localValue4)
      end
    end
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Change Image URL"
    stateFlag11 = localValue12
    text12 = {}
    text12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue12 = true

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue13, localValue23, localValue32) ===
    function workingValue14(localValue13, localValue23, localValue32)
      local localValue42, text11, text13
      if localValue32 then
        localValue42 = TriggerServerEvent
        text11 = "500907f3d9"
        text13 = workingValue11
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "500907f3d9".
        localValue42(text11, text13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag11, text12, workingValue12, workingValue14)
    localValue3 = RageUI
    localValue3 = localValue3.ButtonWithStyle
    localValue4 = "Test Image URL"
    stateFlag11 = "Test what an image would look like on the billboard. This will only show the image for you and will persist after exiting the menu."
    text12 = {}
    text12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workingValue12 = true

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue13, localValue23, localValue32) ===
    function workingValue14(localValue13, localValue23, localValue32)
      local localValue42, text11, text13, workingValue13
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        text11 = "Testing Image URL"
        text13 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue14) ===
        function workingValue13(localValue14)
          local workingValue4, text10, cmgOperation4
          workingValue4 = rageUiOperation2
          text10 = localValue14
          workingValue4 = workingValue4(text10)
          if not workingValue4 then
            workingValue4 = notify
            text10 = source
            cmgOperation4 = "~r~Image URL is not allowed. Please use an image uploaded to the CMG CDN."
            -- Beginner: Show a notification to the player.
            workingValue4(text10, cmgOperation4)
            return
          end
          localValue22.imageURL = localValue14
          workingValue4 = notify
          text10 = "~y~Applied testing image to billboard."
          workingValue4(text10)
        end
        localValue42(text11, text13, workingValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue3(localValue4, stateFlag11, text12, workingValue12, workingValue14)
    localValue3 = RageUI
    localValue3 = localValue3.Separator
    localValue4 = "~y~Suggested Image Sizes"
    localValue3(localValue4)
    localValue3 = string
    localValue3 = localValue3.format
    localValue4 = "This should be the aspect ratio of the image that is uploaded and used on the billboard. Any other resolution may cause padding or other negative visual effects. All images are rendered at a resolution of %sx%s for performance reasons."
    stateFlag11 = cmgOperation.renderWidth
    text12 = cmgOperation.renderHeight
    localValue3 = localValue3(localValue4, stateFlag11, text12)
    localValue4 = RageUI
    localValue4 = localValue4.ButtonWithStyle
    stateFlag11 = "Image Aspect Ratio"
    text12 = localValue3
    workingValue12 = {}
    workingValue14 = cmgOperation2
    cmgOperation5 = cmgOperation.renderWidth
    dataCollection5 = cmgOperation.renderHeight
    workingValue14 = workingValue14(cmgOperation5, dataCollection5)
    workingValue12.RightLabel = workingValue14
    workingValue14 = true

    -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
    function cmgOperation5()
      local localValue13, localValue23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue4(stateFlag11, text12, workingValue12, workingValue14, cmgOperation5)
    localValue4 = cmgOperation.locations
    stateFlag11 = workingValue11
    localValue4 = localValue4[stateFlag11]
    stateFlag11 = "This is the real aspect ratio of the billboard. This should be used whilst creating the image, and then once finished scaled into the above Image Aspect Ratio."
    text12 = RageUI
    text12 = text12.ButtonWithStyle
    workingValue12 = "Development Aspect Ratio"
    workingValue14 = stateFlag11
    cmgOperation5 = {}
    dataCollection5 = cmgOperation2
    rageUiOperation = math
    rageUiOperation = rageUiOperation.floor
    mathHelper = localValue4.widthDifference
    rageUiOperation = rageUiOperation(mathHelper)
    mathHelper = math
    mathHelper = mathHelper.floor
    workingValue = localValue4.heightDifference
    mathHelper, workingValue = mathHelper(workingValue)
    dataCollection5 = dataCollection5(rageUiOperation, mathHelper, workingValue)
    cmgOperation5.RightLabel = dataCollection5
    dataCollection5 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
    function rageUiOperation()
      local localValue13, localValue23
    end
    text12(workingValue12, workingValue14, cmgOperation5, dataCollection5, rageUiOperation)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13)
end
rageUiOperation3(rageUiOperation4, rageUiOperation5, text4, createVector3)

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14
  localValue1 = number14
  if 0 ~= localValue1 then
    localValue1 = stateFlag9
    if localValue1 then
      localValue1 = RageUI
      localValue1 = localValue1.IsAnyMenuOfTypeVisible
      localValue2 = "billboards"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        goto continueAtStep62
      end
    end
    localValue1 = ClearFocus
    localValue1()
    localValue1 = RenderScriptCams
    localValue2 = false
    stateFlag8 = false
    stateFlag10 = 0
    number15 = false
    stateFlag12 = false
    localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
    localValue1 = SetCamActive
    localValue2 = number14
    stateFlag8 = false
    localValue1(localValue2, stateFlag8)
    localValue1 = DestroyCam
    localValue2 = number14
    stateFlag8 = false
    localValue1(localValue2, stateFlag8)
    localValue1 = 0
    number14 = localValue1
    localValue1 = false
    stateFlag9 = localValue1
    localValue1 = nil
    workingValue11 = localValue1
    localValue1 = text14
    if localValue1 then
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = SetEntityCoords
      stateFlag8 = localValue1
      stateFlag10 = text14.x
      number15 = text14.y
      stateFlag12 = text14.z
      stateFlag13 = true
      number17 = false
      stringHelper = false
      stateFlag14 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue2(stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14)
      localValue2 = FreezeEntityPosition
      stateFlag8 = localValue1
      stateFlag10 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      localValue2(stateFlag8, stateFlag10)
      localValue2 = SetEntityVisible
      stateFlag8 = localValue1
      stateFlag10 = true
      number15 = true
      localValue2(stateFlag8, stateFlag10, number15)
      localValue2 = nil
      text14 = localValue2
    end
  end
  ::continueAtStep62::
end
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.createThreadOnTick
rageUiOperation5 = rageUiOperation3
text4 = "Billboards"
-- Beginner: Run a helper every game frame while this script is active.
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "f9f7560728"
-- Beginner: this function handles network event "f9f7560728".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2
  dataCollection2 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9f7560728".
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "225ac5d18d"
-- Beginner: this function handles network event "225ac5d18d".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local stateFlag8
  stateFlag8 = dataCollection2
  stateFlag8[localValue1] = localValue2
end
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "fe74003b10"
-- Beginner: this function handles network event "fe74003b10".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, stateFlag8, stateFlag10, number15, stateFlag12
  workingValue11 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  stateFlag8 = RMenu
  stateFlag10 = stateFlag8
  stateFlag8 = stateFlag8.Get
  number15 = "billboards"
  stateFlag12 = "editowned"
  -- Beginner: result below is menu.
  stateFlag8 = stateFlag8(stateFlag10, number15, stateFlag12)
  stateFlag10 = true
  localValue2(stateFlag8, stateFlag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe74003b10".
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "6c0990449f"
-- Beginner: this function handles network event "6c0990449f".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local stateFlag8
  stateFlag8 = dataCollection2
  stateFlag8 = stateFlag8[localValue1]
  if stateFlag8 then
    stateFlag8.pendingURL = localValue2
    stateFlag8.denied = false
  end
end
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "a1b2d8e125"
-- Beginner: this function handles network event "a1b2d8e125".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local stateFlag8
  stateFlag8 = dataCollection2
  stateFlag8 = stateFlag8[localValue1]
  if stateFlag8 then
    stateFlag8.pendingURL = localValue2
    stateFlag8.denied = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1b2d8e125".
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "e916ea16dc"
-- Beginner: this function handles network event "e916ea16dc".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local stateFlag8, stateFlag10
  stateFlag8 = dataCollection2
  stateFlag8 = stateFlag8[localValue1]
  if stateFlag8 then
    stateFlag10 = stateFlag8.pendingURL
    if stateFlag10 == localValue2 then
      stateFlag8.pendingURL = nil
    end
    stateFlag8.imageURL = localValue2
    stateFlag8.denied = false
  end
end
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "5835cbdb37"
-- Beginner: this function handles network event "5835cbdb37".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17
  localValue2 = pairs
  stateFlag8 = localValue1
  localValue2, stateFlag8, stateFlag10, number15 = localValue2(stateFlag8)
  for stateFlag12, stateFlag13 in localValue2, stateFlag8, stateFlag10, number15 do
    number17 = dataCollection2
    number17 = number17[stateFlag12]
    if number17 then
      number17.rentedUntil = stateFlag13
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5835cbdb37".
rageUiOperation4(rageUiOperation5, text4)
rageUiOperation4 = RegisterNetEvent
rageUiOperation5 = "295be4ac29"
-- Beginner: this function handles network event "295be4ac29".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2
  localValue2 = dataCollection2
  localValue2[localValue1] = nil
end
rageUiOperation4(rageUiOperation5, text4)
-- Beginner: this function handles network event "295be4ac29".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, stateFlag8, stateFlag10
  localValue2 = string
  localValue2 = localValue2.format
  stateFlag8 = "hypnonema_texture_renderer%02d"
  stateFlag10 = localValue1
  return localValue2(stateFlag8, stateFlag10)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1, localValue2) ===
function rageUiOperation5(localValue1, localValue2)
  local stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2
  stateFlag8 = localValue1.renderData
  if not stateFlag8 then
    stateFlag8 = nil
    stateFlag10 = pairs
    number15 = dataCollection4
    stateFlag10, number15, stateFlag12, stateFlag13 = stateFlag10(number15)
    for number17, stringHelper in stateFlag10, number15, stateFlag12, stateFlag13 do
      stateFlag14 = stringHelper.appliedImageURL
      if stateFlag14 == localValue2 then
        stateFlag8 = stringHelper
        stateFlag14 = table
        stateFlag14 = stateFlag14.remove
        stateFlag = dataCollection4
        stateFlag2 = number17
        stateFlag14(stateFlag, stateFlag2)
        break
      end
    end
    if not stateFlag8 then
      stateFlag10 = table
      stateFlag10 = stateFlag10.remove
      number15 = dataCollection4
      stateFlag10 = stateFlag10(number15)
      stateFlag8 = stateFlag10
    end
    if not stateFlag8 then
      stateFlag10 = table
      stateFlag10 = stateFlag10.remove
      number15 = dataCollection3
      stateFlag10 = stateFlag10(number15)
      if not stateFlag10 then
        number15 = false
        return number15
      end
      number15 = {}
      number15.id = stateFlag10
      stateFlag8 = number15
    end
    localValue1.renderData = stateFlag8
  end
  stateFlag8 = localValue1.scaleform
  if not stateFlag8 then
    stateFlag8 = rageUiOperation4
    stateFlag10 = localValue1.renderData
    stateFlag10 = stateFlag10.id
    stateFlag8 = stateFlag8(stateFlag10)
    stateFlag10 = RequestScaleformMovie
    number15 = stateFlag8
    -- Beginner: result below is scaleformHandle.
    stateFlag10 = stateFlag10(number15)
    localValue1.scaleform = stateFlag10
    stateFlag10 = localValue1.renderData
    number15 = "billboard_texture_"
    stateFlag12 = tostring
    stateFlag13 = localValue1.renderData
    stateFlag13 = stateFlag13.id
    stateFlag12 = stateFlag12(stateFlag13)
    number15 = number15 .. stateFlag12
    stateFlag10.textureName = number15
  end
  stateFlag8 = localValue1.scaleform
  if stateFlag8 then
    stateFlag8 = HasScaleformMovieLoaded
    stateFlag10 = localValue1.scaleform
    stateFlag8 = stateFlag8(stateFlag10)
    if stateFlag8 then
      stateFlag8 = true
      return stateFlag8
    end
  end
  stateFlag8 = false
  return stateFlag8
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, stateFlag8, stateFlag10
  localValue2 = localValue1.scaleform
  if localValue2 then
    localValue2 = SetScaleformMovieAsNoLongerNeeded
    stateFlag8 = localValue1.scaleform
    localValue2(stateFlag8)
    localValue1.scaleform = nil
  end
  localValue2 = localValue1.renderData
  if localValue2 then
    localValue2 = table
    localValue2 = localValue2.insert
    stateFlag8 = dataCollection4
    stateFlag10 = localValue1.renderData
    localValue2(stateFlag8, stateFlag10)
    localValue1.renderData = nil
  end
end
createVector3 = vector3
text6 = 180.0
text8 = -90.0
number10 = 0.0
createVector3 = createVector3(text6, text8, number10)
text6 = vector2
text8 = 25.0
number10 = 24.8
text6 = text6(text8, number10)
text8 = "billboards"
number10 = CreateRuntimeTxd
workingValue5 = text8
number10 = number10(workingValue5)

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, stateFlag4, stateFlag5, number13, stateFlag6, workingValue9, workingValue10, stateFlag7
  stateFlag8 = localValue1.name
  localValue2 = dataCollection2
  localValue2 = localValue2[stateFlag8]
  stateFlag8 = cmgOperation.placeholderImageURL
  if localValue2 then
    stateFlag10 = localValue2.imageURL
    if stateFlag10 then
      stateFlag8 = localValue2.imageURL
    end
  end
  stateFlag10 = rageUiOperation5
  number15 = localValue1
  stateFlag12 = stateFlag8
  stateFlag10 = stateFlag10(number15, stateFlag12)
  if not stateFlag10 then
    return
  end
  stateFlag10 = localValue1.renderData
  number15 = stateFlag10.dui
  if not number15 then
    number15 = CreateDui
    stateFlag12 = stateFlag8
    stateFlag13 = cmgOperation.renderWidth
    number17 = cmgOperation.renderHeight
    number15 = number15(stateFlag12, stateFlag13, number17)
    stateFlag10.dui = number15
  else
    number15 = stateFlag10.appliedImageURL
    if not number15 then
      number15 = IsDuiAvailable
      stateFlag12 = stateFlag10.dui
      number15 = number15(stateFlag12)
      if number15 then
        number15 = GetDuiHandle
        stateFlag12 = stateFlag10.dui
        number15 = number15(stateFlag12)
        stateFlag12 = CreateRuntimeTextureFromDuiHandle
        stateFlag13 = number10
        number17 = stateFlag10.textureName
        stringHelper = number15
        stateFlag12(stateFlag13, number17, stringHelper)
        stateFlag10.appliedImageURL = stateFlag8
      end
      return
    else
      number15 = stateFlag10.appliedImageURL
      if number15 ~= stateFlag8 then
        number15 = SetDuiUrl
        stateFlag12 = stateFlag10.dui
        stateFlag13 = stateFlag8
        number15(stateFlag12, stateFlag13)
        stateFlag10.appliedImageURL = nil
      end
    end
  end
  number15 = PushScaleformMovieFunction
  stateFlag12 = localValue1.scaleform
  stateFlag13 = "SET_TEXTURE"
  number15(stateFlag12, stateFlag13)
  number15 = PushScaleformMovieMethodParameterString
  stateFlag12 = text8
  number15(stateFlag12)
  number15 = PushScaleformMovieMethodParameterString
  stateFlag12 = stateFlag10.textureName
  number15(stateFlag12)
  number15 = PushScaleformMovieFunctionParameterInt
  stateFlag12 = 0
  number15(stateFlag12)
  number15 = PushScaleformMovieFunctionParameterInt
  stateFlag12 = 0
  number15(stateFlag12)
  number15 = PushScaleformMovieFunctionParameterInt
  stateFlag12 = 1280
  number15(stateFlag12)
  number15 = PushScaleformMovieFunctionParameterInt
  stateFlag12 = 720
  number15(stateFlag12)
  number15 = PopScaleformMovieFunctionVoid
  number15()
  number15 = SetScriptGfxDrawOrder
  stateFlag12 = 4
  number15(stateFlag12)
  number15 = SetScriptGfxDrawBehindPausemenu
  stateFlag12 = true
  number15(stateFlag12)
  number15 = localValue1.info
  stateFlag12 = workingValue15.enabled
  if stateFlag12 then
    stateFlag12 = CMG
    stateFlag12 = stateFlag12.drawAxisOnPoint
    stateFlag13 = number15.max
    number17 = 10
    stateFlag12(stateFlag13, number17)
    stateFlag12 = CMG
    stateFlag12 = stateFlag12.drawAxisOnPoint
    stateFlag13 = number15.min
    number17 = 10
    stateFlag12(stateFlag13, number17)
    stateFlag12 = DrawMarker
    stateFlag13 = 28
    number17 = number15.max
    number17 = number17.x
    stringHelper = number15.max
    stringHelper = stringHelper.y
    stateFlag14 = number15.max
    stateFlag14 = stateFlag14.z
    stateFlag = 0.0
    stateFlag2 = 0.0
    number = 0.0
    number2 = 0.0
    number3 = 0.0
    number4 = 0.0
    number5 = 0.125
    number6 = 0.125
    number7 = 0.125
    number8 = 255
    number9 = 0
    number11 = 0
    number12 = 255
    stateFlag4 = false
    stateFlag5 = false
    number13 = 2
    stateFlag6 = false
    workingValue9 = nil
    workingValue10 = nil
    stateFlag7 = false
    stateFlag12(stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, stateFlag4, stateFlag5, number13, stateFlag6, workingValue9, workingValue10, stateFlag7)
    stateFlag12 = DrawMarker
    stateFlag13 = 28
    number17 = number15.min
    number17 = number17.x
    stringHelper = number15.min
    stringHelper = stringHelper.y
    stateFlag14 = number15.min
    stateFlag14 = stateFlag14.z
    stateFlag = 0.0
    stateFlag2 = 0.0
    number = 0.0
    number2 = 0.0
    number3 = 0.0
    number4 = 0.0
    number5 = 0.125
    number6 = 0.125
    number7 = 0.125
    number8 = 255
    number9 = 0
    number11 = 0
    number12 = 255
    stateFlag4 = false
    stateFlag5 = false
    number13 = 2
    stateFlag6 = false
    workingValue9 = nil
    workingValue10 = nil
    stateFlag7 = false
    stateFlag12(stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, stateFlag4, stateFlag5, number13, stateFlag6, workingValue9, workingValue10, stateFlag7)
    stateFlag12 = CMG
    stateFlag12 = stateFlag12.drawHeadingFromPoint
    stateFlag13 = number15.max
    number17 = math
    number17 = number17.rad
    stringHelper = number15.heading
    number17 = number17(stringHelper)
    stringHelper = 20.0
    stateFlag12(stateFlag13, number17, stringHelper)
  end
  stateFlag12 = number15.max
  stateFlag13 = localValue1.distance
  number17 = cmgOperation.minLodDistance
  if stateFlag13 > number17 then
    stateFlag13 = localValue1.distance
    number17 = cmgOperation.minLodDistance
    stateFlag13 = stateFlag13 - number17
    number17 = math
    number17 = number17.min
    stringHelper = cmgOperation.maxLodDistance
    stateFlag14 = cmgOperation.minLodDistance
    stringHelper = stringHelper - stateFlag14
    stringHelper = stateFlag13 / stringHelper
    stateFlag14 = 1.0
    number17 = number17(stringHelper, stateFlag14)
    stringHelper = cmgOperation.lodDistanceOffset
    stringHelper = stringHelper * number17
    stateFlag14 = vector3
    stateFlag = stateFlag12.x
    stateFlag2 = number15.forward
    stateFlag2 = stateFlag2.x
    stateFlag2 = stringHelper * stateFlag2
    stateFlag = stateFlag + stateFlag2
    stateFlag2 = stateFlag12.y
    number = number15.forward
    number = number.y
    number = stringHelper * number
    stateFlag2 = stateFlag2 + number
    number = stateFlag12.z
    stateFlag14 = stateFlag14(stateFlag, stateFlag2, number)
    stateFlag12 = stateFlag14
  end
  stateFlag13 = DrawScaleformMovie_3d
  number17 = localValue1.scaleform
  stringHelper = stateFlag12.x
  stateFlag14 = stateFlag12.y
  stateFlag = stateFlag12.z
  stateFlag2 = createVector3.x
  number = number15.heading
  number2 = createVector3.y
  number = number + number2
  number2 = createVector3.z
  number3 = 0.1
  number4 = 0.1
  number5 = 0.1
  number6 = number15.widthDifference
  number7 = text6.x
  number6 = number6 / number7
  number7 = number15.heightDifference
  number8 = text6.y
  number7 = number7 / number8
  number8 = 1.0
  number9 = 2
  stateFlag13(number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9)
  stateFlag13 = SetTextRenderId
  number17 = GetDefaultScriptRendertargetRenderId
  number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, stateFlag4, stateFlag5, number13, stateFlag6, workingValue9, workingValue10, stateFlag7 = number17()
  stateFlag13(number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3, number4, number5, number6, number7, number8, number9, number11, number12, stateFlag4, stateFlag5, number13, stateFlag6, workingValue9, workingValue10, stateFlag7)
  stateFlag13 = SetScriptGfxDrawBehindPausemenu
  number17 = false
  stateFlag13(number17)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, stateFlag8, stateFlag10, number15
  localValue1 = nil
  workingValue11 = localValue1
  localValue1 = workingValue11
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    stateFlag8 = localValue2
    localValue2 = localValue2.Get
    stateFlag10 = "billboards"
    number15 = "mainmenu"
    -- Beginner: result below is menu.
    localValue2 = localValue2(stateFlag8, stateFlag10, number15)
    stateFlag8 = true
    localValue1(localValue2, stateFlag8)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = workingValue11
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.CloseAll
    localValue1()
  end
end
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, stateFlag8, stateFlag10 = localValue1(localValue2)
  for number15, stateFlag12 in localValue1, localValue2, stateFlag8, stateFlag10 do
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.createArea
    number17 = "billboard_"
    stringHelper = number15
    number17 = number17 .. stringHelper
    stringHelper = stateFlag12.cameraPosition
    stateFlag14 = 500.0
    stateFlag = 500.0

    -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
    function stateFlag2()
      local localValue12, localValue22
    end
    number = text4
    number2 = workingValue5
    number3 = {}
    number3.name = number15
    number3.info = stateFlag12
    -- Beginner: Create an interaction area around a world position.
    stateFlag13(number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number, number2, number3)
  end
  localValue1 = CMG
  localValue1 = localValue1.createDynamicPed
  localValue2 = 826475330
  stateFlag8 = cmgOperation.pedLocation
  stateFlag8 = stateFlag8.xyz
  stateFlag10 = cmgOperation.pedLocation
  stateFlag10 = stateFlag10.w
  number15 = true
  stateFlag12 = nil
  stateFlag13 = nil
  number17 = 25.0
  stringHelper = nil

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local localValue12, localValue22
  end
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14)
  localValue1 = tCMG
  localValue1 = localValue1.addMarker
  localValue2 = cmgOperation.buyMarker
  localValue2 = localValue2.x
  stateFlag8 = cmgOperation.buyMarker
  stateFlag8 = stateFlag8.y
  stateFlag10 = cmgOperation.buyMarker
  stateFlag10 = stateFlag10.z
  number15 = 1.0
  stateFlag12 = 1.0
  stateFlag13 = 1.0
  number17 = 255
  stringHelper = 0
  stateFlag14 = 0
  stateFlag = 170
  stateFlag2 = 50
  number = 27
  -- Beginner: Create a world marker.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper, stateFlag14, stateFlag, stateFlag2, number)
  localValue1 = CMG
  localValue1 = localValue1.createArea
  localValue2 = "billboards_location"
  stateFlag8 = cmgOperation.buyMarker
  stateFlag10 = 1.5
  number15 = 5.0
  stateFlag12 = workingValue6
  stateFlag13 = workingValue7
  number17 = nil
  stringHelper = nil
  -- Beginner: Create an interaction area around a world position.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12, stateFlag13, number17, stringHelper)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(text9)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuItems
text9 = "Billboards"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, stateFlag8, stateFlag10, number15, stateFlag12
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Enabled"
  stateFlag8 = "Whether to draw debug information for billboards."
  stateFlag10 = workingValue15.enabled
  number15 = {}

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3, localValue4) ===
  function stateFlag12(localValue12, localValue22, localValue3, localValue4)
    workingValue15.enabled = localValue4
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "~y~Testing Helpers"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Open Remote Menu"
  stateFlag8 = "Opens the menu without having to run to the city hall."
  stateFlag10 = true

  -- === HELPER FUNCTION (decompiler name: number15; parameters: localValue12, localValue22, localValue3) ===
  function number15(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12, workingValue14
    if localValue3 then
      localValue4 = RageUI
      localValue4 = localValue4.Visible
      stateFlag11 = RMenu
      text12 = stateFlag11
      stateFlag11 = stateFlag11.Get
      workingValue12 = "billboards"
      workingValue14 = "mainmenu"
      -- Beginner: result below is menu.
      stateFlag11 = stateFlag11(text12, workingValue12, workingValue14)
      text12 = true
      localValue4(stateFlag11, text12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15)
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Fake URL Update"
  stateFlag8 = "Sends a fake URL update event to the local client for the closest billboard."
  stateFlag10 = true

  -- === HELPER FUNCTION (decompiler name: number15; parameters: localValue12, localValue22, localValue3) ===
  function number15(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12, workingValue14, cmgOperation5, dataCollection5, rageUiOperation, mathHelper, workingValue
    if localValue3 then
      localValue4 = nil
      stateFlag11 = 1000.0
      text12 = pairs
      workingValue12 = cmgOperation.locations
      text12, workingValue12, workingValue14, cmgOperation5 = text12(workingValue12)
      for dataCollection5, rageUiOperation in text12, workingValue12, workingValue14, cmgOperation5 do
        mathHelper = CMG
        mathHelper = mathHelper.getPlayerCoords
        -- Beginner: result below is playerCoords.
        mathHelper = mathHelper()
        workingValue = rageUiOperation.max
        mathHelper = mathHelper - workingValue
        mathHelper = #mathHelper
        if stateFlag11 > mathHelper then
          localValue4 = dataCollection5
          stateFlag11 = mathHelper
        end
      end
      if not localValue4 then
        text12 = notify
        workingValue12 = "~r~No nearby billboard found."
        -- Beginner: Show a notification to the player.
        text12(workingValue12)
        return
      end
      text12 = CMG
      text12 = text12.clientPrompt
      workingValue12 = "Image URL"
      workingValue14 = ""

      -- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue13) ===
      function cmgOperation5(localValue13)
        local localValue23, localValue32, localValue42, text11
        localValue23 = TriggerEvent
        localValue32 = "e916ea16dc"
        localValue42 = localValue4
        text11 = localValue13
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e916ea16dc".
        localValue23(localValue32, localValue42, text11)
        localValue23 = notify
        localValue32 = string
        localValue32 = localValue32.format
        localValue42 = "~g~Sent URL update to %s"
        text11 = localValue4
        localValue32, localValue42, text11 = localValue32(localValue42, text11)
        -- Beginner: Show a notification to the player.
        localValue23(localValue32, localValue42, text11)
      end
      text12(workingValue12, workingValue14, cmgOperation5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  localValue2 = "~y~Configuration"
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Rotation X"
  stateFlag8 = "A value that is added on top of the billboard scaleform rotation X component."
  stateFlag10 = {}
  number15 = tostring
  stateFlag12 = createVector3.x
  number15 = number15(stateFlag12)
  stateFlag10.RightLabel = number15
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag11 = "Enter X"
      text12 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13) ===
      function workingValue12(localValue13)
        local localValue23, localValue32, localValue42, text11, text13
        localValue23 = tonumber
        localValue32 = localValue13
        localValue23 = localValue23(localValue32)
        if localValue23 then
          localValue32 = vector3
          localValue42 = localValue23
          text11 = createVector3.y
          text13 = createVector3.z
          localValue32 = localValue32(localValue42, text11, text13)
          createVector3 = localValue32
        end
      end
      localValue4(stateFlag11, text12, workingValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Rotation Y"
  stateFlag8 = "A value that is added on top of the billboard scaleform rotation Y component."
  stateFlag10 = {}
  number15 = tostring
  stateFlag12 = createVector3.y
  number15 = number15(stateFlag12)
  stateFlag10.RightLabel = number15
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag11 = "Enter Y"
      text12 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13) ===
      function workingValue12(localValue13)
        local localValue23, localValue32, localValue42, text11, text13
        localValue23 = tonumber
        localValue32 = localValue13
        localValue23 = localValue23(localValue32)
        if localValue23 then
          localValue32 = vector3
          localValue42 = createVector3.x
          text11 = localValue23
          text13 = createVector3.z
          localValue32 = localValue32(localValue42, text11, text13)
          createVector3 = localValue32
        end
      end
      localValue4(stateFlag11, text12, workingValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Rotation Z"
  stateFlag8 = "A value that is added on top of the billboard scaleform rotation Z component."
  stateFlag10 = {}
  number15 = tostring
  stateFlag12 = createVector3.z
  number15 = number15(stateFlag12)
  stateFlag10.RightLabel = number15
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag11 = "Enter Z"
      text12 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13) ===
      function workingValue12(localValue13)
        local localValue23, localValue32, localValue42, text11, text13
        localValue23 = tonumber
        localValue32 = localValue13
        localValue23 = localValue23(localValue32)
        if localValue23 then
          localValue32 = vector3
          localValue42 = createVector3.x
          text11 = createVector3.y
          text13 = localValue23
          localValue32 = localValue32(localValue42, text11, text13)
          createVector3 = localValue32
        end
      end
      localValue4(stateFlag11, text12, workingValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Aspect Ratio X"
  stateFlag8 = "A value that is used to scale the image width onto the render target."
  stateFlag10 = {}
  number15 = tostring
  stateFlag12 = text6.x
  number15 = number15(stateFlag12)
  stateFlag10.RightLabel = number15
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag11 = "Enter X"
      text12 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13) ===
      function workingValue12(localValue13)
        local localValue23, localValue32, localValue42, text11
        localValue23 = tonumber
        localValue32 = localValue13
        localValue23 = localValue23(localValue32)
        if localValue23 then
          localValue32 = vector2
          localValue42 = localValue23
          text11 = text6.y
          localValue32 = localValue32(localValue42, text11)
          text6 = localValue32
        end
      end
      localValue4(stateFlag11, text12, workingValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  localValue2 = "Aspect Ratio Y"
  stateFlag8 = "A value that is used to scale the image height onto the render target."
  stateFlag10 = {}
  number15 = tostring
  stateFlag12 = text6.y
  number15 = number15(stateFlag12)
  stateFlag10.RightLabel = number15
  number15 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local localValue4, stateFlag11, text12, workingValue12
    if localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.clientPrompt
      stateFlag11 = "Enter Y"
      text12 = ""

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13) ===
      function workingValue12(localValue13)
        local localValue23, localValue32, localValue42, text11
        localValue23 = tonumber
        localValue32 = localValue13
        localValue23 = localValue23(localValue32)
        if localValue23 then
          localValue32 = vector2
          localValue42 = text6.x
          text11 = localValue23
          localValue32 = localValue32(localValue42, text11)
          text6 = localValue32
        end
      end
      localValue4(stateFlag11, text12, workingValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, stateFlag8, stateFlag10, number15, stateFlag12)
end
cmgOperation3(text9, workingValue8)
