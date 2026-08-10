--[[
    BEGINNER GUIDE — Groupselector
    ==============================

    File: cmg/prod/cfg/cfg_groupselector.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Config/data used:
      * cfg/cfg_factiongroups
      * cfg/cfg_business
      * cfg/cfg_vigilante

    Example player-facing text in this file:
      * Job Selector
      * Casino Jobs
      * Vigilante Jobs

]]
local cfg = {}
local groupCfg = CMG.loadModule("cfg/cfg_factiongroups")
local businessCfg = CMG.loadModule("cfg/cfg_business")
local vigilanteCfg = CMG.loadModule("cfg/cfg_vigilante") ---@type VigilanteConfig

cfg.selectorTypes = {
    ["default"] = {
        _config = {name="Job Selector", blipid = 351, blipcolor = 47, permissions = {}, TextureDictionary = "cmg_jobselectorui",texture = "jobcentre"},
        jobs = {
            {"Trucking", 0, nil, "Become a trucker and earn money by delivering heavy goods across the map. Earn more as your level up! Try legal or if you want more risk, illegal trucking routes."},
            {"Pilot", 0, "air.whitelisted", "Take to the skies and earn money by flying commerical airlines, delivering passengers across Los Santos, start small and as you level up access more and more planes!"},
            {"Trapper", 0, nil, "Run your own illegal trapping operation, buy a drug den, grow and cook drugs inside your warehouse, then find customers and start selling on the streets. Level up your cook and runner level to unlocck new recipes and better payouts. A minimum of £2mil in funds is needed to setup your operation."},
            {"Trainee Paramedic", 0, nil, "Join the CMG Health Service as a paramedic and respond to emergency calls across the city, earn money by treating patients and transporting them to hospital. Level up your paramedic rank to earn moree and access new vehicles and equipment."},
            {"Garbage", 0, nil, "Clean up the streets of CMG and get paid for it."},
            {"Mechanic", 0, nil, "Respond to /mechanic calls, or complete mechanic jobs across the map to earn money"},


            --LEGACY--
            -- {"Scuba Diver", 0},
            -- {"Farmer", 0},
            -- {"Postal Service", 0},
            -- {"Bus Driver", 0},
            -- {"Food Delivery", 0},
            -- {"Fisherman", 0},
            -- {"Cash Driver", 0},
            -- {"Taco Seller", 0},
        }
    },
    ["trucking"] = {
        _config = {name="Job Selector", blipid = 351, blipcolor = 47, permissions = {}, TextureDictionary = "cmg_jobselectorui",texture = "jobcentre"},
        jobs = {
            {"Trucking", 0, nil, "Become a trucker and earn money by delivering heavy goods across the map. Earn more as your level up! Try legal or if you want more risk, illegal trucking routes."},
        }
    },
    ["garbage"] = {
        _config = {name="Job Selector", blipid = 351, blipcolor = 47, permissions = {}, TextureDictionary = "cmg_jobselectorui",texture = "jobcentre"},
        jobs = {
            {"Garbage", 0, nil, "Truck, bins, pay per bag. Bring the truck back to the depot when you are finished."},
        }
    },
    ["pilot"] = {
        _config = {name="Job Selector", blipid = 351, blipcolor = 47, permissions = {}, TextureDictionary = "cmg_jobselectorui",texture = "jobcentre"},
        jobs = {
            {"Pilot", 0, "air.whitelisted", "Take to the skies and earn money by flying commerical airlines, delivering passengers across Los Santos, start small and as you level up access more and more planes!"},
        }
    },

    ["casino"] = {
        _config = {name="Casino Jobs", blipid = 351, blipcolor = 47, permissions = {"casino.whitelisted"},TextureDictionary = "cmg_jobselectorui", texture = "casinosecurity"},
        jobs = groupCfg.casinoRanks
    },
    ["police"] = {
        _config = {name="Met Police", blipid = 351, blipcolor = 38, permissions = {"cop.whitelisted"},TextureDictionary = "cmg_jobselectorui", texture = "metpd"},
        jobs = groupCfg.metPoliceRanks
    },
    ["nhs"] = {
        _config = {name="NHS Job", blipid = 351, blipcolor = 3, permissions = {}, TextureDictionary = "cmg_jobselectorui", texture = "nhs"},
        jobs = table.join(groupCfg.paramedicRanks, groupCfg.doctorRanks)
    },
    ["lfb"] = {
        _config = {name="LFB Job", blipid = 351, blipcolor = 1, permissions = {"lfb.whitelisted"}, TextureDictionary = "cmg_jobselectorui", texture = "lfb"},
        jobs = groupCfg.lfbRanks
    },
    ["hmp"] = {
        _config = {name="Prison Guard", blipid = 351, blipcolor = 1, permissions = {"prisonguard.whitelisted"}, TextureDictionary = "cmg_prisonui", texture = "cmg_prisonui"},
        jobs = groupCfg.hmpRanks
    },
    ["borderforce"] = {
        _config = {name="Border Force", blipid = 351, blipcolor = 1, permissions = {"borderforce.whitelisted"}, TextureDictionary = "cmg_jobselectorui", texture = "metpd"},
        jobs = groupCfg.borderForceRanks
    },
    ["vigilante"] = {
        _config = {name="Vigilante Jobs", blipid = 351, blipcolor = 47, permissions = {"vigilante.whitelisted"}, TextureDictionary = "cmg_jobselectorui", texture = "jobcentre"},
        jobs = {
            {"Vigilante", 0},
        }
    }
}

