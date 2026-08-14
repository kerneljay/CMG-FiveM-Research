--[[
    LEVEL 1 BEGINNER GUIDE - Realistic Vehicle Failure
    ==================================================

    File: cmg/prod/client/vehicles/cl_realisticvehiclefailure.lua
    Runs as: Client - runs on each player's FiveM client.
    Purpose: makes vehicle damage affect how vehicles drive and repair.

    Big idea:
      1. Watch the vehicle the player is driving.
      2. Read engine, body, and petrol tank health.
      3. Convert new damage into weaker handling, torque, and health.
      4. Add mechanic stations where players can repair their vehicle.

    FiveM words used here:
      * ped = a GTA character. The player and mechanic NPCs are both peds.
      * vehicle = a GTA vehicle entity.
      * native = a FiveM/GTA function like GetVehicleEngineHealth().
      * thread = code that keeps checking over time; Wait() prevents freezing.

    Quick map of this file:
      * Public CMG functions: CMG.isVehicleFailureDisabled(), CMG.setVehicleFailureDisabled()
      * Background threads: vehicle damage loop, anti-flip loop, mechanic station loop
      * Server event sent: repair payment/request event near mechanic stations

    Edit the config table first when changing damage strength. The helper
    functions below mostly translate that config into GTA native calls.
]]

local config = {
  deformationMultiplier = -1,
  deformationExponent = 0.7,
  collisionDamageExponent = 0.6,
  damageFactorEngine = 10.0,
  damageFactorBody = 10.0,
  damageFactorPetrolTank = 64.0,
  engineDamageExponent = 0.6,
  weaponsDamageMultiplier = 1.0,
  degradingHealthSpeedFactor = 10,
  cascadingFailureSpeedFactor = 15.0,
  degradingFailureThreshold = 0.0,
  cascadingFailureThreshold = 0.0,
  engineSafeGuard = 150.0,
  torqueMultiplierEnabled = true,
  limpMode = true,
  limpModeMultiplier = 0.005,
  preventVehicleFlip = true,
  sundayDriver = false,
  sundayDriverAcceleratorCurve = 7.5,
  sundayDriverBrakeCurve = 5.0,
  displayBlips = true,
  compatibilityMode = false,
  randomTireBurstInterval = 0,
  chargeForRepairs = true,
  price = 1000.0,
  DamageMultiplier = 2.5,

  -- GTA vehicle classes use numbers. Each value changes how much damage that
  -- class takes. Example: class 7 takes 1.3x damage.
  classDamageMultiplier = {
    [0] = 1.0,
    [1] = 1.0,
    [2] = 1.0,
    [3] = 1.0,
    [4] = 1.0,
    [5] = 1.0,
    [6] = 1.0,
    [7] = 1.3,
    [8] = 0.25,
    [9] = 0.7,
    [10] = 0.5,
    [11] = 1.0,
    [12] = 1.0,
    [13] = 1.0,
    [14] = 1.0,
    [15] = 1.0,
    [16] = 1.0,
    [17] = 1.0,
    [18] = 0.75,
    [19] = 0.75,
    [20] = 1.0,
    [21] = 1.0,
    [22] = 1.0,
  }
}

local vehicleFailureDisabled = false

function CMG.isVehicleFailureDisabled()
  return vehicleFailureDisabled
end

function CMG.setVehicleFailureDisabled(disabled)
  vehicleFailureDisabled = disabled
end

