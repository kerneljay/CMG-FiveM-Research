--[[
    LEVEL 1 BEGINNER GUIDE — Grinding
    ======================================

    File: cmg/prod/client/drugs/cl_grinding.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: drug-related gameplay systems, specifically the Grinding feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
      * Background threads: 0
      * Always-running loops: 5
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
local flag, dataTable, dataTable3, dataTable4, vector3Builder15, numberValue6, numberValue7, numberValue8, workValue8, flag16, cmgCall, cmgCall2, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, vector3Builder13, vector3Builder14, numberValue2, numberValue3, numberValue4
flag = false
dataTable = {}
dataTable3 = {}
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 2304.98828125
numberValue7 = 5135.8110351563
numberValue8 = 51.296546936035
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 100
dataTable3.mining = dataTable4
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 1580.9086914062
numberValue7 = 3581.8850097656
numberValue8 = 34.838912963867
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 10
dataTable3.processing = dataTable4
dataTable.Heroin = dataTable3
dataTable3 = {}
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 5382.7719726562
numberValue7 = -5251.4077148438
numberValue8 = 34.086650848389
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 100
dataTable3.mining = dataTable4
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = -2087.8676757812
numberValue7 = 2630.2211914062
numberValue8 = 3.083966255188
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 35
dataTable3.processing = dataTable4
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 481.53744506836
numberValue7 = -3254.2009277344
numberValue8 = 6.069260597229
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 35
dataTable3.refinery = dataTable4
dataTable.LSD = dataTable3
dataTable3 = {}
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = -593.01190185546
numberValue7 = 2077.3544921875
numberValue8 = 131.38098144532
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 10
dataTable3.mining = dataTable4
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 2711.3342285156
numberValue7 = 1519.6458740234
numberValue8 = 24.500577926636
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 50
dataTable3.processing = dataTable4
dataTable.Gold = dataTable3
dataTable3 = {}
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 382.52517700195
numberValue7 = 2893.7443847656
numberValue8 = 43.554821014404
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 100
dataTable3.mining = dataTable4
dataTable4 = {}
vector3Builder15 = vector3
numberValue6 = 2645.3518066406
numberValue7 = 2814.0886230469
numberValue8 = 33.947082519531
vector3Builder15 = vector3Builder15(numberValue6, numberValue7, numberValue8)
dataTable4.position = vector3Builder15
dataTable4.radius = 100
dataTable3.processing = dataTable4
dataTable.Diamond = dataTable3
dataTable3 = CMG

-- === HELPER FUNCTION (decompiler name: dataTable4; parameters: none) ===
function dataTable4()
  local arg1, arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6
  arg1 = {}
  arg2 = pairs
  arg3 = dataTable
  arg2, arg3, cmgCall3, workValue5 = arg2(arg3)
  for textValue, heading in arg2, arg3, cmgCall3, workValue5 do
    iterator = pairs
    flag15 = heading
    iterator, flag15, flag17, flag2 = iterator(flag15)
    for flag3, flag4 in iterator, flag15, flag17, flag2 do
      tableHelper = table
      tableHelper = tableHelper.insert
      flag5 = arg1
      flag6 = flag4
      tableHelper(flag5, flag6)
    end
  end
  return arg1
end
dataTable3.getGrindingAreas = dataTable4

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9
  arg2 = "amb@world_human_clipboard@male@base"
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  cmgCall3 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(cmgCall3)
  arg3 = TaskPlayAnim
  cmgCall3 = arg1
  workValue5 = arg2
  textValue = "base"
  heading = 8.0
  iterator = 8.0
  flag15 = -1
  flag17 = 1
  flag2 = 1.0
  flag3 = false
  flag4 = false
  tableHelper = false
  -- Beginner: Play an animation on a ped.
  arg3(cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper)
  arg3 = RemoveAnimDict
  cmgCall3 = arg2
  arg3(cmgCall3)
  arg3 = 1027109416
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.loadModel
  workValue5 = arg3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall3(workValue5)
  cmgCall3 = CreateObject
  workValue5 = arg3
  textValue = 0.0
  heading = 0.0
  iterator = 0.0
  flag15 = false
  flag17 = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  cmgCall3 = cmgCall3(workValue5, textValue, heading, iterator, flag15, flag17, flag2)
  workValue5 = SetModelAsNoLongerNeeded
  textValue = arg3
  workValue5(textValue)
  workValue5 = AttachEntityToEntity
  textValue = cmgCall3
  heading = arg1
  iterator = GetPedBoneIndex
  flag15 = arg1
  flag17 = 26610
  iterator = iterator(flag15, flag17)
  flag15 = -0.05
  flag17 = -0.05
  flag2 = 0.0
  flag3 = 0.0
  flag4 = 20.0
  tableHelper = -110.0
  flag5 = false
  flag6 = false
  flag7 = false
  flag8 = true
  numberValue = 2
  flag9 = false
  -- Beginner: Attach one entity to another entity.
  workValue5(textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9)
  return cmgCall3
end
dataTable4 = RegisterNetEvent
vector3Builder15 = "29863bd721"
-- Beginner: this function handles network event "29863bd721".

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: arg1, arg2, arg3) ===
function numberValue6(arg1, arg2, arg3)
  local cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9, flag11, flag12, flag13
  cmgCall3 = flag
  if not cmgCall3 then
    cmgCall3 = true
    flag = cmgCall3
    cmgCall3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall3 = cmgCall3()
    workValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue5 = workValue5()
    textValue = CMG
    textValue = textValue.getPlayerCoords
    -- Beginner: result below is playerCoords.
    textValue = textValue()
    heading = GetEntityHeading
    iterator = workValue5
    -- Beginner: result below is heading.
    heading = heading(iterator)
    iterator = 0
    if "WORLD_HUMAN_CLIPBOARD" == arg1 then
      flag15 = CMG
      flag15 = flag15.getModelGender
      flag15 = flag15()
      if "female" == flag15 then
        flag15 = dataTable3
        flag17 = workValue5
        flag15 = flag15(flag17)
        iterator = flag15
    end
    else
      flag15 = TaskStartScenarioInPlace
      flag17 = workValue5
      flag2 = arg1
      flag3 = 0
      flag4 = true
      flag15(flag17, flag2, flag3, flag4)
    end
    flag15 = nil
    if arg2 then
      flag17 = CMG
      flag17 = flag17.loadPtfx
      flag2 = "core"
      flag17(flag2)
      flag17 = UseParticleFxAsset
      flag2 = "core"
      flag17(flag2)
      flag17 = GetEntityCoords
      flag2 = workValue5
      -- Beginner: result below is entityCoords.
      flag17 = flag17(flag2)
      flag2 = StartParticleFxLoopedAtCoord
      flag3 = "ent_amb_smoke_foundry"
      flag4 = flag17.x
      tableHelper = flag17.y
      flag5 = flag17.z
      flag5 = flag5 - 3
      flag6 = 0.0
      flag7 = 0.0
      flag8 = 0.0
      numberValue = 1.0
      flag9 = false
      flag11 = false
      flag12 = false
      flag13 = false
      flag2 = flag2(flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9, flag11, flag12, flag13)
      flag15 = flag2
      flag2 = RemoveNamedPtfxAsset
      flag3 = "core"
      flag2(flag3)
    end
    flag17 = arg3
    if not flag17 or flag17 < 1 then
      flag17 = 10000
      flag2 = CMG
      flag2 = flag2.isPlatClub
      flag2 = flag2()
      if flag2 then
        flag17 = 7500
      end
    end
    flag2 = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
    function flag3()
      local arg12, flag10, flag14, numberValue5, workValue6
      arg12 = CMG
      arg12 = arg12.startCircularProgressBar
      flag10 = ""
      flag14 = flag17
      numberValue5 = nil
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
      function workValue6()
        local workValue, workValue2
      end
      arg12(flag10, flag14, numberValue5, workValue6)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    flag2(flag3)
    while true do
      flag2 = cmgCall3 + flag17
      flag3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag3 = flag3()
      if not (flag2 > flag3) then
        break
      end
      flag2 = Wait
      flag3 = 0
      flag2(flag3)
    end
    if 0 ~= iterator then
      flag2 = DeleteEntity
      flag3 = iterator
      -- Beginner: Delete a GTA entity.
      flag2(flag3)
    end
    flag2 = ClearPedTasksImmediately
    flag3 = workValue5
    flag2(flag3)
    flag2 = SetEntityHeading
    flag3 = workValue5
    flag4 = heading
    -- Beginner: Change the direction an entity is facing.
    flag2(flag3, flag4)
    flag2 = SetEntityCoordsNoOffset
    flag3 = workValue5
    flag4 = textValue.x
    tableHelper = textValue.y
    flag5 = textValue.z
    flag6 = true
    flag7 = false
    flag8 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    flag2(flag3, flag4, tableHelper, flag5, flag6, flag7, flag8)
    if arg2 then
      flag2 = RemoveParticleFx
      flag3 = flag15
      flag4 = false
      flag2(flag3, flag4)
    end
    flag2 = false
    flag = flag2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "29863bd721".
dataTable4(vector3Builder15, numberValue6)
dataTable4 = RegisterNetEvent
vector3Builder15 = "7418fc87b2"
-- Beginner: this function handles network event "7418fc87b2".

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
function numberValue6()
  local arg1, arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9
  arg1 = flag
  if not arg1 then
    arg1 = true
    flag = arg1
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = RequestAnimDict
    arg3 = "melee@large_wpn@streamed_core"
    arg2(arg3)
    while true do
      arg2 = HasAnimDictLoaded
      arg3 = "melee@large_wpn@streamed_core"
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = CMG
    arg3 = arg3.loadModel
    cmgCall3 = 260873931
    arg3 = arg3(cmgCall3)
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.requestEntitySpawn
    workValue5 = "grinding_pickaxe"
    cmgCall3(workValue5)
    cmgCall3 = CreateObject
    workValue5 = arg3
    textValue = 0
    heading = 0
    iterator = 0
    flag15 = true
    flag17 = true
    flag2 = true
    -- Beginner: result below is objectEntity.
    cmgCall3 = cmgCall3(workValue5, textValue, heading, iterator, flag15, flag17, flag2)
    workValue5 = AttachEntityToEntity
    textValue = cmgCall3
    heading = arg2
    iterator = GetPedBoneIndex
    flag15 = arg2
    flag17 = 57005
    iterator = iterator(flag15, flag17)
    flag15 = 0.18
    flag17 = -0.02
    flag2 = -0.02
    flag3 = 350.0
    flag4 = 100.0
    tableHelper = 140.0
    flag5 = true
    flag6 = true
    flag7 = false
    flag8 = true
    numberValue = 1
    flag9 = true
    -- Beginner: Attach one entity to another entity.
    workValue5(textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9)
    workValue5 = SetModelAsNoLongerNeeded
    textValue = arg3
    workValue5(textValue)
    workValue5 = 10000
    textValue = CMG
    textValue = textValue.isPlatClub
    textValue = textValue()
    if textValue then
      workValue5 = 7500
    end
    textValue = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION: heading() ===
    function heading()
      local arg12, flag10, flag14, numberValue5, workValue6
      arg12 = CMG
      arg12 = arg12.startCircularProgressBar
      flag10 = ""
      flag14 = workValue5
      numberValue5 = nil
      -- Beginner: this function is the body of a background FiveM thread.

      -- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
      function workValue6()
        local workValue, workValue2
      end
      arg12(flag10, flag14, numberValue5, workValue6)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    textValue(heading)
    while true do
      textValue = arg1 + workValue5
      heading = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      heading = heading()
      if not (textValue > heading) then
        break
      end
      while true do
        textValue = IsEntityPlayingAnim
        heading = CMG
        heading = heading.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        heading = heading()
        iterator = "melee@large_wpn@streamed_core"
        flag15 = "ground_attack_on_spot"
        flag17 = 3
        textValue = textValue(heading, iterator, flag15, flag17)
        if 1 ~= textValue then
          break
        end
        textValue = Wait
        heading = 0
        textValue(heading)
      end
      textValue = TaskPlayAnim
      heading = arg2
      iterator = "melee@large_wpn@streamed_core"
      flag15 = "ground_attack_on_spot"
      flag17 = 8.0
      flag2 = 8.0
      flag3 = 1250
      flag4 = 80
      tableHelper = 0
      flag5 = false
      flag6 = false
      flag7 = false
      -- Beginner: Play an animation on a ped.
      textValue(heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7)
      textValue = Wait
      heading = 0
      textValue(heading)
    end
    textValue = RemoveAnimDict
    heading = "melee@large_wpn@streamed_core"
    textValue(heading)
    textValue = DeleteEntity
    heading = cmgCall3
    -- Beginner: Delete a GTA entity.
    textValue(heading)
    textValue = ClearPedTasksImmediately
    heading = arg2
    textValue(heading)
    textValue = false
    flag = textValue
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~Mining currently in progress."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7418fc87b2".
dataTable4(vector3Builder15, numberValue6)
dataTable4 = false
vector3Builder15 = 0
numberValue6 = false

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: none) ===
function numberValue7()
  local arg1, arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17
  arg1 = pairs
  arg2 = GetGamePool
  arg3 = "CObject"
  arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17 = arg2(arg3)
  arg1, arg2, arg3, cmgCall3 = arg1(arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17)
  for workValue5, textValue in arg1, arg2, arg3, cmgCall3 do
    heading = GetEntityModel
    iterator = textValue
    -- Beginner: result below is modelHash.
    heading = heading(iterator)
    if 1027109416 == heading then
      heading = SetEntityAsMissionEntity
      iterator = textValue
      flag15 = false
      flag17 = false
      heading(iterator, flag15, flag17)
      heading = DeleteEntity
      iterator = textValue
      -- Beginner: Delete a GTA entity.
      heading(iterator)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg1 = false
    return arg1
  end
  arg1 = GetEntityHealth
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is health.
  arg1 = arg1(arg2)
  if arg1 <= 102 then
    arg1 = false
    return arg1
  end
  arg1 = GetEntitySpeed
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is speed.
  arg1 = arg1(arg2)
  if arg1 >= 5.0 then
    arg1 = false
    return arg1
  end
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientGroup
    arg2 = "Vigilante"
    arg1 = arg1(arg2)
    if not arg1 then
      goto flow_label_37
    end
  end
  arg1 = false
  return arg1
  ::flow_label_37::
  arg1 = true
  return arg1
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, cmgCall3, workValue5
  if arg1 then
    arg2 = numberValue8
    arg2 = arg2()
    if not arg2 then
      return
    end
  end
  numberValue6 = arg1
  arg2 = notify
  if arg1 then
    arg3 = "~g~"
    if arg3 then
      goto flow_label_16
    end
  end
  arg3 = "~r~"
  ::flow_label_16::
  cmgCall3 = "Grinding has been toggled "
  if arg1 then
    workValue5 = "on."
    if workValue5 then
      goto flow_label_23
    end
  end
  workValue5 = "off."
  ::flow_label_23::
  arg3 = arg3 .. cmgCall3 .. workValue5
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = clearNativeText
  arg2()
