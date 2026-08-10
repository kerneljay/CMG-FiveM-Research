--[[
    BEGINNER GUIDE — Inventory
    ==========================

    File: cmg/prod/cfg/cfg_inventory.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

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