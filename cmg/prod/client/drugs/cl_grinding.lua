--[[
    BEGINNER READABILITY PASS
    =========================
    This Lua file has been reviewed by the automated readability pass.
    Decompiled temporary identifiers were normalized into clearer role names.
    Runtime strings (events, exports, keys, labels, hashes, etc.) were preserved.

    Common fallback names:
      localValue#       = short-lived local value
      workingValue#     = temporary value/function
      dataCollection#   = table/list/object-like data
      text#             = text value
      number#           = numeric value
      stateFlag#        = true/false state
      cmgOperation#     = temporary CMG function/value
      rageUiOperation#  = temporary RageUI function/value
      eventHandler#     = event registration/handler
      backgroundThread# = thread/CreateThread reference
]]
local actionInProgress = false
local grindingEnabled = false
local playerInGrindingArea = false
local lsdMiningAreaDiscovered = false
local lastGrindingRequestAt = 0

local GRINDER_AREAS = {
  Heroin = {
    mining = { position = vector3(2304.98828125, 5135.8110351563, 51.296546936035), radius = 100 },
    processing = { position = vector3(1580.9086914062, 3581.8850097656, 34.838912963867), radius = 10 }
  },
  LSD = {
    mining = { position = vector3(5382.7719726562, -5251.4077148438, 34.086650848389), radius = 100 },
    processing = { position = vector3(-2087.8676757812, 2630.2211914062, 3.083966255188), radius = 35 },
    refinery = { position = vector3(481.53744506836, -3254.2009277344, 6.069260597229), radius = 35 }
  },
  Gold = {
    mining = { position = vector3(-593.01190185546, 2077.3544921875, 131.38098144532), radius = 10 },
    processing = { position = vector3(2711.3342285156, 1519.6458740234, 24.500577926636), radius = 50 }
  },
  Diamond = {
    mining = { position = vector3(382.52517700195, 2893.7443847656, 43.554821014404), radius = 100 },
    processing = { position = vector3(2645.3518066406, 2814.0886230469, 33.947082519531), radius = 100 }
  }
}

local LSD_CHICKEN_POSITIONS = {
  vector3(-2538.2626953125, 2538.5344238281, 1.5569897890091),
  vector3(-2539.4194335938, 2539.9475097656, 1.7244160175323),
  vector3(-2538.71484375, 2543.5520019531, 1.0692403316498),
  vector3(-2533.0373535156, 2542.5346679688, 0.32451114058495),
  vector3(-2527.6525878906, 2537.4482421875, 0.56682348251343),
  vector3(-2523.6909179688, 2529.111328125, 1.4954501390457),
  vector3(-2525.0510253906, 2531.9443359375, 0.9762516617775),
  vector3(-2526.4099121094, 2525.73828125, 1.6228685379028),
  vector3(-2533.9858398438, 2521.1958007813, 3.1568129062653),
  vector3(-2543.078125, 2522.0473632813, 3.0881731510162),
  vector3(-2550.4807128906, 2524.4438476563, 3.1460916996002),
  vector3(-2553.2941894531, 2529.9609375, 2.8802394866943),
  vector3(-2530.7827148438, 2530.3264160156, 1.5112105607986),
  vector3(-2530.287109375, 2523.9948730469, 2.4006836414337),
  vector3(-2521.775390625, 2524.0747070313, 1.6176110506058)
}

function CMG.getGrindingAreas()
  local areas = {}

  for _, drugAreas in pairs(GRINDER_AREAS) do
    for _, area in pairs(drugAreas) do
      table.insert(areas, area)
    end
  end

  return areas
end

function CMG.isInGrindingArea()
  return playerInGrindingArea
end

local function getActionDuration(duration)
  if duration and duration >= 1 then
    return duration
  end

  if CMG.isPlatClub() then
    return 7500
  end

  return 10000
end

local function startProgressBar(duration)
  CreateThread(function()
    CMG.startCircularProgressBar("", duration, nil, function()
      -- The original callback was empty.
    end)
  end)
