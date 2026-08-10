--[[
    BEGINNER GUIDE — Radios
    =======================

    File: cmg/prod/cfg/cfg_radios.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * Pilot Job

]]
---@type RadioConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.standardChannels = {
    ["Casino"] = {
        permissions = {
            "casino.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Trucking"] = {
        permissions = {
            "lorry.whitelisted",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Pilot Job"] = {
        permissions = {
            "pilot.miner",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Mechanics"] = {
        permissions = {
            "aa.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Stationary"] = {
        permissions = {
            "police.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true,
    },
    ["Police 1"] = {
        permissions = {
            "police.onduty.permission",
            "nhs.onduty.permission",
            "prisonguard.onduty.permission",
            "lfb.onduty.permission",
            "borderforce.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = false,
        switchGroup = "police"
    },
    ["Police 2"] = {
        permissions = {
            "police.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = false,
        switchGroup = "police"
    },
    ["Police 3"] = {
        permissions = {
            "police.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = false,
        switchGroup = "police"
    },
    ["Health Service"] = {
        permissions = {
            "nhs.onduty.permission",
            "lfb.onduty.permission",
            "police.onduty.permission",
            "prisonguard.onduty.permission",
            "borderforce.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Prison Service 1"] = {
        permissions = {
            "prisonguard.onduty.permission",
            "nhs.onduty.permission",
            "police.onduty.permission",
            "lfb.onduty.permission",
            "borderforce.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true,
        switchGroup = "hmp",
    },
    ["Prison Service 2"] = {
        permissions = {
            "prisonguard.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = false,
        switchGroup = "hmp",
    },
    ["Liaison"] = {
        permissions = {
            "prisonguard.onduty.permission",
            "nhs.onduty.permission",
            "police.onduty.permission",
            "lfb.onduty.permission",
            "borderforce.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true,
    },
    ["LFB"] = {
        permissions = {
            "lfb.onduty.permission",
            -- "nhs.onduty.permission",
            -- "police.onduty.permission",
            -- "prisonguard.onduty.permission",
            -- "borderforce.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Border Force"] = {
        permissions = {
            "borderforce.onduty.permission",
            -- "lfb.onduty.permission",
            -- "nhs.onduty.permission",
            -- "police.onduty.permission",
            -- "prisonguard.onduty.permission",
        },
        deleteWhenEmpty = false,
        isDefault = true
    },
    ["Staff"] = {
        permissions = {
            "admin.tickets",
        },
        noRadioItemRequired = true,
        deleteWhenEmpty = false,
        isDefault = true,
    },
}

cfg.checkChannelPermissionGroups = {
    ["police"] = true,
    ["nhs"] = true,
    ["prisonguard"] = true,
    ["lfb"] = true,
    ["borderforce"] = true,
    ["casino"] = true,
    ["trucking"] = true,
    ["aa"] = true,
    ["pilotjob"] = true,
}

cfg.sortOrder = {
    ["police"] = {
        "police.commissioner",
        "police.deputycommissioner",
        "police.assistantcommissioner",
        "police.deputyassistantcommissioner",
        "police.commander",
        "police.advisor",
        "police.chiefsuperintendent",
        "police.superintendent",
        "police.specialconstable",
        "police.chiefinspector",
        "police.inspector",
        "police.sergeant",
        "police.constable",
        "police.pcso"
    },
    ["nhs"] = {
        "nhs.headchief",
        "nhs.assistantchief",
        "nhs.deputychief",
        "nhs.clinicallead",
        "nhs.consultant",
        "nhs.specialist",
        "nhs.seniordoctor",
        "nhs.doctor",
        "nhs.juniordoctor",
        "nhs.criticalcare",
        "nhs.advancedparamedic",
        "nhs.seniorparamedic",
        "nhs.paramedic",
        "nhs.traineeparamedic"
    },
    ["prisonguard"] = {
        "hmp.governor",
        "hmp.deputygovernor",
        "hmp.divisionalcommander",
        "hmp.custodialsupervisor",
        "hmp.custodialofficer",
        "hmp.advisor",
        "hmp.honourableguard",
        "hmp.supervisingofficer",
        "hmp.principalofficer",
        "hmp.specialistofficer",
        "hmp.seniorofficer",
        "hmp.prisonofficer",
        "hmp.traineeprisonofficer"
    },
    ["lfb"] = {
        "lfb.chieffirecommand",
        "lfb.deputychieffireofficer",
        "lfb.assistantchieffireofficer",
        "lfb.firecommandadvisor",
        "lfb.honaryfirefighter",
        "lfb.divisionalofficer",
        "lfb.divisionalcommand",
        "lfb.sectorcommand",
        "lfb.leadingfirefighter",
        "lfb.specialistfirefighter",
        "lfb.advancedfirefighter",
        "lfb.seniorfirefighter",
        "lfb.firefighter",
        "lfb.juniorfirefighter",
        "lfb.provisionalfirefighter"
    },
    ["borderforce"] = {
        "borderforce.directorgeneral",
        "borderforce.regionaldirector",
        "borderforce.assistantdirector",
        "borderforce.advisor",
        "borderforce.specialofficer",
        "borderforce.hminspector",
        "borderforce.chiefimmigrationofficer",
        "borderforce.seniorimmigrationofficer",
        "borderforce.higherimmigrationofficer",
        "borderforce.immigrationofficer",
        "borderforce.assistantimmigrationofficer",
        "borderforce.administrativeassistant"
    }
}

cfg.gangSortOrder = {
    "leader",
    "security",
    "manageperms",
    "kickmember"
}

cfg.advancedEffects = {
    ["freq_low"] = 389.0,
    ["freq_hi"] = 3248.0,
    ["fudge"] = 0.0,
    ["rm_mod_freq"] = 0.0,
    ["rm_mix"] = 0.16,
    ["o_freq_lo"] = 348.0,
    ["o_freq_hi"] = 4900.0
}

cfg.microphones = {
    -- Left Court Room
    {vector3(-568.11126708984,-220.98115539551,36.719696044922), 22.5},
    {vector3(-569.00018310547,-217.39952087402,37.469623565674), 22.5},
    {vector3(-570.65643310547,-218.33804321289,37.469627380371), 22.5},
    {vector3(-571.42504882812,-215.26383972168,38.213520050049), 22.5},
    -- Right Court Room
    {vector3(-517.01348876953,-196.03991699219,38.219711303711), 22.5},
    {vector3(-519.17681884766,-198.70840454102,38.219711303711), 22.5},
    {vector3(-513.65832519531,-195.44273376465,38.219711303711), 22.5},
    {vector3(-520.24322509766,-192.13906860352,38.419662475586), 22.5}
}

return cfg