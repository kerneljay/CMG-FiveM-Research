--[[
    LEVEL 1 BEGINNER GUIDE — Adminmenu
    =======================================

    File: cmg/prod/client/staff/cl_adminmenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Adminmenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 58
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: b4de17ed21, 58a4f99038, 27c1cbc184, b27c8066ac, 418b9bdc25, 875a695765, b935d6126d, 663d6aaba9, b69c3d95fb, 6086032737 (+1 more)
      * Local event handlers: b4de17ed21, 58a4f99038, 27c1cbc184, b27c8066ac, 418b9bdc25, 875a695765, b935d6126d, 663d6aaba9, b69c3d95fb, 6086032737 (+1 more)
      * Server events sent: 50fa0a0852
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_adminmenu, cfg/weapons

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like temporaryValue12, temporaryText4, temporaryTable7, stateFlag3, temporaryCmgCall2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        temporaryValue = GetEntityCoords
        temporaryTable2 = temporaryValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
--[[
    CMG ADMIN MENU - BEGINNER READABLE REWRITE
    ===========================================

    WHY THIS FILE EXISTS
    --------------------
    The supplied file was a decompiler output. It used names such as:

        temporaryValue2
        temporaryValue
        temporaryValue3

    Those names tell you NOTHING about what the code means.

    This rewrite gives the important things real names such as:

        selectedPlayer.permId
        selectedPlayer.tempId
        selectedPlayer.name

        banState.selectedReasons
        banState.generatedInfo

        streamerMode
        playerInvisible
        eventInviteSelection

    HOW TO READ THIS FILE
    ---------------------
    Start at the top and read the big section comments.

    You do NOT need to understand every FiveM native immediately.

    The important beginner idea is:

        DATA/STATE
            ↓
        HELPER FUNCTIONS
            ↓
        ADMIN ACTIONS
            ↓
        RAGEUI MENUS
            ↓
        NETWORK EVENTS

    IMPORTANT
    ---------
    This is the learning/refactor version.

    The separate file:
        cmg_adminmenu_full_cleaned.lua

    is the behaviour-preserving reference version of the decompiled source.
    Compare against that file when checking unusual/edge-case behaviour.

    The original hashed event strings are intentionally kept unchanged.
]]

---------------------------------------------------------------------
-- 1. LOAD CONFIGURATION
---------------------------------------------------------------------

local AdminConfig = CMG.loadModule("cfg/cfg_adminmenu")
local WeaponsConfig = CMG.loadModule("cfg/weapons")

---------------------------------------------------------------------
-- 2. SMALL CONSTANTS
---------------------------------------------------------------------

local MENU_NAMESPACE = "cmgadminmenu"
local MENU_TEXTURE = "cmg_adminui"

local ARROW = "→→→"
local PIN = " 📌"

local NEW_PLAYER_HOURS = 50
local FAVOURITES_KVP = "cmg_adminmenu_favourite_actions"

---------------------------------------------------------------------
-- 3. ORIGINAL HASHED SERVER EVENTS
---------------------------------------------------------------------
--
-- The original resource uses hashed event names.
--
-- DO NOT randomly rename these strings unless you ALSO change the matching
-- server-side event.
--
-- I give each hash a readable Lua constant so the rest of this file says:
--
--     TriggerServerEvent(EVENTS.KICK_PLAYER, ...)
--
-- instead of:
--
--     TriggerServerEvent("50fa0a0852", ...)
---------------------------------------------------------------------

local EVENTS = {
    UPDATE_VIDEO_QUEUE_COUNT = "ada64bdbb8", -- Updates the selected player's queued video-request count.
    UPDATE_EVENT_STATUS = "8f061c87ba", -- Updates whether the selected player is currently in an event.
    UPDATE_KD = "0fcec08935", -- Updates selected player's kills/deaths.
    UPDATE_BUCKET = "352e2c2530", -- Updates selected player's routing bucket.
    UPDATE_ADMIN_ISLAND_STATUS = "98f07a1824", -- Updates selected player's admin-island state.
    UPDATE_CHAT_MUTE_STATUS = "73be498925", -- Updates selected player's chat mute state.
    REQUEST_NEARBY_DISCONNECTS = "bda0071913", -- Requests recently disconnected/nearby player data.
    START_SCREEN_REQUEST = "3776160ce1", -- Starts an admin/management video request.
    OPEN_SPECTATE_SESSION = "1698c999b1", -- Starts the supporting spectate/admin session.
    AFK_CHECK = "5acf669635", -- Requests an AFK check for a player.
    SPECTATE_PLAYER = "d3ac8df566", -- Spectates the selected player.
    STOP_STAFF_SPECTATE = "9ea813a9a7", -- Stops staff spectator mode.
    TAKE_SCREENSHOT = "bb7c559ec0", -- Requests a screenshot of the selected player.
    REQUEST_PLAYER_NOTES = "2484b3161f", -- Requests player-note/ban-preview data.
    UNMUTE_CHAT = "b215852e98", -- Unmutes selected player's chat.
    MUTE_CHAT = "a5fccd06d2", -- Mutes selected player's chat with duration/reason.
    GODLY_WRATH = "2acf3edaab", -- Runs the 'Godly Wrath' admin action.
    FORCE_CLOCK_OFF = "bd67871017", -- Forces the selected player to clock off.
    FREEZE_PLAYER = "3ada9e2a6e", -- Toggles/freezes selected player.
    GOOD_WILL = "10861debbd", -- Gives the configured good-will payment.
    KICK_PLAYER = "50fa0a0852", -- Kicks selected player with a reason.
    KICK_FROM_EVENT = "651e01b29f", -- Kicks selected player from their event.
    KIDNAP = "7d4b0cc8da", -- Runs the superadmin Kidnap action.
    OPEN_F10 = "36eb0566ea", -- Forces/opens F10 for selected player.
    REQUEST_ACCOUNT_INFO = "d834ff934c", -- Requests account information.
    REVIVE = "61b3a1456b", -- Revives a selected player.
    SLAP = "fa046a6a43", -- Slaps selected player.
    ADMIN_ISLAND_LEAVE = "0aaab180aa", -- Teleports player back from Admin Island.
    ADMIN_ISLAND_ENTER = "a27facaa11", -- Teleports player to Admin Island.
    TELEPORT_INTO_CAR = "a37d73a9cd", -- Teleports staff into selected player's vehicle.
    TELEPORT_PLAYER_TO_ME = "13486f83f0", -- Teleports selected player to the admin.
    TELEPORT_PLAYER_TO_PLAYER = "407531ffa1", -- Teleports selected player to another Perm ID.
    TELEPORT_TO_PLAYER = "edcc9356f5", -- Teleports admin to selected player.
    TELEPORT_PLAYER_TO_LOCATION = "40c2f95c44", -- Teleports selected player to predefined location index.
    ENTER_EVENT_BUCKET = "30d81eb7fd", -- Moves admin into the event bucket.
    INVITE_TO_EVENT = "836d25e84a", -- Invites selected players to the event bucket.
    GENERATE_BAN_INFO = "8d8bf6a929", -- Builds final ban summary from selected reasons.
    CONFIRM_BAN = "f91add4590", -- Applies the final ban.
    SAVE_PLAYER_NOTES = "c46101aa60", -- Saves player notes.
    SEND_EDUCATION_MESSAGE = "5328905de0", -- Sends an education message instead of a ban.
    SEARCH_CRITERIA = "eccefd15ad", -- Runs weapon/criteria player search.
    SEARCH_KD = "4ec6ac184c", -- Runs K/D-based player search.
    SEARCH_HARDWARE = "a946a19176", -- Runs hardware/GPU player search.
    SEARCH_BUCKET = "7c26aac9a9", -- Searches players in bucket context.
    RETURN_MAIN_BUCKET = "28e7b8c4a6", -- Returns admin to main routing bucket.
    TP_BUCKET_TO_ME = "36f2864b0d", -- Teleports players in bucket to admin.
    PREPARE_KICK_SELECTED = "70b5850b9a", -- Prepares selected-event-player kick list.
    KICK_SELECTED = "b8cffd9499", -- Kicks selected players.
    KICK_ALL_BUCKET = "fbe11303f1", -- Kicks all applicable players from bucket/event.
    ADD_WATCHLIST = "d133c330d2", -- Adds player to watchlist.
    REMOVE_WATCHLIST = "e0e0d687bf", -- Removes player from watchlist.
    REQUEST_WATCHLIST_STATUS = "a6598be101", -- Requests selected player's watchlist state.
    REQUEST_MY_WATCHLIST = "9ffe9bff78", -- Requests admin's watchlist.
    SET_STREAMER_MODE = "91998f41ec", -- Changes streamer-mode state.
    SET_PLAYER_INVISIBLE = "a1c75c198b", -- Changes staff invisibility state.
    TOGGLE_ADMIN_HIDDEN = "eedde5f1a0", -- Changes admin hidden/global-hidden mode.
    TOGGLE_BLIPS = "f01f4d8e85", -- Toggles admin player blips.
    TP_WAYPOINT = "9bda521029", -- Teleports admin to waypoint.
    TP_COORDS = "d98216474e", -- Teleports admin using coordinate workflow.
    GET_COORDS = "849696085a", -- Admin coordinate utility.
    GET_VECTOR4 = "553513d9c9", -- Admin vector4 utility.
    GIVE_ARMOUR = "2cc39d59e8", -- Gives armour.
    GIVE_CAR_SLOT = "bf40e99a9e", -- Gives car-dev import slot.
    GIVE_ITEM = "5a14be2c55", -- Admin give-item action.
    GIVE_MONEY = "8243afb5e5", -- Admin give-money action.
    GIVE_WEAPON = "fa8dab2df1", -- Admin give-weapon action.
    GIVE_WEAPON_ALT = "3e4ccb951d", -- Additional weapon-related server action.
    ADD_GROUP = "72190482f4", -- Adds a permission/group.
    REMOVE_GROUP = "57df691fa5", -- Removes a permission/group.
    CRUN = "351e7015f2", -- Runs CRUN admin action.
    REMOVE_WARNING = "f54e2d92db", -- Removes warning.
    WHITELIST_PERMID = "72d3a50d96", -- Whitelists a permanent ID.
    KICK_NO_F10 = "33df7014c6", -- Kick workflow that does not require F10.
    COMPENSATION_SUBMIT = "c57a663493", -- Submits compensation package.
    SHARED_POTS = "9b6076a268", -- Opens/requests shared-pots data.
    SPAWN_ADMIN_TAXI = "37f07e419b", -- Notifies server about admin taxi spawn.
    GRAFFITI_ACTION = "212f12ffcc", -- Graffiti-manager server action.
    CUSTOM_RACES = "af94790831", -- Refreshes/prepares custom races.
    VIDEO_UPLOAD_DEBUG = "782c677dad", -- Starts upload-debug UI.
    SUBMIT_UPLOAD_DEBUG = "d0a48729de", -- Submits upload-debug result.
}

---------------------------------------------------------------------
-- 4. CREATE THE RAGEUI MENUS
---------------------------------------------------------------------

-- === HELPER FUNCTION: getMenu(name) ===
local function getMenu(name)
    return RMenu:Get(MENU_NAMESPACE, name)
end

-- === HELPER FUNCTION: createSubMenu(name, parentName, subtitle) ===
local function createSubMenu(name, parentName, subtitle)
    RMenu.Add(
        MENU_NAMESPACE,
        name,
        RageUI.CreateSubMenu(
            getMenu(parentName),
            "",
            subtitle,
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            MENU_TEXTURE,
            MENU_TEXTURE
        )
    )
end

-- Main/root menu.
RMenu.Add(
    MENU_NAMESPACE,
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "Name - PermID - TempID",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        MENU_TEXTURE,
        MENU_TEXTURE
    )
)

getMenu("mainmenu"):SetSubtitle("~b~Players")

-- All of these were created individually in the decompiled file.
-- Using a helper makes the exact same idea much easier to read.
createSubMenu("allplayers", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("closeplayers", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("staffmembers", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("newplayers", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("criteriasearch", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("kdsearch", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("bucketsearch", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("hardwaresearch", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("bucketoptions", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("searchfilter", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("filterbyname", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("filterbytemp", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("filterbyperm", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("searchhistory", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("settings", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("playermenu", "mainmenu", "~b~Admin Player Interaction Menu")
createSubMenu("functions", "mainmenu", "~b~Admin Functions Menu")
createSubMenu("compensation", "functions", "~b~Admin Compensation Menu")
createSubMenu("compensationusers", "compensation", "~b~Admin Compensation Users Menu")
createSubMenu("banreasonmenu", "mainmenu", "~b~Select Ban Reason(s)")
createSubMenu("confirmban", "mainmenu", "~b~Confirm Ban")
createSubMenu("educationrulemenu", "playermenu", "~b~Select Education Rule")
createSubMenu("confirmeducation", "playermenu", "~b~Confirm Education Message")
createSubMenu("playernotesmenu", "playermenu", "~b~Player Notes")
createSubMenu("previewplayernotes", "playermenu", "~b~Player Notes")
createSubMenu("weaponlist", "functions", "~b~Weapon List")
createSubMenu("eventinvite", "functions", "~b~Event Invite")
createSubMenu("kickselectedevents", "functions", "~b~Event Invite")
createSubMenu("graffitimanager", "functions", "~b~Event Invite")
createSubMenu("spectating", "playermenu", "~b~Spectating")
createSubMenu("actions", "playermenu", "~b~Actions")
createSubMenu("teleportmenu", "playermenu", "~b~Teleport")
createSubMenu("watchlistmenu", "playermenu", "~b~Watchlist Management")
createSubMenu("tpplayertolocmenu", "teleportmenu", "~b~TP Player to Location")
createSubMenu("viewwatchlist", "functions", "~b~My Watchlist")

---------------------------------------------------------------------
-- 5. ADMIN MENU STATE
---------------------------------------------------------------------
--
-- "State" simply means values the menu needs to remember while it is open.
---------------------------------------------------------------------

local selectedPlayer = {
    permId = nil,          -- Permanent user ID.
    tempId = nil,          -- Current FiveM/server ID.
    name = nil,

    videoQueueCount = 0,
    isInEvent = false,

    kills = 0,
    deaths = 0,

    bucket = 0,
    isOnAdminIsland = false,
    chatMuted = false,
}

local searchState = {
    query = nil,
    history = {},
    historyPage = 1,

    bucketResults = {},
    criteriaResults = {},
    kdResults = {},
    hardwareResults = {},

    criteriaOptions = { "Mosins", "Pistol", "SMG", "AR", "Heavy" },
    criteriaIndex = 1,

    kdOptions = { "KD", "Kills", "Deaths", "Headshots" },
    kdIndex = 1,
}

local banState = {
    selectedReasons = {}, -- [reasonId] = true
    generatedInfo = {},   -- Filled by server after GENERATE_BAN_INFO.
    search = nil,
    notifyPlayer = true,
    clip = "",
}

local educationState = {
    selectedRule = nil,
    search = "",
    notes = nil,
}

local eventInviteSelection = {}
local closeEventInviteMenuAfterSubmit = false

local selectedKickPlayers = {}
local kickablePlayers = {}

local watchlistState = {
    selectedPlayerStatus = nil,
    myWatchlist = nil,
}

local weaponSearch = ""

local streamerMode = false
local playerInvisible = false
local staffSpectatorEnabled = false
local firingWasDisabled = false

local nearbyPlayerLockPermId = 0
local nearbyPlayerIgnore = {}

-- The server sends recently disconnected players to this table.
--
-- Entries look like:
-- {
--     position = vector3(...),
--     playerSrc = 123,
--     user_id = 456,
--     name = "Example",
--     disconnectTime = GetNetworkTime()
-- }
local recentlyDisconnectedPlayers = {}

local compensationDraft = nil

local lastAdminTaxiSpawn = 0

---------------------------------------------------------------------
-- 6. BAN REASONS
---------------------------------------------------------------------

-- === HELPER FUNCTION: formatBanDuration(hours) ===
local function formatBanDuration(hours)
    if hours == -1 then
        return "Permanent"
    end

    return tostring(hours) .. "hrs"
end

local banReasons = {}

for reasonId, reason in pairs(AdminConfig.banReasons or {}) do
    banReasons[#banReasons + 1] = {
        id = reasonId,
        name = reason.name,
        description = string.format(
            "1st Offence: %s\n2nd Offences: %s\n3rd Offence: %s\n4th Offence: %s",
            formatBanDuration(reason.offense1),
            formatBanDuration(reason.offense2),
            formatBanDuration(reason.offense3),
            formatBanDuration(reason.offense4)
        ),
        selected = false,
    }
end

table.sort(banReasons, function(a, b)
    return a.name < b.name
end)

---------------------------------------------------------------------
-- 7. PREDEFINED TELEPORT LOCATIONS
---------------------------------------------------------------------

local teleportLocations = {
    { name = "PD (Mission Row)", coords = vector3(446.72503662109, -982.44342041016, 30.68931579589) },
    { name = "PD (Sandy)", coords = vector3(1839.3137207031, 3671.0014648438, 34.310436248779) },
    { name = "PD (Paleto)", coords = vector3(-437.32931518555, 6021.2114257813, 31.490119934082) },
    { name = "PD (RPU)", coords = vector3(1552.3885498047, 824.07373046875, 78.693199157715) },
    { name = "City Hall", coords = vector3(-551.08221435547, -194.19259643555, 38.219661712646) },
    { name = "Airport", coords = vector3(-1142.0673828125, -2851.802734375, 13.94624710083) },
    { name = "HMP", coords = vector3(1848.2724609375, 2586.7385253906, 45.671997070313) },
    { name = "Rebel Diner", coords = vector3(1588.3441162109, 6439.3696289063, 25.123600006104) },
    { name = "St Thomas", coords = vector3(283.37664794922, -579.45318603516, 43.219303131104) },
    { name = "Tutorial Spawn", coords = vector3(-1031.0992431641, -2727.9765625, 13.740306854248) },
    { name = "VIP Island", coords = vector3(-2147.6516113281, 5195.7778320312, 15.71883392334) },
    { name = "Legion", coords = vector3(157.10432434082, -1040.2922363281, 29.267738342285) },
}

local playerNameDistanceOptions = {
    "Default",
    "25",
    "50",
    "100",
    "250",
    "500",
    "Custom",
}

---------------------------------------------------------------------
-- 8. FAVOURITE / PINNED PLAYER ACTIONS
---------------------------------------------------------------------

local favouriteActions =
    json.decode(GetResourceKvpString(FAVOURITES_KVP) or "[]")
    or {}

-- === HELPER FUNCTION: isActionPinned(actionName) ===
local function isActionPinned(actionName)
    return table.find(favouriteActions, actionName) ~= false
end

-- === HELPER FUNCTION: saveFavouriteActions() ===
local function saveFavouriteActions()
    SetResourceKvp(
        FAVOURITES_KVP,
        json.encode(favouriteActions)
    )
end

-- === HELPER FUNCTION: toggleFavouriteAction(actionName) ===
local function toggleFavouriteAction(actionName)
    local existingIndex = table.find(favouriteActions, actionName)

    if existingIndex then
        table.remove(favouriteActions, existingIndex)
    else
        table.insert(favouriteActions, actionName)
    end

    saveFavouriteActions()
end

-- === HELPER FUNCTION: makeActionStyle(actionName, rightLabel, showPin) ===
local function makeActionStyle(actionName, rightLabel, showPin)
    rightLabel = rightLabel or ARROW

    if showPin and isActionPinned(actionName) then
        rightLabel = rightLabel .. PIN
    end

    return {
        RightLabel = rightLabel,
    }
end

-- INSERT is control ID 121 in the original script.

-- === HELPER FUNCTION: handlePinHotkey(isHovered, actionName) ===
local function handlePinHotkey(isHovered, actionName)
    if isHovered and IsControlJustPressed(0, 121) then
        toggleFavouriteAction(actionName)
    end
end

---------------------------------------------------------------------
-- 9. SELECTED PLAYER HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: selectedPlayerDescription() ===
local function selectedPlayerDescription()
    return string.format(
        "%s PermID: %s TempID: %s",
        tostring(selectedPlayer.name),
        tostring(selectedPlayer.permId),
        tostring(selectedPlayer.tempId)
    )
end

-- === HELPER FUNCTION: selectPlayer(permId) ===
local function selectPlayer(permId)
    local data = fullPlayerListData and fullPlayerListData[permId]

    if not data then
        return false
    end

    selectedPlayer.permId = permId
    selectedPlayer.tempId = data[1] or 0
    selectedPlayer.name = data[2] or "Error"

    return true
end

-- === HELPER FUNCTION: getPlayerHours(permId) ===
local function getPlayerHours(permId)
    local data = fullPlayerListData and fullPlayerListData[permId]

    if not data then
        return "N/A"
    end

    return data[4] or "N/A"
end

-- === HELPER FUNCTION: getPlayerTempId(permId) ===
local function getPlayerTempId(permId)
    local data = fullPlayerListData and fullPlayerListData[permId]

    if not data then
        return 0
    end

    return data[1] or 0
end

-- === HELPER FUNCTION: getPlayerName(permId) ===
local function getPlayerName(permId)
    local data = fullPlayerListData and fullPlayerListData[permId]

    if not data then
        return "Error"
    end

    return data[2] or "Error"
end

-- === HELPER FUNCTION: isStaffMember(permId) ===
local function isStaffMember(permId)
    local data = fullPlayerListData and fullPlayerListData[permId]

    return data and data[5] == true
end

-- === HELPER FUNCTION: calculateSelectedKD() ===
local function calculateSelectedKD()
    if selectedPlayer.deaths <= 0 then
        return selectedPlayer.kills
    end

    return math.floor((selectedPlayer.kills / selectedPlayer.deaths) * 100) / 100
end

---------------------------------------------------------------------
-- 10. COMMON RAGEUI HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: menuButton(title, description, style, enabled, callback, subMenu) ===
local function menuButton(title, description, style, enabled, callback, subMenu)
    RageUI.ButtonWithStyle(
        title,
        description or "",
        style or {},
        enabled ~= false,
        function(hovered, active, selected)
            if callback then
                callback(hovered, active, selected)
            end
        end,
        subMenu
    )
end

-- === HELPER FUNCTION: arrowButton(title, description, callback, subMenu) ===
local function arrowButton(title, description, callback, subMenu)
    menuButton(
        title,
        description,
        { RightLabel = ARROW },
        true,
        callback,
        subMenu
    )
end

-- === HELPER FUNCTION: promptText(title, defaultText, callback) ===
local function promptText(title, defaultText, callback)
    CMG.clientPrompt(
        title,
        defaultText or "",
        callback
    )
end

-- === HELPER FUNCTION: promptNumber(title, callback) ===
local function promptNumber(title, callback)
    promptText(title, "", function(value)
        local number = tonumber(value)

        if number then
            callback(number)
        else
            -- Beginner: Show a notification to the player.
            notify("~r~Invalid number.")
        end
    end)
end

-- === HELPER FUNCTION: hasPermission(permission) ===
local function hasPermission(permission)
    return CMG.hasClientPermission(permission)
end

-- === HELPER FUNCTION: hasGroup(group) ===
local function hasGroup(group)
    return CMG.hasClientGroup(group)
end

---------------------------------------------------------------------
-- 11. STREAMER MODE
---------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.isStreamerMode() ===
function CMG.isStreamerMode()
    return streamerMode
end

---------------------------------------------------------------------
-- 12. VIDEO-NOTIFICATION SETTING
---------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.drawHideVideoRequestCheckbox() ===
function CMG.drawHideVideoRequestCheckbox()
    local hidden =
        GetResourceKvpInt("cmg_hide_video_notifs") == 1

    RageUI.Checkbox(
        "Hide Video Notifications",
        "",
        hidden,
        {},
        function(_, _, _, checked)
            if checked ~= hidden then
                SetResourceKvpInt(
                    "cmg_hide_video_notifs",
                    checked and 1 or 0
                )
            end
        end
    )
end

---------------------------------------------------------------------
-- 13. EVENT-BUCKET BUTTON
---------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.drawEventJoinAndInviteButtons(shouldCloseAfterInvite) ===
function CMG.drawEventJoinAndInviteButtons(shouldCloseAfterInvite)
    if not hasPermission("admin.eventbucket") then
        return
    end

    if CMG.getPlayerBucket() == AdminConfig.eventBucketId then
        arrowButton(
            "Invite To Event Bucket",
            "",
            function(_, _, selected)
                if not selected then
                    return
                end

                table.clear(eventInviteSelection)
                closeEventInviteMenuAfterSubmit =
                    shouldCloseAfterInvite == true
            end,
            getMenu("eventinvite")
        )
    else
        arrowButton(
            "Enter Event Bucket",
            "",
            function(_, _, selected)
                if selected then
                    -- Beginner: Tell the server that something happened or request a server-side action.
                    TriggerServerEvent(EVENTS.ENTER_EVENT_BUCKET)
                end
            end
        )
    end
end

---------------------------------------------------------------------
-- 14. PLAYER ACTION SYSTEM
---------------------------------------------------------------------
--
-- Each player action has TWO simple jobs:
--
--     isVisible()
--         Can the current admin see this action?
--
--     draw(showPin)
--         Draw the button and run its code when selected.
--
-- This is MUCH easier to follow than dozens of anonymous SHX functions.
---------------------------------------------------------------------

local PlayerActions = {}

-- === HELPER FUNCTION: addPlayerAction(name, isVisible, draw) ===
local function addPlayerAction(name, isVisible, draw)
    PlayerActions[name] = {
        isVisible = isVisible,
        draw = draw,
    }
end

-- === HELPER FUNCTION: actionButton(actionName, title, description, onSelected, subMenu, showPin, rightLabel) ===
local function actionButton(actionName, title, description, onSelected, subMenu, showPin, rightLabel)
    menuButton(
        title,
        description or selectedPlayerDescription(),
        makeActionStyle(actionName, rightLabel, showPin),
        true,
        function(_, active, selected)
            if showPin then
                handlePinHotkey(active, actionName)
            end

            if selected and onSelected then
                onSelected()
            end
        end,
        subMenu
    )
end

-- === HELPER FUNCTION: drawPlayerAction(actionName, showPin) ===
local function drawPlayerAction(actionName, showPin)
    local action = PlayerActions[actionName]

    if not action then
        return
    end

    if action.isVisible and not action.isVisible() then
        return
    end

    action.draw(showPin == true)
end

-- === HELPER FUNCTION: drawPinnedPlayerActions() ===
local function drawPinnedPlayerActions()
    local drewHeading = false

    for _, actionName in ipairs(favouriteActions) do
        local action = PlayerActions[actionName]

        if action and (not action.isVisible or action.isVisible()) then
            if not drewHeading then
                RageUI.Separator("~y~Pinned")
                drewHeading = true
            end

            action.draw(false)
        end
    end

    if drewHeading then
        RageUI.Separator("")
    end
end

---------------------------------------------------------------------
-- 15. SPECTATING / SCREEN ACTIONS
---------------------------------------------------------------------

addPlayerAction(
    "upload_debug",
    function()
        return hasPermission("admin.debugupload")
            and not streamerMode
    end,
    function(showPin)
        actionButton(
            "upload_debug",
            "Perform Upload Debug",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.VIDEO_UPLOAD_DEBUG,
                    selectedPlayer.permId
                )
            end,
            nil,
            showPin
        )
    end
)

addPlayerAction(
    "record_screen_clip",
    function()
        return hasPermission("admin.videos")
            and not streamerMode
    end,
    function(showPin)
        local rightLabel = ARROW

        if selectedPlayer.videoQueueCount > 0 then
            rightLabel =
                tostring(selectedPlayer.videoQueueCount)
                .. " Queued"
        end

        actionButton(
            "record_screen_clip",
            "Record Screen (Clip)",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.START_SCREEN_REQUEST,
                    selectedPlayer.permId,
                    "admin"
                )

                TriggerServerEvent(
                    EVENTS.OPEN_SPECTATE_SESSION,
                    selectedPlayer.permId
                )
            end,
            getMenu("spectating"),
            showPin,
            rightLabel
        )
    end
)

addPlayerAction(
    "request_afk_check",
    function()
        return hasPermission("admin.screenview")
            and not streamerMode
    end,
    function(showPin)
        actionButton(
            "request_afk_check",
            "Request AFK Check",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.AFK_CHECK,
                    selectedPlayer.permId
                )
            end,
            nil,
            showPin
        )
    end
)

addPlayerAction(
    "request_screen_management",
    function()
        return hasPermission("admin.videos2")
            and not streamerMode
    end,
    function(showPin)
        local rightLabel = ARROW

        if selectedPlayer.videoQueueCount > 0 then
            rightLabel =
                tostring(selectedPlayer.videoQueueCount)
                .. " Queued"
        end

        actionButton(
            "request_screen_management",
            "Request Screen (Management)",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.START_SCREEN_REQUEST,
                    selectedPlayer.permId,
                    "management"
                )

                TriggerServerEvent(
                    EVENTS.OPEN_SPECTATE_SESSION,
                    selectedPlayer.permId
                )
            end,
            getMenu("spectating"),
            showPin,
            rightLabel
        )
    end
)

addPlayerAction(
    "spectate_player",
    function()
        return hasPermission("admin.spectate")
    end,
    function(showPin)
        actionButton(
            "spectate_player",
            "Spectate Player",
            selectedPlayerDescription(),
            function()
                if selectedPlayer.permId == CMG.getClientUserId() then
                    -- Beginner: Show a notification to the player.
                    notify("~r~You can not spectate yourself")
                    return
                end

                TriggerServerEvent(
                    EVENTS.SPECTATE_PLAYER,
                    selectedPlayer.permId
                )

                notify("~r~Press [E] to stop spectating.")
                staffSpectatorEnabled = true
            end,
            getMenu("actions"),
            showPin
        )
    end
)

addPlayerAction(
    "take_screenshot",
    function()
        return hasPermission("admin.tickets")
            and not streamerMode
    end,
    function(showPin)
        actionButton(
            "take_screenshot",
            "Take Screenshot",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.TAKE_SCREENSHOT,
                    selectedPlayer.permId
                )
            end,
            getMenu("spectating"),
            showPin
        )
    end
)

---------------------------------------------------------------------
-- 16. MODERATION ACTIONS
---------------------------------------------------------------------

addPlayerAction(
    "ban_player",
    function()
        return hasPermission("player.ban")
    end,
    function(showPin)
        actionButton(
            "ban_player",
            "Ban Player",
            selectedPlayerDescription(),
            function()
                banState.selectedReasons = {}
                banState.generatedInfo = {}
                banState.search = nil

                for _, reason in ipairs(banReasons) do
                    reason.selected = false
                end

                TriggerServerEvent(
                    EVENTS.REQUEST_PLAYER_NOTES,
                    selectedPlayer.permId,
                    streamerMode
                )
            end,
            getMenu("previewplayernotes"),
            showPin
        )
    end
)

addPlayerAction(
    "education_message",
    function()
        return hasPermission("player.kick")
    end,
    function(showPin)
        actionButton(
            "education_message",
            "Education Message",
            "Send a Discord education message instead of banning",
            function()
                educationState.selectedRule = nil
                educationState.search = ""
                educationState.notes = nil
            end,
            getMenu("educationrulemenu"),
            showPin
        )
    end
)

addPlayerAction(
    "chat_mute_player",
    function()
        return hasPermission("admin.tickets")
    end,
    function(showPin)
        if selectedPlayer.chatMuted then
            actionButton(
                "chat_mute_player",
                "Chat Unmute Player",
                selectedPlayerDescription(),
                function()
                    TriggerServerEvent(
                        EVENTS.UNMUTE_CHAT,
                        selectedPlayer.permId
                    )
                end,
                getMenu("actions"),
                showPin
            )

            return
        end

        actionButton(
            "chat_mute_player",
            "Chat Mute Player",
            selectedPlayerDescription(),
            function()
                promptText(
                    "Mute duration in hours (0 = until restart)",
                    "",
                    function(durationText)
                        local duration =
                            tonumber(durationText) or 0

                        promptText(
                            "Reason for mute",
                            "",
                            function(reason)
                                if not reason or #reason < 3 then
                                    notify(
                                        "~r~Reason must be at least 3 characters."
                                    )
                                    return
                                end

                                TriggerServerEvent(
                                    EVENTS.MUTE_CHAT,
                                    selectedPlayer.permId,
                                    duration,
                                    reason
                                )
                            end
                        )
                    end
                )
            end,
            getMenu("actions"),
            showPin
        )
    end
)

local simpleModerationActions = {
    {
        key = "godly_wrath",
        title = "Commit Godly Wrath on Player",
        permission = "admin.zap",
        event = EVENTS.GODLY_WRATH,
    },
    {
        key = "force_clock_off",
        title = "Force Clock Off",
        permission = "admin.forceclockoff",
        event = EVENTS.FORCE_CLOCK_OFF,
    },
    {
        key = "freeze_player",
        title = "Freeze Player",
        permission = "admin.tickets",
        event = EVENTS.FREEZE_PLAYER,
    },
    {
        key = "good_will_gesture",
        title = "Good Will Gesture ~g~ (£500k)",
        description = "~y~Gives £500,000 to a new player. Limited to 1 per staff per day.",
        permission = "admin.tickets",
        event = EVENTS.GOOD_WILL,
    },
    {
        key = "open_f10",
        title = "Open F10",
        permission = "admin.tickets",
        event = EVENTS.OPEN_F10,
    },
    {
        key = "request_account_info",
        title = "Request Account Info",
        permission = "admin.viewaccountinfo",
        hideInStreamerMode = true,
        event = EVENTS.REQUEST_ACCOUNT_INFO,
    },
    {
        key = "slap_player",
        title = "Slap Player",
        permission = "admin.slap",
        event = EVENTS.SLAP,
    },
}

for _, config in ipairs(simpleModerationActions) do
    addPlayerAction(
        config.key,
        function()
            if config.permission
                and not hasPermission(config.permission)
            then
                return false
            end

            if config.hideInStreamerMode
                and streamerMode
            then
                return false
            end

            return true
        end,
        function(showPin)
            actionButton(
                config.key,
                config.title,
                config.description
                    or selectedPlayerDescription(),
                function()
                    TriggerServerEvent(
                        config.event,
                        selectedPlayer.permId
                    )
                end,
                getMenu("actions"),
                showPin
            )
        end
    )
end

addPlayerAction(
    "kick_player",
    function()
        return hasPermission("admin.tickets")
    end,
    function(showPin)
        actionButton(
            "kick_player",
            "Kick Player",
            selectedPlayerDescription(),
            function()
                promptText(
                    "Kick reason",
                    "",
                    function(reason)
                        if reason and reason ~= "" then
                            TriggerServerEvent(
                                EVENTS.KICK_PLAYER,
                                selectedPlayer.permId,
                                reason
                            )
                        end
                    end
                )
            end,
            getMenu("actions"),
            showPin
        )
    end
)

addPlayerAction(
    "kick_player_from_event",
    function()
        return selectedPlayer.isInEvent
    end,
    function(showPin)
        actionButton(
            "kick_player_from_event",
            "Kick Player From Event",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.KICK_FROM_EVENT,
                    selectedPlayer.permId
                )
            end,
            getMenu("actions"),
            showPin
        )
    end
)

addPlayerAction(
    "kidnap",
    function()
        return hasGroup("superadmin")
    end,
    function(showPin)
        actionButton(
            "kidnap",
            "Kidnap",
            "",
            function()
                TriggerServerEvent(
                    EVENTS.KIDNAP,
                    selectedPlayer.permId
                )
            end,
            nil,
            showPin
        )
    end
)

addPlayerAction(
    "player_notes",
    function()
        return hasPermission("admin.tickets")
            and not streamerMode
    end,
    function(showPin)
        actionButton(
            "player_notes",
            "Player Notes",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.REQUEST_PLAYER_NOTES,
                    selectedPlayer.permId,
                    streamerMode
                )
            end,
            getMenu("playernotesmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "revive",
    function()
        return hasPermission("admin.revive")
            or hasPermission("eventadmin.whitelist")
    end,
    function(showPin)
        actionButton(
            "revive",
            "Revive",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.REVIVE,
                    selectedPlayer.permId
                )
            end,
            getMenu("actions"),
            showPin
        )
    end
)

addPlayerAction(
    "search_weapon_list",
    function()
        return hasGroup("superadmin")
    end,
    function(showPin)
        actionButton(
            "search_weapon_list",
            "Search Weapon List",
            "",
            nil,
            getMenu("weaponlist"),
            showPin
        )
    end
)

---------------------------------------------------------------------
-- 17. TELEPORT ACTIONS
---------------------------------------------------------------------

addPlayerAction(
    "teleport_admin_island",
    function()
        return hasPermission("admin.tickets")
    end,
    function(showPin)
        local title
        local event

        if selectedPlayer.isOnAdminIsland then
            title = "Teleport Back from Admin Island"
            event = EVENTS.ADMIN_ISLAND_LEAVE
        else
            title = "Teleport to Admin Island"
            event = EVENTS.ADMIN_ISLAND_ENTER
        end

        actionButton(
            "teleport_admin_island",
            title,
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    event,
                    selectedPlayer.permId
                )
            end,
            getMenu("teleportmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "teleport_into_car",
    function()
        return hasGroup("admin")
    end,
    function(showPin)
        actionButton(
            "teleport_into_car",
            "Teleport Into Car",
            "~y~Teleports you into this player's vehicle (admin+)",
            function()
                TriggerServerEvent(
                    EVENTS.TELEPORT_INTO_CAR,
                    selectedPlayer.permId
                )
            end,
            getMenu("teleportmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "teleport_player_to_location",
    function()
        return hasPermission("admin.tickets")
    end,
    function(showPin)
        actionButton(
            "teleport_player_to_location",
            "Teleport Player to Location",
            "~y~Teleport this player to a predefined location",
            nil,
            getMenu("tpplayertolocmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "teleport_player_to_me",
    nil,
    function(showPin)
        actionButton(
            "teleport_player_to_me",
            "Teleport Player to Me",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.TELEPORT_PLAYER_TO_ME,
                    selectedPlayer.permId
                )
            end,
            getMenu("teleportmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "teleport_player_to_player",
    function()
        return hasPermission("admin.tickets")
    end,
    function(showPin)
        actionButton(
            "teleport_player_to_player",
            "Teleport Player to Player",
            "~y~Teleport this player to another player",
            function()
                promptText(
                    "Enter Destination Player Perm ID",
                    "",
                    function(value)
                        local destinationPermId =
                            tonumber(value)

                        if not destinationPermId then
                            -- Beginner: Show a notification to the player.
                            notify("~r~Invalid Perm ID")
                            return
                        end

                        TriggerServerEvent(
                            EVENTS.TELEPORT_PLAYER_TO_PLAYER,
                            selectedPlayer.permId,
                            destinationPermId
                        )
                    end
                )
            end,
            getMenu("teleportmenu"),
            showPin
        )
    end
)

addPlayerAction(
    "teleport_to_player",
    nil,
    function(showPin)
        actionButton(
            "teleport_to_player",
            "Teleport to Player",
            selectedPlayerDescription(),
            function()
                TriggerServerEvent(
                    EVENTS.TELEPORT_TO_PLAYER,
                    selectedPlayer.permId
                )
            end,
            getMenu("teleportmenu"),
            showPin
        )
    end
)

-- The original file dynamically creates one action per predefined location.
for locationIndex, location in ipairs(teleportLocations) do
    local actionName = "tp_location_" .. locationIndex

    addPlayerAction(
        actionName,
        function()
            return hasPermission("admin.tickets")
        end,
        function(showPin)
            actionButton(
                actionName,
                location.name,
                "~y~Teleport the selected player here.",
                function()
                    TriggerServerEvent(
                        EVENTS.TELEPORT_PLAYER_TO_LOCATION,
                        selectedPlayer.permId,
                        locationIndex
                    )
                end,
                getMenu("tpplayertolocmenu"),
                showPin
            )
        end
    )
end

---------------------------------------------------------------------
-- 18. ACTION GROUPS
---------------------------------------------------------------------

local spectatingActions = {
    "spectate_player",
    "upload_debug",
    "record_screen_clip",
    "request_afk_check",
    "request_screen_management",
    "take_screenshot",
}

local moderationActions = {
    "ban_player",
    "education_message",
    "chat_mute_player",
    "godly_wrath",
    "force_clock_off",
    "freeze_player",
    "good_will_gesture",
    "kick_player",
    "kick_player_from_event",
    "kidnap",
    "open_f10",
    "player_notes",
    "request_account_info",
    "revive",
    "search_weapon_list",
    "slap_player",
}

local teleportActions = {
    "teleport_admin_island",
    "teleport_into_car",
    "teleport_player_to_location",
    "teleport_player_to_me",
    "teleport_player_to_player",
    "teleport_to_player",
}

---------------------------------------------------------------------
-- 19. SELECTED-PLAYER STATE NETWORK EVENTS
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_VIDEO_QUEUE_COUNT)
AddEventHandler(
    EVENTS.UPDATE_VIDEO_QUEUE_COUNT,
    function(permId, count)
        if permId == selectedPlayer.permId then
            selectedPlayer.videoQueueCount = count or 0
        end
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_EVENT_STATUS)
AddEventHandler(
    EVENTS.UPDATE_EVENT_STATUS,
    function(permId, isInEvent)
        if permId == selectedPlayer.permId then
            selectedPlayer.isInEvent =
                isInEvent == true
        end
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_KD)
AddEventHandler(
    EVENTS.UPDATE_KD,
    function(permId, kills, deaths)
        if permId == selectedPlayer.permId then
            selectedPlayer.kills = kills or 0
            selectedPlayer.deaths = deaths or 0
        end
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_BUCKET)
AddEventHandler(
    EVENTS.UPDATE_BUCKET,
    function(permId, bucket)
        if permId == selectedPlayer.permId then
            selectedPlayer.bucket = bucket or 0
        end
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_ADMIN_ISLAND_STATUS)
AddEventHandler(
    EVENTS.UPDATE_ADMIN_ISLAND_STATUS,
    function(permId, value)
        if permId == selectedPlayer.permId then
            selectedPlayer.isOnAdminIsland =
                value == true
        end
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_CHAT_MUTE_STATUS)
AddEventHandler(
    EVENTS.UPDATE_CHAT_MUTE_STATUS,
    function(permId, value)
        if permId == selectedPlayer.permId then
            selectedPlayer.chatMuted =
                value == true
        end
    end
)

---------------------------------------------------------------------
-- 20. GENERIC PLAYER LIST DRAWER
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawPlayerList(filter) ===
local function drawPlayerList(filter)
    local sortedPlayers = CMG.getSortedFullPlayerListData()

    for _, permId in ipairs(sortedPlayers) do
        if permId ~= "_meta"
            and permId ~= "meta"
            and not CMG.isUserHidden(permId)
        then
            local data = fullPlayerListData[permId]

            if data then
                local tempId = data[1] or 0
                local name = data[2] or "Error"
                local hours = data[4] or "N/A"

                local shouldShow =
                    not filter
                    or filter(
                        permId,
                        tempId,
                        name,
                        hours,
                        data
                    )

                if shouldShow then
                    arrowButton(
                        string.format(
                            "%s [%s]",
                            name,
                            tostring(tempId)
                        ),
                        string.format(
                            "%s (%s hours) PermID: %s TempID: %s",
                            name,
                            tostring(hours),
                            tostring(permId),
                            tostring(tempId)
                        ),
                        function(_, _, selected)
                            if selected then
                                selectPlayer(permId)
                            end
                        end,
                        getMenu("playermenu")
                    )
                end
            end
        end
    end
end

---------------------------------------------------------------------
-- 21. RECENTLY DISCONNECTED + NEARBY PLAYERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawDisconnectedPlayerMarkers() ===
local function drawDisconnectedPlayerMarkers()
    local origin =
        -- Beginner: Read an entity's world coordinates.
        GetEntityCoords(CMG.getPlayerPed())

    if CMG.isInSpectate() then
        origin = GetFinalRenderedCamCoord()
    end

    for _, player in pairs(recentlyDisconnectedPlayers) do
        local distance =
            #(origin - player.position)

        if distance < 100.0 then
            DrawMarker(
                1,
                player.position.x,
                player.position.y,
                player.position.z - 1.0,
                0.0, 0.0, 0.0,
                0.0, 0.0, 0.0,
                0.8, 0.8, 2.0,
                255, 165, 0, 200,
                false,
                false,
                2,
                false,
                nil,
                nil,
                false
            )

            if distance < 10.0 then
                local secondsAgo = math.floor(
                    (
                        GetNetworkTime()
                        - player.disconnectTime
                    ) / 1000
                )

                CMG.drawFloatingHelpText(
                    string.format(
                        "Temp ID: %s\nPerm ID: %s\nName: %s\nSeen: %s sec ago",
                        tostring(player.playerSrc),
                        tostring(player.user_id),
                        tostring(player.name),
                        tostring(secondsAgo)
                    ),
                    player.position
                )
            end
        end
    end
end

-- === HELPER FUNCTION: getNearbyPermIds() ===
local function getNearbyPermIds()
    local nearbyPermIds = {}

    local origin =
        -- Beginner: Read an entity's world coordinates.
        GetEntityCoords(CMG.getPlayerPed())

    if CMG.isInSpectate() then
        origin = GetFinalRenderedCamCoord()
    end

    for _, permId in ipairs(CMG.getSortedFullPlayerListData()) do
        if permId ~= "_meta"
            and not CMG.isUserHidden(permId)
        then
            local tempId = getPlayerTempId(permId)
            local playerIndex =
                -- Beginner: Convert a server ID/source into a local player index.
                GetPlayerFromServerId(tempId)

            if playerIndex ~= -1 then
                local ped = GetPlayerPed(playerIndex)
                local coords = GetEntityCoords(ped)

                if #(coords - origin) < 50.0
                    and not nearbyPlayerIgnore[tempId]
                then
                    table.insert(
                        nearbyPermIds,
                        permId
                    )
                end
            end
        end
    end

    return nearbyPermIds
end

-- === HELPER FUNCTION: drawNearbyPlayers() ===
local function drawNearbyPlayers()
    drawDisconnectedPlayerMarkers()

    for _, permId in ipairs(getNearbyPermIds()) do
        local tempId = getPlayerTempId(permId)
        local name = getPlayerName(permId)
        local hours = getPlayerHours(permId)

        menuButton(
            string.format(
                "%s [%s]",
                name,
                tostring(tempId)
            ),
            string.format(
                "%s (%s hours) PermID: %s TempID: %s",
                name,
                tostring(hours),
                tostring(permId),
                tostring(tempId)
            ),
            { RightLabel = ARROW },
            true,
            function(_, active, selected)
                if active then
                    local playerIndex =
                        -- Beginner: Convert a server ID/source into a local player index.
                        GetPlayerFromServerId(tempId)

                    if playerIndex ~= -1 then
                        local ped =
                            GetPlayerPed(playerIndex)

                        if ped ~= CMG.getPlayerPed() then
                            local coords =
                                GetEntityCoords(
                                    ped,
                                    true
                                )

                            DrawMarker(
                                2,
                                coords.x,
                                coords.y,
                                coords.z + 1.1,
                                0.0, 0.0, 0.0,
                                0.0, -180.0, 0.0,
                                0.4, 0.4, 0.4,
                                0, 168, 255, 125,
                                false,
                                true,
                                2,
                                false,
                                nil,
                                nil,
                                false
                            )
                        end
                    end

                    nearbyPlayerLockPermId =
                        permId
                end

                if selected then
                    selectPlayer(permId)
                end
            end,
            getMenu("playermenu")
        )
    end
end

---------------------------------------------------------------------
-- 22. MAIN MENU
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawMainMenu() ===
local function drawMainMenu()
    arrowButton(
        "All Players",
        "",
        nil,
        getMenu("allplayers")
    )

    arrowButton(
        "Nearby Players",
        "",
        function(_, _, selected)
            if selected then
                nearbyPlayerLockPermId = 0

                TriggerServerEvent(
                    EVENTS.REQUEST_NEARBY_DISCONNECTS
                )
            end
        end,
        getMenu("closeplayers")
    )

    arrowButton(
        "Staff Members",
        "",
        nil,
        getMenu("staffmembers")
    )

    arrowButton(
        "New Players",
        "~y~Players with less than "
            .. tostring(NEW_PLAYER_HOURS)
            .. " hours",
        nil,
        getMenu("newplayers")
    )

    arrowButton(
        "Search Players",
        "",
        nil,
        getMenu("searchfilter")
    )

    if CMG.getPlayerBucket() ~= 0 then
        arrowButton(
            "Bucket Options",
            "",
            nil,
            getMenu("bucketoptions")
        )
    end

    arrowButton(
        "Functions",
        "",
        nil,
        getMenu("functions")
    )

    if hasPermission("customraces.whitelisted") then
        arrowButton(
            "Custom Races",
            "",
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.CUSTOM_RACES
                    )
                end
            end,
            RMenu:Get(
                "customraces",
                "mainmenu"
            )
        )
    end

    arrowButton(
        "Settings",
        "",
        nil,
        RMenu:Get(
            "settingsmenu",
            "settings"
        )
    )
end

---------------------------------------------------------------------
-- 23. PLAYER MENU
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawSelectedPlayerMenu() ===
local function drawSelectedPlayerMenu()
    if not selectedPlayer.permId then
        RageUI.Separator("~r~No player selected")
        return
    end

    if CMG.isUserHidden(selectedPlayer.permId) then
        RageUI.CloseAll()
        return
    end

    if hasPermission("admin.viewkds") then
        RageUI.Separator(
            string.format(
                "%s Kills / %s Deaths (%s KD)",
                tostring(selectedPlayer.kills),
                tostring(selectedPlayer.deaths),
                tostring(calculateSelectedKD())
            )
        )
    end

    if selectedPlayer.bucket == 0 then
        RageUI.Separator("Bucket: Main World")
    else
        RageUI.Separator(
            "Bucket: "
                .. tostring(selectedPlayer.bucket)
        )
    end

    drawPinnedPlayerActions()

    arrowButton(
        "Actions",
        "",
        nil,
        getMenu("actions")
    )

    arrowButton(
        "Spectating",
        "",
        nil,
        getMenu("spectating")
    )

    arrowButton(
        "Teleport",
        "",
        nil,
        getMenu("teleportmenu")
    )

    if hasPermission("admin.watchlist") then
        arrowButton(
            "Watchlist",
            "",
            function(_, _, selected)
                if selected then
                    watchlistState.selectedPlayerStatus =
                        nil

                    TriggerServerEvent(
                        EVENTS.REQUEST_WATCHLIST_STATUS,
                        selectedPlayer.permId
                    )
                end
            end,
            getMenu("watchlistmenu")
        )
    end
end

---------------------------------------------------------------------
-- 24. ACTION SUBMENUS
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawActionGroup(actionNames) ===
local function drawActionGroup(actionNames)
    RageUI.Separator(
        "~y~Press INSERT to pin to player menu"
    )

    for _, actionName in ipairs(actionNames) do
        drawPlayerAction(
            actionName,
            true
        )
    end
end

-- === HELPER FUNCTION: drawTeleportLocationActions() ===
local function drawTeleportLocationActions()
    RageUI.Separator(
        "~y~Press INSERT to pin to player menu"
    )

    for index = 1, #teleportLocations do
        drawPlayerAction(
            "tp_location_" .. index,
            true
        )
    end
end

---------------------------------------------------------------------
-- 25. WATCHLIST MENU
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawWatchlistMenu() ===
local function drawWatchlistMenu()
    if watchlistState.selectedPlayerStatus == nil then
        RageUI.Separator("~y~Loading...")
    elseif watchlistState.selectedPlayerStatus then
        RageUI.Separator(
            "~g~Player is currently on watchlist"
        )
    else
        RageUI.Separator(
            "~r~Player is not currently on watchlist"
        )
    end

    menuButton(
        "Add To Watchlist",
        selectedPlayerDescription(),
        {},
        watchlistState.selectedPlayerStatus ~= true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.ADD_WATCHLIST,
                    selectedPlayer.permId
                )
            end
        end
    )

    menuButton(
        "Remove From Watchlist",
        selectedPlayerDescription(),
        {},
        watchlistState.selectedPlayerStatus == true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.REMOVE_WATCHLIST,
                    selectedPlayer.permId
                )
            end
        end
    )
end

---------------------------------------------------------------------
-- 26. PLAYER SEARCH
---------------------------------------------------------------------

-- === HELPER FUNCTION: openTextSearch(title, targetMenu, matcher) ===
local function openTextSearch(title, targetMenu, matcher)
    promptText(
        title,
        "",
        function(value)
            if not value or value == "" then
                return
            end

            searchState.query = value
            searchState.history[#searchState.history + 1] =
                value

            if matcher then
                matcher(value)
            end

            RageUI.Visible(
                targetMenu,
                true
            )
        end
    )
end

-- === HELPER FUNCTION: drawSearchMenu() ===
local function drawSearchMenu()
    arrowButton(
        "Search by Name",
        "",
        function(_, _, selected)
            if selected then
                openTextSearch(
                    "Player Name",
                    getMenu("filterbyname")
                )
            end
        end
    )

    arrowButton(
        "Search by Temp ID",
        "",
        function(_, _, selected)
            if selected then
                openTextSearch(
                    "Temp ID",
                    getMenu("filterbytemp")
                )
            end
        end
    )

    arrowButton(
        "Search by Perm ID",
        "",
        function(_, _, selected)
            if selected then
                openTextSearch(
                    "Perm ID",
                    getMenu("filterbyperm")
                )
            end
        end
    )

    if hasPermission("admin.searchcriteria") then
        RageUI.List(
            "Search Criteria",
            searchState.criteriaOptions,
            searchState.criteriaIndex,
            "",
            {},
            true,
            function(_, _, selected, index)
                searchState.criteriaIndex =
                    index

                if selected then
                    TriggerServerEvent(
                        EVENTS.SEARCH_CRITERIA,
                        searchState.criteriaOptions[index]
                    )
                end
            end
        )
    end

    if hasPermission("admin.searchkd") then
        RageUI.List(
            "K/D Search",
            searchState.kdOptions,
            searchState.kdIndex,
            "",
            {},
            true,
            function(_, _, selected, index)
                searchState.kdIndex =
                    index

                if selected then
                    promptNumber(
                        "Search Value",
                        function(value)
                            TriggerServerEvent(
                                EVENTS.SEARCH_KD,
                                searchState.kdOptions[index],
                                value
                            )
                        end
                    )
                end
            end
        )
    end

    if hasPermission("admin.gpusearch") then
        menuButton(
            "Hardware / GPU Search",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    promptText(
                        "GPU / Hardware search",
                        "",
                        function(value)
                            TriggerServerEvent(
                                EVENTS.SEARCH_HARDWARE,
                                value
                            )
                        end
                    )
                end
            end
        )
    end

    arrowButton(
        "Search History",
        "",
        nil,
        getMenu("searchhistory")
    )
end

-- === HELPER FUNCTION: drawNameSearchResults() ===
local function drawNameSearchResults()
    local query =
        string.lower(searchState.query or "")

    drawPlayerList(
        function(_, _, name)
            return string.find(
                string.lower(name),
                query,
                1,
                true
            ) ~= nil
        end
    )
end

-- === HELPER FUNCTION: drawTempSearchResults() ===
local function drawTempSearchResults()
    local query =
        tostring(searchState.query or "")

    drawPlayerList(
        function(_, tempId)
            return tostring(tempId) == query
        end
    )
end

-- === HELPER FUNCTION: drawPermSearchResults() ===
local function drawPermSearchResults()
    local query =
        tostring(searchState.query or "")

    drawPlayerList(
        function(permId)
            return tostring(permId) == query
        end
    )
end

---------------------------------------------------------------------
-- 27. ADMIN FUNCTIONS
---------------------------------------------------------------------

-- === HELPER FUNCTION: initialiseCompensationDraft() ===
local function initialiseCompensationDraft()
    compensationDraft = {
        cash = 0,
        platinum = 0,
        vehicles = {},
        items = {},
        allUsers = false,
        targetUserIds = {},
        daysUntilExpire = 7,
    }
end

-- === HELPER FUNCTION: drawFunctionsMenu() ===
local function drawFunctionsMenu()
    if hasGroup("superadmin") then
        menuButton(
            "Add Group",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    promptNumber(
                        "Perm ID",
                        function(permId)
                            promptText(
                                "Group",
                                "",
                                function(group)
                                    TriggerServerEvent(
                                        EVENTS.ADD_GROUP,
                                        permId,
                                        group
                                    )
                                end
                            )
                        end
                    )
                end
            end
        )

        menuButton(
            "Remove Group",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    promptNumber(
                        "Perm ID",
                        function(permId)
                            promptText(
                                "Group",
                                "",
                                function(group)
                                    TriggerServerEvent(
                                        EVENTS.REMOVE_GROUP,
                                        permId,
                                        group
                                    )
                                end
                            )
                        end
                    )
                end
            end
        )
    end

    if hasPermission("admin.crun") then
        menuButton(
            "Crun",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.CRUN
                    )
                end
            end
        )
    end

    if hasPermission("admin.tickets") then
        menuButton(
            "Get Coords",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.GET_COORDS
                    )
                end
            end
        )

        menuButton(
            "Get Vector4",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.GET_VECTOR4
                    )
                end
            end
        )
    end

    if hasGroup("superadmin") then
        menuButton(
            "Give Armour",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.GIVE_ARMOUR
                    )
                end
            end
        )
    end

    arrowButton(
        "Give Compensation",
        "",
        function(_, _, selected)
            if selected then
                initialiseCompensationDraft()
            end
        end,
        getMenu("compensation")
    )

    if hasPermission("admin.tickets") then
        RageUI.Checkbox(
            "Streamer Mode",
            "",
            streamerMode,
            {},
            function(_, _, _, checked)
                if checked ~= streamerMode then
                    streamerMode = checked

                    TriggerServerEvent(
                        EVENTS.SET_STREAMER_MODE,
                        streamerMode
                    )
                end
            end
        )

        RageUI.Checkbox(
            "Set Player Invisible",
            "",
            playerInvisible,
            {},
            function(_, _, _, checked)
                if checked ~= playerInvisible then
                    playerInvisible = checked

                    TriggerServerEvent(
                        EVENTS.SET_PLAYER_INVISIBLE,
                        playerInvisible
                    )

                    if not playerInvisible then
                        SetEntityVisible(
                            PlayerPedId(),
                            true,
                            false
                        )

                        DisablePlayerFiring(
                            PlayerId(),
                            false
                        )

                        MumbleSetActive(true)
                    end
                end
            end
        )
    end

    if hasPermission("admin.watchlist") then
        arrowButton(
            "View My Watchlist",
            "",
            function(_, _, selected)
                if selected then
                    watchlistState.myWatchlist =
                        nil

                    TriggerServerEvent(
                        EVENTS.REQUEST_MY_WATCHLIST
                    )
                end
            end,
            getMenu("viewwatchlist")
        )
    end

    -- Direct staff teleport list.
    for _, location in ipairs(teleportLocations) do
        menuButton(
            "TP: " .. location.name,
            "",
            {},
            hasPermission("admin.tickets"),
            function(_, _, selected)
                if selected then
                    CMG.teleport(
                        location.coords,
                        true
                    )
                end
            end
        )
    end

    if hasPermission("admin.tickets") then
        menuButton(
            "Toggle Blips",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.TOGGLE_BLIPS
                    )
                end
            end
        )

        menuButton(
            "TP to Waypoint",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.TP_WAYPOINT
                    )
                end
            end
        )
    end

    CMG.drawHideVideoRequestCheckbox()
    CMG.drawEventJoinAndInviteButtons(false)
end

---------------------------------------------------------------------
-- 28. COMPENSATION MENU - SIMPLE READABLE VERSION
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawCompensationMenu() ===
local function drawCompensationMenu()
    if not compensationDraft then
        initialiseCompensationDraft()
    end

    RageUI.Separator(
        "~y~Build compensation package"
    )

    menuButton(
        "Cash",
        "",
        {
            RightLabel =
                "£"
                .. tostring(compensationDraft.cash)
        },
        true,
        function(_, _, selected)
            if selected then
                promptNumber(
                    "Cash amount",
                    function(value)
                        compensationDraft.cash =
                            math.max(0, value)
                    end
                )
            end
        end
    )

    menuButton(
        "Platinum",
        "",
        {
            RightLabel =
                tostring(
                    compensationDraft.platinum
                )
        },
        true,
        function(_, _, selected)
            if selected then
                promptNumber(
                    "Platinum amount",
                    function(value)
                        compensationDraft.platinum =
                            math.max(0, value)
                    end
                )
            end
        end
    )

    RageUI.Checkbox(
        "All Users",
        "",
        compensationDraft.allUsers,
        {},
        function(_, _, _, checked)
            compensationDraft.allUsers =
                checked
        end
    )

    arrowButton(
        "Select Users",
        "",
        nil,
        getMenu("compensationusers")
    )

    menuButton(
        "Days Until Expiry",
        "",
        {
            RightLabel =
                tostring(
                    compensationDraft.daysUntilExpire
                )
        },
        true,
        function(_, _, selected)
            if selected then
                promptNumber(
                    "Days until compensation expires",
                    function(value)
                        compensationDraft.daysUntilExpire =
                            math.max(
                                1,
                                math.floor(value)
                            )
                    end
                )
            end
        end
    )

    menuButton(
        "~g~Submit Compensation",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.COMPENSATION_SUBMIT,
                    compensationDraft
                )

                compensationDraft = nil
            end
        end
    )
end

-- === HELPER FUNCTION: drawCompensationUsersMenu() ===
local function drawCompensationUsersMenu()
    if not compensationDraft then
        initialiseCompensationDraft()
    end

    drawPlayerList(
        function(permId)
            local checked =
                compensationDraft.targetUserIds[permId]
                == true

            RageUI.Checkbox(
                getPlayerName(permId)
                    .. " ("
                    .. tostring(permId)
                    .. ")",
                "",
                checked,
                {},
                function(_, _, _, value)
                    compensationDraft.targetUserIds[permId] =
                        value and true or nil
                end
            )

            -- We draw our own checkbox, so tell generic player list
            -- not to draw another normal button.
            return false
        end
    )
end

---------------------------------------------------------------------
-- 29. WEAPON SEARCH
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawWeaponList() ===
local function drawWeaponList()
    RageUI.Separator(
        "Searching for: "
            .. tostring(weaponSearch)
    )

    if IsControlJustPressed(0, 190) then
        promptText(
            "Search weapon",
            weaponSearch,
            function(value)
                weaponSearch =
                    string.upper(value or "")
            end
        )
    end

    for weaponName, weapon in pairs(WeaponsConfig or {}) do
        local displayName =
            tostring(
                weapon.name
                or weaponName
            )

        local spawnCode =
            weapon.spawncode
            or weaponName

        local matches =
            weaponSearch == ""
            or string.find(
                string.upper(displayName),
                weaponSearch,
                1,
                true
            )

        if matches then
            menuButton(
                displayName,
                tostring(spawnCode),
                {},
                true,
                function(_, _, selected)
                    if selected then
                        TriggerServerEvent(
                            EVENTS.GIVE_WEAPON,
                            spawnCode
                        )
                    end
                end
            )
        end
    end
end

---------------------------------------------------------------------
-- 30. BAN WORKFLOW
---------------------------------------------------------------------

-- === HELPER FUNCTION: resetBanState() ===
local function resetBanState()
    banState.selectedReasons = {}
    banState.generatedInfo = {}
    banState.search = nil
    banState.clip = ""
    banState.notifyPlayer = true

    for _, reason in ipairs(banReasons) do
        reason.selected = false
    end
end

-- === HELPER FUNCTION: drawBanReasonMenu() ===
local function drawBanReasonMenu()
    if IsControlJustPressed(0, 22) then
        promptText(
            "Search for: ",
            "",
            function(value)
                if value and value ~= "" then
                    banState.search =
                        string.lower(value)
                end
            end
        )
    end

    for _, reason in ipairs(banReasons) do
        local visible = true

        if banState.search then
            local idMatches =
                string.find(
                    string.lower(
                        tostring(reason.id)
                    ),
                    banState.search,
                    1,
                    true
                )

            local nameMatches =
                string.find(
                    string.lower(
                        reason.name
                    ),
                    banState.search,
                    1,
                    true
                )

            visible =
                idMatches ~= nil
                or nameMatches ~= nil
        end

        if visible then
            RageUI.Checkbox(
                reason.name,
                reason.description,
                reason.selected,
                {
                    Style =
                        RageUI.CheckboxStyle.Car,
                },
                function() end,
                function()
                    banState.selectedReasons[
                        reason.id
                    ] = true

                    reason.selected = true
                end,
                function()
                    banState.selectedReasons[
                        reason.id
                    ] = nil

                    reason.selected = false
                end
            )
        end
    end

    arrowButton(
        "Confirm Ban",
        "",
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.GENERATE_BAN_INFO,
                    selectedPlayer.permId,
                    banState.selectedReasons
                )

                banState.generatedInfo = {}
                banState.clip = ""
                banState.notifyPlayer = true
            end
        end,
        getMenu("confirmban")
    )
end

-- === HELPER FUNCTION: drawConfirmBanMenu() ===
local function drawConfirmBanMenu()
    local info = banState.generatedInfo

    if table.count(info) == 0 then
        RageUI.Separator(
            "~g~Generating ban info, please wait..."
        )
        return
    end

    RageUI.Separator(
        "~r~You are about to ban "
            .. tostring(info.name)
    )

    RageUI.Separator(
        "~w~For the following reason(s):"
    )

    for _, reasonText in pairs(
        info.reasons or {}
    ) do
        RageUI.Separator(reasonText)
    end

    local durationText

    if (info.totalLength or 0) >= 9000 then
        durationText = "Permanent"
    else
        durationText =
            tostring(info.totalLength or 0)
            .. " hrs"
    end

    RageUI.Separator(
        "~w~Total Length: "
            .. durationText
    )

    menuButton(
        "Clip",
        "Message sent to the user:\n"
            .. banState.clip,
        {
            RightLabel =
                #banState.clip > 0
                and "Configured"
                or "None",
        },
        true,
        function(_, _, selected)
            if selected then
                promptText(
                    "Clip (or empty to clear)",
                    "",
                    function(value)
                        if value and #value > 1 then
                            banState.clip = value
                        else
                            banState.clip = ""
                        end
                    end
                )
            end
        end
    )

    RageUI.Checkbox(
        "Notify",
        "Whether to notify the player via Discord",
        banState.notifyPlayer,
        {},
        function(_, _, _, checked)
            banState.notifyPlayer =
                checked
        end
    )

    local canConfirm =
        (info.totalLength or 0) ~= 0

    menuButton(
        "Confirm",
        canConfirm
            and ""
            or "You must select at least one reason to ban this player.",
        { RightLabel = ARROW },
        canConfirm,
        function(_, _, selected)
            if not selected then
                return
            end

            if selectedPlayer.permId
                == CMG.getClientUserId()
            then
                notify(
                    "~r~You can not ban yourself numpty."
                )
                return
            end

            TriggerServerEvent(
                EVENTS.CONFIRM_BAN,
                selectedPlayer.permId,
                info.banReason,
                info.totalLength,
                info.fullBanInfo,
                banState.notifyPlayer,
                banState.clip
            )

            resetBanState()
        end,
        getMenu("mainmenu")
    )
end

---------------------------------------------------------------------
-- 31. WATCHLIST RESULTS
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawMyWatchlist() ===
local function drawMyWatchlist()
    local watchlist =
        watchlistState.myWatchlist

    if watchlist == nil then
        RageUI.Separator("~y~Loading...")
        return
    end

    if #watchlist == 0 then
        RageUI.Separator(
            "~r~Your watchlist is empty"
        )
        return
    end

    RageUI.Separator(
        "~y~Watchlist entries: "
            .. tostring(#watchlist)
    )

    for _, entry in ipairs(watchlist) do
        menuButton(
            tostring(entry.name or "Offline")
                .. " ("
                .. tostring(
                    entry.user_id
                )
                .. ")",
            "",
            { RightLabel = "Remove" },
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.REMOVE_WATCHLIST,
                        entry.user_id
                    )

                    TriggerServerEvent(
                        EVENTS.REQUEST_MY_WATCHLIST
                    )
                end
            end
        )
    end
end

---------------------------------------------------------------------
-- 32. BUCKET OPTIONS
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawBucketOptions() ===
local function drawBucketOptions()
    menuButton(
        "Return To Main Bucket",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.RETURN_MAIN_BUCKET
                )
            end
        end
    )

    menuButton(
        "Search All Players",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.SEARCH_BUCKET
                )
            end
        end
    )

    menuButton(
        "Teleport All Players To Me",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.TP_BUCKET_TO_ME
                )
            end
        end
    )

    arrowButton(
        "Kick Selected Players",
        "",
        function(_, _, selected)
            if selected then
                table.clear(
                    selectedKickPlayers
                )

                table.clear(
                    kickablePlayers
                )

                TriggerServerEvent(
                    EVENTS.PREPARE_KICK_SELECTED
                )
            end
        end,
        getMenu("kickselectedevents")
    )

    menuButton(
        "Kick All Players",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.KICK_ALL_BUCKET
                )
            end
        end
    )
end

---------------------------------------------------------------------
-- 33. EVENT INVITE MENU
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawEventInviteMenu() ===
local function drawEventInviteMenu()
    menuButton(
        "~g~Invite Selected",
        "",
        {},
        next(eventInviteSelection) ~= nil,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.INVITE_TO_EVENT,
                    eventInviteSelection
                )

                if closeEventInviteMenuAfterSubmit then
                    RageUI.CloseAll()
                end
            end
        end
    )

    RageUI.Separator("~y~Players")

    for _, permId in ipairs(
        CMG.getSortedFullPlayerListData()
    ) do
        if permId ~= "_meta" then
            local checked =
                eventInviteSelection[permId]
                == true

            RageUI.Checkbox(
                string.format(
                    "%s (%s)",
                    getPlayerName(permId),
                    tostring(permId)
                ),
                "",
                checked,
                {},
                function(_, _, _, value)
                    eventInviteSelection[permId] =
                        value and true or nil
                end
            )
        end
    end
