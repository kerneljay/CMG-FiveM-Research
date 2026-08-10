--[[
    Beginner Guide: cl_jewelryheist.lua
    ===================================

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
    BEGINNER GUIDE — Jewelryheist
    =============================

    File: cmg/prod/client/events/cl_jewelryheist.lua
    Purpose: This file contains event/minigame logic.

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
      * cfg/cfg_jewelryHeist

    Network/hash identifiers found: 25
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * utk_fingerprint:Start
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * ~INPUT_CELLPHONE_EXTRA_OPTION~
      * ~INPUT_CELLPHONE_SELECT~
      * ~INPUT_CELLPHONE_RIGHT~
      * ~INPUT_CELLPHONE_LEFT~
      * ~INPUT_ATTACK~

]]
local cmgCall, flag12, flag19, flag21, workValue4, numberValue11, numberValue12, workValue7, workValue8, dataTable6, flag, flag2, dataTable, dataTable3, dataTable4, eventRegistration, dataTable5, workValue, eventRegistration2, cmgCall2, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
flag12 = "cfg/cfg_jewelryHeist"
-- Beginner: result below is config.
cmgCall = cmgCall(flag12)
flag12 = false
flag19 = false
flag21 = false
workValue4 = nil
numberValue11 = 0
numberValue12 = 0
workValue7 = nil
workValue8 = nil
dataTable6 = {}
flag = false
flag2 = false
dataTable = {}
dataTable3 = {}
dataTable3.label = "Confirm Selections"
dataTable3.button = "~INPUT_CELLPHONE_EXTRA_OPTION~"
dataTable4 = {}
dataTable4.label = "Select"
dataTable4.button = "~INPUT_CELLPHONE_SELECT~"
eventRegistration = {}
eventRegistration.label = "Next Cell"
eventRegistration.button = "~INPUT_CELLPHONE_RIGHT~"
dataTable5 = {}
dataTable5.label = "Previous Cell"
dataTable5.button = "~INPUT_CELLPHONE_LEFT~"
dataTable[1] = dataTable3
dataTable[2] = dataTable4
dataTable[3] = eventRegistration
dataTable[4] = dataTable5
dataTable3 = {}
dataTable4 = {}
dataTable4.label = "Select"
dataTable4.button = "~INPUT_ATTACK~"
dataTable3[1] = dataTable4
function dataTable4(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2
  arg2 = nil
  if "door" == arg1 then
    arg2 = dataTable
  else
    arg2 = dataTable3
  end
  arg3 = RequestScaleformMovie
  waitCall = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  arg3 = arg3(waitCall)
  while true do
    waitCall = HasScaleformMovieLoaded
    numberValue10 = arg3
    waitCall = waitCall(numberValue10)
    if waitCall then
      break
    end
    waitCall = Wait
    numberValue10 = 0
    waitCall(numberValue10)
  end
  waitCall = BeginScaleformMovieMethod
  numberValue10 = arg3
  textValue4 = "CLEAR_ALL"
  waitCall(numberValue10, textValue4)
  waitCall = BeginScaleformMovieMethod
  numberValue10 = arg3
  textValue4 = "TOGGLE_MOUSE_BUTTONS"
  waitCall(numberValue10, textValue4)
  waitCall = ScaleformMovieMethodAddParamBool
  numberValue10 = false
  waitCall(numberValue10)
  waitCall = EndScaleformMovieMethod
  waitCall()
  waitCall = ipairs
  numberValue10 = arg2
  waitCall, numberValue10, textValue4, numberValue13 = waitCall(numberValue10)
  for numberValue14, numberValue15 in waitCall, numberValue10, textValue4, numberValue13 do
    workValue9 = BeginScaleformMovieMethod
    textValue = arg3
    textValue2 = "SET_DATA_SLOT"
    workValue9(textValue, textValue2)
    workValue9 = ScaleformMovieMethodAddParamInt
    textValue = numberValue14 - 1
    workValue9(textValue)
    workValue9 = _ENV
    textValue = "ScaleformMovieMethodAddParamPlayerNameString"
    workValue9 = workValue9[textValue]
    textValue = numberValue15.button
    workValue9(textValue)
    workValue9 = _ENV
    textValue = "ScaleformMovieMethodAddParamTextureNameString"
    workValue9 = workValue9[textValue]
    textValue = numberValue15.label
    workValue9(textValue)
    workValue9 = EndScaleformMovieMethod
    workValue9()
  end
  waitCall = BeginScaleformMovieMethod
  numberValue10 = arg3
  textValue4 = "DRAW_INSTRUCTIONAL_BUTTONS"
  waitCall(numberValue10, textValue4)
  waitCall = ScaleformMovieMethodAddParamInt
  numberValue10 = -1
  waitCall(numberValue10)
  waitCall = EndScaleformMovieMethod
  waitCall()
  while true do
    waitCall = flag2
    if not waitCall then
      break
    end
    waitCall = Wait
    numberValue10 = 0
    waitCall(numberValue10)
    waitCall = DrawScaleformMovieFullscreen
    numberValue10 = arg3
    textValue4 = 255
    numberValue13 = 255
    numberValue14 = 255
    numberValue15 = 255
    workValue9 = 0
    waitCall(numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9)
  end
  waitCall = SetScaleformMovieAsNoLongerNeeded
  numberValue10 = arg3
  waitCall(numberValue10)
end
eventRegistration = RegisterNetEvent
dataTable5 = "467e878893"
-- Beginner: this function handles network event "467e878893".
function workValue(arg1)
  local arg2
  flag19 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "467e878893".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "4ad99ff8df"
-- Beginner: this function handles network event "4ad99ff8df".
function workValue(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6
  arg2 = tCMG
  arg2 = arg2.addMarker
  arg3 = arg1.coords
  arg3 = arg3.x
  waitCall = arg1.coords
  waitCall = waitCall.y
  numberValue10 = arg1.coords
  numberValue10 = numberValue10.z
  numberValue10 = numberValue10 - 0.35
  textValue4 = 0.3
  numberValue13 = 0.3
  numberValue14 = 0.3
  numberValue15 = 255
  workValue9 = 255
  textValue = 255
  textValue2 = 200
  dataTable2 = 30
  numberValue = 0
  flag3 = false
  flag4 = true
  flag6 = false
  arg2 = arg2(arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6)
  numberValue11 = arg2
  arg2 = AddBlipForRadius
  arg3 = arg1.coords
  arg3 = arg3.x
  waitCall = math
  waitCall = waitCall.random
  numberValue10 = -15
  textValue4 = 15
  waitCall = waitCall(numberValue10, textValue4)
  arg3 = arg3 + waitCall
  waitCall = arg1.coords
  waitCall = waitCall.y
  numberValue10 = math
  numberValue10 = numberValue10.random
  textValue4 = -15
  numberValue13 = 15
  numberValue10 = numberValue10(textValue4, numberValue13)
  waitCall = waitCall + numberValue10
  numberValue10 = arg1.coords
  numberValue10 = numberValue10.z
  textValue4 = 20.0
  -- Beginner: result below is blipHandle.
  arg2 = arg2(arg3, waitCall, numberValue10, textValue4)
  workValue4 = arg2
  arg2 = SetBlipColour
  arg3 = workValue4
  waitCall = 1
  arg2(arg3, waitCall)
  arg2 = SetBlipAlpha
  arg3 = workValue4
  waitCall = 200
  arg2(arg3, waitCall)
  function arg2()
    local arg12, arg22
    arg12 = drawNativeNotification
    arg22 = "Press ~INPUT_CONTEXT~ to collect the device"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(arg22)
  end
  function arg3()
    local arg12, arg22
  end
  function waitCall()
    local arg12, arg22, textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6, numberValue7, numberValue8, numberValue9
    arg12 = IsControlJustPressed
    arg22 = 0
    textValue3 = 38
    arg12 = arg12(arg22, textValue3)
    if arg12 then
      arg12 = flag21
      if not arg12 then
        arg12 = tCMG
        arg12 = arg12.notify
        arg22 = "~g~Collecting..."
        -- Beginner: Show a notification to the player.
        arg12(arg22)
        arg12 = true
        flag21 = arg12
        arg12 = "anim@heists@ornate_bank@hack"
        arg22 = RequestAnimDict
        textValue3 = arg12
        arg22(textValue3)
        arg22 = RequestModel
        textValue3 = "hei_prop_hst_laptop"
        arg22(textValue3)
        arg22 = RequestModel
        textValue3 = "hei_p_m_bag_var22_arm_s"
        arg22(textValue3)
        arg22 = RequestModel
        textValue3 = "hei_prop_heist_card_hack_02"
        arg22(textValue3)
        while true do
          arg22 = HasAnimDictLoaded
          textValue3 = arg12
          arg22 = arg22(textValue3)
          if arg22 then
            arg22 = HasModelLoaded
            textValue3 = "hei_prop_hst_laptop"
            arg22 = arg22(textValue3)
            if arg22 then
              arg22 = HasModelLoaded
              textValue3 = "hei_p_m_bag_var22_arm_s"
              arg22 = arg22(textValue3)
              if arg22 then
                arg22 = HasModelLoaded
                textValue3 = "hei_prop_heist_card_hack_02"
                arg22 = arg22(textValue3)
                if arg22 then
                  break
                end
              end
            end
          end
          arg22 = Citizen
          arg22 = arg22.Wait
          textValue3 = 100
          arg22(textValue3)
        end
        arg22 = CMG
        arg22 = arg22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        textValue3 = GetEntityCoords
        workValue3 = arg22
        -- Beginner: result below is entityCoords.
        textValue3 = textValue3(workValue3)
        workValue3 = GetEntityRotation
        workValue5 = arg22
        workValue3 = workValue3(workValue5)
        workValue5 = GetAnimInitialOffsetPosition
        workValue6 = arg12
        textValue5 = "hack_enter"
        textValue6 = arg1.coords
        textValue6 = textValue6.x
        position5 = arg1.coords
        position5 = position5.y
        position6 = arg1.coords
        position6 = position6.z
        position6 = position6 + 0.692
        position = arg1.coords
        position = position.x
        position2 = arg1.coords
        position2 = position2.y
        position3 = arg1.coords
        position3 = position3.z
        position3 = position3 + 0.692
        numberValue2 = 0
        numberValue3 = 2
        workValue5 = workValue5(workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3)
        workValue6 = GetAnimInitialOffsetPosition
        textValue5 = arg12
        textValue6 = "hack_loop"
        position5 = arg1.coords
        position5 = position5.x
        position6 = arg1.coords
        position6 = position6.y
        position = arg1.coords
        position = position.z
        position = position + 0.692
        position2 = arg1.coords
        position2 = position2.x
        position3 = arg1.coords
        position3 = position3.y
        numberValue2 = arg1.coords
        numberValue2 = numberValue2.z
        numberValue2 = numberValue2 + 0.692
        numberValue3 = 0
        flag5 = 2
        workValue6 = workValue6(textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5)
        textValue5 = GetAnimInitialOffsetPosition
        textValue6 = arg12
        position5 = "hack_exit"
        position6 = arg1.coords
        position6 = position6.x
        position = arg1.coords
        position = position.y
        position2 = arg1.coords
        position2 = position2.z
        position2 = position2 + 0.692
        position3 = arg1.coords
        position3 = position3.x
        numberValue2 = arg1.coords
        numberValue2 = numberValue2.y
        numberValue3 = arg1.coords
        numberValue3 = numberValue3.z
        numberValue3 = numberValue3 + 0.692
        flag5 = 0
        flag7 = 2
        textValue5 = textValue5(textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7)
        textValue6 = FreezeEntityPosition
        position5 = arg22
        position6 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        textValue6(position5, position6)
        textValue6 = SetEntityHeading
        position5 = CMG
        position5 = position5.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        position5 = position5()
        position6 = arg1.h
        -- Beginner: Change the direction an entity is facing.
        textValue6(position5, position6)
        textValue6 = NetworkCreateSynchronisedScene
        position5 = workValue5.x
        position6 = workValue5.y
        position = workValue5.z
        position2 = workValue3.x
        position3 = workValue3.y
        numberValue2 = workValue3.z
        numberValue3 = 2
        flag5 = false
        flag7 = false
        flag8 = 1065353216
        numberValue5 = 0
        flag11 = 1.3
        textValue6 = textValue6(position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11)
        position5 = CMG
        position5 = position5.requestEntitySpawn
        position6 = "jewelryheist_bag"
        position5(position6)
        position5 = CreateObject
        position6 = GetHashKey
        position = "hei_p_m_bag_var22_arm_s"
        -- Beginner: result below is hash.
        position6 = position6(position)
        position = textValue3.x
        position2 = textValue3.y
        position3 = textValue3.z
        numberValue2 = true
        numberValue3 = true
        flag5 = false
        -- Beginner: result below is objectEntity.
        position5 = position5(position6, position, position2, position3, numberValue2, numberValue3, flag5)
        position6 = CMG
        position6 = position6.requestEntitySpawn
        position = "jewelryheist_laptop"
        position6(position)
        position6 = CreateObject
        position = GetHashKey
        position2 = "hei_prop_hst_laptop"
        -- Beginner: result below is hash.
        position = position(position2)
        position2 = textValue3.x
        position3 = textValue3.y
        numberValue2 = textValue3.z
        numberValue3 = true
        flag5 = true
        flag7 = false
        -- Beginner: result below is objectEntity.
        position6 = position6(position, position2, position3, numberValue2, numberValue3, flag5, flag7)
        position = CMG
        position = position.requestEntitySpawn
        position2 = "jewelryheist_card"
        position(position2)
        position = CreateObject
        position2 = GetHashKey
        position3 = "hei_prop_heist_card_hack_02"
        -- Beginner: result below is hash.
        position2 = position2(position3)
        position3 = textValue3.x
        numberValue2 = textValue3.y
        numberValue3 = textValue3.z
        flag5 = true
        flag7 = true
        flag8 = false
        -- Beginner: result below is objectEntity.
        position = position(position2, position3, numberValue2, numberValue3, flag5, flag7, flag8)
        position2 = SetModelAsNoLongerNeeded
        position3 = -676527372
        position2(position3)
        position2 = SetModelAsNoLongerNeeded
        position3 = -944468481
        position2(position3)
        position2 = SetModelAsNoLongerNeeded
        position3 = -411901183
        position2(position3)
        position2 = NetworkAddPedToSynchronisedScene
        position3 = arg22
        numberValue2 = textValue6
        numberValue3 = arg12
        flag5 = "hack_enter"
        flag7 = 1.5
        flag8 = -4.0
        numberValue5 = 1
        flag11 = 16
        flag14 = 1148846080
        numberValue6 = 0
        position2(position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position5
        numberValue2 = textValue6
        numberValue3 = arg12
        flag5 = "hack_enter_bag"
        flag7 = 4.0
        flag8 = -8.0
        numberValue5 = 1
        position2(position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position6
        numberValue2 = textValue6
        numberValue3 = arg12
        flag5 = "hack_enter_laptop"
        flag7 = 4.0
        flag8 = -8.0
        numberValue5 = 1
        position2(position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
        position2 = NetworkAddEntityToSynchronisedScene
        position3 = position
        numberValue2 = textValue6
        numberValue3 = arg12
        flag5 = "hack_enter_card"
        flag7 = 4.0
        flag8 = -8.0
        numberValue5 = 1
        position2(position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
        position2 = NetworkCreateSynchronisedScene
        position3 = workValue6.x
        numberValue2 = workValue6.y
        numberValue3 = workValue6.z
        flag5 = workValue3.x
        flag7 = workValue3.y
        flag8 = workValue3.z
        numberValue5 = 2
        flag11 = false
        flag14 = true
        numberValue6 = 1065353216
        numberValue7 = 0
        numberValue8 = 1.3
        position2 = position2(position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6, numberValue7, numberValue8)
        position3 = NetworkAddPedToSynchronisedScene
        numberValue2 = arg22
        numberValue3 = position2
        flag5 = arg12
        flag7 = "hack_loop"
        flag8 = 1.5
        numberValue5 = -4.0
        flag11 = 1
        flag14 = 16
        numberValue6 = 1148846080
        numberValue7 = 0
        position3(numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6, numberValue7)
        position3 = NetworkAddEntityToSynchronisedScene
        numberValue2 = position5
        numberValue3 = position2
        flag5 = arg12
        flag7 = "hack_loop_bag"
        flag8 = 4.0
        numberValue5 = -8.0
        flag11 = 1
        position3(numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11)
        position3 = NetworkAddEntityToSynchronisedScene
        numberValue2 = position6
        numberValue3 = position2
        flag5 = arg12
        flag7 = "hack_loop_laptop"
        flag8 = 4.0
        numberValue5 = -8.0
        flag11 = 1
        position3(numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11)
        position3 = NetworkAddEntityToSynchronisedScene
        numberValue2 = position
        numberValue3 = position2
        flag5 = arg12
        flag7 = "hack_loop_card"
        flag8 = 4.0
        numberValue5 = -8.0
        flag11 = 1
        position3(numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11)
        position3 = NetworkCreateSynchronisedScene
        numberValue2 = textValue5.x
        numberValue3 = textValue5.y
        flag5 = textValue5.z
        flag7 = workValue3.x
        flag8 = workValue3.y
        numberValue5 = workValue3.z
        flag11 = 2
        flag14 = false
        numberValue6 = false
        numberValue7 = 1065353216
        numberValue8 = 0
        numberValue9 = 1.3
        position3 = position3(numberValue2, numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6, numberValue7, numberValue8, numberValue9)
        numberValue2 = NetworkAddPedToSynchronisedScene
        numberValue3 = arg22
        flag5 = position3
        flag7 = arg12
        flag8 = "hack_exit"
        numberValue5 = 1.5
        flag11 = -4.0
        flag14 = 1
        numberValue6 = 16
        numberValue7 = 1148846080
        numberValue8 = 0
        numberValue2(numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14, numberValue6, numberValue7, numberValue8)
        numberValue2 = NetworkAddEntityToSynchronisedScene
        numberValue3 = position5
        flag5 = position3
        flag7 = arg12
        flag8 = "hack_exit_bag"
        numberValue5 = 4.0
        flag11 = -8.0
        flag14 = 1
        numberValue2(numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14)
        numberValue2 = NetworkAddEntityToSynchronisedScene
        numberValue3 = position6
        flag5 = position3
        flag7 = arg12
        flag8 = "hack_exit_laptop"
        numberValue5 = 4.0
        flag11 = -8.0
        flag14 = 1
        numberValue2(numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14)
        numberValue2 = NetworkAddEntityToSynchronisedScene
        numberValue3 = position
        flag5 = position3
        flag7 = arg12
        flag8 = "hack_exit_card"
        numberValue5 = 4.0
        flag11 = -8.0
        flag14 = 1
        numberValue2(numberValue3, flag5, flag7, flag8, numberValue5, flag11, flag14)
        numberValue2 = NetworkStartSynchronisedScene
        numberValue3 = textValue6
        numberValue2(numberValue3)
        numberValue2 = NetworkStartSynchronisedScene
        numberValue3 = position2
        numberValue2(numberValue3)
        numberValue2 = NetworkStartSynchronisedScene
        numberValue3 = position3
        numberValue2(numberValue3)
        numberValue2 = Citizen
        numberValue2 = numberValue2.CreateThread
        function numberValue3()
          local serverEventCall, cmgCall3, flag20, position4
          serverEventCall = Wait
          cmgCall3 = 20000
          serverEventCall(cmgCall3)
          serverEventCall = TriggerServerEvent
          cmgCall3 = "35d0aa7978"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35d0aa7978".
          serverEventCall(cmgCall3)
          serverEventCall = FreezeEntityPosition
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall3 = cmgCall3()
          flag20 = false
          -- Beginner: Freeze or unfreeze an entity in place.
          serverEventCall(cmgCall3, flag20)
          serverEventCall = ClearPedTasks
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getPlayerPed
          cmgCall3, flag20, position4 = cmgCall3()
          serverEventCall(cmgCall3, flag20, position4)
          serverEventCall = tCMG
          serverEventCall = serverEventCall.teleport
          cmgCall3 = arg1.coords
          cmgCall3 = cmgCall3.x
          flag20 = arg1.coords
          flag20 = flag20.y
          position4 = arg1.coords
          position4 = position4.z
          serverEventCall(cmgCall3, flag20, position4)
          serverEventCall = false
          flag21 = serverEventCall
          serverEventCall = RemoveAnimDict
          cmgCall3 = arg12
          serverEventCall(cmgCall3)
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        numberValue2(numberValue3)
      end
    end
  end
  numberValue10 = CMG
  numberValue10 = numberValue10.createArea
  textValue4 = "jewelry_collect_device"
  numberValue13 = arg1.coords
  numberValue14 = 1.25
  numberValue15 = 10
  workValue9 = arg2
  textValue = arg3
  textValue2 = waitCall
  dataTable2 = {}
  -- Beginner: Create an interaction area around a world position.
  numberValue10(textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
  numberValue10 = SetTimeout
  textValue4 = 600000
  function numberValue13()
    local arg12, arg22
    arg12 = tCMG
    arg12 = arg12.removeArea
    arg22 = "jewelry_collect_device"
    arg12(arg22)
    arg12 = tCMG
    arg12 = arg12.removeBlip
    arg22 = workValue4
    arg12(arg22)
  end
  numberValue10(textValue4, numberValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4ad99ff8df".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "bc45a4ab25"
-- Beginner: this function handles network event "bc45a4ab25".
function workValue()
  local arg1, arg2
  arg1 = tCMG
  arg1 = arg1.removeArea
  arg2 = "jewelry_collect_device"
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.removeMarker
  arg2 = numberValue11
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.removeBlip
  arg2 = workValue4
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bc45a4ab25".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "310cd6d4da"
-- Beginner: this function handles network event "310cd6d4da".
function workValue()
  local arg1, arg2, arg3, waitCall, numberValue10, textValue4
  arg1 = Citizen
  arg1 = arg1.CreateThread
  -- Beginner: this function handles network event "310cd6d4da".
  function arg2()
    local arg12, arg22
    arg12 = Wait
    arg22 = 2500
    arg12(arg22)
    arg12 = true
    flag2 = arg12
    arg12 = dataTable4
    arg12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.setPlayerCombatTimer
  arg2 = 300
  arg3 = false
  arg1(arg2, arg3)
  arg1 = TriggerEvent
  arg2 = "utk_fingerprint:Start"
  arg3 = 4
  waitCall = 1
  numberValue10 = 2
  function textValue4(arg12, arg22)
    local textValue3, workValue3, workValue5
    if arg12 then
      textValue3 = tCMG
      textValue3 = textValue3.notify
      workValue3 = "~g~Succesfully hacked!"
      -- Beginner: Show a notification to the player.
      textValue3(workValue3)
      textValue3 = TriggerServerEvent
      workValue3 = "cd95eba9b2"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd95eba9b2".
      textValue3(workValue3)
    else
      textValue3 = tCMG
      textValue3 = textValue3.notify
      workValue3 = "~r~Failed. Reason: "
      workValue5 = arg22
      workValue3 = workValue3 .. workValue5
      -- Beginner: Show a notification to the player.
      textValue3(workValue3)
    end
    textValue3 = false
    flag2 = textValue3
    textValue3 = CMG
    textValue3 = textValue3.setPlayerCombatTimer
    workValue3 = 300
    workValue5 = false
    textValue3(workValue3, workValue5)
  end
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "utk_fingerprint:Start".
  arg1(arg2, arg3, waitCall, numberValue10, textValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "310cd6d4da".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "260aad147f"
-- Beginner: this function handles network event "260aad147f".
function workValue()
  local arg1, arg2, arg3
  arg1 = Citizen
  arg1 = arg1.CreateThread
  -- Beginner: this function handles network event "260aad147f".
  function arg2()
    local arg12, arg22
    arg12 = Wait
    arg22 = 2500
    arg12(arg22)
    arg12 = true
    flag2 = arg12
    arg12 = dataTable4
    arg12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.setPlayerCombatTimer
  arg2 = 300
  arg3 = false
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.startDataCrackMinigame
  arg2 = 5
  function arg3(arg12)
    local arg22, textValue3, workValue3
    if arg12 then
      arg22 = TriggerServerEvent
      textValue3 = "d4f413ecfa"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4f413ecfa".
      arg22(textValue3)
    else
      arg22 = TriggerServerEvent
      textValue3 = "8c2687cf85"
      arg22(textValue3)
    end
    arg22 = false
    flag2 = arg22
    arg22 = CMG
    arg22 = arg22.setPlayerCombatTimer
    textValue3 = 300
    workValue3 = false
    arg22(textValue3, workValue3)
  end
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "260aad147f".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "9cd2581e01"
-- Beginner: this function handles network event "9cd2581e01".
function workValue(arg1)
  local arg2, arg3, waitCall
  while true do
    arg2 = numberValue12
    if 0 ~= arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = FreezeEntityPosition
  arg3 = numberValue12
  waitCall = arg1
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, waitCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9cd2581e01".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "dd5ea1245d"
-- Beginner: this function handles network event "dd5ea1245d".
function workValue(arg1)
  local arg2, arg3, waitCall
  if arg1 then
    arg2 = PrepareAlarm
    arg3 = "JEWEL_STORE_HEIST_ALARMS"
    arg2(arg3)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 1000
    arg2(arg3)
    arg2 = StartAlarm
    arg3 = "JEWEL_STORE_HEIST_ALARMS"
    waitCall = false
    arg2(arg3, waitCall)
  else
    arg2 = StopAlarm
    arg3 = "JEWEL_STORE_HEIST_ALARMS"
    waitCall = true
    arg2(arg3, waitCall)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd5ea1245d".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "01ab20498d"
-- Beginner: this function handles network event "01ab20498d".
function workValue()
  local arg1, arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9
  arg1 = true
  arg2 = 0
  arg3 = 0
  waitCall = SetTimeout
  numberValue10 = 600000
  -- Beginner: this function handles network event "01ab20498d".
  function textValue4()
    local arg12, arg22
    arg12 = false
    arg1 = arg12
  end
  waitCall(numberValue10, textValue4)
  waitCall = Citizen
  waitCall = waitCall.CreateThread
  function numberValue10()
    local arg12, arg22, textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6
    arg12 = 9
    arg22 = 0
    textValue3 = -1
    for workValue3 = arg12, arg22, textValue3 do
      arg2 = workValue3
      workValue5 = 59
      workValue6 = 0
      textValue5 = -1
      for textValue6 = workValue5, workValue6, textValue5 do
        arg3 = textValue6
        position5 = Wait
        position6 = 1000
        position5(position6)
      end
      workValue5 = Wait
      workValue6 = 1000
      workValue5(workValue6)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  waitCall(numberValue10)
  while arg1 do
    waitCall = CMG
    waitCall = waitCall.createTimerBars
    -- Beginner: result below is timerBars.
    waitCall = waitCall()
    numberValue10 = arg3 / 10
    if numberValue10 < 1 then
      numberValue10 = waitCall.push
      textValue4 = "TIME TO LOOT:"
      numberValue13 = arg2
      numberValue14 = ":"
      numberValue15 = "0"
      workValue9 = arg3
      numberValue13 = numberValue13 .. numberValue14 .. numberValue15 .. workValue9
      numberValue10(textValue4, numberValue13)
    else
      numberValue10 = waitCall.push
      textValue4 = "TIME TO LOOT:"
      numberValue13 = arg2
      numberValue14 = ":"
      numberValue15 = arg3
      numberValue13 = numberValue13 .. numberValue14 .. numberValue15
      numberValue10(textValue4, numberValue13)
    end
    numberValue10 = waitCall.draw
    numberValue10()
    numberValue10 = Citizen
    numberValue10 = numberValue10.Wait
    textValue4 = 0
    numberValue10(textValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "01ab20498d".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "fd6817347b"
-- Beginner: this function handles network event "fd6817347b".
function workValue(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6
  if arg1 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    arg3 = cmgCall.hackDoorCoords
    arg3 = arg3.x
    waitCall = cmgCall.hackDoorCoords
    waitCall = waitCall.y
    numberValue10 = cmgCall.hackDoorCoords
    numberValue10 = numberValue10.z
    textValue4 = 0.4
    numberValue13 = 0.4
    numberValue14 = 0.5
    numberValue15 = 200
    workValue9 = 0
    textValue = 0
    textValue2 = 255
    dataTable2 = 30
    numberValue = 27
    flag3 = false
    flag4 = false
    flag6 = false
    arg2 = arg2(arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6)
    workValue7 = arg2
    function arg2()
      local arg12, arg22
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      arg22 = "police.onduty.permission"
      arg12 = arg12(arg22)
      if not arg12 then
        arg12 = drawNativeNotification
        arg22 = "Press ~INPUT_CONTEXT~ to hack the keypad"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg12(arg22)
      end
    end
    function arg3()
      local arg12, arg22
    end
    function waitCall()
      local arg12, arg22, textValue3
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      arg22 = "police.onduty.permission"
      arg12 = arg12(arg22)
      if not arg12 then
        arg12 = IsControlJustPressed
        arg22 = 0
        textValue3 = 38
        arg12 = arg12(arg22, textValue3)
        if arg12 then
          arg12 = CMG
          arg12 = arg12.disableSittingOnChairThisFrame
          arg12()
          arg12 = TriggerServerEvent
          arg22 = "f3e7651548"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f3e7651548".
          arg12(arg22)
        end
      end
    end
    numberValue10 = CMG
    numberValue10 = numberValue10.createArea
    textValue4 = "jewelry_hack_door"
    numberValue13 = cmgCall.hackDoorCoords
    numberValue14 = 1.25
    numberValue15 = 10
    workValue9 = arg2
    textValue = arg3
    textValue2 = waitCall
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue10(textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
  else
    arg2 = tCMG
    arg2 = arg2.removeArea
    arg3 = "jewelry_hack_door"
    arg2(arg3)
    arg2 = tCMG
    arg2 = arg2.removeMarker
    arg3 = workValue7
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fd6817347b".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "1282769acf"
-- Beginner: this function handles network event "1282769acf".
function workValue(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6
  if arg1 then
    arg2 = tCMG
    arg2 = arg2.addMarker
    arg3 = cmgCall.hackComputerCoords
    arg3 = arg3.x
    waitCall = cmgCall.hackComputerCoords
    waitCall = waitCall.y
    numberValue10 = cmgCall.hackComputerCoords
    numberValue10 = numberValue10.z
    textValue4 = 0.4
    numberValue13 = 0.4
    numberValue14 = 0.5
    numberValue15 = 200
    workValue9 = 0
    textValue = 0
    textValue2 = 255
    dataTable2 = 30
    numberValue = 27
    flag3 = false
    flag4 = false
    flag6 = false
    arg2 = arg2(arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6)
    workValue8 = arg2
    function arg2()
      local arg12, arg22
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      arg22 = "police.onduty.permission"
      arg12 = arg12(arg22)
      if not arg12 then
        arg12 = drawNativeNotification
        arg22 = "Press ~INPUT_CONTEXT~ to hack the computer"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg12(arg22)
      end
    end
    function arg3()
      local arg12, arg22
    end
    function waitCall()
      local arg12, arg22, textValue3
      arg12 = CMG
      arg12 = arg12.hasClientPermission
      arg22 = "police.onduty.permission"
      arg12 = arg12(arg22)
      if not arg12 then
        arg12 = IsControlJustPressed
        arg22 = 0
        textValue3 = 38
        arg12 = arg12(arg22, textValue3)
        if arg12 then
          arg12 = CMG
          arg12 = arg12.disableSittingOnChairThisFrame
          arg12()
          arg12 = TriggerServerEvent
          arg22 = "bc593643a6"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bc593643a6".
          arg12(arg22)
        end
      end
    end
    numberValue10 = CMG
    numberValue10 = numberValue10.createArea
    textValue4 = "jewelry_hack_computer"
    numberValue13 = cmgCall.hackComputerCoords
    numberValue14 = 1.25
    numberValue15 = 10
    workValue9 = arg2
    textValue = arg3
    textValue2 = waitCall
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue10(textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
  else
    arg2 = tCMG
    arg2 = arg2.removeArea
    arg3 = "jewelry_hack_computer"
    arg2(arg3)
    arg2 = tCMG
    arg2 = arg2.removeMarker
    arg3 = workValue8
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1282769acf".
eventRegistration(dataTable5, workValue)
eventRegistration = RegisterNetEvent
dataTable5 = "8e9dbb00b3"
-- Beginner: this function handles network event "8e9dbb00b3".
function workValue(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue
  arg2 = GetEntityCoords
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue = arg3()
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue)
  arg3 = cmgCall.jewelryCases
  arg3 = arg3[arg1]
  arg3 = arg3.coords
  arg2 = arg2 - arg3
  arg2 = #arg2
  arg3 = 350
  if arg2 <= arg3 then
    arg2 = GetClosestObjectOfType
    arg3 = cmgCall.jewelryCases
    arg3 = arg3[arg1]
    arg3 = arg3.coords
    arg3 = arg3.x
    waitCall = cmgCall.jewelryCases
    waitCall = waitCall[arg1]
    waitCall = waitCall.coords
    waitCall = waitCall.y
    numberValue10 = cmgCall.jewelryCases
    numberValue10 = numberValue10[arg1]
    numberValue10 = numberValue10.coords
    numberValue10 = numberValue10.z
    textValue4 = 0.5
    numberValue13 = cmgCall.jewelryCases
    numberValue13 = numberValue13[arg1]
    numberValue13 = numberValue13.modelHash
    numberValue14 = false
    numberValue15 = true
    workValue9 = true
    -- Beginner: result below is objectEntity.
    arg2 = arg2(arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9)
    if nil ~= arg2 then
      arg3 = nil
      waitCall = cmgCall.jewelryCases
      waitCall = waitCall[arg1]
      waitCall = waitCall.modelHash
      if 37228785 == waitCall then
        arg3 = -1469834270
        waitCall = RequestModel
        numberValue10 = arg3
        waitCall(numberValue10)
        while true do
          waitCall = HasModelLoaded
          numberValue10 = arg3
          waitCall = waitCall(numberValue10)
          if waitCall then
            break
          end
          waitCall = Citizen
          waitCall = waitCall.Wait
          numberValue10 = 0
          waitCall(numberValue10)
        end
      else
        waitCall = cmgCall.jewelryCases
        waitCall = waitCall[arg1]
        waitCall = waitCall.modelHash
        if -1846370968 == waitCall then
          arg3 = 1097883532
          waitCall = RequestModel
          numberValue10 = arg3
          waitCall(numberValue10)
          while true do
            waitCall = HasModelLoaded
            numberValue10 = arg3
            waitCall = waitCall(numberValue10)
            if waitCall then
              break
            end
            waitCall = Citizen
            waitCall = waitCall.Wait
            numberValue10 = 0
            waitCall(numberValue10)
          end
        else
          waitCall = cmgCall.jewelryCases
          waitCall = waitCall[arg1]
          waitCall = waitCall.modelHash
          if 1768229041 == waitCall then
            arg3 = 2103335194
            waitCall = RequestModel
            numberValue10 = arg3
            waitCall(numberValue10)
            while true do
              waitCall = HasModelLoaded
              numberValue10 = arg3
              waitCall = waitCall(numberValue10)
              if waitCall then
                break
              end
              waitCall = Citizen
              waitCall = waitCall.Wait
              numberValue10 = 0
              waitCall(numberValue10)
            end
          else
            waitCall = cmgCall.jewelryCases
            waitCall = waitCall[arg1]
            waitCall = waitCall.modelHash
            if -1880169779 == waitCall then
              arg3 = -677416883
              waitCall = RequestModel
              numberValue10 = arg3
              waitCall(numberValue10)
              while true do
                waitCall = HasModelLoaded
                numberValue10 = arg3
                waitCall = waitCall(numberValue10)
                if waitCall then
                  break
                end
                waitCall = Citizen
                waitCall = waitCall.Wait
                numberValue10 = 0
                waitCall(numberValue10)
              end
            end
          end
        end
      end
      waitCall = CreateModelSwap
      numberValue10 = cmgCall.jewelryCases
      numberValue10 = numberValue10[arg1]
      numberValue10 = numberValue10.coords
      numberValue10 = numberValue10.x
      textValue4 = cmgCall.jewelryCases
      textValue4 = textValue4[arg1]
      textValue4 = textValue4.coords
      textValue4 = textValue4.y
      numberValue13 = cmgCall.jewelryCases
      numberValue13 = numberValue13[arg1]
      numberValue13 = numberValue13.coords
      numberValue13 = numberValue13.z
      numberValue14 = 1.25
      numberValue15 = cmgCall.jewelryCases
      numberValue15 = numberValue15[arg1]
      numberValue15 = numberValue15.modelHash
      workValue9 = arg3
      textValue = true
      waitCall(numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue)
      waitCall = SetModelAsNoLongerNeeded
      numberValue10 = arg3
      waitCall(numberValue10)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8e9dbb00b3".
eventRegistration(dataTable5, workValue)
function eventRegistration(arg1, arg2, arg3)
  local waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2
  waitCall = CreateCam
  numberValue10 = "DEFAULT_SCRIPTED_CAMERA"
  textValue4 = false
  -- Beginner: result below is cameraHandle.
  waitCall = waitCall(numberValue10, textValue4)
  numberValue10 = GetOffsetFromEntityInWorldCoords
  textValue4 = arg1
  numberValue13 = 1.5
  numberValue14 = 0.0
  numberValue15 = 1.0
  numberValue10 = numberValue10(textValue4, numberValue13, numberValue14, numberValue15)
  textValue4 = GetOffsetFromEntityInWorldCoords
  numberValue13 = arg1
  numberValue14 = 0.0
  numberValue15 = 1.0
  workValue9 = 1.5
  textValue4 = textValue4(numberValue13, numberValue14, numberValue15, workValue9)
  numberValue13 = SetCamCoord
  numberValue14 = waitCall
  numberValue15 = numberValue10.x
  workValue9 = numberValue10.y
  textValue = numberValue10.z
  numberValue13(numberValue14, numberValue15, workValue9, textValue)
  numberValue13 = PointCamAtCoord
  numberValue14 = waitCall
  numberValue15 = CMG
  numberValue15 = numberValue15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue15 = numberValue15()
  numberValue15 = numberValue15.x
  workValue9 = CMG
  workValue9 = workValue9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workValue9 = workValue9()
  workValue9 = workValue9.y
  textValue = CMG
  textValue = textValue.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue = textValue()
  textValue = textValue.z
  numberValue13(numberValue14, numberValue15, workValue9, textValue)
  numberValue13 = SetCamActive
  numberValue14 = waitCall
  numberValue15 = true
  numberValue13(numberValue14, numberValue15)
  numberValue13 = RenderScriptCams
  numberValue14 = true
  numberValue15 = true
  workValue9 = 0
  textValue = true
  textValue2 = false
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
  numberValue13 = RequestModel
  numberValue14 = -1386034965
  numberValue13(numberValue14)
  while true do
    numberValue13 = HasModelLoaded
    numberValue14 = -1386034965
    numberValue13 = numberValue13(numberValue14)
    if numberValue13 then
      break
    end
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 0
    numberValue13(numberValue14)
  end
  numberValue13 = Citizen
  numberValue13 = numberValue13.Wait
  numberValue14 = 1500
  numberValue13(numberValue14)
  numberValue13 = SetCamCoord
  numberValue14 = waitCall
  numberValue15 = textValue4.x
  workValue9 = textValue4.y
  textValue = textValue4.z
  numberValue13(numberValue14, numberValue15, workValue9, textValue)
  numberValue13 = PointCamAtCoord
  numberValue14 = waitCall
  numberValue15 = CMG
  numberValue15 = numberValue15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue15 = numberValue15()
  numberValue15 = numberValue15.x
  workValue9 = CMG
  workValue9 = workValue9.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workValue9 = workValue9()
  workValue9 = workValue9.y
  textValue = CMG
  textValue = textValue.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue = textValue()
  textValue = textValue.z
  numberValue13(numberValue14, numberValue15, workValue9, textValue)
  if arg3 then
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 1250
    numberValue13(numberValue14)
  else
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 2700
    numberValue13(numberValue14)
  end
  numberValue13 = RenderScriptCams
  numberValue14 = false
  numberValue15 = true
  workValue9 = 400
  textValue = true
  textValue2 = false
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
  numberValue13 = DestroyCam
  numberValue14 = waitCall
  numberValue15 = false
  numberValue13(numberValue14, numberValue15)
  numberValue13 = ClearPedTasks
  numberValue14 = CMG
  numberValue14 = numberValue14.getPlayerPed
  numberValue14, numberValue15, workValue9, textValue, textValue2 = numberValue14()
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
end
function dataTable5(arg1, arg2, arg3)
  local waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2
  waitCall = CreateCam
  numberValue10 = "DEFAULT_SCRIPTED_CAMERA"
  textValue4 = false
  -- Beginner: result below is cameraHandle.
  waitCall = waitCall(numberValue10, textValue4)
  numberValue10 = GetOffsetFromEntityInWorldCoords
  textValue4 = arg1
  numberValue13 = 2.5
  numberValue14 = 1.0
  numberValue15 = 1.5
  numberValue10 = numberValue10(textValue4, numberValue13, numberValue14, numberValue15)
  textValue4 = SetCamCoord
  numberValue13 = waitCall
  numberValue14 = numberValue10.x
  numberValue15 = numberValue10.y
  workValue9 = numberValue10.z
  textValue4(numberValue13, numberValue14, numberValue15, workValue9)
  textValue4 = SetCamFov
  numberValue13 = waitCall
  numberValue14 = 35.2071
  textValue4(numberValue13, numberValue14)
  textValue4 = CMG
  textValue4 = textValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue4 = textValue4()
  numberValue13 = PointCamAtCoord
  numberValue14 = waitCall
  numberValue15 = textValue4.x
  workValue9 = textValue4.y
  textValue = textValue4.z
  numberValue13(numberValue14, numberValue15, workValue9, textValue)
  numberValue13 = SetCamActive
  numberValue14 = waitCall
  numberValue15 = true
  numberValue13(numberValue14, numberValue15)
  numberValue13 = RenderScriptCams
  numberValue14 = true
  numberValue15 = true
  workValue9 = 3000
  textValue = true
  textValue2 = false
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
  numberValue13 = RequestModel
  numberValue14 = -1386034965
  numberValue13(numberValue14)
  while true do
    numberValue13 = HasModelLoaded
    numberValue14 = -1386034965
    numberValue13 = numberValue13(numberValue14)
    if numberValue13 then
      break
    end
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 0
    numberValue13(numberValue14)
  end
  if arg3 then
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 2900
    numberValue13(numberValue14)
  else
    numberValue13 = Citizen
    numberValue13 = numberValue13.Wait
    numberValue14 = 3700
    numberValue13(numberValue14)
  end
  numberValue13 = RenderScriptCams
  numberValue14 = false
  numberValue15 = true
  workValue9 = 400
  textValue = true
  textValue2 = false
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
  numberValue13 = DestroyCam
  numberValue14 = waitCall
  numberValue15 = false
  numberValue13(numberValue14, numberValue15)
  numberValue13 = ClearPedTasks
  numberValue14 = CMG
  numberValue14 = numberValue14.getPlayerPed
  numberValue14, numberValue15, workValue9, textValue, textValue2 = numberValue14()
  numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2)
end
function workValue(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13
  arg2 = dataTable6
  arg2 = arg2[arg1]
  if not arg2 then
    function arg2()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to break the glass"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    function arg3()
      local arg12, arg22
    end
    function waitCall(arg12)
      local arg22, textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5
      arg22 = IsControlJustPressed
      textValue3 = 0
      workValue3 = 38
      arg22 = arg22(textValue3, workValue3)
      if arg22 then
        arg22 = flag
        if not arg22 then
          arg22 = GetEntityHealth
          textValue3 = PlayerPedId
          textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5 = textValue3()
          -- Beginner: result below is health.
          arg22 = arg22(textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
          if arg22 > 102 then
            arg22 = CMG
            arg22 = arg22.hasClientPermission
            textValue3 = "police.onduty.permission"
            arg22 = arg22(textValue3)
            if not arg22 then
              arg22 = GetSelectedPedWeapon
              textValue3 = CMG
              textValue3 = textValue3.getPlayerPed
              textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5 = textValue3()
              -- Beginner: result below is weaponHash.
              arg22 = arg22(textValue3, workValue3, workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
              if -1569615261 ~= arg22 then
                arg22 = RequestScriptAudioBank
                textValue3 = "DLC_CMGHEIST\\GLASS_BREAK"
                workValue3 = false
                arg22(textValue3, workValue3)
                arg22 = math
                arg22 = arg22.random
                textValue3 = 1
                workValue3 = 3
                arg22 = arg22(textValue3, workValue3)
                textValue3 = true
                flag = textValue3
                textValue3 = CMG
                textValue3 = textValue3.getPlayerCoords
                -- Beginner: result below is playerCoords.
                textValue3 = textValue3()
                workValue3 = GetClosestObjectOfType
                workValue5 = textValue3.x
                workValue6 = textValue3.y
                textValue5 = textValue3.z
                textValue6 = 0.5
                position5 = arg12.modelHash
                position6 = false
                position = true
                position2 = true
                -- Beginner: result below is objectEntity.
                workValue3 = workValue3(workValue5, workValue6, textValue5, textValue6, position5, position6, position, position2)
                workValue5 = FreezeEntityPosition
                workValue6 = CMG
                workValue6 = workValue6.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                workValue6 = workValue6()
                textValue5 = true
                -- Beginner: Freeze or unfreeze an entity in place.
                workValue5(workValue6, textValue5)
                if 0 ~= workValue3 then
                  workValue5 = GetEntityCoords
                  workValue6 = workValue3
                  -- Beginner: result below is entityCoords.
                  workValue5 = workValue5(workValue6)
                  workValue6 = RequestAnimDict
                  textValue5 = "missheist_jewel"
                  workValue6(textValue5)
                  while true do
                    workValue6 = HasAnimDictLoaded
                    textValue5 = "missheist_jewel"
                    workValue6 = workValue6(textValue5)
                    if workValue6 then
                      break
                    end
                    workValue6 = Citizen
                    workValue6 = workValue6.Wait
                    textValue5 = 0
                    workValue6(textValue5)
                  end
                  workValue6 = ""
                  textValue5 = arg12.modelHash
                  if 37228785 == textValue5 then
                    workValue6 = -1469834270
                    textValue5 = RequestModel
                    textValue6 = workValue6
                    textValue5(textValue6)
                    while true do
                      textValue5 = HasModelLoaded
                      textValue6 = workValue6
                      textValue5 = textValue5(textValue6)
                      if textValue5 then
                        break
                      end
                      textValue5 = Citizen
                      textValue5 = textValue5.Wait
                      textValue6 = 0
                      textValue5(textValue6)
                    end
                  else
                    textValue5 = arg12.modelHash
                    if -1846370968 == textValue5 then
                      workValue6 = 1097883532
                      textValue5 = RequestModel
                      textValue6 = workValue6
                      textValue5(textValue6)
                      while true do
                        textValue5 = HasModelLoaded
                        textValue6 = workValue6
                        textValue5 = textValue5(textValue6)
                        if textValue5 then
                          break
                        end
                        textValue5 = Citizen
                        textValue5 = textValue5.Wait
                        textValue6 = 0
                        textValue5(textValue6)
                      end
                    else
                      textValue5 = arg12.modelHash
                      if 1768229041 == textValue5 then
                        workValue6 = 2103335194
                        textValue5 = RequestModel
                        textValue6 = workValue6
                        textValue5(textValue6)
                        while true do
                          textValue5 = HasModelLoaded
                          textValue6 = workValue6
                          textValue5 = textValue5(textValue6)
                          if textValue5 then
                            break
                          end
                          textValue5 = Citizen
                          textValue5 = textValue5.Wait
                          textValue6 = 0
                          textValue5(textValue6)
                        end
                      else
                        textValue5 = arg12.modelHash
                        if -1880169779 == textValue5 then
                          workValue6 = -677416883
                          textValue5 = RequestModel
                          textValue6 = workValue6
                          textValue5(textValue6)
                          while true do
                            textValue5 = HasModelLoaded
                            textValue6 = workValue6
                            textValue5 = textValue5(textValue6)
                            if textValue5 then
                              break
                            end
                            textValue5 = Citizen
                            textValue5 = textValue5.Wait
                            textValue6 = 0
                            textValue5(textValue6)
                          end
                        end
                      end
                    end
                  end
                  textValue5 = RequestNamedPtfxAsset
                  textValue6 = "scr_jewelheist"
                  textValue5(textValue6)
                  while true do
                    textValue5 = HasNamedPtfxAssetLoaded
                    textValue6 = "scr_jewelheist"
                    textValue5 = textValue5(textValue6)
                    if textValue5 then
                      break
                    end
                    textValue5 = Citizen
                    textValue5 = textValue5.Wait
                    textValue6 = 0
                    textValue5(textValue6)
                  end
                  textValue5 = UseParticleFxAsset
                  textValue6 = "scr_jewelheist"
                  textValue5(textValue6)
                  textValue5 = StartParticleFxNonLoopedOnEntity
                  textValue6 = "scr_jewel_cab_smash"
                  position5 = GetCurrentPedWeaponEntityIndex
                  position6 = CMG
                  position6 = position6.getPlayerPed
                  position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5 = position6()
                  position5 = position5(position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
                  position6 = 0.0
                  position = 0.0
                  position2 = 0.0
                  position3 = 0.0
                  numberValue2 = 0.0
                  numberValue3 = 0.0
                  flag5 = 1065353216
                  flag7 = false
                  flag8 = false
                  numberValue5 = false
                  textValue5(textValue6, position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
                  textValue5 = CreateModelSwap
                  textValue6 = workValue5.x
                  position5 = workValue5.y
                  position6 = workValue5.z
                  position = 1.25
                  position2 = arg12.modelHash
                  position3 = workValue6
                  numberValue2 = true
                  textValue5(textValue6, position5, position6, position, position2, position3, numberValue2)
                  textValue5 = SetEntityHeading
                  textValue6 = CMG
                  textValue6 = textValue6.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  textValue6 = textValue6()
                  position5 = cmgCall.jewelryCases
                  position6 = arg1
                  position5 = position5[position6]
                  position5 = position5.heading
                  -- Beginner: Change the direction an entity is facing.
                  textValue5(textValue6, position5)
                  textValue5 = SetModelAsNoLongerNeeded
                  textValue6 = workValue6
                  textValue5(textValue6)
                  textValue5 = RemoveNamedPtfxAsset
                  textValue6 = "scr_jewelheist"
                  textValue5(textValue6)
                end
                workValue5 = nil
                workValue6 = math
                workValue6 = workValue6.random
                textValue5 = 1
                textValue6 = 2
                workValue6 = workValue6(textValue5, textValue6)
                if 1 == workValue6 then
                  workValue5 = eventRegistration
                elseif 2 == workValue6 then
                  workValue5 = dataTable5
                end
                textValue5 = CMG
                textValue5 = textValue5.getPlayerCoords
                -- Beginner: result below is playerCoords.
                textValue5 = textValue5()
                textValue6 = PlaySoundFromCoord
                position5 = -1
                position6 = "glass_break_"
                position = arg22
                position6 = position6 .. position
                position = textValue5.x
                position2 = textValue5.y
                position3 = textValue5.z
                numberValue2 = "dlc_cmgheist_soundset"
                numberValue3 = false
                flag5 = 20.0
                flag7 = false
                textValue6(position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7)
                textValue6 = arg12.modelHash
                if -1880169779 == textValue6 then
                  textValue6 = TaskPlayAnim
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = "missheist_jewel"
                  position = "smash_case_necklace_skull"
                  position2 = 1000.0
                  position3 = -4.0
                  numberValue2 = -1
                  numberValue3 = 1
                  flag5 = 1148846080
                  flag7 = false
                  flag8 = false
                  numberValue5 = false
                  -- Beginner: Play an animation on a ped.
                  textValue6(position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
                  textValue6 = workValue5
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = CMG
                  position6 = position6.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  position6 = position6()
                  position = true
                  textValue6(position5, position6, position)
                else
                  textValue6 = TaskPlayAnim
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = "missheist_jewel"
                  position = "smash_case"
                  position2 = 1000.0
                  position3 = -4.0
                  numberValue2 = -1
                  numberValue3 = 1
                  flag5 = 1148846080
                  flag7 = false
                  flag8 = false
                  numberValue5 = false
                  -- Beginner: Play an animation on a ped.
                  textValue6(position5, position6, position, position2, position3, numberValue2, numberValue3, flag5, flag7, flag8, numberValue5)
                  textValue6 = workValue5
                  position5 = CMG
                  position5 = position5.getPlayerPed
                  -- Beginner: result below is localPlayerPed.
                  position5 = position5()
                  position6 = CMG
                  position6 = position6.getPlayerCoords
                  -- Beginner: result below is playerCoords.
                  position6 = position6()
                  position = false
                  textValue6(position5, position6, position)
                end
                textValue6 = FreezeEntityPosition
                position5 = CMG
                position5 = position5.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                position5 = position5()
                position6 = false
                -- Beginner: Freeze or unfreeze an entity in place.
                textValue6(position5, position6)
                textValue6 = TriggerServerEvent
                position5 = "5c0b4e086f"
                position6 = arg12.caseId
                -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5c0b4e086f".
                textValue6(position5, position6)
                textValue6 = CMG
                textValue6 = textValue6.setPlayerCombatTimer
                position5 = 300
                position6 = false
                textValue6(position5, position6)
                textValue6 = Citizen
                textValue6 = textValue6.Wait
                position5 = 1000
                textValue6(position5)
                textValue6 = SetModelAsNoLongerNeeded
                position5 = -1386034965
                textValue6(position5)
                textValue6 = RemoveAnimDict
                position5 = "missheist_jewel"
                textValue6(position5)
                textValue6 = false
                flag = textValue6
              else
                arg22 = tCMG
                arg22 = arg22.notify
                textValue3 = "~r~You must be holding a weapon to smash the glass!"
                -- Beginner: Show a notification to the player.
                arg22(textValue3)
              end
            else
              arg22 = TriggerServerEvent
              textValue3 = "9cf990fd76"
              workValue3 = arg12.caseId
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9cf990fd76".
              arg22(textValue3, workValue3)
              arg22 = tCMG
              arg22 = arg22.removeArea
              textValue3 = "break_glass_"
              workValue3 = arg12.caseId
              textValue3 = textValue3 .. workValue3
              arg22(textValue3)
            end
          end
        end
      end
    end
    numberValue10 = dataTable6
    textValue4 = tCMG
    textValue4 = textValue4.addMarker
    numberValue13 = cmgCall.jewelryCases
    numberValue13 = numberValue13[arg1]
    numberValue13 = numberValue13.coords
    numberValue13 = numberValue13.x
    numberValue14 = cmgCall.jewelryCases
    numberValue14 = numberValue14[arg1]
    numberValue14 = numberValue14.coords
    numberValue14 = numberValue14.y
    numberValue15 = cmgCall.jewelryCases
    numberValue15 = numberValue15[arg1]
    numberValue15 = numberValue15.coords
    numberValue15 = numberValue15.z
    numberValue15 = numberValue15 - 0.35
    workValue9 = 0.2
    textValue = 0.2
    textValue2 = 0.2
    dataTable2 = 255
    numberValue = 255
    flag3 = 0
    flag4 = 200
    flag6 = 30
    numberValue4 = 0
    flag9 = false
    flag10 = true
    flag13 = false
    textValue4 = textValue4(numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13)
    numberValue10[arg1] = textValue4
    numberValue10 = CMG
    numberValue10 = numberValue10.createArea
    textValue4 = "break_glass_"
    numberValue13 = arg1
    textValue4 = textValue4 .. numberValue13
    numberValue13 = cmgCall.jewelryCases
    numberValue13 = numberValue13[arg1]
    numberValue13 = numberValue13.coords
    numberValue14 = 1.25
    numberValue15 = 10
    workValue9 = arg2
    textValue = arg3
    textValue2 = waitCall
    dataTable2 = {}
    dataTable2.caseId = arg1
    numberValue = cmgCall.jewelryCases
    numberValue = numberValue[arg1]
    numberValue = numberValue.modelHash
    dataTable2.modelHash = numberValue
    numberValue = cmgCall.jewelryCases
    numberValue = numberValue[arg1]
    numberValue = numberValue.heading
    dataTable2.heading = numberValue
    numberValue = cmgCall.jewelryCases
    numberValue = numberValue[arg1]
    numberValue = numberValue.coords
    dataTable2.caseCoords = numberValue
    -- Beginner: Create an interaction area around a world position.
    numberValue10(textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
  end
end
eventRegistration2 = RegisterNetEvent
cmgCall2 = "b26b1159ef"
-- Beginner: this function handles network event "b26b1159ef".
function workValue2(arg1, arg2)
  local arg3, waitCall, numberValue10
  if arg2 then
    arg3 = workValue
    waitCall = arg1
    arg3(waitCall)
  else
    arg3 = tCMG
    arg3 = arg3.removeArea
    waitCall = "break_glass_"
    numberValue10 = arg1
    waitCall = waitCall .. numberValue10
    arg3(waitCall)
    arg3 = tCMG
    arg3 = arg3.removeMarker
    waitCall = dataTable6
    waitCall = waitCall[arg1]
    arg3(waitCall)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b26b1159ef".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function workValue2(arg1, arg2)
  local arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15, flag16, flag17, flag18
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg3()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to exit via the roof"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function waitCall()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, textValue3, workValue3
      arg12 = IsControlJustPressed
      arg22 = 0
      textValue3 = 38
      arg12 = arg12(arg22, textValue3)
      if arg12 then
        arg12 = SetEntityHeading
        arg22 = CMG
        arg22 = arg22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        textValue3 = 217.38
        -- Beginner: Change the direction an entity is facing.
        arg12(arg22, textValue3)
        arg12 = tCMG
        arg12 = arg12.teleport
        arg22 = cmgCall.exitTeleporterCoords
        arg22 = arg22.x
        textValue3 = cmgCall.exitTeleporterCoords
        textValue3 = textValue3.y
        workValue3 = cmgCall.exitTeleporterCoords
        workValue3 = workValue3.z
        arg12(arg22, textValue3, workValue3)
      end
    end
    textValue4 = tCMG
    textValue4 = textValue4.addBlip
    numberValue13 = cmgCall.enterTeleporterCoords
    numberValue13 = numberValue13.x
    numberValue14 = cmgCall.enterTeleporterCoords
    numberValue14 = numberValue14.y
    numberValue15 = cmgCall.enterTeleporterCoords
    numberValue15 = numberValue15.z
    workValue9 = 617
    textValue = 0
    textValue2 = "Jewelry Store"
    dataTable2 = 0.7
    textValue4 = textValue4(numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
    numberValue13 = CMG
    numberValue13 = numberValue13.addBlipContext
    numberValue14 = "Civilian"
    numberValue15 = textValue4
    numberValue13(numberValue14, numberValue15)
    numberValue13 = tCMG
    numberValue13 = numberValue13.addMarker
    numberValue14 = cmgCall.enterTeleporterCoords
    numberValue14 = numberValue14.x
    numberValue15 = cmgCall.enterTeleporterCoords
    numberValue15 = numberValue15.y
    workValue9 = cmgCall.enterTeleporterCoords
    workValue9 = workValue9.z
    workValue9 = workValue9 - 1
    textValue = 0.4
    textValue2 = 0.4
    dataTable2 = 0.5
    numberValue = 255
    flag3 = 255
    flag4 = 255
    flag6 = 255
    numberValue4 = 30
    flag9 = 27
    flag10 = false
    flag13 = false
    flag15 = false
    -- Beginner: Create a world marker.
    numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15)
    numberValue13 = CMG
    numberValue13 = numberValue13.createArea
    numberValue14 = "jewelry_teleport"
    numberValue15 = cmgCall.enterTeleporterCoords
    workValue9 = 1.25
    textValue = 10
    textValue2 = arg3
    dataTable2 = waitCall
    numberValue = numberValue10
    -- Beginner: Create an interaction area around a world position.
    numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue)
    function numberValue13()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to enter the jewelry store"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    function numberValue14()
      local arg12, arg22
    end
    function numberValue15()
      local arg12, arg22, textValue3, workValue3
      arg12 = IsControlJustPressed
      arg22 = 0
      textValue3 = 38
      arg12 = arg12(arg22, textValue3)
      if arg12 then
        arg12 = SetEntityHeading
        arg22 = CMG
        arg22 = arg22.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg22 = arg22()
        textValue3 = 217.38
        -- Beginner: Change the direction an entity is facing.
        arg12(arg22, textValue3)
        arg12 = tCMG
        arg12 = arg12.teleport
        arg22 = cmgCall.enterTeleporterCoords
        arg22 = arg22.x
        textValue3 = cmgCall.enterTeleporterCoords
        textValue3 = textValue3.y
        workValue3 = cmgCall.enterTeleporterCoords
        workValue3 = workValue3.z
        arg12(arg22, textValue3, workValue3)
      end
    end
    workValue9 = tCMG
    workValue9 = workValue9.addMarker
    textValue = cmgCall.exitTeleporterCoords
    textValue = textValue.x
    textValue2 = cmgCall.exitTeleporterCoords
    textValue2 = textValue2.y
    dataTable2 = cmgCall.exitTeleporterCoords
    dataTable2 = dataTable2.z
    dataTable2 = dataTable2 - 1
    numberValue = 0.4
    flag3 = 0.4
    flag4 = 0.5
    flag6 = 255
    numberValue4 = 255
    flag9 = 255
    flag10 = 255
    flag13 = 30
    flag15 = 27
    flag16 = false
    flag17 = false
    flag18 = false
    -- Beginner: Create a world marker.
    workValue9(textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15, flag16, flag17, flag18)
    workValue9 = CMG
    workValue9 = workValue9.createArea
    textValue = "jewelry_teleport2"
    textValue2 = cmgCall.exitTeleporterCoords
    dataTable2 = 1.25
    numberValue = 10
    flag3 = numberValue13
    flag4 = numberValue14
    flag6 = numberValue15
    -- Beginner: Create an interaction area around a world position.
    workValue9(textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function workValue2(arg1, arg2)
  local arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15, flag16, flag17, flag18
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function arg3()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to enter the facility"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function waitCall()
      local arg12, arg22
    end
    function numberValue10()
      local arg12, arg22, textValue3, workValue3
      arg12 = IsControlJustPressed
      arg22 = 0
      textValue3 = 38
      arg12 = arg12(arg22, textValue3)
      if arg12 then
        arg12 = flag19
        if arg12 then
          arg12 = tCMG
          arg12 = arg12.teleport
          arg22 = cmgCall.aiMissionTeleporterExit
          arg22 = arg22.x
          textValue3 = cmgCall.aiMissionTeleporterExit
          textValue3 = textValue3.y
          workValue3 = cmgCall.aiMissionTeleporterExit
          workValue3 = workValue3.z
          arg12(arg22, textValue3, workValue3)
          arg12 = true
          flag12 = arg12
          arg12 = Citizen
          arg12 = arg12.Wait
          arg22 = 1000
          arg12(arg22)
          arg12 = TriggerServerEvent
          arg22 = "2f5c0de9d4"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2f5c0de9d4".
          arg12(arg22)
        else
          arg12 = tCMG
          arg12 = arg12.notify
          arg22 = "~r~You cannot enter right now."
          -- Beginner: Show a notification to the player.
          arg12(arg22)
        end
      end
    end
    textValue4 = tCMG
    textValue4 = textValue4.addBlip
    numberValue13 = cmgCall.aiMissionTeleporterEnter
    numberValue13 = numberValue13.x
    numberValue14 = cmgCall.aiMissionTeleporterEnter
    numberValue14 = numberValue14.y
    numberValue15 = cmgCall.aiMissionTeleporterEnter
    numberValue15 = numberValue15.z
    workValue9 = 619
    textValue = 3
    textValue2 = "Jewelry Store Setup"
    dataTable2 = 0.7
    textValue4 = textValue4(numberValue13, numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2)
    numberValue13 = CMG
    numberValue13 = numberValue13.addBlipContext
    numberValue14 = "Civilian"
    numberValue15 = textValue4
    numberValue13(numberValue14, numberValue15)
    numberValue13 = tCMG
    numberValue13 = numberValue13.addMarker
    numberValue14 = cmgCall.aiMissionTeleporterEnter
    numberValue14 = numberValue14.x
    numberValue15 = cmgCall.aiMissionTeleporterEnter
    numberValue15 = numberValue15.y
    workValue9 = cmgCall.aiMissionTeleporterEnter
    workValue9 = workValue9.z
    workValue9 = workValue9 - 0.35
    textValue = 0.3
    textValue2 = 0.3
    dataTable2 = 0.3
    numberValue = 255
    flag3 = 255
    flag4 = 255
    flag6 = 200
    numberValue4 = 30
    flag9 = 0
    flag10 = false
    flag13 = true
    flag15 = false
    -- Beginner: Create a world marker.
    numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15)
    numberValue13 = CMG
    numberValue13 = numberValue13.createArea
    numberValue14 = "ai_mission_teleport"
    numberValue15 = cmgCall.aiMissionTeleporterEnter
    workValue9 = 3.0
    textValue = 10
    textValue2 = arg3
    dataTable2 = waitCall
    numberValue = numberValue10
    -- Beginner: Create an interaction area around a world position.
    numberValue13(numberValue14, numberValue15, workValue9, textValue, textValue2, dataTable2, numberValue)
    function numberValue13()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_CONTEXT~ to exit the facility"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    function numberValue14()
      local arg12, arg22
    end
    function numberValue15()
      local arg12, arg22, textValue3, workValue3
      arg12 = IsControlJustPressed
      arg22 = 0
      textValue3 = 38
      arg12 = arg12(arg22, textValue3)
      if arg12 then
        arg12 = tCMG
        arg12 = arg12.teleport
        arg22 = cmgCall.aiMissionTeleporterEnter
        arg22 = arg22.x
        textValue3 = cmgCall.aiMissionTeleporterEnter
        textValue3 = textValue3.y
        workValue3 = cmgCall.aiMissionTeleporterEnter
        workValue3 = workValue3.z
        arg12(arg22, textValue3, workValue3)
        arg12 = false
        flag12 = arg12
        arg12 = TriggerServerEvent
        arg22 = "1fe477143e"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fe477143e".
        arg12(arg22)
      end
    end
    workValue9 = tCMG
    workValue9 = workValue9.addMarker
    textValue = cmgCall.aiMissionTeleporterExit
    textValue = textValue.x
    textValue2 = cmgCall.aiMissionTeleporterExit
    textValue2 = textValue2.y
    dataTable2 = cmgCall.aiMissionTeleporterExit
    dataTable2 = dataTable2.z
    dataTable2 = dataTable2 - 0.35
    numberValue = 0.3
    flag3 = 0.3
    flag4 = 0.3
    flag6 = 255
    numberValue4 = 255
    flag9 = 255
    flag10 = 200
    flag13 = 30
    flag15 = 0
    flag16 = false
    flag17 = true
    flag18 = false
    -- Beginner: Create a world marker.
    workValue9(textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6, numberValue4, flag9, flag10, flag13, flag15, flag16, flag17, flag18)
    workValue9 = CMG
    workValue9 = workValue9.createArea
    textValue = "ai_mission_teleport2"
    textValue2 = cmgCall.aiMissionTeleporterExit
    dataTable2 = 3.0
    numberValue = 10
    flag3 = numberValue13
    flag4 = numberValue14
    flag6 = numberValue15
    -- Beginner: Create an interaction area around a world position.
    workValue9(textValue, textValue2, dataTable2, numberValue, flag3, flag4, flag6)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function workValue2(arg1, arg2)
  local arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue
  if arg2 then
    arg3 = AddRelationshipGroup
    waitCall = "aiHeist"
    arg3(waitCall)
    arg3 = Citizen
    arg3 = arg3.Wait
    waitCall = 10000
    arg3(waitCall)
    arg3 = GetClosestObjectOfType
    waitCall = cmgCall.hackDoorCoords
    waitCall = waitCall.x
    numberValue10 = cmgCall.hackDoorCoords
    numberValue10 = numberValue10.y
    textValue4 = cmgCall.hackDoorCoords
    textValue4 = textValue4.z
    numberValue13 = 2.0
    numberValue14 = 1335309163
    numberValue15 = false
    workValue9 = false
    textValue = false
    -- Beginner: result below is objectEntity.
    arg3 = arg3(waitCall, numberValue10, textValue4, numberValue13, numberValue14, numberValue15, workValue9, textValue)
    numberValue12 = arg3
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = AddEventHandler
cmgCall2 = "309d290ea8"
-- Beginner: this function runs when client event "309d290ea8" fires.
function workValue2(arg1)
  local arg2, arg3
  if "killed" == arg1 then
    arg2 = flag12
    if arg2 then
      arg2 = TriggerServerEvent
      arg3 = "1fe477143e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1fe477143e".
      arg2(arg3)
      arg2 = TriggerEvent
      arg3 = "bc45a4ab25"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "bc45a4ab25".
      arg2(arg3)
      arg2 = false
      flag12 = arg2
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "309d290ea8".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = RegisterNetEvent
cmgCall2 = "6cebc32739"
-- Beginner: this function handles network event "6cebc32739".
function workValue2(arg1)
  local arg2, arg3, waitCall, numberValue10, textValue4, numberValue13, numberValue14
  while true do
    arg2 = NetworkDoesEntityExistWithNetworkId
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = print
  arg3 = arg1
  waitCall = " exists"
  arg2(arg3, waitCall)
  arg2 = CMG
  arg2 = arg2.getObjectId
  arg3 = arg1
  waitCall = "jewelryMakePedsAttack"
  arg2 = arg2(arg3, waitCall)
  arg3 = SetPedRelationshipGroupHash
  waitCall = arg2
  numberValue10 = "aiHeist"
  arg3(waitCall, numberValue10)
  arg3 = SetRelationshipBetweenGroups
  waitCall = 5
  numberValue10 = "aiHeist"
  textValue4 = GetPedRelationshipGroupHash
  numberValue13 = GetPlayerPed
  numberValue14 = -1
  numberValue13, numberValue14 = numberValue13(numberValue14)
  textValue4, numberValue13, numberValue14 = textValue4(numberValue13, numberValue14)
  arg3(waitCall, numberValue10, textValue4, numberValue13, numberValue14)
  arg3 = SetPedDropsWeaponsWhenDead
  waitCall = arg2
  numberValue10 = false
  arg3(waitCall, numberValue10)
  arg3 = TaskCombatPed
  waitCall = arg2
  numberValue10 = CMG
  numberValue10 = numberValue10.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  numberValue10 = numberValue10()
  textValue4 = 0
  numberValue13 = 0
  arg3(waitCall, numberValue10, textValue4, numberValue13)
  arg3 = SetPedAccuracy
  waitCall = arg2
  numberValue10 = 30
  arg3(waitCall, numberValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6cebc32739".
eventRegistration2(cmgCall2, workValue2)
eventRegistration2 = RegisterNetEvent
cmgCall2 = "30cfc13bf7"
-- Beginner: this function handles network event "30cfc13bf7".
function workValue2()
  local arg1, arg2, arg3, waitCall, numberValue10
  arg1 = CMG
  arg1 = arg1.announceMpSmallMsg
  arg2 = "ALERT"
  arg3 = "An alarm has been triggered at the jewelry store"
  waitCall = 9
  numberValue10 = 10000
  arg1(arg2, arg3, waitCall, numberValue10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30cfc13bf7".
eventRegistration2(cmgCall2, workValue2)