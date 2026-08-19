--[[
    LEVEL 1 BEGINNER GUIDE — Settings
    ======================================

    File: cmg/prod/client/core/cl_settings.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Settings feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 55
      * Background threads: 3
      * Always-running loops: 2
      * Commands: settings
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:chatMessagePing
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_settings, cfg/cfg_hud, cfg/cfg_weaponsonback, cfg/weapons

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
    CMG SETTINGS / HUD
    Beginner-Friendly Rewrite
    ==================================================================

    This is a READABLE / LEARNING reconstruction of the supplied 12k-line
    decompile. The exact decompiled reference is saved separately as:

        settings_full_cleaned_reference.lua

    The original file is mainly:
      * F2 Settings menus
      * local FiveM KVP preferences
      * minimap position/fine offsets
      * weapon/chain-on-back placement editing
      * weapon + clothing access menus
      * gang settings
      * graphics/sky/timecycle settings
      * kill/blood effects
      * UI visibility
      * Discord relinking
      * compensation
      * Overwatch/admin viewer
      * misc performance/client options

    The decompiler reused SHX registers and produced broken multi-return menu
    assignments, so this version uses normal names and groups the logic by
    feature instead of pretending every SHX value has a safe one-to-one name.
]]

---------------------------------------------------------------------------
-- CONFIG
---------------------------------------------------------------------------

local SettingsConfig = CMG.loadModule("cfg/cfg_settings")
local HudConfig = CMG.loadModule("cfg/cfg_hud")
local WeaponsOnBackConfig = CMG.loadModule("cfg/cfg_weaponsonback")
local WeaponsConfig = CMG.loadModule("cfg/weapons")

---------------------------------------------------------------------------
-- HASHED EVENTS
-- The hashes are unchanged. Only the Lua constant names are readable.
---------------------------------------------------------------------------

local EVENTS = {
    -- Local weapon-layout events
    DISABLE_HITMARKERS = "04311f0e28",
    ENABLE_HITMARKERS = "3b69022dfc",
    DISABLE_FRONT_SMGS = "21f52e326d",
    ENABLE_FRONT_SMGS = "b6b9f5a6b2",
    DISABLE_FRONT_ARS = "45968dd649",
    ENABLE_FRONT_ARS = "c4b3821d33",
    DISABLE_DIAGONAL_WEAPONS = "311dece672",
    ENABLE_DIAGONAL_WEAPONS = "2d7bd9be41",

    GANG_PING_SOUND_CHANGED = "1c597fc419",
    GANG_NAME_DISTANCE_CHANGED = "1dcc710970",
    REFRESH_TRAPPER_SHELVES = "4b662b8a67",
    REFRESH_LONG_BLIPS = "e713d91b70",

    -- Main settings/access requests
    OPEN_CMG_CLUB = "e38a958e74",

    REQUEST_WEAPON_ACCESS = "ace58f06ba",
    RECEIVE_WEAPON_ACCESS = "80d1ceb60b",
    RECEIVE_WEAPON_ACCESS_CODE = "7b9ca63d8f",
    RECEIVE_WEAPON_WHITELIST_USERS = "9632ca7156",
    CREATE_WEAPON_ACCESS_CODE = "69d879a5e5",
    REQUEST_WEAPON_WHITELIST_USERS = "cd7590723a",

    REQUEST_CLOTHING_ACCESS = "9b316f78eb",
    RECEIVE_CLOTHING_ACCESS = "9ce9a24879",
    RECEIVE_CLOTHING_ACCESS_CODE = "0b8068e1f9",
    CREATE_CLOTHING_ACCESS_CODE = "3b3bcdf00e",

    -- Discord
    REQUEST_DISCORD_CHANGE = "57ce165667",
    OPEN_DISCORD_VERIFY = "600c4dbdf3",
    DISCORD_CHANGE_SUCCESS = "c579b5b396",
    SUBMIT_DISCORD_CODE = "6bf5de52a1",

    -- Compensation
    REQUEST_COMPENSATION = "6a433b76ac",
    RECEIVE_COMPENSATION = "e6ae66203f",
    CLAIM_COMPENSATION = "7e3856a626",
    ADD_COMPENSATION_VALUE = "aa5ba0c6d1",
    COMPENSATION_AVAILABLE = "bb8bc0b84a",
    COMPENSATION_ACTION = "8b9eb26bda",

    -- Gang/blips
    SET_DISPLAY_GANG_TAG = "caa49517b5",
    SET_DISABLE_LONG_BLIPS = "b7ca465a0f",

    -- Benchmark / telemetry
    START_BENCHMARK = "1b2bb2e289",
    REPORT_AREA_FPS = "3943f26bc5",

    -- Overwatch
    REQUEST_OVERWATCH = "721f24155e",
    REQUEST_OVERWATCH_STATS = "1698c999b1",
    START_SPECTATE = "d3ac8df566",
    REQUEST_VIDEO = "3776160ce1",
    OVERWATCH_DATA = "8d7e9972fb",
    OVERWATCH_PLAYER_DATA = "ada64bdbb8",
    OVERWATCH_STATS = "a36f78f8c1",

    -- Effects
    ADD_KILL_EFFECT = "2244097108",
    ADD_BLOOD_EFFECT = "2286c4bb78",

    -- Misc
    CLOSE_MENUS = "3483c1a326",

    -- Present in the original but not safely nameable from client-only context
    UNKNOWN_7AAB2694DD = "7aab2694dd",
    UNKNOWN_E4697F6833 = "e4697f6833",
    UNKNOWN_71B989B7CD = "71b989b7cd",
}

-- Every 10-character hash from the supplied file is kept here for Ctrl+F.
local ALL_SOURCE_HASHES = {
    "04311f0e28",
    "0b8068e1f9",
    "1698c999b1",
    "1b2bb2e289",
    "1c597fc419",
    "1dcc710970",
    "21f52e326d",
    "2244097108",
    "2286c4bb78",
    "2d7bd9be41",
    "311dece672",
    "3483c1a326",
    "3776160ce1",
    "3943f26bc5",
    "3b3bcdf00e",
    "3b69022dfc",
    "45968dd649",
    "4b662b8a67",
    "57ce165667",
    "600c4dbdf3",
    "69d879a5e5",
    "6a433b76ac",
    "6bf5de52a1",
    "71b989b7cd",
    "721f24155e",
    "7aab2694dd",
    "7b9ca63d8f",
    "7e3856a626",
    "80d1ceb60b",
    "8b9eb26bda",
    "8d7e9972fb",
    "9632ca7156",
    "9b316f78eb",
    "9ce9a24879",
    "a36f78f8c1",
    "aa5ba0c6d1",
    "ace58f06ba",
    "ada64bdbb8",
    "b6b9f5a6b2",
    "b7ca465a0f",
    "bb8bc0b84a",
    "c4b3821d33",
    "c579b5b396",
    "caa49517b5",
    "cd7590723a",
    "d3ac8df566",
    "e38a958e74",
    "e4697f6833",
    "e6ae66203f",
    "e713d91b70",
}

---------------------------------------------------------------------------
-- KVP KEYS
---------------------------------------------------------------------------

local KVP = {
    CHAIN_SPEED = "cmg_chain_onback_speed_index",

    DIAGONAL_WEAPONS = "cmg_diagonalweapons",
    FRONT_ARS = "cmg_frontars",
    FRONT_SMGS = "cmg_frontsmgs",
    HITMARKERS = "cmg_hitmarkersounds",
    COD_HITMARKERS = "cmg_codhitmarkersounds",

    REDUCED_CHAT_OPACITY = "cmg_reducedchatopacity",
    HEALTH_PERCENTAGE = "cmg_healthpercentage",
    FLASHLIGHT_KEEP_ON = "cmg_flashlightnotaiming",

    GANG_PING_MARKER = "cmg_gang_ping_marker",
    GANG_EXTRA_MARKER = "cmg_gang_additional_ping_marker",
    GANG_PING_VOLUME = "cmg_gang_ping_sound_volume",
    GANG_PING_SOUND = "cmg_gang_ping_sound",
    GANG_NAME_DISTANCE = "cmg_gang_name_distance",
    GANG_UI_SCALE = "cmg_gang_ui_scale",
    GANG_UI_X = "cmg_gangui_posx",
    GANG_UI_Y = "cmg_gangui_posy",
    PINNED_PANICS_ONLY = "cmg_pinnedPanicsOnly",
    PINNED_BLIPS_ONLY = "cmg_pinnedBlipsOnly",
    DISPLAY_GANG_TAG = "cmg_displayGangTag",

    DOORBELL_NOTIFICATION = "cmg_doorbell_notification",
    LOW_PRIORITY_OBJECTS = "cmg_disableLowPriorityObjects",
    PLAYER_BLIP_NAMES = "cmg_playerblipnames",
    IDLE_CAMERA = "cmg_disabled_idle_camera",
    EMERGENCY_NAMES = "cmg_disable_emergency_names",
    FORCE_KEYBOARD = "cmg_force_disable_controller",
    PILOT_GUIDES = "cmg_pilotjob_dialog_disabled",
    TRAPPER_SHELF_VISUALS = "cmg_trapper_shelf_visuals_disabled",

    MINIMAP_PRESET = "cmg_minimap_position",
    MINIMAP_FINE_X = "cmg_minimap_fine_x",
    MINIMAP_FINE_Y = "cmg_minimap_fine_y",

    HUD_COLOUR = "cmg_hud_colour_index",
    INVENTORY_OPACITY = "cmg_inventory_opacity",

    EVENT_NOTIFICATIONS = "cmg_eventannouncements",

    DISABLE_CHAT_PINGS = "cmg_disable_chat_pings",
    DISABLE_NOTIFY_SOUND = "cmg_disable_notify_sound",
    DISABLE_LONG_BLIPS = "cmg_disable_long_blips",
    HIDE_TURFS = "cmg_hide_turfs_on_map2",

    RADIO_TRANSPARENT = "cmg_radio_transparent_background",

    GRAPHIC_PRESETS = "cmg_graphic_presets",
    TIMECYCLES = "cmg_timecycles",
    SKY_COLOURS = "cmg_skycolours",

    KILL_EFFECTS = "cmg_kill_effects",
    BLOOD_EFFECTS = "cmg_blood_effects",
    KILL_LIST = "cmg_killlistsetting",

    SETTINGS = "cmg_settings",
    SETTINGS_UI = "cmg_settingsui",
}

