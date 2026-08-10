--[[
    Beginner Guide: cl_homecctv.lua
    ===============================

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
    BEGINNER GUIDE — Homecctv
    =========================

    File: cmg/prod/client/home/cl_homecctv.lua
    Purpose: This file contains housing/home gameplay.

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
      * cfg/cfg_homecustomisation

    Network/hash identifiers found: 4
      They are intentionally left unchanged because matching server code may use them.
      * 4c8a1aa1b3
      * 4a71260cab
      * 780b19ba17
      * e2673bb257

    Example player-facing text in this file:
      * Main Menu
      * ScaleformMovieMethodAddParamPlayerNameString
      * ~INPUT_FRONTEND_CANCEL~
      * Exit Viewing
      * ~INPUT_FRONTEND_RIGHT~

]]
local cmgCall, textValue9, workValue6, workValue7, numberValue3, numberValue4, numberValue5, numberValue6, workValue15, textValue12, textValue, rageUiCall, textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue9 = "cfg/cfg_homecustomisation"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue9)
textValue9 = nil
workValue6 = nil
workValue7 = nil
numberValue3 = 0
numberValue4 = 0
numberValue5 = 0
numberValue6 = 0
workValue15 = RMenu
workValue15 = workValue15.Add
textValue12 = "housecctv"
textValue = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue3 = "CCTV"
rageUiCall2 = "Main Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, rageUiCall5, textValue5, textValue7 = rageUiCall4()
rageUiCall, textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7 = rageUiCall(textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7)
workValue15(textValue12, textValue, rageUiCall, textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7)
workValue15 = RMenu
workValue15 = workValue15.Add
textValue12 = "housecctv"
textValue = "camerainfo"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue3 = RMenu
rageUiCall2 = textValue3
textValue3 = textValue3.Get
rageUiCall3 = "housecctv"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue3 = textValue3(rageUiCall2, rageUiCall3, rageUiCall4)
rageUiCall2 = "CCTV"
rageUiCall3 = "Camera Info"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5, textValue5, textValue7 = rageUiCall5()
rageUiCall, textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7 = rageUiCall(textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7)
workValue15(textValue12, textValue, rageUiCall, textValue3, rageUiCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue5, textValue7)
workValue15 = nil
function textValue12(arg1)
  local numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5
  numberValue = 1
  numberValue2 = -1
  iterator = pairs
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getHomePlaceableObjects
  cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5 = cmgCall2()
  iterator, cmgCall2, iterator2, cmgCall3 = iterator(cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5)
  for flag9, flag10 in iterator, cmgCall2, iterator2, cmgCall3 do
    numberValue7 = cmgCall.cctvLookup
    flag = flag10[1]
    numberValue7 = numberValue7[flag]
    if numberValue7 then
      flag = textValue9
      if flag10 == flag then
        numberValue2 = numberValue
      end
      numberValue = numberValue + 1
    end
  end
  if -1 == numberValue2 then
    return
  end
  iterator = numberValue2 + arg1
  if iterator <= 0 then
    iterator = numberValue
  elseif numberValue < iterator then
    iterator = 1
  end
  cmgCall2 = 1
  iterator2 = pairs
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getHomePlaceableObjects
  cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5 = cmgCall3()
  iterator2, cmgCall3, flag9, flag10 = iterator2(cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5)
  for numberValue7, flag in iterator2, cmgCall3, flag9, flag10 do
    flag2 = cmgCall.cctvLookup
    textValue4 = flag[1]
    flag2 = flag2[textValue4]
    if flag2 then
      if cmgCall2 == iterator then
        textValue4 = "Camera "
        stringHelper = tostring
        workValue2 = cmgCall2
        stringHelper = stringHelper(workValue2)
        textValue4 = textValue4 .. stringHelper
        stringHelper = flag[5]
        if stringHelper then
          stringHelper = flag[5]
          stringHelper = stringHelper.camera_name
          if stringHelper then
            stringHelper = flag[5]
            textValue4 = stringHelper.camera_name
          end
        end
        stringHelper = string
        stringHelper = stringHelper.upper
        workValue2 = textValue4
        stringHelper = stringHelper(workValue2)
        workValue7 = stringHelper
        stringHelper = textValue9
        if stringHelper then
          stringHelper = SetEntityVisible
          workValue2 = textValue9
          workValue2 = workValue2[4]
          flag4 = true
          flag5 = true
          stringHelper(workValue2, flag4, flag5)
        end
        textValue9 = flag
        workValue6 = flag2
        stringHelper = workValue15
        stringHelper()
        break
      end
      cmgCall2 = cmgCall2 + 1
    end
  end
