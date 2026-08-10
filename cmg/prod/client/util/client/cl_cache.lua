--[[
    Player Info Cache
    =================

    A lot of FiveM natives are called constantly. This file keeps the most
    common local-player values cached so other scripts can ask CMG for them
    without repeating the same native calls everywhere.

    Cached every frame:
      playerPed       = local GTA ped/entity
      currentVehicle  = vehicle the ped is currently in, or 0
      playerId        = local FiveM player index
      playerCoords    = current vector3 position
      isVehicleDriver = true when the ped is in the driver seat
      allVehicles     = current "CVehicle" game-pool list

    Important:
      The original resource deliberately replaces the global PlayerPedId()
      function with a cached getter after saving the native function locally.
]]

-- Save Rockstar/FiveM's real native before replacing the global name.
local nativePlayerPedId = PlayerPedId

local playerPed = 0
local currentVehicle = 0
local playerId = 0
local playerCoords = nil
local isVehicleDriver = false
local allVehicles = {}


local function refreshPlayerInfoCache()
    playerPed =
        nativePlayerPedId()

    currentVehicle =
        GetVehiclePedIsIn(
            playerPed,
            false
        )

    playerId =
        PlayerId()

    playerCoords =
        GetEntityCoords(
            playerPed
        )

    isVehicleDriver =
        GetPedInVehicleSeat(
            currentVehicle,
            -1
        ) == playerPed

    allVehicles =
        GetGamePool("CVehicle")
end


function CMG.forcePlayerInfoCacheRefresh()
    refreshPlayerInfoCache()
end


-- Replace the global native with the cached version.
_G.PlayerPedId = function()
    return playerPed
end


function CMG.getPlayerPed()
    return playerPed
end


function CMG.getPlayerVehicle()
    return
        currentVehicle,
        isVehicleDriver
end


function CMG.getPlayerId()
    return playerId
end


function CMG.getPlayerCoords()
    return
        playerCoords
        or vector3(0, 0, 0)
end


function CMG.getAllVehicles()
    return allVehicles
end


-- Fill the cache immediately so callers do not receive zeros on startup.
refreshPlayerInfoCache()


Citizen.CreateThread(function()
    -- Refresh once more from a normal Citizen thread, then use CMG's standard
    -- every-frame tick helper.
    refreshPlayerInfoCache()

    CMG.createThreadOnTick(
        refreshPlayerInfoCache,
        "Player Info Cache",
        true
    )
end)
