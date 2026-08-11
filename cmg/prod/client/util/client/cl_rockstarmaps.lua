--[[
    LEVEL 1 BEGINNER GUIDE — Rockstarmaps
    ==========================================

    File: cmg/prod/client/util/client/cl_rockstarmaps.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
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
local flag, dataTable, dataTable2, dataTable3, dataTable4, workValue6, dataTable5, numberValue4, dataTable6, vector3Builder, numberValue, numberValue2, numberValue3, workValue3, cmgCall, cmgCall2, workValue5, textValue
flag = false
dataTable = {}
dataTable2 = {}
dataTable3 = {}
dataTable4 = {}
workValue6 = nil
dataTable5 = {}
numberValue4 = -545580178
dataTable6 = {}
dataTable6.pfxDict = "scr_stunts"
dataTable6.pfxName = "scr_stunts_fire_ring"
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue3 = 4.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable6.offset = vector3Builder
dataTable6.scale = 0.2
dataTable5[numberValue4] = dataTable6
numberValue4 = -35121593
dataTable6 = {}
dataTable6.pfxDict = "scr_stunts"
dataTable6.pfxName = "scr_stunts_fire_ring"
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue3 = 10.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable6.offset = vector3Builder
dataTable6.scale = 0.4
dataTable5[numberValue4] = dataTable6
numberValue4 = 737590223
dataTable6 = {}
dataTable6.pfxDict = "scr_stunts"
dataTable6.pfxName = "scr_stunts_fire_ring"
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue3 = 25.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue3)
dataTable6.offset = vector3Builder
dataTable6.scale = 1.0
dataTable5[numberValue4] = dataTable6
numberValue4 = {}
numberValue4.cmg_minigames_dust2 = true
numberValue4.cmg_minigame_lego = true
numberValue4.nuketown = true
numberValue4.shipment = true
numberValue4.map1 = true
numberValue4.dragonball = true
numberValue4.NOT_IPL = true

-- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function dataTable6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local workValue7, cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2, flag3, modelValue, flag4, flag5, flag6, flag7, flag8
  workValue7 = dataTable5
  workValue7 = workValue7[arg2]
  if workValue7 then
    workValue7 = dataTable5
    workValue7 = workValue7[arg2]
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.loadPtfx
    tableHelper = workValue7.pfxDict
    cmgCall3(tableHelper)
    cmgCall3 = StartParticleFxLoopedAtCoord
    tableHelper = workValue7.pfxName
    workValue = workValue7.offset
    workValue = workValue.x
    workValue = arg3 + workValue
    workValue2 = workValue7.offset
    workValue2 = workValue2.y
    workValue2 = arg4 + workValue2
    workValue4 = workValue7.offset
    workValue4 = workValue4.z
    workValue4 = arg5 + workValue4
    flag2 = arg6
    flag3 = arg7
    modelValue = arg8
    flag4 = workValue7.scale
    flag5 = false
    flag6 = false
    flag7 = false
    flag8 = false
    cmgCall3 = cmgCall3(tableHelper, workValue, workValue2, workValue4, flag2, flag3, modelValue, flag4, flag5, flag6, flag7, flag8)
    tableHelper = SetParticleFxLoopedColour
    workValue = cmgCall3
    workValue2 = 0
    workValue4 = 255
    flag2 = 0
    flag3 = false
    tableHelper(workValue, workValue2, workValue4, flag2, flag3)
    tableHelper = table
    tableHelper = tableHelper.insert
    workValue = dataTable2
    workValue2 = cmgCall3
    tableHelper(workValue, workValue2)
  end
end
vector3Builder = {}
numberValue = -1006978322
vector3Builder[numberValue] = true
numberValue = -388593496
vector3Builder[numberValue] = true
numberValue = -66244843
vector3Builder[numberValue] = true
numberValue = -1170462683
vector3Builder[numberValue] = true
numberValue = 993442923
vector3Builder[numberValue] = true
numberValue = 737005456
vector3Builder[numberValue] = true
numberValue = -904856315
vector3Builder[numberValue] = true
numberValue = -279848256
vector3Builder[numberValue] = true
numberValue = 588352126
vector3Builder[numberValue] = true
numberValue = {}
numberValue2 = 346059280
numberValue[numberValue2] = true
numberValue2 = 620582592
numberValue[numberValue2] = true
numberValue2 = 85342060
numberValue[numberValue2] = true
numberValue2 = 483832101
numberValue[numberValue2] = true
numberValue2 = 930976262
numberValue[numberValue2] = true
numberValue2 = 1677872320
numberValue[numberValue2] = true
numberValue2 = 708828172
numberValue[numberValue2] = true
numberValue2 = 950795200
numberValue[numberValue2] = true
numberValue2 = -1260656854
numberValue[numberValue2] = true
numberValue2 = -1875404158
numberValue[numberValue2] = true
numberValue2 = -864804458
numberValue[numberValue2] = true
numberValue2 = -1302470386
numberValue[numberValue2] = true
numberValue2 = 1518201148
numberValue[numberValue2] = true
numberValue2 = 384852939
numberValue[numberValue2] = true
numberValue2 = 117169896
numberValue[numberValue2] = true
numberValue2 = -1479958115
numberValue[numberValue2] = true
numberValue2 = -227275508
numberValue[numberValue2] = true
numberValue2 = 1431235846
numberValue[numberValue2] = true
numberValue2 = 1832852758
numberValue[numberValue2] = true

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: arg1, arg2) ===
function numberValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  if -1 == arg2 then
    arg3 = false
    arg4 = 0
    arg5 = 0
    return arg3, arg4, arg5
  end
  arg3 = -1
  arg4 = -1
  arg5 = vector3Builder
  arg5 = arg5[arg1]
  if arg5 then
    if 1 == arg2 then
      arg5 = 15
      arg4 = 0.3
      arg3 = arg5
    elseif 2 == arg2 then
      arg5 = 25
      arg4 = 0.3
      arg3 = arg5
    elseif 3 == arg2 then
      arg5 = 35
      arg4 = 0.5
      arg3 = arg5
    elseif 4 == arg2 then
      arg5 = 45
      arg4 = 0.5
      arg3 = arg5
    elseif 5 == arg2 then
      arg5 = 100
      arg4 = 0.5
      arg3 = arg5
    else
      arg5 = 25
      arg4 = 0.4
      arg3 = arg5
    end
  else
    arg5 = numberValue
    arg5 = arg5[arg1]
    if arg5 then
      arg4 = -1
      if 1 == arg2 then
        arg3 = 44
      elseif 2 == arg2 then
        arg3 = 30
      elseif 3 == arg2 then
        arg3 = 16
      else
        arg3 = 30
      end
    else
      arg5 = false
      arg6 = 0
      arg7 = 0
      return arg5, arg6, arg7
    end
  end
  arg5 = true
  arg6 = arg3
  arg7 = arg4
  return arg5, arg6, arg7
