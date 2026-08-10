--[[
    BEGINNER GUIDE — Spawn
    ======================

    File: cmg/prod/cfg/cfg_spawn.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * Mission Row Police Station

]]
local cfg = {}

cfg.spawnLocations = {
    ["Los Santos Border"] = {
        name = "Los Santos Border",
        coords = vector3(1313.3669433594,604.28063964844,80.330574035645),
        permission = {"borderforce.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/missionrowpd.png",
        price = 0
    },
    ["Olympic Border"] = {
        name = "Olympic Border",
        coords = vector3(2433.13671875,-191.58694458008,87.485214233398),
        permission = {"borderforce.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/missionrowpd.png",
        price = 0
    },
    ["Great Ocean Border"] = {
        name = "Great Ocean Border",
        coords = vector3(-2432.0615234375,-237.22584533691,16.348287582397),
        permission = {"borderforce.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/missionrowpd.png",
        price = 0
    },
    ["Mission Row Police Station"] = {
        name = "Mission Row Police Station",
        coords = vector3(465.44177246094,-1007.3934326172,32.98681640625),
        permission = {"police.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/missionrowpd.png",
        price = 0
    },
    ["Sandy Shores Police Station"] = {
        name = "Sandy Shores Police Station",
        coords = vector3(1853.52734375,3686.9440917969,34.286659240723),
        permission = {"police.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandypd.png",
        price = 0
    },
    ["Paleto Police Station"] = {
        name = "Paleto Police Station",
        coords = vector3(-441.43273925781,6018.3095703125,31.576251983643),
        permission = {"police.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletopd.png",
        price = 0
    },
    ["Vespucci Police Station"] = {
        name = "Vespucci Police Station",
        coords = vector3(-1102.1322021484,-840.05621337891,19.001459121704),
        permission = {"police.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccipd.png",
        price = 0
    },
    ["RPU Police Station"] = {
        name = "RPU Police Station",
        coords = vector3(1552.3885498047,824.07373046875,78.693199157715),
        permission = {"police.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/missionrowpd.png",
        price = 0
    },
    ["LFB Fire Station"] = {
        name = "LFB Fire Station",
        coords = vector3(1135.884155, -909.633240, 51.145695),
        permission = {"lfb.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lfb.png",
        price = 0
    },
    ["VIP Island"] = {
        name = "VIP Island",
        coords = vector3(-2168.3569335938,5137.6884765625,2.8299977779388),
        permission = {"vip.island"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vipisland.png",
        price = 0
    },
    ["Rebel Diner"] = {
        name = "Rebel Diner",
        coords = vector3(1688.0181884766,6420.9545898438,32.465755462646),
        permission = {"rebellicense.whitelisted"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/rebeldiner.png",
        price = 0
    },
    ["HMP Belmarsh"] = {
        name = "HMP Belmarsh",
        coords = vector3(1786.5109863281,2544.7202148438,45.797916412354),
        permission = {"prisonguard.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/hmpbelmarsh.png",
        price = 0
    },
    ["St Thomas Hospital"] = {
        name = "St Thomas Hospital",
        coords = vector3(363.48422241211,-591.30035400391,28.679122924805),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/stthomas.png",
        price = 0
    },
    ["Royal London Hospital"] = {
        name = "Royal London Hospital",
        coords = vector3(337.48727416992,-1393.4056396484,32.509284973145),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/royallondon.png",
        price = 0
    },
    ["Sandy Shores Medical Centre"] = {
        name = "Sandy Shores Medical Centre",
        coords = vector3(1842.0667724609,3669.3212890625,33.679866790771),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandymedical.png",
        price = 0
    },
    ["Paleto Medical Centre"] = {
        name = "Paleto Medical Centre",
        coords = vector3(-244.62612915039,6328.8041992188,32.426197052002),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletomedical.png",
        price = 0
    },
    ["Cayo Perico Airport"] = {
        name = "Cayo Perico Airport",
        coords = vector3(4510.021484375,-4513.7797851562,4.0945315361023),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cayoperico.png",
        price = 0
    },
    ["Vigilante North"] = {
        name = "Vigilante North",
        coords = vector3(-814.40313720703,5394.388671875,35.865253448486),
        permission = {"vigilante.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/upld/images/rSfDSjoy51xiaJX.jpg",
        price = 0
    },
    ["Vigilante South"] = {
        name = "Vigilante South",
        coords = vector3(385.87692260742,798.25018310547,187.46136474609),
        permission = {"vigilante.onduty.permission"},
        image = "https://cdn.cmgstudios.net/content/upld/images/aGG5ksHPFk6pGyo.jpg",
        price = 0
    },
    ["Heathrow"] = {
        name = "Heathrow",
        coords = vector3(-944.84881591797,-2958.2016601562,13.938044548035),
        permission = {"pilot.miner"},
        image = "https://cdn.cmgstudios.net/content/upld/images/62eEtnxymZp8vZ5.jpg",
        price = 0
    },
    ["Mount Zonah"] = {
        name = "Mount Zonah",
        coords = vector3(-449.67810058594,-340.63766479492,34.501728057861),
        permission = {},
        image = "https://cdn.cmgstudios.net/content/upld/images/VvjwuODxvlvfChz.jpg",
        price = 0
    },
    ["Black Lotus"] = {
        name = "Black Lotus",
        coords = vector3(-1516.5206298828,852.74829101562,181.59497070312),
        permission = {"gang.blacklotus.whitelist"},
        image = "https://cdn.cmgstudios.net/content/fivem/houses/Marlowe%20Resort.png",
        price = 0
    },
}

return cfg