local repairStations = {
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(1774.0, 3333.0, 41.0),
    pedPosition = vector4(1776.9522705078, 3327.7587890625, 41.433326721191, 312.74),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(1143.0, -776.0, 57.0),
    pedPosition = vector4(1151.2346191406, -778.63012695312, 57.598678588867, 58.28),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(2508.0, 4103.0, 38.0),
    pedPosition = vector4(2506.7048339844, 4097.9829101562, 38.706733703613, 2.37),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(2006.0, 3792.0, 32.0),
    pedPosition = vector4(2002.1617431641, 3796.1989746094, 32.180774688721, 282.57),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(484.0, -1316.0, 29.0),
    pedPosition = vector4(474.15823364258, -1313.6834716797, 29.195556640625, 252.28346252441),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-1408.65, -459.72, 34.49),
    pedPosition = vector4(-1402.3912353516, -452.58462524414, 34.469604492188, 206.92913818359),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(254.52, -1800.12, 27.1),
    pedPosition = vector4(262.70770263672, -1794.4088134766, 27.106201171875, 76.535430908203),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(288.0, -1730.0, 29.0),
    pedPosition = vector4(289.78021240234, -1721.8286132812, 29.263061523438, 195.5905456543),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(1910.0, 3730.35, 32.4),
    pedPosition = vector4(1917.5340576172, 3727.2790527344, 32.801513671875, 107.71653747559),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-29.16, -1679.95, 29.46),
    pedPosition = vector4(-34.378021240234, -1676.5186767578, 29.482055664062, 235.27558898926),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-198.12, -1381.97, 31.26),
    pedPosition = vector4(-195.50769042969, -1377.2307128906, 31.251342773438, 192.75592041016),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(258.0, 2594.0, 44.0),
    pedPosition = vector4(259.55130004883, 2586.1047363281, 44.9541206359861, 11.14),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-32.0, -1090.0, 26.0),
    pedPosition = vector4(-36.834205627441, -1088.4458007812, 26.422451019287, 248.74),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-200.0, -1298.0, 31.29),
    pedPosition = vector4(-196.32527160645, -1297.4505615234, 31.285034179688, 130.39370727539),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(903.0, 3563.0, 34.0),
    pedPosition = vector4(902.65588378906, 3566.1516113281, 33.794116973877, 110.31),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(434.85, 3577.52, 33.23),
    pedPosition = vector4(439.26593017578, 3571.8989257812, 33.22265625, 0.0),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(-394.34808349609, 6055.6342773438, 31.500127792358),
    pedPosition = vector4(-401.18240356445, 6058.4438476562, 31.487182617188, 232.44094848633),
  },
  {
    name = "Mechanic",
    blip = 402,
    radius = 5.0,
    position = vector3(161.84657287598, 6405.3413085938, 31.1448802948),
    pedPosition = vector4(164.72967529297, 6412.1142578125, 31.150146484375, 172.91339111328),
  },
}

local currentVehicle = nil
local lastVehicle = nil
local vehicleHandlingChanged = false

local originalCollisionDamageMultiplier = 0.0
local originalDeformationDamageMultiplier = 0.0
local originalEngineDamageMultiplier = 0.0
local originalBrakeForce = 1.0

local isBrakingForward = false
local isBrakingReverse = false

local lastEngineHealth = 1000.0
local newEngineHealth = 1000.0
local lastBodyHealth = 1000.0
local newBodyHealth = 1000.0
local lastPetrolTankHealth = 1000.0
local newPetrolTankHealth = 1000.0

local randomTireBurstRollMax = config.randomTireBurstInterval * 1200
local nextRandomTireBurstRoll = nil

math.randomseed(GetGameTimer())

if config.randomTireBurstInterval ~= 0 then
  nextRandomTireBurstRoll = math.random(randomTireBurstRollMax)
end

local function playerIsDrivingDamageableVehicle()
  local playerPed = CMG.getPlayerPed()
  currentVehicle = GetVehiclePedIsIn(playerPed, false)

  if not IsPedInAnyVehicle(playerPed, false) then
    return false
  end

  if GetPedInVehicleSeat(currentVehicle, -1) ~= playerPed then
    return false
  end

  local vehicleClass = GetVehicleClass(currentVehicle)

  -- Do not run this system on bicycles, helicopters, planes, or trains.
  return vehicleClass ~= 13 and vehicleClass ~= 15 and vehicleClass ~= 16 and vehicleClass ~= 21
end

