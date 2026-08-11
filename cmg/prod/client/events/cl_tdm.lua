--[[
    LEVEL 1 BEGINNER GUIDE — Tdm
    =================================

    File: cmg/prod/client/events/cl_tdm.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Tdm feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 11
      * Background threads: 7
      * Always-running loops: 3
      * Commands: none found by static scan
      * Incoming network events: name, 04c52f29ff, ece517541d, 996718a935, f03e895b72, 86e97f39ba, 1985159cca, 105e886dcc, 14c5e345a1, f8de0cdabc
      * Local event handlers: name, 04c52f29ff, ece517541d, 996718a935, f03e895b72, 86e97f39ba, 1985159cca, 105e886dcc, 14c5e345a1, f8de0cdabc (+1 more)
      * Server events sent: 2f33bbb12c, 7640517054, 00ef526aa7
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/events/cfg_tdm

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
    Team Deathmatch (TDM) minigame - client script
    Cleaned up from a decompiled build.

    HOW TO READ THIS FILE (if you're new to Lua/FiveM):
    - "TDM" is one big table that holds everything about the CURRENT match
      (which team you're on, spawn points, current pickups, timers, etc).
      Any time you see TDM.something, that's match data being read or set.
    - RegisterNetEvent("name") + AddEventHandler("name", function ... end)
      is how the server tells the client "something happened" (e.g. match
      started, kill streak earned, etc). The weird strings like "04c52f29ff"
      are just event names - this framework hashes them instead of using
      readable names like "tdm:matchStarted".
    - CMG.xxx(...) calls are helper functions from the custom Onyx/CMG
      framework, not built-in FiveM natives.
]]

local cfg = CMG.loadModule("cfg/events/cfg_tdm")

-- All state for the match currently in progress lives in this one table.
local TDM = {}

-- Relationship groups control who is "hostile" to who (used for friendly fire,
-- blips, targeting, etc). Each team gets its own group.
local _, blueGroupHash = AddRelationshipGroup("TDM_BLUE")
local _, redGroupHash  = AddRelationshipGroup("TDM_RED")

local timerBars = CMG.createTimerBars()

--------------------------------------------------------------------------
-- Small helpers
--------------------------------------------------------------------------

-- Picks a random letter a-e. Used to select one of several idle animation
-- clips (e.g. "idle_a", "idle_b" ...) so players don't all look identical
-- while waiting for the match to start.

-- === HELPER FUNCTION: getRandomIdleAnimLetter() ===
local function getRandomIdleAnimLetter()
    local n = math.random(1, 5)
    return string.char(96 + n) -- 96 + 1 = 97 = 'a', 96 + 5 = 101 = 'e'
end

-- Remembers the last weapon the player bought from the radial menu, so it
-- can be automatically re-purchased after they respawn.
local lastBoughtWeapon = nil

-- Called whenever the player picks a weapon from the "buyWeaponsTDM" radial
-- menu. Tells the server to actually give the player that weapon.

-- === HELPER FUNCTION: onWeaponPurchased(weaponName) ===
local function onWeaponPurchased(weaponName)
    lastBoughtWeapon = weaponName
    CMG.TriggerServerCallback("2b8f1234ea", weaponName)
end

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    CMG.addRadialMenuHandler("buyWeaponsTDM", onWeaponPurchased)
end)

--------------------------------------------------------------------------
-- Cleanup - runs whenever the TDM minigame ends, to reset the player back
-- to their normal state (friendly fire on, no drive-by restriction, etc).
--------------------------------------------------------------------------

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    CMG.registerMinigameCleanupHandler("TDM", function()
        TDM.state = "ended"

        CMG.setFriendlyFire(true)
        CMG.enableDriveBy(false)
        CMG.setSwitchGunEnabled(true)
        CMG.cleanupRockstarMaps()
        CMG.enableMinigamePlayerBlips(false)
        CMG.clearAllPickups()

        -- Reset the two teams back to neutral toward each other.
        SetRelationshipBetweenGroups(0, redGroupHash, blueGroupHash)
        SetRelationshipBetweenGroups(0, blueGroupHash, redGroupHash)

        -- Put the player back into their default (non-TDM) relationship group.
        SetPedRelationshipGroupHash(PlayerPedId(), 1862763509)

        SetLocalPlayerAsGhost(false)
        ResetGhostedEntityAlpha()
        CMG.setEventRespawnPosition()
        BusyspinnerOff()
        SetPlayerControl(PlayerId(), true, 0)
    end)
end)

