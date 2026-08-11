--[[
    LEVEL 1 BEGINNER GUIDE — Jobs
    ==================================

    File: cmg/prod/cfg/cfg_jobs.lua
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
      * Modules/config loaded: cfg/cfg_factiongroups

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local factionCfg = CMG.loadModule("cfg/cfg_factiongroups")

local cfg = {}

cfg.earnings = {

    -- Taco stall: buyer pays the menu price. This is how much is taken off before the seller is paid (per taco).
    taco = {
        poundsTakenPerTacoBeforeSellerPaid = 10000,
    },

    -- Trucking: money for finishing one delivery. "Illegal" / "Legal" and [1], [2]… are route slots in cfg_trucking.
    trucking = {
        moneyPerRoute = {
            Illegal = {
                [1] = 49500,
                [2] = 49500,
            },
            Legal = {
                [1] = 33000,
                [2] = 33000,
                [3] = 33000,
                [4] = 33000,
                [5] = 33000,
                [6] = 33000,
            },
        },
        -- Extra pay from trucking job level (starts at bonusStartsAtTruckingLevel):
        --   extra% on top of route pay ≈ (your level ÷ 5) × bonusPercentAddedPerFiveTruckingLevels
        -- Example: 10 here → +10% at level 5, +20% at level 10, +30% at level 15, …
        bonusStartsAtTruckingLevel = 5,
        bonusPercentAddedPerFiveTruckingLevels = 10,
    },

    -- Pilot: £ for a full drop-off (before level × grind × damage). Mid drop-off pays the same fraction of passengers unloaded.
    pilot = {
        legalPay = 63000,
        illegalPay = 78750,
        multipliers = {
            startAt = 1.0,
            maxLevel = 200,
            addEachLevel = 0.002,
        },
    },

    -- Trapper: NPC weed bag sell price = basePrice + (purity level × moneyPerPurityLevel), rounded when built into cfg.sellableItems.
    -- weed_bag_1 ≈ £2k/bag, weed_bag_<purityUpTo> ≈ £15k/bag (linear in between).
    trapper = {
        weed = {
            basePrice = 2000 - (13000 / 99),
            moneyPerPurityLevel = 13000 / 99,
            purityUpTo = 100,
        },
    },

    garbage = {
        payPerBag = 4000,
    },
}

cfg.jobs = {
    ["Mechanic"] = {
        _config = {
            gtype = "job",
            theme = { r = 200, g = 160, b = 40 },
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "AA")
                TriggerClientEvent("579a73060c", source)
            end,
        },
        "aa.onduty.permission"
    },
    ["Farmer"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Farmer")
            end,
        },
        "farmer.onduty.permission"
    },
    ["Trucking"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Trucking")
            end,
        },
        "lorry.whitelisted"
    },
    ["Postal Service"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Royal Mail")
            end
        },
        "royalmail.onjob"
    },
    ["Bus Driver"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Bus Driver")
            end
        },
        "bus.onjob"
    },
    --[[
    ["Food Delivery"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Deliveroo")
            end
        },
        "deliveroo.onjob"
    },
    ]]
    ["Taco Seller"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Taco Seller")
            end
        },
        "taco.onjob"
    },
    ["Pilot"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Pilot")
            end,
        },
        "pilot.miner"
    },
    ["Trapper"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Trapper")
            end,
            theme = {r=200,g=20,b=0}
        },
        "trapper.onjob"
    },
    ["Garbage"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Garbage")
            end,
            theme = {r=80, g=140, b=60},
        },
        "garbage.onjob"
    },
    ["Scuba Diver"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Scuba Diver")
            end,
        },
        "scuba.job"
    },
    ["Cash Driver"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "G4S Driver")
            end,
        },
        "g4s.job"
    },
    ["Fisherman"] = {
        _config = {
            gtype = "job",
            onjoin = function(source)
                TriggerClientEvent("e3a2b4bde0", source, "Fisherman")
            end,
        },
        "fisher.job"
    },
    ["Vigilante"] = {
        _config = {
            gtype = "job",
        },
        "vigilante.onduty.permission"
    },
    ["Unemployed"] = {
        _config = {
            gtype = "job",
            onspawn = function()
            end
        },
        "citizen.paycheck"
    },
}

local defaultPolicePermissions = {
    _config = {
        gtype = "job",
        onjoin = function()
        end,
        onspawn = function()
        end,
        onleave = function()
        end
    },
    "police.onduty.permission"
}

local defaultLFBPermissions = {
    _config = {
        gtype = "job",
        onspawn = function()
        end
    },
    "lfb.onduty.permission"
}

local defaultDoctorPermissions = {
    _config = {
        gtype = "job",
        theme = {r=40, g=150, b=190},
        onspawn = function()
        end
    },
    "doctor.permission",
    "nhs.onduty.permission"
}

local defaultParamedicPermissions = {
    _config = {
        gtype = "job",
        theme = {r=40, g=150, b=190},
        onjoin = function(source)
            TriggerClientEvent("87318b22f0", source)
        end,
        onspawn = function()
        end
    },
    "paramedic.permission",
    "nhs.onduty.permission"
}

local defaultHMPPermissions = {
    _config = {
        gtype = "job",
        onspawn = function()
        end
    },
    "prisonguard.onduty.permission"
}

local defaultBorderForcePermissions = {
    _config = {
        gtype = "job",
        onspawn = function()
        end
    },
    "borderforce.onduty.permission"
}

local defaultCasinoPermissions = {
    _config = {
        gtype = "job",
        onspawn = function()
        end
    },
    "casino.onduty.permission"
}

for _, rank in pairs(factionCfg.metPoliceRanks) do
    local permission = table.copy(defaultPolicePermissions)
    permission._config.paycheck = rank[2]
    permission._config.grade = rank.grade
    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.doctorRanks) do
    local permission = table.copy(defaultDoctorPermissions)
    permission._config.paycheck = rank[2]
    permission._config.grade = rank.grade
    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.paramedicRanks) do
    local permission = table.copy(defaultParamedicPermissions)
    permission._config.paycheck = rank[2]
    permission._config.grade = rank.grade

    if rank[1] == "Trainee Paramedic" then
        permission._config.onjoin = function(source)
            TriggerClientEvent("e3a2b4bde0", source, "Trainee Paramedic")
            TriggerClientEvent("87318b22f0", source)
        end
    end

    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.lfbRanks) do
    local permission = table.copy(defaultLFBPermissions)
    permission._config.paycheck = rank[2]
    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.hmpRanks) do
    local permission = table.copy(defaultHMPPermissions)
    permission._config.paycheck = rank[2]
    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.borderForceRanks) do
    local permission = table.copy(defaultBorderForcePermissions)
    permission._config.paycheck = rank[2]
    cfg.jobs[rank[1]] = permission
end

for _, rank in pairs(factionCfg.casinoRanks) do
    local permission = table.copy(defaultCasinoPermissions)
    permission._config.paycheck = rank[2]
    cfg.jobs[rank[1]] = permission
end



return cfg
