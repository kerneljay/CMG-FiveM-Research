--[[
    LEVEL 1 BEGINNER GUIDE — Oneinchamber
    ==========================================

    File: cmg/prod/client/events/cl_oneinchamber.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Oneinchamber feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: 26fd108ba4, 0fc9717b90, bee9494620, 80947f33ff, 9209f7b849, 3836478e4b
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/events/cfg_oneinchamber

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
    One In The Chamber - Readable Client Script
    --------------------------------------------
    Cleaned from decompiled Lua.

    Beginner notes:
    - "ped" = the player's character/entity.
    - "src" = a player's server ID/source.
    - "vector3" = X, Y, Z position.
    - "vector4" = X, Y, Z position + W/heading.
    - "IPL" = a GTA map/interior package that can be loaded.
    - "timer bars" = the small information bars drawn on screen.
    - The strange event names are intentionally unchanged because the
      server-side resource probably uses those exact event names.
]]

-- ============================================================
-- CONFIGURATION / STATE
-- ============================================================

local config = CMG.loadModule("cfg/events/cfg_oneinchamber")

-- Runtime state for the current One In The Chamber match.
-- nil means the client is not currently set up for the match.
local matchState = nil

-- GTA arena interior used by this event.
local ARENA_IPL = "xs_arena_interior"
local ARENA_INTERIOR_COORDS = vector3(2800.0, -3800.0, 100.0)

-- Maximum time we wait for things to stream/load.
local IPL_LOAD_TIMEOUT_MS = 30000
local STREAM_LOAD_TIMEOUT_MS = 10000

-- Health values used by the original script.
local PRE_ROUND_HEALTH = 200
local ACTIVE_ROUND_HEALTH = 103

local arenaInteriorLoaded = false


-- ============================================================
-- ARENA / STREAMING HELPERS
-- ============================================================

-- Loads the GTA arena interior and enables the props this minigame needs.
--
-- Returns:
--   true  = arena loaded successfully
--   false = loading failed/timed out

-- === HELPER FUNCTION: loadArenaInterior() ===
local function loadArenaInterior()
    -- If we already loaded it once, there is nothing else to do.
    if arenaInteriorLoaded then
        return true
    end

    RequestIpl(ARENA_IPL)

    local startedAt = GetGameTimer()

    -- Wait for GTA to report that the arena IPL is active.
    while not IsIplActive(ARENA_IPL) do
        if GetGameTimer() - startedAt >= IPL_LOAD_TIMEOUT_MS then
            return false
        end

        Wait(100)
    end

    local interiorId = GetInteriorAtCoords(
        ARENA_INTERIOR_COORDS.x,
        ARENA_INTERIOR_COORDS.y,
        ARENA_INTERIOR_COORDS.z
    )

    if interiorId == 0 then
        return false
    end

    -- Keep the interior loaded in memory.
    PinInteriorInMemory(interiorId)

    -- Enable the arena decorations/crowds used by the original script.
    EnableInteriorProp(interiorId, "Set_Crowd_A")
    EnableInteriorProp(interiorId, "Set_Crowd_B")
    EnableInteriorProp(interiorId, "Set_Crowd_C")
    EnableInteriorProp(interiorId, "Set_Crowd_D")
    EnableInteriorProp(interiorId, "Set_Dystopian_Scene")
    EnableInteriorProp(interiorId, "Set_Dystopian_12")

    RefreshInterior(interiorId)

    arenaInteriorLoaded = true
    return true
end


-- Forces GTA to stream the world/collision around a position.
-- This is useful before teleporting the player so they do not fall
-- through an unloaded floor.

-- === HELPER FUNCTION: preloadArea(position) ===
local function preloadArea(position)
    RequestCollisionAtCoord(position.x, position.y, position.z)
    NewLoadSceneStartSphere(position.x, position.y, position.z, 100.0, 0)

    -- First wait for the new scene itself.
    local startedAt = GetGameTimer()

    while not IsNewLoadSceneLoaded() do
        if GetGameTimer() - startedAt >= STREAM_LOAD_TIMEOUT_MS then
            break
        end

        Wait(0)
    end

    -- Then give outstanding streaming requests time to finish.
    startedAt = GetGameTimer()

    while true do
        local playerPed = PlayerPedId()

        if HaveAllStreamingRequestsCompleted(playerPed)
            and GetNumberOfStreamingRequests() <= 0 then
            break
        end

        if GetGameTimer() - startedAt >= STREAM_LOAD_TIMEOUT_MS then
            break
        end

        Wait(0)
    end

    NewLoadSceneStop()
end


-- Freezes nearby map objects.
--
-- The original code does this while drawing the One In The Chamber HUD.
-- It appears intended to stop nearby arena objects moving around.

-- === HELPER FUNCTION: freezeNearbyObjects() ===
local function freezeNearbyObjects()
    local playerCoords = CMG.getPlayerCoords()

    for _, object in pairs(GetGamePool("CObject")) do
        local objectCoords = GetEntityCoords(object)
        local distance = #(playerCoords - objectCoords)

        if distance < 5.0 then
            FreezeEntityPosition(object, true)
        end
    end