end

---------------------------------------------------------------------
-- 34. KICK-SELECTED MENU
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawKickSelectedMenu() ===
local function drawKickSelectedMenu()
    menuButton(
        "~r~Kick Selected",
        "",
        {},
        next(selectedKickPlayers) ~= nil,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    EVENTS.KICK_SELECTED,
                    selectedKickPlayers
                )
            end
        end
    )

    for permId, player in pairs(
        kickablePlayers
    ) do
        RageUI.Checkbox(
            tostring(
                player.name
                or permId
            ),
            "",
            selectedKickPlayers[permId]
                == true,
            {},
            function(_, _, _, checked)
                selectedKickPlayers[permId] =
                    checked and true or nil
            end
        )
    end
end

---------------------------------------------------------------------
-- 35. DRAW EVERY MENU
---------------------------------------------------------------------
--
-- RageUI checks each menu every frame.
-- Only the currently visible menu actually draws its contents.
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawAdminMenus() ===
local function drawAdminMenus()
    RageUI.IsVisible(
        getMenu("mainmenu"),
        true,
        true,
        true,
        drawMainMenu
    )

    RageUI.IsVisible(
        getMenu("allplayers"),
        true,
        true,
        true,
        function()
            drawPlayerList()
        end
    )

    RageUI.IsVisible(
        getMenu("closeplayers"),
        true,
        true,
        true,
        drawNearbyPlayers
    )

    RageUI.IsVisible(
        getMenu("staffmembers"),
        true,
        true,
        true,
        function()
            drawPlayerList(
                function(permId)
                    return isStaffMember(permId)
                end
            )
        end
    )

    RageUI.IsVisible(
        getMenu("newplayers"),
        true,
        true,
        true,
        function()
            drawPlayerList(
                function(_, _, _, hours)
                    local numericHours =
                        tonumber(hours)

                    return numericHours
                        and numericHours
                            < NEW_PLAYER_HOURS
                end
            )
        end
    )

    RageUI.IsVisible(
        getMenu("filterbyname"),
        true,
        true,
        true,
        drawNameSearchResults
    )

    RageUI.IsVisible(
        getMenu("filterbytemp"),
        true,
        true,
        true,
        drawTempSearchResults
    )

    RageUI.IsVisible(
        getMenu("filterbyperm"),
        true,
        true,
        true,
        drawPermSearchResults
    )

    RageUI.IsVisible(
        getMenu("searchfilter"),
        true,
        true,
        true,
        drawSearchMenu
    )

    RageUI.IsVisible(
        getMenu("playermenu"),
        true,
        true,
        true,
        drawSelectedPlayerMenu
    )

    RageUI.IsVisible(
        getMenu("spectating"),
        true,
        true,
        true,
        function()
            drawActionGroup(
                spectatingActions
            )
        end
    )

    RageUI.IsVisible(
        getMenu("actions"),
        true,
        true,
        true,
        function()
            drawActionGroup(
                moderationActions
            )
        end
    )

    RageUI.IsVisible(
        getMenu("teleportmenu"),
        true,
        true,
        true,
        function()
            drawActionGroup(
                teleportActions
            )
        end
    )

    RageUI.IsVisible(
        getMenu("tpplayertolocmenu"),
        true,
        true,
        true,
        drawTeleportLocationActions
    )

    RageUI.IsVisible(
        getMenu("watchlistmenu"),
        true,
        true,
        true,
        drawWatchlistMenu
    )

    RageUI.IsVisible(
        getMenu("functions"),
        true,
        true,
        true,
        drawFunctionsMenu
    )

    RageUI.IsVisible(
        getMenu("compensation"),
        true,
        true,
        true,
        drawCompensationMenu
    )

    RageUI.IsVisible(
        getMenu("compensationusers"),
        true,
        true,
        true,
        drawCompensationUsersMenu
    )

    RageUI.IsVisible(
        getMenu("weaponlist"),
        true,
        true,
        true,
        drawWeaponList
    )

    RageUI.IsVisible(
        getMenu("banreasonmenu"),
        true,
        true,
        true,
        drawBanReasonMenu
    )

    RageUI.IsVisible(
        getMenu("confirmban"),
        true,
        true,
        true,
        drawConfirmBanMenu
    )

    RageUI.IsVisible(
        getMenu("viewwatchlist"),
        true,
        true,
        true,
        drawMyWatchlist
    )

    RageUI.IsVisible(
        getMenu("bucketoptions"),
        true,
        true,
        true,
        drawBucketOptions
    )

    RageUI.IsVisible(
        getMenu("eventinvite"),
        true,
        true,
        true,
        drawEventInviteMenu
    )

    RageUI.IsVisible(
        getMenu("kickselectedevents"),
        true,
        true,
        true,
        drawKickSelectedMenu
    )

    -----------------------------------------------------------------
    -- The source contains several specialised result/workflow menus.
    --
    -- Their data is still captured by the readable event handlers below.
    -- For exact UI layout/edge behaviour, compare against:
    --
    --     cmg_adminmenu_full_cleaned.lua
    --
    -- These are intentionally kept as simple readable result lists here.
    -----------------------------------------------------------------

    RageUI.IsVisible(
        getMenu("criteriasearch"),
        true,
        true,
        true,
        function()
            RageUI.Separator(
                "~y~Criteria Search Results"
            )

            for _, result in pairs(
                searchState.criteriaResults
            ) do
                local permId =
                    result.user_id
                    or result.permId
                    or result[1]

                if permId then
                    arrowButton(
                        tostring(
                            result.name
                            or getPlayerName(permId)
                        ),
                        "PermID: "
                            .. tostring(permId),
                        function(_, _, selected)
                            if selected then
                                selectPlayer(permId)
                            end
                        end,
                        getMenu("playermenu")
                    )
                end
            end
        end
    )

    RageUI.IsVisible(
        getMenu("kdsearch"),
        true,
        true,
        true,
        function()
            RageUI.Separator(
                "~y~K/D Search Results"
            )

            for _, result in pairs(
                searchState.kdResults
            ) do
                RageUI.Separator(
                    json.encode(result)
                )
            end
        end
    )

    RageUI.IsVisible(
        getMenu("bucketsearch"),
        true,
        true,
        true,
        function()
            RageUI.Separator(
                "~y~Bucket Search Results"
            )

            for _, result in pairs(
                searchState.bucketResults
            ) do
                RageUI.Separator(
                    json.encode(result)
                )
            end
        end
    )

    RageUI.IsVisible(
        getMenu("hardwaresearch"),
        true,
        true,
        true,
        function()
            RageUI.Separator(
                "~y~Hardware Search Results"
            )

            for _, result in pairs(
                searchState.hardwareResults
            ) do
                RageUI.Separator(
                    json.encode(result)
                )
            end
        end
    )

    RageUI.IsVisible(
        getMenu("searchhistory"),
        true,
        true,
        true,
        function()
            if #searchState.history == 0 then
                RageUI.Separator(
                    "~r~No search history"
                )
                return
            end

            for index =
                #searchState.history,
                1,
                -1
            do
                menuButton(
                    tostring(
                        searchState.history[index]
                    ),
                    "",
                    {},
                    true,
                    function(_, _, selected)
                        if selected then
                            searchState.query =
                                searchState.history[index]
                        end
                    end
                )
            end
        end
    )