-- All cmg_* strings from the source, including dynamically suffixed keys.
local ALL_SOURCE_KVP_NAMES = {
    "cmg_blood_effects",
    "cmg_chain_onback_speed_index",
    "cmg_codhitmarkersounds",
    "cmg_diagonalweapons",
    "cmg_disableLowPriorityObjects",
    "cmg_disable_chat_pings",
    "cmg_disable_emergency_names",
    "cmg_disable_gang_lookout_",
    "cmg_disable_gang_lookout_1",
    "cmg_disable_gang_lookout_2",
    "cmg_disable_gang_lookout_3",
    "cmg_disable_gang_lookout_4",
    "cmg_disable_gang_lookout_5",
    "cmg_disable_long_blips",
    "cmg_disable_notify_sound",
    "cmg_disabled_idle_camera",
    "cmg_displayGangTag",
    "cmg_doorbell_notification",
    "cmg_eventannouncements",
    "cmg_flashlightnotaiming",
    "cmg_force_disable_controller",
    "cmg_frontars",
    "cmg_frontsmgs",
    "cmg_gang_additional_ping_marker",
    "cmg_gang_name_distance",
    "cmg_gang_ping_marker",
    "cmg_gang_ping_sound",
    "cmg_gang_ping_sound_volume",
    "cmg_gang_ui_scale",
    "cmg_gangui_posx",
    "cmg_gangui_posy",
    "cmg_graphic_presets",
    "cmg_healthpercentage",
    "cmg_hide_turfs_on_map2",
    "cmg_hitmarkersounds",
    "cmg_hud_colour_index",
    "cmg_inventory_opacity",
    "cmg_kill_effects",
    "cmg_killlistsetting",
    "cmg_minimap_fine_x",
    "cmg_minimap_fine_y",
    "cmg_minimap_position",
    "cmg_pilotjob_dialog_disabled",
    "cmg_pinnedBlipsOnly",
    "cmg_pinnedPanicsOnly",
    "cmg_playerblipnames",
    "cmg_radio_transparent_background",
    "cmg_reducedchatopacity",
    "cmg_settings",
    "cmg_settingsui",
    "cmg_skycolours",
    "cmg_timecycles",
    "cmg_trapper_shelf_visuals_disabled",
}

---------------------------------------------------------------------------
-- BASIC KVP HELPERS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: getBoolInt(key) ===
local function getBoolInt(key)
    return GetResourceKvpInt(key) == 1
end

-- === HELPER FUNCTION: setBoolInt(key, enabled) ===
local function setBoolInt(key, enabled)
    SetResourceKvpInt(key, enabled and 1 or 0)
end

-- === HELPER FUNCTION: getBoolString(key, default) ===
local function getBoolString(key, default)
    local value = GetResourceKvpString(key)

    if value == nil or value == "" then
        return default == true
    end

    return value ~= "false"
end

-- === HELPER FUNCTION: setBoolString(key, enabled) ===
local function setBoolString(key, enabled)
    SetResourceKvp(key, tostring(enabled == true))
end

-- === HELPER FUNCTION: getNumberKvp(key, default) ===
local function getNumberKvp(key, default)
    local value = tonumber(GetResourceKvpString(key) or "")
    return value ~= nil and value or default
end

---------------------------------------------------------------------------
-- MINIMAP POSITION OPTIONS
---------------------------------------------------------------------------

local MINIMAP_STEP = 0.001
local MINIMAP_CLAMP = HudConfig.minimapFineOffsetClamp or 0.25

local minimapPresetNames = {}