cfg.selectors = {
    --police
    {type="police", position=vector3(447.35137939453, -975.57592773438, 30.689584732056)}, -- mission row
    {type="police", position=vector3(1850.9689941406, 3690.8791503906,34.267063140869)}, -- sandy pd
    {type="police", position=vector3(-449.63262939453, 6010.1459960938,31.716451644897)}, -- paleto pd
    {type="police", position=vector3(-1099.4694824219,-840.96234130859,19.001483917236)}, -- vespucci pd
    {type="police", position=vector3(1559.6597900391,822.55822753906,78.693092346191)}, -- rpu

    --nhs
    {type="nhs", position=vector3(1836.0842285156, 3683.5278320313, 34.270088195801)},-- sandy medical centre
    {type="nhs", position=vector3(-252.83834838867,  6336.576171875, 32.427227020264)},-- paleto hospital
    {type="nhs", position=vector3(-431.54739379883,-324.6780090332,34.910751342773)},-- mount zonah hospital
    {type="nhs", position=vector3(316.58380126953,-569.70257568359,75.725074768066)},-- pill box hospital

    --lfb
    {type="lfb", position=vector3(1122.801392, -909.730408, 51.271393)},-- main station (city)

    --hmp
    {type="hmp", position=vector3(1834.5617675781,2576.9128417969,45.890640258789)},-- prison

    -- {type="borderforce", position=vector3(1315.1214599609,605.78656005859,80.330574035645)},-- casino
    -- {type="borderforce", position=vector3(-2433.8962402344,-236.20890808105,16.407285690308)},-- beach
    -- {type="borderforce", position=vector3(2434.0183105469,-190.06011962891,87.556098937988)},-- fbi

    --casino
    {type="casino", position=vector3(930.16021728516,9.7531671524048,81.106109619141)},-- Diamond Casino

    --default
    {type="default", position=vector3(-564.58660888672,-190.19589233398,38.219608306885)},-- city hall

    {type="trucking", position=vector3(866.10095214844,-3190.1447753906,6.1460614204407)},-- trucking
    {type="trucking", position=vector3(121.87888336182,-3190.57421875,5.9829926490784)},-- trucking
    {type="garbage", position=vector3(-332.75042724609,-1540.5070800781,27.731033325195)},-- garbage depot clock-on
    {type="pilot", position=vector3(-984.64733886719,-2941.6013183594,13.945066452026)},-- pilot

}

for businessName, locationInfo in pairs(businessCfg.locations) do
    local jobs = {}
    for _, jobInfo in pairs(locationInfo.jobs) do
        table.insert(jobs, {jobInfo.group, jobInfo.paycheck})
    end
    cfg.selectorTypes[businessName] = {
        _config = {name = businessName, blipid = 351, blipcolor = 1, permissions = {businessName .. ".permission"}, TextureDictionary = "cmg_jobselectorui", texture = "lfb"},
        jobs = jobs
    }
    table.insert(cfg.selectors,{type = businessName, position = locationInfo.jobMarker} )
end

for _, baseDef in pairs(vigilanteCfg.bases) do
    table.insert(cfg.selectors,{type = "vigilante", position = baseDef.groupSelectorLocation})
end

return cfg
