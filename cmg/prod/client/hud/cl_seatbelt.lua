--[[
    LEVEL 1 BEGINNER GUIDE - Seatbelt

    Handles the seatbelt HUD icon, keybind, exit locking, and crash ejection.

    Events kept unchanged:
      * f7b3a54a8f - force seatbelt off
      * e892eba4b7 - toggle default state for emergency/non-emergency
      * b51e08118b - refresh default state after service changes
      * 86e5b246ad - eject remote passengers after a crash
]]

local hudConfig = CMG.loadModule("cfg/cfg_hud")

local seatbeltOn = true
local previousVehicleSpeedKmh = 0
local previousVehicleVelocity = vector3(0, 0, 0)
local wasEmergencyService = false

local SEATBELT_VEHICLE_CLASSES = {
  [0] = true,
  [1] = true,
  [2] = true,
  [3] = true,
  [4] = true,
  [5] = true,
  [6] = true,
  [7] = true,
  [9] = true,
  [12] = true,
  [17] = true,
  [18] = true,
  [20] = true,
  [22] = true
}

local function isSeatbeltFeatureAllowed()
  return CMG.isClientClockedOnOrganisation() or CMG.isEmergencyService()
end

local function sendSeatbeltHudState()
  CMG.sendHudNuiMessage("SET_SEATBELT", seatbeltOn)
end

local function isSeatbeltVehicle(vehicle)
  return SEATBELT_VEHICLE_CLASSES[GetVehicleClass(vehicle)] or false
end

AddEventHandler("f7b3a54a8f", function()
  seatbeltOn = false
  sendSeatbeltHudState()
end)

AddEventHandler("e892eba4b7", function()
  seatbeltOn = not CMG.isEmergencyService()
  sendSeatbeltHudState()
end)

AddEventHandler("b51e08118b", function()
  local isEmergencyService = CMG.isEmergencyService()

  if isEmergencyService then
    if not wasEmergencyService then
      seatbeltOn = false
      sendSeatbeltHudState()
    end
  elseif wasEmergencyService and CMG.isClientClockedOnOrganisation() then
    seatbeltOn = true
    sendSeatbeltHudState()
  end

  wasEmergencyService = isEmergencyService

  if not isSeatbeltFeatureAllowed() then
    seatbeltOn = true
    sendSeatbeltHudState()
  end
end)

local function toggleSeatbelt()
  local vehicle = CMG.getPlayerVehicle()

  if vehicle == 0 or not isSeatbeltVehicle(vehicle) then
    return
  end

  seatbeltOn = not seatbeltOn

  if seatbeltOn then
    hudConfig.Notification(hudConfig.Notifications.TOOK_SEATBELT.message, hudConfig.Notifications.TOOK_SEATBELT.type)
  else
    hudConfig.Notification(hudConfig.Notifications.TOOK_OFF_SEATBELT.message, hudConfig.Notifications.TOOK_OFF_SEATBELT.type)
  end

  sendSeatbeltHudState()
end

RegisterCommand("seatbelt", function()
  if not isSeatbeltFeatureAllowed() then
    return
  end

  local playerPed = CMG.getPlayerPed()
  local vehicle = CMG.getPlayerVehicle()

  if IsPedInAnyVehicle(playerPed) and isSeatbeltVehicle(vehicle) then
    toggleSeatbelt()
  end
end, false)

RegisterKeyMapping("seatbelt", "Toggle Seatbelt", "keyboard", hudConfig.SeatbeltKey)

local function getForwardEjectionOffset(entity)
  local headingRadians = (GetEntityHeading(entity) + 90.0) * 0.0174533

  if headingRadians < 0.0 then
    headingRadians = (360.0 + GetEntityHeading(entity) + 90.0) * 0.0174533
  end

  return {
    x = math.cos(headingRadians) * 2.0,
    y = math.sin(headingRadians) * 2.0
  }
end

