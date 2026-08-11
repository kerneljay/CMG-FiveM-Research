--[[
    LEVEL 1 BEGINNER GUIDE — Attachments
    =========================================

    File: cmg/prod/cfg/cfg_attachments.lua
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

cfg.attachments = {
    "COMPONENT_CARBINERIFLE_CLIP_02",
    "COMPONENT_AT_AR_FLSH",
    "COMPONENT_AT_RAILCOVER_01",
    "COMPONENT_AT_SCOPE_SMALL",
    "COMPONENT_AT_SCOPE_MEDIUM",
    "COMPONENT_AT_SCOPE_MACRO",
    "COMPONENT_AT_AR_SUPP",
    "COMPONENT_SPECIALCARBINE_CLIP_01",
    "COMPONENT_ASSAULTRIFLE_CLIP_03",
    "COMPONENT_ASSAULTRIFLE_CLIP_02",
    "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02",
    "COMPONENT_PISTOL_CLIP_02",
    "COMPONENT_AT_PI_FLSH",
    "COMPONENT_AT_PI_SUPP",
    "COMPONENT_MACHINEPISTOL_CLIP_02",
    "COMPONENT_MACHINEPISTOL_CLIP_03",
    "COMPONENT_MICROSMG_CLIP_02",
    "COMPONENT_AT_AR_SUPP_02",
    "COMPONENT_COMBATPDW_CLIP_02",
    "COMPONENT_AT_AR_AFGRIP",
    "COMPONENT_COMBATPDW_CLIP_03",
    "COMPONENT_SMG_MK2_CLIP_02",
    "COMPONENT_AT_SCOPE_MEDIUM_MK2",
    "COMPONENT_PISTOL50_CLIP_02",
    "COMPONENT_SPECIALCARBINE_CLIP_02",
    "COMPONENT_COMBATPISTOL_CLIP_02",
    "COMPONENT_AKM_CLIP_02",
    "COMPONENT_HKG3_CLIP_02"
}

return cfg