end
flag16 = false
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = flag16
  return arg1
end
cmgCall.isInGrindingArea = cmgCall2
cmgCall = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1, arg2) ===
function vector3Builder(arg1, arg2)
  local arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6, flag7, flag8, numberValue, flag9, flag11, flag12, flag13, workValue3, workValue4, dataTable2
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: arg3(arg12) ===
    function arg3(arg12)
      local flag10
      flag10 = true
      flag16 = flag10
      arg12.nearby = true
      flag10 = dataTable4
      if not flag10 then
        flag10 = arg12.drug
        if "LSD" == flag10 then
          flag10 = arg12.type
          if "mining" == flag10 then
            flag10 = true
            dataTable4 = flag10
          end
        end
      end
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg12) ===
    function cmgCall3(arg12)
      local flag10
      flag10 = false
      flag16 = flag10
      arg12.nearby = false
      flag10 = false
      numberValue6 = flag10
    end

    -- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg12) ===
    function workValue5(arg12)
      local flag10, flag14, numberValue5, workValue6, workValue7
      flag10 = arg12.nearby
      if flag10 then
        flag10 = numberValue6
        if flag10 then
          flag10 = numberValue8
          flag10 = flag10()
          if not flag10 then
            flag10 = workValue8
            flag14 = false
            flag10(flag14)
          end
        end
        flag10 = IsControlJustReleased
        flag14 = 0
        numberValue5 = 38
        flag10 = flag10(flag14, numberValue5)
        if flag10 then
          flag10 = workValue8
          flag14 = numberValue6
          flag14 = not flag14
          flag10(flag14)
        end
        flag10 = numberValue6
        if flag10 then
          flag10 = drawNativeText
          flag14 = "~g~Grinding mode enabled."
          -- Beginner: Draw GTA-style text on screen.
          flag10(flag14)
          flag10 = CMG
          flag10 = flag10.getSelectedEntity
          flag10 = flag10()
          if flag10 then
            flag14 = DoesEntityExist
            numberValue5 = flag10
            flag14 = flag14(numberValue5)
            if flag14 then
              flag14 = CMG
              flag14 = flag14.isLootbagModel
              numberValue5 = GetEntityModel
              workValue6 = flag10
              numberValue5, workValue6, workValue7 = numberValue5(workValue6)
              flag14 = flag14(numberValue5, workValue6, workValue7)
              if flag14 then
                goto flow_label_69
              end
            end
          end
          flag14 = flag
          if not flag14 then
            flag14 = numberValue7
            flag14()
            flag14 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            flag14 = flag14()
            numberValue5 = vector3Builder15
            flag14 = flag14 - numberValue5
            numberValue5 = 1000
            if flag14 > numberValue5 then
              flag14 = TriggerServerEvent
              numberValue5 = "90f12939da"
              workValue6 = arg12.drug
              workValue7 = arg12.type
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90f12939da".
              flag14(numberValue5, workValue6, workValue7)
              flag14 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              flag14 = flag14()
              vector3Builder15 = flag14
            end
          end
        end
      end
      ::flow_label_69::
    end
    textValue = pairs
    heading = dataTable
    textValue, heading, iterator, flag15 = textValue(heading)
    for flag17, flag2 in textValue, heading, iterator, flag15 do
      flag3 = pairs
      flag4 = flag2
      flag3, flag4, tableHelper, flag5 = flag3(flag4)
      for flag6, flag7 in flag3, flag4, tableHelper, flag5 do
        flag8 = CMG
        flag8 = flag8.createArea
        numberValue = flag17
        flag9 = "_"
        flag11 = flag6
        numberValue = numberValue .. flag9 .. flag11
        flag9 = flag7.position
        flag11 = flag7.radius
        flag12 = 6
        flag13 = arg3
        workValue3 = cmgCall3
        workValue4 = workValue5
        dataTable2 = {}
        dataTable2.drug = flag17
        dataTable2.type = flag6
        dataTable2.nearby = false
        -- Beginner: Create an interaction area around a world position.
        flag8(numberValue, flag9, flag11, flag12, flag13, workValue3, workValue4, dataTable2)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall(cmgCall2, vector3Builder)
