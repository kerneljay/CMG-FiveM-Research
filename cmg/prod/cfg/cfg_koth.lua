--[[
    BEGINNER GUIDE — Koth
    =====================

    File: cmg/prod/cfg/cfg_koth.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type KothConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.locations = {
    ["HeroinGreen"] = {
        name = "Heroin Redzone",
        position = vector3(3589.1616210938,3718.4172363281,36.382331848145),
        radius = 15.0,
    },
    ["NorthLSDBuilding"] = {
        name = "North LSD",
        position = vector3(1294.4708251953,4334.6684570312,38.655517578125),
        radius = 15.0,
    },
    ["LargeArmsDeck"] = {
        name = "Paleto Large Arms",
        position = vector3(-1147.107421875,4912.4150390625,220.69471740723),
        radius = 15.0,
    },
    ["SouthLSDSign"] = {
        name = "South LSD",
        position = vector3(2492.2138671875,-383.88052368164,93.864250183105),
        radius = 15.0,
    },
    ["BlackMarket"] = {
        name = "Black Market",
        position = vector3(-427.29205322266,1117.4212646484,326.76974487305),
        radius = 15.0,
    }
}

cfg.captureTimeMsec = 450000

cfg.lootWeapons = {
    {
        type = "sniper",
        isSubType = true,
        minAmount = 3,
        maxAmount = 3,
    },
    {
        type = "AR",
        isSubType = false,
        minAmount = 3,
        maxAmount = 3,
    },
    {
        type = "SMG",
        isSubType = false,
        minAmount = 3,
        maxAmount = 3,
    },
}

cfg.lootItems = {
    {
        itemId = "bankheists_diamonds",
        minAmount = 4,
        maxAmount = 6,
    },
}

return cfg