local TASER_RELOAD_ANIM_DICT = "weapons@pistol@ap_pistol_str"
local TASER_RELOAD_ANIM_NAME = "reload_aim"
local TASER_HASHES = { 911657153, 1843015545 }

local taserState = {
  serialNumber = tostring("X" .. math.random(21202574, 49202574)),
  batteryStatus = tostring(math.random(95, 99)),
  cartridges = 2,
  canArc = true,
  barbRipOutActive = false,
  barbRipOutServerId = nil,
  customStunExitsEarly = false,
  customStunActive = false,
  reactivateSlots = {
    { active = false, ped = 0, serverId = 0 },
    { active = false, ped = 0, serverId = 0 }
  }
}

TriggerEvent("chat:addSuggestion", "/rt", "Reload your Taser")

local function showTaserFeedMessage(message)
  RequestStreamedTextureDict("CHAR_ANDREAS", true)

  while not HasStreamedTextureDictLoaded("CHAR_ANDREAS") do
    Wait(0)
  end

  BeginTextCommandThefeedPost("STRING")
  AddTextComponentSubstringPlayerName(message)
  EndTextCommandThefeedPostMessagetext("CHAR_ANDREAS", "CHAR_ANDREAS", false, 1, "Taser X2", "CID")
  EndTextCommandThefeedPostTicker(false, false)
end

local function resetReactivateSlot(slotIndex)
  taserState.reactivateSlots[slotIndex] = {
    active = false,
    ped = 0,
    serverId = 0
  }
end

local function showManualModeFeed()
  if taserState.cartridges == 2 then
    showTaserFeedMessage("~r~MODE: ~w~MANUAL\n\n~y~|25|     |25|\n\n")
  elseif taserState.cartridges == 1 then
    showTaserFeedMessage("~r~MODE: ~w~MANUAL\n\n~y~|25|\n\n")
  else
    showTaserFeedMessage("~r~MODE: ~w~MANUAL\n\nReload Required")
  end
end

local function showArcModeFeed()
  if taserState.cartridges == 2 then
    showTaserFeedMessage("~r~MODE: ~w~ARC\n\n~y~|25|     |25|\n\n")
  elseif taserState.cartridges == 1 then
    showTaserFeedMessage("~r~MODE: ~w~ARC\n\n~y~|25|\n\n")
  else
    showTaserFeedMessage("~r~MODE: ~w~ARC\n\n~y~\n\n")
  end
end

local function isHoldingTaser()
  return table.has(TASER_HASHES, GetSelectedPedWeapon(CMG.getPlayerPed()))
end

local function disconnectReactivateSlot(slotIndex, notificationText)
  local slot = taserState.reactivateSlots[slotIndex]

  if slot.active then
    TriggerServerEvent("47f611b0b4", slot.serverId)
  end

  resetReactivateSlot(slotIndex)
  drawNativeNotification(notificationText)
end

local function disconnectReactivateSlotIfTooFar(slotIndex, playerCoords)
  local slot = taserState.reactivateSlots[slotIndex]

  if not slot.active then
    return
  end

  if #(GetEntityCoords(slot.ped) - playerCoords) > 30.0 then
    disconnectReactivateSlot(slotIndex, "Barbs Disconnected - ~b~Cartridge " .. slotIndex)
  end
end

local function reactivateCartridge(slotIndex, playerCoords)
  local slot = taserState.reactivateSlots[slotIndex]

  if not slot.active then
    return
  end

  if slotIndex == 1 then
    drawNativeNotification("Reactivated cartridge: ~INPUT_SELECT_WEAPON_UNARMED~")
  else
    drawNativeNotification("Reactivated cartridge: \t~INPUT_SELECT_WEAPON_MELEE~")
  end

  TriggerServerEvent("a77761c607", playerCoords, "reactivate")
  TriggerServerEvent("daa8f00d6a", slot.serverId)
end

local function markCartridgeForReactivation(slotIndex, targetPed, targetServerId)
  local slot = taserState.reactivateSlots[slotIndex]

  if slot.active then
    return
  end

  slot.active = true
  slot.ped = targetPed
  slot.serverId = targetServerId
end

