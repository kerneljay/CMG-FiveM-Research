--[[
    LEVEL 1 BEGINNER GUIDE — Homecctv
    ======================================

    File: cmg/prod/client/home/cl_homecctv.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: housing/home gameplay, specifically the Homecctv feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
      * Background threads: 0
      * Always-running loops: 4
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
local cmgOperation, text9, workingValue6, workingValue7, number3, number4, number5, number6, workingValue15, text12, text, rageUiOperation, text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text9 = "cfg/cfg_homecustomisation"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text9)
text9 = nil
workingValue6 = nil
workingValue7 = nil
number3 = 0
number4 = 0
number5 = 0
number6 = 0
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text12 = "housecctv"
text = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text3 = "CCTV"
rageUiOperation2 = "Main Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4, rageUiOperation5, text5, text7 = rageUiOperation4()
rageUiOperation, text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7 = rageUiOperation(text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7)
workingValue15(text12, text, rageUiOperation, text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7)
workingValue15 = RMenu
workingValue15 = workingValue15.Add
text12 = "housecctv"
text = "camerainfo"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text3 = RMenu
rageUiOperation2 = text3
text3 = text3.Get
rageUiOperation3 = "housecctv"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text3 = text3(rageUiOperation2, rageUiOperation3, rageUiOperation4)
rageUiOperation2 = "CCTV"
rageUiOperation3 = "Camera Info"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5, text5, text7 = rageUiOperation5()
rageUiOperation, text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7 = rageUiOperation(text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7)
workingValue15(text12, text, rageUiOperation, text3, rageUiOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text5, text7)
workingValue15 = nil

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5
  number = 1
  number2 = -1
  iterator = pairs
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getHomePlaceableObjects
  cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5 = cmgOperation2()
  iterator, cmgOperation2, iterator2, cmgOperation3 = iterator(cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5)
  for stateFlag9, stateFlag10 in iterator, cmgOperation2, iterator2, cmgOperation3 do
    number7 = cmgOperation.cctvLookup
    stateFlag = stateFlag10[1]
    number7 = number7[stateFlag]
    if number7 then
      stateFlag = text9
      if stateFlag10 == stateFlag then
        number2 = number
      end
      number = number + 1
    end
  end
  if -1 == number2 then
    return
  end
  iterator = number2 + localValue1
  if iterator <= 0 then
    iterator = number
  elseif number < iterator then
    iterator = 1
  end
  cmgOperation2 = 1
  iterator2 = pairs
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getHomePlaceableObjects
  cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5 = cmgOperation3()
  iterator2, cmgOperation3, stateFlag9, stateFlag10 = iterator2(cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5)
  for number7, stateFlag in iterator2, cmgOperation3, stateFlag9, stateFlag10 do
    stateFlag2 = cmgOperation.cctvLookup
    text4 = stateFlag[1]
    stateFlag2 = stateFlag2[text4]
    if stateFlag2 then
      if cmgOperation2 == iterator then
        text4 = "Camera "
        stringHelper = tostring
        workingValue2 = cmgOperation2
        stringHelper = stringHelper(workingValue2)
        text4 = text4 .. stringHelper
        stringHelper = stateFlag[5]
        if stringHelper then
          stringHelper = stateFlag[5]
          stringHelper = stringHelper.camera_name
          if stringHelper then
            stringHelper = stateFlag[5]
            text4 = stringHelper.camera_name
          end
        end
        stringHelper = string
        stringHelper = stringHelper.upper
        workingValue2 = text4
        stringHelper = stringHelper(workingValue2)
        workingValue7 = stringHelper
        stringHelper = text9
        if stringHelper then
          stringHelper = SetEntityVisible
          workingValue2 = text9
          workingValue2 = workingValue2[4]
          stateFlag4 = true
          stateFlag5 = true
          stringHelper(workingValue2, stateFlag4, stateFlag5)
        end
        text9 = stateFlag
        workingValue6 = stateFlag2
        stringHelper = workingValue15
        stringHelper()
        break
      end
      cmgOperation2 = cmgOperation2 + 1
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9
  while true do
    localValue1 = IsControlJustPressed
    number = 0
    number2 = 202
    localValue1 = localValue1(number, number2)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.showAllDisplays
      number = "homecctv"
      localValue1(number)
      localValue1 = ClearTimecycleModifier
      localValue1()
      localValue1 = RenderScriptCams
      number = false
      number2 = false
      iterator = 0
      cmgOperation2 = false
      iterator2 = false
      localValue1(number, number2, iterator, cmgOperation2, iterator2)
      localValue1 = DestroyCam
      number = number3
      number2 = false
      localValue1(number, number2)
      localValue1 = text9
      if localValue1 then
        localValue1 = SetEntityVisible
        number = text9
        number = number[4]
        number2 = true
        iterator = true
        localValue1(number, number2, iterator)
      end
      localValue1 = number5
      if 0 ~= localValue1 then
        localValue1 = SetScaleformMovieAsNoLongerNeeded
        number = number5
        localValue1(number)
        localValue1 = 0
        number5 = localValue1
      end
      localValue1 = number6
      if 0 ~= localValue1 then
        localValue1 = DeleteEntity
        number = number6
        -- Beginner: Delete a GTA entity.
        localValue1(number)
        localValue1 = 0
        number6 = localValue1
      end
      localValue1 = ClearPedTasks
      number = PlayerPedId
      number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9 = number()
      localValue1(number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9)
      localValue1 = 0
      number3 = localValue1
      break
    end
    localValue1 = IsControlJustPressed
    number = 0
    number2 = 189
    localValue1 = localValue1(number, number2)
    if localValue1 then
      localValue1 = text12
      number = -1
      localValue1(number)
    end
    localValue1 = IsControlJustPressed
    number = 0
    number2 = 190
    localValue1 = localValue1(number, number2)
    if localValue1 then
      localValue1 = text12
      number = 1
      localValue1(number)
    end
    localValue1 = workingValue6
    if localValue1 then
      localValue1 = workingValue6.type
      if "fixed" ~= localValue1 then
        localValue1 = GetDisabledControlNormal
        number = 0
        number2 = 220
        localValue1 = localValue1(number, number2)
        number = GetFrameTime
        number = number()
        localValue1 = localValue1 * number
        localValue1 = localValue1 * 250.0
        number = math
        number = number.abs
        number2 = localValue1
        number = number(number2)
        number2 = 0.001
        if number > number2 then
          number = GetCamRot
          number2 = number3
          iterator = 2
          number = number(number2, iterator)
          number2 = SetCamRot
          iterator = number3
          cmgOperation2 = number.x
          iterator2 = number.y
          cmgOperation3 = number.z
          cmgOperation3 = cmgOperation3 - localValue1
          stateFlag9 = 2
          number2(iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9)
        end
      end
    end
    localValue1 = number5
    if 0 ~= localValue1 then
      localValue1 = DrawScaleformMovieFullscreen
      number = number5
      number2 = 255
      iterator = 255
      cmgOperation2 = 255
      iterator2 = 255
      cmgOperation3 = 0
      localValue1(number, number2, iterator, cmgOperation2, iterator2, cmgOperation3)
    end
    localValue1 = workingValue7
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.DrawText
      number = 0.5
      number2 = 0.05
      iterator = workingValue7
      cmgOperation2 = 1.0
      iterator2 = nil
      cmgOperation3 = 0
      localValue1(number, number2, iterator, cmgOperation2, iterator2, cmgOperation3)
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    number = 0
    localValue1(number)
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, number, number2, iterator
  localValue1 = RequestScaleformMovie
  number = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(number)
  while true do
    number = HasScaleformMovieLoaded
    number2 = localValue1
    number = number(number2)
    if number then
      break
    end
    number = Citizen
    number = number.Wait
    number2 = 0
    number(number2)
  end
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "CLEAR_ALL"
  number(number2, iterator)
  number = EndScaleformMovieMethod
  number()
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "SET_DATA_SLOT"
  number(number2, iterator)
  number = ScaleformMovieMethodAddParamInt
  number2 = 0
  number(number2)
  number = _ENV
  number2 = "ScaleformMovieMethodAddParamPlayerNameString"
  number = number[number2]
  number2 = "~INPUT_FRONTEND_CANCEL~"
  number(number2)
  number = BeginTextCommandScaleformString
  number2 = "STRING"
  number(number2)
  number = AddTextComponentSubstringKeyboardDisplay
  number2 = "Exit Viewing"
  number(number2)
  number = EndTextCommandScaleformString
  number()
  number = EndScaleformMovieMethod
  number()
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "SET_DATA_SLOT"
  number(number2, iterator)
  number = ScaleformMovieMethodAddParamInt
  number2 = 1
  number(number2)
  number = _ENV
  number2 = "ScaleformMovieMethodAddParamPlayerNameString"
  number = number[number2]
  number2 = "~INPUT_FRONTEND_RIGHT~"
  number(number2)
  number = BeginTextCommandScaleformString
  number2 = "STRING"
  number(number2)
  number = AddTextComponentSubstringKeyboardDisplay
  number2 = "Next Camera"
  number(number2)
  number = EndTextCommandScaleformString
  number()
  number = EndScaleformMovieMethod
  number()
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "SET_DATA_SLOT"
  number(number2, iterator)
  number = ScaleformMovieMethodAddParamInt
  number2 = 2
  number(number2)
  number = _ENV
  number2 = "ScaleformMovieMethodAddParamPlayerNameString"
  number = number[number2]
  number2 = "~INPUT_FRONTEND_LEFT~"
  number(number2)
  number = BeginTextCommandScaleformString
  number2 = "STRING"
  number(number2)
  number = AddTextComponentSubstringKeyboardDisplay
  number2 = "Previous Camera"
  number(number2)
  number = EndTextCommandScaleformString
  number()
  number = EndScaleformMovieMethod
  number()
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "DRAW_INSTRUCTIONAL_BUTTONS"
  number(number2, iterator)
  number = EndScaleformMovieMethod
  number()
  number = BeginScaleformMovieMethod
  number2 = localValue1
  iterator = "SET_BACKGROUND_COLOUR"
  number(number2, iterator)
  number = ScaleformMovieMethodAddParamInt
  number2 = 0
  number(number2)
  number = ScaleformMovieMethodAddParamInt
  number2 = 0
  number(number2)
  number = ScaleformMovieMethodAddParamInt
  number2 = 0
  number(number2)
  number = ScaleformMovieMethodAddParamInt
  number2 = 80
  number(number2)
  number = EndScaleformMovieMethod
  number()
  number5 = localValue1
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  number = CMG
  number = number.loadModel
  number2 = -1585232418
  -- Beginner: Request/load a GTA model before spawning or applying it.
  number(number2)
  number = CMG
  number = number.requestEntitySpawn
  number2 = "home_cctv_tablet"
  number(number2)
  number = CreateObject
  number2 = -1585232418
  iterator = 0
  cmgOperation2 = 0
  iterator2 = 0
  cmgOperation3 = true
  stateFlag9 = true
  stateFlag10 = true
  -- Beginner: result below is objectEntity.
  number = number(number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10)
  number6 = number
  number = SetModelAsNoLongerNeeded
  number2 = -1585232418
  number(number2)
  number = CMG
  number = number.loadAnimDict
  number2 = "amb@world_human_seat_wall_tablet@female@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  number(number2)
  number = TaskPlayAnim
  number2 = localValue1
  iterator = "amb@world_human_seat_wall_tablet@female@base"
  cmgOperation2 = "base"
  iterator2 = 8.0
  cmgOperation3 = -8.0
  stateFlag9 = -1
  stateFlag10 = 50
  number7 = 0
  stateFlag = false
  stateFlag2 = false
  text4 = false
  -- Beginner: Play an animation on a ped.
  number(number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4)
  number = RemoveAnimDict
  number2 = "amb@world_human_seat_wall_tablet@female@base"
  number(number2)
  number = AttachEntityToEntity
  number2 = number6
  iterator = localValue1
  cmgOperation2 = GetPedBoneIndex
  iterator2 = localValue1
  cmgOperation3 = 57005
  cmgOperation2 = cmgOperation2(iterator2, cmgOperation3)
  iterator2 = 0.17
  cmgOperation3 = 0.1
  stateFlag9 = -0.13
  stateFlag10 = 24.0
  number7 = 180.0
  stateFlag = 180.0
  stateFlag2 = true
  text4 = true
  stringHelper = false
  workingValue2 = true
  stateFlag4 = 1
  stateFlag5 = true
  -- Beginner: Attach one entity to another entity.
  number(number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10, number7, stateFlag, stateFlag2, text4, stringHelper, workingValue2, stateFlag4, stateFlag5)
  number = Citizen
  number = number.CreateThread

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, localValue2, localValue3, stateFlag6, dataCollection2
    while true do
      localValue12 = DoesEntityExist
      localValue2 = number6
      localValue12 = localValue12(localValue2)
      if not localValue12 then
        break
      end
      localValue12 = IsEntityPlayingAnim
      localValue2 = localValue1
      localValue3 = "amb@world_human_seat_wall_tablet@female@base"
      stateFlag6 = "base"
      dataCollection2 = 3
      localValue12 = localValue12(localValue2, localValue3, stateFlag6, dataCollection2)
      if not localValue12 then
        localValue12 = DeleteEntity
        localValue2 = number6
        -- Beginner: Delete a GTA entity.
        localValue12(localValue2)
        return
      end
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue2 = 0
      localValue12(localValue2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number(number2)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10
  localValue1 = assert
  number = workingValue6
  number2 = "A valid cctv must be selected in order to view the camera"
  localValue1(number, number2)
  localValue1 = assert
  number = text9
  number2 = "A valid selectable must be active to view the camera"
  localValue1(number, number2)
  localValue1 = number3
  localValue1 = 0 ~= localValue1
  number = RageUI
  number = number.CloseAll
  number()
  if not localValue1 then
    number = CMG
    number = number.hideAllDisplays
    number2 = "homecctv"
    number(number2)
    number = CreateCam
    number2 = "DEFAULT_SCRIPTED_CAMERA"
    iterator = true
    -- Beginner: result below is cameraHandle.
    number = number(number2, iterator)
    number3 = number
  end
  number = vector3
  number2 = 0.0
  iterator = 0.0
  cmgOperation2 = 0.0
  number = number(number2, iterator, cmgOperation2)
  number2 = workingValue6.offset
  if number2 then
    number2 = workingValue6.offset
    number = number + number2
  end
  number2 = AttachCamToEntity
  iterator = number3
  cmgOperation2 = text9
  cmgOperation2 = cmgOperation2[4]
  iterator2 = number.x
  cmgOperation3 = number.y
  stateFlag9 = number.z
  stateFlag10 = true
  number2(iterator, cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10)
  number2 = GetEntityRotation
  iterator = text9
  iterator = iterator[4]
  cmgOperation2 = 2
  number2 = number2(iterator, cmgOperation2)
  iterator = workingValue6.rotation
  if iterator then
    iterator = workingValue6.rotation
    number2 = number2 + iterator
  end
  iterator = SetCamRot
  cmgOperation2 = number3
  iterator2 = number2.x
  cmgOperation3 = number2.y
  stateFlag9 = number2.z
  stateFlag10 = 2
  iterator(cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10)
  iterator = SetEntityVisible
  cmgOperation2 = text9
  cmgOperation2 = cmgOperation2[4]
  iterator2 = false
  cmgOperation3 = false
  iterator(cmgOperation2, iterator2, cmgOperation3)
  if not localValue1 then
    iterator = RenderScriptCams
    cmgOperation2 = true
    iterator2 = false
    cmgOperation3 = 0
    stateFlag9 = false
    stateFlag10 = false
    iterator(cmgOperation2, iterator2, cmgOperation3, stateFlag9, stateFlag10)
    iterator = SetTimecycleModifier
    cmgOperation2 = "scanline_cam_cheap"
    iterator(cmgOperation2)
    iterator = SetTimecycleModifierStrength
    cmgOperation2 = 1.0
    iterator(cmgOperation2)
    iterator = Citizen
    iterator = iterator.CreateThread
    cmgOperation2 = text
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    iterator(cmgOperation2)
    iterator = rageUiOperation
    iterator()
    iterator = text3
    iterator()
  end
end
workingValue15 = rageUiOperation2
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateWhile
rageUiOperation3 = 1.0
rageUiOperation4 = RMenu
rageUiOperation5 = rageUiOperation4
rageUiOperation4 = rageUiOperation4.Get
text5 = "housecctv"
text7 = "mainmenu"
-- Beginner: result below is menu.
rageUiOperation4 = rageUiOperation4(rageUiOperation5, text5, text7)
rageUiOperation5 = nil

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2, cmgOperation3
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  number = RMenu
  number2 = number
  number = number.Get
  iterator = "housecctv"
  cmgOperation2 = "mainmenu"
  -- Beginner: result below is menu.
  number = number(number2, iterator, cmgOperation2)
  number2 = true
  iterator = false
  cmgOperation2 = true

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local localValue12, localValue2, localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12, workingValue14, text11, stringHelper2, workingValue, text2, dataCollection, stateFlag3, workingValue3, workingValue4, workingValue5, text6, text8
    localValue12 = 1
    localValue2 = pairs
    localValue3 = CMG
    localValue3 = localValue3.getHomePlaceableObjects
    localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12, workingValue14, text11, stringHelper2, workingValue, text2, dataCollection, stateFlag3, workingValue3, workingValue4, workingValue5, text6, text8 = localValue3()
    localValue2, localValue3, stateFlag6, dataCollection2 = localValue2(localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12, workingValue14, text11, stringHelper2, workingValue, text2, dataCollection, stateFlag3, workingValue3, workingValue4, workingValue5, text6, text8)
    for stateFlag7, workingValue12 in localValue2, localValue3, stateFlag6, dataCollection2 do
      workingValue14 = cmgOperation.cctvLookup
      text11 = workingValue12[1]
      workingValue14 = workingValue14[text11]
      if workingValue14 then
        text11 = "Camera "
        stringHelper2 = tostring
        workingValue = localValue12
        stringHelper2 = stringHelper2(workingValue)
        text11 = text11 .. stringHelper2
        stringHelper2 = workingValue12[5]
        if stringHelper2 then
          stringHelper2 = workingValue12[5]
          stringHelper2 = stringHelper2.camera_name
          if stringHelper2 then
            stringHelper2 = workingValue12[5]
            text11 = stringHelper2.camera_name
          end
        end
        stringHelper2 = RageUI
        stringHelper2 = stringHelper2.ButtonWithStyle
        workingValue = text11
        text2 = ""
        dataCollection = {}
        dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag3 = true

        -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue22, localValue32) ===
        function workingValue3(localValue13, localValue22, localValue32)
          local workingValue8, workingValue10, stateFlag8
          if localValue22 then
            workingValue8 = number4
            workingValue10 = number4
            workingValue8 = workingValue8 ~= workingValue10
            workingValue10 = workingValue12
            workingValue10 = workingValue10[4]
            if workingValue8 ~= workingValue10 then
              workingValue8 = SetEntityDrawOutline
              workingValue10 = number4
              stateFlag8 = false
              workingValue8(workingValue10, stateFlag8)
            end
            workingValue8 = SetEntityDrawOutline
            workingValue10 = workingValue12
            workingValue10 = workingValue10[4]
            stateFlag8 = true
            workingValue8(workingValue10, stateFlag8)
            workingValue8 = workingValue12
            workingValue8 = workingValue8[4]
            number4 = workingValue8
          end
          if localValue32 then
            workingValue8 = workingValue12
            text9 = workingValue8
            workingValue8 = workingValue14
            workingValue6 = workingValue8
            workingValue8 = string
            workingValue8 = workingValue8.upper
            workingValue10 = text11
            workingValue8 = workingValue8(workingValue10)
            workingValue7 = workingValue8
          end
        end
        workingValue4 = RMenu
        workingValue5 = workingValue4
        workingValue4 = workingValue4.Get
        text6 = "housecctv"
        text8 = "camerainfo"
        workingValue4, workingValue5, text6, text8 = workingValue4(workingValue5, text6, text8)
        -- Beginner: Draw a selectable RageUI menu button.
        stringHelper2(workingValue, text2, dataCollection, stateFlag3, workingValue3, workingValue4, workingValue5, text6, text8)
        localValue12 = localValue12 + 1
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, localValue2
  end
  localValue1(number, number2, iterator, cmgOperation2, iterator2, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  number = RMenu
  number2 = number
  number = number.Get
  iterator = "housecctv"
  cmgOperation2 = "camerainfo"
  -- Beginner: result below is menu.
  number = number(number2, iterator, cmgOperation2)
  number2 = true
  iterator = false
  cmgOperation2 = true

  -- === HELPER FUNCTION: iterator2() ===
  function iterator2()
    local localValue12, localValue2, localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12
    localValue12 = text9
    if not localValue12 then
      return
    end
    localValue12 = CMG
    localValue12 = localValue12.getHomePlaceableIndex
    localValue2 = text9
    localValue2 = localValue2[4]
    localValue12 = localValue12(localValue2)
    if localValue12 <= 0 then
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      localValue3 = RMenu
      stateFlag6 = localValue3
      localValue3 = localValue3.Get
      dataCollection2 = "housecctv"
      stateFlag7 = "mainmenu"
      -- Beginner: result below is menu.
      localValue3 = localValue3(stateFlag6, dataCollection2, stateFlag7)
      stateFlag6 = true
      localValue2(localValue3, stateFlag6)
      return
    end
    localValue2 = RageUI
    localValue2 = localValue2.ButtonWithStyle
    localValue3 = "View Camera"
    stateFlag6 = ""
    dataCollection2 = {}
    dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13, localValue22, localValue32) ===
    function workingValue12(localValue13, localValue22, localValue32)
      local workingValue8
      if localValue32 then
        workingValue8 = workingValue15
        workingValue8()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue2(localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12)
    localValue2 = RageUI
    localValue2 = localValue2.ButtonWithStyle
    localValue3 = "Set Name"
    stateFlag6 = ""
    dataCollection2 = {}
    dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag7 = true

    -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue13, localValue22, localValue32) ===
    function workingValue12(localValue13, localValue22, localValue32)
      local workingValue8, workingValue10, stateFlag8, workingValue13
      if localValue32 then
        workingValue8 = CMG
        workingValue8 = workingValue8.clientPrompt
        workingValue10 = "Enter Camera Name"
        stateFlag8 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue14) ===
        function workingValue13(localValue14)
          local serverEventCall, text10, workingValue9, workingValue11
          serverEventCall = #localValue14
          if serverEventCall > 2 then
            serverEventCall = #localValue14
            if serverEventCall < 25 then
              serverEventCall = TriggerServerEvent
              text10 = "4c8a1aa1b3"
              workingValue9 = localValue12
              workingValue11 = localValue14
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4c8a1aa1b3".
              serverEventCall(text10, workingValue9, workingValue11)
          end
          else
            serverEventCall = notify
            text10 = "~r~Please enter a name between 3 and 25 characters."
            -- Beginner: Show a notification to the player.
            serverEventCall(text10)
          end
        end
        workingValue8(workingValue10, stateFlag8, workingValue13)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue2(localValue3, stateFlag6, dataCollection2, stateFlag7, workingValue12)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue12, localValue2
  end
  localValue1(number, number2, iterator, cmgOperation2, iterator2, cmgOperation3)