end

local function attachFemaleClipboard(playerPed)
  local animDict = "amb@world_human_clipboard@male@base"
  CMG.loadAnimDict(animDict)
  TaskPlayAnim(playerPed, animDict, "base", 8.0, 8.0, -1, 1, 1.0, false, false, false)
  RemoveAnimDict(animDict)

  local clipboardModel = 1027109416
  CMG.loadModel(clipboardModel)

  local clipboard = CreateObject(clipboardModel, 0.0, 0.0, 0.0, false, false, false)
  SetModelAsNoLongerNeeded(clipboardModel)
  AttachEntityToEntity(
    clipboard,
    playerPed,
    GetPedBoneIndex(playerPed, 26610),
    -0.05,
    -0.05,
    0.0,
    0.0,
    20.0,
    -110.0,
    false,
    false,
    false,
    true,
    2,
    false
  )

  return clipboard
end

RegisterNetEvent("29863bd721", function(scenarioName, useSmokeEffect, duration)
  if actionInProgress then
    return
  end

  actionInProgress = true

  local startedAt = GetGameTimer()
  local playerPed = PlayerPedId()
  local startingCoords = CMG.getPlayerCoords()
  local startingHeading = GetEntityHeading(playerPed)
  local attachedClipboard = 0

  if scenarioName == "WORLD_HUMAN_CLIPBOARD" then
    if CMG.getModelGender() == "female" then
      attachedClipboard = attachFemaleClipboard(playerPed)
    end
  else
    TaskStartScenarioInPlace(playerPed, scenarioName, 0, true)
  end

  local smokeFx = nil

  if useSmokeEffect then
    CMG.loadPtfx("core")
    UseParticleFxAsset("core")

    local playerCoords = GetEntityCoords(playerPed)
    smokeFx = StartParticleFxLoopedAtCoord(
      "ent_amb_smoke_foundry",
      playerCoords.x,
      playerCoords.y,
      playerCoords.z - 3,
      0.0,
      0.0,
      0.0,
      1.0,
      false,
      false,
      false,
      false
    )

    RemoveNamedPtfxAsset("core")
  end

  local actionDuration = getActionDuration(duration)
  startProgressBar(actionDuration)

  while startedAt + actionDuration > GetGameTimer() do
    Wait(0)
  end

  if attachedClipboard ~= 0 then
    DeleteEntity(attachedClipboard)
  end

  ClearPedTasksImmediately(playerPed)
  SetEntityHeading(playerPed, startingHeading)
  SetEntityCoordsNoOffset(playerPed, startingCoords.x, startingCoords.y, startingCoords.z, true, false, false)

  if smokeFx then
    RemoveParticleFx(smokeFx, false)
  end

  actionInProgress = false
end)

RegisterNetEvent("7418fc87b2", function()
  if actionInProgress then
    tCMG.notify("~r~Mining currently in progress.")
    return
  end

  actionInProgress = true

  local startedAt = GetGameTimer()
  local animDict = "melee@large_wpn@streamed_core"

  RequestAnimDict(animDict)
  while not HasAnimDictLoaded(animDict) do
    Wait(0)
  end

  local playerPed = CMG.getPlayerPed()
  local pickaxeModel = CMG.loadModel(260873931)

  CMG.requestEntitySpawn("grinding_pickaxe")

  local pickaxe = CreateObject(pickaxeModel, 0, 0, 0, true, true, true)
  AttachEntityToEntity(
    pickaxe,
    playerPed,
    GetPedBoneIndex(playerPed, 57005),
    0.18,
    -0.02,
    -0.02,
    350.0,
    100.0,
    140.0,
    true,
    true,
    false,
    true,
    1,
    true
  )
  SetModelAsNoLongerNeeded(pickaxeModel)

  local actionDuration = getActionDuration()
  startProgressBar(actionDuration)

  while startedAt + actionDuration > GetGameTimer() do
    while IsEntityPlayingAnim(CMG.getPlayerPed(), animDict, "ground_attack_on_spot", 3) == 1 do
      Wait(0)
    end

    TaskPlayAnim(playerPed, animDict, "ground_attack_on_spot", 8.0, 8.0, 1250, 80, 0, false, false, false)
    Wait(0)
  end

  RemoveAnimDict(animDict)
  DeleteEntity(pickaxe)
  ClearPedTasksImmediately(playerPed)
  actionInProgress = false
end)