end

---------------------------------------------------------------------
-- 36. MENU MAIN LOOP
---------------------------------------------------------------------
--
-- The original decompile ultimately passes one very large function into
-- RageUI.CreateWhile.
--
-- Breaking it into drawAdminMenus() is much easier to understand.
---------------------------------------------------------------------

RageUI.CreateWhile(
    1.0,
    MENU_NAMESPACE,
    nil,
    function()
        drawAdminMenus()
    end
)

---------------------------------------------------------------------
-- 37. INVISIBILITY / STAFF SPECTATOR CONTROL TICK
---------------------------------------------------------------------

local allowedInvisibleWeaponGroups = {
    [416676503] = true,
    [860033945] = true,
    [1159398588] = true,
    [-957766203] = true,
    [970310034] = true,
    [-1569042529] = true,
}

-- === HELPER FUNCTION: staffSpectatorControlTick() ===
local function staffSpectatorControlTick()
    -------------------------------------------------------------
    -- Press E to stop staff spectating.
    -------------------------------------------------------------

    if staffSpectatorEnabled
        and IsControlJustPressed(0, 51)
    then
        staffSpectatorEnabled = false

        TriggerServerEvent(
            EVENTS.STOP_STAFF_SPECTATE
        )
    end

    -------------------------------------------------------------
    -- Invisible-admin controls.
    -------------------------------------------------------------

    if not playerInvisible then
        return
    end

    local ped = PlayerPedId()

    SetEntityVisible(
        ped,
        false,
        false
    )

    local playerId = PlayerId()
    local weapon =
        GetSelectedPedWeapon(ped)

    local weaponGroup =
        GetWeapontypeGroup(weapon)

    local _, aimedEntity =
        GetEntityPlayerIsFreeAimingAt(
            playerId
        )

    local aimingAtPed =
        aimedEntity
        and IsEntityAPed(aimedEntity)

    -- The original permits firing in a small set of weapon groups
    -- when not aiming at a ped. Otherwise firing/melee controls are blocked.
    if allowedInvisibleWeaponGroups[weaponGroup]
        and not aimingAtPed
    then
        if firingWasDisabled then
            DisablePlayerFiring(
                playerId,
                false
            )

            firingWasDisabled = false
        end
    else
        DisablePlayerFiring(
            playerId,
            true
        )

        DisableControlAction(0, 24, true)
        DisableControlAction(0, 140, true)
        DisableControlAction(0, 141, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 263, true)
        DisableControlAction(0, 264, true)

        firingWasDisabled = true
    end

    DisableControlAction(0, 23, true)

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle ~= 0 then
        ClearPedTasksImmediately(ped)

        TaskLeaveVehicle(
            ped,
            vehicle,
            16
        )
    end
