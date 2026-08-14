--[[
    LEVEL 1 BEGINNER GUIDE - Dirty Cash

    This client script handles the visible dirty-cash cleaner handoff:
      1. The server creates a cleaner ped area for a player.
      2. The owning player gets a small local interaction area.
      3. Pressing E asks the server to start the handoff.
      4. The player and nearby cleaner play give/take animations.
      5. The server ends or cancels the handoff with event hashes below.

    Keep the hashed event names unchanged unless the server is updated too.
]]

local HANDOVER_IDLE = "IDLE"
local HANDOVER_ACTIVE = "HANDING_OVER"

local handoverState = HANDOVER_IDLE
local phoneCallActive = false

local function doNothing()
end

local function spawnCleanerPed(cleanerData)
  CMG.loadModel(cleanerData.model)

  local position = cleanerData.position
  local ped = CreatePed(0, cleanerData.model, position.x, position.y, position.z - 1.0, position.w, false, false)
  cleanerData.ped = ped

  SetModelAsNoLongerNeeded(cleanerData.model)
  FreezeEntityPosition(ped, true)
  SetEntityInvincible(ped, true)
  SetEntityCanBeDamaged(ped, false)
  SetPedAlertness(ped, 0)
  SetBlockingOfNonTemporaryEvents(ped, true)
  SetEntityCollision(ped, false, false)
  GiveWeaponToPed(ped, 28811031, 1, false, true)
  SetCurrentPedWeapon(ped, 28811031, true)

  CMG.loadAnimDict("anim@heists@heist_corona@team_idles@female_a")
  TaskPlayAnim(ped, "anim@heists@heist_corona@team_idles@female_a", "idle", 8.0, 8.0, -1, 1, 0, false, false, false)
  RemoveAnimDict("anim@heists@heist_corona@team_idles@female_a")

  if CMG.getLocalPlayerSrc() == cleanerData.playerSrc then
    cleanerData.blip = AddBlipForRadius(position.x, position.y, position.z, 10.0)
    SetBlipColour(cleanerData.blip, 5)
    SetBlipAlpha(cleanerData.blip, 150)
    SetWaypointOff()
  end
end

local function cleanupCleanerPed(cleanerData)
  if cleanerData.blip then
    RemoveBlip(cleanerData.blip)
  end

  DeleteEntity(cleanerData.ped)
end

local function drawCleanerInteractionPrompt()
  if handoverState == HANDOVER_IDLE then
    drawNativeNotification("Press ~INPUT_CONTEXT~ to hand over the dirty cash.")

    if IsControlJustPressed(0, 51) then
      CMG.disableSittingOnChairThisFrame()
      TriggerServerEvent("8ac077847b")
    end
  elseif handoverState == HANDOVER_ACTIVE then
    subtitleText("~b~Handing over cash...")
  end
end

local function submitHandoverIfStillActive()
  if handoverState == HANDOVER_ACTIVE then
    TriggerServerEvent("28586dd690")
  end
end

RegisterNetEvent("8dfaa23b61", function(playerSrc, position, model)
  local cleanerData = {
    playerSrc = playerSrc,
    position = position,
    model = model
  }

  CMG.createArea(
    "dirtycash_" .. tostring(playerSrc),
    position.xyz,
    50.0,
    6.0,
    spawnCleanerPed,
    cleanupCleanerPed,
    doNothing,
    cleanerData
  )

  if CMG.getLocalPlayerSrc() == playerSrc then
    CMG.createArea(
      "dirtycash_local",
      position.xyz,
      1.5,
      6.0,
      doNothing,
      submitHandoverIfStillActive,
      drawCleanerInteractionPrompt,
      nil
    )
  end
end)

RegisterNetEvent("fa2dcfab18", function(playerSrc)
  if CMG.getLocalPlayerSrc() == playerSrc then
    tCMG.removeArea("dirtycash_local")
  end

  local areaName = "dirtycash_" .. tostring(playerSrc)
  local cleanerData = CMG.getAreaMetaData(areaName)

  if cleanerData.ped then
    ClearPedTasksImmediately(cleanerData.ped)
    SetEntityAsNoLongerNeeded(cleanerData.ped)
  end

  if cleanerData.blip then
    RemoveBlip(cleanerData.blip)
  end

  tCMG.removeArea(areaName)
end)