cmgCall = RegisterNetEvent
cmgCall2 = "772437c583"
-- Beginner: this function handles network event "772437c583".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2
  arg1 = notify
  arg2 = "~r~You can not grind any more as your inventory is full."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = workValue8
  arg2 = false
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "772437c583".
cmgCall(cmgCall2, vector3Builder)
cmgCall = {}
cmgCall2 = vector3
vector3Builder = -2538.2626953125
vector3Builder2 = 2538.5344238281
vector3Builder3 = 1.5569897890091
cmgCall2 = cmgCall2(vector3Builder, vector3Builder2, vector3Builder3)
vector3Builder = vector3
vector3Builder2 = -2539.4194335938
vector3Builder3 = 2539.9475097656
vector3Builder4 = 1.7244160175323
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, vector3Builder4)
vector3Builder2 = vector3
vector3Builder3 = -2538.71484375
vector3Builder4 = 2543.5520019531
vector3Builder5 = 1.0692403316498
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
vector3Builder3 = vector3
vector3Builder4 = -2533.0373535156
vector3Builder5 = 2542.5346679688
vector3Builder6 = 0.32451114058495
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder4 = vector3
vector3Builder5 = -2527.6525878906
vector3Builder6 = 2537.4482421875
vector3Builder7 = 0.56682348251343
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, vector3Builder7)
vector3Builder5 = vector3
vector3Builder6 = -2523.6909179688
vector3Builder7 = 2529.111328125
vector3Builder8 = 1.4954501390457
vector3Builder5 = vector3Builder5(vector3Builder6, vector3Builder7, vector3Builder8)
vector3Builder6 = vector3
vector3Builder7 = -2525.0510253906
vector3Builder8 = 2531.9443359375
vector3Builder9 = 0.9762516617775
vector3Builder6 = vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
vector3Builder7 = vector3
vector3Builder8 = -2526.4099121094
vector3Builder9 = 2525.73828125
vector3Builder10 = 1.6228685379028
vector3Builder7 = vector3Builder7(vector3Builder8, vector3Builder9, vector3Builder10)
vector3Builder8 = vector3
vector3Builder9 = -2533.9858398438
vector3Builder10 = 2521.1958007813
vector3Builder11 = 3.1568129062653
vector3Builder8 = vector3Builder8(vector3Builder9, vector3Builder10, vector3Builder11)
vector3Builder9 = vector3
vector3Builder10 = -2543.078125
vector3Builder11 = 2522.0473632813
vector3Builder12 = 3.0881731510162
vector3Builder9 = vector3Builder9(vector3Builder10, vector3Builder11, vector3Builder12)
vector3Builder10 = vector3
vector3Builder11 = -2550.4807128906
vector3Builder12 = 2524.4438476563
vector3Builder13 = 3.1460916996002
vector3Builder10 = vector3Builder10(vector3Builder11, vector3Builder12, vector3Builder13)
vector3Builder11 = vector3
vector3Builder12 = -2553.2941894531
vector3Builder13 = 2529.9609375
vector3Builder14 = 2.8802394866943
vector3Builder11 = vector3Builder11(vector3Builder12, vector3Builder13, vector3Builder14)
vector3Builder12 = vector3
vector3Builder13 = -2530.7827148438
vector3Builder14 = 2530.3264160156
numberValue2 = 1.5112105607986
vector3Builder12 = vector3Builder12(vector3Builder13, vector3Builder14, numberValue2)
vector3Builder13 = vector3
vector3Builder14 = -2530.287109375
numberValue2 = 2523.9948730469
numberValue3 = 2.4006836414337
vector3Builder13 = vector3Builder13(vector3Builder14, numberValue2, numberValue3)
vector3Builder14 = vector3
numberValue2 = -2521.775390625
numberValue3 = 2524.0747070313
numberValue4 = 1.6176110506058
vector3Builder14, numberValue2, numberValue3, numberValue4 = vector3Builder14(numberValue2, numberValue3, numberValue4)
cmgCall[1] = cmgCall2
cmgCall[2] = vector3Builder
cmgCall[3] = vector3Builder2
cmgCall[4] = vector3Builder3
cmgCall[5] = vector3Builder4
cmgCall[6] = vector3Builder5
cmgCall[7] = vector3Builder6
cmgCall[8] = vector3Builder7
cmgCall[9] = vector3Builder8
cmgCall[10] = vector3Builder9
cmgCall[11] = vector3Builder10
cmgCall[12] = vector3Builder11
cmgCall[13] = vector3Builder12
cmgCall[14] = vector3Builder13
cmgCall[15] = vector3Builder14
cmgCall[16] = numberValue2
cmgCall[17] = numberValue3
cmgCall[18] = numberValue4
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, cmgCall3, workValue5, textValue, heading, iterator, flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6
  while true do
    arg1 = dataTable4
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = "a_c_hen"
  arg1 = arg1(arg2)
  arg2 = pairs
  arg3 = cmgCall
  arg2, arg3, cmgCall3, workValue5 = arg2(arg3)
  for textValue, heading in arg2, arg3, cmgCall3, workValue5 do
    iterator = CreatePed
    flag15 = 5
    flag17 = arg1
    flag2 = heading.x
    flag3 = heading.y
    flag4 = heading.z
    tableHelper = 0.0
    flag5 = false
    flag6 = true
    -- Beginner: result below is pedEntity.
    iterator = iterator(flag15, flag17, flag2, flag3, flag4, tableHelper, flag5, flag6)
    flag15 = SetEntityInvincible
    flag17 = iterator
    flag2 = true
    flag15(flag17, flag2)
    flag15 = SetBlockingOfNonTemporaryEvents
    flag17 = iterator
    flag2 = true
    flag15(flag17, flag2)
  end
  arg2 = SetModelAsNoLongerNeeded
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(vector3Builder)
