--[[
    Beginner Guide: cl_pdelevator.lua
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
    BEGINNER GUIDE — Pdelevator
    ===========================

    File: cmg/prod/client/police/cl_pdelevator.lua
    Purpose: This file contains police gameplay.

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

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * ~w~You are on ~b~%s

]]
local dataTable, dataTable2, vector3Builder, numberValue16, numberValue17, numberValue18, numberValue20, numberValue22, numberValue24, numberValue25, numberValue
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.1197509766
numberValue17 = -850.44573974609
numberValue18 = 4.8845114707947
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -1"
vector3Builder = {}
numberValue16 = 2
numberValue17 = 3
numberValue18 = 4
numberValue20 = 5
numberValue22 = 6
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
dataTable[1] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.1131591797
numberValue17 = -850.54858398438
numberValue18 = 10.2770795822
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -2"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 3
numberValue18 = 4
numberValue20 = 5
numberValue22 = 6
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Laboratory, Evidence Rooms"
dataTable[2] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.0910644531
numberValue17 = -850.46240234375
numberValue18 = 13.687476158
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -3"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 4
numberValue20 = 5
numberValue22 = 6
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Garage, Armoury"
dataTable[3] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.3427734375
numberValue17 = -850.41583251953
numberValue18 = 19.001399993896
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 1"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 5
numberValue22 = 6
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
dataTable[4] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.3331298828
numberValue17 = -850.19696044922
numberValue18 = 23.038097381592
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 2"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 4
numberValue22 = 6
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Public Space, Cafe"
dataTable[5] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.2581787109
numberValue17 = -850.19952392578
numberValue18 = 26.827362060547
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 3"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 4
numberValue22 = 5
numberValue24 = 7
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
dataTable[6] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.2662353516
numberValue17 = -850.17083740234
numberValue18 = 30.756698608398
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 4"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 4
numberValue22 = 5
numberValue24 = 6
numberValue25 = 8
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Ops Center, Gold Command Office, Office Staff"
dataTable[7] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1095.9621582031
numberValue17 = -850.63787841797
numberValue18 = 34.360549926758
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 5"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 4
numberValue22 = 5
numberValue24 = 6
numberValue25 = 7
numberValue = 9
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Silver Command Office, Captains Office, Office Staff"
dataTable[8] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1096.4049072266
numberValue17 = -849.94915771484
numberValue18 = 38.242813110352
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 6"
vector3Builder = {}
numberValue16 = 1
numberValue17 = 2
numberValue18 = 3
numberValue20 = 4
numberValue22 = 5
numberValue24 = 6
numberValue25 = 7
numberValue = 8
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
vector3Builder[5] = numberValue22
vector3Builder[6] = numberValue24
vector3Builder[7] = numberValue25
vector3Builder[8] = numberValue
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Helipad, Rooftop"
dataTable[9] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1065.8210449219
numberValue17 = -834.02844238281
numberValue18 = 5.4801788330078
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -1"
vector3Builder = {}
numberValue16 = 11
numberValue17 = 12
numberValue18 = 13
numberValue20 = 14
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
dataTable[10] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1065.8479003906
numberValue17 = -834.02172851563
numberValue18 = 11.037246704102
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -2"
vector3Builder = {}
numberValue16 = 10
numberValue17 = 12
numberValue18 = 13
numberValue20 = 14
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Laboratory, Evidence Rooms"
dataTable[11] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1065.9549560547
numberValue17 = -833.87341308594
numberValue18 = 14.883050918579
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor -3"
vector3Builder = {}
numberValue16 = 10
numberValue17 = 11
numberValue18 = 13
numberValue20 = 14
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Garage, Armoury"
dataTable[12] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1065.8916015625
numberValue17 = -833.84100341797
numberValue18 = 19.035511016846
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 1"
vector3Builder = {}
numberValue16 = 10
numberValue17 = 11
numberValue18 = 12
numberValue20 = 14
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
dataTable[13] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue16 = -1065.9194335938
numberValue17 = -833.87164306641
numberValue18 = 27.036159515381
vector3Builder = vector3Builder(numberValue16, numberValue17, numberValue18)
dataTable2.coords = vector3Builder
dataTable2.name = "Floor 3"
vector3Builder = {}
numberValue16 = 10
numberValue17 = 11
numberValue18 = 12
numberValue20 = 13
vector3Builder[1] = numberValue16
vector3Builder[2] = numberValue17
vector3Builder[3] = numberValue18
vector3Builder[4] = numberValue20
dataTable2.otherLocs = vector3Builder
dataTable2.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
dataTable[14] = dataTable2
dataTable2 = 2
vector3Builder = RMenu
vector3Builder = vector3Builder.Add
numberValue16 = "cmgpdelevators"
numberValue17 = "main"
numberValue18 = RageUI
numberValue18 = numberValue18.CreateMenu
numberValue20 = "CMG Elevators"
numberValue22 = "~b~Vespucci PD"
numberValue24 = CMG
numberValue24 = numberValue24.getRageUIMenuWidth
numberValue24 = numberValue24()
numberValue25 = CMG
numberValue25 = numberValue25.getRageUIMenuHeight
numberValue25, numberValue = numberValue25()
numberValue18, numberValue20, numberValue22, numberValue24, numberValue25, numberValue = numberValue18(numberValue20, numberValue22, numberValue24, numberValue25, numberValue)
vector3Builder(numberValue16, numberValue17, numberValue18, numberValue20, numberValue22, numberValue24, numberValue25, numberValue)
vector3Builder = RageUI
vector3Builder = vector3Builder.CreateWhile
numberValue16 = 1.0
numberValue17 = RMenu
numberValue18 = numberValue17
numberValue17 = numberValue17.Get
numberValue20 = "cmgpdelevators"
numberValue22 = "main"
-- Beginner: result below is menu.
numberValue17 = numberValue17(numberValue18, numberValue20, numberValue22)
numberValue18 = nil
function numberValue20()
  local arg1, arg2, flag8, flag9, flag10, iterator, workValue6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag8 = arg2
  arg2 = arg2.Get
  flag9 = "cmgpdelevators"
  flag10 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(flag8, flag9, flag10)
  flag8 = true
  flag9 = false
  flag10 = true
  function iterator()
    local rageUiCall, workValue2, numberValue13, textValue2, workValue5, rageUiCall2, nameValue, workValue8, flag11, workValue12
    rageUiCall = 1
    numberValue13 = dataTable2
    workValue2 = dataTable
    workValue2 = workValue2[numberValue13]
    workValue2 = workValue2.otherLocs
    workValue2 = #workValue2
    numberValue13 = 1
    for textValue2 = rageUiCall, workValue2, numberValue13 do
      rageUiCall2 = dataTable2
      workValue5 = dataTable
      workValue5 = workValue5[rageUiCall2]
      workValue5 = workValue5.otherLocs
      workValue5 = workValue5[textValue2]
      rageUiCall2 = RageUI
      rageUiCall2 = rageUiCall2.Button
      nameValue = dataTable
      nameValue = nameValue[workValue5]
      nameValue = nameValue.name
      workValue8 = dataTable
      workValue8 = workValue8[workValue5]
      workValue8 = workValue8.desc
      flag11 = true
      function workValue12(arg12, arg22, arg3)
        local cmgCall2, waitCall, numberValue19, numberValue21, numberValue23, workValue10, workValue13, flag, flag2, flag3, flag4
        if arg3 then
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgCall2 = cmgCall2()
          waitCall = DoScreenFadeOut
          numberValue19 = 500
          waitCall(numberValue19)
          waitCall = Citizen
          waitCall = waitCall.Wait
          numberValue19 = 500
          waitCall(numberValue19)
          numberValue19 = workValue5
          waitCall = dataTable
          waitCall = waitCall[numberValue19]
          waitCall = waitCall.coords
          numberValue19 = SetEntityCoords
          numberValue21 = cmgCall2
          numberValue23 = waitCall.x
          workValue10 = waitCall.y
          workValue13 = waitCall.z
          flag = false
          flag2 = false
          flag3 = false
          flag4 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          numberValue19(numberValue21, numberValue23, workValue10, workValue13, flag, flag2, flag3, flag4)
          numberValue19 = SetEntityHeading
          numberValue21 = cmgCall2
          numberValue23 = 35.0
          -- Beginner: Change the direction an entity is facing.
          numberValue19(numberValue21, numberValue23)
          numberValue19 = DoScreenFadeIn
          numberValue21 = 700
          numberValue19(numberValue21)
          numberValue19 = Citizen
          numberValue19 = numberValue19.Wait
          numberValue21 = 500
          numberValue19(numberValue21)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall2(nameValue, workValue8, flag11, workValue12)
    end
  end
  function workValue6()
    local rageUiCall, workValue2
  end
  arg1(arg2, flag8, flag9, flag10, iterator, workValue6)
