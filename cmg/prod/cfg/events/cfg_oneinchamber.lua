--[[
    BEGINNER GUIDE — Oneinchamber
    =============================

    File: cmg/prod/cfg/events/cfg_oneinchamber.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type OneInChamberConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.minigameName = "One In The Chamber"
cfg.minigameDescription = "Be given a bullet and kill another player"

cfg.minPlayers = 5
cfg.winPayout = 500000

cfg.delayBetweenGunMsec = 10000
cfg.startCountdownMsec = 5000
cfg.pistolWeaponId = "WEAPON_PYTHONCMG"

cfg.locations = {
    ["One In The Chamber"] = {
        spawnpoints = {
            vector4(2902.3515625, -3800.4790039062, 128.10400390625, 87.874015808105),
            vector4(2900.9143066406, -3791.0373535156, 128.15454101562, 99.212593078613),
            vector4(2896.7341308594, -3779.4592285156, 127.73327636719, 116.22047424316),
            vector4(2889.1779785156, -3768.5407714844, 128.0029296875, 107.71653747559),
            vector4(2876.1889648438, -3758.28125, 127.68273925781, 121.88976287842),
            vector4(2857.1472167969, -3752.8747558594, 127.80078125, 150.23622131348),
            vector4(2838.6330566406, -3750.6198730469, 127.88500976562, 172.91339111328),
            vector4(2817.8505859375, -3751.1604003906, 128.10400390625, 172.91339111328),
            vector4(2802.4877929688, -3749.7099609375, 128.23876953125, 172.91339111328),
            vector4(2789.4196777344, -3750.3823242188, 128.22192382812, 167.24407958984),
            vector4(2773.2131347656, -3751.8857421875, 127.91870117188, 153.07086181641),
            vector4(2753.947265625, -3753.5078125, 127.96923828125, 223.93701171875),
            vector4(2734.5891113281, -3760.4306640625, 127.81762695312, 198.42520141602),
            vector4(2720.9670410156, -3771.0988769531, 127.71643066406, 232.44094848633),
            vector4(2712.4350585938, -3789.5737304688, 127.80078125, 252.28346252441),
            vector4(2709.560546875, -3808.3647460938, 127.90185546875, 255.11810302734),
            vector4(2715.6923828125, -3825.2043457031, 127.8681640625, 283.4645690918),
            vector4(2727.982421875, -3838.9714355469, 127.83447265625, 297.63778686523),
            vector4(2743.1472167969, -3846.263671875, 127.78393554688, 331.65353393555),
            vector4(2766.6462402344, -3848.6638183594, 127.935546875, 22.677164077759),
            vector4(2796.8571777344, -3849.560546875, 128.22192382812, 357.16534423828),
            vector4(2820.0131835938, -3847.8857421875, 128.03662109375, 0.0),
            vector4(2843.2087402344, -3846.052734375, 127.83447265625, 340.15747070312),
            vector4(2864.9802246094, -3837.5341796875, 127.58166503906, 8.5039367675781),
            vector4(2876.7824707031, -3824.0307617188, 127.59851074219, 59.52755355835),
        },
        bounds = {
            min = vector3(3085.6791992188,-4001.7905273438,39.720539093018),
            max = vector3(2395.5151367188,-3559.0734863281,293.36614990234)
        }
    }
}

return cfg