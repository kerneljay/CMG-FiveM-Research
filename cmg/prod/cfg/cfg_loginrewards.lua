--[[
    LEVEL 1 BEGINNER GUIDE — Loginrewards
    ==========================================

    File: cmg/prod/cfg/cfg_loginrewards.lua
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

cfg.requiredPlaytimeMinutes = 30
cfg.lootboxSpinDurationMs = 16000

cfg.streakMoney = {
    {day = 1, amount = 50000},
    {day = 2, amount = 60000},
    {day = 3, amount = 70000},
    {day = 4, amount = 80000},
    {day = 5, amount = 90000},
    {day = 6, amount = 100000},
    {day = 7, amount = 110000},
    {day = 8, amount = 120000},
    {day = 9, amount = 130000},
    {day = 10, amount = 150000},
    {day = 60, amount = 200000},
    {day = 120, amount = 300000}
}

cfg.simeonsCarCategories = {
    "Compacts",
    "Sports",
    "Drift",
    "SUVs",
    "Supers",
    "Motorcycles",
    "Vans",
    "Trucks",
}

cfg.lootPool = {
    {type = "money", weight = 50},
    {type = "platinum", weight = 10, hours = 24},
    {type = "weapon", weight = 3, weaponItem = "WEAPON_MACHETE", amount = 1},
    {type = "weapon", weight = 11, weaponItem = "WEAPON_BERETTACMG", amount = 1},
    {type = "weapon", weight = 7, weaponItem = "WEAPON_UZICMG", amount = 1},
    {type = "weapon", weight = 6, weaponItem = "WEAPON_OLYMPIACMG", amount = 1},
    {type = "weapon", weight = 3, weaponItem = "WEAPON_AK74CMG", amount = 1},
    {type = "xp_boost", weight = 2, percent = 50, hours = 6},
    {type = "vehicle", weight = 5},
}

return cfg