--------------------------------------------------------------------------
-- Pickups - weapon/ammo pickups scattered around the map. They get wiped
-- and respawned every 60 seconds while the match is running.
--------------------------------------------------------------------------

-- === HELPER FUNCTION: spawnPickupLoop(pickupList) ===
local function spawnPickupLoop(pickupList)
    if #pickupList == 0 then return end

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        while TDM.state ~= "ended" do
            -- Remove whatever pickups currently exist.
            for _, pickupHandle in pairs(TDM.pickups) do
                CMG.deletePickup(pickupHandle)
            end
            TDM.pickups = {}

            -- Spawn a fresh set from the pickup list the server sent us.
            for _, pickupData in pairs(pickupList) do
                local handle = CMG.createPickup(pickupData.hash, pickupData.position)
                table.insert(TDM.pickups, handle)
            end

            Wait(60000)
        end
    end)
end

--------------------------------------------------------------------------
-- Event: "04c52f29ff" - server tells us the match is loading and gives us
-- the map info (spawn point, bounds, pickups, etc).
--------------------------------------------------------------------------

-- === NETWORK EVENT: receives "04c52f29ff" from server/another network source ===
RegisterNetEvent("04c52f29ff")

-- === EVENT HANDLER: runs when "04c52f29ff" fires ===
AddEventHandler("04c52f29ff", function(
    mapName,            -- name of the map being used
    rockstarMapName,    -- optional built-in Rockstar map to load
    spawnPos,           -- vec4 (x, y, z, heading) where the player spawns
    spawnPoints,         -- list of possible respawn points
    team,                -- "blue" or "red"
    bounds,               -- table describing the play area
    extraBoundPoints,     -- optional extra points to add to the bounds
    pickupList,           -- list of pickups to spawn on the map
    startCharacterSelect, -- if true, immediately kick off the char-select/start sequence
    minigameId             -- unique id for this match instance
)
    TDM.mapname      = mapName
    TDM.state        = "loading"
    TDM.team         = team
    TDM.spawn        = spawnPos
    TDM.spawnpoints  = spawnPoints

    if rockstarMapName then
        CMG.loadClientRockstarMap(rockstarMapName, false)
    end

    local ped = PlayerPedId()
    CMG.setEventRespawnPosition(spawnPos)
    SetEntityCoordsNoOffset(ped, spawnPos.x, spawnPos.y, spawnPos.z, true, false, false)
    SetEntityHeading(ped, spawnPos.w)
    FreezeEntityPosition(ped, true)

    -- If extra bound points were provided, merge them into the bounds list.
    if extraBoundPoints then
        for _, point in pairs(extraBoundPoints) do
            table.insert(bounds, point)
        end
    end
    TDM.bounds = bounds
    CMG.setMinigameBounds(bounds)

    TDM.pickups = {}
    spawnPickupLoop(pickupList)

    if startCharacterSelect then
        TriggerEvent("105e886dcc", minigameId)
    end
end)

--------------------------------------------------------------------------
-- Team helpers
--------------------------------------------------------------------------

-- Returns the name of the opposing team.

-- === HELPER FUNCTION: getEnemyTeamName() ===
local function getEnemyTeamName()
    if TDM.team == "blue" then
        return "red"
    end
    return "blue"
end

