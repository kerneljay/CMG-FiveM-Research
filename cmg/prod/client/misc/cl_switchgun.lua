--[[
    LEVEL 1 BEGINNER GUIDE - Switch Gun / Holster

    This script adds weapon draw/holster animations.

    Important state:
      * unarmed is the GTA hash for no weapon.
      * lastSelectedWeapon tracks what the weapon wheel selected last frame.
      * holsteredWeapon stores the weapon being put away.
      * timeoutActive temporarily blocks firing when the player cancels an
        animation or tries to skip the holster timing.
]]

local UNARMED_HASH = -1569615261
local DEBUG_WEAPON_HASH = 966099553

local isFiringBlocked = false
local isHolsterAnimationPlaying = false
local timeoutActive = false
local holsteredWeapon = nil
local timeoutRemainingMs = 0
local lastSelectedWeapon = UNARMED_HASH
local switchGunEnabled = true
local phoneDisabledByWeapon = false
local lastVehicle = 0
local debugWeaponsEnabled = false

local HOLSTERED_WEAPON_HASHES = {
  -273849285,
  911657153,
  1843015545,
  1593441988,
  1737195953,
  -1206412243,
  1093864856,
  782720368,
  -976419591,
  1838304326,
  1313457450
}

local INSTANT_WEAPON_HASHES = {
  [-499989876] = true
}

local function blockWeaponsTemporarily(durationMs, notificationText)
  if timeoutActive then
    return
  end

  Citizen.CreateThread(function()
    timeoutActive = true
    timeoutRemainingMs = durationMs

    while timeoutRemainingMs > 0 do
      Wait(1000)
      notify(notificationText)

      timeoutRemainingMs = timeoutRemainingMs - 1000
      isFiringBlocked = true
      holsteredWeapon = nil
    end

    notify("~g~Your timeout has finished, do not try to do that again")

    isFiringBlocked = false
    timeoutActive = false
  end)
end

local function resetAnimStateBeforeHolster()
  CMG.cancelEmote(true)
  tCMG.setCanAnim(false)
end

local function restoreAnimStateAfterHolster()
  tCMG.setCanAnim(true)
end

local function rememberCurrentWeapon(playerPed)
  if timeoutActive then
    return
  end

  isFiringBlocked = false
  isHolsterAnimationPlaying = false

  holsteredWeapon = GetSelectedPedWeapon(playerPed)

  if holsteredWeapon ~= UNARMED_HASH then
    lastSelectedWeapon = holsteredWeapon
  end
end

local function isHolsteredWeapon(weaponHash)
  return table.has(HOLSTERED_WEAPON_HASHES, weaponHash)
end

local function detectWeaponChange(playerPed)
  if GetPedConfigFlag(playerPed, 354, false) then
    return false
  end

  local selectedWeapon = GetSelectedPedWeapon(playerPed)

  if selectedWeapon ~= 0 and selectedWeapon ~= lastSelectedWeapon then
    if selectedWeapon == DEBUG_WEAPON_HASH then
      lastSelectedWeapon = UNARMED_HASH
      return false
    end

    print(string.format(
      "[CMG] Switching from weapon %s to %s.",
      select(2, CMG.resolveHash(lastSelectedWeapon)),
      select(2, CMG.resolveHash(selectedWeapon))
    ))

    lastSelectedWeapon = selectedWeapon
    return true
  end

  return false
end

local function punishAnimationCancel(durationMs, message)
  isHolsterAnimationPlaying = false

  if timeoutRemainingMs < durationMs then
    timeoutRemainingMs = durationMs
  end

  blockWeaponsTemporarily(durationMs, message)
end

local function playLongWeaponDraw(playerPed)
  CMG.loadAnimDict("rcmjosh4")
  CMG.loadAnimDict("reaction@intimidation@cop@unarmed")

  isHolsterAnimationPlaying = true

  SetPedCurrentWeaponVisible(playerPed, false, true, true, true)
  TaskPlayAnim(playerPed, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 50, 2.0, false, false, false)
  RemoveAnimDict("reaction@intimidation@cop@unarmed")

  SetPedCurrentWeaponVisible(playerPed, true, true, true, true)
  Citizen.Wait(250)

  TaskPlayAnim(playerPed, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, false, false, false)
  RemoveAnimDict("rcmjosh4")

  Citizen.Wait(400)
  StopAnimTask(playerPed, "rcmjosh4", "josh_leadout_cop2", 1.0)
end

local function playLongWeaponHolster(playerPed)
  CMG.loadAnimDict("rcmjosh4")
  CMG.loadAnimDict("reaction@intimidation@cop@unarmed")

  TaskPlayAnim(playerPed, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, false, false, false)
  RemoveAnimDict("rcmjosh4")

  Citizen.Wait(500)

  TaskPlayAnim(playerPed, "reaction@intimidation@cop@unarmed", "outro", 8.0, 2.0, -1, 50, 2.0, false, false, false)
  RemoveAnimDict("reaction@intimidation@cop@unarmed")

  Citizen.Wait(60)
  StopAnimTask(playerPed, "reaction@intimidation@cop@unarmed", "outro", 1.0)
end

local function playOneHandedDraw(playerPed)
  isHolsterAnimationPlaying = true

  CMG.loadAnimDict("reaction@intimidation@1h")
  TaskPlayAnim(playerPed, "reaction@intimidation@1h", "intro", 8.0, 2.0, 1700, 48, 10, false, false, false)
  RemoveAnimDict("reaction@intimidation@1h")

  SetPedCurrentWeaponVisible(playerPed, false, true, true, true)
  isFiringBlocked = true

  Citizen.Wait(1300)

  SetPedCurrentWeaponVisible(playerPed, true, true, true, true)
  Citizen.Wait(700)

  StopAnimTask(playerPed, "reaction@intimidation@1h", "intro", 1.0)
  EnableControlAction(0, 25, true)
  rememberCurrentWeapon(playerPed)