local function curveInput(value, inputMin, inputMax, outputMin, outputMax, curve)
  curve = math.max(-10.0, math.min(10.0, curve))

  local exponent = 10.0 ^ (curve * -0.1)
  value = math.max(inputMin, math.min(inputMax, value))

  if inputMax < inputMin then
    return 0
  end

  local outputRange
  local reversed = false

  if outputMin < outputMax then
    outputRange = outputMax - outputMin
  else
    outputRange = outputMin - outputMax
    reversed = true
  end

  local inputRange = inputMax - inputMin
  local inputPercent = (value - inputMin) / inputRange
  local outputChange = (inputPercent ^ exponent) * outputRange

  if reversed then
    return outputMin - outputChange
  end

  return outputMin + outputChange
end

local function burstRandomTireIfNeeded()
  if math.random(randomTireBurstRollMax) ~= nextRandomTireBurstRoll then
    return
  end

  if GetVehicleTyresCanBurst(currentVehicle) == false then
    return
  end

  local wheelCount = GetVehicleNumberOfWheels(currentVehicle)
  local tyreIndex

  if wheelCount == 2 then
    tyreIndex = (math.random(2) - 1) * 4
  elseif wheelCount == 4 then
    tyreIndex = math.random(4) - 1

    if tyreIndex > 1 then
      tyreIndex = tyreIndex + 2
    end
  elseif wheelCount == 6 then
    tyreIndex = math.random(6) - 1
  else
    tyreIndex = 0
  end

  SetVehicleTyreBurst(currentVehicle, tyreIndex, false, 1000.0)
  nextRandomTireBurstRoll = math.random(randomTireBurstRollMax)
end

local function applyDrivingLimiters()
  if vehicleFailureDisabled or not vehicleHandlingChanged or not currentVehicle or currentVehicle == 0 then
    return
  end

  local powerMultiplier = 1.0

  if config.torqueMultiplierEnabled and newEngineHealth < 900 then
    powerMultiplier = (newEngineHealth + 200.0) / 1100
  end

  if config.sundayDriver and GetVehicleClass(currentVehicle) ~= 14 then
    local accelerator = GetControlValue(2, 71)
    local brake = GetControlValue(2, 72)
    local forwardSpeed = GetEntitySpeedVector(currentVehicle, true).y
    local brakeForce = originalBrakeForce

    if forwardSpeed >= 1.0 then
      if accelerator > 127 then
        powerMultiplier = powerMultiplier * curveInput(
          accelerator,
          127.0,
          254.0,
          0.1,
          1.0,
          10.0 - (config.sundayDriverAcceleratorCurve * 2.0)
        )
      end

      if brake > 127 then
        isBrakingForward = true
        brakeForce = curveInput(
          brake,
          127.0,
          254.0,
          0.01,
          originalBrakeForce,
          10.0 - (config.sundayDriverBrakeCurve * 2.0)
        )
      end
    elseif forwardSpeed <= -1.0 then
      if brake > 127 then
        powerMultiplier = powerMultiplier * curveInput(
          brake,
          127.0,
          254.0,
          0.1,
          1.0,
          10.0 - (config.sundayDriverAcceleratorCurve * 2.0)
        )
      end

      if accelerator > 127 then
        isBrakingReverse = true
        brakeForce = curveInput(
          accelerator,
          127.0,
          254.0,
          0.01,
          originalBrakeForce,
          10.0 - (config.sundayDriverBrakeCurve * 2.0)
        )
      end
    elseif GetEntitySpeed(currentVehicle) < 1 then
      if isBrakingForward then
        DisableControlAction(2, 72, true)
        SetVehicleForwardSpeed(currentVehicle, forwardSpeed * 0.98)
        SetVehicleBrakeLights(currentVehicle, true)
      end

      if isBrakingReverse then
        DisableControlAction(2, 71, true)
        SetVehicleForwardSpeed(currentVehicle, forwardSpeed * 0.98)
        SetVehicleBrakeLights(currentVehicle, true)
      end

      if isBrakingForward and GetDisabledControlNormal(2, 72) == 0 then
        isBrakingForward = false
      end

      if isBrakingReverse and GetDisabledControlNormal(2, 71) == 0 then
        isBrakingReverse = false
      end
    end

    if brakeForce > originalBrakeForce - 0.02 then
      brakeForce = originalBrakeForce
    end

    SetVehicleHandlingFloat(currentVehicle, "CHandlingData", "fBrakeForce", brakeForce)
  end

  if config.limpMode == true and newEngineHealth < config.engineSafeGuard + 5 then
    powerMultiplier = config.limpModeMultiplier
  end

  SetVehicleCheatPowerIncrease(currentVehicle, powerMultiplier)
