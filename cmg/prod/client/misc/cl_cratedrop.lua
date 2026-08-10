--[[
    Beginner Guide: cl_cratedrop.lua
    ================================

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
    BEGINNER GUIDE — Cratedrop
    ==========================

    File: cmg/prod/client/misc/cl_cratedrop.lua
    Purpose: This file contains general gameplay utility.

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
      * cfg/cfg_rigentities

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * 8b70ea764f
      * 5f7af1c5ce
      * f04fb7e14a
      * cda5d18db2
      * 5da2ae475e
      * 919aefda0c
      * 47e16a3b97

    Example player-facing text in this file:
      * SetTaskVehicleGotoPlaneMinHeightAboveTerrain

]]
local cmgCall, dataTable, dataTable2, dataTable3, workValue14, dataTable4, textValue3, textValue5, textValue6, eventRegistration, textValue, vector3Builder2, flag3, flag4, numberValue, workValue3, workValue6, workValue8, cmgCall7, textValue2, workValue11
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_rigentities"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
dataTable2 = {}
dataTable3 = {}
workValue14 = nil
dataTable4 = {}
textValue3 = "p_cargo_chute_s"
textValue5 = "xs_prop_arena_crate_01a"
textValue6 = "cuban800"
eventRegistration = "s_m_m_pilot_02"
dataTable4[1] = textValue3
dataTable4[2] = textValue5
dataTable4[3] = textValue6
dataTable4[4] = eventRegistration
textValue3 = nil
textValue5 = nil
function textValue6(arg1, arg2)
  local arg3, arg4, coords
  if 0 == arg1 then
    arg3 = SetBlipDisplay
    arg4 = arg2
    coords = 2
    arg3(arg4, coords)
  else
    arg3 = SetBlipDisplay
    arg4 = arg2
    coords = 0
    arg3(arg4, coords)
  end
