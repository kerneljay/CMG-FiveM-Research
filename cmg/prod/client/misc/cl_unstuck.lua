local restrictedUnstuckZones = {
  { coords = vector3(3533.4428710938, 3713.8090820313, 36.17896270752), radius = 150 },
  { coords = vector3(1459.3325195313, 6350.8974609375, 23.534168243408), radius = 150 },
  { coords = vector3(1359.7745361328, 4371.7626953125, 44.287654876709), radius = 150 },
  { coords = vector3(2506.5634765625, -390.224609375, 94.119445800781), radius = 150 },
  { coords = vector3(-1498.1591796875, -215.69320678711, 50.195583343506), radius = 20 },
  { coords = vector3(-3171.8498535156, 1085.7032470703, 20.838762283325), radius = 45 }
}

local lastUtilityCommandTime = 0
local resetCommandRunning = false

local function notifyUtilityBlocked()
  CMG.notifyPicture(
    "CHAR_BLOCKED",
    "CHAR_BLOCKED",
    "You are unable to use this right now. Use /calladmin if you still need assistance.",
    "CMG",
    "Utilities",
    nil,
    nil
  )
end

local function isInsideRestrictedUnstuckZone(coords)
  for _, zone in ipairs(restrictedUnstuckZones) do
    if #(coords - zone.coords) < zone.radius then
      return true
    end
  end

  return false
end

local function hasPedAttachedToPlayer()
  local playerPed = PlayerPedId()

  for _, ped in pairs(GetGamePool("CPed")) do
    if GetEntityAttachedTo(ped) == playerPed then
      return true
    end
  end

  return false
end

local function isUtilityCommandBlocked()
  local playerPed = PlayerPedId()

  if CMG.inEvent() then
    return true
  end

  if CMG.getPlayerCombatTimer() > 0 then
    return true
  end

  if isInsideRestrictedUnstuckZone(CMG.getPlayerCoords()) then
    return true
  end

  if CMG.getPlayerVehicle() ~= 0 then
    return true
  end

  if GetGameTimer() - lastUtilityCommandTime < 10000 then
    return true
  end

  if hasPedAttachedToPlayer() then
    return true
  end

  if GetEntityAttachedTo(playerPed) ~= 0 then
    return true
  end

  if CMG.inOrganHesit() then
    return true
  end

  if CMG.isPlayingEmote() then
    return true
  end

  if globalInPrison then
    return true
  end

  return tCMG.canAnim() > 0
end

local function waitForResetSafetyWindow()
  local startedAt = GetGameTimer()

  while GetGameTimer() - startedAt < 3000 do
    if isUtilityCommandBlocked() then
      return false
    end

    Citizen.Wait(0)
  end

  return true
end

local function findSurfaceTeleportPosition()
  local playerPed = PlayerPedId()
  local playerCoords = CMG.getPlayerCoords()
  local foundNode, nodeCoords = GetNthClosestVehicleNode(playerCoords.x, playerCoords.y, playerCoords.z, 1)

  if CMG.getPlayerCombatTimer() > 0 then
    return false, nodeCoords
  end

  if GetGameTimer() - lastUtilityCommandTime < 10000 then
    return false, nodeCoords
  end

  if not foundNode then
    return false, nodeCoords
  end

  if isInsideRestrictedUnstuckZone(playerCoords) then
    return false, nodeCoords
  end

  if IsEntityInWater(playerPed) then
    return false, nodeCoords
  end

  if IsPedInAnyVehicle(playerPed, false) then
    return false, nodeCoords
  end

  if GetRoomKeyFromEntity(playerPed) ~= 0 then
    return false, nodeCoords
  end

  if #(playerCoords - nodeCoords) < 0.5 then
    return false, nodeCoords
  end

  return true, nodeCoords
end