local function playReloadAnimation()
  CMG.loadAnimDict(TASER_RELOAD_ANIM_DICT)
  TaskPlayAnim(PlayerPedId(), TASER_RELOAD_ANIM_DICT, TASER_RELOAD_ANIM_NAME, 8.0, -8.0, -1, 49, 1.0, false, false, false)

  local animationLength = GetAnimDuration(TASER_RELOAD_ANIM_DICT, TASER_RELOAD_ANIM_NAME)
  local repeatCount = taserState.cartridges == 0 and 2 or 1

  Citizen.CreateThread(function()
    Citizen.Wait(math.floor(animationLength * 1000.0) * repeatCount)
    RemoveAnimDict(TASER_RELOAD_ANIM_DICT)
    StopAnimTask(PlayerPedId(), TASER_RELOAD_ANIM_DICT, TASER_RELOAD_ANIM_NAME, 1.0)
  end)
end

local function reloadTaser()
  if not isHoldingTaser() then
    showTaserFeedMessage("~r~Error! ~w~You are not holding a taser.")
    return
  end

  if taserState.cartridges < 2 then
    playReloadAnimation()
  end

  MakePedReload(CMG.getPlayerPed())

  if taserState.cartridges == 0 then
    taserState.cartridges = 2

    for slotIndex = 1, 2 do
      local slot = taserState.reactivateSlots[slotIndex]
      if slot.active then
        TriggerServerEvent("47f611b0b4", slot.serverId)
      end

      resetReactivateSlot(slotIndex)
    end

    drawNativeNotification("Taser reload successful")
    showManualModeFeed()
  elseif taserState.cartridges == 1 then
    taserState.cartridges = 2
    resetReactivateSlot(1)
    drawNativeNotification("Taser reload successful")
    showArcModeFeed()
  end
end

RegisterCommand("rt", reloadTaser, false)

RegisterNetEvent("4a97bda3f9", function(serverId)
  taserState.barbRipOutActive = true
  taserState.barbRipOutServerId = serverId
end)

RegisterNetEvent("2a61fb1af7", function()
  if CMG.isStaffedOnClient() then
    return
  end

  showTaserFeedMessage("You are currently being ~b~activated~w~.")
  TriggerEvent("TriggerTazer")
  SetPedToRagdoll(CMG.getPlayerPed(), 5000, 5000, 0, false, false, false)
end)

RegisterNetEvent("e33e58b9e2", function()
  showArcModeFeed()
  TriggerServerEvent("a77761c607", GetEntityCoords(CMG.getPlayerPed()), "arcsound")

  taserState.canArc = false

  SetTimeout(4000, function()
    taserState.canArc = true
  end)
end)

RegisterNetEvent("playTaserSoundClient", function(soundCoords, transactionType)
  local playerCoords = GetEntityCoords(CMG.getPlayerPed(), true)

  if #(playerCoords - soundCoords) <= 15 then
    SendNUIMessage({
      transactionType = transactionType
    })
  end
end)

RegisterNetEvent("26fc9f8bca", function()
  taserState.barbRipOutActive = false
  taserState.barbRipOutServerId = 0
  showTaserFeedMessage("Your taser ~b~barbs ~w~have been ~b~disconnected~w~.")
end)

RegisterNetEvent("e7da235078", function(serverId)
  for slotIndex, slot in ipairs(taserState.reactivateSlots) do
    if slot.serverId == serverId then
      resetReactivateSlot(slotIndex)
      drawNativeNotification("Barbs Ripped Out - ~b~Cartridge " .. slotIndex)
      return
    end
  end
end)

local function handleTaserShot(tickData)
  TriggerServerEvent("a77761c607", tickData.playerCoords, "taser")
  taserState.cartridges = taserState.cartridges - 1

  if taserState.cartridges == 0 then
    notify("~r~Your taser is out of cartridges. Please reload the electroshock bullets.")
  end

  local isAimingAtEntity, targetEntity = GetEntityPlayerIsFreeAimingAt(tickData.playerId)

  if not isAimingAtEntity or not IsEntityAPed(targetEntity) then
    return
  end

  local targetServerId = CMG.getPedServerId(targetEntity)

  if targetServerId == nil then
    return
  end

  TriggerServerEvent("960b66cdca", targetServerId)

  if taserState.cartridges == 1 then
    drawNativeNotification("Press ~INPUT_REPLAY_BACK~ to Reactivate")
    showTaserFeedMessage("~r~MODE: ~w~MANUAL\n\n~y~|25|\n\n")
    markCartridgeForReactivation(1, targetEntity, targetServerId)
  else
    drawNativeNotification("Press ~INPUT_REPLAY_ADVANCE~ to Reactivate")
    showTaserFeedMessage("~r~MODE: ~w~MANUAL\n\nReload Required")
    markCartridgeForReactivation(2, targetEntity, targetServerId)
  end
