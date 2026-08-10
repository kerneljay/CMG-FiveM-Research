--[[
    BEGINNER GUIDE — Licenseplate
    =============================

    File: cmg/prod/cfg/cfg_licenseplate.lua
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

cfg.licenseChangerCoords = vector3(-585.30694580078,-209.07438659668,38.2197265625)

return cfg