end


-- ============================================================
-- PLAYER DATA HELPERS
-- ============================================================

-- === HELPER FUNCTION: getOneInChamberClientData() ===
local function getOneInChamberClientData()
    return CMG.getClientEventData("OneInChamberClientData")
end


-- Finds the event-data entry belonging to a specific server ID.

-- === HELPER FUNCTION: findEventPlayerBySource(serverId) ===
local function findEventPlayerBySource(serverId)
    local eventData = getOneInChamberClientData()

    if not eventData or not eventData.players then
        return nil
    end

    for _, playerData in pairs(eventData.players) do
        if playerData.source == serverId then
            return playerData
        end
    end

    return nil
end


-- ============================================================
-- HUD / TIMER BARS
-- ============================================================

-- Draws all One In The Chamber information for one frame.

-- === HELPER FUNCTION: drawOneInChamberHud(state) ===
local function drawOneInChamberHud(state)
    -- Show how many players are currently in the event.
    state.timers.push("~y~PLAYERS", tostring(#currentEvent.players))

    freezeNearbyObjects()

    local localServerId = CMG.getLocalPlayerSrc()
    local localPlayerData = findEventPlayerBySource(localServerId)

    -- Show this player's personal statistics.
    if localPlayerData and localPlayerData.data then
        state.timers.push(
            "~r~ATTEMPTS",
            tostring(localPlayerData.data.numAttempts)
        )

        state.timers.push(
            "~r~KILLS",
            tostring(localPlayerData.data.numKills)
        )
    end

    -- killerPlayerSrc is the player who currently owns/has the gun.
    if not state.killerPlayerSrc then
        drawNativeText("Waiting to select the first player.")
        return
    end

    if state.killerPlayerSrc == localServerId then
        drawNativeText(
            "~y~You~w~ have the gun! Attempt to kill a ~r~target~w~."
        )
    else
        local playerIndex = GetPlayerFromServerId(state.killerPlayerSrc)

        if playerIndex >= 0 then
            local playerName = CMG.getPlayerName(playerIndex)

            drawNativeText(
                string.format("~y~%s~w~ has the gun!", playerName)
            )
        end
    end

    -- Work out how long is left before the next gun/round update.
    local timeSinceLastChange =
        GetNetworkTime() - state.lastUpdatedKiller

    local timeRemainingMs = math.max(
        config.delayBetweenGunMsec - timeSinceLastChange,
        0
    )

    state.timers.push(
        "NEXT ROUND",
        tostring(math.rounddp(timeRemainingMs / 1000.0, 1))
    )
end


-- This function runs every frame while the match is active.

-- === HELPER FUNCTION: oneInChamberTick() ===
local function oneInChamberTick()
    if not matchState then
        return
    end

    -- Timer bars are rebuilt every frame.
    matchState.timers.reset()

    drawOneInChamberHud(matchState)

    matchState.timers.draw()
end


-- ============================================================
-- MATCH START / COUNTDOWN
-- ============================================================

-- This event begins the actual round countdown.
--
-- IMPORTANT:
-- The event hash is kept exactly as found in the original file.

-- === NETWORK EVENT: receives "26fd108ba4" from server/another network source ===
RegisterNetEvent("26fd108ba4", function()
    CMG.stopEventSequence()
    CMG.setPlayerCanOpenLeaderboard(true)

    local clientData = getOneInChamberClientData()

    -- Reset everybody's local displayed statistics.
    if clientData and clientData.players then
        for _, playerData in pairs(clientData.players) do
            if playerData.data then
                playerData.data.numKills = 0
                playerData.data.numAttempts = 0
            end
        end
    end

    loadArenaInterior()

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed, true)

    -- Make sure the area underneath us is loaded before continuing.
    preloadArea(
        vector4(
            playerCoords.x,
            playerCoords.y,
            playerCoords.z,
            0.0
        )
    )

    -- Temporarily freeze/protect the player during the countdown.
    SetEntityHealth(playerPed, PRE_ROUND_HEALTH)
    FreezeEntityPosition(playerPed, true)
    SetLocalPlayerAsGhost(true)
    SetEntityAlpha(playerPed, 155, false)

    PlaySoundFrontend(
        -1,
        "5s",
        "MP_MISSION_COUNTDOWN_SOUNDSET",
        false
    )

    -- Existing countdown UI/event used by the framework.
    TriggerEvent(
        "b3cbc4aca5",
        math.floor(config.startCountdownMsec / 1000)
    )

    local countdownStartedAt = GetGameTimer()

    while GetGameTimer() - countdownStartedAt < config.startCountdownMsec do
        -- If matchState disappeared while waiting, the event was cancelled.
        if not matchState then
            return
        end

        Wait(0)
    end

    -- Countdown finished: allow the player to move and fight.
    SetEntityHealth(playerPed, ACTIVE_ROUND_HEALTH)
    FreezeEntityPosition(playerPed, false)
    SetLocalPlayerAsGhost(false)
    ResetEntityAlpha(playerPed)

    CMG.createThreadOnTick(oneInChamberTick, "One In The Chamber")
end)


-- ============================================================
-- PLAYER SETUP / TELEPORT
-- ============================================================

-- Sets this client up at a configured event location/spawnpoint.
--
-- locationIndex = which arena/location from config.locations
-- spawnIndex    = which spawnpoint inside that location

-- === NETWORK EVENT: receives "0fc9717b90" from server/another network source ===
RegisterNetEvent("0fc9717b90", function(locationIndex, spawnIndex)

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        local location = config.locations[locationIndex]

        if not location then
            return
        end

        local spawnpoint = location.spawnpoints[spawnIndex]

        if not spawnpoint then
            return
        end

        -- Show other minigame players.
        CMG.enableMinigamePlayerBlips(true)
        CMG.enableMinigamePlayerTags(true, false)

        -- Stop players leaving the event area.
        CMG.setMinigameBounds({
            {
                location.bounds.min,
                location.bounds.max
            }
        })

        -- One In The Chamber controls its own weapon logic.
        CMG.setSwitchGunEnabled(false)

        loadArenaInterior()

        local playerPed = PlayerPedId()

        -- Load the target spawn before teleporting.
        preloadArea(spawnpoint)

        SetEntityCoordsNoOffset(
            playerPed,
            spawnpoint.x,
            spawnpoint.y,
            spawnpoint.z,
            true,
            false,
            false
        )

        SetEntityHeading(playerPed, spawnpoint.w)

        -- Hold the player still until the round-start event releases them.
        SetEntityHealth(playerPed, PRE_ROUND_HEALTH)
        FreezeEntityPosition(playerPed, true)

        matchState = {
            -- Server ID of the person currently holding/owning the gun.
            killerPlayerSrc = nil,

            -- Network timestamp of the most recent gun-owner change.
            lastUpdatedKiller = 0,

            -- Framework helper used to display timer bars.
            timers = CMG.createTimerBars()
        }

        -- This minigame draws its own player-count timer.
        currentEvent.drawPlayersTimeBar = false
    end)
end)


