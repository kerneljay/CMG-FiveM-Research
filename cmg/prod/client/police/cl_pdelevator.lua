--[[
    LEVEL 1 BEGINNER GUIDE — Pdelevator
    ========================================

    File: cmg/prod/client/police/cl_pdelevator.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Pdelevator feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
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
local dataCollection, dataCollection2, createVector3, number16, number17, number18, number20, number22, number24, number25, number
dataCollection = {}
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.1197509766
number17 = -850.44573974609
number18 = 4.8845114707947
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -1"
createVector3 = {}
number16 = 2
number17 = 3
number18 = 4
number20 = 5
number22 = 6
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
dataCollection[1] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.1131591797
number17 = -850.54858398438
number18 = 10.2770795822
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -2"
createVector3 = {}
number16 = 1
number17 = 3
number18 = 4
number20 = 5
number22 = 6
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Laboratory, Evidence Rooms"
dataCollection[2] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.0910644531
number17 = -850.46240234375
number18 = 13.687476158
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -3"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 4
number20 = 5
number22 = 6
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Garage, Armoury"
dataCollection[3] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.3427734375
number17 = -850.41583251953
number18 = 19.001399993896
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 1"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 5
number22 = 6
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
dataCollection[4] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.3331298828
number17 = -850.19696044922
number18 = 23.038097381592
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 2"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 4
number22 = 6
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Public Space, Cafe"
dataCollection[5] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.2581787109
number17 = -850.19952392578
number18 = 26.827362060547
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 3"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 4
number22 = 5
number24 = 7
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
dataCollection[6] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.2662353516
number17 = -850.17083740234
number18 = 30.756698608398
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 4"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 4
number22 = 5
number24 = 6
number25 = 8
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Ops Center, Gold Command Office, Office Staff"
dataCollection[7] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1095.9621582031
number17 = -850.63787841797
number18 = 34.360549926758
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 5"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 4
number22 = 5
number24 = 6
number25 = 7
number = 9
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Silver Command Office, Captains Office, Office Staff"
dataCollection[8] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1096.4049072266
number17 = -849.94915771484
number18 = 38.242813110352
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 6"
createVector3 = {}
number16 = 1
number17 = 2
number18 = 3
number20 = 4
number22 = 5
number24 = 6
number25 = 7
number = 8
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
createVector3[5] = number22
createVector3[6] = number24
createVector3[7] = number25
createVector3[8] = number
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Helipad, Rooftop"
dataCollection[9] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1065.8210449219
number17 = -834.02844238281
number18 = 5.4801788330078
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -1"
createVector3 = {}
number16 = 11
number17 = 12
number18 = 13
number20 = 14
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Holding Cells, Identification Rooms, Interrogation Rooms, Garage"
dataCollection[10] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1065.8479003906
number17 = -834.02172851563
number18 = 11.037246704102
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -2"
createVector3 = {}
number16 = 10
number17 = 12
number18 = 13
number20 = 14
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Laboratory, Evidence Rooms"
dataCollection[11] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1065.9549560547
number17 = -833.87341308594
number18 = 14.883050918579
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor -3"
createVector3 = {}
number16 = 10
number17 = 11
number18 = 13
number20 = 14
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Garage, Armoury"
dataCollection[12] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1065.8916015625
number17 = -833.84100341797
number18 = 19.035511016846
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 1"
createVector3 = {}
number16 = 10
number17 = 11
number18 = 12
number20 = 14
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Lobby, Paperwork, Interview Rooms, Conference Hall"
dataCollection[13] = dataCollection2
dataCollection2 = {}
createVector3 = vector3
number16 = -1065.9194335938
number17 = -833.87164306641
number18 = 27.036159515381
createVector3 = createVector3(number16, number17, number18)
dataCollection2.coords = createVector3
dataCollection2.name = "Floor 3"
createVector3 = {}
number16 = 10
number17 = 11
number18 = 12
number20 = 13
createVector3[1] = number16
createVector3[2] = number17
createVector3[3] = number18
createVector3[4] = number20
dataCollection2.otherLocs = createVector3
dataCollection2.desc = "Gym, Division Offices, Cloakrooms, Briefing Room"
dataCollection[14] = dataCollection2
dataCollection2 = 2
createVector3 = RMenu
createVector3 = createVector3.Add
number16 = "cmgpdelevators"
number17 = "main"
number18 = RageUI
number18 = number18.CreateMenu
number20 = "CMG Elevators"
number22 = "~b~Vespucci PD"
number24 = CMG
number24 = number24.getRageUIMenuWidth
number24 = number24()
number25 = CMG
number25 = number25.getRageUIMenuHeight
number25, number = number25()
number18, number20, number22, number24, number25, number = number18(number20, number22, number24, number25, number)
createVector3(number16, number17, number18, number20, number22, number24, number25, number)
createVector3 = RageUI
createVector3 = createVector3.CreateWhile
number16 = 1.0
number17 = RMenu
number18 = number17
number17 = number17.Get
number20 = "cmgpdelevators"
number22 = "main"
-- Beginner: result below is menu.
number17 = number17(number18, number20, number22)
number18 = nil

-- === HELPER FUNCTION (decompiler name: number20; parameters: none) ===
function number20()
  local localValue1, localValue2, stateFlag8, stateFlag9, stateFlag10, iterator, workingValue6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag8 = localValue2
  localValue2 = localValue2.Get
  stateFlag9 = "cmgpdelevators"
  stateFlag10 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag8, stateFlag9, stateFlag10)
  stateFlag8 = true
  stateFlag9 = false
  stateFlag10 = true

  -- === HELPER FUNCTION: iterator() ===
  function iterator()
    local rageUiOperation, workingValue2, number13, text2, workingValue5, rageUiOperation2, nameValue, workingValue8, stateFlag11, workingValue12
    rageUiOperation = 1
    number13 = dataCollection2
    workingValue2 = dataCollection
    workingValue2 = workingValue2[number13]
    workingValue2 = workingValue2.otherLocs
    workingValue2 = #workingValue2
    number13 = 1
    for text2 = rageUiOperation, workingValue2, number13 do
      rageUiOperation2 = dataCollection2
      workingValue5 = dataCollection
      workingValue5 = workingValue5[rageUiOperation2]
      workingValue5 = workingValue5.otherLocs
      workingValue5 = workingValue5[text2]
      rageUiOperation2 = RageUI
      rageUiOperation2 = rageUiOperation2.Button
      nameValue = dataCollection
      nameValue = nameValue[workingValue5]
      nameValue = nameValue.name
      workingValue8 = dataCollection
      workingValue8 = workingValue8[workingValue5]
      workingValue8 = workingValue8.desc
      stateFlag11 = true

      -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue12, localValue22, localValue3) ===
      function workingValue12(localValue12, localValue22, localValue3)
        local cmgOperation2, waitCall, number19, number21, number23, workingValue10, workingValue13, stateFlag, stateFlag2, stateFlag3, stateFlag4
        if localValue3 then
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          cmgOperation2 = cmgOperation2()
          waitCall = DoScreenFadeOut
          number19 = 500
          waitCall(number19)
          waitCall = Citizen
          waitCall = waitCall.Wait
          number19 = 500
          waitCall(number19)
          number19 = workingValue5
          waitCall = dataCollection
          waitCall = waitCall[number19]
          waitCall = waitCall.coords
          number19 = SetEntityCoords
          number21 = cmgOperation2
          number23 = waitCall.x
          workingValue10 = waitCall.y
          workingValue13 = waitCall.z
          stateFlag = false
          stateFlag2 = false
          stateFlag3 = false
          stateFlag4 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          number19(number21, number23, workingValue10, workingValue13, stateFlag, stateFlag2, stateFlag3, stateFlag4)
          number19 = SetEntityHeading
          number21 = cmgOperation2
          number23 = 35.0
          -- Beginner: Change the direction an entity is facing.
          number19(number21, number23)
          number19 = DoScreenFadeIn
          number21 = 700
          number19(number21)
          number19 = Citizen
          number19 = number19.Wait
          number21 = 500
          number19(number21)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation2(nameValue, workingValue8, stateFlag11, workingValue12)
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
  function workingValue6()
    local rageUiOperation, workingValue2
  end
  localValue1(localValue2, stateFlag8, stateFlag9, stateFlag10, iterator, workingValue6)
