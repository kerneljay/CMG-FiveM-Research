--[[
    LEVEL 1 BEGINNER GUIDE — Playerlist
    ========================================

    File: cmg/prod/client/core/cl_playerlist.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Playerlist feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 19
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: 9655ebd710, 850f6ce5d9, 9d9f92b5ce, 30043bf5b4, d86ba438f2, 44e6d4fc95
      * Local event handlers: CMG:onClientSpawn
      * Server events sent: 120fba9e89
      * NUI callbacks: closeCMGPlayerList
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
    Player List / Scoreboard Client
    ===============================

    Beginner overview:
      * The server keeps this client updated with the current player list.
      * Pressing the configured HOME/social-club key opens the NUI player list.
      * Players are grouped by job/service.
      * The footer shows server number, uptime and player count.
      * This same data is also used by other scripts to turn:
            server source -> permanent user ID
            user ID       -> player name/job/playtime
      * Discord Rich Presence uses the player-count metadata too.

    Player data format used by this client:
      fullPlayerListData[userId] = {
          [1] = server source,
          [2] = player name,
          [3] = normal job,
          [4] = playtime in hours,
          [5] = is staff,
          [6] = optional display/secondary job
      }

      fullPlayerListData._meta = {
          [1] = server uptime text/value,
          [2] = current player count,
          [3] = unknown server metadata value,
          [4] = max player count,
          [5] = server number
      }

    Hash-looking event names are intentionally left unchanged.
]]

local playerListOpen = false

-- This global existed in the original resource and may be read elsewhere.
fullPlayerListData = fullPlayerListData or {}

-- A convenient version already split into categories.
local sortedPlayerListData = {}

-- serverSourceToUserId[source] = permanent user ID.
local serverSourceToUserId = {}

local lastToggleAt = 0

-- Beginner: changes whether the NUI owns keyboard/mouse input.
SetNuiFocus(false, false)


-- ============================================================
-- JOB GROUP DEFINITIONS
-- ============================================================

local nhsJobs = {
    HEMS = true,
    ["Trainee Paramedic"] = true,
    Paramedic = true,
    ["Senior Paramedic"] = true,
    ["Advanced Paramedic"] = true,
    ["NHS Paramedic"] = true,
    ["NHS Senior Paramedic"] = true,
    ["NHS Advanced Paramedic"] = true,
    ["NHS Critical Care"] = true,
    ["Medical Student"] = true,
    Nurse = true,
    Doctor = true,
    ["Senior Doctor"] = true,
    Physician = true,
    Surgeon = true,
    Specialist = true,
    Consultant = true,
    ["Clinical Lead"] = true,
    ["Honourable Doctor"] = true,
    ["Medical Advisor"] = true,
    ["Assistant Medical Director"] = true,
    ["Deputy Medical Director"] = true,
    ["Head Medical Director"] = true,
    ["NHS Medical Student"] = true,
    ["NHS Nurse"] = true,
    ["NHS Junior Doctor"] = true,
    ["NHS Doctor"] = true,
    ["NHS Senior Doctor"] = true,
    ["NHS Physician"] = true,
    ["NHS Surgeon"] = true,
    ["NHS Specialist"] = true,
    ["NHS Consultant"] = true,
    ["NHS Clinical Lead"] = true,
    ["NHS Honourable Doctor"] = true,
    ["NHS Medical Advisor"] = true,
    ["NHS Deputy Chief"] = true,
    ["NHS Assistant Chief"] = true,
    ["NHS Head Chief"] = true
}

local fireJobs = {
    ["Trainee Firefighter"] = true,
    Firefighter = true,
    ["Crew Manager"] = true,
    ["Watch Manager"] = true,
    ["Station Manager"] = true,
    ["Group Manager"] = true,
    ["Area Manager"] = true,
    ["Sector Command"] = true,
    ["Divisional Command"] = true,
    ["Divisional Officer"] = true,
    ["Honourable Firefighter"] = true,
    ["Fire Command Advisor"] = true,
    ["Assistant Chief Fire Officer"] = true,
    ["Deputy Chief Fire Officer"] = true,
    ["Chief Fire Officer"] = true
}

