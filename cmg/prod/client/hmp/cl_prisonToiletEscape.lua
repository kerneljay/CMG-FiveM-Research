--[[
    LEVEL 1 BEGINNER GUIDE - Prison Toilet Escape

    Lets prisoners start the toilet escape minigame when standing near a toilet.

    Events kept unchanged:
      * aee0b08546 - enable local toilet interaction
      * 19f123276f - disable local toilet interaction and cleanup game
      * d73cd69672 - hide/restore local non-networked toilet props by id
]]

local TOILET_MODELS = {
  [305960317] = true,
  [-652984928] = true,
  [-930879665] = true,
  [-1228586030] = true,
  [1872312775] = true,
  [1561564488] = true
}

local interactionEnabled = false
local nearbyToilet = nil
local canInteractWithNearbyToilet = false
local activeScrewGame = nil
local hiddenToiletsById = {}

local function findNearbyToilets(coords, radius)
  local toilets = {}
  radius = radius or 2.0

  for _, object in ipairs(GetGamePool("CObject")) do
    local distance = #(GetEntityCoords(object) - coords)

    if distance < radius and TOILET_MODELS[GetEntityModel(object)] then
      toilets[#toilets + 1] = object
    end
  end

  return toilets
end

local function restoreHiddenToilet(hiddenToilet)
  if hiddenToilet.remove then
    hiddenToilet.remove()
  end

  if hiddenToilet.entity and DoesEntityExist(hiddenToilet.entity) then
    SetEntityVisible(hiddenToilet.entity, true, false)
    SetEntityCollision(hiddenToilet.entity, true, true)
    SetEntityAlpha(hiddenToilet.entity, 255, false)
  end
end

RegisterNetEvent("d73cd69672", function(restoreOnly, coords, toiletId)
  local existingHiddenToilet = hiddenToiletsById[toiletId]

  if existingHiddenToilet then
    restoreHiddenToilet(existingHiddenToilet)
    hiddenToiletsById[toiletId] = nil
  end

  if restoreOnly then
    return
  end

  CreateThread(function()
    local shouldStop = false
    local hiddenToilet = {
      entity = nil
    }

    hiddenToilet.remove = function()
      shouldStop = true
    end

    hiddenToiletsById[toiletId] = hiddenToilet

    while not shouldStop do
      local playerPed = PlayerPedId()
      local playerCoords = GetEntityCoords(playerPed)

      if #(playerCoords - coords) <= 50 then
        for _, object in ipairs(GetGamePool("CObject")) do
          if TOILET_MODELS[GetEntityModel(object)] then
            local state = Entity(object).state

            if not state.isPrisonToilet and not NetworkGetEntityIsNetworked(object) and #(GetEntityCoords(object) - coords) < 3.0 then
              SetEntityVisible(object, false, false)
              SetEntityCollision(object, false, false)
              SetEntityAlpha(object, 0, false)
              hiddenToilet.entity = object
              break
            end
          end
        end
      else
        if hiddenToilet.entity and DoesEntityExist(hiddenToilet.entity) then
          SetEntityVisible(hiddenToilet.entity, true, false)
          SetEntityCollision(hiddenToilet.entity, true, true)
          SetEntityAlpha(hiddenToilet.entity, 255, false)
        end

        hiddenToilet.entity = nil
      end

      Wait(500)
    end
  end)
end)

function CMG_prisonToiletStartGame(toiletEntity)
  if not CMG.isPlayerInPrison() or activeScrewGame then
    return
  end

  local toiletCoords = GetEntityCoords(toiletEntity)
  local toiletHeading = GetEntityHeading(toiletEntity)
  local networkId, toiletId = CMG.TriggerServerCallback("d939d5b1ea", toiletCoords.x, toiletCoords.y, toiletCoords.z, toiletHeading)

  if not networkId then
    tCMG.notify("~r~You need a screwdriver to start the toilet escape. Buy one from the canteen.")
    return
  end

  local timeoutAt = GetGameTimer() + 10000

  while not NetworkDoesNetworkIdExist(networkId) and timeoutAt > GetGameTimer() do
    Wait(0)
  end

  if not NetworkDoesNetworkIdExist(networkId) then
    if toiletId then
      TriggerEvent("d73cd69672", true, toiletCoords, toiletId)
    end

    return
  end

  Wait(300)

  local networkedToilet = NetworkGetEntityFromNetworkId(networkId)
  if not DoesEntityExist(networkedToilet) then
    if toiletId then
      TriggerEvent("d73cd69672", true, toiletCoords, toiletId)
    end

    return
  end

  SetEntityRotation(networkedToilet, 0.0, 0.0, toiletHeading, 2, true)

  if _G.CMG_PrisonToiletScrewGame and _G.CMG_PrisonToiletScrewGame.new then
    activeScrewGame = _G.CMG_PrisonToiletScrewGame.new(networkedToilet)
  else
    activeScrewGame = nil
  end

  if not activeScrewGame then
    if toiletId then
      TriggerEvent("d73cd69672", true, toiletCoords, toiletId)
    end

    return
  end

  activeScrewGame:start()
  activeScrewGame = nil
end

local function enableToiletInteraction(startCallback)
  interactionEnabled = true

  CreateThread(function()
    while interactionEnabled do
      local playerCoords = GetEntityCoords(PlayerPedId())

      if not CMG.isPlayerInPrison() then
        canInteractWithNearbyToilet = false
        nearbyToilet = nil
      else
        local toilets = findNearbyToilets(playerCoords, 2.5)
        nearbyToilet = toilets[1]
        canInteractWithNearbyToilet = nearbyToilet ~= nil
      end

      Wait(200)
    end

    canInteractWithNearbyToilet = false
    nearbyToilet = nil
  end)

  CreateThread(function()
    while interactionEnabled do
      if nearbyToilet and canInteractWithNearbyToilet and CMG.isPlayerInPrison() and IsControlJustPressed(0, 38) then
        canInteractWithNearbyToilet = false
        startCallback(nearbyToilet)
      end

      Wait(0)
    end
  end)

  CreateThread(function()
    while interactionEnabled do
      if canInteractWithNearbyToilet and nearbyToilet and CMG.isPlayerInPrison() then
        drawNativeNotification("Press ~INPUT_CONTEXT~ to start your escape")
      end

      Wait(0)
    end
  end)
end

local function disableToiletInteraction()
  interactionEnabled = false
end

RegisterNetEvent("aee0b08546", function()
  enableToiletInteraction(CMG_prisonToiletStartGame)
end)

RegisterNetEvent("19f123276f", function()
  disableToiletInteraction()

  if activeScrewGame and activeScrewGame.cleanup then
    activeScrewGame:cleanup()
  end

  activeScrewGame = nil
end)
