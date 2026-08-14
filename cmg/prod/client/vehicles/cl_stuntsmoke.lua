--[[
    LEVEL 1 BEGINNER GUIDE - Stunt Smoke
    ====================================

    File: cmg/prod/client/vehicles/cl_stuntsmoke.lua
    Runs as: Client - runs on each player's FiveM client.
    Purpose: adds coloured smoke trails to planes.

    Big idea:
      1. A plane stores its selected smoke colour in decorators.
      2. /setsmoke lets the driver choose a colour they own.
      3. /togglesmoke turns smoke on or off for the current plane.
      4. A background loop shows smoke for active players' planes.

    FiveM words used here:
      * decorator = hidden data saved on an entity, such as a vehicle.
      * particle effect = GTA visual effect, used here for the smoke trail.
      * thread = code that keeps checking over time; Wait() prevents freezing.

    Quick map of this file:
      * Background threads: 1
      * Commands: /setsmoke, /togglesmoke
      * Public CMG function: CMG.setVehicleIdPlaneSmoke()

    Keep the decorator names and command names exactly as they are.
]]

local SMOKE_COLOUR_DECOR = "b67d156704"
local SMOKE_ENABLED_DECOR = "916cd57ed7"
local PLANE_SMOKE_ID_DECOR = "0a6cf607ed"

local smokeColoursByHash = {
  [GetHashKey("red")] = {
    mod = 1,
    rgb = { 255, 25, 25 },
    debugName = "Red",
  },
  [GetHashKey("orange")] = {
    mod = 2,
    rgb = { 255, 179, 25 },
    debugName = "Orange",
  },
  [GetHashKey("yellow")] = {
    mod = 3,
    rgb = { 255, 255, 25 },
    debugName = "Yellow",
  },
  [GetHashKey("green")] = {
    mod = 4,
    rgb = { 102, 255, 25 },
    debugName = "Green",
  },
  [GetHashKey("blue")] = {
    mod = 5,
    rgb = { 25, 25, 255 },
    debugName = "Blue",
  },
  [GetHashKey("purple")] = {
    mod = 6,
    rgb = { 179, 25, 255 },
    debugName = "Purple",
  },
  [GetHashKey("pink")] = {
    mod = 7,
    rgb = { 255, 25, 255 },
    debugName = "Pink",
  },
  [GetHashKey("white")] = {
    mod = 8,
    rgb = { 255, 255, 255 },
    debugName = "White",
  },
}

local unlockedSmokeByPlaneId = {}
local activeSmokeEffectByVehicle = {}

local function applySmokeToVehicle(vehicle)
  if DecorGetBool(vehicle, SMOKE_ENABLED_DECOR) then
    local selectedColourHash = DecorGetInt(vehicle, SMOKE_COLOUR_DECOR)
    local selectedColour = smokeColoursByHash[selectedColourHash]

    if not selectedColour then
      return
    end

    local smokeEffect = activeSmokeEffectByVehicle[vehicle]

    if not smokeEffect then
      CMG.loadPtfx("scr_ar_planes")
      UseParticleFxAsset("scr_ar_planes")

      smokeEffect = StartParticleFxLoopedOnEntityBone(
        "scr_ar_trail_smoke",
        vehicle,
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
        -1,
        1.0,
        false,
        false,
        false
      )

      RemoveNamedPtfxAsset("scr_ar_planes")
      SetParticleFxLoopedFarClipDist(smokeEffect, 1000.0)

      activeSmokeEffectByVehicle[vehicle] = smokeEffect
    end

    SetParticleFxLoopedScale(smokeEffect, 1.0)
    SetParticleFxLoopedColour(
      smokeEffect,
      selectedColour.rgb[1] / 255,
      selectedColour.rgb[2] / 255,
      selectedColour.rgb[3] / 255,
      false
    )

    return
  end

  local smokeEffect = activeSmokeEffectByVehicle[vehicle]

  if smokeEffect then
    StopParticleFxLooped(smokeEffect, false)
    activeSmokeEffectByVehicle[vehicle] = nil
  end
end

