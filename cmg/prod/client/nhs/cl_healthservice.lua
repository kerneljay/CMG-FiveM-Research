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
local cmgCall, textValue, workValue6, workValue7, workValue8, numberValue7, workValue9, cmgCall4, dataTable3, vector3Builder, numberValue, numberValue2, numberValue3, workValue2
cmgCall = RegisterNetEvent
textValue = "e3a2b4bde0"
-- Beginner: this function handles network event "e3a2b4bde0".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8, flag12
  if "Trainee Paramedic" == arg1 then
    arg2 = PlaySound
    arg3 = -1
    arg4 = "CHECKPOINT_BEHIND"
    dataTable = "HUD_MINI_GAME_SOUNDSET"
    dataTable2 = false
    numberValue8 = 0
    flag12 = true
    arg2(arg3, arg4, dataTable, dataTable2, numberValue8, flag12)
    arg2 = CMG
    arg2 = arg2.initializeInstructionalJobScaleform
    arg3 = "Trainee Paramedic"
    arg4 = "Press F6 to get started"
    arg2(arg3, arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e3a2b4bde0".
cmgCall(textValue, workValue6)
cmgCall = RegisterNetEvent
textValue = "87318b22f0"
-- Beginner: this function handles network event "87318b22f0".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getModelGender
  arg1 = arg1()
  if "male" == arg1 then
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "ParamedicMale"
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.loadCustomisationPreset
    arg2 = "ParamedicFemale"
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "87318b22f0".
cmgCall(textValue, workValue6)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue = "getHealthServiceLeaderboard"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "a1ab9a3b49"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1ab9a3b49".
  arg1(arg2)
end
cmgCall(textValue, workValue6)
cmgCall = RegisterNetEvent
textValue = "985c4252d0"
-- Beginner: this function handles network event "985c4252d0".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, dataTable
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "HEALTHSERVICE_LEADERBOARD"
  arg4 = {}
  dataTable = arg1 or dataTable
  if not arg1 then
    dataTable = {}
  end
  arg4.paramedics = dataTable
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "985c4252d0".
cmgCall(textValue, workValue6)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue = "getHealthServiceLevelState"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "f61531fec4"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f61531fec4".
  arg1(arg2)
end
cmgCall(textValue, workValue6)
cmgCall = RegisterNetEvent
textValue = "4b7dbba9c0"
-- Beginner: this function handles network event "4b7dbba9c0".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3) ===
function workValue6(arg1, arg2, arg3)
  local arg4, dataTable, dataTable2, numberValue8
  arg4 = CMG
  arg4 = arg4.uiSendMessage
  dataTable = {}
  dataTable.type = "HEALTHSERVICE_LEVELS"
  dataTable2 = {}
  numberValue8 = arg1 or numberValue8
  if not arg1 then
    numberValue8 = 0
  end
  dataTable2.level = numberValue8
  numberValue8 = arg2 or numberValue8
  if not arg2 then
    numberValue8 = 0
  end
  dataTable2.xp = numberValue8
  numberValue8 = arg3 or numberValue8
  if not arg3 then
    numberValue8 = 0
  end
  dataTable2.xpMax = numberValue8
  dataTable.payload = dataTable2
  arg4(dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4b7dbba9c0".
cmgCall(textValue, workValue6)
cmgCall = CMG
cmgCall = cmgCall.uiRegisterCallback
textValue = "getHealthServiceLevels"

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "db119884cb"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "db119884cb".
  arg1(arg2)
end
cmgCall(textValue, workValue6)
cmgCall = RegisterNetEvent
textValue = "291d3f328b"
-- Beginner: this function handles network event "291d3f328b".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, dataTable
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "HEALTHSERVICE_LEVEL_LIST"
  arg4 = {}
  dataTable = arg1 or dataTable
  if not arg1 then
    dataTable = {}
  end
  arg4.levels = dataTable
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "291d3f328b".
cmgCall(textValue, workValue6)
cmgCall = false
textValue = 0

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3, arg4
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedInAnyVehicle
  arg3 = arg1
  arg4 = false
  arg2 = arg2(arg3, arg4)
  arg2 = IsPedSwimming
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedShooting
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedClimbing
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedDiving
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedFalling
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedJumping
  arg3 = arg1
  arg2 = arg2(arg3)
  arg2 = IsPedOnFoot
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = IsPedRunning
    arg3 = arg1
    arg2 = arg2(arg3)
    arg2 = IsPedUsingAnyScenario
    arg3 = arg1
    arg2 = arg2(arg3)
    arg2 = IsPedInParachuteFreeFall
    arg3 = arg1
    arg2 = arg2(arg3)
    arg2 = CMG
    arg2 = arg2.isPlayerNearPrison
    arg2 = arg2()
    arg2 = not arg2 and arg2
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, arg3, arg4, dataTable
  arg1 = BeginTextCommandDisplayHelp
  arg2 = "STRING"
  arg1(arg2)
  arg1 = AddTextEntry
  arg2 = "NHS_DRAG_HELP"
  arg3 = "~INPUT_CELLPHONE_CANCEL~ Cancel dragging"
  arg1(arg2, arg3)
  arg1 = AddTextComponentSubstringTextLabel
  arg2 = "NHS_DRAG_HELP"
  arg1(arg2)
  arg1 = EndTextCommandDisplayHelp
  arg2 = 0
  arg3 = false
  arg4 = false
  dataTable = 0
  arg1(arg2, arg3, arg4, dataTable)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3
  arg1 = textValue
  if arg1 > 0 then
    arg1 = TriggerServerEvent
    arg2 = "1126c6bae9"
    arg3 = textValue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1126c6bae9".
    arg1(arg2, arg3)
  end
  arg1 = ClearPedSecondaryTask
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  arg2, arg3 = arg2()
  arg1(arg2, arg3)
  arg1 = false
  cmgCall = arg1
  arg1 = 0
  textValue = arg1
end
numberValue7 = 30000

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8, flag12, workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5, flag6, flag7
  arg2 = "combat@drag_ped@"
  arg3 = "injured_drag_plyr"
  arg4 = "injured_drag_ped"
  dataTable = TriggerServerEvent
  dataTable2 = "ce85753545"
  numberValue8 = 0
  flag12 = arg2
  workValue10 = arg3
  workValue11 = arg4
  flag = 0.48
  flag2 = 4103
  flag3 = 0.0
  workValue3 = arg1
  workValue4 = numberValue7
  numberValue4 = 0.0
  numberValue5 = 33
  flag4 = 33
  flag5 = 1
  flag6 = 1
  flag7 = 11816
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce85753545".
  dataTable(dataTable2, numberValue8, flag12, workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5, flag6, flag7)
  dataTable = true
  cmgCall = dataTable
  textValue = arg1
  dataTable = SetTimeout
  dataTable2 = numberValue7

  -- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
  function numberValue8()
    local workValue, waitCall2
    workValue = cmgCall
    if workValue then
      workValue = workValue8
      workValue()
    end
  end
  dataTable(dataTable2, numberValue8)
end
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "nhs.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 and arg1 > 0 then
    arg2 = workValue9
    arg3 = arg1
    arg2(arg3)
  end
end
cmgCall4.startNhsDragFromRadial = dataTable3
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, arg4
  while true do
    arg1 = IsDisabledControlPressed
    arg2 = 1
    arg3 = 19
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = IsDisabledControlPressed
      arg2 = 1
      arg3 = 63
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = workValue6
        arg1 = arg1()
        if arg1 then
          arg1 = cmgCall
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.hasClientPermission
            arg2 = "nhs.onduty.permission"
            arg1 = arg1(arg2)
            if arg1 then
              arg1 = GetClosestPlayer
              arg2 = 3
              arg1 = arg1(arg2)
              if arg1 then
                arg2 = GetPlayerServerId
                arg3 = arg1
                -- Beginner: result below is serverId.
                arg2 = arg2(arg3)
                if -1 ~= arg2 and arg2 > 0 then
                  arg3 = workValue9
                  arg4 = arg2
                  arg3(arg4)
                end
              end
            end
          end
          arg1 = Wait
          arg2 = 250
          arg1(arg2)
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(dataTable3)
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3
  arg1 = cmgCall
  if arg1 then
    arg1 = workValue7
    arg1()
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 202
    arg1 = arg1(arg2, arg3)
    if not arg1 then
      arg1 = IsDisabledControlJustPressed
      arg2 = 0
      arg3 = 177
      arg1 = arg1(arg2, arg3)
      if not arg1 then
        goto flow_label_20
      end
    end
    arg1 = workValue8
    arg1()
  end
  ::flow_label_20::
end
vector3Builder = "NHS Drag Prompt"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(dataTable3, vector3Builder)
cmgCall4 = {}
dataTable3 = {}
dataTable3.model = "bandage2"
dataTable3.bone = 28252
vector3Builder = vector3
numberValue = -0.23
numberValue2 = -0.12
numberValue3 = 0.09
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.pos = vector3Builder
vector3Builder = vector3
numberValue = 137.97
numberValue2 = -34.49
numberValue3 = 88.56
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.rot = vector3Builder
dataTable3.propDelay = 500
dataTable3.duration = 300000
dataTable3.animDuration = 5000
dataTable3.animFlag = 0
cmgCall4.barm = dataTable3
dataTable3 = {}
dataTable3.model = "bandage"
dataTable3.bone = 51826
vector3Builder = vector3
numberValue = 0.3
numberValue2 = 0.01
numberValue3 = 0.02
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.pos = vector3Builder
vector3Builder = vector3
numberValue = 2.96
numberValue2 = -78.18
numberValue3 = -136.04
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.rot = vector3Builder
dataTable3.propDelay = 500
dataTable3.duration = 300000
dataTable3.animDuration = 5000
dataTable3.animFlag = 0
cmgCall4.bleg = dataTable3
dataTable3 = {}
dataTable3.model = "prop_cs_pills"
dataTable3.bone = 4089
vector3Builder = vector3
numberValue = 0.02
numberValue2 = -0.02
numberValue3 = -0.02
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.pos = vector3Builder
vector3Builder = vector3
numberValue = -137.09
numberValue2 = 13.69
numberValue3 = -25.04
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.rot = vector3Builder
dataTable3.propDelay = 100
dataTable3.duration = 5000
dataTable3.animFlag = 0
cmgCall4.pills = dataTable3
dataTable3 = {}
dataTable3.model = "p_syringe_01_s"
dataTable3.bone = 36029
vector3Builder = vector3
numberValue = 0.04
numberValue2 = 0.04
numberValue3 = 0.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.pos = vector3Builder
vector3Builder = vector3
numberValue = -90.44
numberValue2 = 35.47
numberValue3 = -16.02
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable3.rot = vector3Builder
dataTable3.propDelay = 100
dataTable3.duration = 5000
dataTable3.animFlag = 0
cmgCall4.psyringe = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2, arg3) ===
function dataTable3(arg1, arg2, arg3)
  local arg4, dataTable, dataTable2, numberValue8, flag12, workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5, flag6, flag7, numberValue6, flag8
  arg4 = GetHashKey
  dataTable = arg2.model
  -- Beginner: result below is hash.
  arg4 = arg4(dataTable)
  dataTable = CMG
  dataTable = dataTable.loadModel
  dataTable2 = arg4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataTable(dataTable2)
  dataTable = HasModelLoaded
  dataTable2 = arg4
  dataTable = dataTable(dataTable2)
  if not dataTable then
    dataTable = RequestModel
    dataTable2 = arg4
    dataTable(dataTable2)
    dataTable = 0
    while true do
      dataTable2 = HasModelLoaded
      numberValue8 = arg4
      dataTable2 = dataTable2(numberValue8)
      if dataTable2 then
        break
      end
      dataTable2 = 150
      if not (dataTable < dataTable2) then
        break
      end
      dataTable2 = Wait
      numberValue8 = 10
      dataTable2(numberValue8)
      dataTable = dataTable + 1
    end
  end
  dataTable = HasModelLoaded
  dataTable2 = arg4
  dataTable = dataTable(dataTable2)
  if not dataTable then
    dataTable = nil
    return dataTable
  end
  dataTable = CMG
  dataTable = dataTable.getPlayerCoords
  -- Beginner: result below is playerCoords.
  dataTable = dataTable()
  dataTable2 = CMG
  dataTable2 = dataTable2.requestEntitySpawn
  numberValue8 = "emergency_pack_prop"
  flag12 = arg3
  dataTable2(numberValue8, flag12)
  dataTable2 = CreateObject
  numberValue8 = arg4
  flag12 = dataTable.x
  workValue10 = dataTable.y
  workValue11 = dataTable.z
  flag = true
  flag2 = true
  flag3 = false
  -- Beginner: result below is objectEntity.
  dataTable2 = dataTable2(numberValue8, flag12, workValue10, workValue11, flag, flag2, flag3)
  if dataTable2 then
    numberValue8 = DoesEntityExist
    flag12 = dataTable2
    numberValue8 = numberValue8(flag12)
    if numberValue8 then
      goto flow_label_64
    end
  end
  numberValue8 = nil
  return numberValue8
  ::flow_label_64::
  numberValue8 = GetPedBoneIndex
  flag12 = arg1
  workValue10 = arg2.bone
  numberValue8 = numberValue8(flag12, workValue10)
  flag12 = AttachEntityToEntity
  workValue10 = dataTable2
  workValue11 = arg1
  flag = numberValue8
  flag2 = arg2.pos
  flag2 = flag2.x
  flag3 = arg2.pos
  flag3 = flag3.y
  workValue3 = arg2.pos
  workValue3 = workValue3.z
  workValue4 = arg2.rot
  workValue4 = workValue4.x
  numberValue4 = arg2.rot
  numberValue4 = numberValue4.y
  numberValue5 = arg2.rot
  numberValue5 = numberValue5.z
  flag4 = true
  flag5 = true
  flag6 = false
  flag7 = true
  numberValue6 = 1
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  flag12(workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5, flag6, flag7, numberValue6, flag8)
  flag12 = SetEntityCollision
  workValue10 = dataTable2
  workValue11 = false
  flag = false
  flag12(workValue10, workValue11, flag)
  flag12 = SetModelAsNoLongerNeeded
  workValue10 = arg4
  flag12(workValue10)
  return dataTable2