end

local function handleEmptyTaser(tickData)
  SetPlayerCanDoDriveBy(tickData.playerId, false)
  DisablePlayerFiring(tickData.playerId, true)

  if IsDisabledControlJustPressed(0, 24) or IsDisabledControlJustPressed(0, 257) then
    notify("~r~Your taser is out of cartridges. Please reload the electroshock bullets.")
    PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)
  end
end

local function updateTaserControls(tickData)
  if tickData.vehicle ~= 0 and tickData.vehicle ~= nil then
    return
  end

  disconnectReactivateSlotIfTooFar(1, tickData.playerCoords)
  disconnectReactivateSlotIfTooFar(2, tickData.playerCoords)

  if not table.has(TASER_HASHES, tickData.weapon) then
    return
  end

  if IsControlJustPressed(1, 308) then
    reactivateCartridge(1, tickData.playerCoords)
  elseif IsControlJustPressed(1, 307) then
    reactivateCartridge(2, tickData.playerCoords)
  elseif IsControlJustPressed(1, 121) and taserState.canArc then
    TriggerServerEvent("4ec155a0ea")
  elseif IsControlJustPressed(0, 45) then
    reloadTaser()
  end

  if taserState.cartridges < 1 then
    handleEmptyTaser(tickData)
  elseif IsPedShooting(tickData.playerPed) then
    handleTaserShot(tickData)
  end
end

CMG.createThreadOnTick(updateTaserControls, "Taser")

local function ragdollIfPlayerMoves(durationMs)
  local startedAt = GetGameTimer()
  local lastMovementAt = GetGameTimer()

  while GetGameTimer() - startedAt < durationMs do
    if taserState.customStunExitsEarly then
      break
    end

    local playerPed = PlayerPedId()

    if IsPedRunning(playerPed) or IsPedJumping(playerPed) or GetEntitySpeed(playerPed) > 2.2 then
      if GetGameTimer() - lastMovementAt > 500 then
        SetPedToRagdoll(playerPed, 2500, 2500, 0, false, false, false)
      end
    else
      lastMovementAt = GetGameTimer()
    end

    Citizen.Wait(0)
  end
end

local function watchForBarbRipOut()
  Citizen.CreateThread(function()
    while taserState.barbRipOutActive do
      DisableControlAction(0, 140, true)

      if IsControlJustPressed(1, 38) then
        taserState.barbRipOutActive = false

        if taserState.barbRipOutServerId and taserState.barbRipOutServerId > 0 then
          TriggerServerEvent("778f5e4153", taserState.barbRipOutServerId)
        end

        taserState.barbRipOutServerId = 0
        showTaserFeedMessage("Your ~b~barbs ~w~have now been ~b~ripped out~w~.")
      end

      Wait(0)
    end
  end)
end

local function playCustomStunEffect()
  taserState.customStunActive = true

  local playerPed = CMG.getPlayerPed()

  RequestAnimSet("move_m@drunk@verydrunk")
  while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
    Citizen.Wait(0)
  end

  tCMG.setCanAnim(false)
  SetPedMovementClipset(playerPed, "move_m@drunk@verydrunk", 1)
  RemoveAnimSet("move_m@drunk@verydrunk")
  SetTimecycleModifier("spectator5")
  SetPedIsDrunk(playerPed, true)

  ragdollIfPlayerMoves(15000)

  SetPedMotionBlur(playerPed, true)
  tCMG.setCanAnim(true)
  watchForBarbRipOut()

  local startedAt = GetGameTimer()
  while GetGameTimer() - startedAt < 60000 do
    if taserState.customStunExitsEarly then
      break
    end

    Citizen.Wait(0)
  end

  ClearTimecycleModifier()
  ResetScenarioTypesEnabled()
  ResetPedMovementClipset(playerPed, 0)
  SetPedIsDrunk(playerPed, false)
  SetPedMotionBlur(playerPed, false)

  taserState.customStunExitsEarly = false
  taserState.customStunActive = false
end

function CMG.setStunExitsEarly()
  taserState.customStunExitsEarly = true
end

function CMG.hasCustomStunEffect()
  return taserState.customStunActive
end

Citizen.CreateThread(function()
  SetPedMinGroundTimeForStungun(CMG.getPlayerPed(), 15000)

  while true do
    if IsPedBeingStunned(CMG.getPlayerPed(), 0) then
      playCustomStunEffect()
    end

    Wait(100)
  end
end)