end

local function stopPlayerFromFlippingVehicle()
  if not config.preventVehicleFlip or vehicleFailureDisabled or not currentVehicle or currentVehicle == 0 then
    return
  end

  local roll = GetEntityRoll(currentVehicle)

  if (roll > 75.0 or roll < -75.0) and GetEntitySpeed(currentVehicle) < 2 then
    DisableControlAction(2, 59, true)
    DisableControlAction(2, 60, true)
  end
end

local function readVehicleHealth()
  local vehicleClass = GetVehicleClass(currentVehicle)

  local engineHealth = GetVehicleEngineHealth(currentVehicle)
  if engineHealth == 1000 then
    lastEngineHealth = 1000.0
  end
  newEngineHealth = engineHealth
  local engineDamage = (lastEngineHealth - engineHealth) * config.damageFactorEngine
  engineDamage = engineDamage * config.classDamageMultiplier[vehicleClass]

  local bodyHealth = GetVehicleBodyHealth(currentVehicle)
  if bodyHealth == 1000 then
    lastBodyHealth = 1000.0
  end
  newBodyHealth = bodyHealth
  local bodyDamage = (lastBodyHealth - bodyHealth) * config.damageFactorBody
  bodyDamage = bodyDamage * config.classDamageMultiplier[vehicleClass]

  local petrolTankHealth = GetVehiclePetrolTankHealth(currentVehicle)
  if config.compatibilityMode and petrolTankHealth < 1 then
    lastPetrolTankHealth = petrolTankHealth
  end
  if petrolTankHealth == 1000 then
    lastPetrolTankHealth = 1000.0
  end
  newPetrolTankHealth = petrolTankHealth
  local petrolTankDamage = (lastPetrolTankHealth - petrolTankHealth) * config.damageFactorPetrolTank
  petrolTankDamage = petrolTankDamage * config.classDamageMultiplier[vehicleClass]

  return engineHealth, bodyHealth, petrolTankHealth, engineDamage, bodyDamage, petrolTankDamage
end

local function makeVehicleUndriveableWhenNeeded(engineHealth)
  if engineHealth > config.engineSafeGuard + 1 then
    SetVehicleUndriveable(currentVehicle, false)
    return
  end

  if config.limpMode == false then
    SetVehicleUndriveable(currentVehicle, true)
  end
end

local function hasAnyDamage(engineHealth, bodyHealth, petrolTankHealth)
  return engineHealth ~= 1000.0 or bodyHealth ~= 1000.0 or petrolTankHealth ~= 1000.0
end

local function updateDamage(engineHealth, bodyHealth, petrolTankHealth, engineDamage, bodyDamage, petrolTankDamage)
  if not hasAnyDamage(engineHealth, bodyHealth, petrolTankHealth) then
    return
  end

  local damageToApply = math.max(engineDamage, bodyDamage, petrolTankDamage)
  local engineHealthAboveSafePoint = engineHealth - config.engineSafeGuard

  if damageToApply > engineHealthAboveSafePoint then
    damageToApply = damageToApply * 0.7
  end

  if damageToApply > engineHealth then
    damageToApply = engineHealth - (config.cascadingFailureThreshold / 5)
  end

  newEngineHealth = lastEngineHealth - damageToApply

  if newEngineHealth > config.cascadingFailureThreshold + 5
    and newEngineHealth < config.degradingFailureThreshold then
    newEngineHealth = newEngineHealth - (0.038 * config.degradingHealthSpeedFactor)
  end

  if newEngineHealth < config.cascadingFailureThreshold then
    newEngineHealth = newEngineHealth - (0.1 * config.cascadingFailureSpeedFactor)
  end

  if newEngineHealth < config.engineSafeGuard then
    newEngineHealth = config.engineSafeGuard
  end

  if config.compatibilityMode == false and petrolTankHealth < 750 then
    newPetrolTankHealth = 750.0
  end

  if newBodyHealth < 0 then
    newBodyHealth = 0.0
  end
