--[[
    LEVEL 1 BEGINNER GUIDE - Nitro

    Client-side vehicle nitro handling.

    The server owns the saved nitro amount. This client:
      1. Detects when the player is driving a nitro-equipped vehicle.
      2. Lets the driver hold sprint/shift to use nitro.
      3. Draws the nitro percentage while driving.
      4. Plays boost, exhaust flame, trail, and purge effects.
      5. Reports the amount used back to the server when the driver exits.
]]

local nitroByVehicleId = {}
local activeNitroEffectsByVehicle = {}

local isDrivingNitroVehicle = false
local activeVehicleId = nil
local exhaustEffectThrottled = false

local NITRO_TEXT_COLOUR = { 219, 105, 97, 255 }
local NITRO_TEXT_X = 0.9
local NITRO_TEXT_Y = 0.92
local NITRO_TEXT_SCALE = 0.5
local NITRO_TEXT_FONT = 4

local EXHAUST_BONES = {
  "exhaust",
  "exhaust_2",
  "exhaust_3",
  "exhaust_4"
}

local BACKFIRE_EFFECT = "veh_backfire"
local BACKFIRE_ASSET = "core"
local BACKFIRE_SCALE = 2.4

local PURGE_BONES = {
  "overheat"
}
local PURGE_EFFECT = "ent_sht_steam"
local PURGE_ASSET = "core"
local PURGE_SCALE = 0.4

local function getDrivenVehicleWithNitro()
  local playerPed = CMG.getPlayerPed()
  local vehicle = GetVehiclePedIsIn(playerPed, false)

  if vehicle == 0 or GetPedInVehicleSeat(vehicle, -1) ~= playerPed then
    return nil, nil
  end

  local vehicleOwnerId = tCMG.getVehicleInfos(vehicle)
  local vehicleId = DecorGetInt(vehicle, "0a6cf607ed")

  if vehicleOwnerId ~= CMG.getClientUserId() or vehicleId <= 0 or not nitroByVehicleId[vehicleId] then
    return nil, nil
  end

  return vehicle, vehicleId
end

local function updateActiveNitroVehicle()
  local _, vehicleId = getDrivenVehicleWithNitro()

  if not vehicleId or isDrivingNitroVehicle then
    return
  end

  local startingNitroAmount = nitroByVehicleId[vehicleId]

  activeVehicleId = vehicleId
  isDrivingNitroVehicle = true

  Citizen.CreateThread(function()
    while GetVehiclePedIsIn(CMG.getPlayerPed(), false) ~= 0 do
      Wait(1000)
    end

    isDrivingNitroVehicle = false

    local usedNitroAmount = startingNitroAmount - nitroByVehicleId[vehicleId]
    TriggerServerEvent("7ba632fd51", vehicleId, -usedNitroAmount)
  end)
end

CMG.createThreadOnTick(updateActiveNitroVehicle, "Vehicle Nitro")

local function startTrailEffect(vehicle, boneName)
  local boneIndex = GetEntityBoneIndexByName(vehicle, boneName)

  CMG.loadPtfx("core")
  UseParticleFxAsset("core")

  local effect = StartParticleFxLoopedOnEntityBone(
    "veh_light_red_trail",
    vehicle,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    boneIndex,
    1.0,
    false,
    false,
    false
  )

  SetParticleFxLoopedEvolution(effect, "speed", 1.0, false)
  RemoveNamedPtfxAsset("core")

  return effect
end

local function startPurgeEffect(vehicle, x, y, z, rotX, rotY, rotZ)
  CMG.loadPtfx(PURGE_ASSET)
  UseParticleFxAsset(PURGE_ASSET)

  local effect = StartParticleFxLoopedOnEntity(
    PURGE_EFFECT,
    vehicle,
    x,
    y,
    z,
    rotX,
    rotY,
    rotZ,
    0.5,
    false,
    false,
    false
  )

  RemoveNamedPtfxAsset(PURGE_ASSET)

  return effect
end

local function ensureNitroEffects(vehicle)
  if activeNitroEffectsByVehicle[vehicle] then
    return
  end

  local effects = {
    leftTrail = startTrailEffect(vehicle, "taillight_l"),
    rightTrail = startTrailEffect(vehicle, "taillight_r"),
    purge = {}
  }

  local bonnetBone = GetEntityBoneIndexByName(vehicle, "bonnet")
  local bonnetCoords = GetWorldPositionOfEntityBone(vehicle, bonnetBone)
  local bonnetOffset = GetOffsetFromEntityGivenWorldCoords(vehicle, bonnetCoords.x, bonnetCoords.y, bonnetCoords.z)

  for _ = 0, 3 do
    table.insert(effects.purge, startPurgeEffect(vehicle, bonnetOffset.x - 0.5, bonnetOffset.y + 0.05, bonnetOffset.z, 40.0, -20.0, 0.0))
    table.insert(effects.purge, startPurgeEffect(vehicle, bonnetOffset.x + 0.5, bonnetOffset.y + 0.05, bonnetOffset.z, 40.0, 20.0, 0.0))
  end

  activeNitroEffectsByVehicle[vehicle] = effects
