--[[
    LEVEL 1 BEGINNER GUIDE — Healthservice
    ===========================================

    File: cmg/prod/client/nhs/cl_healthservice.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Healthservice feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 36
      * Background threads: 0
      * Always-running loops: 2
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
local cmgOperation, text, workingValue6, workingValue7, workingValue8, number7, workingValue9, cmgOperation4, dataCollection3, createVector3, number, number2, number3, workingValue2
cmgOperation = RegisterNetEvent
text = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8, stateFlag12
  if "Trainee Paramedic" == localValue1 then
    localValue2 = PlaySound
    localValue3 = -1
    localValue4 = "CHECKPOINT_BEHIND"
    dataCollection = "HUD_MINI_GAME_SOUNDSET"
    dataCollection2 = false
    number8 = 0
    stateFlag12 = true
    localValue2(localValue3, localValue4, dataCollection, dataCollection2, number8, stateFlag12)
    localValue2 = CMG
    localValue2 = localValue2.initializeInstructionalJobScaleform
    localValue3 = "Trainee Paramedic"
    localValue4 = "Press F6 to get started"
    localValue2(localValue3, localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3a2b4bde0".
cmgOperation(text, workingValue6)
cmgOperation = RegisterNetEvent
text = "87318b22f0"
-- Beginner: this function handles network event "87318b22f0".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getModelGender
  localValue1 = localValue1()
  if "male" == localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "ParamedicMale"
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.loadCustomisationPreset
    localValue2 = "ParamedicFemale"
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "87318b22f0".
cmgOperation(text, workingValue6)
cmgOperation = CMG
cmgOperation = cmgOperation.uiRegisterCallback
text = "getHealthServiceLeaderboard"

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "a1ab9a3b49"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1ab9a3b49".
  localValue1(localValue2)
end
cmgOperation(text, workingValue6)
cmgOperation = RegisterNetEvent
text = "985c4252d0"
-- Beginner: this function handles network event "985c4252d0".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, dataCollection
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "HEALTHSERVICE_LEADERBOARD"
  localValue4 = {}
  dataCollection = localValue1 or dataCollection
  if not localValue1 then
    dataCollection = {}
  end
  localValue4.paramedics = dataCollection
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "985c4252d0".
cmgOperation(text, workingValue6)
cmgOperation = CMG
cmgOperation = cmgOperation.uiRegisterCallback
text = "getHealthServiceLevelState"

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "f61531fec4"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f61531fec4".
  localValue1(localValue2)
end
cmgOperation(text, workingValue6)
cmgOperation = RegisterNetEvent
text = "4b7dbba9c0"
-- Beginner: this function handles network event "4b7dbba9c0".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3) ===
function workingValue6(localValue1, localValue2, localValue3)
  local localValue4, dataCollection, dataCollection2, number8
  localValue4 = CMG
  localValue4 = localValue4.uiSendMessage
  dataCollection = {}
  dataCollection.type = "HEALTHSERVICE_LEVELS"
  dataCollection2 = {}
  number8 = localValue1 or number8
  if not localValue1 then
    number8 = 0
  end
  dataCollection2.level = number8
  number8 = localValue2 or number8
  if not localValue2 then
    number8 = 0
  end
  dataCollection2.xp = number8
  number8 = localValue3 or number8
  if not localValue3 then
    number8 = 0
  end
  dataCollection2.xpMax = number8
  dataCollection.payload = dataCollection2
  localValue4(dataCollection)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4b7dbba9c0".
cmgOperation(text, workingValue6)
cmgOperation = CMG
cmgOperation = cmgOperation.uiRegisterCallback
text = "getHealthServiceLevels"

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "db119884cb"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "db119884cb".
  localValue1(localValue2)
end
cmgOperation(text, workingValue6)
cmgOperation = RegisterNetEvent
text = "291d3f328b"
-- Beginner: this function handles network event "291d3f328b".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, dataCollection
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "HEALTHSERVICE_LEVEL_LIST"
  localValue4 = {}
  dataCollection = localValue1 or dataCollection
  if not localValue1 then
    dataCollection = {}
  end
  localValue4.levels = dataCollection
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "291d3f328b".
cmgOperation(text, workingValue6)
cmgOperation = false
text = 0

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedInAnyVehicle
  localValue3 = localValue1
  localValue4 = false
  localValue2 = localValue2(localValue3, localValue4)
  localValue2 = IsPedSwimming
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedShooting
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedClimbing
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedDiving
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedFalling
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedJumping
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue2 = IsPedOnFoot
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = IsPedRunning
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue2 = IsPedUsingAnyScenario
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue2 = IsPedInParachuteFreeFall
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue2 = CMG
    localValue2 = localValue2.isPlayerNearPrison
    localValue2 = localValue2()
    localValue2 = not localValue2 and localValue2
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, dataCollection
  localValue1 = BeginTextCommandDisplayHelp
  localValue2 = "STRING"
  localValue1(localValue2)
  localValue1 = AddTextEntry
  localValue2 = "NHS_DRAG_HELP"
  localValue3 = "~INPUT_CELLPHONE_CANCEL~ Cancel dragging"
  localValue1(localValue2, localValue3)
  localValue1 = AddTextComponentSubstringTextLabel
  localValue2 = "NHS_DRAG_HELP"
  localValue1(localValue2)
  localValue1 = EndTextCommandDisplayHelp
  localValue2 = 0
  localValue3 = false
  localValue4 = false
  dataCollection = 0
  localValue1(localValue2, localValue3, localValue4, dataCollection)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3
  localValue1 = text
  if localValue1 > 0 then
    localValue1 = TriggerServerEvent
    localValue2 = "1126c6bae9"
    localValue3 = text
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1126c6bae9".
    localValue1(localValue2, localValue3)
  end
  localValue1 = ClearPedSecondaryTask
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  localValue2, localValue3 = localValue2()
  localValue1(localValue2, localValue3)
  localValue1 = false
  cmgOperation = localValue1
  localValue1 = 0
  text = localValue1
end
number7 = 30000

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8, stateFlag12, workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5, stateFlag6, stateFlag7
  localValue2 = "combat@drag_ped@"
  localValue3 = "injured_drag_plyr"
  localValue4 = "injured_drag_ped"
  dataCollection = TriggerServerEvent
  dataCollection2 = "ce85753545"
  number8 = 0
  stateFlag12 = localValue2
  workingValue10 = localValue3
  workingValue11 = localValue4
  stateFlag = 0.48
  stateFlag2 = 4103
  stateFlag3 = 0.0
  workingValue3 = localValue1
  workingValue4 = number7
  number4 = 0.0
  number5 = 33
  stateFlag4 = 33
  stateFlag5 = 1
  stateFlag6 = 1
  stateFlag7 = 11816
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce85753545".
  dataCollection(dataCollection2, number8, stateFlag12, workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
  dataCollection = true
  cmgOperation = dataCollection
  text = localValue1
  dataCollection = SetTimeout
  dataCollection2 = number7

  -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
  function number8()
    local workingValue, waitCall2
    workingValue = cmgOperation
    if workingValue then
      workingValue = workingValue8
      workingValue()
    end
  end
  dataCollection(dataCollection2, number8)
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1) ===
function dataCollection3(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "nhs.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 and localValue1 > 0 then
    localValue2 = workingValue9
    localValue3 = localValue1
    localValue2(localValue3)
  end
end
cmgOperation4.startNhsDragFromRadial = dataCollection3
cmgOperation4 = Citizen
cmgOperation4 = cmgOperation4.CreateThread

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3, localValue4
  while true do
    localValue1 = IsDisabledControlPressed
    localValue2 = 1
    localValue3 = 19
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = IsDisabledControlPressed
      localValue2 = 1
      localValue3 = 63
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = workingValue6
        localValue1 = localValue1()
        if localValue1 then
          localValue1 = cmgOperation
          if not localValue1 then
            localValue1 = CMG
            localValue1 = localValue1.hasClientPermission
            localValue2 = "nhs.onduty.permission"
            localValue1 = localValue1(localValue2)
            if localValue1 then
              localValue1 = GetClosestPlayer
              localValue2 = 3
              localValue1 = localValue1(localValue2)
              if localValue1 then
                localValue2 = GetPlayerServerId
                localValue3 = localValue1
                -- Beginner: result below is serverId.
                localValue2 = localValue2(localValue3)
                if -1 ~= localValue2 and localValue2 > 0 then
                  localValue3 = workingValue9
                  localValue4 = localValue2
                  localValue3(localValue4)
                end
              end
            end
          end
          localValue1 = Wait
          localValue2 = 250
          localValue1(localValue2)
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation4(dataCollection3)
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
function dataCollection3()
  local localValue1, localValue2, localValue3
  localValue1 = cmgOperation
  if localValue1 then
    localValue1 = workingValue7
    localValue1()
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 202
    localValue1 = localValue1(localValue2, localValue3)
    if not localValue1 then
      localValue1 = IsDisabledControlJustPressed
      localValue2 = 0
      localValue3 = 177
      localValue1 = localValue1(localValue2, localValue3)
      if not localValue1 then
        goto continueAtStep20
      end
    end
    localValue1 = workingValue8
    localValue1()
  end
  ::continueAtStep20::
end
createVector3 = "NHS Drag Prompt"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(dataCollection3, createVector3)
cmgOperation4 = {}
dataCollection3 = {}
dataCollection3.model = "bandage2"
dataCollection3.bone = 28252
createVector3 = vector3
number = -0.23
number2 = -0.12
number3 = 0.09
createVector3 = createVector3(number, number2, number3)
dataCollection3.pos = createVector3
createVector3 = vector3
number = 137.97
number2 = -34.49
number3 = 88.56
createVector3 = createVector3(number, number2, number3)
dataCollection3.rot = createVector3
dataCollection3.propDelay = 500
dataCollection3.duration = 300000
dataCollection3.animDuration = 5000
dataCollection3.animFlag = 0
cmgOperation4.barm = dataCollection3
dataCollection3 = {}
dataCollection3.model = "bandage"
dataCollection3.bone = 51826
createVector3 = vector3
number = 0.3
number2 = 0.01
number3 = 0.02
createVector3 = createVector3(number, number2, number3)
dataCollection3.pos = createVector3
createVector3 = vector3
number = 2.96
number2 = -78.18
number3 = -136.04
createVector3 = createVector3(number, number2, number3)
dataCollection3.rot = createVector3
dataCollection3.propDelay = 500
dataCollection3.duration = 300000
dataCollection3.animDuration = 5000
dataCollection3.animFlag = 0
cmgOperation4.bleg = dataCollection3
dataCollection3 = {}
dataCollection3.model = "prop_cs_pills"
dataCollection3.bone = 4089
createVector3 = vector3
number = 0.02
number2 = -0.02
number3 = -0.02
createVector3 = createVector3(number, number2, number3)
dataCollection3.pos = createVector3
createVector3 = vector3
number = -137.09
number2 = 13.69
number3 = -25.04
createVector3 = createVector3(number, number2, number3)
dataCollection3.rot = createVector3
dataCollection3.propDelay = 100
dataCollection3.duration = 5000
dataCollection3.animFlag = 0
cmgOperation4.pills = dataCollection3
dataCollection3 = {}
dataCollection3.model = "p_syringe_01_s"
dataCollection3.bone = 36029
createVector3 = vector3
number = 0.04
number2 = 0.04
number3 = 0.0
createVector3 = createVector3(number, number2, number3)
dataCollection3.pos = createVector3
createVector3 = vector3
number = -90.44
number2 = 35.47
number3 = -16.02
createVector3 = createVector3(number, number2, number3)
dataCollection3.rot = createVector3
dataCollection3.propDelay = 100
dataCollection3.duration = 5000
dataCollection3.animFlag = 0
cmgOperation4.psyringe = dataCollection3

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2, localValue3) ===
function dataCollection3(localValue1, localValue2, localValue3)
  local localValue4, dataCollection, dataCollection2, number8, stateFlag12, workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number6, stateFlag8
  localValue4 = GetHashKey
  dataCollection = localValue2.model
  -- Beginner: result below is hash.
  localValue4 = localValue4(dataCollection)
  dataCollection = CMG
  dataCollection = dataCollection.loadModel
  dataCollection2 = localValue4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataCollection(dataCollection2)
  dataCollection = HasModelLoaded
  dataCollection2 = localValue4
  dataCollection = dataCollection(dataCollection2)
  if not dataCollection then
    dataCollection = RequestModel
    dataCollection2 = localValue4
    dataCollection(dataCollection2)
    dataCollection = 0
    while true do
      dataCollection2 = HasModelLoaded
      number8 = localValue4
      dataCollection2 = dataCollection2(number8)
      if dataCollection2 then
        break
      end
      dataCollection2 = 150
      if not (dataCollection < dataCollection2) then
        break
      end
      dataCollection2 = Wait
      number8 = 10
      dataCollection2(number8)
      dataCollection = dataCollection + 1
    end
  end
  dataCollection = HasModelLoaded
  dataCollection2 = localValue4
  dataCollection = dataCollection(dataCollection2)
  if not dataCollection then
    dataCollection = nil
    return dataCollection
  end
  dataCollection = CMG
  dataCollection = dataCollection.getPlayerCoords
  -- Beginner: result below is playerCoords.
  dataCollection = dataCollection()
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.requestEntitySpawn
  number8 = "emergency_pack_prop"
  stateFlag12 = localValue3
  dataCollection2(number8, stateFlag12)
  dataCollection2 = CreateObject
  number8 = localValue4
  stateFlag12 = dataCollection.x
  workingValue10 = dataCollection.y
  workingValue11 = dataCollection.z
  stateFlag = true
  stateFlag2 = true
  stateFlag3 = false
  -- Beginner: result below is objectEntity.
  dataCollection2 = dataCollection2(number8, stateFlag12, workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3)
  if dataCollection2 then
    number8 = DoesEntityExist
    stateFlag12 = dataCollection2
    number8 = number8(stateFlag12)
    if number8 then
      goto continueAtStep64
    end
  end
  number8 = nil
  return number8
  ::continueAtStep64::
  number8 = GetPedBoneIndex
  stateFlag12 = localValue1
  workingValue10 = localValue2.bone
  number8 = number8(stateFlag12, workingValue10)
  stateFlag12 = AttachEntityToEntity
  workingValue10 = dataCollection2
  workingValue11 = localValue1
  stateFlag = number8
  stateFlag2 = localValue2.pos
  stateFlag2 = stateFlag2.x
  stateFlag3 = localValue2.pos
  stateFlag3 = stateFlag3.y
  workingValue3 = localValue2.pos
  workingValue3 = workingValue3.z
  workingValue4 = localValue2.rot
  workingValue4 = workingValue4.x
  number4 = localValue2.rot
  number4 = number4.y
  number5 = localValue2.rot
  number5 = number5.z
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = false
  stateFlag7 = true
  number6 = 1
  stateFlag8 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag12(workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number6, stateFlag8)
  stateFlag12 = SetEntityCollision
  workingValue10 = dataCollection2
  workingValue11 = false
  stateFlag = false
  stateFlag12(workingValue10, workingValue11, stateFlag)
  stateFlag12 = SetModelAsNoLongerNeeded
  workingValue10 = localValue4
  stateFlag12(workingValue10)
  return dataCollection2
end

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function createVector3(localValue1, localValue2, localValue3, localValue4)
  local dataCollection, dataCollection2, number8, stateFlag12, workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5
  dataCollection = CMG
  dataCollection = dataCollection.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataCollection = dataCollection()
  dataCollection2 = cmgOperation4
  dataCollection2 = dataCollection2[localValue1]
  if dataCollection2 then
    number8 = dataCollection2.animFlag
    if number8 then
      goto continueAtStep12
    end
  end
  number8 = 48
  ::continueAtStep12::
  stateFlag12 = CMG
  stateFlag12 = stateFlag12.loadAnimDict
  workingValue10 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag12(workingValue10)
  stateFlag12 = TaskPlayAnim
  workingValue10 = dataCollection
  workingValue11 = localValue2
  stateFlag = localValue3
  stateFlag2 = 2.0
  stateFlag3 = 2.0
  workingValue3 = -1
  workingValue4 = number8
  number4 = 1
  number5 = false
  stateFlag4 = false
  stateFlag5 = false
  -- Beginner: Play an animation on a ped.
  stateFlag12(workingValue10, workingValue11, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue4, number4, number5, stateFlag4, stateFlag5)
  if localValue4 then
    stateFlag12 = SendNUIMessage
    workingValue10 = {}
    workingValue10.transactionType = localValue4
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    stateFlag12(workingValue10)
  end
  stateFlag12 = Citizen
  stateFlag12 = stateFlag12.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
  function workingValue10()
    local workingValue, waitCall2, cmgOperation2, waitCall3, cmgOperation3, stateFlag11, number9
    workingValue = nil
    waitCall2 = dataCollection2
    if waitCall2 then
      waitCall2 = Wait
      cmgOperation2 = dataCollection2.propDelay
      waitCall2(cmgOperation2)
      waitCall2 = dataCollection3
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgOperation2 = cmgOperation2()
      waitCall3 = dataCollection2
      cmgOperation3 = localValue1
      waitCall2 = waitCall2(cmgOperation2, waitCall3, cmgOperation3)
      workingValue = waitCall2
    end
    waitCall2 = dataCollection2
    if waitCall2 then
      waitCall2 = dataCollection2.animDuration
      if waitCall2 then
        goto continueAtStep29
      end
    end
    waitCall2 = dataCollection2
    if waitCall2 then
      waitCall2 = dataCollection2.duration
      if waitCall2 then
        goto continueAtStep29
      end
    end
    waitCall2 = 2500
    ::continueAtStep29::
    cmgOperation2 = dataCollection2
    if cmgOperation2 then
      cmgOperation2 = dataCollection2.duration
      if cmgOperation2 then
        goto continueAtStep36
      end
    end
    cmgOperation2 = 2500
    ::continueAtStep36::
    waitCall3 = Wait
    cmgOperation3 = math
    cmgOperation3 = cmgOperation3.max
    stateFlag11 = 0
    number9 = dataCollection2
    if number9 then
      number9 = dataCollection2.propDelay
      if number9 then
        goto continueAtStep47
      end
    end
    number9 = 0
    ::continueAtStep47::
    number9 = waitCall2 - number9
    cmgOperation3, stateFlag11, number9 = cmgOperation3(stateFlag11, number9)
    waitCall3(cmgOperation3, stateFlag11, number9)
    waitCall3 = ClearPedTasks
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.getPlayerPed
    cmgOperation3, stateFlag11, number9 = cmgOperation3()
    waitCall3(cmgOperation3, stateFlag11, number9)
    if workingValue then
      waitCall3 = DoesEntityExist
      cmgOperation3 = workingValue
      waitCall3 = waitCall3(cmgOperation3)
      if waitCall3 and waitCall2 < cmgOperation2 then
        waitCall3 = Citizen
        waitCall3 = waitCall3.CreateThread

        -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
        function cmgOperation3()
          local waitCall, workingValue5, stateFlag9, stateFlag10
          waitCall = Wait
          workingValue5 = cmgOperation2
          stateFlag9 = waitCall2
          workingValue5 = workingValue5 - stateFlag9
          waitCall(workingValue5)
          waitCall = workingValue
          if waitCall then
            waitCall = DoesEntityExist
            workingValue5 = workingValue
            waitCall = waitCall(workingValue5)
            if waitCall then
              waitCall = DetachEntity
              workingValue5 = workingValue
              stateFlag9 = false
              stateFlag10 = false
              waitCall(workingValue5, stateFlag9, stateFlag10)
              waitCall = DeleteEntity
              workingValue5 = workingValue
              -- Beginner: Delete a GTA entity.
              waitCall(workingValue5)
            end
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall3(cmgOperation3)
    end
    elseif workingValue then
      waitCall3 = DoesEntityExist
      cmgOperation3 = workingValue
      waitCall3 = waitCall3(cmgOperation3)
      if waitCall3 then
        waitCall3 = DetachEntity
        cmgOperation3 = workingValue
        stateFlag11 = false
        number9 = false
        waitCall3(cmgOperation3, stateFlag11, number9)
        waitCall3 = DeleteEntity
        cmgOperation3 = workingValue
        -- Beginner: Delete a GTA entity.
        waitCall3(cmgOperation3)
      end
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stateFlag12(workingValue10)
end
number = RegisterNetEvent
number2 = "b14b321665"
-- Beginner: this function handles network event "b14b321665".

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1, localValue2) ===
function number3(localValue1, localValue2)
  local localValue3, localValue4, dataCollection, dataCollection2, number8, stateFlag12, workingValue10, workingValue11
  if localValue1 then
    localValue3 = "barm"
    if localValue3 then
      goto continueAtStep7
    end
  end
  localValue3 = "bleg"
  ::continueAtStep7::
  if localValue1 then
    localValue4 = "emergency1@bandagearm@clip"
    if localValue4 then
      goto continueAtStep13
    end
  end
  localValue4 = "emergency1@bandageleg@clip"
  ::continueAtStep13::
  if localValue1 then
    dataCollection = "bandagearm_clip"
    if dataCollection then
      goto continueAtStep19
    end
  end
  dataCollection = "bandageleg_clip"
  ::continueAtStep19::
  dataCollection2 = createVector3
  number8 = localValue3
  stateFlag12 = localValue4
  workingValue10 = dataCollection
  workingValue11 = "bandage"
  dataCollection2(number8, stateFlag12, workingValue10, workingValue11)
  dataCollection2 = Citizen
  dataCollection2 = dataCollection2.CreateThread

  -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
  function number8()
    local workingValue, waitCall2
    workingValue = Wait
    waitCall2 = 5000
    workingValue(waitCall2)
    workingValue = CMG
    workingValue = workingValue.stopBleeding
    if workingValue then
      workingValue = CMG
      workingValue = workingValue.stopBleeding
      workingValue()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataCollection2(number8)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b14b321665".
number(number2, number3)
number = RegisterNetEvent
number2 = "62acadffbf"
-- Beginner: this function handles network event "62acadffbf".

-- === HELPER FUNCTION (decompiler name: number3; parameters: none) ===
function number3()
  local localValue1, localValue2, localValue3, localValue4, dataCollection
  localValue1 = createVector3
  localValue2 = "psyringe"
  localValue3 = "emergency1@syringe@clip"
  localValue4 = "syringe_clip"
  dataCollection = "syringe"
  localValue1(localValue2, localValue3, localValue4, dataCollection)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62acadffbf".
number(number2, number3)
number = RegisterNetEvent
number2 = "00393cdccd"
-- Beginner: this function handles network event "00393cdccd".

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "HEALTHSERVICE_LOBBY"
  localValue4 = localValue1 or localValue4
  if not localValue1 then
    localValue4 = {}
  end
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "00393cdccd".
number(number2, number3)
number = RegisterNetEvent
number2 = "f286a73897"
-- Beginner: this function handles network event "f286a73897".

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3, localValue4, dataCollection
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.type = "HEALTHSERVICE_SEARCH_RESULT"
  localValue4 = {}
  dataCollection = localValue1 or dataCollection
  if not localValue1 then
    dataCollection = {}
  end
  localValue4.players = dataCollection
  localValue3.payload = localValue4
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f286a73897".
number(number2, number3)
number = RegisterNetEvent
number2 = "33567d9509"
-- Beginner: this function handles network event "33567d9509".

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1, localValue2) ===
function number3(localValue1, localValue2)
  local localValue3, localValue4, dataCollection, dataCollection2
  localValue3 = type
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 or "" == localValue2 then
    return
  end
  if localValue1 then
    localValue3 = "~g~"
    if localValue3 then
      goto continueAtStep15
    end
  end
  localValue3 = "~r~"
  ::continueAtStep15::
  localValue4 = tCMG
  localValue4 = localValue4.notify
  dataCollection = localValue3
  dataCollection2 = localValue2
  dataCollection = dataCollection .. dataCollection2
  -- Beginner: Show a notification to the player.
  localValue4(dataCollection)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33567d9509".
