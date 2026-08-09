--[[
    Paintball Client - Readable / Beginner-Friendly Version
    ========================================================

    This file was reconstructed from decompiled Lua.

    Beginner glossary:
      ped       = a GTA character/entity (your player character is a ped)
      server ID = the ID the FiveM server uses for a player
      marker    = a coloured marker drawn in the world
      area      = a small interaction zone
      blip      = an icon on the minimap
      Scaleform = GTA's built-in UI/movie system
      state     = information we keep while the player is inside paintball

    IMPORTANT:
      The weird event names such as "a03486a46f" are intentionally kept.
      The server probably triggers/listens for those exact hashes, so changing
      them would break compatibility.
]]

-- ============================================================
-- CONFIG / RUNTIME STATE
-- ============================================================

local paintballConfig = CMG.loadModule("cfg/cfg_paintball")

-- nil = we are not currently inside a paintball arena.
local paintballState = nil


-- ============================================================
-- SMALL GENERIC HELPERS
-- ============================================================

local function emptyAreaCallback()
    -- Some CMG.createArea calls expect enter/leave callbacks.
    -- The original script supplied empty functions here.
end


local function addWorldMarker(position, colour, markerType, zOffset)
    zOffset = zOffset or 0.0

    return tCMG.addMarker(
        position.x,
        position.y,
        position.z + zOffset,
        1.0,
        1.0,
        1.0,
        colour[1],
        colour[2],
        colour[3],
        170,
        50.0,
        markerType,
        false,
        false,
        true
    )
end


local function teleportTo(position)
    tCMG.teleport(position.x, position.y, position.z)
end


-- ============================================================
-- PUBLIC PAINTBALL CHECK
-- ============================================================

function CMG.isInPaintball()
    return paintballState ~= nil
end


-- ============================================================
-- OUTSIDE-ARENA JOIN MARKERS
-- ============================================================

-- Called while a player is standing inside a team's join area.
--
-- data[1] = arena index
-- data[2] = team index
local function handleJoinTeamArea(data)
    local arenaIndex = data[1]
    local teamIndex = data[2]

    local arena = paintballConfig.arenas[arenaIndex]
    if not arena then
        return
    end

    local team = arena.teams[teamIndex]
    if not team then
        return
    end

    local teamConfig = paintballConfig.teamConfigs[team.name]
    if not teamConfig then
        return
    end

    drawNativeNotification(
        string.format(
            "Press ~INPUT_PICKUP~ to play paintball and join the %s%s~w~ team. (£5,000)",
            teamConfig.textFormatColour,
            string.upper(team.name)
        )
    )

    -- INPUT_PICKUP = E by default.
    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("a03486a46f", arenaIndex, teamIndex)
    end
end


-- Create relationship groups and the public join markers when this
-- client script starts.
Citizen.CreateThread(function()
    -- Each paintball team gets its own GTA relationship group.
    for teamName, teamConfig in pairs(paintballConfig.teamConfigs) do
        local relationshipName = "PAINTBALL_" .. string.upper(teamName)

        local _, relationshipHash = AddRelationshipGroup(relationshipName)
        teamConfig.relationship = relationshipHash
    end

    -- Add every team's join marker for every configured arena.
    for arenaIndex, arena in pairs(paintballConfig.arenas) do
        for teamIndex, team in pairs(arena.teams) do
            local teamConfig = paintballConfig.teamConfigs[team.name]

            if teamConfig then
                addWorldMarker(
                    team.joinPosition,
                    teamConfig.markerColour,
                    23,
                    -0.98
                )

                CMG.createArea(
                    string.format(
                        "paintball_%d_%d_join",
                        arenaIndex,
                        teamIndex
                    ),
                    team.joinPosition,
                    1.5,
                    6.0,
                    emptyAreaCallback,
                    emptyAreaCallback,
                    handleJoinTeamArea,
                    {arenaIndex, teamIndex}
                )
            end
        end
    end
end)


-- ============================================================
-- ARENA INTERACTION PROMPTS
-- ============================================================