local policeJobs = {
    ["Deputy Commissioner"] = true,
    Sergeant = true,
    Cleaner = true,
    ["Custody Sergeant"] = true,
    PCSO = true,
    PC = true,
    Inspector = true,
    Superintendent = true,
    Commissioner = true,
    ["Chief Inspector"] = true,
    ["Chief Superintendent"] = true,
    ["GC Advisor"] = true,
    Commander = true,
    ["Dep. Asst. Commissioner"] = true,
    ["Assistant Commissioner"] = true,
    ["Special Constable"] = true,
    NPAS = true
}

local prisonJobs = {
    Governor = true,
    ["Deputy Governor"] = true,
    ["Divisional Commander"] = true,
    ["Custodial Supervisor"] = true,
    ["Custodial Officer"] = true,
    ["HMP Advisor"] = true,
    ["Honourable Guard"] = true,
    ["Supervising Officer"] = true,
    ["Principal Officer"] = true,
    ["Specialist Officer"] = true,
    ["Senior Officer"] = true,
    ["Prison Officer"] = true,
    ["Trainee Prison Officer"] = true,
    ["HMP Transport"] = true
}

local borderForceJobs = {
    ["Director General"] = true,
    ["Regional Director"] = true,
    ["Assistant Director"] = true,
    ["UKBF Advisor"] = true,
    ["Special Officer"] = true,
    ["HM Inspector"] = true,
    ["Chief Immigration Officer"] = true,
    ["Senior Immigration Officer"] = true,
    ["Higher Immigration Officer"] = true,
    ["Immigration Officer"] = true,
    ["Assistant Immigration Officer"] = true,
    ["Administrative Assistant"] = true
}


-- ============================================================
-- PUBLIC LOOKUP HELPERS
-- ============================================================

-- === HELPER FUNCTION: CMG.getSortedFullPlayerListData() ===
function CMG.getSortedFullPlayerListData()
    return sortedPlayerListData
end


-- === HELPER FUNCTION: CMG.clientGetUserIdFromSource(serverSource) ===
function CMG.clientGetUserIdFromSource(serverSource)
    return serverSourceToUserId[serverSource] or 0
end


-- === HELPER FUNCTION: CMG.clientGetPlayerIsStaff(serverSource) ===
function CMG.clientGetPlayerIsStaff(serverSource)
    local userId =
        serverSourceToUserId[serverSource]

    local data =
        userId and fullPlayerListData[userId]

    if not data then
        return false
    end

    return data[5]
end


-- Returns:
--   serviceType, exactJobName
--
-- serviceType examples:
--   "nhs", "lfb", "hmp", "borderforce", "metpd", "aa", ""

-- === HELPER FUNCTION: CMG.getJobType(userId) ===
function CMG.getJobType(userId)
    local data =
        fullPlayerListData[userId]

    if not data then
        return "", ""
    end

    local job = data[3]

    if nhsJobs[job] then
        return "nhs", job
    end

    if fireJobs[job] then
        return "lfb", job
    end

    if prisonJobs[job] then
        return "hmp", job
    end

    if borderForceJobs[job] then
        return "borderforce", job
    end

    if policeJobs[job]
        or job == "CID"
        or job == "Trident"
        or job == "CTSFO" then
        return "metpd", job
    end

    if job == "Mechanic" then
        return "aa", job
    end

    return "", job
end


-- === HELPER FUNCTION: CMG.getPlayerName(playerIndex) ===
function CMG.getPlayerName(playerIndex)
    local serverSource =
        GetPlayerServerId(playerIndex)

    if not serverSource
        or serverSource <= 0 then
        return "N/A"
    end

    local userId =
        CMG.clientGetUserIdFromSource(
            serverSource
        )

    if userId and userId ~= 0 then
        local data =
            fullPlayerListData[userId]

        if data then
            return data[2]
        end

        return "PermID:" ..
            tostring(userId)
    end

    return "TempID:" ..
        tostring(serverSource)
end


-- === HELPER FUNCTION: CMG.getClientPlayerNameFromPlayerSrc(serverSource) ===
function CMG.getClientPlayerNameFromPlayerSrc(serverSource)
    if not serverSource
        or serverSource <= 0 then
        return "N/A"
    end

    local userId =
        CMG.clientGetUserIdFromSource(
            serverSource
        )

    if userId and userId ~= 0 then
        local data =
            fullPlayerListData[userId]

        if data then
            return data[2]
        end

        return "PermID:" ..
            tostring(userId)
    end

    return "TempID:" ..
        tostring(serverSource)
