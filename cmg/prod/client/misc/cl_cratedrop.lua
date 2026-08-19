--[[
    LEVEL 1 BEGINNER GUIDE — Cratedrop
    =======================================

    File: cmg/prod/client/misc/cl_cratedrop.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Cratedrop feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 19
      * Background threads: 0
      * Always-running loops: 3
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
local cmgOperation, dataCollection, dataCollection2, dataCollection3, workingValue14, dataCollection4, text3, text5, text6, eventHandler, text, createVector32, stateFlag3, stateFlag4, number, workingValue3, workingValue6, workingValue8, cmgOperation7, text2, workingValue11
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_rigentities"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
dataCollection2 = {}
dataCollection3 = {}
workingValue14 = nil
dataCollection4 = {}
text3 = "p_cargo_chute_s"
text5 = "xs_prop_arena_crate_01a"
text6 = "cuban800"
eventHandler = "s_m_m_pilot_02"
dataCollection4[1] = text3
dataCollection4[2] = text5
dataCollection4[3] = text6
dataCollection4[4] = eventHandler
text3 = nil
text5 = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local localValue3, localValue4, coords
  if 0 == localValue1 then
    localValue3 = SetBlipDisplay
    localValue4 = localValue2
    coords = 2
    localValue3(localValue4, coords)
  else
    localValue3 = SetBlipDisplay
    localValue4 = localValue2
    coords = 0
    localValue3(localValue4, coords)
  end
end
eventHandler = RegisterNetEvent
text = "8b70ea764f"
-- Beginner: this function handles network event "8b70ea764f".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1, localValue2, localValue3, localValue4) ===
function createVector32(localValue1, localValue2, localValue3, localValue4)
  local coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7
  coords = GetEntityCoords
  cmgOperation9 = CMG
  cmgOperation9 = cmgOperation9.getPlayerPed
  cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7 = cmgOperation9()
  -- Beginner: result below is entityCoords.
  coords = coords(cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7)
  cmgOperation9 = coords - localValue1
  cmgOperation9 = #cmgOperation9
  if cmgOperation9 < 50.0 then
    cmgOperation9 = notify
    text4 = "~y~WARNING - A supply drop is landing in your vicinity, leave the area immediately if you are unarmed!"
    -- Beginner: Show a notification to the player.
    cmgOperation9(text4)
  end
  cmgOperation9 = pairs
  text4 = dataCollection4
  cmgOperation9, text4, number8, number9 = cmgOperation9(text4)
  for coords2, createVector3 in cmgOperation9, text4, number8, number9 do
    if "cuban800" == createVector3 then
      cmgOperation3 = CMG
      cmgOperation3 = cmgOperation3.isChristmas
      cmgOperation3 = cmgOperation3()
      if cmgOperation3 then
        createVector3 = 683843075
      end
    end
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.loadModel
    mathHelper = createVector3
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation3(mathHelper)
  end
  cmgOperation9 = RequestWeaponAsset
  text4 = 1233104067
  number8 = 0
  number9 = 0
  cmgOperation9(text4, number8, number9)
  while true do
    cmgOperation9 = HasWeaponAssetLoaded
    text4 = 1233104067
    cmgOperation9 = cmgOperation9(text4)
    if cmgOperation9 then
      break
    end
    cmgOperation9 = Wait
    text4 = 0
    cmgOperation9(text4)
  end
  cmgOperation9 = nil
  if not localValue3 then
    text4 = math
    text4 = text4.random
    number8 = 0
    number9 = 360
    text4 = text4(number8, number9)
    text4 = text4 + 0.0
    number8 = 1500.0
    number9 = text4 / 180.0
    number9 = number9 * 3.14
    coords2 = vector3
    createVector3 = localValue1.x
    cmgOperation3 = localValue1.y
    mathHelper = localValue1.z
    coords2 = coords2(createVector3, cmgOperation3, mathHelper)
    createVector3 = vector3
    cmgOperation3 = math
    cmgOperation3 = cmgOperation3.cos
    mathHelper = number9
    cmgOperation3 = cmgOperation3(mathHelper)
    cmgOperation3 = cmgOperation3 * number8
    mathHelper = math
    mathHelper = mathHelper.sin
    cmgOperation4 = number9
    mathHelper = mathHelper(cmgOperation4)
    mathHelper = mathHelper * number8
    cmgOperation4 = -500.0
    createVector3 = createVector3(cmgOperation3, mathHelper, cmgOperation4)
    coords2 = coords2 - createVector3
    createVector3 = localValue1.x
    cmgOperation3 = coords2.x
    createVector3 = createVector3 - cmgOperation3
    cmgOperation3 = localValue1.y
    mathHelper = coords2.y
    cmgOperation3 = cmgOperation3 - mathHelper
    mathHelper = GetHeadingFromVector_2d
    cmgOperation4 = createVector3
    cmgOperation5 = cmgOperation3
    mathHelper = mathHelper(cmgOperation4, cmgOperation5)
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.isChristmas
    cmgOperation4 = cmgOperation4()
    if cmgOperation4 then
      cmgOperation4 = 683843075
      if cmgOperation4 then
        goto continueAtStep105
      end
    end
    cmgOperation4 = -644710429
    ::continueAtStep105::
    cmgOperation5 = CreateVehicle
    workingValue4 = cmgOperation4
    number2 = coords2.x
    stateFlag5 = coords2.y
    stateFlag7 = coords2.z
    stateFlag8 = mathHelper
    stateFlag10 = false
    stateFlag12 = true
    -- Beginner: result below is vehicleEntity.
    cmgOperation5 = cmgOperation5(workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
    cmgOperation9 = cmgOperation5
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.initLocalVehicle
    workingValue4 = cmgOperation9
    cmgOperation5(workingValue4)
    cmgOperation5 = SetEntityHeading
    workingValue4 = cmgOperation9
    number2 = mathHelper
    -- Beginner: Change the direction an entity is facing.
    cmgOperation5(workingValue4, number2)
    cmgOperation5 = SetVehicleDoorsLocked
    workingValue4 = cmgOperation9
    number2 = 2
    cmgOperation5(workingValue4, number2)
    cmgOperation5 = SetEntityDynamic
    workingValue4 = cmgOperation9
    number2 = true
    cmgOperation5(workingValue4, number2)
    cmgOperation5 = ActivatePhysics
    workingValue4 = cmgOperation9
    cmgOperation5(workingValue4)
    cmgOperation5 = SetVehicleForwardSpeed
    workingValue4 = cmgOperation9
    number2 = 60.0
    cmgOperation5(workingValue4, number2)
    cmgOperation5 = SetHeliBladesFullSpeed
    workingValue4 = cmgOperation9
    cmgOperation5(workingValue4)
    cmgOperation5 = SetVehicleEngineOn
    workingValue4 = cmgOperation9
    number2 = true
    stateFlag5 = true
    stateFlag7 = false
    cmgOperation5(workingValue4, number2, stateFlag5, stateFlag7)
    cmgOperation5 = ControlLandingGear
    workingValue4 = cmgOperation9
    number2 = 3
    cmgOperation5(workingValue4, number2)
    cmgOperation5 = OpenBombBayDoors
    workingValue4 = cmgOperation9
    cmgOperation5(workingValue4)
    cmgOperation5 = SetEntityProofs
    workingValue4 = cmgOperation9
    number2 = true
    stateFlag5 = false
    stateFlag7 = true
    stateFlag8 = false
    stateFlag10 = false
    stateFlag12 = false
    stateFlag14 = false
    stateFlag15 = false
    cmgOperation5(workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15)
    cmgOperation5 = CreatePedInsideVehicle
    workingValue4 = cmgOperation9
    number2 = 1
    stateFlag5 = -163714847
    stateFlag7 = -1
    stateFlag8 = false
    stateFlag10 = true
    cmgOperation5 = cmgOperation5(workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10)
    workingValue4 = SetBlockingOfNonTemporaryEvents
    number2 = cmgOperation5
    stateFlag5 = true
    workingValue4(number2, stateFlag5)
    workingValue4 = SetPedRandomComponentVariation
    number2 = cmgOperation5
    stateFlag5 = 0
    workingValue4(number2, stateFlag5)
    workingValue4 = SetPedKeepTask
    number2 = cmgOperation5
    stateFlag5 = true
    workingValue4(number2, stateFlag5)
    workingValue4 = _ENV
    number2 = "SetTaskVehicleGotoPlaneMinHeightAboveTerrain"
    workingValue4 = workingValue4[number2]
    number2 = cmgOperation9
    stateFlag5 = 50
    workingValue4(number2, stateFlag5)
    workingValue4 = TaskVehicleDriveToCoord
    number2 = cmgOperation5
    stateFlag5 = cmgOperation9
    stateFlag7 = vector3
    stateFlag8 = localValue1.x
    stateFlag10 = localValue1.y
    stateFlag12 = localValue1.z
    stateFlag7 = stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag8 = vector3
    stateFlag10 = 0.0
    stateFlag12 = 0.0
    stateFlag14 = 500.0
    stateFlag8 = stateFlag8(stateFlag10, stateFlag12, stateFlag14)
    stateFlag7 = stateFlag7 + stateFlag8
    stateFlag8 = 60.0
    stateFlag10 = 0
    stateFlag12 = 1
    stateFlag14 = 262144
    stateFlag15 = 15.0
    number3 = -1.0
    number4 = 0.0
    stateFlag16 = 0.0
    workingValue4(number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16)
    workingValue4 = AddBlipForEntity
    number2 = cmgOperation9
    -- Beginner: result below is blipHandle.
    workingValue4 = workingValue4(number2)
    number2 = SetBlipSprite
    stateFlag5 = workingValue4
    stateFlag7 = 307
    number2(stateFlag5, stateFlag7)
    number2 = SetBlipColour
    stateFlag5 = workingValue4
    stateFlag7 = 3
    number2(stateFlag5, stateFlag7)
    number2 = vector2
    stateFlag5 = localValue1.x
    stateFlag7 = localValue1.y
    number2 = number2(stateFlag5, stateFlag7)
    stateFlag5 = vector2
    stateFlag7 = GetEntityCoords
    stateFlag8 = cmgOperation9
    -- Beginner: result below is entityCoords.
    stateFlag7 = stateFlag7(stateFlag8)
    stateFlag7 = stateFlag7.x
    stateFlag8 = GetEntityCoords
    stateFlag10 = cmgOperation9
    -- Beginner: result below is entityCoords.
    stateFlag8 = stateFlag8(stateFlag10)
    stateFlag8 = stateFlag8.y
    stateFlag5 = stateFlag5(stateFlag7, stateFlag8)
    while true do
      stateFlag7 = stateFlag5 - number2
      stateFlag7 = #stateFlag7
      if not (stateFlag7 > 5.0) then
        break
      end
      stateFlag7 = Wait
      stateFlag8 = 100
      stateFlag7(stateFlag8)
      stateFlag7 = vector2
      stateFlag8 = GetEntityCoords
      stateFlag10 = cmgOperation9
      -- Beginner: result below is entityCoords.
      stateFlag8 = stateFlag8(stateFlag10)
      stateFlag8 = stateFlag8.x
      stateFlag10 = GetEntityCoords
      stateFlag12 = cmgOperation9
      -- Beginner: result below is entityCoords.
      stateFlag10 = stateFlag10(stateFlag12)
      stateFlag10 = stateFlag10.y
      stateFlag7 = stateFlag7(stateFlag8, stateFlag10)
      stateFlag5 = stateFlag7
    end
    stateFlag7 = TaskVehicleDriveToCoord
    stateFlag8 = cmgOperation5
    stateFlag10 = cmgOperation9
    stateFlag12 = 0.0
    stateFlag14 = 0.0
    stateFlag15 = 500.0
    number3 = 60.0
    number4 = 0
    stateFlag16 = -644710429
    number5 = 262144
    number6 = -1.0
    number7 = -1.0
    stateFlag7(stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7)
    stateFlag7 = SetTimeout
    stateFlag8 = 30000

    -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
    function stateFlag10()
      local cmgOperation2, workingValue10
      cmgOperation2 = SetEntityAsNoLongerNeeded
      workingValue10 = cmgOperation5
      cmgOperation2(workingValue10)
      cmgOperation2 = SetEntityAsNoLongerNeeded
      workingValue10 = cmgOperation9
      cmgOperation2(workingValue10)
    end
    stateFlag7(stateFlag8, stateFlag10)
  end
  text4 = vector3
  number8 = localValue1.x
  number9 = localValue1.y
  coords2 = GetEntityCoords
  createVector3 = cmgOperation9
  -- Beginner: result below is entityCoords.
  coords2 = coords2(createVector3)
  coords2 = coords2.z
  coords2 = coords2 - 5.0
  text4 = text4(number8, number9, coords2)
  number8 = dataCollection2
  number9 = {}
  number8[localValue2] = number9
  number8 = dataCollection2
  number8 = number8[localValue2]
  number9 = CreateObjectNoOffset
  coords2 = 772559902
  createVector3 = text4.x
  cmgOperation3 = text4.y
  mathHelper = text4.z
  cmgOperation4 = false
  cmgOperation5 = true
  workingValue4 = true
  -- Beginner: result below is objectEntity.
  number9 = number9(coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4)
  number8.crate = number9
  number8 = DecorSetInt
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = "5f7af1c5ce"
  createVector3 = localValue2
  number8(number9, coords2, createVector3)
  number8 = SetEntityLodDist
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = 10000
  number8(number9, coords2)
  number8 = ActivatePhysics
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  number8(number9)
  number8 = SetDamping
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = 2
  createVector3 = 0.1
  number8(number9, coords2, createVector3)
  number8 = SetEntityVelocity
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = 0.0
  createVector3 = 0.0
  cmgOperation3 = -0.1
  number8(number9, coords2, createVector3, cmgOperation3)
  number8 = FreezeEntityPosition
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number8(number9, coords2)
  number8 = Wait
  number9 = 500
  number8(number9)
  number8 = FreezeEntityPosition
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  coords2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number8(number9, coords2)
  number8 = AddBlipForEntity
  number9 = dataCollection2
  number9 = number9[localValue2]
  number9 = number9.crate
  -- Beginner: result below is blipHandle.
  number8 = number8(number9)
  if localValue3 then
    number9 = SetBlipSprite
    coords2 = number8
    createVector3 = 880
    number9(coords2, createVector3)
  else
    number9 = SetBlipSprite
    coords2 = number8
    createVector3 = 501
    number9(coords2, createVector3)
  end
  if localValue4 then
    number9 = SetBlipColour
    coords2 = number8
    createVector3 = 3
    number9(coords2, createVector3)
  else
    number9 = SetBlipColour
    coords2 = number8
    createVector3 = 2
    number9(coords2, createVector3)
  end
  number9 = dataCollection2
  number9 = number9[localValue2]
  coords2 = CreateObject
  createVector3 = 886894755
  cmgOperation3 = text4.x
  mathHelper = text4.y
  cmgOperation4 = text4.z
  cmgOperation5 = false
  workingValue4 = true
  number2 = true
  -- Beginner: result below is objectEntity.
  coords2 = coords2(createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2)
  number9.parachute = coords2
  number9 = SetEntityLodDist
  coords2 = dataCollection2
  coords2 = coords2[localValue2]
  coords2 = coords2.parachute
  createVector3 = 10000
  number9(coords2, createVector3)
  number9 = SetEntityVelocity
  coords2 = dataCollection2
  coords2 = coords2[localValue2]
  coords2 = coords2.parachute
  createVector3 = 0.0
  cmgOperation3 = 0.0
  mathHelper = -0.1
  number9(coords2, createVector3, cmgOperation3, mathHelper)
  number9 = ActivatePhysics
  coords2 = dataCollection2
  coords2 = coords2[localValue2]
  coords2 = coords2.crate
  number9(coords2)
  number9 = AttachEntityToEntity
  coords2 = dataCollection2
  coords2 = coords2[localValue2]
  coords2 = coords2.parachute
  createVector3 = dataCollection2
  createVector3 = createVector3[localValue2]
  createVector3 = createVector3.crate
  cmgOperation3 = 0
  mathHelper = 0.0
  cmgOperation4 = 0.0
  cmgOperation5 = 0.1
  workingValue4 = 0.0
  number2 = 0.0
  stateFlag5 = 0.0
  stateFlag7 = false
  stateFlag8 = false
  stateFlag10 = false
  stateFlag12 = false
  stateFlag14 = 2
  stateFlag15 = true
  -- Beginner: Attach one entity to another entity.
  number9(coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15)
  number9 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  number9 = number9()
  if localValue3 then
    coords2 = CMG
    coords2 = coords2.createRedzone
    createVector3 = localValue2
    cmgOperation3 = localValue1
    mathHelper = 50.0
    coords2(createVector3, cmgOperation3, mathHelper)
    coords2 = SetEntityCoordsNoOffset
    createVector3 = dataCollection2
    createVector3 = createVector3[localValue2]
    createVector3 = createVector3.crate
    cmgOperation3 = localValue1.x
    mathHelper = localValue1.y
    cmgOperation4 = localValue1.z
    cmgOperation5 = true
    workingValue4 = false
    number2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    coords2(createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2)
  else
    coords2 = CMG
    coords2 = coords2.createRedzone
    createVector3 = localValue2
    cmgOperation3 = localValue1
    mathHelper = 200.0
    coords2(createVector3, cmgOperation3, mathHelper)
    while true do
      coords2 = GetEntityHeightAboveGround
      createVector3 = dataCollection2
      createVector3 = createVector3[localValue2]
      createVector3 = createVector3.crate
      coords2 = coords2(createVector3)
      if not (coords2 > 2) then
        break
      end
      coords2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords2 = coords2()
      coords2 = coords2 - number9
      createVector3 = 60000
      if not (coords2 < createVector3) then
        break
      end
      coords2 = Wait
      createVector3 = 100
      coords2(createVector3)
    end
    coords2 = vector3
    createVector3 = 0.0
    cmgOperation3 = 0.0
    mathHelper = -1.0
    coords2 = coords2(createVector3, cmgOperation3, mathHelper)
    coords2 = localValue1 + coords2
    createVector3 = SetEntityCoords
    cmgOperation3 = dataCollection2
    cmgOperation3 = cmgOperation3[localValue2]
    cmgOperation3 = cmgOperation3.crate
    mathHelper = coords2.x
    cmgOperation4 = coords2.y
    cmgOperation5 = coords2.z
    workingValue4 = false
    number2 = false
    stateFlag5 = false
    stateFlag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    createVector3(cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7)
  end
  coords2 = GetSoundId
  -- Beginner: result below is soundHandle.
  coords2 = coords2()
  text3 = coords2
  coords2 = PlaySoundFromEntity
  createVector3 = text3
  cmgOperation3 = "Crate_Beeps"
  mathHelper = dataCollection2
  mathHelper = mathHelper[localValue2]
  mathHelper = mathHelper.crate
  cmgOperation4 = "MP_CRATE_DROP_SOUNDS"
  cmgOperation5 = true
  workingValue4 = 0
  coords2(createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4)
  coords2 = GetEntityCoords
  createVector3 = dataCollection2
  createVector3 = createVector3[localValue2]
  createVector3 = createVector3.crate
  -- Beginner: result below is entityCoords.
  coords2 = coords2(createVector3)
  createVector3 = GetEntityCoords
  cmgOperation3 = dataCollection2
  cmgOperation3 = cmgOperation3[localValue2]
  cmgOperation3 = cmgOperation3.crate
  -- Beginner: result below is entityCoords.
  createVector3 = createVector3(cmgOperation3)
  cmgOperation3 = vector3
  mathHelper = 1.0E-4
  cmgOperation4 = 1.0E-4
  cmgOperation5 = 1.0E-4
  cmgOperation3 = cmgOperation3(mathHelper, cmgOperation4, cmgOperation5)
  createVector3 = createVector3 - cmgOperation3
  cmgOperation3 = ShootSingleBulletBetweenCoords
  mathHelper = coords2.x
  cmgOperation4 = coords2.y
  cmgOperation5 = coords2.z
  workingValue4 = createVector3.x
  number2 = createVector3.y
  stateFlag5 = createVector3.z
  stateFlag7 = 0
  stateFlag8 = false
  stateFlag10 = 1233104067
  stateFlag12 = 0
  stateFlag14 = true
  stateFlag15 = false
  number3 = -1.0
  cmgOperation3(mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3)
  cmgOperation3 = DetachEntity
  mathHelper = dataCollection2
  mathHelper = mathHelper[localValue2]
  mathHelper = mathHelper.parachute
  cmgOperation4 = true
  cmgOperation5 = true
  cmgOperation3(mathHelper, cmgOperation4, cmgOperation5)
  cmgOperation3 = DeleteEntity
  mathHelper = dataCollection2
  mathHelper = mathHelper[localValue2]
  mathHelper = mathHelper.parachute
  -- Beginner: Delete a GTA entity.
  cmgOperation3(mathHelper)
  cmgOperation3 = DoesBlipExist
  mathHelper = workingValue14
  cmgOperation3 = cmgOperation3(mathHelper)
  if cmgOperation3 then
    cmgOperation3 = RemoveBlip
    mathHelper = workingValue14
    cmgOperation3(mathHelper)
  end
  cmgOperation3 = GetEntityCoords
  mathHelper = dataCollection2
  mathHelper = mathHelper[localValue2]
  mathHelper = mathHelper.crate
  -- Beginner: result below is entityCoords.
  cmgOperation3 = cmgOperation3(mathHelper)
  mathHelper = AddOwnedExplosion
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation4 = cmgOperation4()
  cmgOperation5 = cmgOperation3.x
  workingValue4 = cmgOperation3.y
  number2 = cmgOperation3.z
  stateFlag5 = 1
  stateFlag7 = 0.0
  stateFlag8 = true
  stateFlag10 = false
  stateFlag12 = 3.0
  mathHelper(cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
  mathHelper = FreezeEntityPosition
  cmgOperation4 = dataCollection2
  cmgOperation4 = cmgOperation4[localValue2]
  cmgOperation4 = cmgOperation4.crate
  cmgOperation5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  mathHelper(cmgOperation4, cmgOperation5)
  mathHelper = pairs
  cmgOperation4 = dataCollection4
  mathHelper, cmgOperation4, cmgOperation5, workingValue4 = mathHelper(cmgOperation4)
  for number2, stateFlag5 in mathHelper, cmgOperation4, cmgOperation5, workingValue4 do
    if "cuban800" == stateFlag5 then
      stateFlag7 = CMG
      stateFlag7 = stateFlag7.isChristmas
      stateFlag7 = stateFlag7()
      if stateFlag7 then
        stateFlag5 = 683843075
      end
    end
    stateFlag7 = SetModelAsNoLongerNeeded
    stateFlag8 = GetHashKey
    stateFlag10 = stateFlag5
    stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7 = stateFlag8(stateFlag10)
    stateFlag7(stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16, number5, number6, number7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8b70ea764f".
eventHandler(text, createVector32)
eventHandler = RegisterNetEvent
text = "f04fb7e14a"
-- Beginner: this function handles network event "f04fb7e14a".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = dataCollection2
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = dataCollection2
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.crate
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = dataCollection2
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.crate
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
    localValue2 = DoesEntityExist
    localValue3 = dataCollection2
    localValue3 = localValue3[localValue1]
    localValue3 = localValue3.parachute
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = dataCollection2
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3.parachute
      localValue2(localValue3)
    end
    localValue2 = SetTimeout
    localValue3 = 300000

    -- === HELPER FUNCTION: localValue4() ===
    function localValue4()
      local cmgOperation2, workingValue10, workingValue12
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.deleteRedzone
      workingValue10 = localValue1
      cmgOperation2(workingValue10)
      cmgOperation2 = RemoveBlip
      workingValue12 = localValue1
      workingValue10 = dataCollection
      workingValue10 = workingValue10[workingValue12]
      cmgOperation2(workingValue10)
      workingValue10 = localValue1
      cmgOperation2 = dataCollection3
      cmgOperation2[workingValue10] = nil
    end
    localValue2(localValue3, localValue4)
    localValue2 = StopSound
    localValue3 = text3
    localValue2(localValue3)
    localValue2 = ReleaseSoundId
    localValue3 = text3
    localValue2(localValue3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f04fb7e14a".
eventHandler(text, createVector32)
eventHandler = RegisterNetEvent
text = "cda5d18db2"
-- Beginner: this function handles network event "cda5d18db2".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1, localValue2, localValue3, localValue4) ===
function createVector32(localValue1, localValue2, localValue3, localValue4)
  local coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4
  coords = CMG
  coords = coords.loadModel
  cmgOperation9 = 772559902
  -- Beginner: Request/load a GTA model before spawning or applying it.
  coords(cmgOperation9)
  coords = dataCollection2
  cmgOperation9 = {}
  coords[localValue1] = cmgOperation9
  coords = localValue2
  if not localValue3 then
    cmgOperation9 = vector3
    text4 = 0.0
    number8 = 0.0
    number9 = -1.0
    cmgOperation9 = cmgOperation9(text4, number8, number9)
    coords = localValue2 + cmgOperation9
  end
  cmgOperation9 = dataCollection2
  cmgOperation9 = cmgOperation9[localValue1]
  text4 = CreateObject
  number8 = 772559902
  number9 = coords.x
  coords2 = coords.y
  createVector3 = coords.z
  cmgOperation3 = false
  mathHelper = true
  cmgOperation4 = true
  -- Beginner: result below is objectEntity.
  text4 = text4(number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4)
  cmgOperation9.crate = text4
  cmgOperation9 = DecorSetInt
  text4 = dataCollection2
  text4 = text4[localValue1]
  text4 = text4.crate
  number8 = "5f7af1c5ce"
  number9 = localValue1
  cmgOperation9(text4, number8, number9)
  cmgOperation9 = FreezeEntityPosition
  text4 = dataCollection2
  text4 = text4[localValue1]
  text4 = text4.crate
  number8 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgOperation9(text4, number8)
  cmgOperation9 = SetModelAsNoLongerNeeded
  text4 = 772559902
  cmgOperation9(text4)
  cmgOperation9 = AddBlipForEntity
  text4 = dataCollection2
  text4 = text4[localValue1]
  text4 = text4.crate
  -- Beginner: result below is blipHandle.
  cmgOperation9 = cmgOperation9(text4)
  text4 = SetBlipSprite
  number8 = cmgOperation9
  number9 = 501
  text4(number8, number9)
  text4 = SetBlipColour
  number8 = cmgOperation9
  number9 = 2
  text4(number8, number9)
  text4 = GetSoundId
  -- Beginner: result below is soundHandle.
  text4 = text4()
  text3 = text4
  text4 = PlaySoundFromEntity
  number8 = text3
  number9 = "Crate_Beeps"
  coords2 = dataCollection2
  coords2 = coords2[localValue1]
  coords2 = coords2.crate
  createVector3 = "MP_CRATE_DROP_SOUNDS"
  cmgOperation3 = true
  mathHelper = 0
  text4(number8, number9, coords2, createVector3, cmgOperation3, mathHelper)
  if localValue4 then
    return
  end
  if localValue3 then
    text4 = CMG
    text4 = text4.createRedzone
    number8 = localValue1
    number9 = localValue2
    coords2 = 50.0
    text4(number8, number9, coords2)
  else
    text4 = CMG
    text4 = text4.createRedzone
    number8 = localValue1
    number9 = localValue2
    coords2 = 200.0
    text4(number8, number9, coords2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cda5d18db2".
eventHandler(text, createVector32)
eventHandler = RegisterNetEvent
text = "5da2ae475e"
-- Beginner: this function handles network event "5da2ae475e".

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = SetTimeout
  localValue3 = 300000
  -- Beginner: this function handles network event "5da2ae475e".

  -- === HELPER FUNCTION: localValue4() ===
  function localValue4()
    local cmgOperation2, workingValue10, workingValue12
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.deleteRedzone
    workingValue10 = localValue1
    cmgOperation2(workingValue10)
    cmgOperation2 = RemoveBlip
    workingValue12 = localValue1
    workingValue10 = dataCollection
    workingValue10 = workingValue10[workingValue12]
    cmgOperation2(workingValue10)
    workingValue10 = localValue1
    cmgOperation2 = dataCollection3
    cmgOperation2[workingValue10] = nil
  end
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5da2ae475e".
eventHandler(text, createVector32)
eventHandler = {}
text = 0
createVector32 = vector3
stateFlag3 = -1712.413
stateFlag4 = 8867.743
number = -5.004937
createVector32 = createVector32(stateFlag3, stateFlag4, number)
stateFlag3 = false
stateFlag4 = true

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2
  localValue2 = cmgOperation.modelReplacements
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = localValue1
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8
  localValue1 = true
  stateFlag3 = localValue1
  localValue1 = Citizen
  localValue1 = localValue1.CreateThreadNow

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local cmgOperation2, workingValue10, workingValue12, workingValue13, cmgOperation8, stateFlag17, stateFlag18, stateFlag19
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.loadModel
    workingValue10 = -2079670599
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgOperation2(workingValue10)
    cmgOperation2 = CreateObjectNoOffset
    workingValue10 = -2079670599
    workingValue12 = text5.x
    workingValue13 = text5.y
    cmgOperation8 = text5.z
    stateFlag17 = false
    stateFlag18 = false
    stateFlag19 = false
    -- Beginner: result below is objectEntity.
    cmgOperation2 = cmgOperation2(workingValue10, workingValue12, workingValue13, cmgOperation8, stateFlag17, stateFlag18, stateFlag19)
    text = cmgOperation2
    cmgOperation2 = FreezeEntityPosition
    workingValue10 = text
    workingValue12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation2(workingValue10, workingValue12)
    cmgOperation2 = table
    cmgOperation2 = cmgOperation2.insert
    workingValue10 = eventHandler
    workingValue12 = text
    cmgOperation2(workingValue10, workingValue12)
  end
  localValue1(localValue2)
  localValue1 = pairs
  localValue2 = cmgOperation.entityDefs
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for coords, cmgOperation9 in localValue1, localValue2, localValue3, localValue4 do
    text4 = Citizen
    text4 = text4.CreateThreadNow

    -- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
    function number8()
      local cmgOperation2, workingValue10, workingValue12, workingValue13, cmgOperation8, stateFlag17, stateFlag18, stateFlag19, workingValue15, stateFlag20, stateFlag, stateFlag2, workingValue, workingValue2, cmgOperation6, workingValue5, workingValue7, stateFlag6, workingValue9, stateFlag9, stateFlag11, stateFlag13
      cmgOperation2 = number
      workingValue10 = cmgOperation9
      workingValue10 = workingValue10[1]
      cmgOperation2 = cmgOperation2(workingValue10)
      workingValue10 = cmgOperation9
      workingValue10 = workingValue10[2]
      workingValue12 = createVector32
      workingValue10 = workingValue10 - workingValue12
      workingValue12 = text5
      workingValue10 = workingValue10 + workingValue12
      workingValue12 = inv
      workingValue13 = cmgOperation9
      workingValue13 = workingValue13[3]
      workingValue12 = workingValue12(workingValue13)
      workingValue13 = cmgOperation9
      workingValue13 = workingValue13[4]
      workingValue13 = 1572864 == workingValue13
      cmgOperation8 = CMG
      cmgOperation8 = cmgOperation8.loadModel
      stateFlag17 = cmgOperation2
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgOperation8(stateFlag17)
      cmgOperation8 = stateFlag3
      if cmgOperation8 then
        cmgOperation8 = CreateObjectNoOffset
        stateFlag17 = cmgOperation2
        stateFlag18 = workingValue10.x
        stateFlag19 = workingValue10.y
        workingValue15 = workingValue10.z
        stateFlag20 = false
        stateFlag = false
        stateFlag2 = true
        -- Beginner: result below is objectEntity.
        cmgOperation8 = cmgOperation8(stateFlag17, stateFlag18, stateFlag19, workingValue15, stateFlag20, stateFlag, stateFlag2)
        stateFlag17 = SetModelAsNoLongerNeeded
        stateFlag18 = cmgOperation2
        stateFlag17(stateFlag18)
        stateFlag17 = SetEntityQuaternion
        stateFlag18 = cmgOperation8
        stateFlag19 = workingValue12.x
        workingValue15 = workingValue12.y
        stateFlag20 = workingValue12.z
        stateFlag = workingValue12.w
        stateFlag17(stateFlag18, stateFlag19, workingValue15, stateFlag20, stateFlag)
        stateFlag17 = cmgOperation.doorModels
        stateFlag17 = stateFlag17[cmgOperation2]
        if not stateFlag17 then
          stateFlag17 = FreezeEntityPosition
          stateFlag18 = cmgOperation8
          stateFlag19 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          stateFlag17(stateFlag18, stateFlag19)
        end
        stateFlag17 = SetEntityLodDist
        stateFlag18 = cmgOperation8
        stateFlag19 = 1500
        stateFlag17(stateFlag18, stateFlag19)
        stateFlag17 = table
        stateFlag17 = stateFlag17.insert
        stateFlag18 = eventHandler
        stateFlag19 = cmgOperation8
        stateFlag17(stateFlag18, stateFlag19)
      end
      if workingValue13 then
        cmgOperation8 = cmgOperation.mloEntityDefs
        cmgOperation8 = cmgOperation8[cmgOperation2]
        stateFlag17 = pairs
        stateFlag18 = cmgOperation8
        stateFlag17, stateFlag18, stateFlag19, workingValue15 = stateFlag17(stateFlag18)
        for stateFlag20, stateFlag in stateFlag17, stateFlag18, stateFlag19, workingValue15 do
          stateFlag2 = number
          workingValue = stateFlag[1]
          stateFlag2 = stateFlag2(workingValue)
          workingValue = stateFlag[2]
          workingValue = workingValue + workingValue10
          workingValue2 = inv
          cmgOperation6 = stateFlag[3]
          workingValue2 = workingValue2(cmgOperation6)
          cmgOperation6 = CMG
          cmgOperation6 = cmgOperation6.loadModel
          workingValue5 = stateFlag2
          -- Beginner: Request/load a GTA model before spawning or applying it.
          cmgOperation6(workingValue5)
          cmgOperation6 = stateFlag3
          if cmgOperation6 then
            cmgOperation6 = CreateObjectNoOffset
            workingValue5 = stateFlag2
            workingValue7 = workingValue.x
            stateFlag6 = workingValue.y
            workingValue9 = workingValue.z
            stateFlag9 = false
            stateFlag11 = false
            stateFlag13 = true
            -- Beginner: result below is objectEntity.
            cmgOperation6 = cmgOperation6(workingValue5, workingValue7, stateFlag6, workingValue9, stateFlag9, stateFlag11, stateFlag13)
            workingValue5 = SetModelAsNoLongerNeeded
            workingValue7 = stateFlag2
            workingValue5(workingValue7)
            workingValue5 = SetEntityQuaternion
            workingValue7 = cmgOperation6
            stateFlag6 = workingValue2.x
            workingValue9 = workingValue2.y
            stateFlag9 = workingValue2.z
            stateFlag11 = workingValue2.w
            workingValue5(workingValue7, stateFlag6, workingValue9, stateFlag9, stateFlag11)
            workingValue5 = cmgOperation.doorModels
            workingValue5 = workingValue5[stateFlag2]
            if not workingValue5 then
              workingValue5 = FreezeEntityPosition
              workingValue7 = cmgOperation6
              stateFlag6 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              workingValue5(workingValue7, stateFlag6)
            end
            workingValue5 = SetEntityLodDist
            workingValue7 = cmgOperation6
            stateFlag6 = 1500
            workingValue5(workingValue7, stateFlag6)
            workingValue5 = table
            workingValue5 = workingValue5.insert
            workingValue7 = eventHandler
            stateFlag6 = cmgOperation6
            workingValue5(workingValue7, stateFlag6)
          end
        end
      end
    end
    text4(number8)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8
  localValue1 = false
  stateFlag3 = localValue1
  localValue1 = pairs
  localValue2 = eventHandler
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for coords, cmgOperation9 in localValue1, localValue2, localValue3, localValue4 do
    text4 = DeleteEntity
    number8 = cmgOperation9
    -- Beginner: Delete a GTA entity.
    text4(number8)
  end
  localValue1 = 0
  text = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16
  localValue1 = GetPedConfigFlag
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 388
  localValue4 = false
  localValue1 = localValue1(localValue2, localValue3, localValue4)
  if localValue1 then
    localValue1 = IsPedClimbing
    localValue2 = PlayerPedId
    localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16 = localValue2()
    localValue1 = localValue1(localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16)
  end
  localValue2 = not localValue1
  localValue3 = text
  if 0 ~= localValue3 then
    localValue3 = stateFlag4
    if localValue3 ~= localValue2 then
      localValue3 = SetEntityCollision
      localValue4 = text
      coords = localValue2
      cmgOperation9 = localValue2
      localValue3(localValue4, coords, cmgOperation9)
      stateFlag4 = localValue2
    end
  end
  localValue3 = table
  localValue3 = localValue3.count
  localValue4 = dataCollection3
  -- Beginner: result below is count.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue3 = DrawMarker
  localValue4 = 1
  coords = text5.x
  cmgOperation9 = text5.y
  text4 = text5.z
  number8 = 0.0
  number9 = 0.0
  coords2 = 0.0
  createVector3 = 0.0
  cmgOperation3 = 0.0
  mathHelper = 0.0
  cmgOperation4 = 200.0
  cmgOperation5 = 200.0
  workingValue4 = 6000.0
  number2 = 255
  stateFlag5 = 0
  stateFlag7 = 0
  stateFlag8 = 25
  stateFlag10 = false
  stateFlag12 = false
  stateFlag14 = 2
  stateFlag15 = false
  number3 = nil
  number4 = nil
  stateFlag16 = false
  localValue3(localValue4, coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag15, number3, number4, stateFlag16)
end
cmgOperation7 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = GetConvarInt
  localValue2 = "cmg_rigindex"
  localValue3 = 0
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = assert
  localValue3 = 0 ~= localValue1
  localValue4 = "Unable to fetch oil rig position from server"
  localValue2(localValue3, localValue4)
  localValue2 = cmgOperation.spawnLocations
  localValue2 = localValue2[localValue1]
  text5 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.createArea
  localValue3 = "oilrig"
  localValue4 = text5
  coords = 1000.0
  cmgOperation9 = 1500.0
  text4 = workingValue3
  number8 = workingValue6
  number9 = workingValue8
  coords2 = {}
  -- Beginner: Create an interaction area around a world position.
  localValue2(localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2)
  localValue2 = CMG
  localValue2 = localValue2.createGarage
  localValue3 = "VIP Helicopters"
  localValue4 = text5
  coords = vector3
  cmgOperation9 = -24.09967
  text4 = 9.443848
  number8 = 40.603668
  coords = coords(cmgOperation9, text4, number8)
  localValue4 = localValue4 + coords
  coords = false
  localValue2(localValue3, localValue4, coords)
  localValue2 = CMG
  localValue2 = localValue2.createGarage
  localValue3 = "Standard Boats"
  localValue4 = text5
  coords = vector3
  cmgOperation9 = 40.875153
  text4 = 17.146973
  number8 = 5.628222
  coords = coords(cmgOperation9, text4, number8)
  localValue4 = localValue4 + coords
  coords = false
  localValue2(localValue3, localValue4, coords)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation7(text2)
cmgOperation7 = AddEventHandler
text2 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    localValue3 = dataCollection2
    localValue2, localValue3, localValue4, coords = localValue2(localValue3)
    for cmgOperation9, text4 in localValue2, localValue3, localValue4, coords do
      number8 = text4.crate
      if number8 then
        number8 = DoesEntityExist
        number9 = text4.crate
        number8 = number8(number9)
        if number8 then
          number8 = DeleteEntity
          number9 = text4.crate
          -- Beginner: Delete a GTA entity.
          number8(number9)
        end
      end
      number8 = text4.parachute
      if number8 then
        number8 = DoesEntityExist
        number9 = text4.parachute
        number8 = number8(number9)
        if number8 then
          number8 = DeleteEntity
          number9 = text4.parachute
          number8(number9)
        end
      end
      number8 = CMG
      number8 = number8.deleteRedzone
      number9 = cmgOperation9
      number8(number9)
    end
    localValue2 = text3
    if localValue2 then
      localValue2 = StopSound
      localValue3 = text3
      localValue2(localValue3)
      localValue2 = ReleaseSoundId
      localValue3 = text3
      localValue2(localValue3)
    end
    localValue2 = workingValue6
    localValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation7(text2, workingValue11)
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = text5
  return localValue1
end
cmgOperation7.getOilRigCoords = text2
cmgOperation7 = AddEventHandler
text2 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2
  localValue2 = pairs
  localValue3 = dataCollection
  localValue2, localValue3, localValue4, coords = localValue2(localValue3)
  for cmgOperation9, text4 in localValue2, localValue3, localValue4, coords do
    number8 = text6
    number9 = localValue1
    coords2 = text4
    number8(number9, coords2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
cmgOperation7(text2, workingValue11)
cmgOperation7 = RegisterNetEvent
text2 = "47e16a3b97"
-- Beginner: this function handles network event "47e16a3b97".

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2) ===
function workingValue11(localValue1, localValue2)
  local localValue3, localValue4, coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = GetPlayerServerId
  coords = PlayerId
  coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2 = coords()
  -- Beginner: result below is serverId.
  localValue4 = localValue4(coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2)
  if localValue1 == localValue4 then
    localValue4 = "anim@heists@load_box"
    coords = "lift_box"
    cmgOperation9 = CMG
    cmgOperation9 = cmgOperation9.loadAnimDict
    text4 = localValue4
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgOperation9(text4)
    cmgOperation9 = TaskPlayAnim
    text4 = localValue3
    number8 = localValue4
    number9 = coords
    coords2 = 3.0
    createVector3 = 1.0
    cmgOperation3 = -1
    mathHelper = 1
    cmgOperation4 = 0
    cmgOperation5 = false
    workingValue4 = false
    number2 = false
    -- Beginner: Play an animation on a ped.
    cmgOperation9(text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4, number2)
    cmgOperation9 = Wait
    text4 = 1200
    cmgOperation9(text4)
    cmgOperation9 = ClearPedTasks
    text4 = localValue3
    cmgOperation9(text4)
  else
    localValue4 = Wait
    coords = 1200
    localValue4(coords)
  end
  localValue4 = UseParticleFxAssetNextCall
  coords = "core"
  localValue4(coords)
  localValue4 = StartParticleFxLoopedAtCoord
  coords = "exp_grd_flare"
  cmgOperation9 = localValue2.x
  text4 = localValue2.y
  number8 = localValue2.z
  number8 = number8 - 1.0
  number9 = 0.0
  coords2 = 0.0
  createVector3 = 0.0
  cmgOperation3 = 1.0
  mathHelper = false
  cmgOperation4 = false
  cmgOperation5 = false
  workingValue4 = false
  localValue4 = localValue4(coords, cmgOperation9, text4, number8, number9, coords2, createVector3, cmgOperation3, mathHelper, cmgOperation4, cmgOperation5, workingValue4)
  coords = Wait
  cmgOperation9 = 60000
  coords(cmgOperation9)
  coords = StopParticleFxLooped
  cmgOperation9 = localValue4
  text4 = false
  coords(cmgOperation9, text4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47e16a3b97".
cmgOperation7(text2, workingValue11)
