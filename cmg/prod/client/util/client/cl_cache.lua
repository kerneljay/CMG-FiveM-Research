--[[
    LEVEL 1 BEGINNER GUIDE — Cache
    ===================================

    File: cmg/prod/client/util/client/cl_cache.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
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


-- === HELPER FUNCTION: refreshPlayerInfoCache() ===
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


-- === HELPER FUNCTION: CMG.forcePlayerInfoCacheRefresh() ===
function CMG.forcePlayerInfoCacheRefresh()
    refreshPlayerInfoCache()
end


-- Replace the global native with the cached version.
_G.PlayerPedId = function()
    return playerPed
end


-- === HELPER FUNCTION: CMG.getPlayerPed() ===
function CMG.getPlayerPed()
    return playerPed
end


-- === HELPER FUNCTION: CMG.getPlayerVehicle() ===
function CMG.getPlayerVehicle()
    return
        currentVehicle,
        isVehicleDriver
end


-- === HELPER FUNCTION: CMG.getPlayerId() ===
function CMG.getPlayerId()
    return playerId
end


-- === HELPER FUNCTION: CMG.getPlayerCoords() ===
function CMG.getPlayerCoords()
    return
        playerCoords
        or vector3(0, 0, 0)
end


-- === HELPER FUNCTION: CMG.getAllVehicles() ===
function CMG.getAllVehicles()
    return allVehicles
end


-- Fill the cache immediately so callers do not receive zeros on startup.
refreshPlayerInfoCache()


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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
