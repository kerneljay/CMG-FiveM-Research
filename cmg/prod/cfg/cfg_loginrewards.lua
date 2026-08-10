--[[
    BEGINNER GUIDE — Loginrewards
    =============================

    File: cmg/prod/cfg/cfg_loginrewards.lua
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