end

CMG.createThreadOnTick(
    staffSpectatorControlTick,
    "Staff Spectator Controls"
)

---------------------------------------------------------------------
-- 38. DATA EVENTS FROM THE SERVER
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b4de17ed21".

-- === NETWORK EVENT: receives "b4de17ed21" from server/another network source ===
RegisterNetEvent("b4de17ed21")
AddEventHandler(
    "b4de17ed21",
    function(tempId, ignored)
        nearbyPlayerIgnore[tempId] =
            ignored or nil
    end
)

-- Recently disconnected players.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "58a4f99038".

-- === NETWORK EVENT: receives "58a4f99038" from server/another network source ===
RegisterNetEvent("58a4f99038")
AddEventHandler(
    "58a4f99038",
    function(players)
        recentlyDisconnectedPlayers =
            players or {}
    end
)

-- Player notes returned by server.
local currentPlayerNotes = nil

-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "27c1cbc184".

-- === NETWORK EVENT: receives "27c1cbc184" from server/another network source ===
RegisterNetEvent("27c1cbc184")
AddEventHandler(
    "27c1cbc184",
    function(encodedNotes)
        if encodedNotes then
            currentPlayerNotes =
                json.decode(encodedNotes)
        else
            currentPlayerNotes = {}
        end
    end
)

