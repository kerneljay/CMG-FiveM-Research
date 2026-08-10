--[[
    BEGINNER GUIDE — Forcedequipment
    ================================

    File: cmg/prod/cfg/cfg_forcedequipment.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
-- Config for NHS-forced medical equipment (crutches, casts, wheelchair, etc.)
-- Each type can be forced onto a player for a duration; timer bar shows remaining time.

local cfg = {}

-- equipmentType -> { label, defaultDurationSeconds }
cfg.types = {
    crutches = {
        label = "Crutches",
        defaultDurationSeconds = 600, -- 10 minutes
    },
    wheelchair = {
        label = "Wheelchair",
        defaultDurationSeconds = 300, -- 5 minutes
    },
    -- Single merged timer for all casts (shows soonest expiry)
    casts = {
        label = "Casts",
        defaultDurationSeconds = 600, -- 10 minutes
    },
}

return cfg