end

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1, arg2, arg3, arg4) ===
function vector3Builder(arg1, arg2, arg3, arg4)
  local dataTable, dataTable2, numberValue8, flag12, workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5
  dataTable = CMG
  dataTable = dataTable.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  dataTable = dataTable()
  dataTable2 = cmgCall4
  dataTable2 = dataTable2[arg1]
  if dataTable2 then
    numberValue8 = dataTable2.animFlag
    if numberValue8 then
      goto flow_label_12
    end
  end
  numberValue8 = 48
  ::flow_label_12::
  flag12 = CMG
  flag12 = flag12.loadAnimDict
  workValue10 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  flag12(workValue10)
  flag12 = TaskPlayAnim
  workValue10 = dataTable
  workValue11 = arg2
  flag = arg3
  flag2 = 2.0
  flag3 = 2.0
  workValue3 = -1
  workValue4 = numberValue8
  numberValue4 = 1
  numberValue5 = false
  flag4 = false
  flag5 = false
  -- Beginner: Play an animation on a ped.
  flag12(workValue10, workValue11, flag, flag2, flag3, workValue3, workValue4, numberValue4, numberValue5, flag4, flag5)
  if arg4 then
    flag12 = SendNUIMessage
    workValue10 = {}
    workValue10.transactionType = arg4
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    flag12(workValue10)
  end
  flag12 = Citizen
  flag12 = flag12.CreateThread

  -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
  function workValue10()
    local workValue, waitCall2, cmgCall2, waitCall3, cmgCall3, flag11, numberValue9
    workValue = nil
    waitCall2 = dataTable2
    if waitCall2 then
      waitCall2 = Wait
      cmgCall2 = dataTable2.propDelay
      waitCall2(cmgCall2)
      waitCall2 = dataTable3
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      cmgCall2 = cmgCall2()
      waitCall3 = dataTable2
      cmgCall3 = arg1
      waitCall2 = waitCall2(cmgCall2, waitCall3, cmgCall3)
      workValue = waitCall2
    end
    waitCall2 = dataTable2
    if waitCall2 then
      waitCall2 = dataTable2.animDuration
      if waitCall2 then
        goto flow_label_29
      end
    end
    waitCall2 = dataTable2
    if waitCall2 then
      waitCall2 = dataTable2.duration
      if waitCall2 then
        goto flow_label_29
      end
    end
    waitCall2 = 2500
    ::flow_label_29::
    cmgCall2 = dataTable2
    if cmgCall2 then
      cmgCall2 = dataTable2.duration
      if cmgCall2 then
        goto flow_label_36
      end
    end
    cmgCall2 = 2500
    ::flow_label_36::
    waitCall3 = Wait
    cmgCall3 = math
    cmgCall3 = cmgCall3.max
    flag11 = 0
    numberValue9 = dataTable2
    if numberValue9 then
      numberValue9 = dataTable2.propDelay
      if numberValue9 then
        goto flow_label_47
      end
    end
    numberValue9 = 0
    ::flow_label_47::
    numberValue9 = waitCall2 - numberValue9
    cmgCall3, flag11, numberValue9 = cmgCall3(flag11, numberValue9)
    waitCall3(cmgCall3, flag11, numberValue9)
    waitCall3 = ClearPedTasks
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.getPlayerPed
    cmgCall3, flag11, numberValue9 = cmgCall3()
    waitCall3(cmgCall3, flag11, numberValue9)
    if workValue then
      waitCall3 = DoesEntityExist
      cmgCall3 = workValue
      waitCall3 = waitCall3(cmgCall3)
      if waitCall3 and waitCall2 < cmgCall2 then
        waitCall3 = Citizen
        waitCall3 = waitCall3.CreateThread

        -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
        function cmgCall3()
          local waitCall, workValue5, flag9, flag10
          waitCall = Wait
          workValue5 = cmgCall2
          flag9 = waitCall2
          workValue5 = workValue5 - flag9
          waitCall(workValue5)
          waitCall = workValue
          if waitCall then
            waitCall = DoesEntityExist
            workValue5 = workValue
            waitCall = waitCall(workValue5)
            if waitCall then
              waitCall = DetachEntity
              workValue5 = workValue
              flag9 = false
              flag10 = false
              waitCall(workValue5, flag9, flag10)
              waitCall = DeleteEntity
              workValue5 = workValue
              -- Beginner: Delete a GTA entity.
              waitCall(workValue5)
            end
          end
        end
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        waitCall3(cmgCall3)
    end
    elseif workValue then
      waitCall3 = DoesEntityExist
      cmgCall3 = workValue
      waitCall3 = waitCall3(cmgCall3)
      if waitCall3 then
        waitCall3 = DetachEntity
        cmgCall3 = workValue
        flag11 = false
        numberValue9 = false
        waitCall3(cmgCall3, flag11, numberValue9)
        waitCall3 = DeleteEntity
        cmgCall3 = workValue
        -- Beginner: Delete a GTA entity.
        waitCall3(cmgCall3)
      end
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  flag12(workValue10)
end
numberValue = RegisterNetEvent
numberValue2 = "b14b321665"
-- Beginner: this function handles network event "b14b321665".

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1, arg2) ===
function numberValue3(arg1, arg2)
  local arg3, arg4, dataTable, dataTable2, numberValue8, flag12, workValue10, workValue11
  if arg1 then
    arg3 = "barm"
    if arg3 then
      goto flow_label_7
    end
  end
  arg3 = "bleg"
  ::flow_label_7::
  if arg1 then
    arg4 = "emergency1@bandagearm@clip"
    if arg4 then
      goto flow_label_13
    end
  end
  arg4 = "emergency1@bandageleg@clip"
  ::flow_label_13::
  if arg1 then
    dataTable = "bandagearm_clip"
    if dataTable then
      goto flow_label_19
    end
  end
  dataTable = "bandageleg_clip"
  ::flow_label_19::
  dataTable2 = vector3Builder
  numberValue8 = arg3
  flag12 = arg4
  workValue10 = dataTable
  workValue11 = "bandage"
  dataTable2(numberValue8, flag12, workValue10, workValue11)
  dataTable2 = Citizen
  dataTable2 = dataTable2.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
  function numberValue8()
    local workValue, waitCall2
    workValue = Wait
    waitCall2 = 5000
    workValue(waitCall2)
    workValue = CMG
    workValue = workValue.stopBleeding
    if workValue then
      workValue = CMG
      workValue = workValue.stopBleeding
      workValue()
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  dataTable2(numberValue8)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b14b321665".
numberValue(numberValue2, numberValue3)
numberValue = RegisterNetEvent
numberValue2 = "62acadffbf"
-- Beginner: this function handles network event "62acadffbf".

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: none) ===
function numberValue3()
  local arg1, arg2, arg3, arg4, dataTable
  arg1 = vector3Builder
  arg2 = "psyringe"
  arg3 = "emergency1@syringe@clip"
  arg4 = "syringe_clip"
  dataTable = "syringe"
  arg1(arg2, arg3, arg4, dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62acadffbf".
numberValue(numberValue2, numberValue3)
numberValue = RegisterNetEvent
numberValue2 = "00393cdccd"
-- Beginner: this function handles network event "00393cdccd".

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "HEALTHSERVICE_LOBBY"
  arg4 = arg1 or arg4
  if not arg1 then
    arg4 = {}
  end
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "00393cdccd".
numberValue(numberValue2, numberValue3)
numberValue = RegisterNetEvent
numberValue2 = "f286a73897"
-- Beginner: this function handles network event "f286a73897".

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3, arg4, dataTable
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  arg3 = {}
  arg3.type = "HEALTHSERVICE_SEARCH_RESULT"
  arg4 = {}
  dataTable = arg1 or dataTable
  if not arg1 then
    dataTable = {}
  end
  arg4.players = dataTable
  arg3.payload = arg4
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f286a73897".
numberValue(numberValue2, numberValue3)
numberValue = RegisterNetEvent
numberValue2 = "33567d9509"
-- Beginner: this function handles network event "33567d9509".

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1, arg2) ===
function numberValue3(arg1, arg2)
  local arg3, arg4, dataTable, dataTable2
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 or "" == arg2 then
    return
  end
  if arg1 then
    arg3 = "~g~"
    if arg3 then
      goto flow_label_15
    end
  end
  arg3 = "~r~"
  ::flow_label_15::
  arg4 = tCMG
  arg4 = arg4.notify
  dataTable = arg3
  dataTable2 = arg2
  dataTable = dataTable .. dataTable2
  -- Beginner: Show a notification to the player.
  arg4(dataTable)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "33567d9509".