number(number2, number3)
number = AddEventHandler
number2 = "a68d3374be"
-- Beginner: this function runs when client event "a68d3374be" fires.

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1) ===
function number3(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.getClientFaction
  localValue2 = localValue2()
  if "Health Service" == localValue2 then
    localValue2 = TriggerServerEvent
    localValue3 = "38dbf567b8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dbf567b8".
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "a68d3374be".
number(number2, number3)

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2, localValue3, localValue4, dataCollection
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "table" == localValue2 then
    return localValue1
  end
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" == localValue2 and "" ~= localValue1 then
    localValue2 = pcall
    localValue3 = json
    localValue3 = localValue3.decode
    localValue4 = localValue1
    localValue2, localValue3 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue4 = type
      dataCollection = localValue3
      localValue4 = localValue4(dataCollection)
      if "table" == localValue4 then
        return localValue3
      end
    end
  end
  localValue2 = nil
  return localValue2
end
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceRequestLobbySync"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "38dbf567b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dbf567b8".
  localValue1(localValue2)
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceSearchPlayers"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.query
  end
  localValue4 = type
  dataCollection = localValue3
  localValue4 = localValue4(dataCollection)
  if "string" == localValue4 then
    localValue4 = TriggerServerEvent
    dataCollection = "744baa038a"
    dataCollection2 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "744baa038a".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceInvitePlayer"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.userId
    if not localValue3 then
      localValue3 = localValue2.user_id
    end
  end
  if nil ~= localValue3 then
    localValue4 = TriggerServerEvent
    dataCollection = "ca8c92d54d"
    dataCollection2 = tonumber
    number8 = localValue3
    dataCollection2 = dataCollection2(number8)
    if not dataCollection2 then
      dataCollection2 = localValue3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca8c92d54d".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceCancelInvite"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.userId
    if not localValue3 then
      localValue3 = localValue2.user_id
    end
  end
  if nil ~= localValue3 then
    localValue4 = TriggerServerEvent
    dataCollection = "75bddd9d94"
    dataCollection2 = tonumber
    number8 = localValue3
    dataCollection2 = dataCollection2(number8)
    if not dataCollection2 then
      dataCollection2 = localValue3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75bddd9d94".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceAcceptInvite"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.leaderUserId
  end
  if nil ~= localValue3 then
    localValue4 = TriggerServerEvent
    dataCollection = "8145d623f2"
    dataCollection2 = tonumber
    number8 = localValue3
    dataCollection2 = dataCollection2(number8)
    if not dataCollection2 then
      dataCollection2 = localValue3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8145d623f2".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceDeclineInvite"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.leaderUserId
  end
  if nil ~= localValue3 then
    localValue4 = TriggerServerEvent
    dataCollection = "784b3c6e6d"
    dataCollection2 = tonumber
    number8 = localValue3
    dataCollection2 = dataCollection2(number8)
    if not dataCollection2 then
      dataCollection2 = localValue3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "784b3c6e6d".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceKickMember"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, dataCollection, dataCollection2, number8
  localValue2 = number
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2 or localValue3
  if localValue2 then
    localValue3 = localValue2.userId
    if not localValue3 then
      localValue3 = localValue2.user_id
    end
  end
  if nil ~= localValue3 then
    localValue4 = TriggerServerEvent
    dataCollection = "ebd55de808"
    dataCollection2 = tonumber
    number8 = localValue3
    dataCollection2 = dataCollection2(number8)
    if not dataCollection2 then
      dataCollection2 = localValue3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ebd55de808".
    localValue4(dataCollection, dataCollection2)
  end
end
number2(number3, workingValue2)
number2 = CMG
number2 = number2.uiRegisterCallback
number3 = "healthServiceLeaveLobby"

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "1e38696858"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e38696858".
  localValue1(localValue2)
end
number2(number3, workingValue2)