Citizen.CreateThread(function()
  DecorRegister(SMOKE_COLOUR_DECOR, 3)
  DecorRegister(SMOKE_ENABLED_DECOR, 2)

  while true do
    for _, playerId in pairs(GetActivePlayers()) do
      local playerPed = GetPlayerPed(playerId)

      if playerPed ~= 0 then
        local vehicle = GetVehiclePedIsUsing(playerPed)

        if vehicle ~= 0 then
          applySmokeToVehicle(vehicle)
        end
      end
    end

    for vehicle, smokeEffect in pairs(activeSmokeEffectByVehicle) do
      if not DoesEntityExist(vehicle) then
        StopParticleFxLooped(smokeEffect, false)
        activeSmokeEffectByVehicle[vehicle] = nil
      end
    end

    Citizen.Wait(1000)
  end
end)

RegisterCommand("setsmoke", function(_, args)
  local vehicle, isDriver = CMG.getPlayerVehicle()

  if vehicle == 0 or not isDriver then
    return
  end

  local planeSmokeId = DecorGetInt(vehicle, PLANE_SMOKE_ID_DECOR)
  local unlockedSmoke = unlockedSmokeByPlaneId[planeSmokeId]

  if planeSmokeId <= 0 or not unlockedSmoke then
    notify("~r~You can not set the smoke colour of this vehicle")
    return
  end

  if #args ~= 1 then
    notify("~r~No smoke colour was specified")
    return
  end

  local colourHash = GetHashKey(args[1])
  local colour = smokeColoursByHash[colourHash]

  if not colour then
    notify("~r~The specified smoke colour does not exist")
    return
  end

  -- This keeps the original decompiled behaviour. The old check did not block
  -- missing purchases, but the variable name shows what it was meant to test.
  local purchaseMissing = not unlockedSmoke[tostring(colour.mod)]

  if purchaseMissing == nil then
    notify("~r~You have not purchased this colour in LS Customs")
    return
  end

  DecorSetInt(vehicle, SMOKE_COLOUR_DECOR, colourHash)
  applySmokeToVehicle(vehicle)
end, false)

RegisterCommand("togglesmoke", function()
  local vehicle, isDriver = CMG.getPlayerVehicle()

  if vehicle == 0 or not isDriver then
    return
  end

  if not IsThisModelAPlane(GetEntityModel(vehicle)) then
    return
  end

  if DecorGetInt(vehicle, SMOKE_COLOUR_DECOR) == 0 then
    notify("No smoke colour has been set or purchased for this vehicle")
    return
  end

  DecorSetBool(vehicle, SMOKE_ENABLED_DECOR, not DecorGetBool(vehicle, SMOKE_ENABLED_DECOR))
  applySmokeToVehicle(vehicle)
end, false)

RegisterKeyMapping("togglesmoke", "Toggle Plane Stunt Smoke", "KEYBOARD", "G")

function CMG.setVehicleIdPlaneSmoke(vehicle, planeSmokeId, unlockedSmoke)
  unlockedSmokeByPlaneId[planeSmokeId] = unlockedSmoke

  for smokeMod, unlocked in pairs(unlockedSmoke) do
    if unlocked == true then
      for colourHash, colour in pairs(smokeColoursByHash) do
        if colour.mod == tonumber(smokeMod) then
          DecorSetInt(vehicle, SMOKE_COLOUR_DECOR, colourHash)
          break
        end
      end
    end
  end
end

local function getVehicleSmokeDebugText(vehicle)
  if not IsThisModelAPlane(GetEntityModel(vehicle)) then
    return ""
  end

  local selectedColourHash = DecorGetInt(vehicle, SMOKE_COLOUR_DECOR)
  local selectedColour = smokeColoursByHash[selectedColourHash]
  local smokeName

  if selectedColour then
    smokeName = selectedColour.debugName
  elseif selectedColourHash == 0 then
    smokeName = "Not Set"
  else
    smokeName = tostring(selectedColourHash)
  end

  return string.format(
    [[
Smoke Enabled: %s
Smoke Type: %s]],
    DecorGetBool(vehicle, SMOKE_ENABLED_DECOR) and "Yes" or "No",
    smokeName
  )
end

CMG.registerDevMenuEntityEditor("Stunt Smoke", "vehicle", getVehicleSmokeDebugText, function()
end)