local function ejectPlayerFromVehicle(velocityX, velocityY, velocityZ)
  if not isSeatbeltFeatureAllowed() or seatbeltOn then
    return
  end

  local playerPed = PlayerPedId()
  local vehicle = GetVehiclePedIsIn(playerPed, false)

  if vehicle == 0 then
    vehicle = GetVehiclePedIsIn(playerPed, true)
  end

  if type(velocityX) ~= "number" or type(velocityY) ~= "number" or type(velocityZ) ~= "number" then
    if vehicle ~= 0 then
      local vehicleVelocity = GetEntityVelocity(vehicle)
      velocityX = vehicleVelocity.x
      velocityY = vehicleVelocity.y
      velocityZ = vehicleVelocity.z
    else
      velocityX = 0.0
      velocityY = 0.0
      velocityZ = 0.0
    end
  end

  local playerCoords = GetEntityCoords(playerPed)
  local ejectionOffset = getForwardEjectionOffset(playerPed)

  SetEntityCoords(playerPed, playerCoords.x + ejectionOffset.x, playerCoords.y + ejectionOffset.y, playerCoords.z - 0.47, true, true, true, false)

  local scaledVelocityX = velocityX * hudConfig.seatbeltEjectVelocityScale
  local scaledVelocityY = velocityY * hudConfig.seatbeltEjectVelocityScale
  local scaledVelocityZ = velocityZ * hudConfig.seatbeltEjectVelocityScale + hudConfig.seatbeltEjectUpwardImpulse

  SetEntityVelocity(playerPed, scaledVelocityX, scaledVelocityY, scaledVelocityZ)
  Wait(0)
  SetEntityVelocity(playerPed, scaledVelocityX, scaledVelocityY, scaledVelocityZ)
  ApplyDamageToPed(playerPed, math.random(10, 30), false)
  SetPedToRagdoll(playerPed, 1000, 1000, 0, false, false, false)

  CreateThread(function()
    for _ = 1, 15 do
      Wait(0)

      if DoesEntityExist(playerPed) then
        SetEntityVelocity(playerPed, scaledVelocityX, scaledVelocityY, scaledVelocityZ)
      end
    end
  end)
end

RegisterNetEvent("86e5b246ad")
AddEventHandler("86e5b246ad", function(velocityX, velocityY, velocityZ)
  ejectPlayerFromVehicle(velocityX, velocityY, velocityZ)
end)

local function turnSeatbeltOffFromExitKey()
  if not seatbeltOn then
    return
  end

  seatbeltOn = false
  sendSeatbeltHudState()
  previousVehicleSpeedKmh = 0
end

CreateThread(function()
  while true do
    if isSeatbeltFeatureAllowed() then
      if seatbeltOn then
        local vehicle = CMG.getPlayerVehicle()

        if vehicle ~= 0 and isSeatbeltVehicle(vehicle) then
          DisableControlAction(0, 75, true)

          if IsDisabledControlJustPressed(0, 75) then
            turnSeatbeltOffFromExitKey()
          end

          Wait(0)
        else
          Wait(150)
        end
      end
    else
      Wait(500)
    end
  end
end)

CreateThread(function()
  while true do
    if isSeatbeltFeatureAllowed() then
      local vehicle, isDriver = CMG.getPlayerVehicle()

      if vehicle ~= 0 then
        if isSeatbeltVehicle(vehicle) and isDriver then
          local currentSpeedKmh = GetEntitySpeed(vehicle) * 3.6
          local lostSpeedQuickly = previousVehicleSpeedKmh - currentSpeedKmh > currentSpeedKmh * 1.7
          local wasFastEnough = previousVehicleSpeedKmh > hudConfig.SeatbeltEjectSpeed

          if wasFastEnough and lostSpeedQuickly then
            local passengers = {}
            local seatCount = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))

            for seatIndex = 1, seatCount do
              local vehicleSeat = seatIndex - 2

              if not IsVehicleSeatFree(vehicle, vehicleSeat) then
                local passengerPed = GetPedInVehicleSeat(vehicle, vehicleSeat)
                local passengerPlayer = NetworkGetPlayerIndexFromPed(passengerPed)
                table.insert(passengers, GetPlayerServerId(passengerPlayer))
              end
            end

            local velocity = GetEntityVelocity(vehicle)
            local velocityX = velocity.x
            local velocityY = velocity.y
            local velocityZ = velocity.z

            if velocityX * velocityX + velocityY * velocityY + velocityZ * velocityZ < 1.0 then
              velocityX = previousVehicleVelocity.x
              velocityY = previousVehicleVelocity.y
              velocityZ = previousVehicleVelocity.z
            end

            if not seatbeltOn then
              ejectPlayerFromVehicle(velocityX, velocityY, velocityZ)
            end

            local localServerId = GetPlayerServerId(PlayerId())
            local remotePassengers = {}

            for _, passengerServerId in ipairs(passengers) do
              if tonumber(passengerServerId) ~= 0 and passengerServerId ~= localServerId then
                remotePassengers[#remotePassengers + 1] = passengerServerId
              end
            end

            if #remotePassengers > 0 then
              TriggerServerEvent("86e5b246ad", remotePassengers, velocityX, velocityY, velocityZ)
            end
          end

          previousVehicleSpeedKmh = currentSpeedKmh
          previousVehicleVelocity = GetEntityVelocity(vehicle)
        end
      else
        if seatbeltOn then
          turnSeatbeltOffFromExitKey()
        end

        Wait(2000)
      end
    end

    Wait(150)
  end
end)

AddEventHandler("onClientResourceStart", function(resourceName)
  if resourceName ~= GetCurrentResourceName() then
    return
  end

  CMG.sendHudNuiMessage("SEATBELT_RESET_SOUND_STATE", true)

  CreateThread(function()
    Wait(250)

    if not isSeatbeltFeatureAllowed() then
      seatbeltOn = true
      sendSeatbeltHudState()
    end
  end)
end)
