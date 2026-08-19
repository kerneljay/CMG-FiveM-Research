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
local stateFlag, dataCollection, dataCollection2, dataCollection3, dataCollection4, workingValue6, dataCollection5, number4, dataCollection6, createVector3, number, number2, number3, workingValue3, cmgOperation, cmgOperation2, workingValue5, text
stateFlag = false
dataCollection = {}
dataCollection2 = {}
dataCollection3 = {}
dataCollection4 = {}
workingValue6 = nil
dataCollection5 = {}
number4 = -545580178
dataCollection6 = {}
dataCollection6.pfxDict = "scr_stunts"
dataCollection6.pfxName = "scr_stunts_fire_ring"
createVector3 = vector3
number = 0.0
number2 = 0.0
number3 = 4.0
createVector3 = createVector3(number, number2, number3)
dataCollection6.offset = createVector3
dataCollection6.scale = 0.2
dataCollection5[number4] = dataCollection6
number4 = -35121593
dataCollection6 = {}
dataCollection6.pfxDict = "scr_stunts"
dataCollection6.pfxName = "scr_stunts_fire_ring"
createVector3 = vector3
number = 0.0
number2 = 0.0
number3 = 10.0
createVector3 = createVector3(number, number2, number3)
dataCollection6.offset = createVector3
dataCollection6.scale = 0.4
dataCollection5[number4] = dataCollection6
number4 = 737590223
dataCollection6 = {}
dataCollection6.pfxDict = "scr_stunts"
dataCollection6.pfxName = "scr_stunts_fire_ring"
createVector3 = vector3
number = 0.0
number2 = 0.0
number3 = 25.0
createVector3 = createVector3(number, number2, number3)
dataCollection6.offset = createVector3
dataCollection6.scale = 1.0
dataCollection5[number4] = dataCollection6
number4 = {}
number4.cmg_minigames_dust2 = true
number4.cmg_minigame_lego = true
number4.nuketown = true
number4.shipment = true
number4.map1 = true
number4.dragonball = true
number4.NOT_IPL = true

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function dataCollection6(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local workingValue7, cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  workingValue7 = dataCollection5
  workingValue7 = workingValue7[localValue2]
  if workingValue7 then
    workingValue7 = dataCollection5
    workingValue7 = workingValue7[localValue2]
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.loadPtfx
    tableHelper = workingValue7.pfxDict
    cmgOperation3(tableHelper)
    cmgOperation3 = StartParticleFxLoopedAtCoord
    tableHelper = workingValue7.pfxName
    workingValue = workingValue7.offset
    workingValue = workingValue.x
    workingValue = localValue3 + workingValue
    workingValue2 = workingValue7.offset
    workingValue2 = workingValue2.y
    workingValue2 = localValue4 + workingValue2
    workingValue4 = workingValue7.offset
    workingValue4 = workingValue4.z
    workingValue4 = localValue5 + workingValue4
    stateFlag2 = localValue6
    stateFlag3 = localValue7
    modelValue = localValue8
    stateFlag4 = workingValue7.scale
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = false
    cmgOperation3 = cmgOperation3(tableHelper, workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    tableHelper = SetParticleFxLoopedColour
    workingValue = cmgOperation3
    workingValue2 = 0
    workingValue4 = 255
    stateFlag2 = 0
    stateFlag3 = false
    tableHelper(workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3)
    tableHelper = table
    tableHelper = tableHelper.insert
    workingValue = dataCollection2
    workingValue2 = cmgOperation3
    tableHelper(workingValue, workingValue2)
  end
end
createVector3 = {}
number = -1006978322
createVector3[number] = true
number = -388593496
createVector3[number] = true
number = -66244843
createVector3[number] = true
number = -1170462683
createVector3[number] = true
number = 993442923
createVector3[number] = true
number = 737005456
createVector3[number] = true
number = -904856315
createVector3[number] = true
number = -279848256
createVector3[number] = true
number = 588352126
createVector3[number] = true
number = {}
number2 = 346059280
number[number2] = true
number2 = 620582592
number[number2] = true
number2 = 85342060
number[number2] = true
number2 = 483832101
number[number2] = true
number2 = 930976262
number[number2] = true
number2 = 1677872320
number[number2] = true
number2 = 708828172
number[number2] = true
number2 = 950795200
number[number2] = true
number2 = -1260656854
number[number2] = true
number2 = -1875404158
number[number2] = true
number2 = -864804458
number[number2] = true
number2 = -1302470386
number[number2] = true
number2 = 1518201148
number[number2] = true
number2 = 384852939
number[number2] = true
number2 = 117169896
number[number2] = true
number2 = -1479958115
number[number2] = true
number2 = -227275508
number[number2] = true
number2 = 1431235846
number[number2] = true
number2 = 1832852758
number[number2] = true

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1, localValue2) ===
function number2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  if -1 == localValue2 then
    localValue3 = false
    localValue4 = 0
    localValue5 = 0
    return localValue3, localValue4, localValue5
  end
  localValue3 = -1
  localValue4 = -1
  localValue5 = createVector3
  localValue5 = localValue5[localValue1]
  if localValue5 then
    if 1 == localValue2 then
      localValue5 = 15
      localValue4 = 0.3
      localValue3 = localValue5
    elseif 2 == localValue2 then
      localValue5 = 25
      localValue4 = 0.3
      localValue3 = localValue5
    elseif 3 == localValue2 then
      localValue5 = 35
      localValue4 = 0.5
      localValue3 = localValue5
    elseif 4 == localValue2 then
      localValue5 = 45
      localValue4 = 0.5
      localValue3 = localValue5
    elseif 5 == localValue2 then
      localValue5 = 100
      localValue4 = 0.5
      localValue3 = localValue5
    else
      localValue5 = 25
      localValue4 = 0.4
      localValue3 = localValue5
    end
  else
    localValue5 = number
    localValue5 = localValue5[localValue1]
    if localValue5 then
      localValue4 = -1
      if 1 == localValue2 then
        localValue3 = 44
      elseif 2 == localValue2 then
        localValue3 = 30
      elseif 3 == localValue2 then
        localValue3 = 16
      else
        localValue3 = 30
      end
    else
      localValue5 = false
      localValue6 = 0
      localValue7 = 0
      return localValue5, localValue6, localValue7
    end
  end
  localValue5 = true
  localValue6 = localValue3
  localValue7 = localValue4
  return localValue5, localValue6, localValue7
end

-- === HELPER FUNCTION (decompiler name: number3; parameters: localValue1, localValue2, localValue3) ===
function number3(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3
  if localValue3 then
    localValue4 = localValue3
    localValue5 = number2
    localValue6 = localValue2
    localValue7 = localValue4
    localValue5, localValue6, localValue7 = localValue5(localValue6, localValue7)
    if localValue5 then
      if localValue6 > -1 then
        localValue8 = SetObjectStuntPropSpeedup
        workingValue7 = localValue1
        cmgOperation3 = localValue6
        localValue8(workingValue7, cmgOperation3)
      end
      if localValue7 > -1 then
        localValue8 = SetObjectStuntPropDuration
        workingValue7 = localValue1
        cmgOperation3 = localValue7
        localValue8(workingValue7, cmgOperation3)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = IsNamedRendertargetRegistered
  localValue2 = "blimp_text"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = RegisterNamedRendertarget
    localValue2 = "blimp_text"
    localValue3 = false
    localValue1(localValue2, localValue3)
  end
  localValue1 = IsNamedRendertargetLinked
  localValue2 = 1575467428
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = LinkNamedRendertarget
    localValue2 = 1575467428
    localValue1(localValue2)
  end
  localValue1 = RequestScaleformMovie
  localValue2 = "BLIMP_TEXT"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  while true do
    localValue2 = HasScaleformMovieLoaded
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = BeginScaleformMovieMethod
  localValue3 = localValue1
  localValue4 = "SET_MESSAGE"
  localValue2(localValue3, localValue4)
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamTextureNameString_2"
  localValue2 = localValue2[localValue3]
  localValue3 = "CMG EVENTS"
  localValue2(localValue3)
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "SR_BLIMPTX"
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = localValue1
  localValue4 = "SET_COLOUR"
  localValue2(localValue3, localValue4)
  localValue2 = ScaleformMovieMethodAddParamInt
  localValue3 = 1
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = BeginScaleformMovieMethod
  localValue3 = localValue1
  localValue4 = "SET_SCROLL_SPEED"
  localValue2(localValue3, localValue4)
  localValue2 = ScaleformMovieMethodAddParamFloat
  localValue3 = 100.0
  localValue2(localValue3)
  localValue2 = EndScaleformMovieMethod
  localValue2()
  localValue2 = N_0x32f34ff7f617643b
  localValue3 = localValue1
  localValue4 = 1
  localValue2(localValue3, localValue4)
  workingValue6 = localValue1
end
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue, stateFlag4, stateFlag5
  localValue4 = false
  stateFlag = localValue4
  if localValue2 then
    localValue4 = DoScreenFadeOut
    localValue5 = 250
    localValue4(localValue5)
  end
  localValue4 = CMG
  localValue4 = localValue4.setPlayerInvisible
  localValue5 = true
  localValue4(localValue5)
  localValue4 = type
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if "string" == localValue4 then
    localValue4 = number4
    localValue4 = localValue4[localValue1]
    if localValue4 then
      if "NOT_IPL" == localValue1 then
        goto continueAtStep269
      end
      localValue4 = print
      localValue5 = "loading ipl"
      localValue4(localValue5)
      localValue4 = RequestIpl
      localValue5 = localValue1
      localValue4(localValue5)
      while true do
        localValue4 = IsIplActive
        localValue5 = localValue1
        localValue4 = localValue4(localValue5)
        if localValue4 then
          break
        end
        localValue4 = print
        localValue5 = "loading ipl"
        localValue4(localValue5)
        localValue4 = Wait
        localValue5 = 0
        localValue4(localValue5)
      end
      localValue4 = table
      localValue4 = localValue4.insert
      localValue5 = dataCollection4
      localValue6 = localValue1
      localValue4(localValue5, localValue6)
  end
  else
    localValue4 = 1
    localValue5 = localValue1.models
    localValue5 = #localValue5
    localValue6 = 1
    for localValue7 = localValue4, localValue5, localValue6 do
      localValue8 = CMG
      localValue8 = localValue8.loadModel
      workingValue7 = localValue1.models
      workingValue7 = workingValue7[localValue7]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      localValue8(workingValue7)
      localValue8 = CreateObjectNoOffset
      workingValue7 = localValue1.models
      workingValue7 = workingValue7[localValue7]
      cmgOperation3 = localValue1.modelPos
      cmgOperation3 = cmgOperation3[localValue7]
      cmgOperation3 = cmgOperation3.x
      tableHelper = localValue1.modelPos
      tableHelper = tableHelper[localValue7]
      tableHelper = tableHelper.y
      workingValue = localValue1.modelPos
      workingValue = workingValue[localValue7]
      workingValue = workingValue.z
      workingValue2 = false
      workingValue4 = false
      stateFlag2 = false
      -- Beginner: result below is objectEntity.
      localValue8 = localValue8(workingValue7, cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2)
      workingValue7 = localValue1.prpclr
      if workingValue7 then
        workingValue7 = SetObjectTextureVariation
        cmgOperation3 = localValue8
        tableHelper = localValue1.prpclr
        tableHelper = tableHelper[localValue7]
        workingValue7(cmgOperation3, tableHelper)
      end
      workingValue7 = FreezeEntityPosition
      cmgOperation3 = localValue8
      tableHelper = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue7(cmgOperation3, tableHelper)
      workingValue7 = SetEntityHeading
      cmgOperation3 = localValue8
      tableHelper = localValue1.modelHeading
      tableHelper = tableHelper[localValue7]
      -- Beginner: Change the direction an entity is facing.
      workingValue7(cmgOperation3, tableHelper)
      workingValue7 = SetEntityRotation
      cmgOperation3 = localValue8
      tableHelper = localValue1.modelRotation
      tableHelper = tableHelper[localValue7]
      tableHelper = tableHelper.x
      workingValue = localValue1.modelRotation
      workingValue = workingValue[localValue7]
      workingValue = workingValue.y
      workingValue2 = localValue1.modelRotation
      workingValue2 = workingValue2[localValue7]
      workingValue2 = workingValue2.z
      workingValue4 = 2
      stateFlag2 = true
      workingValue7(cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2)
      workingValue7 = dataCollection6
      cmgOperation3 = localValue8
      tableHelper = localValue1.models
      tableHelper = tableHelper[localValue7]
      workingValue = localValue1.modelPos
      workingValue = workingValue[localValue7]
      workingValue = workingValue.x
      workingValue2 = localValue1.modelPos
      workingValue2 = workingValue2[localValue7]
      workingValue2 = workingValue2.y
      workingValue4 = localValue1.modelPos
      workingValue4 = workingValue4[localValue7]
      workingValue4 = workingValue4.z
      stateFlag2 = localValue1.modelRotation
      stateFlag2 = stateFlag2[localValue7]
      stateFlag2 = stateFlag2.x
      stateFlag3 = localValue1.modelRotation
      stateFlag3 = stateFlag3[localValue7]
      stateFlag3 = stateFlag3.y
      modelValue = localValue1.modelRotation
      modelValue = modelValue[localValue7]
      modelValue = modelValue.z
      workingValue7(cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue)
      workingValue7 = localValue1.speedBoosts
      if workingValue7 then
        workingValue7 = number3
        cmgOperation3 = localValue8
        tableHelper = localValue1.models
        tableHelper = tableHelper[localValue7]
        workingValue = localValue1.speedBoosts
        workingValue = workingValue[localValue7]
        workingValue7(cmgOperation3, tableHelper, workingValue)
      end
      workingValue7 = table
      workingValue7 = workingValue7.insert
      cmgOperation3 = dataCollection
      tableHelper = localValue8
      workingValue7(cmgOperation3, tableHelper)
    end
    localValue4 = 1
    localValue5 = localValue1.models2
    localValue5 = #localValue5
    localValue6 = 1
    for localValue7 = localValue4, localValue5, localValue6 do
      localValue8 = CMG
      localValue8 = localValue8.loadModel
      workingValue7 = localValue1.models2
      workingValue7 = workingValue7[localValue7]
      -- Beginner: Request/load a GTA model before spawning or applying it.
      localValue8(workingValue7)
      localValue8 = CreateObjectNoOffset
      workingValue7 = localValue1.models2
      workingValue7 = workingValue7[localValue7]
      cmgOperation3 = localValue1.modelPos2
      cmgOperation3 = cmgOperation3[localValue7]
      cmgOperation3 = cmgOperation3.x
      tableHelper = localValue1.modelPos2
      tableHelper = tableHelper[localValue7]
      tableHelper = tableHelper.y
      workingValue = localValue1.modelPos2
      workingValue = workingValue[localValue7]
      workingValue = workingValue.z
      workingValue2 = false
      workingValue4 = false
      stateFlag2 = localValue1.modelDynamic2
      stateFlag2 = stateFlag2[localValue7]
      -- Beginner: result below is objectEntity.
      localValue8 = localValue8(workingValue7, cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2)
      workingValue7 = SetObjectTextureVariation
      cmgOperation3 = localValue8
      tableHelper = localValue1.prpclr2
      tableHelper = tableHelper[localValue7]
      workingValue7(cmgOperation3, tableHelper)
      workingValue7 = SetEntityHeading
      cmgOperation3 = localValue8
      tableHelper = localValue1.modelHeading2
      tableHelper = tableHelper[localValue7]
      -- Beginner: Change the direction an entity is facing.
      workingValue7(cmgOperation3, tableHelper)
      workingValue7 = SetEntityRotation
      cmgOperation3 = localValue8
      tableHelper = localValue1.modelRotation2
      tableHelper = tableHelper[localValue7]
      tableHelper = tableHelper.x
      workingValue = localValue1.modelRotation2
      workingValue = workingValue[localValue7]
      workingValue = workingValue.y
      workingValue2 = localValue1.modelRotation2
      workingValue2 = workingValue2[localValue7]
      workingValue2 = workingValue2.z
      workingValue4 = 2
      stateFlag2 = true
      workingValue7(cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2)
      workingValue7 = dataCollection6
      cmgOperation3 = localValue8
      tableHelper = localValue1.models2
      tableHelper = tableHelper[localValue7]
      workingValue = localValue1.modelPos2
      workingValue = workingValue[localValue7]
      workingValue = workingValue.x
      workingValue2 = localValue1.modelPos2
      workingValue2 = workingValue2[localValue7]
      workingValue2 = workingValue2.y
      workingValue4 = localValue1.modelPos2
      workingValue4 = workingValue4[localValue7]
      workingValue4 = workingValue4.z
      stateFlag2 = localValue1.modelRotation2
      stateFlag2 = stateFlag2[localValue7]
      stateFlag2 = stateFlag2.x
      stateFlag3 = localValue1.modelRotation2
      stateFlag3 = stateFlag3[localValue7]
      stateFlag3 = stateFlag3.y
      modelValue = localValue1.modelRotation2
      modelValue = modelValue[localValue7]
      modelValue = modelValue.z
      workingValue7(cmgOperation3, tableHelper, workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue)
      workingValue7 = table
      workingValue7 = workingValue7.insert
      cmgOperation3 = dataCollection
      tableHelper = localValue8
      workingValue7(cmgOperation3, tableHelper)
    end
    if not localValue3 then
      localValue4 = 1
      localValue5 = localValue1.vehicles
      localValue5 = localValue5.models
      localValue5 = #localValue5
      localValue6 = 1
      for localValue7 = localValue4, localValue5, localValue6 do
        localValue8 = localValue1.vehicles
        localValue8 = localValue8.models
        localValue8 = localValue8[localValue7]
        workingValue7 = localValue1.vehicles
        workingValue7 = workingValue7.locations
        workingValue7 = workingValue7[localValue7]
        cmgOperation3 = localValue1.vehicles
        cmgOperation3 = cmgOperation3.heading
        cmgOperation3 = cmgOperation3[localValue7]
        tableHelper = CMG
        tableHelper = tableHelper.loadModel
        workingValue = localValue8
        -- Beginner: Request/load a GTA model before spawning or applying it.
        tableHelper(workingValue)
        tableHelper = CMG
        tableHelper = tableHelper.spawnVehicle
        workingValue = localValue8
        workingValue2 = workingValue7.x
        workingValue4 = workingValue7.y
        stateFlag2 = workingValue7.z
        stateFlag3 = cmgOperation3
        modelValue = false
        stateFlag4 = false
        stateFlag5 = true
        tableHelper = tableHelper(workingValue, workingValue2, workingValue4, stateFlag2, stateFlag3, modelValue, stateFlag4, stateFlag5)
        workingValue = SetVehicleDoorsLocked
        workingValue2 = tableHelper
        workingValue4 = 2
        workingValue(workingValue2, workingValue4)
        workingValue = FreezeEntityPosition
        workingValue2 = tableHelper
        workingValue4 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        workingValue(workingValue2, workingValue4)
        workingValue = table
        workingValue = workingValue.insert
        workingValue2 = dataCollection3
        workingValue4 = tableHelper
        workingValue(workingValue2, workingValue4)
      end
    end
  end
  ::continueAtStep269::
  localValue4 = localValue1.pickups
  if localValue4 then
    localValue4 = 1
    localValue5 = localValue1.pickups
    localValue5 = #localValue5
    localValue6 = 1
    for localValue7 = localValue4, localValue5, localValue6 do
      localValue8 = localValue1.pickups
      localValue8 = localValue8[localValue7]
      workingValue7 = CMG
      workingValue7 = workingValue7.createPickup
      cmgOperation3 = localValue8.type
      tableHelper = localValue8.coords
      workingValue7(cmgOperation3, tableHelper)
    end
  end
  localValue4 = workingValue3
  localValue4()
  localValue4 = CMG
  localValue4 = localValue4.setPlayerInvisible
  localValue5 = false
  localValue4(localValue5)
  localValue4 = true
  stateFlag = localValue4
  if localValue2 then
    localValue4 = Wait
    localValue5 = 1000
    localValue4(localValue5)
    localValue4 = DoScreenFadeIn
    localValue5 = 1000
    localValue4(localValue5)
  end
end
cmgOperation.loadClientRockstarMap = cmgOperation2
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesEntityExist
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    if localValue7 then
      localValue7 = DeleteObject
      localValue8 = localValue6
      localValue7(localValue8)
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesParticleFxLoopedExist
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    if localValue7 then
      localValue7 = StopParticleFxLooped
      localValue8 = localValue6
      workingValue7 = false
      localValue7(localValue8, workingValue7)
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection3
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = DoesEntityExist
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    if localValue7 then
      localValue7 = DeleteEntity
      localValue8 = localValue6
      -- Beginner: Delete a GTA entity.
      localValue7(localValue8)
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection4
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = RemoveIpl
    localValue8 = localValue6
    localValue7(localValue8)
  end
  localValue1 = workingValue6
  if localValue1 then
    localValue1 = HasScaleformMovieLoaded
    localValue2 = workingValue6
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = SetScaleformMovieAsNoLongerNeeded
      localValue2 = workingValue6
      localValue1(localValue2)
    end
  end
  localValue1 = IsNamedRendertargetRegistered
  localValue2 = "blimp_text"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = ReleaseNamedRendertarget
    localValue2 = "blimp_text"
    localValue1(localValue2)
  end
  localValue1 = {}
  dataCollection = localValue1
  localValue1 = {}
  dataCollection2 = localValue1
  localValue1 = {}
  dataCollection3 = localValue1
  localValue1 = {}
  dataCollection4 = localValue1
  localValue1 = nil
  workingValue6 = localValue1
end
cmgOperation.cleanupRockstarMaps = cmgOperation2
cmgOperation = RegisterNetEvent
cmgOperation2 = "1723bb249d"
-- Beginner: this function handles network event "1723bb249d".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.loadClientRockstarMap
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1723bb249d".
cmgOperation(cmgOperation2, workingValue5)
-- Beginner: this function handles network event "1723bb249d".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper
  localValue1 = workingValue6
  if localValue1 then
    localValue1 = SetTextRenderId
    localValue2 = GetNamedRendertargetRenderId
    localValue3 = "blimp_text"
    localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper = localValue2(localValue3)
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper)
    localValue1 = SetScriptGfxDrawOrder
    localValue2 = 4
    localValue1(localValue2)
    localValue1 = SetScriptGfxDrawBehindPausemenu
    localValue2 = true
    localValue1(localValue2)
    localValue1 = SetScaleformFitRendertarget
    localValue2 = workingValue6
    localValue3 = true
    localValue1(localValue2, localValue3)
    localValue1 = DrawScaleformMovie
    localValue2 = workingValue6
    localValue3 = 0.0
    localValue4 = -0.08
    localValue5 = 1.0
    localValue6 = 1.7
    localValue7 = 255
    localValue8 = 255
    workingValue7 = 255
    cmgOperation3 = 255
    tableHelper = 0
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper)
    localValue1 = SetTextRenderId
    localValue2 = GetDefaultScriptRendertargetRenderId
    localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper = localValue2()
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue7, cmgOperation3, tableHelper)
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
workingValue5 = cmgOperation
text = "Rockstar Map Blimp"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(workingValue5, text)
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation2.hasEventMapLoaded = workingValue5