end
rageUiOperation2(rageUiOperation3, rageUiOperation4, rageUiOperation5, text5)
rageUiOperation2 = RegisterNetEvent
rageUiOperation3 = "4a71260cab"
-- Beginner: this function handles network event "4a71260cab".

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, number, number2, iterator, cmgOperation2
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  number = RMenu
  number2 = number
  number = number.Get
  iterator = "housecctv"
  cmgOperation2 = "mainmenu"
  -- Beginner: result below is menu.
  number = number(number2, iterator, cmgOperation2)
  number2 = true
  localValue1(number, number2)
  while true do
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuOfTypeVisible
    number = "housecctv"
    localValue1 = localValue1(number)
    if not localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    number = 0
    localValue1(number)
  end
  localValue1 = number4
  if 0 ~= localValue1 then
    localValue1 = SetEntityDrawOutline
    number = number4
    number2 = false
    localValue1(number, number2)
    localValue1 = 0
    number4 = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4a71260cab".
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.registerHomeCustomisationButtons
rageUiOperation3 = "CCTV Control"

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  number = "~y~Makes all CCTVs in your house controllable"
  localValue1(number)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  number = "~y~View and name them by using /cctv"
  localValue1(number)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  number = "Purchase"
  number2 = ""
  iterator = {}
  iterator.RightLabel = "\194\1632,000,000"
  cmgOperation2 = true

  -- === HELPER FUNCTION: iterator2(localValue12, localValue2, localValue3) ===
  function iterator2(localValue12, localValue2, localValue3)
    local stateFlag6, dataCollection2
    if localValue3 then
      stateFlag6 = TriggerServerEvent
      dataCollection2 = "780b19ba17"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "780b19ba17".
      stateFlag6(dataCollection2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(number, number2, iterator, cmgOperation2, iterator2)
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.registerHomeCustomisationButtons
rageUiOperation3 = "Silent Alarm"

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, number, number2, iterator, cmgOperation2, iterator2
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  number = "~y~Notifies the police when being broken into"
  localValue1(number)
  localValue1 = RageUI
  localValue1 = localValue1.Separator
  number = "~y~The house location and name will be provided"
  localValue1(number)
  localValue1 = RageUI
  localValue1 = localValue1.ButtonWithStyle
  number = "Purchase"
  number2 = ""
  iterator = {}
  iterator.RightLabel = "\194\1633,000,000"
  cmgOperation2 = true

  -- === HELPER FUNCTION: iterator2(localValue12, localValue2, localValue3) ===
  function iterator2(localValue12, localValue2, localValue3)
    local stateFlag6, dataCollection2
    if localValue3 then
      stateFlag6 = TriggerServerEvent
      dataCollection2 = "e2673bb257"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e2673bb257".
      stateFlag6(dataCollection2)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(number, number2, iterator, cmgOperation2, iterator2)
end
rageUiOperation2(rageUiOperation3, rageUiOperation4)
