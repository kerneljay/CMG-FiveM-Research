--[[
    BEGINNER GUIDE — Backpacks
    ==========================

    File: cmg/prod/cfg/cfg_backpacks.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

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