end
eventRegistration = RegisterNetEvent
textValue = "8b70ea764f"
-- Beginner: this function handles network event "8b70ea764f".
function vector3Builder2(arg1, arg2, arg3, arg4)
  local coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7
  coords = GetEntityCoords
  cmgCall9 = CMG
  cmgCall9 = cmgCall9.getPlayerPed
  cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7 = cmgCall9()
  -- Beginner: result below is entityCoords.
  coords = coords(cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7)
  cmgCall9 = coords - arg1
  cmgCall9 = #cmgCall9
  if cmgCall9 < 50.0 then
    cmgCall9 = notify
    textValue4 = "~y~WARNING - A supply drop is landing in your vicinity, leave the area immediately if you are unarmed!"
    -- Beginner: Show a notification to the player.
    cmgCall9(textValue4)
  end
  cmgCall9 = pairs
  textValue4 = dataTable4
  cmgCall9, textValue4, numberValue8, numberValue9 = cmgCall9(textValue4)
  for coords2, vector3Builder in cmgCall9, textValue4, numberValue8, numberValue9 do
    if "cuban800" == vector3Builder then
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.isChristmas
      cmgCall3 = cmgCall3()
      if cmgCall3 then
        vector3Builder = 683843075
      end
    end
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.loadModel
    mathHelper = vector3Builder
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgCall3(mathHelper)
  end
  cmgCall9 = RequestWeaponAsset
  textValue4 = 1233104067
  numberValue8 = 0
  numberValue9 = 0
  cmgCall9(textValue4, numberValue8, numberValue9)
  while true do
    cmgCall9 = HasWeaponAssetLoaded
    textValue4 = 1233104067
    cmgCall9 = cmgCall9(textValue4)
    if cmgCall9 then
      break
    end
    cmgCall9 = Wait
    textValue4 = 0
    cmgCall9(textValue4)
  end
  cmgCall9 = nil
  if not arg3 then
    textValue4 = math
    textValue4 = textValue4.random
    numberValue8 = 0
    numberValue9 = 360
    textValue4 = textValue4(numberValue8, numberValue9)
    textValue4 = textValue4 + 0.0
    numberValue8 = 1500.0
    numberValue9 = textValue4 / 180.0
    numberValue9 = numberValue9 * 3.14
    coords2 = vector3
    vector3Builder = arg1.x
    cmgCall3 = arg1.y
    mathHelper = arg1.z
    coords2 = coords2(vector3Builder, cmgCall3, mathHelper)
    vector3Builder = vector3
    cmgCall3 = math
    cmgCall3 = cmgCall3.cos
    mathHelper = numberValue9
    cmgCall3 = cmgCall3(mathHelper)
    cmgCall3 = cmgCall3 * numberValue8
    mathHelper = math
    mathHelper = mathHelper.sin
    cmgCall4 = numberValue9
    mathHelper = mathHelper(cmgCall4)
    mathHelper = mathHelper * numberValue8
    cmgCall4 = -500.0
    vector3Builder = vector3Builder(cmgCall3, mathHelper, cmgCall4)
    coords2 = coords2 - vector3Builder
    vector3Builder = arg1.x
    cmgCall3 = coords2.x
    vector3Builder = vector3Builder - cmgCall3
    cmgCall3 = arg1.y
    mathHelper = coords2.y
    cmgCall3 = cmgCall3 - mathHelper
    mathHelper = GetHeadingFromVector_2d
    cmgCall4 = vector3Builder
    cmgCall5 = cmgCall3
    mathHelper = mathHelper(cmgCall4, cmgCall5)
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.isChristmas
    cmgCall4 = cmgCall4()
    if cmgCall4 then
      cmgCall4 = 683843075
      if cmgCall4 then
        goto flow_label_105
      end
    end
    cmgCall4 = -644710429
    ::flow_label_105::
    cmgCall5 = CreateVehicle
    workValue4 = cmgCall4
    numberValue2 = coords2.x
    flag5 = coords2.y
    flag7 = coords2.z
    flag8 = mathHelper
    flag10 = false
    flag12 = true
    -- Beginner: result below is vehicleEntity.
    cmgCall5 = cmgCall5(workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12)
    cmgCall9 = cmgCall5
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.initLocalVehicle
    workValue4 = cmgCall9
    cmgCall5(workValue4)
    cmgCall5 = SetEntityHeading
    workValue4 = cmgCall9
    numberValue2 = mathHelper
    -- Beginner: Change the direction an entity is facing.
    cmgCall5(workValue4, numberValue2)
    cmgCall5 = SetVehicleDoorsLocked
    workValue4 = cmgCall9
    numberValue2 = 2
    cmgCall5(workValue4, numberValue2)
    cmgCall5 = SetEntityDynamic
    workValue4 = cmgCall9
    numberValue2 = true
    cmgCall5(workValue4, numberValue2)
    cmgCall5 = ActivatePhysics
    workValue4 = cmgCall9
    cmgCall5(workValue4)
    cmgCall5 = SetVehicleForwardSpeed
    workValue4 = cmgCall9
    numberValue2 = 60.0
    cmgCall5(workValue4, numberValue2)
    cmgCall5 = SetHeliBladesFullSpeed
    workValue4 = cmgCall9
    cmgCall5(workValue4)
    cmgCall5 = SetVehicleEngineOn
    workValue4 = cmgCall9
    numberValue2 = true
    flag5 = true
    flag7 = false
    cmgCall5(workValue4, numberValue2, flag5, flag7)
    cmgCall5 = ControlLandingGear
    workValue4 = cmgCall9
    numberValue2 = 3
    cmgCall5(workValue4, numberValue2)
    cmgCall5 = OpenBombBayDoors
    workValue4 = cmgCall9
    cmgCall5(workValue4)
    cmgCall5 = SetEntityProofs
    workValue4 = cmgCall9
    numberValue2 = true
    flag5 = false
    flag7 = true
    flag8 = false
    flag10 = false
    flag12 = false
    flag14 = false
    flag15 = false
    cmgCall5(workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15)
    cmgCall5 = CreatePedInsideVehicle
    workValue4 = cmgCall9
    numberValue2 = 1
    flag5 = -163714847
    flag7 = -1
    flag8 = false
    flag10 = true
    cmgCall5 = cmgCall5(workValue4, numberValue2, flag5, flag7, flag8, flag10)
    workValue4 = SetBlockingOfNonTemporaryEvents
    numberValue2 = cmgCall5
    flag5 = true
    workValue4(numberValue2, flag5)
    workValue4 = SetPedRandomComponentVariation
    numberValue2 = cmgCall5
    flag5 = 0
    workValue4(numberValue2, flag5)
    workValue4 = SetPedKeepTask
    numberValue2 = cmgCall5
    flag5 = true
    workValue4(numberValue2, flag5)
    workValue4 = _ENV
    numberValue2 = "SetTaskVehicleGotoPlaneMinHeightAboveTerrain"
    workValue4 = workValue4[numberValue2]
    numberValue2 = cmgCall9
    flag5 = 50
    workValue4(numberValue2, flag5)
    workValue4 = TaskVehicleDriveToCoord
    numberValue2 = cmgCall5
    flag5 = cmgCall9
    flag7 = vector3
    flag8 = arg1.x
    flag10 = arg1.y
    flag12 = arg1.z
    flag7 = flag7(flag8, flag10, flag12)
    flag8 = vector3
    flag10 = 0.0
    flag12 = 0.0
    flag14 = 500.0
    flag8 = flag8(flag10, flag12, flag14)
    flag7 = flag7 + flag8
    flag8 = 60.0
    flag10 = 0
    flag12 = 1
    flag14 = 262144
    flag15 = 15.0
    numberValue3 = -1.0
    numberValue4 = 0.0
    flag16 = 0.0
    workValue4(numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16)
    workValue4 = AddBlipForEntity
    numberValue2 = cmgCall9
    -- Beginner: result below is blipHandle.
    workValue4 = workValue4(numberValue2)
    numberValue2 = SetBlipSprite
    flag5 = workValue4
    flag7 = 307
    numberValue2(flag5, flag7)
    numberValue2 = SetBlipColour
    flag5 = workValue4
    flag7 = 3
    numberValue2(flag5, flag7)
    numberValue2 = vector2
    flag5 = arg1.x
    flag7 = arg1.y
    numberValue2 = numberValue2(flag5, flag7)
    flag5 = vector2
    flag7 = GetEntityCoords
    flag8 = cmgCall9
    -- Beginner: result below is entityCoords.
    flag7 = flag7(flag8)
    flag7 = flag7.x
    flag8 = GetEntityCoords
    flag10 = cmgCall9
    -- Beginner: result below is entityCoords.
    flag8 = flag8(flag10)
    flag8 = flag8.y
    flag5 = flag5(flag7, flag8)
    while true do
      flag7 = flag5 - numberValue2
      flag7 = #flag7
      if not (flag7 > 5.0) then
        break
      end
      flag7 = Wait
      flag8 = 100
      flag7(flag8)
      flag7 = vector2
      flag8 = GetEntityCoords
      flag10 = cmgCall9
      -- Beginner: result below is entityCoords.
      flag8 = flag8(flag10)
      flag8 = flag8.x
      flag10 = GetEntityCoords
      flag12 = cmgCall9
      -- Beginner: result below is entityCoords.
      flag10 = flag10(flag12)
      flag10 = flag10.y
      flag7 = flag7(flag8, flag10)
      flag5 = flag7
    end
    flag7 = TaskVehicleDriveToCoord
    flag8 = cmgCall5
    flag10 = cmgCall9
    flag12 = 0.0
    flag14 = 0.0
    flag15 = 500.0
    numberValue3 = 60.0
    numberValue4 = 0
    flag16 = -644710429
    numberValue5 = 262144
    numberValue6 = -1.0
    numberValue7 = -1.0
    flag7(flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7)
    flag7 = SetTimeout
    flag8 = 30000
    function flag10()
      local cmgCall2, workValue10
      cmgCall2 = SetEntityAsNoLongerNeeded
      workValue10 = cmgCall5
      cmgCall2(workValue10)
      cmgCall2 = SetEntityAsNoLongerNeeded
      workValue10 = cmgCall9
      cmgCall2(workValue10)
    end
    flag7(flag8, flag10)
  end
  textValue4 = vector3
  numberValue8 = arg1.x
  numberValue9 = arg1.y
  coords2 = GetEntityCoords
  vector3Builder = cmgCall9
  -- Beginner: result below is entityCoords.
  coords2 = coords2(vector3Builder)
  coords2 = coords2.z
  coords2 = coords2 - 5.0
  textValue4 = textValue4(numberValue8, numberValue9, coords2)
  numberValue8 = dataTable2
  numberValue9 = {}
  numberValue8[arg2] = numberValue9
  numberValue8 = dataTable2
  numberValue8 = numberValue8[arg2]
  numberValue9 = CreateObjectNoOffset
  coords2 = 772559902
  vector3Builder = textValue4.x
  cmgCall3 = textValue4.y
  mathHelper = textValue4.z
  cmgCall4 = false
  cmgCall5 = true
  workValue4 = true
  -- Beginner: result below is objectEntity.
  numberValue9 = numberValue9(coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4)
  numberValue8.crate = numberValue9
  numberValue8 = DecorSetInt
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = "5f7af1c5ce"
  vector3Builder = arg2
  numberValue8(numberValue9, coords2, vector3Builder)
  numberValue8 = SetEntityLodDist
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = 10000
  numberValue8(numberValue9, coords2)
  numberValue8 = ActivatePhysics
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  numberValue8(numberValue9)
  numberValue8 = SetDamping
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = 2
  vector3Builder = 0.1
  numberValue8(numberValue9, coords2, vector3Builder)
  numberValue8 = SetEntityVelocity
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = 0.0
  vector3Builder = 0.0
  cmgCall3 = -0.1
  numberValue8(numberValue9, coords2, vector3Builder, cmgCall3)
  numberValue8 = FreezeEntityPosition
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue8(numberValue9, coords2)
  numberValue8 = Wait
  numberValue9 = 500
  numberValue8(numberValue9)
  numberValue8 = FreezeEntityPosition
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  coords2 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue8(numberValue9, coords2)
  numberValue8 = AddBlipForEntity
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  numberValue9 = numberValue9.crate
  -- Beginner: result below is blipHandle.
  numberValue8 = numberValue8(numberValue9)
  if arg3 then
    numberValue9 = SetBlipSprite
    coords2 = numberValue8
    vector3Builder = 880
    numberValue9(coords2, vector3Builder)
  else
    numberValue9 = SetBlipSprite
    coords2 = numberValue8
    vector3Builder = 501
    numberValue9(coords2, vector3Builder)
  end
  if arg4 then
    numberValue9 = SetBlipColour
    coords2 = numberValue8
    vector3Builder = 3
    numberValue9(coords2, vector3Builder)
  else
    numberValue9 = SetBlipColour
    coords2 = numberValue8
    vector3Builder = 2
    numberValue9(coords2, vector3Builder)
  end
  numberValue9 = dataTable2
  numberValue9 = numberValue9[arg2]
  coords2 = CreateObject
  vector3Builder = 886894755
  cmgCall3 = textValue4.x
  mathHelper = textValue4.y
  cmgCall4 = textValue4.z
  cmgCall5 = false
  workValue4 = true
  numberValue2 = true
  -- Beginner: result below is objectEntity.
  coords2 = coords2(vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2)
  numberValue9.parachute = coords2
  numberValue9 = SetEntityLodDist
  coords2 = dataTable2
  coords2 = coords2[arg2]
  coords2 = coords2.parachute
  vector3Builder = 10000
  numberValue9(coords2, vector3Builder)
  numberValue9 = SetEntityVelocity
  coords2 = dataTable2
  coords2 = coords2[arg2]
  coords2 = coords2.parachute
  vector3Builder = 0.0
  cmgCall3 = 0.0
  mathHelper = -0.1
  numberValue9(coords2, vector3Builder, cmgCall3, mathHelper)
  numberValue9 = ActivatePhysics
  coords2 = dataTable2
  coords2 = coords2[arg2]
  coords2 = coords2.crate
  numberValue9(coords2)
  numberValue9 = AttachEntityToEntity
  coords2 = dataTable2
  coords2 = coords2[arg2]
  coords2 = coords2.parachute
  vector3Builder = dataTable2
  vector3Builder = vector3Builder[arg2]
  vector3Builder = vector3Builder.crate
  cmgCall3 = 0
  mathHelper = 0.0
  cmgCall4 = 0.0
  cmgCall5 = 0.1
  workValue4 = 0.0
  numberValue2 = 0.0
  flag5 = 0.0
  flag7 = false
  flag8 = false
  flag10 = false
  flag12 = false
  flag14 = 2
  flag15 = true
  -- Beginner: Attach one entity to another entity.
  numberValue9(coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15)
  numberValue9 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  numberValue9 = numberValue9()
  if arg3 then
    coords2 = CMG
    coords2 = coords2.createRedzone
    vector3Builder = arg2
    cmgCall3 = arg1
    mathHelper = 50.0
    coords2(vector3Builder, cmgCall3, mathHelper)
    coords2 = SetEntityCoordsNoOffset
    vector3Builder = dataTable2
    vector3Builder = vector3Builder[arg2]
    vector3Builder = vector3Builder.crate
    cmgCall3 = arg1.x
    mathHelper = arg1.y
    cmgCall4 = arg1.z
    cmgCall5 = true
    workValue4 = false
    numberValue2 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    coords2(vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2)
  else
    coords2 = CMG
    coords2 = coords2.createRedzone
    vector3Builder = arg2
    cmgCall3 = arg1
    mathHelper = 200.0
    coords2(vector3Builder, cmgCall3, mathHelper)
    while true do
      coords2 = GetEntityHeightAboveGround
      vector3Builder = dataTable2
      vector3Builder = vector3Builder[arg2]
      vector3Builder = vector3Builder.crate
      coords2 = coords2(vector3Builder)
      if not (coords2 > 2) then
        break
      end
      coords2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords2 = coords2()
      coords2 = coords2 - numberValue9
      vector3Builder = 60000
      if not (coords2 < vector3Builder) then
        break
      end
      coords2 = Wait
      vector3Builder = 100
      coords2(vector3Builder)
    end
    coords2 = vector3
    vector3Builder = 0.0
    cmgCall3 = 0.0
    mathHelper = -1.0
    coords2 = coords2(vector3Builder, cmgCall3, mathHelper)
    coords2 = arg1 + coords2
    vector3Builder = SetEntityCoords
    cmgCall3 = dataTable2
    cmgCall3 = cmgCall3[arg2]
    cmgCall3 = cmgCall3.crate
    mathHelper = coords2.x
    cmgCall4 = coords2.y
    cmgCall5 = coords2.z
    workValue4 = false
    numberValue2 = false
    flag5 = false
    flag7 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    vector3Builder(cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7)
  end
  coords2 = GetSoundId
  -- Beginner: result below is soundHandle.
  coords2 = coords2()
  textValue3 = coords2
  coords2 = PlaySoundFromEntity
  vector3Builder = textValue3
  cmgCall3 = "Crate_Beeps"
  mathHelper = dataTable2
  mathHelper = mathHelper[arg2]
  mathHelper = mathHelper.crate
  cmgCall4 = "MP_CRATE_DROP_SOUNDS"
  cmgCall5 = true
  workValue4 = 0
  coords2(vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4)
  coords2 = GetEntityCoords
  vector3Builder = dataTable2
  vector3Builder = vector3Builder[arg2]
  vector3Builder = vector3Builder.crate
  -- Beginner: result below is entityCoords.
  coords2 = coords2(vector3Builder)
  vector3Builder = GetEntityCoords
  cmgCall3 = dataTable2
  cmgCall3 = cmgCall3[arg2]
  cmgCall3 = cmgCall3.crate
  -- Beginner: result below is entityCoords.
  vector3Builder = vector3Builder(cmgCall3)
  cmgCall3 = vector3
  mathHelper = 1.0E-4
  cmgCall4 = 1.0E-4
  cmgCall5 = 1.0E-4
  cmgCall3 = cmgCall3(mathHelper, cmgCall4, cmgCall5)
  vector3Builder = vector3Builder - cmgCall3
  cmgCall3 = ShootSingleBulletBetweenCoords
  mathHelper = coords2.x
  cmgCall4 = coords2.y
  cmgCall5 = coords2.z
  workValue4 = vector3Builder.x
  numberValue2 = vector3Builder.y
  flag5 = vector3Builder.z
  flag7 = 0
  flag8 = false
  flag10 = 1233104067
  flag12 = 0
  flag14 = true
  flag15 = false
  numberValue3 = -1.0
  cmgCall3(mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3)
  cmgCall3 = DetachEntity
  mathHelper = dataTable2
  mathHelper = mathHelper[arg2]
  mathHelper = mathHelper.parachute
  cmgCall4 = true
  cmgCall5 = true
  cmgCall3(mathHelper, cmgCall4, cmgCall5)
  cmgCall3 = DeleteEntity
  mathHelper = dataTable2
  mathHelper = mathHelper[arg2]
  mathHelper = mathHelper.parachute
  -- Beginner: Delete a GTA entity.
  cmgCall3(mathHelper)
  cmgCall3 = DoesBlipExist
  mathHelper = workValue14
  cmgCall3 = cmgCall3(mathHelper)
  if cmgCall3 then
    cmgCall3 = RemoveBlip
    mathHelper = workValue14
    cmgCall3(mathHelper)
  end
  cmgCall3 = GetEntityCoords
  mathHelper = dataTable2
  mathHelper = mathHelper[arg2]
  mathHelper = mathHelper.crate
  -- Beginner: result below is entityCoords.
  cmgCall3 = cmgCall3(mathHelper)
  mathHelper = AddOwnedExplosion
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall4 = cmgCall4()
  cmgCall5 = cmgCall3.x
  workValue4 = cmgCall3.y
  numberValue2 = cmgCall3.z
  flag5 = 1
  flag7 = 0.0
  flag8 = true
  flag10 = false
  flag12 = 3.0
  mathHelper(cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12)
  mathHelper = FreezeEntityPosition
  cmgCall4 = dataTable2
  cmgCall4 = cmgCall4[arg2]
  cmgCall4 = cmgCall4.crate
  cmgCall5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  mathHelper(cmgCall4, cmgCall5)
  mathHelper = pairs
  cmgCall4 = dataTable4
  mathHelper, cmgCall4, cmgCall5, workValue4 = mathHelper(cmgCall4)
  for numberValue2, flag5 in mathHelper, cmgCall4, cmgCall5, workValue4 do
    if "cuban800" == flag5 then
      flag7 = CMG
      flag7 = flag7.isChristmas
      flag7 = flag7()
      if flag7 then
        flag5 = 683843075
      end
    end
    flag7 = SetModelAsNoLongerNeeded
    flag8 = GetHashKey
    flag10 = flag5
    flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7 = flag8(flag10)
    flag7(flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16, numberValue5, numberValue6, numberValue7)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8b70ea764f".