-- Generated ban information.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b27c8066ac".

-- === NETWORK EVENT: receives "b27c8066ac" from server/another network source ===
RegisterNetEvent("b27c8066ac")
AddEventHandler(
    "b27c8066ac",
    function(info)
        banState.generatedInfo =
            info or {}
    end
)

-- Criteria-search results.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "418b9bdc25".

-- === NETWORK EVENT: receives "418b9bdc25" from server/another network source ===
RegisterNetEvent("418b9bdc25")
AddEventHandler(
    "418b9bdc25",
    function(results)
        searchState.criteriaResults =
            results or {}

        RageUI.Visible(
            getMenu("criteriasearch"),
            true
        )
    end
)

-- K/D-search results.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "875a695765".

-- === NETWORK EVENT: receives "875a695765" from server/another network source ===
RegisterNetEvent("875a695765")
AddEventHandler(
    "875a695765",
    function(results)
        searchState.kdResults =
            results or {}

        RageUI.Visible(
            getMenu("kdsearch"),
            true
        )
    end
)

-- Hardware/GPU-search results.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b935d6126d".

-- === NETWORK EVENT: receives "b935d6126d" from server/another network source ===
RegisterNetEvent("b935d6126d")
AddEventHandler(
    "b935d6126d",
    function(results)
        searchState.hardwareResults =
            results or {}

        RageUI.Visible(
            getMenu("hardwaresearch"),
            true
        )
    end
)

