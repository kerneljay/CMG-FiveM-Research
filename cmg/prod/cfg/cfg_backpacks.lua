--[[
    LEVEL 1 BEGINNER GUIDE — Backpacks
    =======================================

    File: cmg/prod/cfg/cfg_backpacks.lua
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

---Each backpack row: { componentId, collectionName, localIndex, textureIndex, price, weightKg }.
---Applied with SetPedCollectionComponentVariation (see cl_backpacks.lua). collectionName "" follows ped_cfg convention for base drawables.
---Tune localIndex / collectionName to match your streamed packs; Very Light through Black Hiking use pack4 indices 4–9; Para uses base drawable; any remaining JD rows tune as needed.
cfg.stores = {
	["JDSports"] = {
		_config = {130.56843566895,-1034.9497070313,28.555471420288,676,1,"JD Sports Bags","",true},
		["Large Hiking Backpack (+40kg)"] = {5, "mp_m_cmg_clothing_pack4", 5, 0, 120000, 40},
		["Black Hiking Backpack (+40kg)"] = {5, "mp_m_cmg_clothing_pack4", 9, 0, 120000, 40},
		["Light Bag (+20kg)"] = {5, "mp_m_cmg_clothing_pack4", 7, 0, 60000, 20},
		["Very Light Bag (+15kg)"] = {5, "mp_m_cmg_clothing_pack4", 4, 0, 40000, 15},
		["Rearwall Bag (+30kg)"] = {5, "mp_m_cmg_clothing_pack4", 6, 0, 80000, 30},
		["Hunting Backpack (+35kg)"] = {5, "mp_m_cmg_clothing_pack4", 8, 0, 100000, 35},
	},
	["Rebel"] = {
		_config = {1540.7928466797,6332.4702148438,23.071977615356,676,1,"Rebel Backpacks","rebellicense.whitelisted",true},
		["Rebel Backpack (+70kg)"] = {5, "Male_Heist", 1, 0, 250000, 70},
	},
	--?Don't add a second rebel, causes backpack dupe.
}

return cfg