for _, preset in ipairs(HudConfig.minimapPositionPresets or {}) do
    minimapPresetNames[#minimapPresetNames + 1] = preset.name or "Preset"
end

if #minimapPresetNames == 0 then
    minimapPresetNames = {"Default"}
end

local minimapFineLabels = {}

do
    local count = math.floor((MINIMAP_CLAMP * 2) / MINIMAP_STEP + 0.5) + 1

    for index = 1, count do
        local value = -MINIMAP_CLAMP + ((index - 1) * MINIMAP_STEP)
        value = math.floor(value * 1000 + 0.5) / 1000
        minimapFineLabels[index] = string.format("%.3f", value)
    end
end

-- === HELPER FUNCTION: minimapIndexToValue(index) ===
local function minimapIndexToValue(index)
    local value = -MINIMAP_CLAMP + ((index - 1) * MINIMAP_STEP)
    return math.floor(value * 1000 + 0.5) / 1000
end

-- === HELPER FUNCTION: minimapValueToIndex(value) ===
local function minimapValueToIndex(value)
    value = tonumber(value) or 0.0
    value = math.min(MINIMAP_CLAMP, math.max(-MINIMAP_CLAMP, value))

    local index = math.floor(
        ((value + MINIMAP_CLAMP) / MINIMAP_STEP) + 0.5
    ) + 1

    return math.max(1, math.min(#minimapFineLabels, index))
end

---------------------------------------------------------------------------
-- CHAIN-ON-BACK EDITOR
---------------------------------------------------------------------------

local CHAIN_POSITION_MIN = -0.35
local CHAIN_POSITION_MAX = 0.35
local CHAIN_POSITION_STEP = 0.005

local CHAIN_ROTATION_MIN = -180.0
local CHAIN_ROTATION_MAX = 180.0
local CHAIN_ROTATION_STEP = 1.0

local CHAIN_SPEEDS = {0.5, 1.0, 2.0, 4.0}
local CHAIN_SPEED_LABELS = {"0.5×", "1×", "2×", "4×"}

local ChainEditor = {
    weaponName = "",
    speedIndex = 2,

    x = 0.0,
    y = 0.0,
    z = 0.0,

    rx = 0.0,
    ry = 0.0,
    rz = 0.0,
}

-- === HELPER FUNCTION: chainEditMultiplier() ===
local function chainEditMultiplier()
    return CHAIN_SPEEDS[ChainEditor.speedIndex] or 1.0
end

-- === HELPER FUNCTION: getWeaponDisplayName(weaponName) ===
local function getWeaponDisplayName(weaponName)
    local data = WeaponsConfig.weapons and WeaponsConfig.weapons[weaponName]
    return data and data.name or weaponName
end

-- === HELPER FUNCTION: loadChainEditor(weaponName) ===
local function loadChainEditor(weaponName)
    ChainEditor.weaponName = weaponName

    local x, y, z, rx, ry, rz =
        CMG.getChainOnBackEffectiveNumbers(weaponName)

    ChainEditor.x = tonumber(x) or 0.0
    ChainEditor.y = tonumber(y) or 0.0
    ChainEditor.z = tonumber(z) or 0.0

    ChainEditor.rx = tonumber(rx) or 0.0
    ChainEditor.ry = tonumber(ry) or 0.0
    ChainEditor.rz = tonumber(rz) or 0.0
end

-- === HELPER FUNCTION: saveChainEditor() ===
local function saveChainEditor()
    if ChainEditor.weaponName == "" then
        return
    end

    CMG.setChainOnBackOverrideNumbers(
        ChainEditor.weaponName,
        ChainEditor.x,
        ChainEditor.y,
        ChainEditor.z,
        ChainEditor.rx,
        ChainEditor.ry,
        ChainEditor.rz
    )
end

-- === HELPER FUNCTION: changeChainValue(field, amount) ===
local function changeChainValue(field, amount)
    local minValue = field:sub(1, 1) == "r" and CHAIN_ROTATION_MIN or CHAIN_POSITION_MIN
    local maxValue = field:sub(1, 1) == "r" and CHAIN_ROTATION_MAX or CHAIN_POSITION_MAX

    ChainEditor[field] = math.min(
        maxValue,
        math.max(minValue, (ChainEditor[field] or 0.0) + amount)
    )

    saveChainEditor()
end

---------------------------------------------------------------------------
-- SETTINGS STATE
---------------------------------------------------------------------------

local State = {
    diagonalWeapons = false,
    frontARs = false,
    frontSMGs = false,
    hitmarkerSounds = false,
    codHitmarkerSounds = false,

    reducedChatOpacity = false,
    healthPercentage = false,
    flashlightKeepOn = false,

    gangPingMarker = 3,
    gangExtraMarker = 1,
    gangPingVolume = 1,
    gangPingSound = 1,
    gangNameDistance = 1,
    gangUiScale = 6,

    pinnedPanicsOnly = false,
    pinnedBlipsOnly = false,
    displayGangTag = false,

    doorbellNotification = 1,
    disableLowPriorityObjects = false,

    playerBlipNames = false,

    gangUiPosition = vector2(0.0239, 0.35),
    inventoryOpacity = 10,

    disableIdleCamera = false,
    disableEmergencyNames = false,

    hudColourIndex = 1,
    forceKeyboard = false,

    disablePilotGuides = false,
    disableTrapperShelfVisuals = false,

    lookoutDisabled = {false, false, false, false, false},

    minimapPreset = 1,
    minimapFineX = minimapValueToIndex(0.0),
    minimapFineY = minimapValueToIndex(0.0),

    eventNotification = 1,

    clothingDebug = false,
    hideTurfs = false,

    weaponOwned = {},
    weaponBought = {},
    weaponAccessCode = nil,
    weaponWhitelistUsers = nil,

    clothingOwned = {},
    clothingBought = {},
    clothingAccessCode = nil,

    compensation = nil,

    overwatchPlayers = nil,
    selectedOverwatchPlayer = nil,
    overwatchStats = {0, 0},

    skyColours = {
        enabled = false,
        red = 100,
        green = 100,
        blue = 100,
    },
}

---------------------------------------------------------------------------
-- COMMON OPTION LISTS
---------------------------------------------------------------------------

local GANG_MARKER_LABELS = {"Only Text", "Marker", "Icon"}
local GANG_EXTRA_MARKER_LABELS = {"None", "Minimap", "Compass", "Minimap & Compass"}

local GANG_SOUND_IDS = {0, 1, 2, 3, 4, 5, 6, 7, 8}
local GANG_SOUND_LABELS = {
    "None", "Type 1", "Type 2", "Type 3", "Type 4",
    "Type 5", "Type 6", "Type 7", "Type 8"
}

local GANG_VOLUME_VALUES = {1.0, 0.75, 0.5, 0.25, 0.1, 0.05, 0.0}
local GANG_VOLUME_LABELS = {"100%", "75%", "50%", "25%", "10%", "5%", "Muted"}

local GANG_NAME_DISTANCES = {30.0, 45.0, 60.0, 75.0, 90.0, 150.0, 200.0, 250.0, 500.0}
local GANG_NAME_DISTANCE_LABELS = {"30m", "45m", "60m", "75m", "90m", "150m", "200m", "250m", "500m"}

local GANG_UI_SCALES = {
    0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3,
    1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 2.25, 2.5
}

local GANG_UI_SCALE_LABELS = {
    "50%", "60%", "70%", "80%", "90%", "100%", "110%", "120%", "130%",
    "140%", "150%", "160%", "170%", "180%", "190%", "200%", "225%", "250%"
}

local DOORBELL_LABELS = {"Visible", "Muted", "Hidden"}
local EVENT_NOTIFICATION_LABELS = {"Middle", "Top", "Hidden"}

local HUD_COLOUR_LABELS = {
    "Default", "Red", "Orange", "Yellow",
    "Green", "Blue", "Purple", "Pink"
}

local HUD_COLOURS = {
    {45, 110, 185, 255},
    6, 15, 12, 18, 9, 21, 24
}

---------------------------------------------------------------------------
-- APPLY HUD COLOUR
---------------------------------------------------------------------------

-- === HELPER FUNCTION: applyHudColour() ===
local function applyHudColour()
    local colour = HUD_COLOURS[State.hudColourIndex]

    if type(colour) == "table" then
        ReplaceHudColourWithRgba(
            116,
            colour[1],
            colour[2],
            colour[3],
            colour[4]
        )
    elseif type(colour) == "number" then
        ReplaceHudColour(116, colour)
    end
end

---------------------------------------------------------------------------
-- LOAD SAVED SETTINGS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: loadSavedSettings() ===
local function loadSavedSettings()
    local speed = GetResourceKvpInt(KVP.CHAIN_SPEED)

    if speed >= 1 and speed <= #CHAIN_SPEEDS then
        ChainEditor.speedIndex = speed
    end

    State.diagonalWeapons = getBoolString(KVP.DIAGONAL_WEAPONS, false)
    TriggerEvent(
        State.diagonalWeapons
            and EVENTS.ENABLE_DIAGONAL_WEAPONS
            or EVENTS.DISABLE_DIAGONAL_WEAPONS
    )

    State.frontARs = getBoolString(KVP.FRONT_ARS, false)
    TriggerEvent(
        State.frontARs
            and EVENTS.ENABLE_FRONT_ARS
            or EVENTS.DISABLE_FRONT_ARS
    )

    State.frontSMGs = getBoolString(KVP.FRONT_SMGS, false)
    TriggerEvent(
        State.frontSMGs
            and EVENTS.ENABLE_FRONT_SMGS
            or EVENTS.DISABLE_FRONT_SMGS
    )

    State.hitmarkerSounds = getBoolString(KVP.HITMARKERS, false)
    TriggerEvent(
        State.hitmarkerSounds
            and EVENTS.ENABLE_HITMARKERS
            or EVENTS.DISABLE_HITMARKERS
    )

    State.codHitmarkerSounds = getBoolString(KVP.COD_HITMARKERS, false)

    State.reducedChatOpacity = getBoolString(KVP.REDUCED_CHAT_OPACITY, false)
    TriggerEvent("CMG:chatReduceOpacity", State.reducedChatOpacity)

    State.healthPercentage = getBoolString(KVP.HEALTH_PERCENTAGE, false)

    State.flashlightKeepOn = getBoolString(KVP.FLASHLIGHT_KEEP_ON, false)
    SetFlashLightKeepOnWhileMoving(State.flashlightKeepOn)

    State.gangPingMarker = math.max(1, GetResourceKvpInt(KVP.GANG_PING_MARKER))
    if State.gangPingMarker == 1 and GetResourceKvpInt(KVP.GANG_PING_MARKER) == 0 then
        State.gangPingMarker = 3
    end

    State.gangExtraMarker = math.max(1, GetResourceKvpInt(KVP.GANG_EXTRA_MARKER))
    State.gangPingVolume = math.max(1, GetResourceKvpInt(KVP.GANG_PING_VOLUME))
    State.gangPingSound = math.max(1, GetResourceKvpInt(KVP.GANG_PING_SOUND))
    State.gangNameDistance = math.max(1, GetResourceKvpInt(KVP.GANG_NAME_DISTANCE))
    State.gangUiScale = math.max(1, GetResourceKvpInt(KVP.GANG_UI_SCALE))

    TriggerEvent(
        EVENTS.GANG_PING_SOUND_CHANGED,
        GANG_SOUND_IDS[State.gangPingSound],
        GANG_VOLUME_VALUES[State.gangPingVolume]
    )

    TriggerEvent(
        EVENTS.GANG_NAME_DISTANCE_CHANGED,
        GANG_NAME_DISTANCES[State.gangNameDistance]
    )

    State.pinnedPanicsOnly = getBoolInt(KVP.PINNED_PANICS_ONLY)
    State.pinnedBlipsOnly = getBoolInt(KVP.PINNED_BLIPS_ONLY)
    State.displayGangTag = getBoolInt(KVP.DISPLAY_GANG_TAG)

    if State.displayGangTag then
        SetTimeout(5000, function()
            TriggerServerEvent(EVENTS.SET_DISPLAY_GANG_TAG, true)
        end)
    end

    State.doorbellNotification = math.max(1, GetResourceKvpInt(KVP.DOORBELL_NOTIFICATION))
    State.disableLowPriorityObjects = getBoolInt(KVP.LOW_PRIORITY_OBJECTS)

    State.playerBlipNames = getBoolInt(KVP.PLAYER_BLIP_NAMES)

    local preset = GetResourceKvpInt(KVP.MINIMAP_PRESET)
    if preset > 0 and preset <= #minimapPresetNames then
        State.minimapPreset = preset
    end

    State.minimapFineX = minimapValueToIndex(
        getNumberKvp(KVP.MINIMAP_FINE_X, 0.0)
    )

    State.minimapFineY = minimapValueToIndex(
        getNumberKvp(KVP.MINIMAP_FINE_Y, 0.0)
    )

    local gx = getNumberKvp(KVP.GANG_UI_X, nil)
    local gy = getNumberKvp(KVP.GANG_UI_Y, nil)

    if gx and gy then
        State.gangUiPosition = vector2(gx, gy)
    end

    State.inventoryOpacity = getNumberKvp(KVP.INVENTORY_OPACITY, 10)

    State.disableIdleCamera = getBoolInt(KVP.IDLE_CAMERA)
    State.disableEmergencyNames = getBoolInt(KVP.EMERGENCY_NAMES)

    local hudColour = GetResourceKvpInt(KVP.HUD_COLOUR)
    if hudColour > 0 and hudColour <= #HUD_COLOUR_LABELS then
        State.hudColourIndex = hudColour
    end

    applyHudColour()

    State.forceKeyboard = getBoolInt(KVP.FORCE_KEYBOARD)
    State.disablePilotGuides = getBoolInt(KVP.PILOT_GUIDES)
    State.disableTrapperShelfVisuals = getBoolInt(KVP.TRAPPER_SHELF_VISUALS)

    for index = 1, 5 do
        State.lookoutDisabled[index] =
            getBoolInt("cmg_disable_gang_lookout_" .. index)
    end

    State.eventNotification = GetResourceKvpInt(KVP.EVENT_NOTIFICATIONS)
    if State.eventNotification < 1 then
        State.eventNotification = 1
    end

    local skyJson = GetResourceKvpString(KVP.SKY_COLOURS)
    if skyJson then
        local ok, decoded = pcall(json.decode, skyJson)
        if ok and type(decoded) == "table" then
            State.skyColours = decoded
        end
    end

    CMG.syncHudNotifySoundEnabled()

    SetTimeout(5000, function()
        State.hideTurfs = getBoolInt(KVP.HIDE_TURFS)
        CMG.setShowTurfBlips(not State.hideTurfs)
    end)
end

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(loadSavedSettings)

---------------------------------------------------------------------------
-- PUBLIC FUNCTIONS OTHER RESOURCES USE
---------------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.arePilotJobGuidesDisabled() ===
function CMG.arePilotJobGuidesDisabled()
    return State.disablePilotGuides
end

-- === HELPER FUNCTION: CMG.areTrapperShelfVisualsDisabled() ===
function CMG.areTrapperShelfVisualsDisabled()
    return State.disableTrapperShelfVisuals
end

-- === HELPER FUNCTION: CMG.isGangLookoutAlertDisabled(index) ===
function CMG.isGangLookoutAlertDisabled(index)
    return State.lookoutDisabled[index] == true
end

-- === HELPER FUNCTION: CMG.areEmergencyServiceNamesDisabled() ===
function CMG.areEmergencyServiceNamesDisabled()
    return State.disableEmergencyNames
end

-- === HELPER FUNCTION: tCMG.getDoorbellNotificationType() ===
function tCMG.getDoorbellNotificationType()
    return State.doorbellNotification
end

-- === HELPER FUNCTION: CMG.setDiagonalWeaponSetting(enabled) ===
function CMG.setDiagonalWeaponSetting(enabled)
    State.diagonalWeapons = enabled == true
    setBoolString(KVP.DIAGONAL_WEAPONS, State.diagonalWeapons)
end

-- === HELPER FUNCTION: CMG.setFrontARSetting(enabled) ===
function CMG.setFrontARSetting(enabled)
    State.frontARs = enabled == true
    setBoolString(KVP.FRONT_ARS, State.frontARs)
end

-- === HELPER FUNCTION: CMG.setFrontSMGSetting(enabled) ===
function CMG.setFrontSMGSetting(enabled)
    State.frontSMGs = enabled == true
    setBoolString(KVP.FRONT_SMGS, State.frontSMGs)
end

-- === HELPER FUNCTION: CMG.setHitMarkerSetting(enabled) ===
function CMG.setHitMarkerSetting(enabled)
    State.hitmarkerSounds = enabled == true
    setBoolString(KVP.HITMARKERS, State.hitmarkerSounds)
end

-- === HELPER FUNCTION: CMG.setCODHitMarkerSetting(enabled) ===
function CMG.setCODHitMarkerSetting(enabled)
    State.codHitmarkerSounds = enabled == true
    setBoolString(KVP.COD_HITMARKERS, State.codHitmarkerSounds)
end

-- === HELPER FUNCTION: CMG.setKillListSetting(enabled) ===
function CMG.setKillListSetting(enabled)
    setBoolString(KVP.KILL_LIST, enabled == true)
end

-- === HELPER FUNCTION: CMG.setReducedChatOpacity(enabled) ===
function CMG.setReducedChatOpacity(enabled)
    State.reducedChatOpacity = enabled == true
    setBoolString(KVP.REDUCED_CHAT_OPACITY, State.reducedChatOpacity)
end

-- === HELPER FUNCTION: CMG.getHideEventAnnouncementFlag() ===
function CMG.getHideEventAnnouncementFlag()
    return EVENT_NOTIFICATION_LABELS[State.eventNotification]
end

-- === HELPER FUNCTION: CMG.setShowHealthPercentageFlag(enabled) ===
function CMG.setShowHealthPercentageFlag(enabled)
    State.healthPercentage = enabled == true
    setBoolString(KVP.HEALTH_PERCENTAGE, State.healthPercentage)
end

-- === HELPER FUNCTION: CMG.setFlashlightNotAimingFlag(enabled) ===
function CMG.setFlashlightNotAimingFlag(enabled)
    State.flashlightKeepOn = enabled == true
    SetFlashLightKeepOnWhileMoving(State.flashlightKeepOn)
    setBoolString(KVP.FLASHLIGHT_KEEP_ON, State.flashlightKeepOn)
end

-- === HELPER FUNCTION: CMG.getShowHealthPercentageFlag() ===
function CMG.getShowHealthPercentageFlag()
    return State.healthPercentage
end

-- === HELPER FUNCTION: CMG.getGangPingMarkerIndex() ===
function CMG.getGangPingMarkerIndex()
    return State.gangPingMarker
end

-- === HELPER FUNCTION: CMG.getGangAdditionalPingMarkerIndex() ===
function CMG.getGangAdditionalPingMarkerIndex()
    return State.gangExtraMarker
end

-- === HELPER FUNCTION: CMG.getGangUIScaleMultiplier() ===
function CMG.getGangUIScaleMultiplier()
    return GANG_UI_SCALES[State.gangUiScale] or 1.0
end

-- === HELPER FUNCTION: CMG.isGangPanicsPinnedOnly() ===
function CMG.isGangPanicsPinnedOnly()
    return State.pinnedPanicsOnly
end

-- === HELPER FUNCTION: CMG.isGangBlipsPinnedOnly() ===
function CMG.isGangBlipsPinnedOnly()
    return State.pinnedBlipsOnly
end

-- === HELPER FUNCTION: CMG.isDebuggingClothing() ===
function CMG.isDebuggingClothing()
    return State.clothingDebug
end

-- === HELPER FUNCTION: CMG.getInventoryOpacity() ===
function CMG.getInventoryOpacity()
    return (tonumber(State.inventoryOpacity) or 10) / 10.0
end

-- Original source spells it "Postion"; keep that API spelling.

-- === HELPER FUNCTION: CMG.getGangUIPostion() ===
function CMG.getGangUIPostion()
    return State.gangUiPosition
end

-- === HELPER FUNCTION: CMG.areBlipPlayerNamesEnabled() ===
function CMG.areBlipPlayerNamesEnabled()
    return State.playerBlipNames
end

-- === HELPER FUNCTION: CMG.isUsingKeyboard(controlGroup) ===
function CMG.isUsingKeyboard(controlGroup)
    if State.forceKeyboard then
        return true
    end

    return IsUsingKeyboard(controlGroup)
end

---------------------------------------------------------------------------
-- SAVE MINIMAP CHANGES
---------------------------------------------------------------------------

-- === HELPER FUNCTION: saveMinimapPreset(index) ===
local function saveMinimapPreset(index)
    State.minimapPreset = index
    SetResourceKvpInt(KVP.MINIMAP_PRESET, index)
    CMG.refreshMinimap()
end

-- === HELPER FUNCTION: saveMinimapFineX(index) ===
local function saveMinimapFineX(index)
    State.minimapFineX = index
    SetResourceKvp(
        KVP.MINIMAP_FINE_X,
        string.format("%.3f", minimapIndexToValue(index))
    )
    CMG.refreshMinimap()
end

-- === HELPER FUNCTION: saveMinimapFineY(index) ===
local function saveMinimapFineY(index)
    State.minimapFineY = index
    SetResourceKvp(
        KVP.MINIMAP_FINE_Y,
        string.format("%.3f", minimapIndexToValue(index))
    )
    CMG.refreshMinimap()
end

---------------------------------------------------------------------------
-- MENU IDS
---------------------------------------------------------------------------

local MENU = {
    MAIN = "settings",

    WEAPON_ACCESS = "weaponsaccess",
    WEAPON_WHITELIST = "weaponswhitelist",
    WEAPON_BOUGHT = "weaponsboughtonto",
    GENERATE_WEAPON_CODE = "generateaccesscode",
    VIEW_WHITELISTED = "viewwhitelisted",

    CLOTHING_ACCESS = "clothingaccess",
    CLOTHING_WHITELIST = "clothingwhitelist",
    CLOTHING_BOUGHT = "clothingboughtonto",
    GENERATE_CLOTHING_CODE = "generateclothingaccesscode",

    GRAPHICS = "graphicpresets",
    SKY_COLOURS = "skycolours",

    WEAPON_OPTIONS = "weaponoptions",
    CHAIN = "chainonback",
    CHAIN_EDIT = "chainonback_edit",

    GANG = "gangsettings",

    KILL_EFFECTS = "killeffects",
    BLOOD_EFFECTS = "bloodeffects",

    UI = "uivisibility",

    VERIFY_DISCORD = "verifydiscord",

    COMPENSATION = "compensation",
    COMPENSATION_INFO = "compensationinfo",

    MISC = "misc",

    OVERWATCH = "overwatch",
    OVERWATCH_PLAYER = "overwatchplayer",
}

-- === HELPER FUNCTION: createMenu(id, subtitle, parentId) ===
local function createMenu(id, subtitle, parentId)
    local menu

    if parentId then
        menu = RageUI.CreateSubMenu(
            RMenu:Get("settingsmenu", parentId),
            "",
            "",
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_settingsui",
            "cmg_settingsui"
        )
    else
        menu = RageUI.CreateMenu(
            "",
            "",
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_settingsui",
            "cmg_settingsui"
        )
    end

    RMenu.Add("settingsmenu", id, menu)
    RMenu:Get("settingsmenu", id):SetSubtitle(subtitle)
end

createMenu(MENU.MAIN, "~b~CMG Settings")

createMenu(MENU.WEAPON_ACCESS, "~b~Weapons Access", MENU.MAIN)
createMenu(MENU.WEAPON_WHITELIST, "~b~Custom Weapons Owned", MENU.WEAPON_ACCESS)
createMenu(MENU.WEAPON_BOUGHT, "~b~Custom Weapons Bought", MENU.WEAPON_ACCESS)
createMenu(MENU.GENERATE_WEAPON_CODE, "~b~Generate Access Code", MENU.WEAPON_WHITELIST)
createMenu(MENU.VIEW_WHITELISTED, "~b~View Whilelisted Users", MENU.WEAPON_WHITELIST)

createMenu(MENU.CLOTHING_ACCESS, "~b~Clothing Access", MENU.MAIN)
createMenu(MENU.CLOTHING_WHITELIST, "~b~Custom Clothing Owned", MENU.CLOTHING_ACCESS)
createMenu(MENU.CLOTHING_BOUGHT, "~b~Custom Clothing Bought", MENU.CLOTHING_ACCESS)
createMenu(MENU.GENERATE_CLOTHING_CODE, "~b~Generate Clothing Access Code", MENU.CLOTHING_WHITELIST)

createMenu(MENU.GRAPHICS, "~b~Graphic Presets", MENU.MAIN)
createMenu(MENU.SKY_COLOURS, "~b~Sky Colours", MENU.GRAPHICS)

createMenu(MENU.WEAPON_OPTIONS, "~b~Weapon Options", MENU.MAIN)
createMenu(MENU.CHAIN, "~b~Chain on back", MENU.WEAPON_OPTIONS)
createMenu(MENU.CHAIN_EDIT, "~b~Chain position", MENU.CHAIN)

createMenu(MENU.GANG, "~b~Gang Settings", MENU.MAIN)

createMenu(MENU.KILL_EFFECTS, "~b~Kill Effects", MENU.MAIN)
createMenu(MENU.BLOOD_EFFECTS, "~b~Blood Effects", MENU.MAIN)

createMenu(MENU.UI, "~b~UI Visibility", MENU.MAIN)

createMenu(MENU.VERIFY_DISCORD, "~b~Link Discord", MENU.MAIN)

createMenu(MENU.COMPENSATION, "~b~Compensation", MENU.MAIN)
createMenu(MENU.COMPENSATION_INFO, "~b~Compensation Information", MENU.COMPENSATION)

createMenu(MENU.MISC, "~b~Misc", MENU.MAIN)

createMenu(MENU.OVERWATCH, "~b~Overwatch", MENU.MAIN)
createMenu(MENU.OVERWATCH_PLAYER, "~b~Overwatch", MENU.OVERWATCH)

---------------------------------------------------------------------------
-- MAIN MENU
---------------------------------------------------------------------------

-- === HELPER FUNCTION: buttonTo(label, description, menuId, onSelected) ===
local function buttonTo(label, description, menuId, onSelected)
    RageUI.ButtonWithStyle(
        label,
        description,
        {RightLabel = ">>>"},
        true,
        function(_, _, selected)
            if selected and onSelected then
                onSelected()
            end
        end,
        RMenu:Get("settingsmenu", menuId)
    )
end

-- === HELPER FUNCTION: drawMainMenu() ===
local function drawMainMenu()
    RageUI.ButtonWithStyle(
        "~y~CMG Club",
        "",
        {RightLabel = ">>>"},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(EVENTS.OPEN_CMG_CLUB)
            end
        end
    )

    buttonTo("Overwatch", "", MENU.OVERWATCH, function()
        TriggerServerEvent(EVENTS.REQUEST_OVERWATCH)
    end)

    RageUI.ButtonWithStyle(
        "HUD Settings",
        "Configure your HUD preferences and options.",
        {RightLabel = ">>>"},
        true,
        function(_, _, selected)
            if selected then
                RageUI.CloseAll()
                CMG.openHudSettings()
            end
        end
    )

    buttonTo(
        "Weapon Access",
        "Sell the weapons you own here, or view the weapons you have bought on to.",
        MENU.WEAPON_ACCESS,
        function()
            TriggerServerEvent(EVENTS.REQUEST_WEAPON_ACCESS)
        end
    )

    buttonTo(
        "Clothing Access",
        "Sell the custom clothing you own here, or view the custom clothing you have bought on to.",
        MENU.CLOTHING_ACCESS,
        function()
            TriggerServerEvent(EVENTS.REQUEST_CLOTHING_ACCESS)
        end
    )

    buttonTo("Weapon Options", "Toggle options to do with weapons and their placement.", MENU.WEAPON_OPTIONS)
    buttonTo("Gang Options", "Toggle settings which affect the gang UI.", MENU.GANG)
    buttonTo("Graphic Presets", "View a list of preconfigured graphic settings.", MENU.GRAPHICS)
    buttonTo("Kill Effects", "", MENU.KILL_EFFECTS)
    buttonTo("Blood Effects", "", MENU.BLOOD_EFFECTS)
    buttonTo("UI Visibility", "", MENU.UI)

    RageUI.ButtonWithStyle(
        "Change Linked Discord",
        "Begins the process of changing your linked Discord.",
        {RightLabel = ">>>"},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(EVENTS.REQUEST_DISCORD_CHANGE)
            end
        end
    )

    buttonTo("Compensation", "View any unclaimed compensations", MENU.COMPENSATION, function()
        State.compensation = nil
        TriggerServerEvent(EVENTS.REQUEST_COMPENSATION)
    end)

    buttonTo("Miscellaneous", "Uncategorised options.", MENU.MISC)
end

---------------------------------------------------------------------------
-- WEAPON OPTIONS MENU
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawWeaponOptions() ===
local function drawWeaponOptions()
    RageUI.Checkbox(
        "Enable Diagonal Weapons",
        "",
        State.diagonalWeapons,
        {},
        function(_, _, _, checked)
            if checked ~= State.diagonalWeapons then
                State.diagonalWeapons = checked

                TriggerEvent(
                    checked
                        and EVENTS.ENABLE_DIAGONAL_WEAPONS
                        or EVENTS.DISABLE_DIAGONAL_WEAPONS
                )

                CMG.setDiagonalWeaponSetting(checked)
            end
        end
    )

    RageUI.Checkbox(
        "Enable Front Assault Rifles",
        "",
        State.frontARs,
        {},
        function(_, _, _, checked)
            if checked ~= State.frontARs then
                State.frontARs = checked

                TriggerEvent(
                    checked and EVENTS.ENABLE_FRONT_ARS or EVENTS.DISABLE_FRONT_ARS
                )

                CMG.setFrontARSetting(checked)
            end
        end
    )

    RageUI.Checkbox(
        "Enable Front SMGs",
        "",
        State.frontSMGs,
        {},
        function(_, _, _, checked)
            if checked ~= State.frontSMGs then
                State.frontSMGs = checked

                TriggerEvent(
                    checked and EVENTS.ENABLE_FRONT_SMGS or EVENTS.DISABLE_FRONT_SMGS
                )

                CMG.setFrontSMGSetting(checked)
            end
        end
    )

    RageUI.Checkbox(
        "Enable Experimental Hit Marker Sounds",
        "",
        State.hitmarkerSounds,
        {},
        function(_, _, _, checked)
            if checked ~= State.hitmarkerSounds then
                State.hitmarkerSounds = checked

                TriggerEvent(
                    checked and EVENTS.ENABLE_HITMARKERS or EVENTS.DISABLE_HITMARKERS
                )

                CMG.setHitMarkerSetting(checked)
            end
        end
    )

    RageUI.Checkbox(
        "Keep Flashlight On Whilst Moving",
        "",
        State.flashlightKeepOn,
        {},
        function(_, _, _, checked)
            if checked ~= State.flashlightKeepOn then
                CMG.setFlashlightNotAimingFlag(checked)
            end
        end
    )

    buttonTo(
        "Chain on back",
        "Adjust holstered-on-back position for a chain you are carrying. Saves per chain.",
        MENU.CHAIN
    )

    RageUI.ButtonWithStyle(
        "Scope Settings",
        "Add a toggleable range finder when using sniper scopes.",
        {RightLabel = ">>>"},
        true,
        function()
            -- Scope configuration belongs to another CMG component.
        end
    )
end

---------------------------------------------------------------------------
-- CHAIN MENUS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawChainList() ===
local function drawChainList()
    RageUI.Separator("~s~Chains you are carrying")

    local found = false

    for _, weaponName in ipairs(WeaponsOnBackConfig.chainOnBackWeaponNames or {}) do
        local ped = PlayerPedId()
        local hash = GetHashKey(weaponName)

        if HasPedGotWeapon(ped, hash, false) then
            found = true

            RageUI.ButtonWithStyle(
                getWeaponDisplayName(weaponName),
                "Edit holstered-on-back position for this chain.",
                {RightLabel = ">>>"},
                true,
                function(_, _, selected)
                    if selected then
                        loadChainEditor(weaponName)
                    end
                end,
                RMenu:Get("settingsmenu", MENU.CHAIN_EDIT)
            )
        end
    end

    if not found then
        RageUI.Separator("~y~No supported chain in your inventory")
        RageUI.Separator("~s~Equip or pick up a chain, then open this menu again.")
    end
end

-- === HELPER FUNCTION: drawChainEditor() ===
local function drawChainEditor()
    if ChainEditor.weaponName == "" then
        RageUI.Separator("~r~No chain selected")
        return
    end

    RageUI.Separator("~s~" .. getWeaponDisplayName(ChainEditor.weaponName))

    RageUI.List(
        "Speed",
        CHAIN_SPEED_LABELS,
        ChainEditor.speedIndex,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= ChainEditor.speedIndex then
                ChainEditor.speedIndex = index
                SetResourceKvpInt(KVP.CHAIN_SPEED, index)
            end
        end
    )

    local multiplier = chainEditMultiplier()
    local posStep = CHAIN_POSITION_STEP * multiplier
    local rotStep = CHAIN_ROTATION_STEP * multiplier

    local rows = {
        {"Forward/Back", "x", posStep},
        {"Left/Right", "y", posStep},
        {"Up/Down", "z", posStep},
        {"Rotate X", "rx", rotStep},
        {"Rotate Y", "ry", rotStep},
        {"Rotate Z", "rz", rotStep},
    }

    for _, row in ipairs(rows) do
        RageUI.ButtonWithStyle(
            string.format("%s: %.3f", row[1], ChainEditor[row[2]]),
            "LEFT/RIGHT adjustment is simplified here into +/- buttons below.",
            {},
            true,
            function()
            end
        )

        RageUI.ButtonWithStyle(
            "  - " .. row[1],
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    changeChainValue(row[2], -row[3])
                end
            end
        )

        RageUI.ButtonWithStyle(
            "  + " .. row[1],
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    changeChainValue(row[2], row[3])
                end
            end
        )
    end

    RageUI.ButtonWithStyle(
        "Reset to default",
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                CMG.setChainOnBackOverrideNumbers(
                    ChainEditor.weaponName,
                    nil, nil, nil, nil, nil, nil
                )
                loadChainEditor(ChainEditor.weaponName)
            end
        end
    )
end

---------------------------------------------------------------------------
-- GANG SETTINGS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawGangSettings() ===
local function drawGangSettings()
    RageUI.List(
        "Gang Ping Marker",
        GANG_MARKER_LABELS,
        State.gangPingMarker,
        "Requires the advanced gang license to display.",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.gangPingMarker then
                State.gangPingMarker = index
                SetResourceKvpInt(KVP.GANG_PING_MARKER, index)
            end
        end
    )

    RageUI.List(
        "Gang Additional Ping Marker",
        GANG_EXTRA_MARKER_LABELS,
        State.gangExtraMarker,
        "Requires the advanced gang license to display.",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.gangExtraMarker then
                State.gangExtraMarker = index
                SetResourceKvpInt(KVP.GANG_EXTRA_MARKER, index)
            end
        end
    )

    RageUI.List(
        "Gang Ping Volume",
        GANG_VOLUME_LABELS,
        State.gangPingVolume,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.gangPingVolume then
                State.gangPingVolume = index
                SetResourceKvpInt(KVP.GANG_PING_VOLUME, index)

                TriggerEvent(
                    EVENTS.GANG_PING_SOUND_CHANGED,
                    GANG_SOUND_IDS[State.gangPingSound],
                    GANG_VOLUME_VALUES[index]
                )
            end
        end
    )

    RageUI.List(
        "Gang Ping Sound",
        GANG_SOUND_LABELS,
        State.gangPingSound,
        "",
        {},
        true,
        function(_, _, selected, index)
            local sound = GANG_SOUND_IDS[index]

            if selected and sound and sound > 0 then
                -- Beginner: sends a Lua table to the HTML/JavaScript UI.
                SendNUIMessage({
                    transactionType = "gangping" .. tostring(sound),
                    volumeOverride = GANG_VOLUME_VALUES[State.gangPingVolume] or 1.0,
                })
            end

            if index ~= State.gangPingSound then
                State.gangPingSound = index
                SetResourceKvpInt(KVP.GANG_PING_SOUND, index)

                TriggerEvent(
                    EVENTS.GANG_PING_SOUND_CHANGED,
                    sound,
                    GANG_VOLUME_VALUES[State.gangPingVolume]
                )
            end
        end
    )

    RageUI.List(
        "Gang Name Distance",
        GANG_NAME_DISTANCE_LABELS,
        State.gangNameDistance,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.gangNameDistance then
                State.gangNameDistance = index
                SetResourceKvpInt(KVP.GANG_NAME_DISTANCE, index)
                TriggerEvent(EVENTS.GANG_NAME_DISTANCE_CHANGED, GANG_NAME_DISTANCES[index])
            end
        end
    )

    RageUI.List(
        "Gang UI Scale",
        GANG_UI_SCALE_LABELS,
        State.gangUiScale,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.gangUiScale then
                State.gangUiScale = index
                SetResourceKvpInt(KVP.GANG_UI_SCALE, index)
            end
        end
    )

    RageUI.Checkbox(
        "Pinned Panics Only",
        "Disables receiving panics unless you have explicitly pinned the player",
        State.pinnedPanicsOnly,
        {},
        function(_, _, _, checked)
            State.pinnedPanicsOnly = checked
            setBoolInt(KVP.PINNED_PANICS_ONLY, checked)
        end
    )

    RageUI.Checkbox(
        "Pinned Blips Only",
        "",
        State.pinnedBlipsOnly,
        {},
        function(_, _, _, checked)
            State.pinnedBlipsOnly = checked
            setBoolInt(KVP.PINNED_BLIPS_ONLY, checked)
        end
    )

    RageUI.Checkbox(
        "Display Gang Tag",
        "",
        State.displayGangTag,
        {},
        function(_, _, _, checked)
            State.displayGangTag = checked
            setBoolInt(KVP.DISPLAY_GANG_TAG, checked)
            TriggerServerEvent(EVENTS.SET_DISPLAY_GANG_TAG, checked)
        end
    )
end

---------------------------------------------------------------------------
-- GRAPHICS / MINIMAP
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawGraphics() ===
local function drawGraphics()
    buttonTo("~y~Sky Colours", "", MENU.SKY_COLOURS)

    for _, group in pairs(SettingsConfig.presets or {}) do
        RageUI.Separator(group.name or "Preset Group")

        for _, preset in pairs(group.presets or {}) do
            RageUI.ButtonWithStyle(
                preset.name or "Preset",
                "",
                {},
                true,
                function(_, _, selected)
                    if selected then
                        SetResourceKvp(
                            KVP.GRAPHIC_PRESETS,
                            json.encode({
                                group = group.name,
                                preset = preset.name,
                            })
                        )

                        if preset.timecycle then
                            SetTimecycleModifier(preset.timecycle)
                            SetTimecycleModifierStrength(tonumber(preset.strength) or 1.0)
                        end
                    end
                end
            )
        end
    end

    RageUI.Separator("Graphics Modifiers")

    for key, value in pairs(SettingsConfig.timecycles or {}) do
        local name = type(value) == "table" and (value.name or key) or key
        local modifier = type(value) == "table"
            and (value.timecycle or value.modifier or key)
            or value

        RageUI.ButtonWithStyle(
            tostring(name),
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    SetTimecycleModifier(tostring(modifier))
                    SetResourceKvp(KVP.TIMECYCLES, tostring(modifier))
                end
            end
        )
    end
end

-- === HELPER FUNCTION: saveSkyColours() ===
local function saveSkyColours()
    SetResourceKvp(KVP.SKY_COLOURS, json.encode(State.skyColours))
end

-- === HELPER FUNCTION: drawSkyColours() ===
local function drawSkyColours()
    RageUI.Checkbox(
        "Enabled",
        "",
        State.skyColours.enabled == true,
        {},
        function(_, _, _, checked)
            State.skyColours.enabled = checked
            saveSkyColours()
        end
    )

    RageUI.Separator(
        string.format(
            "RGB: %d, %d, %d",
            tonumber(State.skyColours.red) or 0,
            tonumber(State.skyColours.green) or 0,
            tonumber(State.skyColours.blue) or 0
        )
    )

    local rows = {
        {"~r~Red", "red"},
        {"~g~Green", "green"},
        {"~b~Blue", "blue"},
    }

    for _, row in ipairs(rows) do
        RageUI.ButtonWithStyle(
            row[1] .. " +5",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    State.skyColours[row[2]] = math.min(
                        255,
                        (tonumber(State.skyColours[row[2]]) or 0) + 5
                    )
                    saveSkyColours()
                end
            end
        )

        RageUI.ButtonWithStyle(
            row[1] .. " -5",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    State.skyColours[row[2]] = math.max(
                        0,
                        (tonumber(State.skyColours[row[2]]) or 0) - 5
                    )
                    saveSkyColours()
                end
            end
        )
    end
end

---------------------------------------------------------------------------
-- UI / MINIMAP MENU
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawUiSettings() ===
local function drawUiSettings()
    RageUI.List(
        "Minimap Position",
        minimapPresetNames,
        State.minimapPreset,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.minimapPreset then
                saveMinimapPreset(index)
            end
        end
    )

    RageUI.List(
        "Minimap Offset X",
        minimapFineLabels,
        State.minimapFineX,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.minimapFineX then
                saveMinimapFineX(index)
            end
        end
    )

    RageUI.List(
        "Minimap Offset Y",
        minimapFineLabels,
        State.minimapFineY,
        "",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.minimapFineY then
                saveMinimapFineY(index)
            end
        end
    )

    RageUI.List(
        "HUD Colour",
        HUD_COLOUR_LABELS,
        State.hudColourIndex,
        "Changes the colour displayed on the weapon wheel and other GTA interfaces.",
        {},
        true,
        function(_, _, _, index)
            if index ~= State.hudColourIndex then
                State.hudColourIndex = index
                SetResourceKvpInt(KVP.HUD_COLOUR, index)
                applyHudColour()
            end
        end
    )

    RageUI.Checkbox(
        "Reduce Chat Opacity",
        "",
        State.reducedChatOpacity,
        {},
        function(_, _, _, checked)
            if checked ~= State.reducedChatOpacity then
                State.reducedChatOpacity = checked
                TriggerEvent("CMG:chatReduceOpacity", checked)
                CMG.setReducedChatOpacity(checked)
            end
        end
    )
end

---------------------------------------------------------------------------
-- MISC MENU
---------------------------------------------------------------------------

-- === HELPER FUNCTION: drawMisc() ===
local function drawMisc()
    RageUI.List(
        "Doorbell Notification",
        DOORBELL_LABELS,
        State.doorbellNotification,
        "",
        {},
        true,
        function(_, _, _, index)
            State.doorbellNotification = index
            SetResourceKvpInt(KVP.DOORBELL_NOTIFICATION, index)
        end
    )

    RageUI.Checkbox(
        "Show Player Blip Names",
        "",
        State.playerBlipNames,
        {},
        function(_, _, _, checked)
            State.playerBlipNames = checked
            setBoolInt(KVP.PLAYER_BLIP_NAMES, checked)
        end
    )

    RageUI.Checkbox(
        "Force Disable Controller",
        "",
        State.forceKeyboard,
        {},
        function(_, _, _, checked)
            State.forceKeyboard = checked
            setBoolInt(KVP.FORCE_KEYBOARD, checked)
        end
    )

    RageUI.Checkbox(
        "Disable Pilot Job Guides",
        "",
        State.disablePilotGuides,
        {},
        function(_, _, _, checked)
            State.disablePilotGuides = checked
            setBoolInt(KVP.PILOT_GUIDES, checked)
        end
    )

    RageUI.Checkbox(
        "Disable Trapper Shelf Visual Props",
        "",
        State.disableTrapperShelfVisuals,
        {},
        function(_, _, _, checked)
            State.disableTrapperShelfVisuals = checked
            setBoolInt(KVP.TRAPPER_SHELF_VISUALS, checked)
            TriggerEvent(EVENTS.REFRESH_TRAPPER_SHELVES)
        end
    )

    local disableChatPings = getBoolInt(KVP.DISABLE_CHAT_PINGS)

    RageUI.Checkbox(
        "Disable Chat Pings",
        "",
        disableChatPings,
        {},
        function(_, _, _, checked)
            setBoolInt(KVP.DISABLE_CHAT_PINGS, checked)
        end
    )

    local disableNotifySound = getBoolInt(KVP.DISABLE_NOTIFY_SOUND)

    RageUI.Checkbox(
        "Disable Notify Sound",
        "",
        disableNotifySound,
        {},
        function(_, _, _, checked)
            setBoolInt(KVP.DISABLE_NOTIFY_SOUND, checked)
            CMG.syncHudNotifySoundEnabled()
        end
    )

    for index = 1, 5 do
        RageUI.Checkbox(
            "Disable Lookout " .. index,
            "",
            State.lookoutDisabled[index],
            {},
            function(_, _, _, checked)
                State.lookoutDisabled[index] = checked
                setBoolInt("cmg_disable_gang_lookout_" .. index, checked)
            end
        )
    end

    local disableLongBlips = getBoolInt(KVP.DISABLE_LONG_BLIPS)

    RageUI.Checkbox(
        "Disable Long Range Blips",
        "",
        disableLongBlips,
        {},
        function(_, _, _, checked)
            setBoolInt(KVP.DISABLE_LONG_BLIPS, checked)
            TriggerServerEvent(EVENTS.SET_DISABLE_LONG_BLIPS, checked)
            TriggerEvent(EVENTS.REFRESH_LONG_BLIPS)
        end
    )

    RageUI.ButtonWithStyle(
        "Perform Benchmark",
        "",
        {},
        true,
        function(_, _, selected)
            if not selected then
                return
            end

            if tCMG.isInGreenzone(false) then
                TriggerServerEvent(EVENTS.START_BENCHMARK)
            else
                notify("~r~You must be in a greenzone to start a benchmark.")
            end
        end
    )

    RageUI.Checkbox(
        "Enable Clothing Debug",
        "Shows extra details in the clothing menu (collection, local index, texture indices).",
        State.clothingDebug,
        {},
        function(_, _, _, checked)
            State.clothingDebug = checked
        end
    )

    RageUI.Checkbox(
        "Hide Gang Turfs on Map",
        "",
        State.hideTurfs,
        {},
        function(_, _, _, checked)
            State.hideTurfs = checked
            setBoolInt(KVP.HIDE_TURFS, checked)
            CMG.setShowTurfBlips(not checked)
        end
    )
end

---------------------------------------------------------------------------
-- ACCESS / COMPENSATION / OVERWATCH DATA EVENTS
---------------------------------------------------------------------------

RegisterNetEvent(EVENTS.RECEIVE_WEAPON_ACCESS)
AddEventHandler(EVENTS.RECEIVE_WEAPON_ACCESS, function(owned, bought)
    State.weaponOwned = owned or {}
    State.weaponBought = bought or {}
end)

RegisterNetEvent(EVENTS.RECEIVE_WEAPON_ACCESS_CODE)
AddEventHandler(EVENTS.RECEIVE_WEAPON_ACCESS_CODE, function(code)
    State.weaponAccessCode = code
end)

RegisterNetEvent(EVENTS.RECEIVE_WEAPON_WHITELIST_USERS)
AddEventHandler(EVENTS.RECEIVE_WEAPON_WHITELIST_USERS, function(users)
    State.weaponWhitelistUsers = users
end)

RegisterNetEvent(EVENTS.RECEIVE_CLOTHING_ACCESS)
AddEventHandler(EVENTS.RECEIVE_CLOTHING_ACCESS, function(owned, bought)
    State.clothingOwned = owned or {}
    State.clothingBought = bought or {}
end)

RegisterNetEvent(EVENTS.RECEIVE_CLOTHING_ACCESS_CODE)
AddEventHandler(EVENTS.RECEIVE_CLOTHING_ACCESS_CODE, function(code)
    State.clothingAccessCode = code
end)

RegisterNetEvent(EVENTS.RECEIVE_COMPENSATION)
AddEventHandler(EVENTS.RECEIVE_COMPENSATION, function(data)
    State.compensation = data
end)

RegisterNetEvent(EVENTS.OPEN_DISCORD_VERIFY)
AddEventHandler(EVENTS.OPEN_DISCORD_VERIFY, function()
    RageUI.Visible(RMenu:Get("settingsmenu", MENU.VERIFY_DISCORD), true)
end)

RegisterNetEvent(EVENTS.DISCORD_CHANGE_SUCCESS)
AddEventHandler(EVENTS.DISCORD_CHANGE_SUCCESS, function()
    RageUI.CloseAll()
    notify("~g~Your Discord has been successfully updated.")
end)

RegisterNetEvent(EVENTS.CLOSE_MENUS)
AddEventHandler(EVENTS.CLOSE_MENUS, function()
    RageUI.CloseAll()
end)

RegisterNetEvent(EVENTS.OVERWATCH_DATA)
AddEventHandler(EVENTS.OVERWATCH_DATA, function(data)
    State.overwatchPlayers = data
end)

RegisterNetEvent(EVENTS.OVERWATCH_PLAYER_DATA)
AddEventHandler(EVENTS.OVERWATCH_PLAYER_DATA, function(playerId, value)
    if playerId == State.selectedOverwatchPlayer then
        State.overwatchPlayerData = value
    end
end)

RegisterNetEvent(EVENTS.OVERWATCH_STATS)
AddEventHandler(EVENTS.OVERWATCH_STATS, function(playerId, kills, deaths)
    if playerId == State.selectedOverwatchPlayer then
        State.overwatchStats = {kills, deaths}
    end
end)

RegisterNetEvent(EVENTS.COMPENSATION_AVAILABLE)
AddEventHandler(EVENTS.COMPENSATION_AVAILABLE, function()
    Wait(5000)

    CMG.announceMpBigMsg(
        "~g~Compensation",
        "~y~You have unclaimed compensation available in your F2 Settings!",
        10000,
        true
    )
end)

---------------------------------------------------------------------------
-- KILL / BLOOD EFFECT EVENT PLUMBING
---------------------------------------------------------------------------

RegisterNetEvent(EVENTS.ADD_KILL_EFFECT)
AddEventHandler(EVENTS.ADD_KILL_EFFECT, function(ped)
    CMG.addKillEffect(ped, false)
end)

AddEventHandler(EVENTS.ADD_BLOOD_EFFECT, function(ped)
    if not CMG.isPlusClub() and not CMG.isPlatClub() then
        return
    end

    local gotBone, boneId = GetPedLastDamageBone(ped)

    if gotBone then
        -- The full source contains a large bone -> body-region lookup.
        -- Keep the readable fallback simple here; the exact table is retained
        -- in settings_full_cleaned_reference.lua.
        local region = "body"

        if boneId == 31086 then
            region = "head"
        end

        CMG.addBloodEffect(region, boneId, ped)
    end
end)

---------------------------------------------------------------------------
-- IDLE CAMERA
---------------------------------------------------------------------------

CMG.createThreadOnTick(
    function()
        if State.disableIdleCamera then
            InvalidateIdleCam()
            InvalidateVehicleIdleCam()
        end
    end,
    "LOD Settings Override"
)

-- These handlers are empty in the supplied decompile.
AddEventHandler(EVENTS.UNKNOWN_E4697F6833, function() end)
AddEventHandler(EVENTS.UNKNOWN_71B989B7CD, function() end)

---------------------------------------------------------------------------
-- CHAT PING
---------------------------------------------------------------------------

-- === EVENT HANDLER: runs when "CMG:chatMessagePing" fires ===
AddEventHandler("CMG:chatMessagePing", function()
    if getBoolInt(KVP.DISABLE_CHAT_PINGS) then
        return
    end

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        transactionType = "chatping"
    })
end)

---------------------------------------------------------------------------
-- FPS / AREA TELEMETRY
---------------------------------------------------------------------------

local FPS_AREAS = {
    Legion = vector3(197.3558807373, -927.93707275391, 30.690628051758),
    Casino = vector3(901.06848144531, -54.205715179443, 78.75032043457),
    Sandy = vector3(1841.1684570312, 3669.0502929688, 33.680004119873),
    Rebel = vector3(1585.5583496094, 6446.8916015625, 25.142086029053),
}

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    local previousArea = nil
    local previousFps = 0

    while true do
        Citizen.Wait(300000)

        local coords = CMG.getPlayerCoords()
        local area = "World"
        local bestDistance = 500.0

        for areaName, areaCoords in pairs(FPS_AREAS) do
            local distance = #(areaCoords - coords)

            if distance < bestDistance then
                area = areaName
                bestDistance = distance
            end
        end

        local frameTime = GetFrameTime()
        local fps = 0

        if frameTime and frameTime > 0.0 then
            fps = math.min(math.ceil(1.0 / frameTime), 250)
        end

        if fps > 0
            and (
                area ~= previousArea
                or math.abs(previousFps - fps) > 5
            )
        then
            TriggerServerEvent(EVENTS.REPORT_AREA_FPS, area, fps)
            previousArea = area
            previousFps = fps
        end
    end
end)