end
function textValue()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9
  while true do
    arg1 = IsControlJustPressed
    numberValue = 0
    numberValue2 = 202
    arg1 = arg1(numberValue, numberValue2)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.showAllDisplays
      numberValue = "homecctv"
      arg1(numberValue)
      arg1 = ClearTimecycleModifier
      arg1()
      arg1 = RenderScriptCams
      numberValue = false
      numberValue2 = false
      iterator = 0
      cmgCall2 = false
      iterator2 = false
      arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2)
      arg1 = DestroyCam
      numberValue = numberValue3
      numberValue2 = false
      arg1(numberValue, numberValue2)
      arg1 = textValue9
      if arg1 then
        arg1 = SetEntityVisible
        numberValue = textValue9
        numberValue = numberValue[4]
        numberValue2 = true
        iterator = true
        arg1(numberValue, numberValue2, iterator)
      end
      arg1 = numberValue5
      if 0 ~= arg1 then
        arg1 = SetScaleformMovieAsNoLongerNeeded
        numberValue = numberValue5
        arg1(numberValue)
        arg1 = 0
        numberValue5 = arg1
      end
      arg1 = numberValue6
      if 0 ~= arg1 then
        arg1 = DeleteEntity
        numberValue = numberValue6
        -- Beginner: Delete a GTA entity.
        arg1(numberValue)
        arg1 = 0
        numberValue6 = arg1
      end
      arg1 = ClearPedTasks
      numberValue = PlayerPedId
      numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9 = numberValue()
      arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9)
      arg1 = 0
      numberValue3 = arg1
      break
    end
    arg1 = IsControlJustPressed
    numberValue = 0
    numberValue2 = 189
    arg1 = arg1(numberValue, numberValue2)
    if arg1 then
      arg1 = textValue12
      numberValue = -1
      arg1(numberValue)
    end
    arg1 = IsControlJustPressed
    numberValue = 0
    numberValue2 = 190
    arg1 = arg1(numberValue, numberValue2)
    if arg1 then
      arg1 = textValue12
      numberValue = 1
      arg1(numberValue)
    end
    arg1 = workValue6
    if arg1 then
      arg1 = workValue6.type
      if "fixed" ~= arg1 then
        arg1 = GetDisabledControlNormal
        numberValue = 0
        numberValue2 = 220
        arg1 = arg1(numberValue, numberValue2)
        numberValue = GetFrameTime
        numberValue = numberValue()
        arg1 = arg1 * numberValue
        arg1 = arg1 * 250.0
        numberValue = math
        numberValue = numberValue.abs
        numberValue2 = arg1
        numberValue = numberValue(numberValue2)
        numberValue2 = 0.001
        if numberValue > numberValue2 then
          numberValue = GetCamRot
          numberValue2 = numberValue3
          iterator = 2
          numberValue = numberValue(numberValue2, iterator)
          numberValue2 = SetCamRot
          iterator = numberValue3
          cmgCall2 = numberValue.x
          iterator2 = numberValue.y
          cmgCall3 = numberValue.z
          cmgCall3 = cmgCall3 - arg1
          flag9 = 2
          numberValue2(iterator, cmgCall2, iterator2, cmgCall3, flag9)
        end
      end
    end
    arg1 = numberValue5
    if 0 ~= arg1 then
      arg1 = DrawScaleformMovieFullscreen
      numberValue = numberValue5
      numberValue2 = 255
      iterator = 255
      cmgCall2 = 255
      iterator2 = 255
      cmgCall3 = 0
      arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3)
    end
    arg1 = workValue7
    if arg1 then
      arg1 = CMG
      arg1 = arg1.DrawText
      numberValue = 0.5
      numberValue2 = 0.05
      iterator = workValue7
      cmgCall2 = 1.0
      iterator2 = nil
      cmgCall3 = 0
      arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3)
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    numberValue = 0
    arg1(numberValue)
  end
