--[[
    LEVEL 1 BEGINNER GUIDE — Koth
    ==================================

    File: cmg/prod/cfg/cfg_koth.lua
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
---@type KothConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.locations = {
    ["HeroinGreen"] = {
        name = "Heroin Redzone",
        position = vector3(3589.1616210938,3718.4172363281,36.382331848145),
        radius = 15.0,
    },
    ["NorthLSDBuilding"] = {
        name = "North LSD",
        position = vector3(1294.4708251953,4334.6684570312,38.655517578125),
        radius = 15.0,
    },
    ["LargeArmsDeck"] = {
        name = "Paleto Large Arms",
        position = vector3(-1147.107421875,4912.4150390625,220.69471740723),
        radius = 15.0,
    },
    ["SouthLSDSign"] = {
        name = "South LSD",
        position = vector3(2492.2138671875,-383.88052368164,93.864250183105),
        radius = 15.0,
    },
    ["BlackMarket"] = {
        name = "Black Market",
        position = vector3(-427.29205322266,1117.4212646484,326.76974487305),
        radius = 15.0,
    }
}

cfg.captureTimeMsec = 450000

cfg.lootWeapons = {
    {
        type = "sniper",
        isSubType = true,
        minAmount = 3,
        maxAmount = 3,
    },
    {
        type = "AR",
        isSubType = false,
        minAmount = 3,
        maxAmount = 3,
    },
    {
        type = "SMG",
        isSubType = false,
        minAmount = 3,
        maxAmount = 3,
    },
}

cfg.lootItems = {
    {
        itemId = "bankheists_diamonds",
        minAmount = 4,
        maxAmount = 6,
    },
}

return cfg