end

local function changeVehicleHandlingForDamage()
  if CMG.isVehicleCarDevDamageDisabled(currentVehicle) then
    return
  end

  originalDeformationDamageMultiplier = GetVehicleHandlingFloat(
    currentVehicle,
    "CHandlingData",
    "fDeformationDamageMult"
  )
  originalBrakeForce = GetVehicleHandlingFloat(currentVehicle, "CHandlingData", "fBrakeForce")

  local deformationMultiplier = originalDeformationDamageMultiplier ^ config.deformationExponent

  if config.deformationMultiplier ~= -1 then
    SetVehicleHandlingFloat(
      currentVehicle,
      "CHandlingData",
      "fDeformationDamageMult",
      deformationMultiplier * config.deformationMultiplier
    )
  end

  if config.weaponsDamageMultiplier ~= -1 then
    SetVehicleHandlingFloat(
      currentVehicle,
      "CHandlingData",
      "fWeaponDamageMult",
      config.weaponsDamageMultiplier / config.damageFactorBody
    )
  end

  originalCollisionDamageMultiplier = GetVehicleHandlingFloat(
    currentVehicle,
    "CHandlingData",
    "fCollisionDamageMult"
  )
  SetVehicleHandlingFloat(
    currentVehicle,
    "CHandlingData",
    "fCollisionDamageMult",
    originalCollisionDamageMultiplier ^ config.collisionDamageExponent
  )

  originalEngineDamageMultiplier = GetVehicleHandlingFloat(currentVehicle, "CHandlingData", "fEngineDamageMult")
  SetVehicleHandlingFloat(
    currentVehicle,
    "CHandlingData",
    "fEngineDamageMult",
    originalEngineDamageMultiplier ^ config.engineDamageExponent
  )

  if newBodyHealth < config.cascadingFailureThreshold then
    newBodyHealth = config.cascadingFailureThreshold
  end

  vehicleHandlingChanged = true
end

local function writeVehicleHealth(engineHealth, bodyHealth, petrolTankHealth)
  if newEngineHealth ~= engineHealth then
    SetVehicleEngineHealth(currentVehicle, newEngineHealth)
  end

  if newBodyHealth ~= bodyHealth then
    SetVehicleBodyHealth(currentVehicle, newBodyHealth)
  end

  if newPetrolTankHealth ~= petrolTankHealth then
    SetVehiclePetrolTankHealth(currentVehicle, newPetrolTankHealth)
  end

  lastEngineHealth = newEngineHealth
  lastBodyHealth = newBodyHealth
  lastPetrolTankHealth = newPetrolTankHealth
  lastVehicle = currentVehicle
end

local function restoreVehicleHandling(vehicle)
  if vehicle == 0 then
    return
  end

  if config.deformationMultiplier ~= -1 then
    SetVehicleHandlingFloat(vehicle, "CHandlingData", "fDeformationDamageMult", originalDeformationDamageMultiplier)
  end

  SetVehicleHandlingFloat(vehicle, "CHandlingData", "fBrakeForce", originalBrakeForce)

  if config.weaponsDamageMultiplier ~= -1 then
    SetVehicleHandlingFloat(vehicle, "CHandlingData", "fWeaponDamageMult", config.weaponsDamageMultiplier)
  end

  SetVehicleHandlingFloat(vehicle, "CHandlingData", "fCollisionDamageMult", originalCollisionDamageMultiplier)
  SetVehicleHandlingFloat(vehicle, "CHandlingData", "fEngineDamageMult", originalEngineDamageMultiplier)
end