end

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1, arg2, arg3) ===
function numberValue3(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3
  if arg3 then
    arg4 = arg3
    arg5 = numberValue2
    arg6 = arg2
    arg7 = arg4
    arg5, arg6, arg7 = arg5(arg6, arg7)
    if arg5 then
      if arg6 > -1 then
        arg8 = SetObjectStuntPropSpeedup
        workValue7 = arg1
        cmgCall3 = arg6
        arg8(workValue7, cmgCall3)
      end
      if arg7 > -1 then
        arg8 = SetObjectStuntPropDuration
        workValue7 = arg1
        cmgCall3 = arg7
        arg8(workValue7, cmgCall3)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, arg3, arg4
  arg1 = IsNamedRendertargetRegistered
  arg2 = "blimp_text"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = RegisterNamedRendertarget
    arg2 = "blimp_text"
    arg3 = false
    arg1(arg2, arg3)
  end
  arg1 = IsNamedRendertargetLinked
  arg2 = 1575467428
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = LinkNamedRendertarget
    arg2 = 1575467428
    arg1(arg2)
  end
  arg1 = RequestScaleformMovie
  arg2 = "BLIMP_TEXT"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  while true do
    arg2 = HasScaleformMovieLoaded
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
  arg2 = BeginScaleformMovieMethod
  arg3 = arg1
  arg4 = "SET_MESSAGE"
  arg2(arg3, arg4)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString_2"
  arg2 = arg2[arg3]
  arg3 = "CMG EVENTS"
  arg2(arg3)
  arg2 = BeginTextCommandScaleformString
  arg3 = "SR_BLIMPTX"
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = arg1
  arg4 = "SET_COLOUR"
  arg2(arg3, arg4)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 1
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = arg1
  arg4 = "SET_SCROLL_SPEED"
  arg2(arg3, arg4)
  arg2 = ScaleformMovieMethodAddParamFloat
  arg3 = 100.0
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = N_0x32f34ff7f617643b
  arg3 = arg1
  arg4 = 1
  arg2(arg3, arg4)
  workValue6 = arg1
end
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2, flag3, modelValue, flag4, flag5
  arg4 = false
  flag = arg4
  if arg2 then
    arg4 = DoScreenFadeOut
    arg5 = 250
    arg4(arg5)
  end
  arg4 = CMG
  arg4 = arg4.setPlayerInvisible
  arg5 = true
  arg4(arg5)
  arg4 = type
  arg5 = arg1
  arg4 = arg4(arg5)
  if "string" == arg4 then
    arg4 = numberValue4
    arg4 = arg4[arg1]
    if arg4 then
      if "NOT_IPL" == arg1 then
        goto flow_label_269
      end
      arg4 = print
      arg5 = "loading ipl"
      arg4(arg5)
      arg4 = RequestIpl
      arg5 = arg1
      arg4(arg5)
      while true do
        arg4 = IsIplActive
        arg5 = arg1
        arg4 = arg4(arg5)
        if arg4 then
          break
        end
        arg4 = print
        arg5 = "loading ipl"
        arg4(arg5)
        arg4 = Wait
        arg5 = 0
        arg4(arg5)
      end
      arg4 = table
      arg4 = arg4.insert
      arg5 = dataTable4
      arg6 = arg1
      arg4(arg5, arg6)
  end
  else
    arg4 = 1
    arg5 = arg1.models
    arg5 = #arg5
    arg6 = 1
    for arg7 = arg4, arg5, arg6 do
      arg8 = CMG
      arg8 = arg8.loadModel
      workValue7 = arg1.models
      workValue7 = workValue7[arg7]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      arg8(workValue7)
      arg8 = CreateObjectNoOffset
      workValue7 = arg1.models
      workValue7 = workValue7[arg7]
      cmgCall3 = arg1.modelPos
      cmgCall3 = cmgCall3[arg7]
      cmgCall3 = cmgCall3.x
      tableHelper = arg1.modelPos
      tableHelper = tableHelper[arg7]
      tableHelper = tableHelper.y
      workValue = arg1.modelPos
      workValue = workValue[arg7]
      workValue = workValue.z
      workValue2 = false
      workValue4 = false
      flag2 = false
      -- Beginner: result below is objectEntity.
      arg8 = arg8(workValue7, cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2)
      workValue7 = arg1.prpclr
      if workValue7 then
        workValue7 = SetObjectTextureVariation
        cmgCall3 = arg8
        tableHelper = arg1.prpclr
        tableHelper = tableHelper[arg7]
        workValue7(cmgCall3, tableHelper)
      end
      workValue7 = FreezeEntityPosition
      cmgCall3 = arg8
      tableHelper = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue7(cmgCall3, tableHelper)
      workValue7 = SetEntityHeading
      cmgCall3 = arg8
      tableHelper = arg1.modelHeading
      tableHelper = tableHelper[arg7]
      -- Beginner: Change the direction an entity is facing.
      workValue7(cmgCall3, tableHelper)
      workValue7 = SetEntityRotation
      cmgCall3 = arg8
      tableHelper = arg1.modelRotation
      tableHelper = tableHelper[arg7]
      tableHelper = tableHelper.x
      workValue = arg1.modelRotation
      workValue = workValue[arg7]
      workValue = workValue.y
      workValue2 = arg1.modelRotation
      workValue2 = workValue2[arg7]
      workValue2 = workValue2.z
      workValue4 = 2
      flag2 = true
      workValue7(cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2)
      workValue7 = dataTable6
      cmgCall3 = arg8
      tableHelper = arg1.models
      tableHelper = tableHelper[arg7]
      workValue = arg1.modelPos
      workValue = workValue[arg7]
      workValue = workValue.x
      workValue2 = arg1.modelPos
      workValue2 = workValue2[arg7]
      workValue2 = workValue2.y
      workValue4 = arg1.modelPos
      workValue4 = workValue4[arg7]
      workValue4 = workValue4.z
      flag2 = arg1.modelRotation
      flag2 = flag2[arg7]
      flag2 = flag2.x
      flag3 = arg1.modelRotation
      flag3 = flag3[arg7]
      flag3 = flag3.y
      modelValue = arg1.modelRotation
      modelValue = modelValue[arg7]
      modelValue = modelValue.z
      workValue7(cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2, flag3, modelValue)
      workValue7 = arg1.speedBoosts
      if workValue7 then
        workValue7 = numberValue3
        cmgCall3 = arg8
        tableHelper = arg1.models
        tableHelper = tableHelper[arg7]
        workValue = arg1.speedBoosts
        workValue = workValue[arg7]
        workValue7(cmgCall3, tableHelper, workValue)
      end
      workValue7 = table
      workValue7 = workValue7.insert
      cmgCall3 = dataTable
      tableHelper = arg8
      workValue7(cmgCall3, tableHelper)
    end
    arg4 = 1
    arg5 = arg1.models2
    arg5 = #arg5
    arg6 = 1
    for arg7 = arg4, arg5, arg6 do
      arg8 = CMG
      arg8 = arg8.loadModel
      workValue7 = arg1.models2
      workValue7 = workValue7[arg7]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      arg8(workValue7)
      arg8 = CreateObjectNoOffset
      workValue7 = arg1.models2
      workValue7 = workValue7[arg7]
      cmgCall3 = arg1.modelPos2
      cmgCall3 = cmgCall3[arg7]
      cmgCall3 = cmgCall3.x
      tableHelper = arg1.modelPos2
      tableHelper = tableHelper[arg7]
      tableHelper = tableHelper.y
      workValue = arg1.modelPos2
      workValue = workValue[arg7]
      workValue = workValue.z
      workValue2 = false
      workValue4 = false
      flag2 = arg1.modelDynamic2
      flag2 = flag2[arg7]
      -- Beginner: result below is objectEntity.
      arg8 = arg8(workValue7, cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2)
      workValue7 = SetObjectTextureVariation
      cmgCall3 = arg8
      tableHelper = arg1.prpclr2
      tableHelper = tableHelper[arg7]
      workValue7(cmgCall3, tableHelper)
      workValue7 = SetEntityHeading
      cmgCall3 = arg8
      tableHelper = arg1.modelHeading2
      tableHelper = tableHelper[arg7]
      -- Beginner: Change the direction an entity is facing.
      workValue7(cmgCall3, tableHelper)
      workValue7 = SetEntityRotation
      cmgCall3 = arg8
      tableHelper = arg1.modelRotation2
      tableHelper = tableHelper[arg7]
      tableHelper = tableHelper.x
      workValue = arg1.modelRotation2
      workValue = workValue[arg7]
      workValue = workValue.y
      workValue2 = arg1.modelRotation2
      workValue2 = workValue2[arg7]
      workValue2 = workValue2.z
      workValue4 = 2
      flag2 = true
      workValue7(cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2)
      workValue7 = dataTable6
      cmgCall3 = arg8
      tableHelper = arg1.models2
      tableHelper = tableHelper[arg7]
      workValue = arg1.modelPos2
      workValue = workValue[arg7]
      workValue = workValue.x
      workValue2 = arg1.modelPos2
      workValue2 = workValue2[arg7]
      workValue2 = workValue2.y
      workValue4 = arg1.modelPos2
      workValue4 = workValue4[arg7]
      workValue4 = workValue4.z
      flag2 = arg1.modelRotation2
      flag2 = flag2[arg7]
      flag2 = flag2.x
      flag3 = arg1.modelRotation2
      flag3 = flag3[arg7]
      flag3 = flag3.y
      modelValue = arg1.modelRotation2
      modelValue = modelValue[arg7]
      modelValue = modelValue.z
      workValue7(cmgCall3, tableHelper, workValue, workValue2, workValue4, flag2, flag3, modelValue)
      workValue7 = table
      workValue7 = workValue7.insert
      cmgCall3 = dataTable
      tableHelper = arg8
      workValue7(cmgCall3, tableHelper)
    end
    if not arg3 then
      arg4 = 1
      arg5 = arg1.vehicles
      arg5 = arg5.models
      arg5 = #arg5
      arg6 = 1
      for arg7 = arg4, arg5, arg6 do
        arg8 = arg1.vehicles
        arg8 = arg8.models
        arg8 = arg8[arg7]
        workValue7 = arg1.vehicles
        workValue7 = workValue7.locations
        workValue7 = workValue7[arg7]
        cmgCall3 = arg1.vehicles
        cmgCall3 = cmgCall3.heading
        cmgCall3 = cmgCall3[arg7]
        tableHelper = CMG
        tableHelper = tableHelper.loadModel
        workValue = arg8
        -- Beginner: Request/load a GTA model before spawning or applying it.
        tableHelper(workValue)
        tableHelper = CMG
        tableHelper = tableHelper.spawnVehicle
        workValue = arg8
        workValue2 = workValue7.x
        workValue4 = workValue7.y
        flag2 = workValue7.z
        flag3 = cmgCall3
        modelValue = false
        flag4 = false
        flag5 = true
        tableHelper = tableHelper(workValue, workValue2, workValue4, flag2, flag3, modelValue, flag4, flag5)
        workValue = SetVehicleDoorsLocked
        workValue2 = tableHelper
        workValue4 = 2
        workValue(workValue2, workValue4)
        workValue = FreezeEntityPosition
        workValue2 = tableHelper
        workValue4 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workValue(workValue2, workValue4)
        workValue = table
        workValue = workValue.insert
        workValue2 = dataTable3
        workValue4 = tableHelper
        workValue(workValue2, workValue4)
      end
    end
  end
  ::flow_label_269::
  arg4 = arg1.pickups
  if arg4 then
    arg4 = 1
    arg5 = arg1.pickups
    arg5 = #arg5
    arg6 = 1
    for arg7 = arg4, arg5, arg6 do
      arg8 = arg1.pickups
      arg8 = arg8[arg7]
      workValue7 = CMG
      workValue7 = workValue7.createPickup
      cmgCall3 = arg8.type
      tableHelper = arg8.coords
      workValue7(cmgCall3, tableHelper)
    end
  end
  arg4 = workValue3
  arg4()
  arg4 = CMG
  arg4 = arg4.setPlayerInvisible
  arg5 = false
  arg4(arg5)
  arg4 = true
  flag = arg4
  if arg2 then
    arg4 = Wait
    arg5 = 1000
    arg4(arg5)
    arg4 = DoScreenFadeIn
    arg5 = 1000
    arg4(arg5)
  end
end
cmgCall.loadClientRockstarMap = cmgCall2
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesEntityExist
    arg8 = arg6
    arg7 = arg7(arg8)
    if arg7 then
      arg7 = DeleteObject
      arg8 = arg6
      arg7(arg8)
    end
  end
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesParticleFxLoopedExist
    arg8 = arg6
    arg7 = arg7(arg8)
    if arg7 then
      arg7 = StopParticleFxLooped
      arg8 = arg6
      workValue7 = false
      arg7(arg8, workValue7)
    end
  end
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = DoesEntityExist
    arg8 = arg6
    arg7 = arg7(arg8)
    if arg7 then
      arg7 = DeleteEntity
      arg8 = arg6
      -- Beginner: Delete a GTA entity.
      arg7(arg8)
    end
  end
  arg1 = pairs
  arg2 = dataTable4
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = RemoveIpl
    arg8 = arg6
    arg7(arg8)
  end
  arg1 = workValue6
  if arg1 then
    arg1 = HasScaleformMovieLoaded
    arg2 = workValue6
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = SetScaleformMovieAsNoLongerNeeded
      arg2 = workValue6
      arg1(arg2)
    end
  end
  arg1 = IsNamedRendertargetRegistered
  arg2 = "blimp_text"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = ReleaseNamedRendertarget
    arg2 = "blimp_text"
    arg1(arg2)
  end
  arg1 = {}
  dataTable = arg1
  arg1 = {}
  dataTable2 = arg1
  arg1 = {}
  dataTable3 = arg1
  arg1 = {}
  dataTable4 = arg1
  arg1 = nil
  workValue6 = arg1
end
cmgCall.cleanupRockstarMaps = cmgCall2
cmgCall = RegisterNetEvent
cmgCall2 = "1723bb249d"
-- Beginner: this function handles network event "1723bb249d".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, arg4
  arg2 = CMG
  arg2 = arg2.loadClientRockstarMap
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1723bb249d".
cmgCall(cmgCall2, workValue5)
-- Beginner: this function handles network event "1723bb249d".

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper
  arg1 = workValue6
  if arg1 then
    arg1 = SetTextRenderId
    arg2 = GetNamedRendertargetRenderId
    arg3 = "blimp_text"
    arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper = arg2(arg3)
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper)
    arg1 = SetScriptGfxDrawOrder
    arg2 = 4
    arg1(arg2)
    arg1 = SetScriptGfxDrawBehindPausemenu
    arg2 = true
    arg1(arg2)
    arg1 = SetScaleformFitRendertarget
    arg2 = workValue6
    arg3 = true
    arg1(arg2, arg3)
    arg1 = DrawScaleformMovie
    arg2 = workValue6
    arg3 = 0.0
    arg4 = -0.08
    arg5 = 1.0
    arg6 = 1.7
    arg7 = 255
    arg8 = 255
    workValue7 = 255
    cmgCall3 = 255
    tableHelper = 0
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper)
    arg1 = SetTextRenderId
    arg2 = GetDefaultScriptRendertargetRenderId
    arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper = arg2()
    arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue7, cmgCall3, tableHelper)
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
workValue5 = cmgCall
textValue = "Rockstar Map Blimp"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(workValue5, textValue)
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall2.hasEventMapLoaded = workValue5
