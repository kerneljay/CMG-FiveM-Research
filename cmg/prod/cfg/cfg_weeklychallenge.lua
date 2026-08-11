--[[
    LEVEL 1 BEGINNER GUIDE — Weeklychallenge
    =============================================

    File: cmg/prod/cfg/cfg_weeklychallenge.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: configuration/data used by other scripts.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
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