end

local function playOneHandedHolster(playerPed)
  CMG.loadAnimDict("reaction@intimidation@1h")
  TaskPlayAnim(playerPed, "reaction@intimidation@1h", "outro", 8.0, 2.0, 1700, 48, 10, false, false, false)
  RemoveAnimDict("reaction@intimidation@1h")

  isFiringBlocked = true

  CMG.setWeapon(playerPed, GetHashKey(holsteredWeapon), true)
  Citizen.Wait(1300)

  CMG.setWeapon(playerPed, UNARMED_HASH, true)
  Citizen.Wait(700)

  StopAnimTask(playerPed, "reaction@intimidation@1h", "outro", 1.0)

  isFiringBlocked = false
  holsteredWeapon = nil
end

local function validateWeaponAfterAnimation(playerPed)
  local selectedWeapon = GetSelectedPedWeapon(playerPed)

  if selectedWeapon ~= UNARMED_HASH and not isHolsteredWeapon(selectedWeapon) then
    punishAnimationCancel(3500, "~r~Do not change weapons to equip quicker! Your weapons have been holstered for 3.5s")
    return false
  end

  if selectedWeapon == UNARMED_HASH then
    rememberCurrentWeapon(playerPed)
  end

  return true
end

local function drawSelectedWeapon(playerPed, selectedWeapon)
  if INSTANT_WEAPON_HASHES[selectedWeapon] then
    rememberCurrentWeapon(playerPed)
  elseif isHolsteredWeapon(selectedWeapon) then
    playLongWeaponDraw(playerPed)
    validateWeaponAfterAnimation(playerPed)
  else
    playOneHandedDraw(playerPed)
  end

  if not phoneDisabledByWeapon then
    CMG.setCanOpenPhone(false)
    phoneDisabledByWeapon = true
  end
end

local function holsterSelectedWeapon(playerPed)
  if holsteredWeapon and INSTANT_WEAPON_HASHES[holsteredWeapon] then
    isFiringBlocked = false
    isHolsterAnimationPlaying = false
    holsteredWeapon = nil
    lastSelectedWeapon = UNARMED_HASH
  elseif isHolsteredWeapon(holsteredWeapon) then
    playLongWeaponHolster(playerPed)
    validateWeaponAfterAnimation(playerPed)
  elseif holsteredWeapon then
    playOneHandedHolster(playerPed)
  end
end

local function updateWeaponWheelLock()
  local playerPed = CMG.getPlayerPed()
  local vehicle = CMG.getPlayerVehicle()
  local selectedWeapon = GetSelectedPedWeapon(playerPed)

  if phoneDisabledByWeapon and selectedWeapon == UNARMED_HASH then
    CMG.setCanOpenPhone(true)
    phoneDisabledByWeapon = false
  end

  if lastVehicle ~= vehicle then
    if vehicle ~= 0 then
      CMG.setWeapon(playerPed, UNARMED_HASH, true)
      lastSelectedWeapon = UNARMED_HASH
    end

    lastVehicle = vehicle
  end

  if timeoutActive then
    CMG.setWeapon(playerPed, UNARMED_HASH, true)
  end

  if isFiringBlocked then
    DisablePlayerFiring(PlayerId(), true)
  end

  if isHolsterAnimationPlaying and IsControlJustPressed(0, 73) then
    punishAnimationCancel(
      3500,
      string.format("~r~Do not press X to cancel the animation! Your weapons have been holstered for %ss", 3.5)
    )
  end

  if GetIsTaskActive(playerPed, 2) then
    if selectedWeapon ~= UNARMED_HASH and not isHolsterAnimationPlaying then
      CMG.setWeapon(playerPed, UNARMED_HASH, true)
      lastSelectedWeapon = UNARMED_HASH
    end

    HudWeaponWheelIgnoreSelection()
    HudWeaponWheelIgnoreControlInput(true)
  else
    HudWeaponWheelIgnoreControlInput(false)
  end
end

CMG.createThreadOnTick(updateWeaponWheelLock, "Gun Holster")

Citizen.CreateThread(function()
  while true do
    local playerPed = CMG.getPlayerPed()

    if not CMG.isInModShop() and switchGunEnabled and not IsPedInAnyVehicle(playerPed, true) then
      while GetIsTaskActive(playerPed, 50) do
        Wait(0)
      end

      Wait(500)

      while GetIsTaskActive(playerPed, 1) do
        Wait(0)
      end

      Wait(500)

      if detectWeaponChange(playerPed) then
        resetAnimStateBeforeHolster()

        local selectedWeapon = GetSelectedPedWeapon(playerPed)

        if selectedWeapon ~= UNARMED_HASH then
          drawSelectedWeapon(playerPed, selectedWeapon)
        else
          holsterSelectedWeapon(playerPed)
        end

        restoreAnimStateAfterHolster()
      end
    end

    Wait(0)
  end
end)

function GetPurgeWeapons()
  TriggerServerEvent("d6e12cd653")
end

CMG.registerCommand("debugweapons", function()
  debugWeaponsEnabled = not debugWeaponsEnabled
  tCMG.notify("~g~Debug weapons now:" .. tostring(debugWeaponsEnabled))
end, false)

function CMG.setWeapon(playerPed, weaponHash, equipNow)
  SetCurrentPedWeapon(playerPed, weaponHash, equipNow or false)

  if debugWeaponsEnabled then
    print("SetCurrentPedWeapon", playerPed, weaponHash, equipNow, "debug", dump(debug.getinfo(2)))
  end
end

function CMG.setSwitchGunEnabled(enabled)
  switchGunEnabled = enabled
end