local function playUnstuckCountdown(countdownSeconds, startCoords, targetCoords)
  local countdownActive = true
  local cancelled = false
  local playerPed = PlayerPedId()

  Citizen.CreateThread(function()
    while countdownSeconds ~= -1 do
      if countdownSeconds > 0 then
        PlaySoundFrontend(-1, "3_2_1", "HUD_MINI_GAME_SOUNDSET", true)
      else
        PlaySoundFrontend(-1, "Countdown_GO", "DLC_SR_TR_General_Sounds", false)
        ClearPedTasksImmediately(playerPed)
      end

      Wait(1000)
      countdownSeconds = countdownSeconds - 1

      if cancelled then
        countdownSeconds = -1
      end
    end

    if cancelled then
      CMG.notifyPicture(
        "polnotification",
        "notification",
        "You moved during the countdown so the teleportation was cancelled.",
        "CMG",
        "Utilities",
        nil,
        nil
      )
    else
      DoScreenFadeOut(350)
      Wait(500)
      SetEntityCoords(playerPed, targetCoords.x, targetCoords.y, targetCoords.z + 1.5, false, false, false, false)
      Wait(500)
      DoScreenFadeIn(500)

      CMG.notifyPicture(
        "polnotification",
        "notification",
        "Attempting to telport to surface...\n\nIf you are still not on the surface please use /calladmin.",
        "CMG",
        "Utilities",
        nil,
        nil
      )

      TriggerServerEvent("021f583c2c", startCoords, targetCoords)
    end

    countdownActive = false
    cancelled = false
  end)

  Citizen.CreateThread(function()
    local warningScaleform = Scaleform("mp_big_message_freemode")

    while true do
      Wait(0)

      if IsControlJustReleased(0, 73) then
        cancelled = true
        ClearPedTasksImmediately(playerPed)
      end

      if countdownActive then
        local playerCoords = CMG.getPlayerCoords()
        local stillAtStart = #(playerCoords - startCoords) < 0.5
        local alreadyAtTarget = #(playerCoords - targetCoords) < 0.5

        DisablePlayerFiring(PlayerId(), true)
        DisableControlAction(1, 140, true)
        DisableControlAction(1, 141, true)
        DisableControlAction(1, 142, true)

        if (stillAtStart or alreadyAtTarget) and not cancelled and countdownSeconds > -1 then
          warningScaleform.RunFunction("SHOW_SHARD_WASTED_MP_MESSAGE", {
            "~r~DONT MOVE",
            "You will be telported to the surface in " .. countdownSeconds .. " seconds."
          })
          warningScaleform.Render2D()

          playerPed = PlayerPedId()

          if not IsEntityPlayingAnim(playerPed, "timetable@amanda@ig_4", "ig_4_base", 3) and not cancelled then
            TaskPlayAnim(playerPed, "timetable@amanda@ig_4", "ig_4_base", 8.0, -8.0, -1, 0, 0.0, false, false, false)
          end
        elseif countdownSeconds > -1 then
          cancelled = true

          if warningScaleform then
            BeginScaleformMovieMethod(warningScaleform.Handle, "SHOW_SHARD_WASTED_MP_MESSAGE")
            BeginTextCommandScaleformString("STRING")
            ScaleformMovieMethodAddParamTextureNameString("~r~CANCELLED")
            ScaleformMovieMethodAddParamTextureNameString("You moved during the countdown.")
            EndTextCommandScaleformString()
            EndScaleformMovieMethod()
            DrawScaleformMovieFullscreen(warningScaleform.Handle, 255, 255, 255, 255, 0)
          end

          break
        else
          break
        end
      end
    end
  end)
end

RegisterCommand("unstuck", function()
  local playerPed = PlayerPedId()
  local canTeleport, targetCoords = findSurfaceTeleportPosition()

  if CMG.inEvent() then
    return
  end

  if not canTeleport then
    notifyUtilityBlocked()
    return
  end

  lastUtilityCommandTime = GetGameTimer()
  CMG.loadAnimDict("timetable@amanda@ig_4")
  TaskPlayAnim(playerPed, "timetable@amanda@ig_4", "ig_4_base", 8.0, -8.0, -1, 0, 0.0, false, false, false)
  RemoveAnimDict("timetable@amanda@ig_4")
  Wait(1000)

  playUnstuckCountdown(45, CMG.getPlayerCoords(), targetCoords)
end, false)

RegisterCommand("reset", function()
  if resetCommandRunning then
    notify("~r~Command in progress, please wait.")
    return
  end

  resetCommandRunning = true
  notify("~y~Please wait 3 seconds...")

  if not waitForResetSafetyWindow() then
    notifyUtilityBlocked()
  else
    lastUtilityCommandTime = GetGameTimer()

    local originalCoords = CMG.getPlayerCoords()
    local playerPed = PlayerPedId()
    local selectedWeapon = GetSelectedPedWeapon(playerPed)

    tCMG.teleport(254.61375427246, 7424.9809570312, 16.024713516235)
    Citizen.Wait(200)
    tCMG.teleport(originalCoords.x, originalCoords.y, originalCoords.z)
    Citizen.Wait(100)
    SetCurrentPedWeapon(playerPed, selectedWeapon, true)
  end

  resetCommandRunning = false
end, false)