-- Bucket-search results.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "663d6aaba9".

-- === NETWORK EVENT: receives "663d6aaba9" from server/another network source ===
RegisterNetEvent("663d6aaba9")
AddEventHandler(
    "663d6aaba9",
    function(results)
        searchState.bucketResults =
            results or {}

        RageUI.Visible(
            getMenu("bucketsearch"),
            true
        )
    end
)

-- Selected player's watchlist state.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b69c3d95fb".

-- === NETWORK EVENT: receives "b69c3d95fb" from server/another network source ===
RegisterNetEvent("b69c3d95fb")
AddEventHandler(
    "b69c3d95fb",
    function(status)
        watchlistState.selectedPlayerStatus =
            status
    end
)

-- Current admin's full watchlist.
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6086032737".

-- === NETWORK EVENT: receives "6086032737" from server/another network source ===
RegisterNetEvent("6086032737")
AddEventHandler(
    "6086032737",
    function(watchlist)
        watchlistState.myWatchlist =
            watchlist or {}
    end
)

---------------------------------------------------------------------
-- 39. VEHICLE TELEPORT HELPER EVENT
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "71d244f7c0".

-- === NETWORK EVENT: receives "71d244f7c0" from server/another network source ===
RegisterNetEvent("71d244f7c0")
AddEventHandler(
    "71d244f7c0",
    function(coords, networkVehicleId)
        SetEntityCoordsNoOffset(
            PlayerPedId(),
            coords.x,
            coords.y,
            coords.z,
            false,
            false,
            false
        )

        if not networkVehicleId then
            return
        end

        local vehicle =
            NetworkGetEntityFromNetworkId(
                networkVehicleId
            )

        if vehicle == 0 then
            return
        end

        for seat = -1,
            GetVehicleMaxNumberOfPassengers(vehicle) - 1
        do
            if IsVehicleSeatFree(
                vehicle,
                seat
            ) then
                SetPedIntoVehicle(
                    PlayerPedId(),
                    vehicle,
                    seat
                )

                return
            end
        end

        notify(
            "~r~No free vehicle seat."
        )
    end
)