local function deleteLooseClipboards()
  for _, object in pairs(GetGamePool("CObject")) do
    if GetEntityModel(object) == 1027109416 then
      SetEntityAsMissionEntity(object, false, false)
      DeleteEntity(object)
    end
  end
end

local function canUseGrindingMode()
  local playerPed = PlayerPedId()

  if CMG.getPlayerVehicle() ~= 0 then
    return false
  end

  if GetEntityHealth(playerPed) <= 102 then
    return false
  end

  if GetEntitySpeed(playerPed) >= 5.0 then
    return false
  end

  if CMG.isEmergencyService() or CMG.hasClientGroup("Vigilante") then
    return false
  end

  return true
end

local function setGrindingMode(enabled)
  if enabled and not canUseGrindingMode() then
    return
  end

  grindingEnabled = enabled
  notify((enabled and "~g~" or "~r~") .. "Grinding has been toggled " .. (enabled and "on." or "off."))
  clearNativeText()
end

local function selectedEntityBlocksGrinding()
  local selectedEntity = CMG.getSelectedEntity()

  if not selectedEntity or not DoesEntityExist(selectedEntity) then
    return false
  end

  return CMG.isLootbagModel(GetEntityModel(selectedEntity))
end

local function grindingAreaEnter(areaData)
  playerInGrindingArea = true
  areaData.nearby = true

  if not lsdMiningAreaDiscovered and areaData.drug == "LSD" and areaData.type == "mining" then
    lsdMiningAreaDiscovered = true
  end
end

local function grindingAreaExit(areaData)
  playerInGrindingArea = false
  areaData.nearby = false
  grindingEnabled = false
end

local function grindingAreaTick(areaData)
  if not areaData.nearby then
    return
  end

  if grindingEnabled and not canUseGrindingMode() then
    setGrindingMode(false)
  end

  if IsControlJustReleased(0, 38) then
    setGrindingMode(not grindingEnabled)
  end

  if not grindingEnabled then
    return
  end

  drawNativeText("~g~Grinding mode enabled.")

  if selectedEntityBlocksGrinding() or actionInProgress then
    return
  end

  deleteLooseClipboards()

  if GetGameTimer() - lastGrindingRequestAt > 1000 then
    TriggerServerEvent("90f12939da", areaData.drug, areaData.type)
    lastGrindingRequestAt = GetGameTimer()
  end
end

AddEventHandler("CMG:onClientSpawn", function(_, hasSpawned)
  if not hasSpawned then
    return
  end

  for drugName, drugAreas in pairs(GRINDER_AREAS) do
    for areaType, area in pairs(drugAreas) do
      CMG.createArea(
        drugName .. "_" .. areaType,
        area.position,
        area.radius,
        6,
        grindingAreaEnter,
        grindingAreaExit,
        grindingAreaTick,
        {
          drug = drugName,
          type = areaType,
          nearby = false
        }
      )
    end
  end
end)

RegisterNetEvent("772437c583", function()
  notify("~r~You can not grind any more as your inventory is full.")
  setGrindingMode(false)
end)

Citizen.CreateThread(function()
  while not lsdMiningAreaDiscovered do
    Wait(100)
  end

  local chickenModel = CMG.loadModel("a_c_hen")

  for _, coords in pairs(LSD_CHICKEN_POSITIONS) do
    local chicken = CreatePed(5, chickenModel, coords.x, coords.y, coords.z, 0.0, false, true)
    SetEntityInvincible(chicken, true)
    SetBlockingOfNonTemporaryEvents(chicken, true)
  end

  SetModelAsNoLongerNeeded(chickenModel)
end)