-- Returns 1 if `source` is a player on the ENEMY team, 2 if they're on
-- YOUR team, or nil if they're not found in either list.
-- (Used to decide how to color/label a player's blip.)

-- === HELPER FUNCTION: getPlayerBlipTeamCode(source) ===
local function getPlayerBlipTeamCode(source)
    if not (TDM.blueteam and TDM.redteam) then return end

    local enemyTeamList = TDM[getEnemyTeamName() .. "team"]
    for _, entry in pairs(enemyTeamList) do
        if entry.source == source then
            return 1
        end
    end

    local ownTeamList = TDM[TDM.team .. "team"]
    for _, entry in pairs(ownTeamList) do
        if entry.source == source then
            return 2
        end
    end
end

-- Returns true if `source` should be treated as "relevant" for blips/tags:
-- either they're on your own team, or they've shot at you during the event.

-- === HELPER FUNCTION: isPlayerRelevantToShow(source) ===
local function isPlayerRelevantToShow(source)
    if not (TDM.blueteam and TDM.redteam) then return end

    local ownTeamList = TDM[TDM.team .. "team"]
    for _, entry in pairs(ownTeamList) do
        if entry.source == source then
            return true
        end
    end

    if CMG.hasPlayerShotInEvent(source) then
        return true
    end

    return false
end

-- Same idea as getPlayerBlipTeamCode, but returns HUD color codes
-- (6 = enemy color, 18 = friendly color) instead of a 1/2 team code.
-- Used for nametag coloring.

-- === HELPER FUNCTION: getPlayerTagColor(source) ===
local function getPlayerTagColor(source)
    if not (TDM.blueteam and TDM.redteam) then return end

    local enemyTeamList = TDM[getEnemyTeamName() .. "team"]
    for _, entry in pairs(enemyTeamList) do
        if entry.source == source then
            return 6
        end
    end

    local ownTeamList = TDM[TDM.team .. "team"]
    for _, entry in pairs(ownTeamList) do
        if entry.source == source then
            return 18
        end
    end
end

--------------------------------------------------------------------------
-- Kill streak: RC-XD (remote control explosive car)
--------------------------------------------------------------------------

-- Event: "ece517541d" - server spawned an RC-XD vehicle for us to control.

-- === NETWORK EVENT: receives "ece517541d" from server/another network source ===
RegisterNetEvent("ece517541d")

-- === EVENT HANDLER: runs when "ece517541d" fires ===
AddEventHandler("ece517541d", function(vehicleNetId)

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        CMG.announceMpBigMsg("~g~RC-XD deployed.", "", 1000, true)
    end)

    local vehicle = NetToVeh(vehicleNetId)
    SetEntityVisible(PlayerPedId(), false, false) -- hide the player while "piloting" the car

    TDM.rcxdTimer = GetGameTimer()

    -- Keep control until: the player takes damage, 20 seconds pass,
    -- or they press the detonate button (control 18 = space/jump).
    while true do
        if GetEntityHealth(PlayerPedId()) <= 100 then break end
        if (GetGameTimer() - TDM.rcxdTimer) >= 20000 then break end
        if IsControlJustPressed(0, 18) then break end

        drawNativeText("Press ~g~SPACE~w~ to explode RC-XD")
        Wait(0)
    end

    TDM.rcxdTimer = nil
    DeleteVehicle(vehicle)
    SetEntityHealth(PlayerPedId(), 0) -- "give control back" by killing the player's real ped state
    -- Beginner: sends the "2f33bbb12c" event to the server.
    TriggerServerEvent("2f33bbb12c")  -- tell the server the RC-XD sequence ended
end)

-- Event: "996718a935" - trigger the RC-XD explosion effect at a position.

-- === NETWORK EVENT: receives "996718a935" from server/another network source ===
RegisterNetEvent("996718a935")

-- === EVENT HANDLER: runs when "996718a935" fires ===
AddEventHandler("996718a935", function(explosionCenter)
    for i = 1, 15 do
        local x = explosionCenter.x + (math.random() - 0.5) * 4.0
        local y = explosionCenter.y + (math.random() - 0.5) * 4.0
        local z = explosionCenter.z + (math.random() - 0.5) * 2.0

        AddOwnedExplosion(PlayerPedId(), x, y, z, 2, 1.0, true, false, 5.0)
    end
end)

--------------------------------------------------------------------------
-- Kill streak: attack chopper
--------------------------------------------------------------------------

-- Event: "f03e895b72" - server gives us the network IDs of the chopper
-- vehicle and its pilot ped so we can sync them.

