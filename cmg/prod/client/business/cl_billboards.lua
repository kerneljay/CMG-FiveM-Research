--[[
    Beginner Guide: cl_billboards.lua
    =================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Billboards
    ===========================

    File: cmg/prod/client/business/cl_billboards.lua
    Purpose: This file contains FiveM client/resource logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Config/data used:
      * cfg/cfg_billboards

    Network/hash identifiers found: 10
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * ~r~You do not own any billboards.
      * Open Remote Menu

]]
local cmgCall, dataTable2, numberValue14, flag9, workValue11, numberValue16, dataTable3, dataTable4, workValue15, textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_billboards"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
numberValue14 = 0
flag9 = false
workValue11 = nil
numberValue16 = 1
dataTable3 = {}
dataTable4 = 1
workValue15 = cmgCall.numRenderTargets
textValue14 = 1
for textValue = dataTable4, workValue15, textValue14 do
  rageUiCall2 = table
  rageUiCall2 = rageUiCall2.insert
  textValue2 = dataTable3
  cmgCall2 = textValue
  rageUiCall2(textValue2, cmgCall2)
end
dataTable4 = {}
workValue15 = RMenu
workValue15 = workValue15.Add
textValue14 = "billboards"
textValue = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue2 = ""
cmgCall2 = "CMG Billboards"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall4()
rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall2(textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15(textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15 = RMenu
workValue15 = workValue15.Add
textValue14 = "billboards"
textValue = "available"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue2 = RMenu
cmgCall2 = textValue2
textValue2 = textValue2.Get
rageUiCall3 = "billboards"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue2 = textValue2(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "CMG Billboards"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall5()
rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall2(textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15(textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15 = RMenu
workValue15 = workValue15.Add
textValue14 = "billboards"
textValue = "purchase"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue2 = RMenu
cmgCall2 = textValue2
textValue2 = textValue2.Get
rageUiCall3 = "billboards"
rageUiCall4 = "available"
-- Beginner: result below is menu.
textValue2 = textValue2(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "CMG Billboards"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall5()
rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall2(textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15(textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15 = RMenu
workValue15 = workValue15.Add
textValue14 = "billboards"
textValue = "owned"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue2 = RMenu
cmgCall2 = textValue2
textValue2 = textValue2.Get
rageUiCall3 = "billboards"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue2 = textValue2(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "CMG Billboards"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall5()
rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall2(textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15(textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15 = RMenu
workValue15 = workValue15.Add
textValue14 = "billboards"
textValue = "editowned"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue2 = RMenu
cmgCall2 = textValue2
textValue2 = textValue2.Get
rageUiCall3 = "billboards"
rageUiCall4 = "owned"
-- Beginner: result below is menu.
textValue2 = textValue2(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "CMG Billboards"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall5()
rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8 = rageUiCall2(textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15(textValue14, textValue, rageUiCall2, textValue2, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue4, vector3Builder, textValue6, textValue8, numberValue10, workValue5, workValue6, workValue7, cmgCall3, textValue9, workValue8)
workValue15 = CMG
workValue15 = workValue15.registerDevMenuState
textValue14 = "Billboards"
textValue = {}
textValue.enabled = false
workValue15 = workValue15(textValue14, textValue)
textValue14 = nil
function textValue(arg1)
  local arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2
  arg2 = true
  flag9 = arg2
  arg2 = numberValue14
  if 0 == arg2 then
    arg2 = CreateCam
    flag8 = "DEFAULT_SCRIPTED_CAMERA"
    flag10 = true
    -- Beginner: result below is cameraHandle.
    arg2 = arg2(flag8, flag10)
    numberValue14 = arg2
    arg2 = SetCamActive
    flag8 = numberValue14
    flag10 = true
    arg2(flag8, flag10)
    arg2 = RenderScriptCams
    flag8 = true
    flag10 = false
    numberValue15 = 0
    flag12 = false
    flag13 = false
    arg2(flag8, flag10, numberValue15, flag12, flag13)
  end
  arg2 = workValue11
  if arg2 ~= arg1 then
    arg2 = cmgCall.locations
    arg2 = arg2[arg1]
    flag8 = SetCamCoord
    flag10 = numberValue14
    numberValue15 = arg2.cameraPosition
    numberValue15 = numberValue15.x
    flag12 = arg2.cameraPosition
    flag12 = flag12.y
    flag13 = arg2.cameraPosition
    flag13 = flag13.z
    flag8(flag10, numberValue15, flag12, flag13)
    flag8 = PointCamAtCoord
    flag10 = numberValue14
    numberValue15 = arg2.centerPosition
    numberValue15 = numberValue15.x
    flag12 = arg2.centerPosition
    flag12 = flag12.y
    flag13 = arg2.centerPosition
    flag13 = flag13.z
    flag8(flag10, numberValue15, flag12, flag13)
    flag8 = SetFocusPosAndVel
    flag10 = arg2.cameraPosition
    flag10 = flag10.x
    numberValue15 = arg2.cameraPosition
    numberValue15 = numberValue15.y
    flag12 = arg2.cameraPosition
    flag12 = flag12.z
    flag13 = 0.0
    numberValue17 = 0.0
    stringHelper = 0.0
    flag8(flag10, numberValue15, flag12, flag13, numberValue17, stringHelper)
    flag8 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    flag8 = flag8()
    flag10 = textValue14
    if not flag10 then
      flag10 = CMG
      flag10 = flag10.getPlayerCoords
      -- Beginner: result below is playerCoords.
      flag10 = flag10()
      textValue14 = flag10
    end
    flag10 = SetEntityCoords
    numberValue15 = flag8
    flag12 = arg2.cameraPosition
    flag12 = flag12.x
    flag13 = arg2.cameraPosition
    flag13 = flag13.y
    numberValue17 = arg2.cameraPosition
    numberValue17 = numberValue17.z
    numberValue17 = numberValue17 - 2.0
    stringHelper = true
    flag14 = false
    flag = false
    flag2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    flag10(numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2)
    flag10 = FreezeEntityPosition
    numberValue15 = flag8
    flag12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag10(numberValue15, flag12)
    flag10 = SetEntityVisible
    numberValue15 = flag8
    flag12 = false
    flag13 = false
    flag10(numberValue15, flag12, flag13)
    workValue11 = arg1
  end
end
function rageUiCall2(arg1)
  local arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag
  if not arg1 or "" == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = false
  flag8 = pairs
  flag10 = cmgCall.allowedUrls
  flag8, flag10, numberValue15, flag12 = flag8(flag10)
  for flag13, numberValue17 in flag8, flag10, numberValue15, flag12 do
    stringHelper = string
    stringHelper = stringHelper.starts
    flag14 = arg1
    flag = numberValue17
    stringHelper = stringHelper(flag14, flag)
    if stringHelper then
      arg2 = true
      break
    end
  end
  if not arg2 then
    flag8 = nil
    return flag8
  end
  flag8 = string
  flag8 = flag8.sub
  flag10 = arg1
  numberValue15 = #arg1
  numberValue15 = numberValue15 - 3
  flag8 = flag8(flag10, numberValue15)
  flag10 = table
  flag10 = flag10.has
  numberValue15 = cmgCall.allowedExtensions
  flag12 = flag8
  flag10 = flag10(numberValue15, flag12)
  if not flag10 then
    flag10 = nil
    return flag10
  end
  return arg1
end
function textValue2(arg1, arg2)
  local flag8
  while 0 ~= arg2 do
    flag8 = arg2
    arg2 = arg1 % arg2
    arg1 = flag8
  end
  return arg1
end
function cmgCall2(arg1, arg2)
  local flag8, flag10, numberValue15, flag12, flag13, numberValue17
  flag8 = textValue2
  flag10 = arg1
  numberValue15 = arg2
  flag8 = flag8(flag10, numberValue15)
  flag10 = string
  flag10 = flag10.format
  numberValue15 = "%s:%s"
  flag12 = math
  flag12 = flag12.floor
  flag13 = arg1 / flag8
  flag12 = flag12(flag13)
  flag13 = math
  flag13 = flag13.floor
  numberValue17 = arg2 / flag8
  flag13, numberValue17 = flag13(numberValue17)
  return flag10(numberValue15, flag12, flag13, numberValue17)
end
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateWhile
rageUiCall4 = 1.0
rageUiCall5 = RMenu
textValue4 = rageUiCall5
rageUiCall5 = rageUiCall5.Get
vector3Builder = "billboards"
textValue6 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall5 = rageUiCall5(textValue4, vector3Builder, textValue6)
textValue4 = nil
function vector3Builder()
  local arg1, arg2, flag8, flag10, numberValue15, flag12, flag13
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag10 = "billboards"
  numberValue15 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag10, numberValue15)
  flag8 = true
  flag10 = false
  numberValue15 = true
  function flag12()
    local arg12, arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~View Available"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag11 = true
    function textValue12()
      local arg13, arg23
    end
    workValue12 = RMenu
    workValue14 = workValue12
    workValue12 = workValue12.Get
    cmgCall5 = "billboards"
    dataTable5 = "available"
    workValue12, workValue14, cmgCall5, dataTable5 = workValue12(workValue14, cmgCall5, dataTable5)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~View Owned"
    arg3 = ""
    arg4 = {}
    arg4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag11 = true
    function textValue12()
      local arg13, arg23
    end
    workValue12 = RMenu
    workValue14 = workValue12
    workValue12 = workValue12.Get
    cmgCall5 = "billboards"
    dataTable5 = "owned"
    workValue12, workValue14, cmgCall5, dataTable5 = workValue12(workValue14, cmgCall5, dataTable5)
    arg12(arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5)
  end
  function flag13()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag10 = "billboards"
  numberValue15 = "available"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag10, numberValue15)
  flag8 = true
  flag10 = false
  numberValue15 = true
  function flag12()
    local arg12, arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5, rageUiCall, mathHelper, workValue, dataTable, flag3, textValue3
    arg12 = RageUI
    arg12 = arg12.BackspaceMenuCallback
    function arg22()
      local arg13, arg23
      arg13 = false
      flag9 = arg13
    end
    arg12(arg22)
    arg12 = false
    arg22 = pairs
    arg3 = cmgCall.locations
    arg22, arg3, arg4, flag11 = arg22(arg3)
    for textValue12 in arg22, arg3, arg4, flag11 do
      workValue12 = dataTable2
      workValue12 = workValue12[textValue12]
      if not workValue12 then
        workValue12 = RageUI
        workValue12 = workValue12.ButtonWithStyle
        workValue14 = textValue12
        cmgCall5 = ""
        dataTable5 = {}
        dataTable5.RightLabel = "\226\134\146\226\134\146\226\134\146"
        rageUiCall = true
        function mathHelper(arg13, arg23, arg32)
          local arg42, textValue11
          if arg23 then
            arg42 = textValue
            textValue11 = textValue12
            arg42(textValue11)
          end
        end
        workValue = RMenu
        dataTable = workValue
        workValue = workValue.Get
        flag3 = "billboards"
        textValue3 = "purchase"
        workValue, dataTable, flag3, textValue3 = workValue(dataTable, flag3, textValue3)
        -- Beginner: Draw a selectable RageUI menu button.
        workValue12(workValue14, cmgCall5, dataTable5, rageUiCall, mathHelper, workValue, dataTable, flag3, textValue3)
        arg12 = true
      end
    end
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~There are no available billboards for sale."
      arg22(arg3)
      arg22 = false
      flag9 = arg22
    end
  end
  function flag13()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag10 = "billboards"
  numberValue15 = "purchase"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag10, numberValue15)
  flag8 = true
  flag10 = false
  numberValue15 = true
  function flag12()
    local arg12, arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5
    arg12 = cmgCall.locations
    arg22 = workValue11
    arg12 = arg12[arg22]
    if arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~y~Name: "
      arg4 = workValue11
      arg3 = arg3 .. arg4
      arg22(arg3)
      arg22 = RageUI
      arg22 = arg22.List
      arg3 = "Rent Duration"
      arg4 = cmgCall.rentDurations
      flag11 = numberValue16
      textValue12 = ""
      workValue12 = {}
      workValue14 = true
      function cmgCall5(arg13, arg23, arg32, arg42)
        local textValue11
        textValue11 = numberValue16
        if arg42 ~= textValue11 then
          numberValue16 = arg42
        end
      end
      -- Beginner: Draw a RageUI list selector.
      arg22(arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5)
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      arg3 = "~g~Confirm Purchase"
      arg4 = ""
      flag11 = {}
      textValue12 = "\194\163"
      workValue12 = getMoneyStringFormatted
      workValue14 = arg12.price
      workValue12 = workValue12(workValue14)
      textValue12 = textValue12 .. workValue12
      flag11.RightLabel = textValue12
      textValue12 = true
      function workValue12(arg13, arg23, arg32)
        local arg42, textValue11, textValue13, workValue13
        if arg32 then
          arg42 = TriggerServerEvent
          textValue11 = "d5e3e2d189"
          textValue13 = workValue11
          workValue13 = numberValue16
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5e3e2d189".
          arg42(textValue11, textValue13, workValue13)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(arg3, arg4, flag11, textValue12, workValue12)
    end
  end
  function flag13()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag10 = "billboards"
  numberValue15 = "owned"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag10, numberValue15)
  flag8 = true
  flag10 = false
  numberValue15 = true
  function flag12()
    local arg12, arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5, rageUiCall, mathHelper, workValue, dataTable, flag3, textValue3, workValue2, workValue3, textValue5, textValue7
    arg12 = RageUI
    arg12 = arg12.BackspaceMenuCallback
    function arg22()
      local arg13, arg23
      arg13 = false
      flag9 = arg13
    end
    arg12(arg22)
    arg12 = false
    arg22 = pairs
    arg3 = cmgCall.locations
    arg22, arg3, arg4, flag11 = arg22(arg3)
    for textValue12 in arg22, arg3, arg4, flag11 do
      workValue12 = dataTable2
      workValue12 = workValue12[textValue12]
      if workValue12 then
        workValue14 = workValue12.ownerUserId
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.getClientUserId
        -- Beginner: result below is userId.
        cmgCall5 = cmgCall5()
        if workValue14 == cmgCall5 then
          workValue14 = "~g~"
          cmgCall5 = workValue12.pendingURL
          if cmgCall5 then
            cmgCall5 = workValue12.denied
            if cmgCall5 then
              workValue14 = "~r~"
            else
              workValue14 = "~y~"
            end
          end
          cmgCall5 = workValue14
          dataTable5 = textValue12
          cmgCall5 = cmgCall5 .. dataTable5
          dataTable5 = ""
          rageUiCall = workValue12.pendingURL
          if rageUiCall then
            rageUiCall = workValue12.denied
            if rageUiCall then
              dataTable5 = "Your requested image has been denied."
            else
              dataTable5 = "An image is pending approval for this billboard."
            end
          end
          rageUiCall = RageUI
          rageUiCall = rageUiCall.ButtonWithStyle
          mathHelper = cmgCall5
          workValue = dataTable5
          dataTable = {}
          dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag3 = true
          function textValue3(arg13, arg23, arg32)
            local arg42, textValue11
            if arg23 then
              arg42 = textValue
              textValue11 = textValue12
              arg42(textValue11)
            end
          end
          workValue2 = RMenu
          workValue3 = workValue2
          workValue2 = workValue2.Get
          textValue5 = "billboards"
          textValue7 = "editowned"
          workValue2, workValue3, textValue5, textValue7 = workValue2(workValue3, textValue5, textValue7)
          -- Beginner: Draw a selectable RageUI menu button.
          rageUiCall(mathHelper, workValue, dataTable, flag3, textValue3, workValue2, workValue3, textValue5, textValue7)
          arg12 = true
        end
      end
    end
    if not arg12 then
      arg22 = RageUI
      arg22 = arg22.Separator
      arg3 = "~r~You do not own any billboards."
      arg22(arg3)
      arg22 = false
      flag9 = arg22
    end
  end
  function flag13()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag10 = "billboards"
  numberValue15 = "editowned"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag10, numberValue15)
  flag8 = true
  flag10 = false
  numberValue15 = true
  function flag12()
    local arg12, arg22, arg3, arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5, rageUiCall, mathHelper, workValue
    arg12 = "Only CMG Image URLs are allowed. Once uploaded your image will be reviewed by staff and either approved or rejected."
    arg3 = workValue11
    arg22 = dataTable2
    arg22 = arg22[arg3]
    if arg22 then
      arg3 = arg22.pendingURL
      if arg3 then
        arg3 = arg22.denied
        if arg3 then
          arg3 = RageUI
          arg3 = arg3.Separator
          arg4 = "~r~URL is denied."
          arg3(arg4)
          arg3 = arg12
          arg4 = string
          arg4 = arg4.format
          flag11 = [[


~r~Denied Image URL:
%s]]
          textValue12 = arg22.pendingURL
          arg4 = arg4(flag11, textValue12)
          arg3 = arg3 .. arg4
          arg12 = arg3
        else
          arg3 = RageUI
          arg3 = arg3.Separator
          arg4 = "~r~URL is pending approval."
          arg3(arg4)
          arg3 = arg12
          arg4 = string
          arg4 = arg4.format
          flag11 = [[


~y~Pending Image URL:
%s]]
          textValue12 = arg22.pendingURL
          arg4 = arg4(flag11, textValue12)
          arg3 = arg3 .. arg4
          arg12 = arg3
        end
      else
        arg3 = RageUI
        arg3 = arg3.Separator
        arg4 = "~g~No upload is pending for this billboard."
        arg3(arg4)
      end
      arg3 = arg22.rentedUntil
      if arg3 then
        arg3 = RageUI
        arg3 = arg3.Separator
        arg4 = "~y~Rent End: "
        flag11 = arg22.rentedUntil
        arg4 = arg4 .. flag11
        arg3(arg4)
      end
    end
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Change Image URL"
    flag11 = arg12
    textValue12 = {}
    textValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue12 = true
    function workValue14(arg13, arg23, arg32)
      local arg42, textValue11, textValue13
      if arg32 then
        arg42 = TriggerServerEvent
        textValue11 = "500907f3d9"
        textValue13 = workValue11
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "500907f3d9".
        arg42(textValue11, textValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag11, textValue12, workValue12, workValue14)
    arg3 = RageUI
    arg3 = arg3.ButtonWithStyle
    arg4 = "Test Image URL"
    flag11 = "Test what an image would look like on the billboard. This will only show the image for you and will persist after exiting the menu."
    textValue12 = {}
    textValue12.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue12 = true
    function workValue14(arg13, arg23, arg32)
      local arg42, textValue11, textValue13, workValue13
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        textValue11 = "Testing Image URL"
        textValue13 = ""
        function workValue13(arg14)
          local workValue4, textValue10, cmgCall4
          workValue4 = rageUiCall2
          textValue10 = arg14
          workValue4 = workValue4(textValue10)
          if not workValue4 then
            workValue4 = notify
            textValue10 = source
            cmgCall4 = "~r~Image URL is not allowed. Please use an image uploaded to the CMG CDN."
            -- Beginner: Show a notification to the player.
            workValue4(textValue10, cmgCall4)
            return
          end
          arg22.imageURL = arg14
          workValue4 = notify
          textValue10 = "~y~Applied testing image to billboard."
          workValue4(textValue10)
        end
        arg42(textValue11, textValue13, workValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg3(arg4, flag11, textValue12, workValue12, workValue14)
    arg3 = RageUI
    arg3 = arg3.Separator
    arg4 = "~y~Suggested Image Sizes"
    arg3(arg4)
    arg3 = string
    arg3 = arg3.format
    arg4 = "This should be the aspect ratio of the image that is uploaded and used on the billboard. Any other resolution may cause padding or other negative visual effects. All images are rendered at a resolution of %sx%s for performance reasons."
    flag11 = cmgCall.renderWidth
    textValue12 = cmgCall.renderHeight
    arg3 = arg3(arg4, flag11, textValue12)
    arg4 = RageUI
    arg4 = arg4.ButtonWithStyle
    flag11 = "Image Aspect Ratio"
    textValue12 = arg3
    workValue12 = {}
    workValue14 = cmgCall2
    cmgCall5 = cmgCall.renderWidth
    dataTable5 = cmgCall.renderHeight
    workValue14 = workValue14(cmgCall5, dataTable5)
    workValue12.RightLabel = workValue14
    workValue14 = true
    function cmgCall5()
      local arg13, arg23
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg4(flag11, textValue12, workValue12, workValue14, cmgCall5)
    arg4 = cmgCall.locations
    flag11 = workValue11
    arg4 = arg4[flag11]
    flag11 = "This is the real aspect ratio of the billboard. This should be used whilst creating the image, and then once finished scaled into the above Image Aspect Ratio."
    textValue12 = RageUI
    textValue12 = textValue12.ButtonWithStyle
    workValue12 = "Development Aspect Ratio"
    workValue14 = flag11
    cmgCall5 = {}
    dataTable5 = cmgCall2
    rageUiCall = math
    rageUiCall = rageUiCall.floor
    mathHelper = arg4.widthDifference
    rageUiCall = rageUiCall(mathHelper)
    mathHelper = math
    mathHelper = mathHelper.floor
    workValue = arg4.heightDifference
    mathHelper, workValue = mathHelper(workValue)
    dataTable5 = dataTable5(rageUiCall, mathHelper, workValue)
    cmgCall5.RightLabel = dataTable5
    dataTable5 = true
    function rageUiCall()
      local arg13, arg23
    end
    textValue12(workValue12, workValue14, cmgCall5, dataTable5, rageUiCall)
  end
  function flag13()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13)
end
rageUiCall3(rageUiCall4, rageUiCall5, textValue4, vector3Builder)
function rageUiCall3()
  local arg1, arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14
  arg1 = numberValue14
  if 0 ~= arg1 then
    arg1 = flag9
    if arg1 then
      arg1 = RageUI
      arg1 = arg1.IsAnyMenuOfTypeVisible
      arg2 = "billboards"
      arg1 = arg1(arg2)
      if arg1 then
        goto flow_label_62
      end
    end
    arg1 = ClearFocus
    arg1()
    arg1 = RenderScriptCams
    arg2 = false
    flag8 = false
    flag10 = 0
    numberValue15 = false
    flag12 = false
    arg1(arg2, flag8, flag10, numberValue15, flag12)
    arg1 = SetCamActive
    arg2 = numberValue14
    flag8 = false
    arg1(arg2, flag8)
    arg1 = DestroyCam
    arg2 = numberValue14
    flag8 = false
    arg1(arg2, flag8)
    arg1 = 0
    numberValue14 = arg1
    arg1 = false
    flag9 = arg1
    arg1 = nil
    workValue11 = arg1
    arg1 = textValue14
    if arg1 then
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = SetEntityCoords
      flag8 = arg1
      flag10 = textValue14.x
      numberValue15 = textValue14.y
      flag12 = textValue14.z
      flag13 = true
      numberValue17 = false
      stringHelper = false
      flag14 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg2(flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14)
      arg2 = FreezeEntityPosition
      flag8 = arg1
      flag10 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      arg2(flag8, flag10)
      arg2 = SetEntityVisible
      flag8 = arg1
      flag10 = true
      numberValue15 = true
      arg2(flag8, flag10, numberValue15)
      arg2 = nil
      textValue14 = arg2
    end
  end
  ::flow_label_62::
end
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.createThreadOnTick
rageUiCall5 = rageUiCall3
textValue4 = "Billboards"
-- Beginner: Run a helper every game frame while this script is active.
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "f9f7560728"
-- Beginner: this function handles network event "f9f7560728".
function textValue4(arg1)
  local arg2
  dataTable2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f9f7560728".
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "225ac5d18d"
-- Beginner: this function handles network event "225ac5d18d".
function textValue4(arg1, arg2)
  local flag8
  flag8 = dataTable2
  flag8[arg1] = arg2
end
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "fe74003b10"
-- Beginner: this function handles network event "fe74003b10".
function textValue4(arg1)
  local arg2, flag8, flag10, numberValue15, flag12
  workValue11 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  flag8 = RMenu
  flag10 = flag8
  flag8 = flag8.Get
  numberValue15 = "billboards"
  flag12 = "editowned"
  -- Beginner: result below is menu.
  flag8 = flag8(flag10, numberValue15, flag12)
  flag10 = true
  arg2(flag8, flag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe74003b10".
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "6c0990449f"
-- Beginner: this function handles network event "6c0990449f".
function textValue4(arg1, arg2)
  local flag8
  flag8 = dataTable2
  flag8 = flag8[arg1]
  if flag8 then
    flag8.pendingURL = arg2
    flag8.denied = false
  end
end
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "a1b2d8e125"
-- Beginner: this function handles network event "a1b2d8e125".
function textValue4(arg1, arg2)
  local flag8
  flag8 = dataTable2
  flag8 = flag8[arg1]
  if flag8 then
    flag8.pendingURL = arg2
    flag8.denied = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1b2d8e125".
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "e916ea16dc"
-- Beginner: this function handles network event "e916ea16dc".
function textValue4(arg1, arg2)
  local flag8, flag10
  flag8 = dataTable2
  flag8 = flag8[arg1]
  if flag8 then
    flag10 = flag8.pendingURL
    if flag10 == arg2 then
      flag8.pendingURL = nil
    end
    flag8.imageURL = arg2
    flag8.denied = false
  end
end
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "5835cbdb37"
-- Beginner: this function handles network event "5835cbdb37".
function textValue4(arg1)
  local arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17
  arg2 = pairs
  flag8 = arg1
  arg2, flag8, flag10, numberValue15 = arg2(flag8)
  for flag12, flag13 in arg2, flag8, flag10, numberValue15 do
    numberValue17 = dataTable2
    numberValue17 = numberValue17[flag12]
    if numberValue17 then
      numberValue17.rentedUntil = flag13
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5835cbdb37".
rageUiCall4(rageUiCall5, textValue4)
rageUiCall4 = RegisterNetEvent
rageUiCall5 = "295be4ac29"
-- Beginner: this function handles network event "295be4ac29".
function textValue4(arg1)
  local arg2
  arg2 = dataTable2
  arg2[arg1] = nil
end
rageUiCall4(rageUiCall5, textValue4)
-- Beginner: this function handles network event "295be4ac29".
function rageUiCall4(arg1)
  local arg2, flag8, flag10
  arg2 = string
  arg2 = arg2.format
  flag8 = "hypnonema_texture_renderer%02d"
  flag10 = arg1
  return arg2(flag8, flag10)
end
function rageUiCall5(arg1, arg2)
  local flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2
  flag8 = arg1.renderData
  if not flag8 then
    flag8 = nil
    flag10 = pairs
    numberValue15 = dataTable4
    flag10, numberValue15, flag12, flag13 = flag10(numberValue15)
    for numberValue17, stringHelper in flag10, numberValue15, flag12, flag13 do
      flag14 = stringHelper.appliedImageURL
      if flag14 == arg2 then
        flag8 = stringHelper
        flag14 = table
        flag14 = flag14.remove
        flag = dataTable4
        flag2 = numberValue17
        flag14(flag, flag2)
        break
      end
    end
    if not flag8 then
      flag10 = table
      flag10 = flag10.remove
      numberValue15 = dataTable4
      flag10 = flag10(numberValue15)
      flag8 = flag10
    end
    if not flag8 then
      flag10 = table
      flag10 = flag10.remove
      numberValue15 = dataTable3
      flag10 = flag10(numberValue15)
      if not flag10 then
        numberValue15 = false
        return numberValue15
      end
      numberValue15 = {}
      numberValue15.id = flag10
      flag8 = numberValue15
    end
    arg1.renderData = flag8
  end
  flag8 = arg1.scaleform
  if not flag8 then
    flag8 = rageUiCall4
    flag10 = arg1.renderData
    flag10 = flag10.id
    flag8 = flag8(flag10)
    flag10 = RequestScaleformMovie
    numberValue15 = flag8
    -- Beginner: result below is scaleformHandle.
    flag10 = flag10(numberValue15)
    arg1.scaleform = flag10
    flag10 = arg1.renderData
    numberValue15 = "billboard_texture_"
    flag12 = tostring
    flag13 = arg1.renderData
    flag13 = flag13.id
    flag12 = flag12(flag13)
    numberValue15 = numberValue15 .. flag12
    flag10.textureName = numberValue15
  end
  flag8 = arg1.scaleform
  if flag8 then
    flag8 = HasScaleformMovieLoaded
    flag10 = arg1.scaleform
    flag8 = flag8(flag10)
    if flag8 then
      flag8 = true
      return flag8
    end
  end
  flag8 = false
  return flag8
end
function textValue4(arg1)
  local arg2, flag8, flag10
  arg2 = arg1.scaleform
  if arg2 then
    arg2 = SetScaleformMovieAsNoLongerNeeded
    flag8 = arg1.scaleform
    arg2(flag8)
    arg1.scaleform = nil
  end
  arg2 = arg1.renderData
  if arg2 then
    arg2 = table
    arg2 = arg2.insert
    flag8 = dataTable4
    flag10 = arg1.renderData
    arg2(flag8, flag10)
    arg1.renderData = nil
  end
end
vector3Builder = vector3
textValue6 = 180.0
textValue8 = -90.0
numberValue10 = 0.0
vector3Builder = vector3Builder(textValue6, textValue8, numberValue10)
textValue6 = vector2
textValue8 = 25.0
numberValue10 = 24.8
textValue6 = textValue6(textValue8, numberValue10)
textValue8 = "billboards"
numberValue10 = CreateRuntimeTxd
workValue5 = textValue8
numberValue10 = numberValue10(workValue5)
function workValue5(arg1)
  local arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, flag4, flag5, numberValue13, flag6, workValue9, workValue10, flag7
  flag8 = arg1.name
  arg2 = dataTable2
  arg2 = arg2[flag8]
  flag8 = cmgCall.placeholderImageURL
  if arg2 then
    flag10 = arg2.imageURL
    if flag10 then
      flag8 = arg2.imageURL
    end
  end
  flag10 = rageUiCall5
  numberValue15 = arg1
  flag12 = flag8
  flag10 = flag10(numberValue15, flag12)
  if not flag10 then
    return
  end
  flag10 = arg1.renderData
  numberValue15 = flag10.dui
  if not numberValue15 then
    numberValue15 = CreateDui
    flag12 = flag8
    flag13 = cmgCall.renderWidth
    numberValue17 = cmgCall.renderHeight
    numberValue15 = numberValue15(flag12, flag13, numberValue17)
    flag10.dui = numberValue15
  else
    numberValue15 = flag10.appliedImageURL
    if not numberValue15 then
      numberValue15 = IsDuiAvailable
      flag12 = flag10.dui
      numberValue15 = numberValue15(flag12)
      if numberValue15 then
        numberValue15 = GetDuiHandle
        flag12 = flag10.dui
        numberValue15 = numberValue15(flag12)
        flag12 = CreateRuntimeTextureFromDuiHandle
        flag13 = numberValue10
        numberValue17 = flag10.textureName
        stringHelper = numberValue15
        flag12(flag13, numberValue17, stringHelper)
        flag10.appliedImageURL = flag8
      end
      return
    else
      numberValue15 = flag10.appliedImageURL
      if numberValue15 ~= flag8 then
        numberValue15 = SetDuiUrl
        flag12 = flag10.dui
        flag13 = flag8
        numberValue15(flag12, flag13)
        flag10.appliedImageURL = nil
      end
    end
  end
  numberValue15 = PushScaleformMovieFunction
  flag12 = arg1.scaleform
  flag13 = "SET_TEXTURE"
  numberValue15(flag12, flag13)
  numberValue15 = PushScaleformMovieMethodParameterString
  flag12 = textValue8
  numberValue15(flag12)
  numberValue15 = PushScaleformMovieMethodParameterString
  flag12 = flag10.textureName
  numberValue15(flag12)
  numberValue15 = PushScaleformMovieFunctionParameterInt
  flag12 = 0
  numberValue15(flag12)
  numberValue15 = PushScaleformMovieFunctionParameterInt
  flag12 = 0
  numberValue15(flag12)
  numberValue15 = PushScaleformMovieFunctionParameterInt
  flag12 = 1280
  numberValue15(flag12)
  numberValue15 = PushScaleformMovieFunctionParameterInt
  flag12 = 720
  numberValue15(flag12)
  numberValue15 = PopScaleformMovieFunctionVoid
  numberValue15()
  numberValue15 = SetScriptGfxDrawOrder
  flag12 = 4
  numberValue15(flag12)
  numberValue15 = SetScriptGfxDrawBehindPausemenu
  flag12 = true
  numberValue15(flag12)
  numberValue15 = arg1.info
  flag12 = workValue15.enabled
  if flag12 then
    flag12 = CMG
    flag12 = flag12.drawAxisOnPoint
    flag13 = numberValue15.max
    numberValue17 = 10
    flag12(flag13, numberValue17)
    flag12 = CMG
    flag12 = flag12.drawAxisOnPoint
    flag13 = numberValue15.min
    numberValue17 = 10
    flag12(flag13, numberValue17)
    flag12 = DrawMarker
    flag13 = 28
    numberValue17 = numberValue15.max
    numberValue17 = numberValue17.x
    stringHelper = numberValue15.max
    stringHelper = stringHelper.y
    flag14 = numberValue15.max
    flag14 = flag14.z
    flag = 0.0
    flag2 = 0.0
    numberValue = 0.0
    numberValue2 = 0.0
    numberValue3 = 0.0
    numberValue4 = 0.0
    numberValue5 = 0.125
    numberValue6 = 0.125
    numberValue7 = 0.125
    numberValue8 = 255
    numberValue9 = 0
    numberValue11 = 0
    numberValue12 = 255
    flag4 = false
    flag5 = false
    numberValue13 = 2
    flag6 = false
    workValue9 = nil
    workValue10 = nil
    flag7 = false
    flag12(flag13, numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, flag4, flag5, numberValue13, flag6, workValue9, workValue10, flag7)
    flag12 = DrawMarker
    flag13 = 28
    numberValue17 = numberValue15.min
    numberValue17 = numberValue17.x
    stringHelper = numberValue15.min
    stringHelper = stringHelper.y
    flag14 = numberValue15.min
    flag14 = flag14.z
    flag = 0.0
    flag2 = 0.0
    numberValue = 0.0
    numberValue2 = 0.0
    numberValue3 = 0.0
    numberValue4 = 0.0
    numberValue5 = 0.125
    numberValue6 = 0.125
    numberValue7 = 0.125
    numberValue8 = 255
    numberValue9 = 0
    numberValue11 = 0
    numberValue12 = 255
    flag4 = false
    flag5 = false
    numberValue13 = 2
    flag6 = false
    workValue9 = nil
    workValue10 = nil
    flag7 = false
    flag12(flag13, numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, flag4, flag5, numberValue13, flag6, workValue9, workValue10, flag7)
    flag12 = CMG
    flag12 = flag12.drawHeadingFromPoint
    flag13 = numberValue15.max
    numberValue17 = math
    numberValue17 = numberValue17.rad
    stringHelper = numberValue15.heading
    numberValue17 = numberValue17(stringHelper)
    stringHelper = 20.0
    flag12(flag13, numberValue17, stringHelper)
  end
  flag12 = numberValue15.max
  flag13 = arg1.distance
  numberValue17 = cmgCall.minLodDistance
  if flag13 > numberValue17 then
    flag13 = arg1.distance
    numberValue17 = cmgCall.minLodDistance
    flag13 = flag13 - numberValue17
    numberValue17 = math
    numberValue17 = numberValue17.min
    stringHelper = cmgCall.maxLodDistance
    flag14 = cmgCall.minLodDistance
    stringHelper = stringHelper - flag14
    stringHelper = flag13 / stringHelper
    flag14 = 1.0
    numberValue17 = numberValue17(stringHelper, flag14)
    stringHelper = cmgCall.lodDistanceOffset
    stringHelper = stringHelper * numberValue17
    flag14 = vector3
    flag = flag12.x
    flag2 = numberValue15.forward
    flag2 = flag2.x
    flag2 = stringHelper * flag2
    flag = flag + flag2
    flag2 = flag12.y
    numberValue = numberValue15.forward
    numberValue = numberValue.y
    numberValue = stringHelper * numberValue
    flag2 = flag2 + numberValue
    numberValue = flag12.z
    flag14 = flag14(flag, flag2, numberValue)
    flag12 = flag14
  end
  flag13 = DrawScaleformMovie_3d
  numberValue17 = arg1.scaleform
  stringHelper = flag12.x
  flag14 = flag12.y
  flag = flag12.z
  flag2 = vector3Builder.x
  numberValue = numberValue15.heading
  numberValue2 = vector3Builder.y
  numberValue = numberValue + numberValue2
  numberValue2 = vector3Builder.z
  numberValue3 = 0.1
  numberValue4 = 0.1
  numberValue5 = 0.1
  numberValue6 = numberValue15.widthDifference
  numberValue7 = textValue6.x
  numberValue6 = numberValue6 / numberValue7
  numberValue7 = numberValue15.heightDifference
  numberValue8 = textValue6.y
  numberValue7 = numberValue7 / numberValue8
  numberValue8 = 1.0
  numberValue9 = 2
  flag13(numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9)
  flag13 = SetTextRenderId
  numberValue17 = GetDefaultScriptRendertargetRenderId
  numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, flag4, flag5, numberValue13, flag6, workValue9, workValue10, flag7 = numberValue17()
  flag13(numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue11, numberValue12, flag4, flag5, numberValue13, flag6, workValue9, workValue10, flag7)
  flag13 = SetScriptGfxDrawBehindPausemenu
  numberValue17 = false
  flag13(numberValue17)
end
function workValue6()
  local arg1, arg2, flag8, flag10, numberValue15
  arg1 = nil
  workValue11 = arg1
  arg1 = workValue11
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    flag8 = arg2
    arg2 = arg2.Get
    flag10 = "billboards"
    numberValue15 = "mainmenu"
    -- Beginner: result below is menu.
    arg2 = arg2(flag8, flag10, numberValue15)
    flag8 = true
    arg1(arg2, flag8)
  end
end
function workValue7()
  local arg1, arg2
  arg1 = workValue11
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
  end
end
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread
function textValue9()
  local arg1, arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, flag8, flag10 = arg1(arg2)
  for numberValue15, flag12 in arg1, arg2, flag8, flag10 do
    flag13 = CMG
    flag13 = flag13.createArea
    numberValue17 = "billboard_"
    stringHelper = numberValue15
    numberValue17 = numberValue17 .. stringHelper
    stringHelper = flag12.cameraPosition
    flag14 = 500.0
    flag = 500.0
    function flag2()
      local arg12, arg22
    end
    numberValue = textValue4
    numberValue2 = workValue5
    numberValue3 = {}
    numberValue3.name = numberValue15
    numberValue3.info = flag12
    -- Beginner: Create an interaction area around a world position.
    flag13(numberValue17, stringHelper, flag14, flag, flag2, numberValue, numberValue2, numberValue3)
  end
  arg1 = CMG
  arg1 = arg1.createDynamicPed
  arg2 = 826475330
  flag8 = cmgCall.pedLocation
  flag8 = flag8.xyz
  flag10 = cmgCall.pedLocation
  flag10 = flag10.w
  numberValue15 = true
  flag12 = nil
  flag13 = nil
  numberValue17 = 25.0
  stringHelper = nil
  function flag14()
    local arg12, arg22
  end
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14)
  arg1 = tCMG
  arg1 = arg1.addMarker
  arg2 = cmgCall.buyMarker
  arg2 = arg2.x
  flag8 = cmgCall.buyMarker
  flag8 = flag8.y
  flag10 = cmgCall.buyMarker
  flag10 = flag10.z
  numberValue15 = 1.0
  flag12 = 1.0
  flag13 = 1.0
  numberValue17 = 255
  stringHelper = 0
  flag14 = 0
  flag = 170
  flag2 = 50
  numberValue = 27
  -- Beginner: Create a world marker.
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper, flag14, flag, flag2, numberValue)
  arg1 = CMG
  arg1 = arg1.createArea
  arg2 = "billboards_location"
  flag8 = cmgCall.buyMarker
  flag10 = 1.5
  numberValue15 = 5.0
  flag12 = workValue6
  flag13 = workValue7
  numberValue17 = nil
  stringHelper = nil
  -- Beginner: Create an interaction area around a world position.
  arg1(arg2, flag8, flag10, numberValue15, flag12, flag13, numberValue17, stringHelper)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(textValue9)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuItems
textValue9 = "Billboards"
function workValue8()
  local arg1, arg2, flag8, flag10, numberValue15, flag12
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Enabled"
  flag8 = "Whether to draw debug information for billboards."
  flag10 = workValue15.enabled
  numberValue15 = {}
  function flag12(arg12, arg22, arg3, arg4)
    workValue15.enabled = arg4
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "~y~Testing Helpers"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Open Remote Menu"
  flag8 = "Opens the menu without having to run to the city hall."
  flag10 = true
  function numberValue15(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12, workValue14
    if arg3 then
      arg4 = RageUI
      arg4 = arg4.Visible
      flag11 = RMenu
      textValue12 = flag11
      flag11 = flag11.Get
      workValue12 = "billboards"
      workValue14 = "mainmenu"
      -- Beginner: result below is menu.
      flag11 = flag11(textValue12, workValue12, workValue14)
      textValue12 = true
      arg4(flag11, textValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15)
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Fake URL Update"
  flag8 = "Sends a fake URL update event to the local client for the closest billboard."
  flag10 = true
  function numberValue15(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12, workValue14, cmgCall5, dataTable5, rageUiCall, mathHelper, workValue
    if arg3 then
      arg4 = nil
      flag11 = 1000.0
      textValue12 = pairs
      workValue12 = cmgCall.locations
      textValue12, workValue12, workValue14, cmgCall5 = textValue12(workValue12)
      for dataTable5, rageUiCall in textValue12, workValue12, workValue14, cmgCall5 do
        mathHelper = CMG
        mathHelper = mathHelper.getPlayerCoords
        -- Beginner: result below is playerCoords.
        mathHelper = mathHelper()
        workValue = rageUiCall.max
        mathHelper = mathHelper - workValue
        mathHelper = #mathHelper
        if flag11 > mathHelper then
          arg4 = dataTable5
          flag11 = mathHelper
        end
      end
      if not arg4 then
        textValue12 = notify
        workValue12 = "~r~No nearby billboard found."
        -- Beginner: Show a notification to the player.
        textValue12(workValue12)
        return
      end
      textValue12 = CMG
      textValue12 = textValue12.clientPrompt
      workValue12 = "Image URL"
      workValue14 = ""
      function cmgCall5(arg13)
        local arg23, arg32, arg42, textValue11
        arg23 = TriggerEvent
        arg32 = "e916ea16dc"
        arg42 = arg4
        textValue11 = arg13
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e916ea16dc".
        arg23(arg32, arg42, textValue11)
        arg23 = notify
        arg32 = string
        arg32 = arg32.format
        arg42 = "~g~Sent URL update to %s"
        textValue11 = arg4
        arg32, arg42, textValue11 = arg32(arg42, textValue11)
        -- Beginner: Show a notification to the player.
        arg23(arg32, arg42, textValue11)
      end
      textValue12(workValue12, workValue14, cmgCall5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15)
  arg1 = RageUI
  arg1 = arg1.Separator
  arg2 = "~y~Configuration"
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Rotation X"
  flag8 = "A value that is added on top of the billboard scaleform rotation X component."
  flag10 = {}
  numberValue15 = tostring
  flag12 = vector3Builder.x
  numberValue15 = numberValue15(flag12)
  flag10.RightLabel = numberValue15
  numberValue15 = true
  function flag12(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12
    if arg3 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag11 = "Enter X"
      textValue12 = ""
      function workValue12(arg13)
        local arg23, arg32, arg42, textValue11, textValue13
        arg23 = tonumber
        arg32 = arg13
        arg23 = arg23(arg32)
        if arg23 then
          arg32 = vector3
          arg42 = arg23
          textValue11 = vector3Builder.y
          textValue13 = vector3Builder.z
          arg32 = arg32(arg42, textValue11, textValue13)
          vector3Builder = arg32
        end
      end
      arg4(flag11, textValue12, workValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Rotation Y"
  flag8 = "A value that is added on top of the billboard scaleform rotation Y component."
  flag10 = {}
  numberValue15 = tostring
  flag12 = vector3Builder.y
  numberValue15 = numberValue15(flag12)
  flag10.RightLabel = numberValue15
  numberValue15 = true
  function flag12(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12
    if arg3 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag11 = "Enter Y"
      textValue12 = ""
      function workValue12(arg13)
        local arg23, arg32, arg42, textValue11, textValue13
        arg23 = tonumber
        arg32 = arg13
        arg23 = arg23(arg32)
        if arg23 then
          arg32 = vector3
          arg42 = vector3Builder.x
          textValue11 = arg23
          textValue13 = vector3Builder.z
          arg32 = arg32(arg42, textValue11, textValue13)
          vector3Builder = arg32
        end
      end
      arg4(flag11, textValue12, workValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Rotation Z"
  flag8 = "A value that is added on top of the billboard scaleform rotation Z component."
  flag10 = {}
  numberValue15 = tostring
  flag12 = vector3Builder.z
  numberValue15 = numberValue15(flag12)
  flag10.RightLabel = numberValue15
  numberValue15 = true
  function flag12(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12
    if arg3 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag11 = "Enter Z"
      textValue12 = ""
      function workValue12(arg13)
        local arg23, arg32, arg42, textValue11, textValue13
        arg23 = tonumber
        arg32 = arg13
        arg23 = arg23(arg32)
        if arg23 then
          arg32 = vector3
          arg42 = vector3Builder.x
          textValue11 = vector3Builder.y
          textValue13 = arg23
          arg32 = arg32(arg42, textValue11, textValue13)
          vector3Builder = arg32
        end
      end
      arg4(flag11, textValue12, workValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Aspect Ratio X"
  flag8 = "A value that is used to scale the image width onto the render target."
  flag10 = {}
  numberValue15 = tostring
  flag12 = textValue6.x
  numberValue15 = numberValue15(flag12)
  flag10.RightLabel = numberValue15
  numberValue15 = true
  function flag12(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12
    if arg3 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag11 = "Enter X"
      textValue12 = ""
      function workValue12(arg13)
        local arg23, arg32, arg42, textValue11
        arg23 = tonumber
        arg32 = arg13
        arg23 = arg23(arg32)
        if arg23 then
          arg32 = vector2
          arg42 = arg23
          textValue11 = textValue6.y
          arg32 = arg32(arg42, textValue11)
          textValue6 = arg32
        end
      end
      arg4(flag11, textValue12, workValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  arg2 = "Aspect Ratio Y"
  flag8 = "A value that is used to scale the image height onto the render target."
  flag10 = {}
  numberValue15 = tostring
  flag12 = textValue6.y
  numberValue15 = numberValue15(flag12)
  flag10.RightLabel = numberValue15
  numberValue15 = true
  function flag12(arg12, arg22, arg3)
    local arg4, flag11, textValue12, workValue12
    if arg3 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag11 = "Enter Y"
      textValue12 = ""
      function workValue12(arg13)
        local arg23, arg32, arg42, textValue11
        arg23 = tonumber
        arg32 = arg13
        arg23 = arg23(arg32)
        if arg23 then
          arg32 = vector2
          arg42 = textValue6.x
          textValue11 = arg23
          arg32 = arg32(arg42, textValue11)
          textValue6 = arg32
        end
      end
      arg4(flag11, textValue12, workValue12)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, flag8, flag10, numberValue15, flag12)
end
cmgCall3(textValue9, workValue8)