--[[
    LEVEL 1 BEGINNER GUIDE — Hud
    =================================

    File: cmg/prod/cfg/cfg_hud.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: configuration/data used by other scripts.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 0
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
local cfg = {}

cfg.MaxVoiceRanges = 3
cfg.ShowMapWhileWalking = true
cfg.SeatbeltEjectSpeed = 150 -- adjust this value in kmh
--- Vehicle world velocity (m/s) from the driver snapshot; multiplied like TFNRP/seatbelt after teleport.
cfg.seatbeltEjectVelocityScale = 1.35
--- Extra Z world velocity (m/s) added on top of the vehicle snapshot (TFNRP uses raw vel only; this is CMG extra).
cfg.seatbeltEjectUpwardImpulse = 2.0
cfg.EnableVehiclesDefaultRadio = true

cfg.Menu = { -- Toggle vehicle menu
    media = true,
    quick = true,
    vehicle = true,
}

cfg.StatusRefreshRateTimes = {
    low = 1000,
    medium = 600,
    high = 400,
    realtime = 150,
}

--- Max absolute value for F2 "precise" minimap X/Y (added on top of the selected preset).
cfg.minimapFineOffsetClamp = 0.25


--[[
    ██╗░░██╗███████╗██╗░░░██╗░██████╗
    ██║░██╔╝██╔════╝╚██╗░██╔╝██╔════╝
    █████═╝░█████╗░░░╚████╔╝░╚█████╗░
    ██╔═██╗░██╔══╝░░░░╚██╔╝░░░╚═══██╗
    ██║░╚██╗███████╗░░░██║░░░██████╔╝
    ╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═════╝░
]]--

cfg.EnableRegisterKeyMapping = true
cfg.SeatbeltKey = "B"
cfg.MouseCursorKey = 137 -- Whatever you set cfg.EnableRegisterKeyMapping if you want to change key for cursor only reference here https://docs.fivem.net/docs/game-references/controls/
cfg.MouseCursorKeyLabel = "CAPS"
cfg.CountryCode = "en-GB" -- this is used to format the date you can check country codes here -- https://www.w3schools.com/jsref/jsref_tolocalestring_number.asp
cfg.EnableUIKeys = false


cfg.Gift = {
    enable = false,
    text = "<p>Play</p> <span>{0} H</span> <p>and get a gift</p> ",
    time = 30, -- x mn play time to give gift
    rewards = {
        {
            type = "item",
            name = "water",
            amount = 1,
        },
        {
            type = "bank_money",
            amount = 10000,
        },
        {
            type = "vcoin", -- if you use vcoin you need to add a function to get vcoin -- cfg.CoinFunction
            amount = 1,
        },
    }
}

cfg.CoinFunction = function(src, amount)
    exports['m-vipsystem']:addPlayerCoin(src, amount)
end

cfg.QuickLocations = {
    bank = {
        vector3(150.266, -1040.203, 29.374),
        vector3(-1212.980, -330.841, 37.787),
        vector3(-2962.582, 482.627, 15.703),
        vector3(-112.202, 6469.295, 31.626),
        vector3(314.187, -278.621, 54.170),
        vector3(-351.534, -49.529, 49.042),
        vector3(241.727, 220.706, 106.286),
        vector3(1175.064, 2706.643, 38.094),
    },
    gas_stations = {
        vector3(49.4187, 2778.793, 58.043),
        vector3(263.894, 2606.463, 44.983),
        vector3(1039.958, 2671.134, 39.550),
        vector3(1207.260, 2660.175, 37.899),
        vector3(2539.685, 2594.192, 37.944),
        vector3(2679.858, 3263.946, 55.240),
        vector3(2005.055, 3773.887, 32.403),
        vector3(1687.156, 4929.392, 42.078),
        vector3(1701.314, 6416.028, 32.763),
        vector3(179.857, 6602.839, 31.868),
        vector3(-94.4619, 6419.594, 31.489),
        vector3(-2554.996, 2334.40, 33.078),
        vector3(-1800.375, 803.661, 138.651),
        vector3(-1437.622, -276.747, 46.207),
        vector3(-2096.243, -320.286, 13.168),
        vector3(-724.619, -935.1631, 19.213),
        vector3(-526.019, -1211.003, 18.184),
        vector3(-70.2148, -1761.792, 29.534),
        vector3(265.648, -1261.309, 29.292),
        vector3(819.653, -1028.846, 26.403),
        vector3(1208.951, -1402.567,35.224),
        vector3(1181.381, -330.847, 69.316),
        vector3(620.843, 269.100, 103.089),
        vector3(2581.321, 362.039, 108.468),
        vector3(176.631, -1562.025, 29.263),
        vector3(176.631, -1562.025, 29.263),
        vector3(-319.292, -1471.715, 30.549),
        vector3(1784.324, 3330.55, 41.253)
    },
    shops = {
        vector3(373.875, 325.896,  102.566),
        vector3(2557.458,382.282, 107.622),
        vector3(-3038.939, 585.954, 6.908),
        vector3(-1487.553, -379.107, 39.163),
        vector3(1392.562, 3604.684, 33.980),
        vector3(-2968.243,390.910,  14.043),
        vector3(2678.916, 3280.671, 54.24),
        vector3( -48.519,  -1757.514, 28.421),
        vector3(1163.373, -323.801,  68.205),
        vector3( -707.501, -914.260, 18.215),
        vector3(-1820.523,792.518,  137.118),
        vector3(1698.388, 4924.404, 41.063),
        vector3(1961.464, 3740.672, 31.343),
        vector3(1135.808, -982.281,  45.415),
        vector3( 25.88,   -1347.1,  28.5),
        vector3(547.431,   2671.710, 41.156),
        vector3( -3241.927, 1001.462,  11.830),
        vector3(1166.024, 2708.930,   37.157),
        vector3(1729.216, 6414.131,  34.037),
    },
    clothing_shops = {
        vector3(72.3, -1399.1, 28.4),
	    vector3(-703.8, -152.3, 36.4),
	    vector3(-167.9, -299.0, 38.7),
	    vector3(428.7, -800.1, 28.5),
	    vector3(-829.4, -1073.7, 10.3),
	    vector3(-1447.8, -242.5, 48.8),
	    vector3(11.6, 6514.2, 30.9),
	    vector3(123.6, -219.4, 53.6),
	    vector3(1696.3, 4829.3, 41.1),
	    vector3(618.1, 2759.6, 41.1),
	    vector3(1190.6, 2713.4, 37.2),
	    vector3(-1193.4, -772.3, 16.3),
	    vector3(-3172.5, 1048.1, 19.9),
	    vector3(-1108.4, 2708.9, 18.1)
    },
    barber_shops = {
        vector3(-814.3, -183.8, 36.6),
        vector3(136.8, -1708.4, 28.3),
        vector3(-1282.6, -1116.8, 6.0),
        vector3(1931.5, 3729.7, 31.8),
        vector3(1212.8, -472.9, 65.2),
        vector3(-32.9, -152.3, 56.1),
        vector3(-278.1, 6228.5, 30.7)
    },
    tattoo_shops = {
        vector3(1322.6, -1651.9, 51.2),
	    vector3(-1153.6, -1425.6, 4.9),
	    vector3(322.1, 180.4, 103.5),
	    vector3(-3170.0, 1075.0, 20.8),
	    vector3(1864.6, 3747.7, 33.0),
	    vector3(-293.7, 6200.0, 31.4)
    },
    -- gun_store: HUD uses nearest SmallArmsDealer van only (see cl_hud.lua + CMG.getSmallArmsShopCoordsForHudWaypoint)
    gun_store = {},
}

cfg.Notification = function(message, _type, isServer, src) -- You can change here events for notifications
    if isServer then
        notify(src, message)
    else
        notify(message)
    end
end

cfg.Locales = {
    ["SAFEZONE"] = "You entered <span> the safezone</span>",

    ["QUICK"] = "Quick",
    ["VEHICLE"] = "Vehicle",
    ["MAP"] = "Map",
    ["MEDIA"] = "Media",
    ["SETTINGS"] = "Settings",
    ["NOW_PLAYING"] = "Now Playing...",
    ["PLAYLIST_AMOUNT"] = "{0} Playlist",
    ["LIKES"] = "{0} Likes",
    ["LIKES_2"] = "Likes",
    ["ENABLE_TOP_WIDGET"] = "Enable Top Widget",
    ["DISABLE_TOP_WIDGET"] = "Disable Top Widget",
    ["CREATE_PLAYLIST"] = "Create New Playlist",
    ["PLAYLIST_NAME"] = "Playlist Name...",
    ["COVER_URL"] = "Cover Image Url",
    ["SONG_URL"] = "Song url...",
    ["ADD_SONGS"] = "Add songs",
    ["ADD_SONG"] = "Add song",
    ["PLAY_INFO"] = "Play any song via quick or from playlist.",
    ["PLAYLIST_INFO"] = "Here are some playlist from players!",

    ["PLAY"] = "PLAY",
    ["HELLO"] = "Hello {0}",
    ["DELETE_PLAYLIST_CONFIRM"] = "Are you sure to delete this playlist ?",
    ["YES"] = "YES",
    ["NO"] = "NO",
    ["LIKE_PLAYLIST"] = "Like to add this playlist to library",
    ["EDIT"] = "EDIT",
    ["SEARCH"] = "Search any playlist...",
    ["SET_WAYPOINT"] = "Click to set waypoint. ",
    ["BONNET"] = "Bonnet",
    ["SEAT_1"] = "1 - Seat",
    ["SEAT_2"] = "2 - Seat",
    ["SEAT_3"] = "3 - Seat",
    ["SEAT_4"] = "4 - Seat",
    ["TRUNK"] = "Trunk",
    ["ALL"] = "ALL",
    ["FRONT"] = "FRONT",
    ["LEFT"] = "LEFT",
    ["RIGHT"] = "RIGHT",
    ["REAR"] = "REAR",
    ["PARTY"] = "PARTY",
    ["FRONT_LEFT"] = "FRONT LEFT",
    ["FRONT_RIGHT"] = "FRONT RIGHT",
    ["REAR_LEFT"] = "REAR LEFT",
    ["REAR_RIGHT"] = "REAR RIGHT",
    ['SEAT1'] = "Seat 1",
    ['SEAT2'] = "Seat 2",
    ['SEAT3'] = "Seat 3",
    ['SEAT4'] = "Seat 4",
    ['SEAT_N'] = "Seat {0}",


    ["SPORT_MODE"] = "SPORT MODE",
    ["NORMAL_MODE"] = "NORMAL MODE",
    ["DRIFT_MODE"] = "DRIFT MODE",
    ["HUD_SETTINGS"] = "HUD SETTINGS",
    ["DRAG_DROP"] = "Drag And Drop HUD Elements To Anywhere You Like",
    ["CLOSE"] = "Press “ ESC ” To Close This Screen",
    ["RESTORE"] = "Restore To Default",
    ["CHANGE_SETTINGS"] = "Change your settings",
    ["COMPASS_LOCATION_INGAME"] = "Compass, Location, and Clock",
    ["STATUS_HUD"] = "Status HUD",
    ["INFO_MONEY_COIN"] = "Info, Money And Coin",
    ["HELPER_WIDGETS"] = "Helper Widgets",
    ["SPEEDOMETER"] = "Speedometer",
    ["FREEFORM_EDIT"] = "Freeform Edit",
    ["HIDE_HUD"] = "Hide HUD",
    ["CINEMATIC_MODE"] = "Cinematic Mode",
    ["STREAMER_MODE"] = "Streamer Mode",
    ["ENABLE_STREAMER_MODE"] = "Enable Streamer Mode",
    ["STREAMER_MODE_DESC"] = "By enabling streamer mode your in game ID will be hide and you will not hear any mMedia songs due to platforms copyright policies. If you still want them to be enabled you can change the settings down below.",
    ["PLAY_MEDIA_SONGS"] = "Play Media Songs",
    ["SHOW_MY_ID"] = "Show My Player ID",
    ["GO_BACK"] = "Go back",
    ["DISPLAY_SETTINGS"] = "Display Settings",
    ["CUSTOMIZATION"] = "Customization",
    ["DISPLAY_MODES"] = "Display Modes",
    ["ORIGINAL_MODE"] = "Original Mode",
    ["TEXT_MODE"] = "Text Mode",
    ["CIRCLE_HEALTH_ARMOR"] = "Circle Health And Armor",
    ["DISPLAY_ALL"] = "Display All",
    ["HIDE_HEALTH"] = "Hide Health",
    ["HIDE_MAP_OVERLAY"] = "Hide Map Overlay",
    ["DOORS"] = "DOORS",
    ["NEONS"] = "NEONS",



    ["HIDE_ARMOR"] = "Hide Armor",
    ["HIDE_HUNGER"] = "Hide Hunger",
    ["HIDE_THIRST"] = "Hide Thirst",
    ["HIDE_STRESS"] = "Hide Stress",
    ["HIDE_DYNAMIC_STATUS"] = "Hide Dynamic Status",
    ["DYNAMIC_HUD_INFO"] = "Dynamic Status contains lung stamina and parachute altitude",
    ["HIDE_MIC"] = "Hide Mic And Radius",
    ["HIDE_COMPASS"] = "Hide Compass",
    ["HIDE_LOCATION"] = "Hide Location",
    ["HIDE_IG_TIME"] = "Hide Time",
    ["COMPASS_BEHAVIOUR"] = "Compass Behaviour",
    ["COMPASS_COLOR"] = "Compass Color",
    ["LOCATION_TEXT_COLOR"] = "Location Text Color",
    ["IG_TIME_TEXT_COLOR"] = "Time Text Color",
    ["HIDE_SPEEDOMETER"] = "Hide Speedometer",
    ["HIDE_RPM"] = "Hide RPM Gauge",
    ["HIDE_NITRO"] = "Hide Nitro Gauge",
    ["NITRO"] = "Nitro Gauge",
    ["RPM"] = "RPM Gauge",

    ["MONOCHROME_COLOR"] = "Monochrome Color",
    ["COLOR_DESC"] = "This option will colorize all the Speedometer elements to a single color.",
    ["OUTER_CIRCLE"] = "Outer Circle",
    ["NON_HIGHLIGHTED_GAUGE_LINES"] = "Non Highlighted Gauge Lines",
    ["HIGHLIGHTED_GAUGE_LINES"] = "Highlighted Gauge Lines",
    ["NITRO_STATUS"] = "Nitro Status",
    ["NITRO_TEXT"] = "Nitro Text",
    ["NEEDLE"] = "Needle",
    ["NEEDLE_CIRCLE"] = "Needle Circle",
    ["INNER_SMALL_RPM_LINES"] = "Inner Small RPM Lines",
    ["HIGHLIGHTED_RPM_INDICATORS"] = "Highlighted RPM Indicators",
    ["BURNOUT_WARN"] = "Burnout Warn",
    ["RPM_TEXT"] = "RPM Text",
    ["INNER_SMALL_SPEEDO_LINES"] = "Inner Small Speedo Lines",
    ["NON_HIGHLIGHTED_SPEED_INDICATORS"] = "Non Highlighted Speed Indicators",
    ["HIGHLIGHTED_SPEED_INDICATORS"] = "Highlighted Speed Indicators",
    ["SPEED_INDICATOR"] = "Speed Indicator",

    ["DEFAULT_SPEEDOMETER_INFO"] = "This customization is only for <span>default speedometer</span>. Other classes speedometers will not effected from this changes.",
    ["SIZE_SETTINGS"] = "Size Settings",
    ["SPEEDOMETER_SIZE"] = "Speedometer Size",
    ["REVERT"] = "Revert",
    ["RPM_GAUGE_SIZE"] = "RPM Gauge Size",
    ["NITRO_GAUGE_SIZE"] = "Nitro Gauge Size",
    ["SIZE_DESC"] = "Be aware that if the higher sizes of the elements goes on top of each other you can reposition them on <span>Freeform Edit</span> settings.",
    ["SPEED_CALCULATOR"] = "Speed Calculator",
    ["REFRESH_RATE"] = "Speedo Refresh Rate",
    ["LOW"] = "LOW",
    ["MEDIUM"] = "MEDIUM",
    ["HIGH"] = "HIGH",
    ["REAL_TIME"] = "REAL TIME",
    ["REFRESH_RATE_DESC"] = "Be aware that <span>higher speedo refresh rate may</span> increase your CPU and you can have FPS drops in game.",
    ["REFRESH_RATE_DESC_2"] = "Be aware that <span>status refresh rate may</span> increase your CPU and you can have FPS drops in game.",

    ["HUD_COLOR_DESC"] = "This option will colorize all the status HUD’s to a single color.",

    ["HEALTH_COLOR"] = "Health Color",
    ["ARMOR_COLOR"] = "Armor Color",
    ["HUNGER_COLOR"] = "Hunger Color",
    ["THIRST_COLOR"] = "Thirst Color",
    ["STRESS_COLOR"] = "Stress Color",
    ["STAMINA_COLOR"] = "Stamina Color",
    ["OXYGEN_COLOR"] = "Oxygen Color",
    ["ALTITUDE_COLOR"] = "Altitude Color",
    ["MOUSE_MOVEMENT"] = "On Mouse Movement",
    ["PLAYER_LOOK"] = "On Player Look",

    ["COMPASS_BEHAVIOUR_DESC"] = "This will display the compass behaviour when you move your mouse.",
    ["HIDE_WEAPON_WIDGET"] = "Hide Weapon Widget",

    ["HIDE_M_DRIVE_CONTROLS_WIDGET"] = "Hide Cursor Widget",

    ["HIDE_ACTION_KEYS_WIDGET"] = "Hide Action Keys Widget",

    ["HIDE_SAFEZONE_NOTIFY"] = "Hide Safezone Notify",

    ["HIDE_SERVER_INFO"] = "Hide Server Info",
    ["HIDE_CHARACTER_INFO"] = "Hide Character Info",
    ["HIDE_BANK_MONEY"] = "Hide Bank Money",
    ["HIDE_CASH_MONEY"] = "Hide Cash Money",
    ["HIDE_SOCIETY_MONEY"] = "Hide Society Money",
    ["HIDE_BLACK_MONEY"] = "Hide Black Money",
    ["HIDE_COIN"] = "Hide Coin",
    ["BRAKE"] = "BRAKE",
    ["BANK"] = "ATM",
    ["GAS_STATION"] = "Gas Station",
    ["STORE"] = "Supermarket",
    ["CLOTHING_SHOP"] = "Clothing Store",
    ["BARBER_SHOP"] = "Hairdresser",
    ["TATTOO_SHOP"] = "Tattoo Shop",
    ["GUN_STORE"] = "Gun Store",
    ["ENTER_GARAGE_TEXT"] = "[G] Open / Close Trunk | [F] Exit"
}
cfg.Notifications = {
    ["ENGINE_ON"] = {
       type = "success",
       message = "Engine is on",
    },
    ["ENGINE_OFF"] = {
        type = "error",
        message = "Engine is off",
    },
    ["YOU_DONT_HAVE_ITEM"] = {
        type = "error",
        message = "You don't have %s",
    },
    ["CRUISE_ENABLED"] = {
        type = "success",
        message = "Cruise control is enabled",
    },
    ["CRUISE_DISABLED"] = {
        type = "error",
        message = "Cruise control is disabled",
    },
    ["SIT_DRIVER_SEAT"] = {
        type = "error",
        message = "You have to sit on driver seat to install nitro",
    },

    ["NOT_IN_VEHICLE"] = {
        type = "error",
        message = "You are not in vehicle",
    },

    ["HAS_ALREADY_NITRO"] = {
        type = "error",
        message = "This vehicle has already nitro",
    },
    ["INSTALLING_NITRO"] = {
        type = "info",
        message = "You are installing nitro...",
    },
    ["NITRO_INSTALLED"] = {
        type = "success",
        message = "Nitro installed",
    },
    ["TOOK_SEATBELT"] = {
        type = "success",
        message = "You put on your seatbelt",
    },
    ["TOOK_OFF_SEATBELT"] = {
        type = "error",
        message = "You took off seatbelt",
    },
    ["GETTING_STRESSED"] = {
        type = "error",
        message = "Getting Stressed",
    },
    ["RELIEVED_STRESS"] = {
        type = "error",
        message = "You Are Relaxing",
    },
    ["SEAT_FULL"] = {
        type = "error",
        message = "This seat's taken.",
    },
    ["TRUNK_CLOSED"] = {
        type = "error",
        message = "Trunk Closed.",
    },

}

return cfg