local function handleStartVoteArea()
    drawNativeNotification(
        "Press ~INPUT_PICKUP~ to submit a vote to start"
    )

    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("1abb79cabe")
    end
end


local function handleEndVoteArea()
    drawNativeNotification(
        "Press ~INPUT_PICKUP~ to submit a vote to end"
    )

    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("8706f69943")
    end
end


local function handleExitArea()
    drawNativeNotification(
        "Press ~INPUT_PICKUP~ to exit the arena"
    )

    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("a97ea54703")
    end
end


local function handlePaintballAmmoArea()
    drawNativeNotification(
        "~r~Press ~INPUT_PICKUP~ to pick up paintballs!"
    )

    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("b1d2dcc17a")
    end
end


local function handlePlasmaGunArea()
    drawNativeNotification(
        "~r~Press ~INPUT_PICKUP~ to buy an plasma gun. (£1,000)"
    )

    if IsControlJustPressed(0, 38) then
        TriggerServerEvent("d57bbe5e17")
    end
end


-- ============================================================
-- INTRO MESSAGE
-- ============================================================

local function showPaintballIntro()
    local scaleform = RequestScaleformMovie("mp_big_message_freemode")

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    -- Build a title like:
    --   RED vs BLUE - Paintball
    local title = "~r~"

    if paintballState then
        for teamIndex, team in pairs(paintballState.info.teams) do
            if teamIndex > 1 then
                title = title .. " vs "
            end

            title = title .. team.name
        end
    end

    title = title .. " - Paintball"

    BeginScaleformMovieMethod(
        scaleform,
        "SHOW_SHARD_WASTED_MP_MESSAGE"
    )

    ScaleformMovieMethodAddParamTextureNameString(title)
    ScaleformMovieMethodAddParamTextureNameString(
        "Start the game when everyone is ready by going up to the marker."
    )

    EndScaleformMovieMethod()

    local startedAt = GetGameTimer()

    -- Draw the intro for up to 5 seconds, unless the player leaves
    -- or the game starts first.
    while GetGameTimer() - startedAt < 5000 do
        if not paintballState or paintballState.isStarted then
            break
        end

        DrawScaleformMovieFullscreen(
            scaleform,
            255,
            255,
            255,
            255,
            0
        )

        Citizen.Wait(0)
    end

    SetScaleformMovieAsNoLongerNeeded(scaleform)
end


-- ============================================================
-- TEAM RELATIONSHIPS / FRIENDLY FIRE
-- ============================================================

local function setupPaintballRelationships()
    -- Same-team relationship = 0.
    -- Different-team relationship = 5.
    for _, firstTeamConfig in pairs(paintballConfig.teamConfigs) do
        for _, secondTeamConfig in pairs(paintballConfig.teamConfigs) do
            if firstTeamConfig == secondTeamConfig then
                SetRelationshipBetweenGroups(
                    0,
                    firstTeamConfig.relationship,
                    secondTeamConfig.relationship
                )
            else
                SetRelationshipBetweenGroups(
                    5,
                    firstTeamConfig.relationship,
                    secondTeamConfig.relationship
                )
            end
        end
    end

    -- The original paintball script disables the framework's normal
    -- friendly-fire behaviour while these relationship groups are active.
    CMG.setFriendlyFire(false)
end


local function clearPaintballRelationships()
    for _, firstTeamConfig in pairs(paintballConfig.teamConfigs) do
        for _, secondTeamConfig in pairs(paintballConfig.teamConfigs) do
            if firstTeamConfig == secondTeamConfig then
                ClearRelationshipBetweenGroups(
                    0,
                    firstTeamConfig.relationship,
                    secondTeamConfig.relationship
                )
            else
                ClearRelationshipBetweenGroups(
                    5,
                    firstTeamConfig.relationship,
                    secondTeamConfig.relationship
                )
            end
        end
    end

    CMG.setFriendlyFire(true)
end


-- ============================================================
-- LEADERBOARD
-- ============================================================