eventRegistration(textValue, vector3Builder2)
eventRegistration = RegisterNetEvent
textValue = "f04fb7e14a"
-- Beginner: this function handles network event "f04fb7e14a".
function vector3Builder2(arg1)
  local arg2, arg3, arg4
  arg2 = dataTable2
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = dataTable2
    arg3 = arg3[arg1]
    arg3 = arg3.crate
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = dataTable2
      arg3 = arg3[arg1]
      arg3 = arg3.crate
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
    end
    arg2 = DoesEntityExist
    arg3 = dataTable2
    arg3 = arg3[arg1]
    arg3 = arg3.parachute
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = dataTable2
      arg3 = arg3[arg1]
      arg3 = arg3.parachute
      arg2(arg3)
    end
    arg2 = SetTimeout
    arg3 = 300000
    function arg4()
      local cmgCall2, workValue10, workValue12
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.deleteRedzone
      workValue10 = arg1
      cmgCall2(workValue10)
      cmgCall2 = RemoveBlip
      workValue12 = arg1
      workValue10 = dataTable
      workValue10 = workValue10[workValue12]
      cmgCall2(workValue10)
      workValue10 = arg1
      cmgCall2 = dataTable3
      cmgCall2[workValue10] = nil
    end
    arg2(arg3, arg4)
    arg2 = StopSound
    arg3 = textValue3
    arg2(arg3)
    arg2 = ReleaseSoundId
    arg3 = textValue3
    arg2(arg3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f04fb7e14a".
eventRegistration(textValue, vector3Builder2)
eventRegistration = RegisterNetEvent
textValue = "cda5d18db2"
-- Beginner: this function handles network event "cda5d18db2".
function vector3Builder2(arg1, arg2, arg3, arg4)
  local coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4
  coords = CMG
  coords = coords.loadModel
  cmgCall9 = 772559902
  -- Beginner: Request/load a GTA model before spawning or applying it.
  coords(cmgCall9)
  coords = dataTable2
  cmgCall9 = {}
  coords[arg1] = cmgCall9
  coords = arg2
  if not arg3 then
    cmgCall9 = vector3
    textValue4 = 0.0
    numberValue8 = 0.0
    numberValue9 = -1.0
    cmgCall9 = cmgCall9(textValue4, numberValue8, numberValue9)
    coords = arg2 + cmgCall9
  end
  cmgCall9 = dataTable2
  cmgCall9 = cmgCall9[arg1]
  textValue4 = CreateObject
  numberValue8 = 772559902
  numberValue9 = coords.x
  coords2 = coords.y
  vector3Builder = coords.z
  cmgCall3 = false
  mathHelper = true
  cmgCall4 = true
  -- Beginner: result below is objectEntity.
  textValue4 = textValue4(numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4)
  cmgCall9.crate = textValue4
  cmgCall9 = DecorSetInt
  textValue4 = dataTable2
  textValue4 = textValue4[arg1]
  textValue4 = textValue4.crate
  numberValue8 = "5f7af1c5ce"
  numberValue9 = arg1
  cmgCall9(textValue4, numberValue8, numberValue9)
  cmgCall9 = FreezeEntityPosition
  textValue4 = dataTable2
  textValue4 = textValue4[arg1]
  textValue4 = textValue4.crate
  numberValue8 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall9(textValue4, numberValue8)
  cmgCall9 = SetModelAsNoLongerNeeded
  textValue4 = 772559902
  cmgCall9(textValue4)
  cmgCall9 = AddBlipForEntity
  textValue4 = dataTable2
  textValue4 = textValue4[arg1]
  textValue4 = textValue4.crate
  -- Beginner: result below is blipHandle.
  cmgCall9 = cmgCall9(textValue4)
  textValue4 = SetBlipSprite
  numberValue8 = cmgCall9
  numberValue9 = 501
  textValue4(numberValue8, numberValue9)
  textValue4 = SetBlipColour
  numberValue8 = cmgCall9
  numberValue9 = 2
  textValue4(numberValue8, numberValue9)
  textValue4 = GetSoundId
  -- Beginner: result below is soundHandle.
  textValue4 = textValue4()
  textValue3 = textValue4
  textValue4 = PlaySoundFromEntity
  numberValue8 = textValue3
  numberValue9 = "Crate_Beeps"
  coords2 = dataTable2
  coords2 = coords2[arg1]
  coords2 = coords2.crate
  vector3Builder = "MP_CRATE_DROP_SOUNDS"
  cmgCall3 = true
  mathHelper = 0
  textValue4(numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper)
  if arg4 then
    return
  end
  if arg3 then
    textValue4 = CMG
    textValue4 = textValue4.createRedzone
    numberValue8 = arg1
    numberValue9 = arg2
    coords2 = 50.0
    textValue4(numberValue8, numberValue9, coords2)
  else
    textValue4 = CMG
    textValue4 = textValue4.createRedzone
    numberValue8 = arg1
    numberValue9 = arg2
    coords2 = 200.0
    textValue4(numberValue8, numberValue9, coords2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cda5d18db2".
eventRegistration(textValue, vector3Builder2)
eventRegistration = RegisterNetEvent
textValue = "5da2ae475e"
-- Beginner: this function handles network event "5da2ae475e".
function vector3Builder2(arg1)
  local arg2, arg3, arg4
  arg2 = SetTimeout
  arg3 = 300000
  -- Beginner: this function handles network event "5da2ae475e".
  function arg4()
    local cmgCall2, workValue10, workValue12
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.deleteRedzone
    workValue10 = arg1
    cmgCall2(workValue10)
    cmgCall2 = RemoveBlip
    workValue12 = arg1
    workValue10 = dataTable
    workValue10 = workValue10[workValue12]
    cmgCall2(workValue10)
    workValue10 = arg1
    cmgCall2 = dataTable3
    cmgCall2[workValue10] = nil
  end
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5da2ae475e".
eventRegistration(textValue, vector3Builder2)
eventRegistration = {}
textValue = 0
vector3Builder2 = vector3
flag3 = -1712.413
flag4 = 8867.743
numberValue = -5.004937
vector3Builder2 = vector3Builder2(flag3, flag4, numberValue)
flag3 = false
flag4 = true
function numberValue(arg1)
  local arg2
  arg2 = cmgCall.modelReplacements
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = arg1
  end
  return arg2
end
function workValue3()
  local arg1, arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8
  arg1 = true
  flag3 = arg1
  arg1 = Citizen
  arg1 = arg1.CreateThreadNow
  function arg2()
    local cmgCall2, workValue10, workValue12, workValue13, cmgCall8, flag17, flag18, flag19
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.loadModel
    workValue10 = -2079670599
    -- Beginner: Request/load a GTA model before spawning or applying it.
    cmgCall2(workValue10)
    cmgCall2 = CreateObjectNoOffset
    workValue10 = -2079670599
    workValue12 = textValue5.x
    workValue13 = textValue5.y
    cmgCall8 = textValue5.z
    flag17 = false
    flag18 = false
    flag19 = false
    -- Beginner: result below is objectEntity.
    cmgCall2 = cmgCall2(workValue10, workValue12, workValue13, cmgCall8, flag17, flag18, flag19)
    textValue = cmgCall2
    cmgCall2 = FreezeEntityPosition
    workValue10 = textValue
    workValue12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall2(workValue10, workValue12)
    cmgCall2 = table
    cmgCall2 = cmgCall2.insert
    workValue10 = eventRegistration
    workValue12 = textValue
    cmgCall2(workValue10, workValue12)
  end
  arg1(arg2)
  arg1 = pairs
  arg2 = cmgCall.entityDefs
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for coords, cmgCall9 in arg1, arg2, arg3, arg4 do
    textValue4 = Citizen
    textValue4 = textValue4.CreateThreadNow
    function numberValue8()
      local cmgCall2, workValue10, workValue12, workValue13, cmgCall8, flag17, flag18, flag19, workValue15, flag20, flag, flag2, workValue, workValue2, cmgCall6, workValue5, workValue7, flag6, workValue9, flag9, flag11, flag13
      cmgCall2 = numberValue
      workValue10 = cmgCall9
      workValue10 = workValue10[1]
      cmgCall2 = cmgCall2(workValue10)
      workValue10 = cmgCall9
      workValue10 = workValue10[2]
      workValue12 = vector3Builder2
      workValue10 = workValue10 - workValue12
      workValue12 = textValue5
      workValue10 = workValue10 + workValue12
      workValue12 = inv
      workValue13 = cmgCall9
      workValue13 = workValue13[3]
      workValue12 = workValue12(workValue13)
      workValue13 = cmgCall9
      workValue13 = workValue13[4]
      workValue13 = 1572864 == workValue13
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.loadModel
      flag17 = cmgCall2
      -- Beginner: Request/load a GTA model before spawning or applying it.
      cmgCall8(flag17)
      cmgCall8 = flag3
      if cmgCall8 then
        cmgCall8 = CreateObjectNoOffset
        flag17 = cmgCall2
        flag18 = workValue10.x
        flag19 = workValue10.y
        workValue15 = workValue10.z
        flag20 = false
        flag = false
        flag2 = true
        -- Beginner: result below is objectEntity.
        cmgCall8 = cmgCall8(flag17, flag18, flag19, workValue15, flag20, flag, flag2)
        flag17 = SetModelAsNoLongerNeeded
        flag18 = cmgCall2
        flag17(flag18)
        flag17 = SetEntityQuaternion
        flag18 = cmgCall8
        flag19 = workValue12.x
        workValue15 = workValue12.y
        flag20 = workValue12.z
        flag = workValue12.w
        flag17(flag18, flag19, workValue15, flag20, flag)
        flag17 = cmgCall.doorModels
        flag17 = flag17[cmgCall2]
        if not flag17 then
          flag17 = FreezeEntityPosition
          flag18 = cmgCall8
          flag19 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          flag17(flag18, flag19)
        end
        flag17 = SetEntityLodDist
        flag18 = cmgCall8
        flag19 = 1500
        flag17(flag18, flag19)
        flag17 = table
        flag17 = flag17.insert
        flag18 = eventRegistration
        flag19 = cmgCall8
        flag17(flag18, flag19)
      end
      if workValue13 then
        cmgCall8 = cmgCall.mloEntityDefs
        cmgCall8 = cmgCall8[cmgCall2]
        flag17 = pairs
        flag18 = cmgCall8
        flag17, flag18, flag19, workValue15 = flag17(flag18)
        for flag20, flag in flag17, flag18, flag19, workValue15 do
          flag2 = numberValue
          workValue = flag[1]
          flag2 = flag2(workValue)
          workValue = flag[2]
          workValue = workValue + workValue10
          workValue2 = inv
          cmgCall6 = flag[3]
          workValue2 = workValue2(cmgCall6)
          cmgCall6 = CMG
          cmgCall6 = cmgCall6.loadModel
          workValue5 = flag2
          -- Beginner: Request/load a GTA model before spawning or applying it.
          cmgCall6(workValue5)
          cmgCall6 = flag3
          if cmgCall6 then
            cmgCall6 = CreateObjectNoOffset
            workValue5 = flag2
            workValue7 = workValue.x
            flag6 = workValue.y
            workValue9 = workValue.z
            flag9 = false
            flag11 = false
            flag13 = true
            -- Beginner: result below is objectEntity.
            cmgCall6 = cmgCall6(workValue5, workValue7, flag6, workValue9, flag9, flag11, flag13)
            workValue5 = SetModelAsNoLongerNeeded
            workValue7 = flag2
            workValue5(workValue7)
            workValue5 = SetEntityQuaternion
            workValue7 = cmgCall6
            flag6 = workValue2.x
            workValue9 = workValue2.y
            flag9 = workValue2.z
            flag11 = workValue2.w
            workValue5(workValue7, flag6, workValue9, flag9, flag11)
            workValue5 = cmgCall.doorModels
            workValue5 = workValue5[flag2]
            if not workValue5 then
              workValue5 = FreezeEntityPosition
              workValue7 = cmgCall6
              flag6 = true
              -- Beginner: Freeze or unfreeze an entity in place.
              workValue5(workValue7, flag6)
            end
            workValue5 = SetEntityLodDist
            workValue7 = cmgCall6
            flag6 = 1500
            workValue5(workValue7, flag6)
            workValue5 = table
            workValue5 = workValue5.insert
            workValue7 = eventRegistration
            flag6 = cmgCall6
            workValue5(workValue7, flag6)
          end
        end
      end
    end
    textValue4(numberValue8)
  end
end
function workValue6()
  local arg1, arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8
  arg1 = false
  flag3 = arg1
  arg1 = pairs
  arg2 = eventRegistration
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for coords, cmgCall9 in arg1, arg2, arg3, arg4 do
    textValue4 = DeleteEntity
    numberValue8 = cmgCall9
    -- Beginner: Delete a GTA entity.
    textValue4(numberValue8)
  end
  arg1 = 0
  textValue = arg1
end
function workValue8()
  local arg1, arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16
  arg1 = GetPedConfigFlag
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 388
  arg4 = false
  arg1 = arg1(arg2, arg3, arg4)
  if arg1 then
    arg1 = IsPedClimbing
    arg2 = PlayerPedId
    arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16 = arg2()
    arg1 = arg1(arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16)
  end
  arg2 = not arg1
  arg3 = textValue
  if 0 ~= arg3 then
    arg3 = flag4
    if arg3 ~= arg2 then
      arg3 = SetEntityCollision
      arg4 = textValue
      coords = arg2
      cmgCall9 = arg2
      arg3(arg4, coords, cmgCall9)
      flag4 = arg2
    end
  end
  arg3 = table
  arg3 = arg3.count
  arg4 = dataTable3
  -- Beginner: result below is count.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg3 = DrawMarker
  arg4 = 1
  coords = textValue5.x
  cmgCall9 = textValue5.y
  textValue4 = textValue5.z
  numberValue8 = 0.0
  numberValue9 = 0.0
  coords2 = 0.0
  vector3Builder = 0.0
  cmgCall3 = 0.0
  mathHelper = 0.0
  cmgCall4 = 200.0
  cmgCall5 = 200.0
  workValue4 = 6000.0
  numberValue2 = 255
  flag5 = 0
  flag7 = 0
  flag8 = 25
  flag10 = false
  flag12 = false
  flag14 = 2
  flag15 = false
  numberValue3 = nil
  numberValue4 = nil
  flag16 = false
  arg3(arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2, flag5, flag7, flag8, flag10, flag12, flag14, flag15, numberValue3, numberValue4, flag16)
end
cmgCall7 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function textValue2()
  local arg1, arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = GetConvarInt
  arg2 = "cmg_rigindex"
  arg3 = 0
  arg1 = arg1(arg2, arg3)
  arg2 = assert
  arg3 = 0 ~= arg1
  arg4 = "Unable to fetch oil rig position from server"
  arg2(arg3, arg4)
  arg2 = cmgCall.spawnLocations
  arg2 = arg2[arg1]
  textValue5 = arg2
  arg2 = CMG
  arg2 = arg2.createArea
  arg3 = "oilrig"
  arg4 = textValue5
  coords = 1000.0
  cmgCall9 = 1500.0
  textValue4 = workValue3
  numberValue8 = workValue6
  numberValue9 = workValue8
  coords2 = {}
  -- Beginner: Create an interaction area around a world position.
  arg2(arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2)
  arg2 = CMG
  arg2 = arg2.createGarage
  arg3 = "VIP Helicopters"
  arg4 = textValue5
  coords = vector3
  cmgCall9 = -24.09967
  textValue4 = 9.443848
  numberValue8 = 40.603668
  coords = coords(cmgCall9, textValue4, numberValue8)
  arg4 = arg4 + coords
  coords = false
  arg2(arg3, arg4, coords)
  arg2 = CMG
  arg2 = arg2.createGarage
  arg3 = "Standard Boats"
  arg4 = textValue5
  coords = vector3
  cmgCall9 = 40.875153
  textValue4 = 17.146973
  numberValue8 = 5.628222
  coords = coords(cmgCall9, textValue4, numberValue8)
  arg4 = arg4 + coords
  coords = false
  arg2(arg3, arg4, coords)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall7(textValue2)
cmgCall7 = AddEventHandler
textValue2 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function workValue11(arg1)
  local arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    arg3 = dataTable2
    arg2, arg3, arg4, coords = arg2(arg3)
    for cmgCall9, textValue4 in arg2, arg3, arg4, coords do
      numberValue8 = textValue4.crate
      if numberValue8 then
        numberValue8 = DoesEntityExist
        numberValue9 = textValue4.crate
        numberValue8 = numberValue8(numberValue9)
        if numberValue8 then
          numberValue8 = DeleteEntity
          numberValue9 = textValue4.crate
          -- Beginner: Delete a GTA entity.
          numberValue8(numberValue9)
        end
      end
      numberValue8 = textValue4.parachute
      if numberValue8 then
        numberValue8 = DoesEntityExist
        numberValue9 = textValue4.parachute
        numberValue8 = numberValue8(numberValue9)
        if numberValue8 then
          numberValue8 = DeleteEntity
          numberValue9 = textValue4.parachute
          numberValue8(numberValue9)
        end
      end
      numberValue8 = CMG
      numberValue8 = numberValue8.deleteRedzone
      numberValue9 = cmgCall9
      numberValue8(numberValue9)
    end
    arg2 = textValue3
    if arg2 then
      arg2 = StopSound
      arg3 = textValue3
      arg2(arg3)
      arg2 = ReleaseSoundId
      arg3 = textValue3
      arg2(arg3)
    end
    arg2 = workValue6
    arg2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall7(textValue2, workValue11)
cmgCall7 = CMG
function textValue2()
  local arg1, arg2
  arg1 = textValue5
  return arg1
end
cmgCall7.getOilRigCoords = textValue2
cmgCall7 = AddEventHandler
textValue2 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.
function workValue11(arg1)
  local arg2, arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2
  arg2 = pairs
  arg3 = dataTable
  arg2, arg3, arg4, coords = arg2(arg3)
  for cmgCall9, textValue4 in arg2, arg3, arg4, coords do
    numberValue8 = textValue6
    numberValue9 = arg1
    coords2 = textValue4
    numberValue8(numberValue9, coords2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
cmgCall7(textValue2, workValue11)
cmgCall7 = RegisterNetEvent
textValue2 = "47e16a3b97"
-- Beginner: this function handles network event "47e16a3b97".
function workValue11(arg1, arg2)
  local arg3, arg4, coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = GetPlayerServerId
  coords = PlayerId
  coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2 = coords()
  -- Beginner: result below is serverId.
  arg4 = arg4(coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2)
  if arg1 == arg4 then
    arg4 = "anim@heists@load_box"
    coords = "lift_box"
    cmgCall9 = CMG
    cmgCall9 = cmgCall9.loadAnimDict
    textValue4 = arg4
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgCall9(textValue4)
    cmgCall9 = TaskPlayAnim
    textValue4 = arg3
    numberValue8 = arg4
    numberValue9 = coords
    coords2 = 3.0
    vector3Builder = 1.0
    cmgCall3 = -1
    mathHelper = 1
    cmgCall4 = 0
    cmgCall5 = false
    workValue4 = false
    numberValue2 = false
    -- Beginner: Play an animation on a ped.
    cmgCall9(textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4, numberValue2)
    cmgCall9 = Wait
    textValue4 = 1200
    cmgCall9(textValue4)
    cmgCall9 = ClearPedTasks
    textValue4 = arg3
    cmgCall9(textValue4)
  else
    arg4 = Wait
    coords = 1200
    arg4(coords)
  end
  arg4 = UseParticleFxAssetNextCall
  coords = "core"
  arg4(coords)
  arg4 = StartParticleFxLoopedAtCoord
  coords = "exp_grd_flare"
  cmgCall9 = arg2.x
  textValue4 = arg2.y
  numberValue8 = arg2.z
  numberValue8 = numberValue8 - 1.0
  numberValue9 = 0.0
  coords2 = 0.0
  vector3Builder = 0.0
  cmgCall3 = 1.0
  mathHelper = false
  cmgCall4 = false
  cmgCall5 = false
  workValue4 = false
  arg4 = arg4(coords, cmgCall9, textValue4, numberValue8, numberValue9, coords2, vector3Builder, cmgCall3, mathHelper, cmgCall4, cmgCall5, workValue4)
  coords = Wait
  cmgCall9 = 60000
  coords(cmgCall9)
  coords = StopParticleFxLooped
  cmgCall9 = arg4
  textValue4 = false
  coords(cmgCall9, textValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "47e16a3b97".
cmgCall7(textValue2, workValue11)