---------------------------------------------------------------------------
-- F2 SETTINGS COMMAND
---------------------------------------------------------------------------

-- === COMMAND /settings: runs when that command is entered ===
RegisterCommand("settings", function()
    local menu = RMenu:Get("settingsmenu", MENU.MAIN)
    RageUI.Visible(menu, not RageUI.Visible(menu))
end, false)

RegisterKeyMapping(
    "settings",
    "Open Settings",
    "KEYBOARD",
    "F2"
)

---------------------------------------------------------------------------
-- MENU DRAW THREAD
---------------------------------------------------------------------------

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.MAIN),
            true, true, true,
            drawMainMenu
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.WEAPON_OPTIONS),
            true, true, true,
            drawWeaponOptions
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.CHAIN),
            true, true, true,
            drawChainList
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.CHAIN_EDIT),
            true, true, true,
            drawChainEditor
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.GANG),
            true, true, true,
            drawGangSettings
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.GRAPHICS),
            true, true, true,
            drawGraphics
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.SKY_COLOURS),
            true, true, true,
            drawSkyColours
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.UI),
            true, true, true,
            drawUiSettings
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.MISC),
            true, true, true,
            drawMisc
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.KILL_EFFECTS),
            true, true, true,
            function()
                RageUI.Separator("~y~Kill Effects")
                RageUI.Separator("The original contains detailed ped flash,")
                RageUI.Separator("screen flash, timecycle and particle sliders.")
                RageUI.Separator("See the cleaned reference for exact geometry.")
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.BLOOD_EFFECTS),
            true, true, true,
            function()
                RageUI.Separator("~y~Blood Effects")
                RageUI.Separator("Separate source settings exist for")
                RageUI.Separator("Head / Body / Arms / Legs.")
                RageUI.Separator("See the cleaned reference for exact sliders.")
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.VERIFY_DISCORD),
            true, true, true,
            function()
                RageUI.Separator("~b~Link Discord")
                RageUI.ButtonWithStyle(
                    "Enter Code",
                    "The code that was sent to your new Discord account.",
                    {RightLabel = ">>>"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent(EVENTS.SUBMIT_DISCORD_CODE)
                        end
                    end
                )
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.COMPENSATION),
            true, true, true,
            function()
                if State.compensation == nil then
                    RageUI.Separator("~r~Request data...")
                elseif type(State.compensation) ~= "table"
                    or next(State.compensation) == nil
                then
                    RageUI.Separator("~r~No compensation available.")
                else
                    for key, value in pairs(State.compensation) do
                        RageUI.ButtonWithStyle(
                            tostring(
                                type(value) == "table"
                                    and (value.title or value.reason or key)
                                    or key
                            ),
                            "",
                            {RightLabel = ">>>"},
                            true,
                            function(_, _, selected)
                                if selected then
                                    State.selectedCompensation = value
                                end
                            end,
                            RMenu:Get("settingsmenu", MENU.COMPENSATION_INFO)
                        )
                    end
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.COMPENSATION_INFO),
            true, true, true,
            function()
                local data = State.selectedCompensation

                if not data then
                    RageUI.Separator("~r~No compensation selected")
                else
                    if type(data) == "table" then
                        for key, value in pairs(data) do
                            if type(value) ~= "table" then
                                RageUI.Separator(tostring(key) .. ": " .. tostring(value))
                            end
                        end
                    end

                    RageUI.ButtonWithStyle(
                        "~g~Claim Compensation",
                        "",
                        {},
                        true,
                        function(_, _, selected)
                            if selected then
                                TriggerServerEvent(EVENTS.CLAIM_COMPENSATION, data)
                            end
                        end
                    )
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.OVERWATCH),
            true, true, true,
            function()
                local players = State.overwatchPlayers

                if type(players) ~= "table" then
                    RageUI.Separator("~y~Waiting for Overwatch data...")
                elseif next(players) == nil then
                    RageUI.Separator("~y~You have no Perm IDs assigned to view")
                else
                    for _, player in pairs(players) do
                        local id = type(player) == "table"
                            and (player.userId or player.id)
                            or player

                        local name = type(player) == "table"
                            and (player.name or tostring(id))
                            or tostring(id)

                        RageUI.ButtonWithStyle(
                            name,
                            "",
                            {RightLabel = ">>>"},
                            true,
                            function(_, _, selected)
                                if selected then
                                    State.selectedOverwatchPlayer = id
                                    TriggerServerEvent(EVENTS.REQUEST_OVERWATCH_STATS, id)
                                end
                            end,
                            RMenu:Get("settingsmenu", MENU.OVERWATCH_PLAYER)
                        )
                    end
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.OVERWATCH_PLAYER),
            true, true, true,
            function()
                local id = State.selectedOverwatchPlayer

                if not id then
                    RageUI.Separator("~r~No player selected")
                else
                    local kills = tonumber(State.overwatchStats[1]) or 0
                    local deaths = tonumber(State.overwatchStats[2]) or 0
                    local kd = deaths > 0 and (kills / deaths) or kills

                    RageUI.Separator("Perm ID: " .. tostring(id))
                    RageUI.Separator(
                        string.format("%s Kills / %s Deaths (%.2f KD)", kills, deaths, kd)
                    )

                    RageUI.ButtonWithStyle(
                        "Spectate",
                        "",
                        {RightLabel = ">>>"},
                        true,
                        function(_, _, selected)
                            if selected then
                                TriggerServerEvent(EVENTS.START_SPECTATE, id)
                                CMG.enableAdminModeSpectator()
                            end
                        end
                    )

                    RageUI.ButtonWithStyle(
                        "Request Video",
                        "",
                        {},
                        true,
                        function(_, _, selected)
                            if selected then
                                TriggerServerEvent(EVENTS.REQUEST_VIDEO, id, "admin")
                                TriggerServerEvent(EVENTS.REQUEST_OVERWATCH_STATS, id)
                            end
                        end
                    )
                end
            end
        )

        -- Access menus are intentionally kept simple here because their exact
        -- server-return table schemas are not fully recoverable from the
        -- client decompile. The full cleaned reference retains the original.
        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.WEAPON_ACCESS),
            true, true, true,
            function()
                buttonTo("Weapon Whitelists", "", MENU.WEAPON_WHITELIST)
                buttonTo("Weapon Bought Onto", "", MENU.WEAPON_BOUGHT)
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.WEAPON_WHITELIST),
            true, true, true,
            function()
                for key, value in pairs(State.weaponOwned or {}) do
                    RageUI.Separator(tostring(
                        type(value) == "table" and (value.name or value.weaponName or key) or key
                    ))
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.WEAPON_BOUGHT),
            true, true, true,
            function()
                for key, value in pairs(State.weaponBought or {}) do
                    RageUI.Separator(tostring(
                        type(value) == "table" and (value.name or value.weaponName or key) or key
                    ))
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.CLOTHING_ACCESS),
            true, true, true,
            function()
                buttonTo("Clothing Whitelists", "", MENU.CLOTHING_WHITELIST)
                buttonTo("Clothing Bought Onto", "", MENU.CLOTHING_BOUGHT)
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.CLOTHING_WHITELIST),
            true, true, true,
            function()
                for key, value in pairs(State.clothingOwned or {}) do
                    RageUI.Separator(tostring(
                        type(value) == "table" and (value.displayName or value.slot or key) or key
                    ))
                end
            end
        )

        RageUI.IsVisible(
            RMenu:Get("settingsmenu", MENU.CLOTHING_BOUGHT),
            true, true, true,
            function()
                for key, value in pairs(State.clothingBought or {}) do
                    RageUI.Separator(tostring(
                        type(value) == "table" and (value.displayName or value.slot or key) or key
                    ))
                end
            end
        )

        Wait(0)
    end
end)

---------------------------------------------------------------------------
-- EXTRA SOURCE FEATURES / LABEL CATALOG
---------------------------------------------------------------------------
--
-- The original file also contains settings/menu entries for:
--
--   Crosshair
--   Scope Settings
--   Cinematic Black Bars
--   Enable Compass
--   Disable Killfeed
--   Disable Chat
--   Disable IDs
--   Disable On-Duty Names
--   Disable Radios
--   Transparent Radio Background
--   Disable Radar
--   Disable Gang UI
--   Use Legacy Inventory
--   Use Legacy HUD
--   Hunger & Thirst
--   Disable Low Priority Props
--   Disable Notify Sound
--   Disable Lookout 1-5
--   Create Lightning
--   Ped Flash RGB / Intensity / Time
--   Screen Flash RGB / Intensity / Time
--   Timecycle Flash
--   Particles
--   Head / Body / Arms / Legs blood effects
--
-- Those exact animation/particle slider implementations are left in the
-- cleaned full reference because the decompiler flattened them heavily.
--
-- This readable file focuses on making the architecture, persistent settings,
-- event plumbing and main menu flow understandable instead of reproducing
-- thousands of misleading register assignments.
---------------------------------------------------------------------------

RemoveTimecycleModifier("cmg_settings")
