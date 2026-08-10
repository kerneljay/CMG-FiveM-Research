--[[
    BEGINNER GUIDE — Paintball
    ==========================

    File: cmg/prod/cfg/cfg_paintball.lua
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

cfg.arenas = {}

cfg.teamConfigs = {
    ["red"] = {
        markerColour = {255,10,0},
        textFormatColour = "~r~",
        modelHash = `ig_claypain`,
        blipColour = 1
    },
    ["blue"] = {
        markerColour = {0,50,255},
        textFormatColour = "~b~",
        modelHash = `a_m_m_soucent_03`,
        blipColour = 3
    }
}

return cfg