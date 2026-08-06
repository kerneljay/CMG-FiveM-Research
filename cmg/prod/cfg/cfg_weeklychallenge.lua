---@type WeeklyChallengeConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.tasks = {
    ["drive_distance"] = {
        title = "Drive %s miles in any car.",
        options = {
            {type = "randomInteger", minValue = 100, maxValue = 500},
        }
    },
    ["kill_people"] = {
        title = "Kill %s unique people with any weapon.",
        options = {
            {type = "randomInteger", minValue = 5, maxValue = 10},
        }
    },
    ["lockpick_vehicle"] = {
        title = "Lockpick %s unique vehicles with any lockpick type.",
        options = {
            {type = "randomInteger", minValue = 2, maxValue = 5},
        }
    },
    ["capture_turfs"] = {
        title = "Capture %s turfs of any type.",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 3},
        }
    },
    ["rob_store"] = {
        title = "Rob %s convinence stores.",
        options = {
            {type = "randomInteger", minValue = 5, maxValue = 10},
        }
    },
    ["redzone_kills"] = {
        title = "Kill %s unique people in a redzone",
        options = {
            {type = "randomInteger", minValue = 4, maxValue = 8},
        }
    },
    ["cpr_revives"] = {
        title = "Revive %s unique people with CPR.",
        options = {
            {type = "randomInteger", minValue = 4, maxValue = 8},
        }
    },
    ["loot_airdrop"] = {
        title = "Loot %s airdrop(s).",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 2},
        }
    },
    ["break_handcuffs"] = {
        title = "Break out of handcuffs %s time(s).",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 2},
        }
    },
    ["take_lsd"] = {
        title = "Take LSD %s times.",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 1},
        }
    },
    ["repair_vehicles"] = {
        title = "Repair a vehicle %s times.",
        options = {
            {type = "randomInteger", minValue = 3, maxValue = 8},
        }
    },
    ["loot_bags"] = {
        title = "Loot %s unique loot bags.",
        options = {
            {type = "randomInteger", minValue = 3, maxValue = 12},
        }
    },
    ["wager_wins"] = {
        title = "Win %s wagers.",
        options = {
            {type = "randomInteger", minValue = 2, maxValue = 6},
        }
    },
    ["fire_kills"] = {
        title = "Kill %s unique people with fire.",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 3},
        }
    },
    ["bolt_cut"] = {
        title = "Bolt cut %s houses.",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 2},
        }
    },
    ["shave_people"] = {
        title = "Shave %s unique people.",
        options = {
            {type = "randomInteger", minValue = 1, maxValue = 3},
        }
    },
    ["dumpster_dive"] = {
        title = "Search %s dumpsters.",
        options = {
            {type = "randomInteger", minValue = 15, maxValue = 40},
        }
    },
    ["clean_dirty_cash"] = {
        title = "Clean £%s in dirty cash.",
        options = {
            {type = "randomInteger", minValue = 200000, maxValue = 1000000},
        }
    },
    ["rob_atms"] = {
        title = "Successfully rob %s ATMs",
        options = {
            {type = "randomInteger", minValue = 2, maxValue = 5},
        }
    }
}

-- This value is hardcoded in the UI also.
cfg.numTasksToComplete = 3

cfg.rewardForEachTask = 500000
cfg.rewardForEachDailyTask = 200000

return cfg