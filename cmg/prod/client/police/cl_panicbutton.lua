--[[
    LEVEL 1 BEGINNER GUIDE - Panic Button

    Sends and receives emergency panic alerts.

    Important event hashes kept unchanged:
      * 9baa82cbda - emergency-service panic sent to the server
      * 2d588b850f - gang panic sent to the server
      * 9d185ee4de - panic alert received from the server
]]

local panicConfig = {
  Cooldown = 15,
  DisableAllMessages = false,
  ChatSuggestions = true,
  Reminder = true,
  Message = "Attention all units, MET officer in distress!"
}

local panicState = {
  Cooling = 0,
  Tuned = true
}

local cooldownThreadRunning = false

local function startPanicCooldown()
  panicState.Cooling = panicConfig.Cooldown

  if cooldownThreadRunning then
    return
  end

  cooldownThreadRunning = true

  Citizen.CreateThread(function()
    while panicState.Cooling > 0 do
      panicState.Cooling = panicState.Cooling - 1
      Wait(1000)
    end

    cooldownThreadRunning = false
  end)
end

local function getPedHeadshotTxd(ped)
  local headshotHandle = RegisterPedheadshot(ped)

  if not IsPedheadshotValid(headshotHandle) then
    return "CHAR_BLOCKED"
  end

  local startedAt = GetGameTimer()

  while not IsPedheadshotReady(headshotHandle) do
    if GetGameTimer() - startedAt > 2500 then
      UnregisterPedheadshot(headshotHandle)
      return "CHAR_BLOCKED"
    end

    Wait(0)
  end

  return GetPedheadshotTxdString(headshotHandle), headshotHandle
end

local function getSenderPanicType()
  if CMG.hasClientPermission("police.onduty.permission") then
    return 3, "9baa82cbda"
  end

  if CMG.hasClientPermission("nhs.onduty.permission") then
    return 2, "9baa82cbda"
  end

  if CMG.hasClientPermission("prisonguard.onduty.permission") then
    return 4, "9baa82cbda"
  end

  if CMG.hasClientPermission("lfb.onduty.permission") then
    return 5, "9baa82cbda"
  end

  if CMG.hasClientPermission("borderforce.onduty.permission") then
    return 7, "9baa82cbda"
  end

  if CMG.isSelectedGangAdvanced() then
    return 6, "2d588b850f"
  end
end

local function buildPanicPayload()
  local playerId = CMG.getPlayerId()
  local playerPed = CMG.getPlayerPed()
  local coords = GetEntityCoords(playerPed)
  local streetHash, crossStreetHash = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
  local streetName = GetStreetNameFromHashKey(streetHash)
  local crossStreetName = crossStreetHash ~= 0 and GetStreetNameFromHashKey(crossStreetHash) or nil

  return {
    Player = playerId,
    Ped = playerPed,
    Name = CMG.getPlayerName(playerId),
    Coords = coords,
    Location = crossStreetName and (streetName .. " X " .. crossStreetName) or streetName
  }
end

RegisterCommand("panic", function()
  if not CMG.hasRadioItem() or IsEntityDead(PlayerPedId()) then
    return
  end

  local panicType, eventName = getSenderPanicType()
  if not panicType then
    return
  end

  if panicState.Cooling ~= 0 then
    notify("~r~Panic Button still cooling down.", true)
    return
  end

  local panicPayload = buildPanicPayload()

  if eventName == "2d588b850f" then
    TriggerServerEvent(eventName, panicPayload, false)
  else
    TriggerServerEvent(eventName, panicPayload, panicType)
  end

  startPanicCooldown()
end, false)

local function shouldReceiveGangPanic(panicPayload)
  if not CMG.isGangPanicsPinnedOnly() then
    return true
  end

  if CMG.isPlayerPinnedInGang(panicPayload.user_id) then
    return true
  end

  return panicPayload.user_id == CMG.getClientUserId()
end

