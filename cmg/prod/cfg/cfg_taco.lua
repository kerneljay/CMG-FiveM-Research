--[[
    BEGINNER GUIDE — Taco
    =====================

    File: cmg/prod/cfg/cfg_taco.lua
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

cfg.boxPickup = vector3(-1552.57,-440.15,39.53)
cfg.boxHash = `hei_prop_heist_box`
cfg.tacosPerBox = {3, 10}
cfg.tacoPrice = {15000, 25000}
cfg.maxStockOfTacos = 100

return cfg