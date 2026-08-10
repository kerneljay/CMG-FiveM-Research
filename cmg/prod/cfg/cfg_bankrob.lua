--[[
    BEGINNER GUIDE — Bankrob
    ========================

    File: cmg/prod/cfg/cfg_bankrob.lua
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

cfg.locations = {
    {
        name = "NatWest (Alta)",
        safes = {
            {
                position = vector3(310.70,-286.80,54.14),
                animPosition = vector4(311.61,-287.09,54.14,68.98)
            },
            {
                position = vector3(312.50,-289.59,54.14),
                animPosition = vector4(312.75,-288.71,54.14,159.08)
            },
            {
                position = vector3(315.26,-288.29,54.14),
                animPosition = vector4(314.47,-288.13,54.14,253.56)
            },
            {
                position = vector3(314.25,-282.97,54.14),
                animPosition = vector4(314.47,-288.13,54.14,253.56)
            },
            {
                position = vector3(315.86,-285.01,54.14),
                animPosition = vector4(315.11,-284.78,54.14,248.85)
            }
        },
        doors = {
            {
                type = "vault",
                position = vector3(312.36,-282.73,54.3),
                model = `v_ilev_gb_vauldr`,
                closedHeading = 249.86,
                openHeading = 160.0,
                uiPosition = vector3(311.30740356445,-284.40954589844,54.161720275879)
            },
            {
                type = "terminal",
                position = vector3(314.62,-285.99,54.46),
                model = `v_ilev_gb_vaubar`,
                uiPosition = vector3(312.98440551758,-284.51211547852,54.141693115234)
            },
        }
    },
    {
        name = "NatWest (Paleto)",
        safes = {
            {
                position = vector3(-102.59,6475.23,31.62),
                animPosition = vector4(-103.16,6475.82,31.65,220.24)
            },
            {
                position = vector3(-103.08,6478.67,31.62),
                animPosition = vector4(-103.67,6478.08,31.62,318.58)
            },
            {
                position = vector3(-106.88,6478.35,31.62),
                animPosition = vector4(-106.21,6477.68,31.62,43.00)
            },
            {
                position = vector3(-107.31,6473.15,31.62),
                animPosition = vector4(-106.80,6473.85,31.62,137.65)
            },
            {
                position = vector3(-107.99,6475.83,31.62),
                animPosition = vector4(-107.32,6475.31,31.62,48.86)
            }
        },
        doors = {
            {
                type = "vault",
                position = vector3(-104.6,6473.44,31.8),
                model = 0xB95B3251,
                closedHeading = 47.5,
                openHeading = 160.0,
                uiPosition = vector3(-105.51541900635,6471.6748046875,31.626712799072)
            },
            {
                type = "terminal",
                position = vector3(-105.81,6475.62,31.63),
                model = 0x4E09DC50,
                uiPosition = vector3(-105.8791885376,6474.76171875,31.62671661377)
            },
        }
    },
    {
        name = "NatWest (Great Ocean)",
        safes = {
            {
                position = vector3(-2954.138,481.9888,15.6753),
                animPosition = vector4(-2954.136,482.8257,15.67532,174.28)
            },
            {
                position = vector3(-2952.124,484.4436,15.67539),
                animPosition = vector4(-2952.935,484.3697,15.67539,263.67)
            },
            {
                position = vector3(-2954.121,486.7845,15.67542),
                animPosition = vector4(-2954.104,485.9754,15.6754,355.06)
            },
            {
                position = vector3(-2958.85,484.0662,15.6753),
                animPosition = vector4(-2958.034,484.128,15.6753,89.17)
            },
            {
                position = vector3(-2957.4,486.2582,15.67534),
                animPosition = vector4(-2957.432,485.405,15.67534,354.07)
            }
        },
        doors = {
            {
                type = "vault",
                position = vector3(-2958.54,482.27,15.84),
                model = 0x7E6CAA3B,
                closedHeading = 356.0,
                openHeading = 260.0,
                uiPosition = vector3(-2956.6618652344,481.56982421875,15.697065353394)
            },
            {
                type = "terminal",
                position = vector3(-2956.12,485.42,16.00),
                model = 0xA12B3433,
                uiPosition = vector3(-2956.9953613281,483.49356079102,15.675288200378)
            },
        }
    },
    {
        name = "NatWest (Grand Senora)",
        safes = {
            {
                position = vector3(1175.63,2715.20,38.06),
                animPosition = vector4(1174.72,2715.25,38.06,266.26)
            },
            {
                position = vector3(1173.12,2717.20,38.06),
                animPosition = vector4(1173.09,2716.30,38.06,356.55)
            },
            {
                position = vector3(1170.81,2715.17,38.06),
                animPosition = vector4(1171.68,2715.19,38.06,87.71)
            },
            {
                position = vector3(1173.77,2710.36,38.06),
                animPosition = vector4(1173.77,2711.24,38.06,180.11)
            },
            {
                position = vector3(1171.36,2711.88,38.06),
                animPosition = vector4(1172.23,2711.84,38.06,88.92)
            }
        },
        doors = {
            {
                type = "vault",
                position = vector3(1175.54,2710.86,38.23),
                model = 0x7E6CAA3B,
                closedHeading = 90.0,
                openHeading = 356.0,
                uiPosition = vector3(1176.2109375,2712.7517089844,38.075439453125)
            },
            {
                type = "terminal",
                position = vector3(1172.29,2713.15,38.39),
                model = 0xA12B3433,
                uiPosition = vector3(1174.3121337891,2712.3427734375,38.05859375)
            },
        }
    },
}

cfg.payoutItems = {
    "bankheists_cash",
    "bankheists_gold",
    "bankheists_diamonds"
}

-- These prices are tied to those of the bank heist, to reduce the total reward just reduce the amount of items it gives
cfg.payoutNumItems = {
    ["bankheists_cash"] = {min = 4, max = 5},      -- Was 1-5, now 4-8 (£571k-£1.14M per safe)
    ["bankheists_gold"] = {min = 3, max = 4},       -- Was 1-4, now 3-6 (£857k-£1.71M per safe)
    ["bankheists_diamonds"] = {min = 2, max = 3},   -- Was 1-2, now 2-4 (£1M-£2M per safe)
}

cfg.delayBetweenSafeLoots = 60000

for locationIndex, locationInfo in pairs(cfg.locations) do
    for safeIndex, safeInfo in pairs(locationInfo.safes) do
        safeInfo.index = safeIndex
    end
    for doorIndex, doorInfo in pairs(locationInfo.doors) do
        doorInfo.index = doorIndex
    end
    locationInfo.index = locationIndex
end

return cfg