RegisterNetEvent("e16d390302", function(cleanerCoords)
  if phoneCallActive then
    return
  end

  phoneCallActive = true

  local playerPed = PlayerPedId()
  SendNUIMessage({ transactionType = "ring" })

  CMG.loadAnimDict("cellphone@")
  TaskPlayAnim(playerPed, "cellphone@", "cellphone_call_listen_base", 3.0, -1, -1, 50, 0, false, false, false)
  RemoveAnimDict("cellphone@")

  CMG.loadModel("prop_amb_phone")
  CMG.requestEntitySpawn("dirtycash_phone")

  local phone = CreateObject(974883178, cleanerCoords.x, cleanerCoords.y, cleanerCoords.z, true, true, false)
  AttachEntityToEntity(phone, playerPed, GetPedBoneIndex(playerPed, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, false, 0, true)
  SetModelAsNoLongerNeeded("prop_amb_phone")

  Citizen.Wait(9000)

  StopAnimTask(playerPed, "cellphone@", "cellphone_call_listen_base", 1.0)
  DeleteEntity(phone)
  SetNewWaypoint(cleanerCoords.x, cleanerCoords.y)
  drawNativeNotification("A marker has been set to the cleaners location.")

  phoneCallActive = false
end)

local function getClosestLocalNonPlayerPed(coords)
  local closestDistance = 5.0
  local closestPed = 0

  for _, ped in pairs(GetGamePool("CPed")) do
    if not IsPedAPlayer(ped) and NetworkGetEntityIsLocal(ped) then
      local distance = #(GetEntityCoords(ped, true) - coords.xyz)

      if distance < closestDistance then
        closestDistance = distance
        closestPed = ped
      end
    end
  end

  return closestPed
end

RegisterNetEvent("8ac077847b", function(duration)
  handoverState = HANDOVER_ACTIVE

  Citizen.CreateThread(function()
    CMG.startCircularProgressBar("", duration, nil, doNothing)
  end)

  local playerPed = PlayerPedId()
  local closestPed = getClosestLocalNonPlayerPed(CMG.getPlayerCoords())

  TaskTurnPedToFaceEntity(playerPed, closestPed, 1000)
  Citizen.Wait(1000)

  CMG.loadAnimDict("mp_common")
  TaskPlayAnim(playerPed, "mp_common", "givetake1_a", 8.0, 8.0, -1, 1, 0, false, false, false)
  RemoveAnimDict("mp_common")

  Citizen.Wait(2000)

  while handoverState == HANDOVER_ACTIVE do
    if not IsEntityPlayingAnim(playerPed, "mp_common", "givetake1_a", 3) then
      TriggerServerEvent("28586dd690")
      break
    end

    Citizen.Wait(0)
  end
end)

RegisterNetEvent("28586dd690", function()
  handoverState = HANDOVER_IDLE
  StopAnimTask(PlayerPedId(), "mp_common", "givetake1_a", 1.0)
  CMG.stopCircularProgressBar()
end)

RegisterNetEvent("429c274229", function(cleanerCoords)
  local closestPed = getClosestLocalNonPlayerPed(cleanerCoords)

  if closestPed ~= 0 then
    CMG.loadAnimDict("mp_common")
    TaskPlayAnim(closestPed, "mp_common", "givetake2_a", 8.0, 8.0, -1, 1, 0, false, false, false)
    RemoveAnimDict("mp_common")
  end
end)

RegisterNetEvent("9ebeeadd8b", function(cleanerCoords)
  local closestPed = getClosestLocalNonPlayerPed(cleanerCoords)

  if closestPed ~= 0 then
    CMG.loadAnimDict("anim@heists@heist_corona@team_idles@female_a")
    TaskPlayAnim(closestPed, "anim@heists@heist_corona@team_idles@female_a", "idle", 8.0, 8.0, -1, 1, 0, false, false, false)
    RemoveAnimDict("anim@heists@heist_corona@team_idles@female_a")
  end
end)
