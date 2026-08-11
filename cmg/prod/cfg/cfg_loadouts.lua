--[[
    LEVEL 1 BEGINNER GUIDE — Loadouts
    ======================================

    File: cmg/prod/cfg/cfg_loadouts.lua
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

cfg.locations = {
    {type = "police", position = vector3(455.29983520508,-979.24853515625,30.689472198486)},
    {type = "police", position = vector3(1842.6362304688,3692.6823730469,34.266929626465)},
    {type = "police", position = vector3(-448.65646362305,6018.0122070312,31.716371536255)},
    {type = "police", position = vector3(-1105.5646972656,-826.79064941406,14.282796859741)},
    {type = "police", position = vector3(1540.9864501953,798.62731933594,78.693008422852)},
    {type = "hmp", position = vector3(1767.8118896484,2591.3591308594,46.000938415527)},
    {type = "vigilante", position = vector3(380.48663330078,799.42724609375,190.4905090332)},
    {type = "vigilante", position = vector3(-821.43450927734,5389.6254882812,35.865249633789)},
    {type = "vipisland", position = vector3(-2147.6516113281,5195.7778320312,15.71883392334)},
}

cfg.types = {
    ["police"] = {
        permission = "police.onduty.permission",
        marketTypes = {"police"},
        gunstoreTypes = {"policeSmallArms", "policeLargeArms"}
    },
    ["hmp"] = {
        permission = "prisonguard.onduty.permission",
        marketTypes = {"hmp"},
        gunstoreTypes = {"prisonArmoury"}
    },
    ["vigilante"] = {
        permission = "vigilante.onduty.permission",
        marketTypes = {"vigilante"},
        gunstoreTypes = {"Vigilante"}
    },
    ["vipisland"] = {
        permission = "cmgplatinum.whitelisted",
        marketTypes = {"vipisland"},
        gunstoreTypes = {"VIP"}
    }
}

return cfg
