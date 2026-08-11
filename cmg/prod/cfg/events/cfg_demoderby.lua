--[[
    LEVEL 1 BEGINNER GUIDE — Demoderby
    =======================================

    File: cmg/prod/cfg/events/cfg_demoderby.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: server event/minigame gameplay, specifically the Demoderby feature.

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
local maps = {
    ["Big sky thing"] = {
        rockstarMap = "https://prod.cloud.rockstargames.com/ugc/gta5mission/3726/9Rxg4gGO00SWs-WVq6nBsw/0_0_fr.json",
        middleCoords = vector3(273.09106445313,113.85364532471,723.77307128906),
        banner = "placeholder1",
        maxPlayers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"},
        maxRounds = {"3", "4", "5", "6", "7", "8"},
        cars = {"scarab", "zr380", "monster"},
        teams = {"0", "2"},
        cameraTransitionCoords = {
            {placementCoords = vector3(332.71343994141,40.128517150879,788.27111816406), pointAt = vector3(277.00567626953,112.13814544678,754.51873779297)},
            {placementCoords = vector3(191.64059448242,58.651958465576,789.60717773438), pointAt = vector3(277.00567626953,112.13814544678,754.51873779297)},
        }
    },
    ["Sandy one"] = {
        rockstarMap = "https://prod.cloud.rockstargames.com/ugc/gta5mission/3726/zahAwRVizU29-2gEsSHS9g/0_0_it.json",
        banner = "placeholder2",
        maxPlayers = {"1", "2", "3", "4", "5", "6", "7", "8"},
        cars = {"panto", "bulldozer", "monster"},
        teams = {"0", "2"},
    },
    allMaps = {"Big sky thing", "Sandy one"},
}

return maps