if config.torqueMultiplierEnabled or config.preventVehicleFlip or config.limpMode then
  Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)

      if config.torqueMultiplierEnabled or config.sundayDriver or config.limpMode then
        applyDrivingLimiters()
      end

      stopPlayerFromFlippingVehicle()
    end
  end)
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(50)

    local playerPed = CMG.getPlayerPed()

    if playerIsDrivingDamageableVehicle() and not vehicleFailureDisabled then
      local engineHealth, bodyHealth, petrolTankHealth, engineDamage, bodyDamage, petrolTankDamage = readVehicleHealth()

      makeVehicleUndriveableWhenNeeded(engineHealth)

      if currentVehicle ~= lastVehicle then
        vehicleHandlingChanged = false
      end

      if vehicleHandlingChanged then
        updateDamage(engineHealth, bodyHealth, petrolTankHealth, engineDamage, bodyDamage, petrolTankDamage)
      else
        changeVehicleHandlingForDamage()
      end

      writeVehicleHealth(engineHealth, bodyHealth, petrolTankHealth)

      if config.randomTireBurstInterval ~= 0 and GetEntitySpeed(currentVehicle) > 10 then
        burstRandomTireIfNeeded()
      end
    else
      if vehicleHandlingChanged then
        local previousVehicle = GetVehiclePedIsIn(playerPed, true)
        restoreVehicleHandling(previousVehicle)
      end

      vehicleHandlingChanged = false
    end
  end
end)

local function showHelpText(text)
  BeginTextCommandDisplayHelp("STRING")
  AddTextComponentSubstringPlayerName(text)
  EndTextCommandDisplayHelp(0, false, false, 0)
end

local function getVehicleHoodWorkPosition(vehicle)
  local vehicleCoords = GetEntityCoords(vehicle)
  local bonnetBoneIndex = GetEntityBoneIndexByName(vehicle, "bonnet")
  local bonnetCoords = nil

  if bonnetBoneIndex ~= -1 then
    local boneCoords = GetWorldPositionOfEntityBone(vehicle, bonnetBoneIndex)
    local distanceFromVehicleCentre = #(boneCoords - vehicleCoords)

    if distanceFromVehicleCentre > 0.75 and distanceFromVehicleCentre < 12.0 then
      bonnetCoords = boneCoords
    end
  end

  if not bonnetCoords then
    bonnetCoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 2.4, 0.35)
  end

  local forwardVector = GetEntityForwardVector(vehicle)

  return vector3(
    bonnetCoords.x + (forwardVector.x * 1.35),
    bonnetCoords.y + (forwardVector.y * 1.35),
    bonnetCoords.z + (forwardVector.z * 1.35)
  )
end

local function waitUntilPedIsNearPosition(ped, position, distance, timeoutMs)
  local startedAt = GetGameTimer()

  while GetGameTimer() - startedAt < timeoutMs do
    if not DoesEntityExist(ped) then
      return false
    end

    if #(GetEntityCoords(ped, true) - position) <= distance then
      return true
    end

    Citizen.Wait(0)
  end

  return #(GetEntityCoords(ped, true) - position) <= distance
end

local function walkPedToPosition(ped, position)
  ClearPedTasks(ped)
  SetPedKeepTask(ped, true)
  TaskFollowNavMeshToCoord(ped, position.x, position.y, position.z, 2.5, 35000, 1.4, false, 0.0)
end

local function walkPedToVehicle(ped, vehicle)
  ClearPedTasks(ped)
  SetPedKeepTask(ped, true)
  TaskGoToEntity(ped, vehicle, 22000, 3.0, 1.75, 0, 0)
end

local function playMechanicWorkScenarios(station, repairTimeMs)
  Citizen.CreateThread(function()
    local stepTime = repairTimeMs / 4

    Citizen.Wait(stepTime)
    TaskStartScenarioInPlace(station.ped, "WORLD_HUMAN_HAMMERING", 0, true)

    Citizen.Wait(stepTime)
    TaskStartScenarioInPlace(station.ped, "WORLD_HUMAN_WELDING", 0, true)

    Citizen.Wait(stepTime)
    TaskStartScenarioInPlace(station.ped, "CODE_HUMAN_MEDIC_TIME_OF_DEATH", 0, true)
  end)
