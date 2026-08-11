--[[
    LEVEL 1 BEGINNER GUIDE — Forcedequipment
    =============================================

    File: cmg/prod/cfg/cfg_forcedequipment.lua
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
-- Config for NHS-forced medical equipment (crutches, casts, wheelchair, etc.)
-- Each type can be forced onto a player for a duration; timer bar shows remaining time.

local cfg = {}

-- equipmentType -> { label, defaultDurationSeconds }
cfg.types = {
    crutches = {
        label = "Crutches",
        defaultDurationSeconds = 600, -- 10 minutes
    },
    wheelchair = {
        label = "Wheelchair",
        defaultDurationSeconds = 300, -- 5 minutes
    },
    -- Single merged timer for all casts (shows soonest expiry)
    casts = {
        label = "Casts",
        defaultDurationSeconds = 600, -- 10 minutes
    },
}

return cfg
