--[[
    LEVEL 1 BEGINNER GUIDE - Tackle

    Lets on-duty police, prison guards near the prison, and border force tackle
    nearby valid players with LEFT SHIFT + G.

    Server events kept unchanged:
      * e17f0a16fb - ask server to tackle the target player
      * 8913dc97ca - this client is being tackled by a source player
      * 11c53fdb49 - this client performs the tackle animation
]]

local KEYS = {
  LEFTSHIFT = 21,
  G = 47
}

local TACKLE_ANIM_DICT = "missmic2ig_11"
local TACKLER_ANIM = "mic_2_ig_11_intro_goon"
local TACKLED_ANIM = "mic_2_ig_11_intro_p_one"

local isTackling = false
local isBeingTackled = false
local lastTackleTime = 0
local shouldRagdollFromTackle = false

local function loadTackleAnimDict()
  RequestAnimDict(TACKLE_ANIM_DICT)

  while not HasAnimDictLoaded(TACKLE_ANIM_DICT) do
    Citizen.Wait(10)
  end
end

RegisterNetEvent("8913dc97ca", function(tacklerServerId)
  isBeingTackled = true

  TriggerEvent("56e6172373", false)

  local playerPed = CMG.getPlayerPed()
  local tacklerPed = GetPlayerPed(GetPlayerFromServerId(tacklerServerId))

  loadTackleAnimDict()

  tCMG.setCanAnim(false)

  AttachEntityToEntity(
    CMG.getPlayerPed(),
    tacklerPed,
    11816,
    0.25,
    0.5,
    0.0,
    0.5,
    0.5,
    180.0,
    false,
    false,
    false,
    false,
    2,
    false
  )

  TaskPlayAnim(playerPed, TACKLE_ANIM_DICT, TACKLED_ANIM, 8.0, -8.0, 3000, 0, 0, false, false, false)
  RemoveAnimDict(TACKLE_ANIM_DICT)

  Citizen.Wait(3000)

  DetachEntity(CMG.getPlayerPed(), true, false)
  tCMG.setCanAnim(true)

  shouldRagdollFromTackle = true
  Citizen.Wait(3000)
  shouldRagdollFromTackle = false

  isBeingTackled = false
end)

function CMG.isPedBeingTackled()
  return shouldRagdollFromTackle
end

RegisterNetEvent("11c53fdb49", function()
  local playerPed = CMG.getPlayerPed()

  loadTackleAnimDict()
  tCMG.setCanAnim(false)

  TaskPlayAnim(playerPed, TACKLE_ANIM_DICT, TACKLER_ANIM, 8.0, -8.0, 3000, 0, 0, false, false, false)
  RemoveAnimDict(TACKLE_ANIM_DICT)

  Citizen.Wait(3000)

  isTackling = false
  tCMG.setCanAnim(true)
end)

local function isValidTackleTarget(jobType, jobName, playerIndex)
  if jobType ~= "metpd" then
    return true
  end

  if jobName == "CID" then
    local playerPed = GetPlayerPed(playerIndex)

    if playerPed ~= 0 then
      local vestDrawable = GetPedDrawableVariation(playerPed, 9)
      local requiresPolicePermission = CMG.doesClothingDrawableRequirePermission(
        CMG.getModelGender(playerPed),
        "Vests",
        vestDrawable,
        "police"
      )

      if not requiresPolicePermission then
        return true
      end
    end
  end

  return false
end

local function findClosestTackleTarget()
  local closestDistance = 2.0
  local closestServerId = nil

  for _, playerIndex in ipairs(GetActivePlayers()) do
    if playerIndex ~= PlayerId() then
      local serverId = GetPlayerServerId(playerIndex)
      local userId = CMG.clientGetUserIdFromSource(serverId)
      local jobType, jobName = CMG.getJobType(userId)

      if isValidTackleTarget(jobType, jobName, playerIndex) and jobType ~= "hmp" and jobType ~= "borderforce" then
        local targetCoords = GetEntityCoords(GetPlayerPed(playerIndex), true)
        local distance = #(targetCoords - CMG.getPlayerCoords())

        if distance < closestDistance then
          closestDistance = distance
          closestServerId = serverId
        end
      end
    end
  end

  return closestServerId
end

local function canUseTackle()
  if CMG.hasClientPermission("police.onduty.permission") then
    return true
  end

  if CMG.hasClientPermission("prisonguard.onduty.permission") and CMG.isPlayerNearPrison() then
    return true
  end

  return CMG.hasClientPermission("borderforce.onduty.permission")
end

local function updateTackleControls()
  if shouldRagdollFromTackle then
    SetPedToRagdoll(CMG.getPlayerPed(), 1000, 1000, 0, false, false, false)
  end

  if not canUseTackle() then
    return
  end

  if not IsControlPressed(0, KEYS.LEFTSHIFT) or not IsControlPressed(0, KEYS.G) then
    return
  end

  if isTackling or GetGameTimer() - lastTackleTime <= 10000 then
    return
  end

  if GetEntityHealth(PlayerPedId()) <= 102 or CMG.isKnockedOut() then
    return
  end

  local targetServerId = findClosestTackleTarget()
  if not targetServerId or isTackling or isBeingTackled then
    return
  end

  local targetPlayerIndex = GetPlayerFromServerId(targetServerId)
  if IsPedInAnyVehicle(CMG.getPlayerPed(), true) or IsPedInAnyVehicle(GetPlayerPed(targetPlayerIndex), true) then
    return
  end

  isTackling = true
  lastTackleTime = GetGameTimer()
  TriggerServerEvent("e17f0a16fb", targetServerId)
end

CMG.createThreadOnTick(updateTackleControls, "Tackling")
