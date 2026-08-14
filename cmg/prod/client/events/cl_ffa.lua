--[[
    LEVEL 1 BEGINNER GUIDE - FFA

    Client-side Free For All minigame logic.

    The server starts/stops the event with hashed network events. This file
    keeps those hashes unchanged and gives the local match state readable names.
]]

local ffaConfig = CMG.loadModule("cfg/events/cfg_ffa")

local matchState = {}
local scoreboard = {}
local selectedWeapon = nil

local _, ffaRelationshipGroup = AddRelationshipGroup("FFA_FFA")

local function getRandomTriathlonIdleSuffix()
  return string.char(96 + math.random(1, 5))
end

Citizen.CreateThread(function()
  CMG.registerMinigameCleanupHandler("FFA", function()
    matchState.state = "ended"
    scoreboard = {}

    CMG.setSwitchGunEnabled(true)
    CMG.cleanupRockstarMaps()
    CMG.enableMinigamePlayerBlips(false)
    CMG.clearAllPickups()
    SetRelationshipBetweenGroups(0, ffaRelationshipGroup, ffaRelationshipGroup)
    SetPedRelationshipGroupHash(PlayerPedId(), 1862763509)
    SetLocalPlayerAsGhost(false)
    ResetGhostedEntityAlpha()
    CMG.setEventRespawnPosition()
    BusyspinnerOff()
    SetPlayerControl(PlayerId(), true, 0)
  end)
end)

local function refreshMatchPickups(pickupDefinitions)
  if #pickupDefinitions == 0 then
    return
  end

  CreateThread(function()
    while matchState.state ~= "ended" do
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

RegisterNetEvent("1215413e36", function(mapName, rockstarMapName, spawnPosition, bounds, pickupDefinitions, singleWeaponMode, startImmediately)
  matchState.mapname = mapName
  matchState.state = "loading"
  matchState.spawn = spawnPosition
  matchState.singleWeaponMode = singleWeaponMode

  local hasLoadedForMinimumTime = false
  SetTimeout(1000, function()
    hasLoadedForMinimumTime = true
  end)

  if rockstarMapName then
    CMG.loadClientRockstarMap(rockstarMapName, false)
  end

  local playerPed = PlayerPedId()

  CMG.setEventRespawnPosition(spawnPosition)
  SetEntityCoordsNoOffset(playerPed, spawnPosition.x, spawnPosition.y, spawnPosition.z, true, false, false)
  SetEntityHeading(playerPed, spawnPosition.w)
  FreezeEntityPosition(playerPed, true)

  matchState.bounds = bounds
  CMG.setMinigameBounds(bounds)

  matchState.pickups = {}
  refreshMatchPickups(pickupDefinitions)

  if startImmediately then
    TriggerEvent("0b650ac58b")
    return
  end

  while not hasLoadedForMinimumTime do
    Wait(0)
  end
end)

RegisterNetEvent("0b650ac58b", function()
  SetLocalPlayerAsGhost(true)
  SetEntityAlpha(PlayerPedId(), 155, false)
  CMG.setSwitchGunEnabled(false)
  CMG.stopEventSequence()
  currentEvent.drawPlayersTimeBar = false

  matchState.state = "choosingcharacter"
  BusyspinnerOff()

  local playerPed = PlayerPedId()
  local forwardVector, rightVector, upVector, position = GetEntityMatrix(playerPed)
  local cameraPosition = forwardVector * 2.0 + rightVector * 0.0 + upVector * 0.5 + position

  matchState.camera = CreateCamWithParams(
    "DEFAULT_SCRIPTED_CAMERA",
    cameraPosition.x,
    cameraPosition.y,
    cameraPosition.z,
    0.0,
    0.0,
    0.0,
    70.0,
    false,
    2
  )

  SetCamActive(matchState.camera, true)
  PointCamAtCoord(matchState.camera, matchState.spawn.x, matchState.spawn.y, matchState.spawn.z)
  RenderScriptCams(true, false, 0, false, false)

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
    false
  )

  PlaySoundFrontend(-1, "5s", "MP_MISSION_COUNTDOWN_SOUNDSET", false)
  TriggerEvent("b3cbc4aca5", 3)
  Wait(4000)

  if matchState.state ~= "choosingcharacter" then
    return
  end

  matchState.state = "started"

  CMG.setPlayerCanOpenLeaderboard(true)
  ClearPedTasks(PlayerPedId())
  SetCamActive(matchState.camera, false)
  RenderScriptCams(false, false, 0, false, false)
  DestroyCam(matchState.camera, false)
  DestroyCam(matchState.camera2, false)
  CMG.enableMinigamePlayerBlips(true)
  CMG.enableMinigamePlayerTags(true, true)
  SetPedRelationshipGroupHash(PlayerPedId(), ffaRelationshipGroup)
  SetRelationshipBetweenGroups(5, ffaRelationshipGroup, ffaRelationshipGroup)
  FreezeEntityPosition(PlayerPedId(), false)

  SetTimeout(3000, function()
    SetLocalPlayerAsGhost(false)
    ResetEntityAlpha(PlayerPedId())
  end)

  CreateThread(function()
    if not matchState.singleWeaponMode then
      if IsUsingKeyboard(0) then
        CMG.announceMpBigMsg("PRESS B TO OPEN BUY MENU", "", 5000, true)
      else
        CMG.announceMpBigMsg("PRESS R1 TO OPEN BUY MENU", "", 5000, true)
      end
    else
      CMG.TriggerServerCallback("29d4ac1c5d")
    end
  end)

  while matchState.state == "started" do
    local buyMenuControl = IsUsingKeyboard(0) and 29 or 44

    if IsControlJustPressed(0, buyMenuControl) and not matchState.singleWeaponMode then
      CMG.openRadialMenu("buyWeaponsFFA")
    end

    CMG.disableMeleeControls()
    DisableFirstPersonCamThisFrame()
    DisableControlAction(0, 23, false)
    DisableControlAction(0, 75, false)
    Citizen.Wait(0)
  end
end)