-- === NETWORK EVENT: receives "f03e895b72" from server/another network source ===
RegisterNetEvent("f03e895b72")

-- === EVENT HANDLER: runs when "f03e895b72" fires ===
AddEventHandler("f03e895b72", function(vehicleNetId, pedNetId)
    TDM.chopperVehNetId = vehicleNetId
    TDM.chopperPedNetId = pedNetId
end)

-- Event: "86e97f39ba" - server put us in gunner seat of the attack chopper.

-- === NETWORK EVENT: receives "86e97f39ba" from server/another network source ===
RegisterNetEvent("86e97f39ba")

-- === EVENT HANDLER: runs when "86e97f39ba" fires ===
AddEventHandler("86e97f39ba", function()
    local returnCoords = CMG.getPlayerCoords()
    CMG.clearMinigameBounds()

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        CMG.announceMpBigMsg("~g~Chopper Gun deployed.", "", 1000, true)
    end)

    TDM.isChopperShooter = true
    TDM.chopperTimer = GetGameTimer()

    -- Stay in the chopper until the player takes damage or 60 seconds pass.
    while true do
        if GetEntityHealth(PlayerPedId()) <= 100 then break end
        if (GetGameTimer() - TDM.chopperTimer) >= 60000 then break end
        Wait(0)
    end

    TDM.chopperTimer = nil
    TDM.isChopperShooter = false

    ClearPedTasksImmediately(PlayerPedId())
    SetEntityCoords(PlayerPedId(), returnCoords.x, returnCoords.y, returnCoords.z, true, false, false, false)
    CMG.setMinigameBounds(TDM.bounds)
end)

-- Returns one of 4 pre-defined chopper waypoints for the current map.

-- === HELPER FUNCTION: getChopperWaypoint(index) ===
local function getChopperWaypoint(index)
    local chopperPositions = cfg.locations[TDM.mapname].chopper
    if index == 0 then return chopperPositions.pos1
    elseif index == 1 then return chopperPositions.pos2
    elseif index == 2 then return chopperPositions.pos3
    elseif index == 3 then return chopperPositions.pos4
    end
end

-- Runs every frame (called from the main match loop below) to drive the
-- AI-controlled attack chopper between waypoints, and to seat the shooter
-- and pilot peds correctly.

-- === HELPER FUNCTION: updateChopperAI() ===
local function updateChopperAI()
    if not NetworkDoesEntityExistWithNetworkId(TDM.chopperVehNetId) then return end
    if not NetworkDoesEntityExistWithNetworkId(TDM.chopperPedNetId) then return end

    local vehicle = NetworkGetEntityFromNetworkId(TDM.chopperVehNetId)
    local pilotPed = NetworkGetEntityFromNetworkId(TDM.chopperPedNetId)
    if vehicle == 0 or pilotPed == 0 then return end

    local playerPed = PlayerPedId()

    -- If we're the gunner, make sure we're seated in seat 1 (side gunner seat).
    if TDM.isChopperShooter then
        if GetPedInVehicleSeat(vehicle, 1) ~= playerPed then
            SetPedIntoVehicle(playerPed, vehicle, 1)
        end
    end

    -- Only the client with network control of the pilot ped should drive the AI.
    if not NetworkHasControlOfEntity(pilotPed) then return end

    SetEntityInvincible(pilotPed, true)
    SetBlockingOfNonTemporaryEvents(pilotPed, true)
    SetPedKeepTask(pilotPed, true)

    -- Make sure the pilot is actually in the driver's seat.
    if GetPedInVehicleSeat(vehicle, -1) ~= pilotPed then
        SetPedIntoVehicle(pilotPed, vehicle, -1)
    end

    SetVehicleEngineOn(vehicle, true, true, false)
    SetHeliBladesFullSpeed(vehicle)

    -- We track which waypoint "stage" the chopper is on using entity state
    -- bags, so all clients agree on where it should be flying.
    local stage = Entity(pilotPed).state.stage
    local lastChanged = Entity(pilotPed).state.lastChanged

    if stage == 0 then
        -- First time through: snap the chopper to its starting waypoint.
        local startPos = getChopperWaypoint(0)
        SetEntityCoordsNoOffset(vehicle, startPos.x, startPos.y, startPos.z, true, false, false)
    end

    local advancedStage = false
    local elapsedSinceChange = GetNetworkTime() - (lastChanged or GetNetworkTime())

    -- Move to the next waypoint every 15 seconds.
    if elapsedSinceChange > 15000 then
        stage = stage + 1
        Entity(pilotPed).state:set("stage", stage, true)
        Entity(pilotPed).state:set("lastChanged", GetNetworkTime(), true)
        advancedStage = true
    end

    -- Only re-issue the drive task if we just changed waypoint, or the
    -- previous drive task actually finished.
    if not advancedStage then
        local taskStatus = GetScriptTaskStatus(pilotPed, 2477085294) -- TASK_VEHICLE_DRIVE_TO_COORD hash
        if taskStatus ~= 7 then
            return -- task is still running, nothing to do
        end
    end

    local nextWaypoint = getChopperWaypoint(stage)
    if nextWaypoint then
        TaskVehicleDriveToCoord(
            pilotPed, vehicle,
            nextWaypoint.x, nextWaypoint.y, nextWaypoint.z,
            20.0,             -- speed
            0,                -- unused "stop" flag
            1543134283,       -- vehicle model hash driving style relates to (heli)
            262144,           -- driving style flags
            1.0, -1.0
        )
    end