end


-- === HELPER FUNCTION: CMG.getClientPlaytimeHours(userId) ===
function CMG.getClientPlaytimeHours(userId)
    userId =
        userId or
        CMG.getClientUserId()

    if not userId then
        return nil
    end

    local data =
        fullPlayerListData[userId]

    if not data then
        return nil
    end

    return tonumber(data[4])
end


-- === HELPER FUNCTION: CMG.getClientUserSource(userId) ===
function CMG.getClientUserSource(userId)
    local data =
        fullPlayerListData[userId]

    return data and data[1] or nil
end


exports(
    "getPlayerName",
    CMG.getPlayerName
)

exports(
    "getUserId",
    CMG.getClientUserId
)


-- ============================================================
-- SORT PLAYER DATA INTO SECTIONS
-- ============================================================

-- === HELPER FUNCTION: displayJob(job) ===
local function displayJob(job)
    -- These specialist roles are deliberately displayed as Unemployed
    -- in some scoreboard sections by the original client.
    if job == "CID"
        or job == "Vigilante"
        or job == "Trident"
        or job == "CTSFO" then
        return "Unemployed"
    end

    return job
end


-- === HELPER FUNCTION: sortNumericKeys(tbl) ===
local function sortNumericKeys(tbl)
    local keys = {}

    for key in pairs(tbl) do
        if type(key) == "number" then
            table.insert(keys, key)
        end
    end

    table.sort(keys)
    return keys
end


-- === HELPER FUNCTION: categorisePlayers(data) ===
local function categorisePlayers(data)
    local result = {
        staff = {},
        police = {},
        nhs = {},
        fire = {},
        prison = {},
        mechanics = {},
        vigilante = {},
        borderForce = {},
        civilians = {},
        meta = {},
        policeCount = 0
    }

    for userId, playerData in pairs(data) do
        if userId == "_meta" then
            result.meta = playerData

        elseif not CMG.isUserHidden(userId) then
            local job = playerData[3]
            local isStaff = playerData[5]

            if nhsJobs[job] then
                result.nhs[userId] =
                    playerData

            elseif fireJobs[job] then
                result.fire[userId] =
                    playerData

            elseif prisonJobs[job] then
                result.prison[userId] =
                    playerData

            elseif policeJobs[job] then
                result.police[userId] =
                    playerData

                result.policeCount =
                    result.policeCount + 1

            elseif job == "Mechanic" then
                result.mechanics[userId] =
                    playerData

            elseif borderForceJobs[job] then
                result.borderForce[userId] =
                    playerData

            elseif job == "Vigilante" then
                result.vigilante[userId] =
                    playerData

                -- Original also included Vigilantes in civilians.
                result.civilians[userId] =
                    playerData

            else
                if job == "CID"
                    or job == "CTSFO"
                    or job == "Trident" then
                    result.policeCount =
                        result.policeCount + 1
                end

                result.civilians[userId] =
                    playerData
            end

            if isStaff then
                result.staff[userId] =
                    playerData
            end
        end
    end

    return result
end


-- === HELPER FUNCTION: rebuildSortedPlayerList() ===
local function rebuildSortedPlayerList()
    sortedPlayerListData =
        categorisePlayers(
            fullPlayerListData
        )

    return sortedPlayerListData
end


-- ============================================================
-- NUI RENDER HELPERS
-- ============================================================

-- === HELPER FUNCTION: getPlayerRenderFields(playerData) ===
local function getPlayerRenderFields(playerData)
    local name = playerData[2]

    local job =
        playerData[6] or playerData[3]

    local playtime =
        playerData[4]

    return
        name,
        displayJob(job),
        playtime
end


-- === HELPER FUNCTION: appendPlayerRow(playerData) ===
local function appendPlayerRow(playerData)
    local name, job, playtime =
        getPlayerRenderFields(
            playerData
        )

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        appendToContentPlayerList =
            '<span class="username">' ..
            tostring(name) ..
            '</span><span class="job">' ..
            tostring(job) ..
            '</span><span class="playtime">' ..
            getMoneyStringFormatted(
                playtime
            ) ..
            ' hrs</span><br/>'
    })