local function createPaintballLeaderboard()
    local leaderboard = Scaleform("SC_LEADERBOARD")

    leaderboard.RunFunction("SET_DISPLAY_TYPE", {1})

    if paintballState then
        leaderboard.RunFunction(
            "SET_MULTIPLAYER_TITLE",
            {paintballState.info.name}
        )
    end

    leaderboard.RunFunction(
        "SET_TITLE",
        {
            "NAME",
            "KILLS",
            "DEATHS",
            "KDR"
        }
    )

    if paintballState then
        paintballState.leaderboard = leaderboard
    end
end


local function buildLeaderboardRows()
    local rows = {}

    if not paintballState then
        return rows
    end

    for _, team in pairs(paintballState.teams) do
        local teamConfig =
            paintballConfig.teamConfigs[team.info.name]

        for _, playerData in pairs(team.players) do
            -- Colour the player's name using their team's configured
            -- GTA text-format colour.
            local displayName =
                teamConfig.textFormatColour ..
                string.upper(playerData.name)

            -- Avoid dividing by zero when a player has no deaths.
            local deathsForKdr =
                playerData.deaths == 0 and 1 or playerData.deaths

            local kdr =
                math.floor(
                    (playerData.kills / deathsForKdr) * 100
                ) / 100

            table.insert(
                rows,
                {
                    displayName,
                    playerData.kills,
                    playerData.deaths,
                    tostring(kdr)
                }
            )
        end
    end

    -- Highest kill count appears first.
    table.sort(
        rows,
        function(firstPlayer, secondPlayer)
            return firstPlayer[2] > secondPlayer[2]
        end
    )

    return rows
end


local function drawLeaderboard()
    if not paintballState or not paintballState.leaderboard then
        return
    end

    local rows = buildLeaderboardRows()

    for index, row in pairs(rows) do
        paintballState.leaderboard.RunFunction(
            "SET_SLOT",
            {
                index - 1,
                1,
                row[1],
                "",
                "",
                row[2],
                row[3],
                row[4]
            }
        )
    end

    paintballState.leaderboard.Render2D()
end


-- ============================================================
-- MATCH MARKERS / AREAS
-- ============================================================

local function createArenaMarkersAndAreas()
    if not paintballState then
        return
    end

    local arenaInfo = paintballState.info
    local teamInfo = paintballState.team.info

    -- Keep the marker handles so we can remove them when leaving.
    paintballState.markers = {
        addWorldMarker(
            arenaInfo.startPosition,
            {0, 255, 10},
            5
        ),

        addWorldMarker(
            arenaInfo.endPosition,
            {255, 10, 0},
            24
        ),

        addWorldMarker(
            arenaInfo.exitPosition,
            {255, 255, 255},
            1,
            -1.0
        ),

        addWorldMarker(
            teamInfo.buyPaintballPosition,
            {255, 255, 255},
            0
        ),

        addWorldMarker(
            teamInfo.buyPlasmaPosition,
            {255, 255, 255},
            29
        )
    }

    CMG.createArea(
        "paintball_start",
        arenaInfo.startPosition,
        1.5,
        6.0,
        emptyAreaCallback,
        emptyAreaCallback,
        handleStartVoteArea,
        nil
    )

    CMG.createArea(
        "paintball_end",
        arenaInfo.endPosition,
        1.5,
        6.0,
        emptyAreaCallback,
        emptyAreaCallback,
        handleEndVoteArea,
        nil
    )

    CMG.createArea(
        "paintball_exit",
        arenaInfo.exitPosition,
        1.5,
        6.0,
        emptyAreaCallback,
        emptyAreaCallback,
        handleExitArea,
        nil
    )

    CMG.createArea(
        "paintball_buyPaintball",
        teamInfo.buyPaintballPosition,
        1.5,
        6.0,
        emptyAreaCallback,
        emptyAreaCallback,
        handlePaintballAmmoArea,
        nil
    )

    CMG.createArea(
        "paintball_buyPlasma",
        teamInfo.buyPlasmaPosition,
        1.5,
        6.0,
        emptyAreaCallback,
        emptyAreaCallback,
        handlePlasmaGunArea,
        nil
    )
end


-- ============================================================
-- PLAYER BLIPS
-- ============================================================

