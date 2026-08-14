--[[
    LEVEL 1 BEGINNER GUIDE - Gun Game

    Client-side Gun Game event logic.

    The server controls the match with hashed network events. This file keeps
    those hashes unchanged and gives the client-side state readable names.
]]

local gunGameConfig = CMG.loadModule("cfg/events/cfg_gg")

local matchState = {}
local currentWeaponTier = 1
local currentTierProgress = 0

local _, gunGameRelationshipGroup = AddRelationshipGroup("GG_FFA")

CMG.registerHudTimerBarProvider("gungame", function(timerBar)
  if matchState.state ~= "started" then
    return
  end

  timerBar.push("~b~WEAPON TIER~w~", currentWeaponTier .. "/10")
  timerBar.push("~b~PROGRESS~w~", currentTierProgress .. "/2")
end)

local function getRandomTriathlonIdleSuffix()
  return string.char(96 + math.random(1, 5))
end

local function refreshMatchPickups(pickupDefinitions)
  if #pickupDefinitions == 0 then
    return
  end

  CreateThread(function()
    while matchState.pickups and matchState.state ~= "ended" do
      for _, pickup in pairs(matchState.pickups) do
        CMG.deletePickup(pickup)
      end

      matchState.pickups = {}

      for _, pickupDefinition in pairs(pickupDefinitions) do
        table.insert(matchState.pickups, CMG.createPickup(pickupDefinition.hash, pickupDefinition.position))
      end

      Wait(60000)
    end
  end)
end

RegisterNetEvent("7892140796", function(matchName, mapName, spawnPosition, pickupDefinitions, startImmediately)
  matchState.state = "loading"

  CMG.loadClientRockstarMap(mapName, false)

  matchState.name = matchName
  matchState.pickups = {}

  local playerPed = PlayerPedId()

  CMG.setEventRespawnPosition(spawnPosition)
  SetEntityCoordsNoOffset(playerPed, spawnPosition.x, spawnPosition.y, spawnPosition.z, true, false, false)
  SetEntityHeading(playerPed, spawnPosition.w)
  FreezeEntityPosition(playerPed, true)

  refreshMatchPickups(pickupDefinitions)

  if startImmediately then
    TriggerEvent("9d8183a5b9")
  end
end)

RegisterNetEvent("9d8183a5b9", function()
  SetLocalPlayerAsGhost(true)
  SetEntityAlpha(PlayerPedId(), 155, false)
  SetPedRelationshipGroupHash(PlayerPedId(), gunGameRelationshipGroup)
  SetRelationshipBetweenGroups(5, gunGameRelationshipGroup, gunGameRelationshipGroup)

  CMG.loadAnimDict("mini@triathlon")
  TaskPlayAnim(
    CMG.getPlayerPed(),
    "mini@triathlon",
    "idle_" .. getRandomTriathlonIdleSuffix(),
    8.0,
    8.0,
    -1,
    1,
    0.2,
    false,
    false,
    true
  )

  CMG.setPlayerCanOpenLeaderboard(true)
  SetEntityHealth(PlayerPedId(), 200)
  BusyspinnerOff()
  PlaySoundFrontend(-1, "5s", "MP_MISSION_COUNTDOWN_SOUNDSET", false)
  TriggerEvent("b3cbc4aca5", 5)

  CMG.setSwitchGunEnabled(false)
  CMG.stopEventSequence()
  currentEvent.drawPlayersTimeBar = false

  local countdownStart = GetGameTimer()

  while GetGameTimer() - countdownStart < 5000 do
    if not next(matchState) then
      ClearPedTasks(PlayerPedId())
      SetCamActive(matchState.camera, false)
      RenderScriptCams(false, false, 0, false, false)
      DestroyCam(matchState.camera, false)
      DestroyCam(matchState.camera2, false)
      FreezeEntityPosition(PlayerPedId(), false)
      return
    end

    Wait(0)
  end

  matchState.state = "started"

  ClearPedTasks(PlayerPedId())
  SetCamActive(matchState.camera, false)
  RenderScriptCams(false, false, 0, false, false)
  DestroyCam(matchState.camera, false)
  DestroyCam(matchState.camera2, false)

  CMG.enableMinigamePlayerBlips(true)
  CMG.enableMinigamePlayerTags(true, true)
  CMG.setMinigameBounds(gunGameConfig.locations[matchState.name].bounds)

  FreezeEntityPosition(PlayerPedId(), false)

  SetTimeout(3000, function()
    SetLocalPlayerAsGhost(false)
    ResetEntityAlpha(PlayerPedId())
  end)

  CMG.setHudTimerBarProviderActive("gungame", true)

  while matchState.state == "started" do
    CMG.disableMeleeControls()
    DisableFirstPersonCamThisFrame()
    Citizen.Wait(0)
  end

  CMG.setHudTimerBarProviderActive("gungame", false)
  CMG.setEventRespawnPosition()
end)

Citizen.CreateThread(function()
  CMG.registerMinigameCleanupHandler("Gungame", function()
    CMG.setSwitchGunEnabled(true)
    CMG.enableMinigamePlayerBlips(false)
    CMG.cleanupRockstarMaps()
    CMG.clearAllPickups()
    CMG.setEventRespawnPosition()
    CMG.clearMinigameBounds()

    RemoveAllPedWeapons(PlayerPedId(), false)
    BusyspinnerOff()
    SetPlayerControl(PlayerId(), true, 0)
    SetRelationshipBetweenGroups(0, gunGameRelationshipGroup, gunGameRelationshipGroup)
    SetPedRelationshipGroupHash(PlayerPedId(), 1862763509)

    if matchState.pickups then
      for _, pickup in pairs(matchState.pickups) do
        CMG.deletePickup(pickup)
      end
    end

    currentWeaponTier = 1
    currentTierProgress = 0
    matchState = {}
  end)
end)

RegisterNetEvent("9aa187d545", function()
  matchState.state = "waiting"
  CMG.enableMinigamePlayerBlips(false)
  RemoveAllPedWeapons(PlayerPedId(), false)
end)

RegisterNetEvent("aaefc4fa92", function()
  CreateThread(function()
    SetSpecialAbility(PlayerId(), 2)
    SpecialAbilityActivate(PlayerId())

    Wait(10000)

    SetSpecialAbility(PlayerId(), 3)
    SpecialAbilityActivate(PlayerId())
  end)
end)

RegisterNetEvent("c58a0272ff", function()
  PlaySoundFrontend(-1, "Weapon_Upgrade", "DLC_GR_Weapon_Upgrade_Soundset", false)
  CMG.announceMpBigMsg("~y~WEAPON UPGRADE", "", 1000)
  currentTierProgress = 0
end)

AddEventHandler("5dac3d7c66", function()
  if matchState.state ~= "started" then
    return
  end

  SetLocalPlayerAsGhost(true)
  Wait(4000)

  if not IsPedArmed(PlayerPedId(), 5) then
    TriggerServerEvent("dfc4f9e64d")
  end

  Wait(1000)
  SetLocalPlayerAsGhost(false)
  ResetGhostedEntityAlpha()
end)

RegisterNetEvent("f38733e8a1", function(weaponTier)
  currentWeaponTier = weaponTier
end)

RegisterNetEvent("985340403d", function()
  currentTierProgress = currentTierProgress + 1
end)