---------------------------------------------------------------------
-- 40. ADMIN UPLOAD-DEBUG UI
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.VIDEO_UPLOAD_DEBUG)
AddEventHandler(
    EVENTS.VIDEO_UPLOAD_DEBUG,
    function()
        CMG.uiSendMessage({
            performUploadDebug = true,
        })
    end
)

CMG.uiRegisterCallback(
    "submitUploadDebug",
    function(data)
        TriggerServerEvent(
            EVENTS.SUBMIT_UPLOAD_DEBUG,
            data
        )
    end
)

---------------------------------------------------------------------
-- 41. EXPORTED / SHARED HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.enableAdminModeSpectator() ===
function CMG.enableAdminModeSpectator()
    staffSpectatorEnabled = true
end

-- === HELPER FUNCTION: CMG.getEventBucketId() ===
function CMG.getEventBucketId()
    return AdminConfig.eventBucketId
end

---------------------------------------------------------------------
-- 42. BEGINNER NOTES ABOUT THE PARTS LEFT IN THE REFERENCE COPY
---------------------------------------------------------------------
--
-- The original source contains a few large, specialised UI workflows whose
-- exact layout is easier to understand by comparing them with this state:
--
--   * education-rule selection / confirmation
--   * player-note editing
--   * graffiti manager
--   * exact compensation vehicle/item editors
--   * ticket-feedback smiley UI
--   * screenshot/video upload callbacks
--   * April Fools random effects
--   * Admin Island voice/green-zone setup
--
-- I did NOT pretend those giant decompiler blocks were magically safe to
-- rewrite without the matching server/config/resources.
--
-- Their ORIGINAL executable implementation is retained in:
--
--     cmg_adminmenu_full_cleaned.lua
--
-- This beginner file gives the important systems real names and shows the
-- control/data flow without 12,000 lines of SHX register noise.
--
-- When learning the code:
--
--   1. Find the menu/action here.
--   2. Find its EVENT constant.
--   3. Search that hash in the full cleaned reference.
--   4. Then inspect the matching server-side event.
--
-- That is a much safer way to understand a decompiled FiveM resource.
---------------------------------------------------------------------