local function removePaintballPlayerBlip(serverId)
    local playerIndex = GetPlayerFromServerId(serverId)

    if playerIndex == -1 then
        return
    end

    local playerPed = GetPlayerPed(playerIndex)

    if playerPed == 0 then
        return
    end

    local blip = GetBlipFromEntity(playerPed)

    if blip ~= 0 then
        RemoveBlip(blip)
    end
end


local function ensureTeammateBlips()
    if not paintballState then
        return
    end

    local localPlayerIndex = PlayerId()
    local teamConfig =
        paintballConfig.teamConfigs[paintballState.team.info.name]

    for teammateServerId in pairs(paintballState.team.players) do
        local teammatePlayerIndex =
            GetPlayerFromServerId(teammateServerId)

        if teammatePlayerIndex ~= -1
            and teammatePlayerIndex ~= localPlayerIndex then

            local teammatePed =
                GetPlayerPed(teammatePlayerIndex)

            if teammatePed ~= 0 then
                local blip = GetBlipFromEntity(teammatePed)

                if blip == 0 then
                    blip = AddBlipForEntity(teammatePed)

                    SetBlipColour(
                        blip,
                        teamConfig.blipColour
                    )

                    ShowHeadingIndicatorOnBlip(
                        blip,
                        true
                    )
                end
            end
        end
    end
end


-- ============================================================
-- JOIN PAINTBALL
-- ============================================================

-- Server tells this client that their arena/team join was accepted.
--
-- arenaIndex = selected arena in paintballConfig.arenas
-- teamIndex  = selected team in that arena
RegisterNetEvent("a03486a46f", function(arenaIndex, teamIndex)
    local arenaInfo = paintballConfig.arenas[arenaIndex]

    if not arenaInfo then
        return
    end

    paintballState = {
        info = arenaInfo,
        teams = {}
    }

    -- Create a runtime team table for each configured arena team.
    for index, teamInfo in pairs(arenaInfo.teams) do
        paintballState.teams[index] = {
            players = {},
            info = teamInfo
        }
    end

    paintballState.team = paintballState.teams[teamIndex]

    if not paintballState.team then
        paintballState = nil
        return
    end

    local teamInfo = paintballState.team.info
    local teamConfig = paintballConfig.teamConfigs[teamInfo.name]

    if not teamConfig then
        paintballState = nil
        return
    end

    createArenaMarkersAndAreas()

    Citizen.CreateThread(showPaintballIntro)

    notify(
        string.format(
            "You have joined the %s%s~w~ team!",
            teamConfig.textFormatColour,
            string.upper(teamInfo.name)
        )
    )

    -- Save what the player had before paintball.
    paintballState.previousCustomisation =
        tCMG.getCustomization()

    paintballState.previousWeapons =
        CMG.getWeapons()

    -- Change to the team's configured paintball model/outfit.
    tCMG.setCustomization({
        modelhash = teamConfig.modelHash
    })

    -- Remove normal weapons while inside paintball.
    RemoveAllPedWeapons(PlayerPedId(), false)

    -- Move to this team's waiting/spawn location.
    teleportTo(teamInfo.spawnPosition)

    -- Configure teams as allies/enemies.
    setupPaintballRelationships()

    -- Put our local ped into our team's relationship group.
    SetPedRelationshipGroupHash(
        PlayerPedId(),
        teamConfig.relationship
    )

    createPaintballLeaderboard()
end)


-- ============================================================
-- START MATCH
-- ============================================================

RegisterNetEvent("58660fc55e", function()
    if not paintballState then
        return
    end

    paintballState.isStarted = true
    paintballState.isRespawning = false

    teleportTo(paintballState.team.info.spawnPosition)

    notify("~y~Game starts in ~r~3")
    Citizen.Wait(1000)

    notify("~y~Game starts in ~r~2")
    Citizen.Wait(1000)

    notify("~y~Game starts in ~r~1")
    Citizen.Wait(1000)

    notify("~y~The game has ~r~begun!")

    local playerPed = PlayerPedId()

    ClearPedBloodDamage(playerPed)
    ResetPedVisibleDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)

    Citizen.Wait(2000)

    drawNativeNotification(
        "Press ~INPUT_VEH_FLY_ATTACK_CAMERA~ to view the leaderboard"
    )