end

local function fadeAndStopEffect(effect)
  Citizen.CreateThread(function()
    local endTime = GetGameTimer() + 500

    while endTime > GetGameTimer() do
      local remainingRatio = (endTime - GetGameTimer()) / 500
      SetParticleFxLoopedScale(effect, remainingRatio)
      SetParticleFxLoopedAlpha(effect, remainingRatio)
      Citizen.Wait(0)
    end

    StopParticleFxLooped(effect, false)
  end)
end

local function stopNitroEffects(vehicle)
  local effects = activeNitroEffectsByVehicle[vehicle]
  if not effects then
    return
  end

  fadeAndStopEffect(effects.leftTrail)
  fadeAndStopEffect(effects.rightTrail)

  for _, purgeEffect in pairs(effects.purge) do
    StopParticleFxLooped(purgeEffect, false)
  end

  activeNitroEffectsByVehicle[vehicle] = nil
end

local function applyNitroPower(vehicle)
  if IsVehicleStopped(vehicle) then
    return
  end

  local vehicleModel = GetEntityModel(vehicle)
  local currentSpeed = GetEntitySpeed(vehicle)
  local estimatedMaxSpeed = GetVehicleModelEstimatedMaxSpeed(vehicleModel)

  SetVehicleCheatPowerIncrease(vehicle, 4.0 * estimatedMaxSpeed / currentSpeed)
end

function CMG.playVehicleFlameExhaustEffect(vehicle)
  CMG.loadPtfx(BACKFIRE_ASSET)

  for _, exhaustBone in pairs(EXHAUST_BONES) do
    UseParticleFxAsset(BACKFIRE_ASSET)

    local effect = StartParticleFxLoopedOnEntityBone(
      BACKFIRE_EFFECT,
      vehicle,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      GetEntityBoneIndexByName(vehicle, exhaustBone),
      BACKFIRE_SCALE,
      false,
      false,
      false
    )

    StopParticleFxLooped(effect, true)
  end
end

local function playPurgeBurst(vehicle)
  CMG.loadPtfx(PURGE_ASSET)

  for _, purgeBone in pairs(PURGE_BONES) do
    UseParticleFxAsset(PURGE_ASSET)

    local effect = StartParticleFxLoopedOnEntityBone(
      PURGE_EFFECT,
      vehicle,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      GetEntityBoneIndexByName(vehicle, purgeBone),
      PURGE_SCALE,
      false,
      false,
      false
    )

    StopParticleFxLooped(effect, true)
  end
end

local function setBoostActive(vehicle)
  SetVehicleBoostActive(vehicle, true)
end

local function setBoostInactive(vehicle)
  SetVehicleBoostActive(vehicle, false)
end

local function resetVehicleBoost(vehicle)
  SetVehicleCheatPowerIncrease(vehicle, 1.0)
  setBoostInactive(vehicle)
end

local function drawAndHandleNitro()
  if not isDrivingNitroVehicle or not activeVehicleId then
    return
  end

  local nitroAmount = nitroByVehicleId[activeVehicleId]
  if not nitroAmount or nitroAmount <= 0 then
    return
  end

  if nitroAmount < 0 then
    nitroAmount = 0
  end

  CMG.DrawText(
    NITRO_TEXT_X,
    NITRO_TEXT_Y,
    "Nitro: " .. math.floor(tonumber(nitroAmount) or 0) .. "%",
    NITRO_TEXT_SCALE,
    NITRO_TEXT_FONT,
    1,
    NITRO_TEXT_COLOUR,
    true
  )

  local vehicle = GetVehiclePedIsIn(CMG.getPlayerPed(), false)

  if IsControlPressed(0, 21) then
    local nextNitroAmount = nitroByVehicleId[activeVehicleId] - 0.05

    if nextNitroAmount >= 0 then
      ensureNitroEffects(vehicle)
      applyNitroPower(vehicle)
      AnimpostfxPlay("RaceTurbo", 0, false)

      nitroByVehicleId[activeVehicleId] = nextNitroAmount

      if not exhaustEffectThrottled then
        exhaustEffectThrottled = true

        CMG.playVehicleFlameExhaustEffect(vehicle)
        playPurgeBurst(vehicle)
        setBoostActive(vehicle)

        SetTimeout(100, function()
          exhaustEffectThrottled = false
        end)
      end
    else
      nitroByVehicleId[activeVehicleId] = 0
      StopGameplayCamShaking(true)
      resetVehicleBoost(vehicle)
      AnimpostfxStop("RaceTurbo")
    end
  else
    resetVehicleBoost(vehicle)
    stopNitroEffects(vehicle)
  end
end

CMG.createThreadOnTick(drawAndHandleNitro, "Vehicle Nitro Text")

function CMG.setVehicleIdNitro(vehicleId, nitroAmount)
  nitroByVehicleId[vehicleId] = nitroAmount

  if nitroByVehicleId[vehicleId] > 100 then
    nitroByVehicleId[vehicleId] = 100
  end
end
