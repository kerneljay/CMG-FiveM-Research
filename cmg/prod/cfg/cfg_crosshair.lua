--[[
    BEGINNER GUIDE — Crosshair
    ==========================

    File: cmg/prod/cfg/cfg_crosshair.lua
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

cfg.options = {
    -- 1 == disabled, 2 == enabled
    enabled = 0,
    centerDotEnabled = 1,
    visibility = 1,

    -- crosshair configuration
    length = {
        index = 1,
        value = 0.002
    },
    thickness = {
        index = 1,
        value = 0.001
    },
    gap = {
        index = 1,
        value = 0.0
    },
    colour = {
        red = 255,
        green = 255,
        blue = 255,
    }

}

cfg.menu = {
    length = {
        labels = {}
    },
    thickness = {
        labels = {}
    },
    gap = {
        labels = {}
    }
}

return cfg
