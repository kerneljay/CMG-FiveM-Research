--[[
    BEGINNER GUIDE — Bloodmoney
    ===========================

    File: cmg/prod/cfg/cfg_bloodmoney.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type BloodMoneyConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.randomPayouts = {
    250000,
    500000,
}

cfg.startTime = {
    hour = 17,
    minute = 0,
}

cfg.durationMsec = 600000

return cfg