local function getScoreboardIndex(source)
  for index, playerScore in pairs(scoreboard) do
    if playerScore.source == source then
      return index
    end
  end
end

RegisterNetEvent("a90bb588a8", function(source, name, points)
  local scoreboardIndex = getScoreboardIndex(source)

  if scoreboardIndex then
    scoreboard[scoreboardIndex].points = points
  else
    table.insert(scoreboard, {
      source = source,
      points = points,
      name = name
    })
  end

  table.sort(scoreboard, function(left, right)
    return left.points > right.points
  end)
end)

RegisterNetEvent("c07ea3b157", function(source)
  local scoreboardIndex = getScoreboardIndex(source)

  if scoreboardIndex then
    table.remove(scoreboard, scoreboardIndex)
  end
end)

CreateThread(function()
  while true do
    if matchState.state == "started" then
      local timerBars = CMG.createTimerBars()

      for index = 3, 1, -1 do
        local playerScore = scoreboard[index]

        if playerScore then
          timerBars.push(CMG.getPlayerColour(playerScore.source) .. playerScore.name .. "~w~", playerScore.points .. "/20")
        end
      end

      timerBars.draw()
    end

    Wait(0)
  end
end)

local function requestWeapon(weaponName)
  selectedWeapon = weaponName
  CMG.TriggerServerCallback("29d4ac1c5d", weaponName)
end

Citizen.CreateThread(function()
  CMG.addRadialMenuHandler("buyWeaponsFFA", requestWeapon)
end)

AddEventHandler("5dac3d7c66", function()
  if matchState.state ~= "started" then
    return
  end

  ClearTimecycleModifier()

  if not matchState.singleWeaponMode then
    notify("~b~Press [B] to open the buy menu")
  end

  Wait(1000)

  if matchState.singleWeaponMode then
    requestWeapon()
  elseif selectedWeapon then
    requestWeapon(selectedWeapon)
  end

  SetLocalPlayerAsGhost(true)
  Wait(3000)
  SetLocalPlayerAsGhost(false)
  ResetGhostedEntityAlpha()

  local spawnpoints = ffaConfig.locations[matchState.mapname].spawnpoints
  local respawnPosition = spawnpoints[math.random(1, #spawnpoints)]

  CMG.setEventRespawnPosition(respawnPosition)
end)