end
function rageUiCall()
  local arg1, numberValue, numberValue2, iterator
  arg1 = RequestScaleformMovie
  numberValue = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(numberValue)
  while true do
    numberValue = HasScaleformMovieLoaded
    numberValue2 = arg1
    numberValue = numberValue(numberValue2)
    if numberValue then
      break
    end
    numberValue = Citizen
    numberValue = numberValue.Wait
    numberValue2 = 0
    numberValue(numberValue2)
  end
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "CLEAR_ALL"
  numberValue(numberValue2, iterator)
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "SET_DATA_SLOT"
  numberValue(numberValue2, iterator)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 0
  numberValue(numberValue2)
  numberValue = _ENV
  numberValue2 = "ScaleformMovieMethodAddParamPlayerNameString"
  numberValue = numberValue[numberValue2]
  numberValue2 = "~INPUT_FRONTEND_CANCEL~"
  numberValue(numberValue2)
  numberValue = BeginTextCommandScaleformString
  numberValue2 = "STRING"
  numberValue(numberValue2)
  numberValue = AddTextComponentSubstringKeyboardDisplay
  numberValue2 = "Exit Viewing"
  numberValue(numberValue2)
  numberValue = EndTextCommandScaleformString
  numberValue()
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "SET_DATA_SLOT"
  numberValue(numberValue2, iterator)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 1
  numberValue(numberValue2)
  numberValue = _ENV
  numberValue2 = "ScaleformMovieMethodAddParamPlayerNameString"
  numberValue = numberValue[numberValue2]
  numberValue2 = "~INPUT_FRONTEND_RIGHT~"
  numberValue(numberValue2)
  numberValue = BeginTextCommandScaleformString
  numberValue2 = "STRING"
  numberValue(numberValue2)
  numberValue = AddTextComponentSubstringKeyboardDisplay
  numberValue2 = "Next Camera"
  numberValue(numberValue2)
  numberValue = EndTextCommandScaleformString
  numberValue()
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "SET_DATA_SLOT"
  numberValue(numberValue2, iterator)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 2
  numberValue(numberValue2)
  numberValue = _ENV
  numberValue2 = "ScaleformMovieMethodAddParamPlayerNameString"
  numberValue = numberValue[numberValue2]
  numberValue2 = "~INPUT_FRONTEND_LEFT~"
  numberValue(numberValue2)
  numberValue = BeginTextCommandScaleformString
  numberValue2 = "STRING"
  numberValue(numberValue2)
  numberValue = AddTextComponentSubstringKeyboardDisplay
  numberValue2 = "Previous Camera"
  numberValue(numberValue2)
  numberValue = EndTextCommandScaleformString
  numberValue()
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "DRAW_INSTRUCTIONAL_BUTTONS"
  numberValue(numberValue2, iterator)
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue = BeginScaleformMovieMethod
  numberValue2 = arg1
  iterator = "SET_BACKGROUND_COLOUR"
  numberValue(numberValue2, iterator)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 0
  numberValue(numberValue2)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 0
  numberValue(numberValue2)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 0
  numberValue(numberValue2)
  numberValue = ScaleformMovieMethodAddParamInt
  numberValue2 = 80
  numberValue(numberValue2)
  numberValue = EndScaleformMovieMethod
  numberValue()
  numberValue5 = arg1
