--[[
    LEVEL 1 BEGINNER GUIDE - Vehicle Clamp
    ======================================

    File: cmg/prod/client/police/cl_clamp.lua
    Runs as: Client - runs on each player's FiveM client.
    Purpose: lets police clamp a nearby vehicle.

    Big idea:
      1. Find a nearby vehicle.
      2. Ask the server if clamping can start.
      3. Place a clamp object on the closest wheel.
      4. Tell the server about the clamp object so everyone can see it.

    FiveM words used here:
      * network id = shared id for an entity so server/clients can refer to it.
      * bone = named part of a vehicle model, such as wheel_lf.
      * event = a named message that causes code to run.

    Quick map of this file:
      * Incoming network events: start clamp, place clamp, freeze/unfreeze vehicle
      * Server events sent: clamp request, clamp object created
      * Main helpers: findClosestWheel(), restorePlayerAfterClamp(), failClamp()

    Keep the event names exactly as they are. They are shared with the server.
]]

local WHEEL_BONES = {
  "wheel_lf",
  "wheel_rf",
  "wheel_lr",
  "wheel_rr",
}

local CLAMP_MODEL = -1099035225
local placingClamp = false

local function vehicleMovedDuring(vehicle, timeoutMs)
  local startedAt = GetGameTimer()

  while GetGameTimer() - startedAt < timeoutMs do
    if GetEntitySpeed(vehicle) > 0.2 then
      return true
    end

    Citizen.Wait(0)
  end

  return false
end

RegisterNetEvent("b9a311db61", function()
  if placingClamp then
    return
  end

  local vehicle = CMG.getClosestVehicle(7.0)

  if not vehicle or not NetworkGetEntityIsNetworked(vehicle) then
    notify("~r~No vehicle found.")
    return
  end

  local vehicleNetworkId = NetworkGetNetworkIdFromEntity(vehicle)

  if vehicleNetworkId ~= 0 then
    TriggerServerEvent("e6da6979c7", vehicleNetworkId, vehicle)
  end
end)

local function findClosestWheel(vehicle)
  local playerCoords = CMG.getPlayerCoords()
  local closestWheelBone = -1
  local closestWheelDistance = 1.5
  local closestWheelCoords = vector3(0.0, 0.0, 0.0)

  for _, wheelBoneName in pairs(WHEEL_BONES) do
    local wheelBone = GetEntityBoneIndexByName(vehicle, wheelBoneName)

    if wheelBone ~= -1 then
      local wheelCoords = GetWorldPositionOfEntityBone(vehicle, wheelBone)
      local wheelDistance = #(playerCoords - wheelCoords)

      if wheelDistance < closestWheelDistance then
        closestWheelBone = wheelBone
        closestWheelDistance = wheelDistance
        closestWheelCoords = wheelCoords
      end
    end
  end

  return closestWheelBone, closestWheelCoords
end

local function restorePlayerAfterClamp(playerPed)
  tCMG.stopAnim(true)
  ResetPedStrafeClipset(playerPed)
  ResetPedMovementClipset(playerPed, 0.0)
  SetPedCanPlayAmbientAnims(playerPed, true)
  SetPedCanPlayAmbientBaseAnims(playerPed, true)
end

local function failClamp(clampObject)
  DeleteEntity(clampObject)
  notify("~r~Failed to place clamp on vehicle.")
  placingClamp = false
end

RegisterNetEvent("1b7e99a63d", function(clampId, vehicle)
  if CMG.getPlayerVehicle() ~= 0 then
    notify("~r~You can not clamp whilst in a vehicle.")
    return
  end

  local vehicleClass = GetVehicleClass(vehicle)

  if vehicleClass == 14 or vehicleClass == 15 or vehicleClass == 18 or vehicleClass == 21 then
    notify("~r~You can not clamp this vehicle.")
    return
  end

  if GetEntitySpeed(vehicle) > 0.2 then
    notify("~r~You can not clamp a moving vehicle.")
    return
  end

  local closestWheelBone, closestWheelCoords = findClosestWheel(vehicle)

  if closestWheelBone == -1 then
    notify("~r~You are not nearby to any wheel.")
    return
  end

  placingClamp = true

  local playerPed = PlayerPedId()

  TaskTurnPedToFaceCoord(playerPed, closestWheelCoords.x, closestWheelCoords.y, closestWheelCoords.z, 2000)

  while GetScriptTaskStatus(playerPed, 1464580341) ~= 7 do
    Citizen.Wait(0)
  end

  CMG.loadClipSet("move_ped_crouched")
  SetPedCanPlayAmbientAnims(playerPed, false)
  SetPedCanPlayAmbientBaseAnims(playerPed, false)
  SetPedMovementClipset(playerPed, "move_ped_crouched", 0.35)
  SetPedStrafeClipset(playerPed, "move_ped_crouched_strafing")
  RemoveClipSet("move_ped_crouched")

  tCMG.playAnim(true, {
    { "rcmextreme3", "idle", 1 },
  }, true)

  CMG.loadModel(CLAMP_MODEL)

  local spawnCoords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 0.2, 0.0)

  CMG.requestEntitySpawn("clamp_object")

  local clampObject = CreateObject(CLAMP_MODEL, spawnCoords.x, spawnCoords.y, spawnCoords.z, true, true, true)

  SetModelAsNoLongerNeeded(CLAMP_MODEL)
  PlaceObjectOnGroundProperly(clampObject)
  FreezeEntityPosition(clampObject, true)
  SetEntityRotation(clampObject, -90.0, 0.0, 0.0, 2, true)
  SetEntityCollision(clampObject, false, false)

  local vehicleMoved = vehicleMovedDuring(vehicle, 4000)

  if not vehicleMoved then
    SetEntityCollision(clampObject, true, true)
    SetEntityHeading(clampObject, 0.0)
    SetEntityRotation(clampObject, 60.0, 20.0, 10.0, 1, true)
    AttachEntityToEntity(
      clampObject,
      vehicle,
      closestWheelBone,
      -0.1,
      0.15,
      -0.3,
      180.0,
      200.0,
      90.0,
      true,
      true,
      false,
      false,
      2,
      true
    )

    vehicleMoved = vehicleMovedDuring(vehicle, 1000)
  end

  restorePlayerAfterClamp(playerPed)

  if vehicleMoved or #(CMG.getPlayerCoords() - closestWheelCoords) > 5.0 then
    failClamp(clampObject)
    return
  end

  local startedWaitingForNetworkId = GetGameTimer()

  while not NetworkGetEntityIsNetworked(clampObject) or NetworkGetNetworkIdFromEntity(clampObject) == 0 do
    if GetGameTimer() - startedWaitingForNetworkId > 3000 then
      DeleteEntity(clampObject)
      placingClamp = false
      return
    end

    Citizen.Wait(0)
  end

  local clampNetworkId = NetworkGetNetworkIdFromEntity(clampObject)

  if clampNetworkId ~= 0 then
    TriggerServerEvent("da3b635d57", clampId, clampNetworkId)
    notify("~y~Vehicle clamped.")
  end

  placingClamp = false
end)

TriggerEvent("chat:addSuggestion", "/clamp", "Clamp the nearest vehicle")

RegisterNetEvent("1f35d11d0c", function(vehicleNetworkId, frozen)
  if not NetworkDoesNetworkIdExist(vehicleNetworkId) then
    return
  end

  local vehicle = NetworkGetEntityFromNetworkId(vehicleNetworkId)

  if DoesEntityExist(vehicle) then
    FreezeEntityPosition(vehicle, frozen)
  end
end)