end
createVector3(number16, number17, number18, number20)
createVector3 = AddEventHandler
number16 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: number17; parameters: localValue1, localValue2) ===
function number17(localValue1, localValue2)
  local stateFlag8, stateFlag9, stateFlag10, iterator, workingValue6, workingValue7, workingValue9, workingValue11, workingValue, cmgOperation, text, position, number2, number3, number4, number5, number6, number7, number8, number9, number10, number11, stateFlag5, stateFlag6, stateFlag7, workingValue3, workingValue4, number12, number14, number15
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: none) ===
    function stateFlag8()
      local rageUiOperation, workingValue2, number13, text2, workingValue5
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Visible
      workingValue2 = RMenu
      number13 = workingValue2
      workingValue2 = workingValue2.Get
      text2 = "cmgpdelevators"
      workingValue5 = "main"
      -- Beginner: result below is menu.
      workingValue2 = workingValue2(number13, text2, workingValue5)
      number13 = true
      rageUiOperation(workingValue2, number13)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
    function stateFlag9()
      local rageUiOperation, workingValue2, number13, text2, workingValue5
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Visible
      workingValue2 = RMenu
      number13 = workingValue2
      workingValue2 = workingValue2.Get
      text2 = "cmgpdelevators"
      workingValue5 = "main"
      -- Beginner: result below is menu.
      workingValue2 = workingValue2(number13, text2, workingValue5)
      number13 = false
      rageUiOperation(workingValue2, number13)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
    function stateFlag10()
      local rageUiOperation, workingValue2, number13, text2, workingValue5, rageUiOperation2
      rageUiOperation = RMenu
      workingValue2 = rageUiOperation
      rageUiOperation = rageUiOperation.Get
      number13 = "cmgpdelevators"
      text2 = "main"
      -- Beginner: result below is menu.
      rageUiOperation = rageUiOperation(workingValue2, number13, text2)
      workingValue2 = rageUiOperation
      rageUiOperation = rageUiOperation.SetSubtitle
      number13 = string
      number13 = number13.format
      text2 = "~w~You are on ~b~%s"
      rageUiOperation2 = dataCollection2
      workingValue5 = dataCollection
      workingValue5 = workingValue5[rageUiOperation2]
      workingValue5 = workingValue5.name
      number13, text2, workingValue5, rageUiOperation2 = number13(text2, workingValue5)
      rageUiOperation(workingValue2, number13, text2, workingValue5, rageUiOperation2)
    end
    iterator = pairs
    workingValue6 = dataCollection
    iterator, workingValue6, workingValue7, workingValue9 = iterator(workingValue6)
    for workingValue11, workingValue in iterator, workingValue6, workingValue7, workingValue9 do
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      text = "pdelevator_"
      position = workingValue11
      text = text .. position
      position = workingValue.coords
      number2 = 1.5
      number3 = 6
      number4 = stateFlag8
      number5 = stateFlag9
      number6 = stateFlag10
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(text, position, number2, number3, number4, number5, number6)
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addMarker
      text = workingValue.coords
      text = text.x
      position = workingValue.coords
      position = position.y
      number2 = workingValue.coords
      number2 = number2.z
      number2 = number2 - 0.98
      number3 = 1.0001
      number4 = 1.0001
      number5 = 0.5001
      number6 = 255
      number7 = 255
      number8 = 255
      number9 = 200
      number10 = 20.0
      number11 = 27
      stateFlag5 = true
      stateFlag6 = false
      stateFlag7 = false
      workingValue3 = nil
      workingValue4 = nil
      number12 = 0.0
      number14 = 0.0
      number15 = 0.0
      -- Beginner: Create a world marker.
      cmgOperation(text, position, number2, number3, number4, number5, number6, number7, number8, number9, number10, number11, stateFlag5, stateFlag6, stateFlag7, workingValue3, workingValue4, number12, number14, number15)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
createVector3(number16, number17)