-- ============================================================
-- CURRENT GUN HOLDER UPDATE
-- ============================================================

-- Sent when the server chooses/changes the player who currently has the gun.

-- === NETWORK EVENT: receives "bee9494620" from server/another network source ===
RegisterNetEvent("bee9494620", function(killerPlayerSrc, updatedAtNetworkTime)
    if not matchState then
        return
    end

    matchState.killerPlayerSrc = killerPlayerSrc
    matchState.lastUpdatedKiller = updatedAtNetworkTime
end)


-- ============================================================
-- CLEANUP
-- ============================================================

-- === HELPER FUNCTION: cleanupOneInChamber() ===
local function cleanupOneInChamber()
    -- Stop drawing the custom HUD.
    CMG.deleteThreadOnTick(oneInChamberTick)

    -- Allow the arena to be initialized again next time.
    arenaInteriorLoaded = false

    local playerPed = PlayerPedId()

    -- Undo temporary player states.
    SetLocalPlayerAsGhost(false)
    ResetEntityAlpha(playerPed)
    FreezeEntityPosition(playerPed, false)

    -- Undo minigame UI/world helpers.
    CMG.enableMinigamePlayerBlips(false)
    CMG.enableMinigamePlayerTags(false, false)
    CMG.clearMinigameBounds()

    -- Return normal weapon/leaderboard behaviour.
    CMG.setSwitchGunEnabled(true)
    CMG.setPlayerCanOpenLeaderboard(false)

    CMG.stopEventSequence()
end

CMG.registerMinigameCleanupHandler(
    config.minigameName,
    cleanupOneInChamber
)


-- ============================================================
-- SCORE UPDATES
-- ============================================================

-- Updates a player's kill count in the local event-data copy.

-- === NETWORK EVENT: receives "80947f33ff" from server/another network source ===
RegisterNetEvent("80947f33ff", function(playerServerId, newKillCount)
    local playerData = findEventPlayerBySource(playerServerId)

    if playerData and playerData.data then
        playerData.data.numKills = newKillCount
    end
end)


-- Updates a player's attempt count in the local event-data copy.

-- === NETWORK EVENT: receives "9209f7b849" from server/another network source ===
RegisterNetEvent("9209f7b849", function(playerServerId, newAttemptCount)
    local playerData = findEventPlayerBySource(playerServerId)

    if playerData and playerData.data then
        playerData.data.numAttempts = newAttemptCount
    end
end)


-- ============================================================
-- KILL FEED
-- ============================================================

-- Displays a message like:
--   Bob has killed Alice
--
-- Parameters are kept in the same order as the original handler:
-- victimServerId, killerServerId, victimName, killerName
RegisterNetEvent(
    "3836478e4b",
    function(victimServerId, killerServerId, victimName, killerName)
        local message = string.format(
            "%s%s~w~ has killed %s%s~w~",
            CMG.getPlayerColour(killerServerId),
            killerName,
            CMG.getPlayerColour(victimServerId),
            victimName
        )

        notify(message)
    end
)