end
function textValue3()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  numberValue = CMG
  numberValue = numberValue.loadModel
  numberValue2 = -1585232418
  -- Beginner: Request/load a GTA model before spawning or applying it.
  numberValue(numberValue2)
  numberValue = CMG
  numberValue = numberValue.requestEntitySpawn
  numberValue2 = "home_cctv_tablet"
  numberValue(numberValue2)
  numberValue = CreateObject
  numberValue2 = -1585232418
  iterator = 0
  cmgCall2 = 0
  iterator2 = 0
  cmgCall3 = true
  flag9 = true
  flag10 = true
  -- Beginner: result below is objectEntity.
  numberValue = numberValue(numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10)
  numberValue6 = numberValue
  numberValue = SetModelAsNoLongerNeeded
  numberValue2 = -1585232418
  numberValue(numberValue2)
  numberValue = CMG
  numberValue = numberValue.loadAnimDict
  numberValue2 = "amb@world_human_seat_wall_tablet@female@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  numberValue(numberValue2)
  numberValue = TaskPlayAnim
  numberValue2 = arg1
  iterator = "amb@world_human_seat_wall_tablet@female@base"
  cmgCall2 = "base"
  iterator2 = 8.0
  cmgCall3 = -8.0
  flag9 = -1
  flag10 = 50
  numberValue7 = 0
  flag = false
  flag2 = false
  textValue4 = false
  -- Beginner: Play an animation on a ped.
  numberValue(numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4)
  numberValue = RemoveAnimDict
  numberValue2 = "amb@world_human_seat_wall_tablet@female@base"
  numberValue(numberValue2)
  numberValue = AttachEntityToEntity
  numberValue2 = numberValue6
  iterator = arg1
  cmgCall2 = GetPedBoneIndex
  iterator2 = arg1
  cmgCall3 = 57005
  cmgCall2 = cmgCall2(iterator2, cmgCall3)
  iterator2 = 0.17
  cmgCall3 = 0.1
  flag9 = -0.13
  flag10 = 24.0
  numberValue7 = 180.0
  flag = 180.0
  flag2 = true
  textValue4 = true
  stringHelper = false
  workValue2 = true
  flag4 = 1
  flag5 = true
  -- Beginner: Attach one entity to another entity.
  numberValue(numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10, numberValue7, flag, flag2, textValue4, stringHelper, workValue2, flag4, flag5)
  numberValue = Citizen
  numberValue = numberValue.CreateThread
  function numberValue2()
    local arg12, arg2, arg3, flag6, dataTable2
    while true do
      arg12 = DoesEntityExist
      arg2 = numberValue6
      arg12 = arg12(arg2)
      if not arg12 then
        break
      end
      arg12 = IsEntityPlayingAnim
      arg2 = arg1
      arg3 = "amb@world_human_seat_wall_tablet@female@base"
      flag6 = "base"
      dataTable2 = 3
      arg12 = arg12(arg2, arg3, flag6, dataTable2)
      if not arg12 then
        arg12 = DeleteEntity
        arg2 = numberValue6
        -- Beginner: Delete a GTA entity.
        arg12(arg2)
        return
      end
      arg12 = Citizen
      arg12 = arg12.Wait
      arg2 = 0
      arg12(arg2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue(numberValue2)
end
function rageUiCall2()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10
  arg1 = assert
  numberValue = workValue6
  numberValue2 = "A valid cctv must be selected in order to view the camera"
  arg1(numberValue, numberValue2)
  arg1 = assert
  numberValue = textValue9
  numberValue2 = "A valid selectable must be active to view the camera"
  arg1(numberValue, numberValue2)
  arg1 = numberValue3
  arg1 = 0 ~= arg1
  numberValue = RageUI
  numberValue = numberValue.CloseAll
  numberValue()
  if not arg1 then
    numberValue = CMG
    numberValue = numberValue.hideAllDisplays
    numberValue2 = "homecctv"
    numberValue(numberValue2)
    numberValue = CreateCam
    numberValue2 = "DEFAULT_SCRIPTED_CAMERA"
    iterator = true
    -- Beginner: result below is cameraHandle.
    numberValue = numberValue(numberValue2, iterator)
    numberValue3 = numberValue
  end
  numberValue = vector3
  numberValue2 = 0.0
  iterator = 0.0
  cmgCall2 = 0.0
  numberValue = numberValue(numberValue2, iterator, cmgCall2)
  numberValue2 = workValue6.offset
  if numberValue2 then
    numberValue2 = workValue6.offset
    numberValue = numberValue + numberValue2
  end
  numberValue2 = AttachCamToEntity
  iterator = numberValue3
  cmgCall2 = textValue9
  cmgCall2 = cmgCall2[4]
  iterator2 = numberValue.x
  cmgCall3 = numberValue.y
  flag9 = numberValue.z
  flag10 = true
  numberValue2(iterator, cmgCall2, iterator2, cmgCall3, flag9, flag10)
  numberValue2 = GetEntityRotation
  iterator = textValue9
  iterator = iterator[4]
  cmgCall2 = 2
  numberValue2 = numberValue2(iterator, cmgCall2)
  iterator = workValue6.rotation
  if iterator then
    iterator = workValue6.rotation
    numberValue2 = numberValue2 + iterator
  end
  iterator = SetCamRot
  cmgCall2 = numberValue3
  iterator2 = numberValue2.x
  cmgCall3 = numberValue2.y
  flag9 = numberValue2.z
  flag10 = 2
  iterator(cmgCall2, iterator2, cmgCall3, flag9, flag10)
  iterator = SetEntityVisible
  cmgCall2 = textValue9
  cmgCall2 = cmgCall2[4]
  iterator2 = false
  cmgCall3 = false
  iterator(cmgCall2, iterator2, cmgCall3)
  if not arg1 then
    iterator = RenderScriptCams
    cmgCall2 = true
    iterator2 = false
    cmgCall3 = 0
    flag9 = false
    flag10 = false
    iterator(cmgCall2, iterator2, cmgCall3, flag9, flag10)
    iterator = SetTimecycleModifier
    cmgCall2 = "scanline_cam_cheap"
    iterator(cmgCall2)
    iterator = SetTimecycleModifierStrength
    cmgCall2 = 1.0
    iterator(cmgCall2)
    iterator = Citizen
    iterator = iterator.CreateThread
    cmgCall2 = textValue
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator(cmgCall2)
    iterator = rageUiCall
    iterator()
    iterator = textValue3
    iterator()
  end
end
workValue15 = rageUiCall2
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateWhile
rageUiCall3 = 1.0
rageUiCall4 = RMenu
rageUiCall5 = rageUiCall4
rageUiCall4 = rageUiCall4.Get
textValue5 = "housecctv"
textValue7 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall4 = rageUiCall4(rageUiCall5, textValue5, textValue7)
rageUiCall5 = nil
function textValue5()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3
  arg1 = RageUI
  arg1 = arg1.IsVisible
  numberValue = RMenu
  numberValue2 = numberValue
  numberValue = numberValue.Get
  iterator = "housecctv"
  cmgCall2 = "mainmenu"
  -- Beginner: result below is menu.
  numberValue = numberValue(numberValue2, iterator, cmgCall2)
  numberValue2 = true
  iterator = false
  cmgCall2 = true
  function iterator2()
    local arg12, arg2, arg3, flag6, dataTable2, flag7, workValue12, workValue14, textValue11, stringHelper2, workValue, textValue2, dataTable, flag3, workValue3, workValue4, workValue5, textValue6, textValue8
    arg12 = 1
    arg2 = pairs
    arg3 = CMG
    arg3 = arg3.getHomePlaceableObjects
    arg3, flag6, dataTable2, flag7, workValue12, workValue14, textValue11, stringHelper2, workValue, textValue2, dataTable, flag3, workValue3, workValue4, workValue5, textValue6, textValue8 = arg3()
    arg2, arg3, flag6, dataTable2 = arg2(arg3, flag6, dataTable2, flag7, workValue12, workValue14, textValue11, stringHelper2, workValue, textValue2, dataTable, flag3, workValue3, workValue4, workValue5, textValue6, textValue8)
    for flag7, workValue12 in arg2, arg3, flag6, dataTable2 do
      workValue14 = cmgCall.cctvLookup
      textValue11 = workValue12[1]
      workValue14 = workValue14[textValue11]
      if workValue14 then
        textValue11 = "Camera "
        stringHelper2 = tostring
        workValue = arg12
        stringHelper2 = stringHelper2(workValue)
        textValue11 = textValue11 .. stringHelper2
        stringHelper2 = workValue12[5]
        if stringHelper2 then
          stringHelper2 = workValue12[5]
          stringHelper2 = stringHelper2.camera_name
          if stringHelper2 then
            stringHelper2 = workValue12[5]
            textValue11 = stringHelper2.camera_name
          end
        end
        stringHelper2 = RageUI
        stringHelper2 = stringHelper2.ButtonWithStyle
        workValue = textValue11
        textValue2 = ""
        dataTable = {}
        dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag3 = true
        function workValue3(arg13, arg22, arg32)
          local workValue8, workValue10, flag8
          if arg22 then
            workValue8 = numberValue4
            workValue10 = numberValue4
            workValue8 = workValue8 ~= workValue10
            workValue10 = workValue12
            workValue10 = workValue10[4]
            if workValue8 ~= workValue10 then
              workValue8 = SetEntityDrawOutline
              workValue10 = numberValue4
              flag8 = false
              workValue8(workValue10, flag8)
            end
            workValue8 = SetEntityDrawOutline
            workValue10 = workValue12
            workValue10 = workValue10[4]
            flag8 = true
            workValue8(workValue10, flag8)
            workValue8 = workValue12
            workValue8 = workValue8[4]
            numberValue4 = workValue8
          end
          if arg32 then
            workValue8 = workValue12
            textValue9 = workValue8
            workValue8 = workValue14
            workValue6 = workValue8
            workValue8 = string
            workValue8 = workValue8.upper
            workValue10 = textValue11
            workValue8 = workValue8(workValue10)
            workValue7 = workValue8
          end
        end
        workValue4 = RMenu
        workValue5 = workValue4
        workValue4 = workValue4.Get
        textValue6 = "housecctv"
        textValue8 = "camerainfo"
        workValue4, workValue5, textValue6, textValue8 = workValue4(workValue5, textValue6, textValue8)
        -- Beginner: Draw a selectable RageUI menu button.
        stringHelper2(workValue, textValue2, dataTable, flag3, workValue3, workValue4, workValue5, textValue6, textValue8)
        arg12 = arg12 + 1
      end
    end
  end
  function cmgCall3()
    local arg12, arg2
  end
  arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  numberValue = RMenu
  numberValue2 = numberValue
  numberValue = numberValue.Get
  iterator = "housecctv"
  cmgCall2 = "camerainfo"
  -- Beginner: result below is menu.
  numberValue = numberValue(numberValue2, iterator, cmgCall2)
  numberValue2 = true
  iterator = false
  cmgCall2 = true
  function iterator2()
    local arg12, arg2, arg3, flag6, dataTable2, flag7, workValue12
    arg12 = textValue9
    if not arg12 then
      return
    end
    arg12 = CMG
    arg12 = arg12.getHomePlaceableIndex
    arg2 = textValue9
    arg2 = arg2[4]
    arg12 = arg12(arg2)
    if arg12 <= 0 then
      arg2 = RageUI
      arg2 = arg2.Visible
      arg3 = RMenu
      flag6 = arg3
      arg3 = arg3.Get
      dataTable2 = "housecctv"
      flag7 = "mainmenu"
      -- Beginner: result below is menu.
      arg3 = arg3(flag6, dataTable2, flag7)
      flag6 = true
      arg2(arg3, flag6)
      return
    end
    arg2 = RageUI
    arg2 = arg2.ButtonWithStyle
    arg3 = "View Camera"
    flag6 = ""
    dataTable2 = {}
    dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true
    function workValue12(arg13, arg22, arg32)
      local workValue8
      if arg32 then
        workValue8 = workValue15
        workValue8()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg2(arg3, flag6, dataTable2, flag7, workValue12)
    arg2 = RageUI
    arg2 = arg2.ButtonWithStyle
    arg3 = "Set Name"
    flag6 = ""
    dataTable2 = {}
    dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true
    function workValue12(arg13, arg22, arg32)
      local workValue8, workValue10, flag8, workValue13
      if arg32 then
        workValue8 = CMG
        workValue8 = workValue8.clientPrompt
        workValue10 = "Enter Camera Name"
        flag8 = ""
        function workValue13(arg14)
          local serverEventCall, textValue10, workValue9, workValue11
          serverEventCall = #arg14
          if serverEventCall > 2 then
            serverEventCall = #arg14
            if serverEventCall < 25 then
              serverEventCall = TriggerServerEvent
              textValue10 = "4c8a1aa1b3"
              workValue9 = arg12
              workValue11 = arg14
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4c8a1aa1b3".
              serverEventCall(textValue10, workValue9, workValue11)
          end
          else
            serverEventCall = notify
            textValue10 = "~r~Please enter a name between 3 and 25 characters."
            -- Beginner: Show a notification to the player.
            serverEventCall(textValue10)
          end
        end
        workValue8(workValue10, flag8, workValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg2(arg3, flag6, dataTable2, flag7, workValue12)
  end
  function cmgCall3()
    local arg12, arg2
  end
  arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2, cmgCall3)
end
rageUiCall2(rageUiCall3, rageUiCall4, rageUiCall5, textValue5)
rageUiCall2 = RegisterNetEvent
rageUiCall3 = "4a71260cab"
-- Beginner: this function handles network event "4a71260cab".
function rageUiCall4()
  local arg1, numberValue, numberValue2, iterator, cmgCall2
  arg1 = RageUI
  arg1 = arg1.Visible
  numberValue = RMenu
  numberValue2 = numberValue
  numberValue = numberValue.Get
  iterator = "housecctv"
  cmgCall2 = "mainmenu"
  -- Beginner: result below is menu.
  numberValue = numberValue(numberValue2, iterator, cmgCall2)
  numberValue2 = true
  arg1(numberValue, numberValue2)
  while true do
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuOfTypeVisible
    numberValue = "housecctv"
    arg1 = arg1(numberValue)
    if not arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    numberValue = 0
    arg1(numberValue)
  end
  arg1 = numberValue4
  if 0 ~= arg1 then
    arg1 = SetEntityDrawOutline
    numberValue = numberValue4
    numberValue2 = false
    arg1(numberValue, numberValue2)
    arg1 = 0
    numberValue4 = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a71260cab".
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.registerHomeCustomisationButtons
rageUiCall3 = "CCTV Control"
function rageUiCall4()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2
  arg1 = RageUI
  arg1 = arg1.Separator
  numberValue = "~y~Makes all CCTVs in your house controllable"
  arg1(numberValue)
  arg1 = RageUI
  arg1 = arg1.Separator
  numberValue = "~y~View and name them by using /cctv"
  arg1(numberValue)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  numberValue = "Purchase"
  numberValue2 = ""
  iterator = {}
  iterator.RightLabel = "\194\1632,000,000"
  cmgCall2 = true
  function iterator2(arg12, arg2, arg3)
    local flag6, dataTable2
    if arg3 then
      flag6 = TriggerServerEvent
      dataTable2 = "780b19ba17"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "780b19ba17".
      flag6(dataTable2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2)
end
rageUiCall2(rageUiCall3, rageUiCall4)
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.registerHomeCustomisationButtons
rageUiCall3 = "Silent Alarm"
function rageUiCall4()
  local arg1, numberValue, numberValue2, iterator, cmgCall2, iterator2
  arg1 = RageUI
  arg1 = arg1.Separator
  numberValue = "~y~Notifies the police when being broken into"
  arg1(numberValue)
  arg1 = RageUI
  arg1 = arg1.Separator
  numberValue = "~y~The house location and name will be provided"
  arg1(numberValue)
  arg1 = RageUI
  arg1 = arg1.ButtonWithStyle
  numberValue = "Purchase"
  numberValue2 = ""
  iterator = {}
  iterator.RightLabel = "\194\1633,000,000"
  cmgCall2 = true
  function iterator2(arg12, arg2, arg3)
    local flag6, dataTable2
    if arg3 then
      flag6 = TriggerServerEvent
      dataTable2 = "e2673bb257"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e2673bb257".
      flag6(dataTable2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(numberValue, numberValue2, iterator, cmgCall2, iterator2)
end
rageUiCall2(rageUiCall3, rageUiCall4)