end

local function getRepairSpeedMultiplier()
  local repairSpeedPercent = CMG.getMechanicRepairStationSpeedPercentClient()

  if type(repairSpeedPercent) == "number" and repairSpeedPercent >= 0 and repairSpeedPercent <= 50 then
    return 1 - (repairSpeedPercent / 100)
  end

  return 1.0
end

local function getRepairStoryWait(speedMultiplier)
  return math.max(1000, math.floor(11000 * speedMultiplier))
end

local function playRandomRepairStory(station, speedMultiplier)
  local story = math.random(1, 3)
  local waitTime = getRepairStoryWait(speedMultiplier)

  if story == 1 then
    playMechanicWorkScenarios(station, math.max(4000, math.floor(11000 * speedMultiplier)))
    notify("~g~Dave the mechanic is looking at your car.")
    Citizen.Wait(waitTime)
    notify("~g~Dave is working on your car.")
    return
  end

  if story == 2 then
    playMechanicWorkScenarios(station, math.max(4000, math.floor(55000 * speedMultiplier)))
    notify("~g~Stef the mechanic is looking at your car.")
    Citizen.Wait(waitTime)
    notify("~g~Stef looks confused.")
    Citizen.Wait(waitTime)
    notify("~g~Stef starts hitting things with a hammer.")
    Citizen.Wait(waitTime)
    notify("~g~Stef goes to look for help.")
    Citizen.Wait(waitTime)
    notify("~g~Stef's Manager comes back and starts working on your car.")
    Citizen.Wait(waitTime)
    notify("~g~The Manager is also hitting things with a hammer.")
    return
  end

  playMechanicWorkScenarios(station, math.max(4000, math.floor(33000 * speedMultiplier)))
  notify("~g~Rob the mechanic is looking at your car.")
  Citizen.Wait(waitTime)
  notify("~g~Rob yells for Dave to come look at it.")
  Citizen.Wait(waitTime)
  notify("~g~Just look at it.")
  Citizen.Wait(waitTime)
  notify("~g~Dave is working on your car.")
end

local function repairVehicleAtStation(station, vehicle)
  FreezeEntityPosition(vehicle, true)
  SetVehicleEngineOn(vehicle, false, true, false)

  local hoodWorkPosition = getVehicleHoodWorkPosition(vehicle)
  local mechanicStartPosition = GetEntityCoords(station.ped, true)

  walkPedToPosition(station.ped, hoodWorkPosition)

  if not waitUntilPedIsNearPosition(station.ped, hoodWorkPosition, 1.65, 36000) then
    walkPedToVehicle(station.ped, vehicle)
    waitUntilPedIsNearPosition(station.ped, hoodWorkPosition, 2.75, 22000)
  end

  SetPedKeepTask(station.ped, false)
  ClearPedTasks(station.ped)
  TaskLookAtEntity(station.ped, vehicle, -1, 2048, 3)

  Citizen.Wait(2500)

  CMG.loadAnimDict("missexile3")
  TaskPlayAnim(
    station.ped,
    "missexile3",
    "ex03_dingy_search_case_base_michael",
    1.0,
    8.0,
    -1,
    1,
    1.0,
    false,
    false,
    false
  )
  RemoveAnimDict("missexile3")

  Citizen.Wait(1000)
  SetVehicleDoorOpen(vehicle, 4, false, false)

  playRandomRepairStory(station, getRepairSpeedMultiplier())

  ClearPedTasksImmediately(station.ped)
  SetVehicleDoorShut(vehicle, 4, false)

  Citizen.Wait(1000)

  SetVehicleEngineHealth(vehicle, 9999)
  SetVehiclePetrolTankHealth(vehicle, 9999)
  CMG.setVehicleFixedPreservingFuel(vehicle)

  walkPedToPosition(station.ped, mechanicStartPosition)
  waitUntilPedIsNearPosition(station.ped, mechanicStartPosition, 1.35, 36000)

  SetPedKeepTask(station.ped, false)
  ClearPedTasks(station.ped)
  TaskLookAtEntity(station.ped, PlayerPedId(), -1, 2048, 3)

  station.inUse = false

  SetVehicleEngineOn(vehicle, true, false, false)
  FreezeEntityPosition(vehicle, false)

  TriggerServerEvent("cadd5c84c8")