end


local function appendPlayerSection(
    title,
    htmlId,
    players
)
    local keys =
        sortNumericKeys(players)

    if #keys == 0 then
        return
    end

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        appendToContentPlayerList =
            '<span id="' ..
            htmlId ..
            '">' ..
            title ..
            '</span>'
    })

    for _, userId in ipairs(keys) do
        appendPlayerRow(
            players[userId]
        )
    end
end


local function appendServerMetadata(
    sorted
)
    local meta = sorted.meta or {}

    local uptime = meta[1] or ""
    local playerCount =
        meta[2] or 0

    local maxPlayers =
        meta[4] or 0

    local serverNumber =
        meta[5] or ""

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        wipeFooterPlayerList = true
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        appendToFooterPlayerList =
            '<span class="foot">Server #' ..
            tostring(serverNumber) ..
            ' | </span>'
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        appendToFooterPlayerList =
            '<span class="foot" style="color: rgb(0, 255, 20);">Server uptime ' ..
            tostring(uptime) ..
            '</span>'
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        appendToFooterPlayerList =
            '<span class="foot">  |  Number of players ' ..
            tostring(playerCount) ..
            '/' ..
            tostring(maxPlayers) ..
            '</span>'
    })
end


-- === HELPER FUNCTION: renderPlayerList() ===
local function renderPlayerList()
    local sorted =
        rebuildSortedPlayerList()

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        wipePlayerList = true
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        clearServerMetaData = true
    })

    -- Small service counters at the top.
    local counters = {
        {'cmg.webp', 'staff', table.count(sorted.staff)},
        {'nhs.webp', 'nhs', table.count(sorted.nhs)},
        {'met.webp', 'police', sorted.policeCount},
        {'hmp.webp', 'hmp', table.count(sorted.prison)},
        {'aa.webp', 'aa', table.count(sorted.mechanics)}
    }

    for _, counter in ipairs(counters) do
        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            setServerMetaData =
                '<img src="' ..
                counter[1] ..
                '" align="top" width="20px",height="20px"><span class="' ..
                counter[2] ..
                '">' ..
                tostring(counter[3]) ..
                '</span>'
        })
    end

    appendServerMetadata(sorted)

    appendPlayerSection(
        "Staff",
        "playerlist_seperator_staff",
        sorted.staff
    )

    appendPlayerSection(
        "Police Service",
        "playerlist_seperator_police",
        sorted.police
    )

    appendPlayerSection(
        "Health Service",
        "playerlist_seperator_nhs",
        sorted.nhs
    )

    appendPlayerSection(
        "LFB",
        "playerlist_seperator_lfb",
        sorted.fire
    )

    appendPlayerSection(
        "Prison Service",
        "playerlist_seperator_hmp",
        sorted.prison
    )

    appendPlayerSection(
        "Border Force",
        "playerlist_seperator_ukbf",
        sorted.borderForce
    )

    appendPlayerSection(
        "Mechanics",
        "playerlist_seperator_aa",
        sorted.mechanics
    )

    appendPlayerSection(
        "Civilians",
        "playerlist_seperator_civs",
        sorted.civilians
    )
end


-- ============================================================
-- OPEN / CLOSE CONTROLS
-- ============================================================

-- === HELPER FUNCTION: playerListControlTick() ===
local function playerListControlTick()
    if not CMG.isUsingKeyboard(2) then
        return
    end

    if playerListOpen
        and CMG.isNewPlayer() then

        drawNativeNotification(
            "Press ~INPUT_FRONTEND_SOCIAL_CLUB~ to toggle the home menu."
        )
    end

    -- Control 212 is the original HOME / Social Club control.
    if not IsControlJustPressed(
        0,
        212
    ) then
        return
    end

    if GetGameTimer() - lastToggleAt
        <= 1000 then
        return
    end

    -- Preserve the original condition exactly.
    if not CMG.canPlayerOpenLeaderboard() then
        playerListOpen =
            not playerListOpen

        renderPlayerList()

        -- Beginner: changes whether the NUI owns keyboard/mouse input.
        SetNuiFocus(true, true)

        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            showPlayerList = true
        })

        lastToggleAt =
            GetGameTimer()
    end
end

