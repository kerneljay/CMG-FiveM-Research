--[[
    LEVEL 1 BEGINNER GUIDE — Inventory
    =======================================

    File: cmg/prod/cfg/cfg_inventory.lua
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
---@type InventoryConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.ammoItems = {
    ["p12guage"] = true,
    ["p5.56"] = true,
    ["p7.62"] = true,
    ["p9mm"] = true,
    ["p.308"] = true,
    ["7.62"] = true,
    ["5.56"] = true,
    ["12guage"] = true,
    ["9mm"] = true,
    [".357"] = true,
    [".45ACP"] = true,
    [".308"] = true,
    ["plastic"] = true,
    ["firework"] = true,
    ["flare"] = true,
    ["hominglauncher"] = true,
}

cfg.moneyItems = {
    ["dirtycash"] = true,
}

cfg.itemToModel = {
    ["weed"] = `h4_prop_h4_weed_bud_02b`,
    ["cocaine"] = `bkr_prop_coke_cut_02`,
    ["meth"] = `bkr_prop_meth_openbag_01a_frag_`,
    ["heroin"] = `h4_prop_h4_coke_spoon_01`,
    ["lsd"] = `ex_office_swag_pills1`,
    ["armour_plate"] = `prop_armour_pickup`,
}

return cfg