end

local function spawnMechanicPed(station)
  local mechanicModel = 1142162924

  CMG.loadModel(mechanicModel)

  station.ped = CreatePed(
    0,
    mechanicModel,
    station.pedPosition.x,
    station.pedPosition.y,
    station.pedPosition.z,
    0.0,
    false,
    false
  )

  SetModelAsNoLongerNeeded(mechanicModel)
  SetEntityCanBeDamaged(station.ped, false)
  SetEntityCanBeDamagedByRelationshipGroup(station.ped, false, 1862763509)
  SetEntityInvincible(station.ped, true)
  SetPedCanRagdoll(station.ped, false)
  SetPedCanRagdollFromPlayerImpact(station.ped, false)
  SetBlockingOfNonTemporaryEvents(station.ped, true)
  SetEntityInvincible(station.ped, true)
end

local function deleteMechanicPed(station)
  DeleteEntity(station.ped)
  station.ped = nil
end

local function drawMechanicStation(station)
  if station.inUse or CMG.isInsideLsCustoms() then
    return
  end

  local playerVehicle = CMG.getPlayerVehicle()

  if playerVehicle ~= 0 then
    DrawMarker(
      1,
      station.position.x,
      station.position.y,
      station.position.z - 2.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      station.radius,
      station.radius,
      2.0,
      62,
      255,
      143,
      140,
      false,
      false,
      2,
      false,
      nil,
      nil,
      false
    )

    DrawMarker(
      36,
      station.position.x,
      station.position.y,
      station.position.z + 1.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      station.radius / 2.0,
      station.radius / 2.0,
      station.radius / 2.0,
      62,
      255,
      143,
      140,
      false,
      false,
      2,
      false,
      nil,
      nil,
      false
    )
  end

  if station.ped and GetScriptTaskStatus(station.ped, -875674219) == 7 then
    TaskTurnPedToFaceEntity(station.ped, PlayerPedId(), -1)
  end
end

local function greetPlayerAtRepairStation(station)
  PlayPedAmbientSpeechNative(station.ped, "GENERIC_HI_MALE", "SPEECH_PARAMS_FORCE")
end

local function clearRepairStationState(station)
  station.inUse = nil
end

local function handleRepairStationUse(station)
  local playerVehicle, playerIsDriver = CMG.getPlayerVehicle()

  if playerVehicle == 0 or not playerIsDriver or CMG.isInsideLsCustoms() then
    return
  end

  if station.inUse then
    FreezeEntityPosition(playerVehicle, true)
    SetVehicleEngineOn(playerVehicle, false, true, true)
    return
  end

  showHelpText("Press ~INPUT_PICKUP~ to have your vehicle repaired.")

  if not IsControlJustPressed(0, 38) then
    return
  end

  if GetEntitySpeed(playerVehicle) > 0.0 then
    notify("~r~You must be stationary to repair your vehicle.")
    return
  end

  station.inUse = true

  Citizen.CreateThreadNow(function()
    repairVehicleAtStation(station, playerVehicle)
  end)
end

Citizen.CreateThread(function()
  for stationIndex, station in pairs(repairStations) do
    tCMG.addBlip(
      station.position.x,
      station.position.y,
      station.position.z,
      station.blip,
      4,
      station.name,
      1.0
    )

    CMG.createArea(
      "mechanic_ped_" .. stationIndex,
      station.position,
      25.0,
      25.0,
      spawnMechanicPed,
      deleteMechanicPed,
      drawMechanicStation,
      station
    )

    CMG.createArea(
      "mechanic_vehicle_" .. stationIndex,
      station.position,
      station.radius,
      5.0,
      greetPlayerAtRepairStation,
      clearRepairStationState,
      handleRepairStationUse,
      station
    )
  end
end)