end)


-- ============================================================
-- END / LEAVE PAINTBALL
-- ============================================================

RegisterNetEvent("0fecd97ab6", function()
    if not paintballState then
        return
    end

    paintballState.isEnding = true

    -- Remove all interaction areas created for this arena session.
    tCMG.removeArea("paintball_start")
    tCMG.removeArea("paintball_end")
    tCMG.removeArea("paintball_exit")
    tCMG.removeArea("paintball_buyPaintball")
    tCMG.removeArea("paintball_buyPlasma")

    -- Remove the matching world markers.
    for _, marker in pairs(paintballState.markers or {}) do
        if marker then
            tCMG.removeMarker(marker)
        end
    end

    -- Restore the player's normal appearance.
    tCMG.setCustomization(
        paintballState.previousCustomisation,
        true
    )

    Citizen.Wait(500)

    -- Give the newly-restored ped/model a little time to stream.
    local streamingStartedAt = GetGameTimer()

    while GetGameTimer() - streamingStartedAt < 2000 do
        local playerPed = PlayerPedId()

        if DoesEntityExist(playerPed)
            and HaveAllStreamingRequestsCompleted(playerPed) then
            break
        end

        Citizen.Wait(0)
    end

    local playerPed = PlayerPedId()

    RemoveAllPedWeapons(playerPed, false)
    Citizen.Wait(0)

    ClearPedBloodDamage(playerPed)
    ResetPedVisibleDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)

    -- Return the player to the arena's outside/home position.
    teleportTo(paintballState.info.homePosition)

    -- Remove blips belonging to our teammates.
    for teammateServerId in pairs(paintballState.team.players) do
        removePaintballPlayerBlip(teammateServerId)
    end

    clearPaintballRelationships()

    -- Restore the normal/default relationship group used by the
    -- original script.
    SetPedRelationshipGroupHash(
        PlayerPedId(),
        1862763509
    )

    -- Give back the weapons the player had before paintball.
    CMG.giveWeapons(
        paintballState.previousWeapons,
        true
    )

    paintballState = nil
end)


-- ============================================================
-- SERVER-SENT TEAM / PLAYER DATA
-- ============================================================

-- Replace the whole player table for one team.
RegisterNetEvent(
    "676a4b301f",
    function(teamIndex, players)
        if not paintballState then
            return
        end

        local team = paintballState.teams[teamIndex]

        if team then
            team.players = players
        end
    end
)


-- Add/update one player's data inside one team.
RegisterNetEvent(
    "3037bb1df5",
    function(teamIndex, playerServerId, playerData)
        if not paintballState then
            return
        end

        local team = paintballState.teams[teamIndex]

        if team then
            team.players[playerServerId] = playerData
        end
    end
)


-- Remove a player from whichever team currently contains them.
RegisterNetEvent("1d3fc5c779", function(playerServerId)
    if paintballState then
        for _, team in pairs(paintballState.teams) do
            if team.players[playerServerId] then
                team.players[playerServerId] = nil
                break
            end
        end
    end

    removePaintballPlayerBlip(playerServerId)
end)


-- Update one player's kills/deaths.
RegisterNetEvent(
    "cbb83f5f31",
    function(playerServerId, kills, deaths)
        if not paintballState then
            return
        end

        for _, team in pairs(paintballState.teams) do
            local playerData =
                team.players[playerServerId]

            if playerData then
                playerData.kills = kills
                playerData.deaths = deaths
                break
            end
        end
    end
)


-- ============================================================
-- MAIN PAINTBALL TICK
-- ============================================================