end
vector3Builder(numberValue16, numberValue17, numberValue18, numberValue20)
vector3Builder = AddEventHandler
numberValue16 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function numberValue17(arg1, arg2)
  local flag8, flag9, flag10, iterator, workValue6, workValue7, workValue9, workValue11, workValue, cmgCall, textValue, position, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, flag5, flag6, flag7, workValue3, workValue4, numberValue12, numberValue14, numberValue15
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function flag8()
      local rageUiCall, workValue2, numberValue13, textValue2, workValue5
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Visible
      workValue2 = RMenu
      numberValue13 = workValue2
      workValue2 = workValue2.Get
      textValue2 = "cmgpdelevators"
      workValue5 = "main"
      -- Beginner: result below is menu.
      workValue2 = workValue2(numberValue13, textValue2, workValue5)
      numberValue13 = true
      rageUiCall(workValue2, numberValue13)
    end
    function flag9()
      local rageUiCall, workValue2, numberValue13, textValue2, workValue5
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Visible
      workValue2 = RMenu
      numberValue13 = workValue2
      workValue2 = workValue2.Get
      textValue2 = "cmgpdelevators"
      workValue5 = "main"
      -- Beginner: result below is menu.
      workValue2 = workValue2(numberValue13, textValue2, workValue5)
      numberValue13 = false
      rageUiCall(workValue2, numberValue13)
    end
    function flag10()
      local rageUiCall, workValue2, numberValue13, textValue2, workValue5, rageUiCall2
      rageUiCall = RMenu
      workValue2 = rageUiCall
      rageUiCall = rageUiCall.Get
      numberValue13 = "cmgpdelevators"
      textValue2 = "main"
      -- Beginner: result below is menu.
      rageUiCall = rageUiCall(workValue2, numberValue13, textValue2)
      workValue2 = rageUiCall
      rageUiCall = rageUiCall.SetSubtitle
      numberValue13 = string
      numberValue13 = numberValue13.format
      textValue2 = "~w~You are on ~b~%s"
      rageUiCall2 = dataTable2
      workValue5 = dataTable
      workValue5 = workValue5[rageUiCall2]
      workValue5 = workValue5.name
      numberValue13, textValue2, workValue5, rageUiCall2 = numberValue13(textValue2, workValue5)
      rageUiCall(workValue2, numberValue13, textValue2, workValue5, rageUiCall2)
    end
    iterator = pairs
    workValue6 = dataTable
    iterator, workValue6, workValue7, workValue9 = iterator(workValue6)
    for workValue11, workValue in iterator, workValue6, workValue7, workValue9 do
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      textValue = "pdelevator_"
      position = workValue11
      textValue = textValue .. position
      position = workValue.coords
      numberValue2 = 1.5
      numberValue3 = 6
      numberValue4 = flag8
      numberValue5 = flag9
      numberValue6 = flag10
      -- Beginner: Create an interaction area around a world position.
      cmgCall(textValue, position, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
      cmgCall = tCMG
      cmgCall = cmgCall.addMarker
      textValue = workValue.coords
      textValue = textValue.x
      position = workValue.coords
      position = position.y
      numberValue2 = workValue.coords
      numberValue2 = numberValue2.z
      numberValue2 = numberValue2 - 0.98
      numberValue3 = 1.0001
      numberValue4 = 1.0001
      numberValue5 = 0.5001
      numberValue6 = 255
      numberValue7 = 255
      numberValue8 = 255
      numberValue9 = 200
      numberValue10 = 20.0
      numberValue11 = 27
      flag5 = true
      flag6 = false
      flag7 = false
      workValue3 = nil
      workValue4 = nil
      numberValue12 = 0.0
      numberValue14 = 0.0
      numberValue15 = 0.0
      -- Beginner: Create a world marker.
      cmgCall(textValue, position, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, flag5, flag6, flag7, workValue3, workValue4, numberValue12, numberValue14, numberValue15)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder(numberValue16, numberValue17)