end

--------------------------------------------------------------------------
-- Team assignment + match start / character select sequence
--------------------------------------------------------------------------

-- Event: "1985159cca" - server sends us the current red/blue team rosters.

-- === NETWORK EVENT: receives "1985159cca" from server/another network source ===
RegisterNetEvent("1985159cca")

-- === EVENT HANDLER: runs when "1985159cca" fires ===
AddEventHandler("1985159cca", function(redTeam, blueTeam)
    TDM.redteam  = redTeam
    TDM.blueteam = blueTeam
end)

-- Event: "105e886dcc" - kicks off the character-select camera and, after a
-- short countdown, actually starts the match.

-- === NETWORK EVENT: receives "105e886dcc" from server/another network source ===
RegisterNetEvent("105e886dcc")

-- === EVENT HANDLER: runs when "105e886dcc" fires ===
AddEventHandler("105e886dcc", function(minigameId)
    CMG.enableDriveBy(true)
    CMG.setSwitchGunEnabled(false)
    CMG.stopEventSequence()
    currentEvent.drawPlayersTimeBar = false
    TDM.state = "choosingcharacter"
    BusyspinnerOff()

    -- Set up a cinematic camera looking at the player's spawn point.
    local ped = PlayerPedId()
    local rightVec, forwardVec, upVec, pedPos = GetEntityMatrix(ped)
    local camPos = (rightVec * 2.0) + (forwardVec * 0.0) + (upVec * 0.5) + pedPos

    TDM.camera = CreateCamWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        camPos.x, camPos.y, camPos.z,
        0.0, 0.0, 0.0,
        70.0, false, 2
    )
    SetCamActive(TDM.camera, true)
    PointCamAtCoord(TDM.camera, TDM.spawn.x, TDM.spawn.y, TDM.spawn.z)
    RenderScriptCams(true, false, 0, false, false)

    -- Play a random idle animation on the player while they wait.
    CMG.loadAnimDict("mini@triathlon")
    TaskPlayAnim(
        CMG.getPlayerPed(), "mini@triathlon", "idle_" .. getRandomIdleAnimLetter(),
        8.0, 8.0, -1, 1, 0.2, false, false, false
    )

    TDM.currentMinigameId = minigameId

    -- Countdown sound + UI (assumed to show "3, 2, 1")
    PlaySoundFrontend(-1, "5s", "MP_MISSION_COUNTDOWN_SOUNDSET", false)
    TriggerEvent("b3cbc4aca5", 3)
    Wait(4000)

    -- If the state changed while we were waiting (e.g. match was cancelled), bail out.
    if TDM.state ~= "choosingcharacter" then return end

    TDM.state = "started"
    CMG.setPlayerCanOpenLeaderboard(true)

    ClearPedTasks(PlayerPedId())
    SetCamActive(TDM.camera, false)
    RenderScriptCams(false, false, 0, false, false)
    DestroyCam(TDM.camera, false)
    DestroyCam(TDM.camera2, false) -- (kept for parity - camera2 doesn't seem to be set anywhere)

    CMG.enableMinigamePlayerBlips(true, getPlayerBlipTeamCode, isPlayerRelevantToShow)
    CMG.enableMinigamePlayerTags(true, true, getPlayerTagColor)

    -- Teams are hostile toward each other (relationship type 5 = "hate").
    SetRelationshipBetweenGroups(5, blueGroupHash, redGroupHash)
    SetRelationshipBetweenGroups(5, redGroupHash, blueGroupHash)

    if TDM.team == "blue" then
        SetPedRelationshipGroupHash(PlayerPedId(), blueGroupHash)
    else
        SetPedRelationshipGroupHash(PlayerPedId(), redGroupHash)
    end

    CMG.setFriendlyFire(false)
    FreezeEntityPosition(PlayerPedId(), false)

    -- Show a one-time hint about how to open the buy menu.

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        if IsUsingKeyboard(0) then
            CMG.announceMpBigMsg("PRESS B TO OPEN BUY MENU", "", 5000, true)
        else
            CMG.announceMpBigMsg("PRESS R1 TO OPEN BUY MENU", "", 5000, true)
        end
    end)

    -- Main per-frame match loop while the match is active.
    while TDM.state == "started" do
        -- B on keyboard, R1 (control 44... originally computed) on controller.
        local buyMenuControl = IsUsingKeyboard(0) and 29 or 44

        if IsControlJustPressed(0, buyMenuControl) then
            CMG.openRadialMenu("buyWeaponsTDM")
        elseif IsControlJustPressed(0, 188) then
            -- Up-arrow: use whichever kill streak the player currently has.
            if TDM.hasRCXD then
                TDM.hasRCXD = false
                -- Beginner: sends the "7640517054" event to the server.
                TriggerServerEvent("7640517054")
            elseif TDM.hasChopper then
                if TDM.chopperVehNetId then
                    notify("~r~The airspace is full.")
                else
                    TDM.hasChopper = false
                    -- Beginner: sends the "00ef526aa7" event to the server.
                    TriggerServerEvent("00ef526aa7")
                end
            end
        end

        CMG.disableMeleeControls()
        DisableFirstPersonCamThisFrame()
        DisableControlAction(0, 23, false) -- disable "enter vehicle"
        DisableControlAction(0, 75, false) -- disable "exit vehicle"

        updateChopperAI()

        Wait(0)
    end