local function paintballTick()
    if not paintballState then
        return
    end

    -- Make sure friendly teammates have coloured minimap blips.
    ensureTeammateBlips()

    -- --------------------------------------------------------
    -- Keep the player inside the arena boundary.
    -- --------------------------------------------------------

    local playerCoords = CMG.getPlayerCoords()

    local distanceFromArenaCenter =
        #(paintballState.info.boundCenter - playerCoords)

    if distanceFromArenaCenter >
        paintballState.info.boundRadius then

        if not paintballState.isEnding then
            teleportTo(
                paintballState.team.info.spawnPosition
            )
        end
    end

    -- --------------------------------------------------------
    -- Hold the configured key to show the leaderboard.
    -- Control 121 is kept exactly from the original script.
    -- --------------------------------------------------------

    if paintballState.leaderboard
        and IsControlPressed(0, 121) then
        drawLeaderboard()
    end

    -- --------------------------------------------------------
    -- Original health/death fallback.
    --
    -- The original script treats 102 health or lower as "dead".
    -- It waits roughly one second, triggers framework event
    -- "193ee4e15e", then sends the player back to their spawn.
    -- --------------------------------------------------------

    local playerPed = PlayerPedId()
    local health = GetEntityHealth(playerPed)

    if health > 102 then
        return
    end

    if not paintballState.lastDied then
        paintballState.lastDied = GetGameTimer()
        return
    end

    if GetGameTimer() - paintballState.lastDied > 1000 then
        TriggerEvent("193ee4e15e")

        teleportTo(
            paintballState.team.info.spawnPosition
        )

        paintballState.lastDied = nil
    end
end

CMG.createThreadOnTick(
    paintballTick,
    "Paintball"
)


-- ============================================================
-- RESPAWN / TEMPORARY GHOST MODE
-- ============================================================

-- Keeps the local player in ghost mode for the supplied duration.
local function keepGhostedFor(durationMs)
    local startedAt = GetGameTimer()

    while GetGameTimer() - startedAt < durationMs do
        SetLocalPlayerAsGhost(true)
        Citizen.Wait(0)
    end
end


-- Respawn sequence used when another player hits us with one of the
-- recognised paintball weapon hashes.
local function respawnPaintballPlayer()
    Citizen.Wait(1000)

    DoScreenFadeOut(500)
    Citizen.Wait(500)

    -- The player may have left paintball during the wait.
    if not paintballState then
        DoScreenFadeIn(0)
        return
    end

    teleportTo(
        paintballState.team.info.spawnPosition
    )

    local playerPed = PlayerPedId()

    -- Framework helper from the original resource.
    CMG.setStunExitsEarly()

    -- Remove old damage/task state from the previous life.
    ClearEntityLastDamageEntity(playerPed)
    ClearEntityLastWeaponDamage(playerPed)
    ClearPedLastWeaponDamage(playerPed)
    ClearPedTasksImmediately(playerPed)

    -- The player cannot collide normally with others for 3.5 seconds.
    keepGhostedFor(3500)

    SetLocalPlayerAsGhost(false)

    if paintballState then
        paintballState.isRespawning = false
    end
end


-- ============================================================
-- DAMAGE DETECTION
-- ============================================================

AddEventHandler(
    "entityDamaged",
    function(victimEntity, attackerEntity, weaponHash)
        if not paintballState
            or not paintballState.isStarted
            or paintballState.isRespawning then
            return
        end

        -- These are the two weapon hashes accepted by the original
        -- paintball script. Their numeric values are preserved exactly.
        local isPaintballWeapon =
            weaponHash == 959234284
            or weaponHash == 683870287

        if not isPaintballWeapon then
            return
        end

        local localPlayerPed = PlayerPedId()

        -- Only handle damage where WE are the victim.
        if victimEntity ~= localPlayerPed then
            return
        end

        -- The attacker must be another player ped.
        if not IsEntityAPed(attackerEntity)
            or not IsPedAPlayer(attackerEntity) then
            return
        end

        local attackerPlayerIndex =
            NetworkGetPlayerIndexFromPed(attackerEntity)

        local attackerServerId =
            GetPlayerServerId(attackerPlayerIndex)

        if attackerServerId <= 0 then
            return
        end

        -- Tell the server who hit/killed us.
        TriggerServerEvent(
            "7b83c91fe1",
            attackerServerId
        )

        paintballState.isRespawning = true

        respawnPaintballPlayer()
    end
)