numberValue(numberValue2, numberValue3)
numberValue = AddEventHandler
numberValue2 = "a68d3374be"
-- Beginner: this function runs when client event "a68d3374be" fires.

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.getClientFaction
  arg2 = arg2()
  if "Health Service" == arg2 then
    arg2 = TriggerServerEvent
    arg3 = "38dbf567b8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dbf567b8".
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "a68d3374be".
numberValue(numberValue2, numberValue3)

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg1) ===
function numberValue(arg1)
  local arg2, arg3, arg4, dataTable
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "table" == arg2 then
    return arg1
  end
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" == arg2 and "" ~= arg1 then
    arg2 = pcall
    arg3 = json
    arg3 = arg3.decode
    arg4 = arg1
    arg2, arg3 = arg2(arg3, arg4)
    if arg2 then
      arg4 = type
      dataTable = arg3
      arg4 = arg4(dataTable)
      if "table" == arg4 then
        return arg3
      end
    end
  end
  arg2 = nil
  return arg2
end
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceRequestLobbySync"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "38dbf567b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38dbf567b8".
  arg1(arg2)
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceSearchPlayers"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.query
  end
  arg4 = type
  dataTable = arg3
  arg4 = arg4(dataTable)
  if "string" == arg4 then
    arg4 = TriggerServerEvent
    dataTable = "744baa038a"
    dataTable2 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "744baa038a".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceInvitePlayer"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.userId
    if not arg3 then
      arg3 = arg2.user_id
    end
  end
  if nil ~= arg3 then
    arg4 = TriggerServerEvent
    dataTable = "ca8c92d54d"
    dataTable2 = tonumber
    numberValue8 = arg3
    dataTable2 = dataTable2(numberValue8)
    if not dataTable2 then
      dataTable2 = arg3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ca8c92d54d".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceCancelInvite"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.userId
    if not arg3 then
      arg3 = arg2.user_id
    end
  end
  if nil ~= arg3 then
    arg4 = TriggerServerEvent
    dataTable = "75bddd9d94"
    dataTable2 = tonumber
    numberValue8 = arg3
    dataTable2 = dataTable2(numberValue8)
    if not dataTable2 then
      dataTable2 = arg3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75bddd9d94".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceAcceptInvite"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.leaderUserId
  end
  if nil ~= arg3 then
    arg4 = TriggerServerEvent
    dataTable = "8145d623f2"
    dataTable2 = tonumber
    numberValue8 = arg3
    dataTable2 = dataTable2(numberValue8)
    if not dataTable2 then
      dataTable2 = arg3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8145d623f2".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceDeclineInvite"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.leaderUserId
  end
  if nil ~= arg3 then
    arg4 = TriggerServerEvent
    dataTable = "784b3c6e6d"
    dataTable2 = tonumber
    numberValue8 = arg3
    dataTable2 = dataTable2(numberValue8)
    if not dataTable2 then
      dataTable2 = arg3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "784b3c6e6d".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceKickMember"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, arg4, dataTable, dataTable2, numberValue8
  arg2 = numberValue
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2 or arg3
  if arg2 then
    arg3 = arg2.userId
    if not arg3 then
      arg3 = arg2.user_id
    end
  end
  if nil ~= arg3 then
    arg4 = TriggerServerEvent
    dataTable = "ebd55de808"
    dataTable2 = tonumber
    numberValue8 = arg3
    dataTable2 = dataTable2(numberValue8)
    if not dataTable2 then
      dataTable2 = arg3
    end
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ebd55de808".
    arg4(dataTable, dataTable2)
  end
end
numberValue2(numberValue3, workValue2)
numberValue2 = CMG
numberValue2 = numberValue2.uiRegisterCallback
numberValue3 = "healthServiceLeaveLobby"

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
function workValue2()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "1e38696858"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1e38696858".
  arg1(arg2)
end
numberValue2(numberValue3, workValue2)