end)

--------------------------------------------------------------------------
-- Kill feed
--------------------------------------------------------------------------

local killFeed = {}

-- Event: "14c5e345a1" - someone got a kill; add it to the on-screen kill feed.

-- === NETWORK EVENT: receives "14c5e345a1" from server/another network source ===
RegisterNetEvent("14c5e345a1")

-- === EVENT HANDLER: runs when "14c5e345a1" fires ===
AddEventHandler("14c5e345a1", function(killerName, killerSource)
    PlaySoundFrontend(-1, "Weapon_Upgrade", "DLC_GR_Weapon_Upgrade_Soundset", true)

    table.insert(killFeed, { name = killerName, source = killerSource })

    -- Remove this entry again after 2 seconds so the feed doesn't grow forever.
    SetTimeout(2000, function()
        for i, entry in pairs(killFeed) do
            if entry.source == killerSource then
                table.remove(killFeed, i)
            end
        end
    end)
end)

--------------------------------------------------------------------------
-- HUD: score bars, killstreak timers, and kill feed text
--------------------------------------------------------------------------

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        if TDM.state == "started" then
            timerBars.reset()

            timerBars.push("~b~BLUE TEAM~w~", GlobalState[TDM.currentMinigameId .. "_bluepoints"] .. "/50")
            timerBars.push("~r~RED TEAM~w~",  GlobalState[TDM.currentMinigameId .. "_redpoints"]  .. "/50")

            if TDM.rcxdTimer then
                local secondsLeft = 20 - math.floor((GetGameTimer() - TDM.rcxdTimer) / 1000)
                timerBars.push("~b~EXPLODES IN~y~", tostring(secondsLeft))
            end

            if TDM.chopperTimer then
                local secondsLeft = 60 - math.floor((GetGameTimer() - TDM.chopperTimer) / 1000)
                timerBars.push("~b~RETURN IN~y~", tostring(secondsLeft))
            end

            if TDM.hasRCXD then
                timerBars.push("~b~KILLSTREAK~w~", "RCXD", 0.3)
            end

            if TDM.hasChopper then
                timerBars.push("~b~KILLSTREAK~w~", "Chopper", 0.3)
            end

            timerBars.draw()
        end

        -- Draw the kill feed lines, stacked vertically.
        for i, entry in pairs(killFeed) do
            local yPos = 0.5 + (0.025 * i)
            local killerColorTag = CMG.getPlayerColour(entry.source)
            local text = "Killed " .. killerColorTag .. entry.name

            DrawAdvancedTextNoOutline(
                0.6, yPos, 0.005, 0.0028, 0.45,
                text,
                255, 255, 255, 255,
                CMG.getFontId("Akrobat-Regular"), 1
            )
        end

        Wait(0)
    end