local function shouldReceivePanic(panicPayload, panicType)
  if panicType == 6 then
    return shouldReceiveGangPanic(panicPayload) and CMG.isEmergencyService()
  end

  if CMG.hasClientPermission("police.onduty.permission") then
    return true
  end

  if CMG.hasClientPermission("nhs.onduty.permission") then
    return true
  end

  if CMG.hasClientPermission("prisonguard.onduty.permission") then
    return panicType == 4 or panicType == 7
  end

  if CMG.hasClientPermission("lfb.onduty.permission") then
    return panicType == 5
  end

  return CMG.hasClientPermission("borderforce.onduty.permission")
end

local function notifyPanic(headshotTxd, panicPayload, panicType)
  if panicType == 2 then
    tCMG.notifyPicture(headshotTxd, 2, string.format("NHS - %s", panicPayload.Name), nil, "~r~NHS Paramedic in distress! - " .. panicPayload.Location)
  elseif panicType == 3 then
    tCMG.notifyPicture(headshotTxd, 2, string.format("MET Police - %s", panicPayload.Name), nil, "~r~Officer in distress! - " .. panicPayload.Location)
  elseif panicType == 4 then
    tCMG.notifyPicture(headshotTxd, 2, string.format("HM Prison - %s", panicPayload.Name), nil, "~r~Prison Guard in distress! - " .. panicPayload.Location)
  elseif panicType == 5 then
    tCMG.notifyPicture(headshotTxd, 2, string.format("LFB - %s", panicPayload.Name), nil, "~r~LFB Panic Alarm Activated! - " .. panicPayload.Location)
  elseif panicType == 6 then
    local name = panicPayload.Name and panicPayload.Name ~= "" and panicPayload.Name or "Unknown"
    tCMG.notifyPicture(headshotTxd, 2, string.format("Gang Panic - %s", name), nil, string.format("~r~%s triggered a gang panic - %s", name, panicPayload.Location))
  elseif panicType == 7 then
    tCMG.notifyPicture(headshotTxd, 2, string.format("Border Force - %s", panicPayload.Name), nil, "~r~Border Force Panic Alarm Activated! - " .. panicPayload.Location)
  end
end

local function createPanicRouteBlip(panicPayload, panicType)
  Citizen.CreateThread(function()
    if CMG.isDoingTruckRoute() then
      return
    end

    local blip = AddBlipForRadius(panicPayload.Coords.x, panicPayload.Coords.y, panicPayload.Coords.z, 100.0)
    SetBlipRoute(blip, true)

    Citizen.CreateThread(function()
      while blip do
        SetBlipRouteColour(blip, 1)
        Citizen.Wait(150)
        SetBlipRouteColour(blip, 6)
        Citizen.Wait(150)
        SetBlipRouteColour(blip, 35)
        Citizen.Wait(150)
        SetBlipRouteColour(blip, 6)
      end
    end)

    SetBlipColour(blip, panicType)
    SetBlipAlpha(blip, 60)
    SetBlipFlashes(blip, true)
    SetBlipFlashInterval(blip, 200)

    Citizen.Wait(90000)
    RemoveBlip(blip)
  end)
end

RegisterNetEvent("9d185ee4de", function(nuiPayload, panicPayload, panicType)
  if not CMG.hasRadioItem() or not shouldReceivePanic(panicPayload, panicType) then
    return
  end

  SendNUIMessage({
    PayloadType = "Panic",
    Payload = nuiPayload
  })

  local headshotTxd, headshotHandle = getPedHeadshotTxd(GetPlayerPed(GetPlayerFromServerId(panicPayload.Source)))
  panicPayload.Headshot = headshotTxd

  notifyPanic(headshotTxd, panicPayload, panicType)

  if headshotHandle ~= nil then
    UnregisterPedheadshot(headshotHandle)
  end

  createPanicRouteBlip(panicPayload, panicType)

  local soundId = GetSoundId()
  PlaySoundFrontend(soundId, "police_notification", "DLC_AS_VNT_Sounds", true)
  ReleaseSoundId(soundId)
end)