CMG.createThreadOnTick(
    playerListControlTick,
    "Player List Controls"
)


RegisterNUICallback(
    "closeCMGPlayerList",
    function()
        if playerListOpen then
            -- Beginner: changes whether the NUI owns keyboard/mouse input.
            SetNuiFocus(false, false)
            playerListOpen = false
        end
    end
)


-- ============================================================
-- SERVER SYNCHRONISATION
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if firstSpawn then
            TriggerServerEvent(
                "120fba9e89"
            )
        end
    end
)


-- === HELPER FUNCTION: rebuildSourceLookup() ===
local function rebuildSourceLookup()
    serverSourceToUserId = {}

    for userId, data
        in pairs(fullPlayerListData) do

        if userId ~= "_meta" then
            serverSourceToUserId[
                data[1]
            ] = userId
        end
    end
end


-- Complete replacement of the list.

-- === NETWORK EVENT: receives "9655ebd710" from server/another network source ===
RegisterNetEvent("9655ebd710", function(serverData)
    fullPlayerListData =
        serverData or {}

    rebuildSourceLookup()
    rebuildSortedPlayerList()
    renderPlayerList()
end)


-- Add/update one player.
--
-- incomingPlayer format:
--   {userId, source, name, job, playtime, isStaff, optionalDisplayJob}

-- === NETWORK EVENT: receives "850f6ce5d9" from server/another network source ===
RegisterNetEvent("850f6ce5d9", function(incomingPlayer)
    local userId,
          source,
          name,
          job,
          playtime,
          isStaff,
          optionalDisplayJob =
        table.unpack(incomingPlayer)

    fullPlayerListData[userId] = {
        source,
        name,
        job,
        playtime,
        isStaff,
        optionalDisplayJob
    }

    serverSourceToUserId[source] =
        userId

    rebuildSortedPlayerList()

    if fullPlayerListData._meta then
        fullPlayerListData._meta[2] =
            table.count(
                sortedPlayerListData.civilians
            )
    end
end)


-- Remove one player by permanent user ID.

-- === NETWORK EVENT: receives "9d9f92b5ce" from server/another network source ===
RegisterNetEvent("9d9f92b5ce", function(userId)
    local old =
        fullPlayerListData[userId]

    if old then
        serverSourceToUserId[
            old[1]
        ] = nil
    end

    fullPlayerListData[userId] = nil

    rebuildSortedPlayerList()
end)


-- Replace server footer metadata.

-- === NETWORK EVENT: receives "30043bf5b4" from server/another network source ===
RegisterNetEvent("30043bf5b4", function(meta)
    fullPlayerListData._meta = {
        meta[1],
        meta[2],
        meta[3],
        meta[4],
        meta[5]
    }

    appendServerMetadata(
        rebuildSortedPlayerList()
    )
end)


-- Update only the uptime value.

-- === NETWORK EVENT: receives "d86ba438f2" from server/another network source ===
RegisterNetEvent("d86ba438f2", function(uptime)
    if fullPlayerListData
        and fullPlayerListData._meta then

        fullPlayerListData
            ._meta[1] = uptime

        appendServerMetadata(
            rebuildSortedPlayerList()
        )
    end
end)


-- Update one player's displayed name.
RegisterNetEvent(
    "44e6d4fc95",
    function(userId, newName)
        local data =
            fullPlayerListData[userId]

        if data then
            data[2] = newName
        end
    end
)


-- ============================================================
-- DISCORD RICH PRESENCE
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        Wait(5000)

        local meta =
            fullPlayerListData
            and fullPlayerListData._meta

        if meta then
            SetDiscordAppId(
                "1227686470014472223"
            )

            SetDiscordRichPresenceAsset(
                "cmglogo"
            )

            SetDiscordRichPresenceAssetText(
                "CMG British RP"
            )

            SetDiscordRichPresenceAssetSmall(
                "cmglogo"
            )

            SetDiscordRichPresenceAssetSmallText(
                "CMG British Roleplay"
            )

            SetRichPresence(
                "[ID:" ..
                tostring(
                    CMG.getClientUserId()
                ) ..
                "] | " ..
                tostring(meta[2]) ..
                "/" ..
                tostring(meta[4])
            )
        end

        Wait(15000)
    end
end)