end)

--------------------------------------------------------------------------
-- Slow-mo special ability helpers (exposed on CMG so other scripts can call them)
--------------------------------------------------------------------------

local isInSlowMo = false

-- === HELPER FUNCTION: CMG.activateSlowMo() ===
function CMG.activateSlowMo()
    isInSlowMo = true

    SetSpecialAbility(PlayerId(), 2)
    SpecialAbilityActivate(PlayerId())
    Wait(1000)

    isInSlowMo = false
    SpecialAbilityDeplete(PlayerId())

    -- Native call to fully reset the special ability meter/state.
    Citizen.InvokeNative(-4466441394195262849, PlayerId())
end

-- === HELPER FUNCTION: CMG.isInSlowMo() ===
function CMG.isInSlowMo()
    return isInSlowMo
end

--------------------------------------------------------------------------
-- Kill streak rewards
--------------------------------------------------------------------------

-- Event: "f8de0cdabc" - server tells us how many kills we're on, so we can
-- award kill-streak rewards at certain thresholds.

-- === NETWORK EVENT: receives "f8de0cdabc" from server/another network source ===
RegisterNetEvent("f8de0cdabc")

-- === EVENT HANDLER: runs when "f8de0cdabc" fires ===
AddEventHandler("f8de0cdabc", function(killCount)
    if killCount == 5 then
        SetTimecycleModifier("MP_Killstreak")
        SetTimecycleModifierStrength(0.5)
        TDM.hasRCXD = true
        notify("~g~RX-CD kill streak awarded, use up arrow for deploy.")
    elseif killCount == 10 then
        SetTimecycleModifier("BeastIntro01")
        SetTimecycleModifierStrength(0.5)
        TDM.hasChopper = true
        notify("~g~Chopper kill streak awarded, use up arrow for deploy.")
    end
end)

--------------------------------------------------------------------------
-- Respawn handling
--------------------------------------------------------------------------

-- Event: "5dac3d7c66" - fired when the local player respawns during the match.

-- === EVENT HANDLER: runs when "5dac3d7c66" fires ===
AddEventHandler("5dac3d7c66", function()
    if TDM.state ~= "started" then return end

    ClearTimecycleModifier()
    notify("~b~Press [B] to open the buy menu")
    Wait(1000)

    -- Re-buy whatever weapon the player had selected before dying.
    if lastBoughtWeapon then
        onWeaponPurchased(lastBoughtWeapon)
    end

    -- Brief spawn protection.
    SetLocalPlayerAsGhost(true)
    Wait(5000)
    SetLocalPlayerAsGhost(false)
    ResetGhostedEntityAlpha()

    -- Move to a random spawn point.
    local randomSpawn = TDM.spawnpoints[math.random(1, #TDM.spawnpoints)]
    CMG.setEventRespawnPosition(randomSpawn)
end)
