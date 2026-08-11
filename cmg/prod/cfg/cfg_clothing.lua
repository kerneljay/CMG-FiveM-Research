--[[
    LEVEL 1 BEGINNER GUIDE — Clothing
    ======================================

    File: cmg/prod/cfg/cfg_clothing.lua
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
local cfg = {}

cfg.presets = {
    ["StaffMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [3] = {
                collectionName = "",
                localIndex = 4,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_cmg_clothing_pack4",
                localIndex = 2,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            -- [6] = {
            --     collectionName = "mp_m_clothing",
            --     localIndex = 5,
            --     textureIndex = 2,
            -- },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_cmg_clothing_pack4",
                localIndex = 0,
                textureIndex = 0,
            },
        }
    },
    ["StaffFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [3] = {
                collectionName = "",
                localIndex = 3,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_f_cmg_clothing_pack4",
                localIndex = 8,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            -- [6] = {
            --     collectionName = "mp_f_clothing",
            --     localIndex = 5,
            --     textureIndex = 2,
            -- },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 3,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_f_cmg_clothing_pack4",
                localIndex = 0,
                textureIndex = 0,
            },
        },
    },
    ["StaffHalloweenMale"] = {
        components = {
            [1] = {
                collectionName = "Male_freemode_Halloween",
                localIndex = 0,
                textureIndex = 0,
            },
        }
    },
    ["StaffHalloweenFemale"] = {
        components = {
            [1] = {
                collectionName = "Female_freemode_Halloween",
                localIndex = 0,
                textureIndex = 0,
            },
        }
    },
    ["StaffChristmasMale"] = {
        props = {
            [0] = {22, 0, 1} --Christmas Hat
        }
    },
    ["StaffChristmasFemale"] = {
        props = {
            [0] = {23, 0, 1} --Christmas Hat
        }
    },
    ["DefaultMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 1,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
        },
        props = {
            [1] = {-1, 0, 0},
            [2] = {-1, 0, 0},
            [6] = {-1, 0, 0},
            [7] = {-1, 0, 0}
        }
    },
    ["DefaultFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 1,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
        },
        props = {
            [1] = {-1, 0, 0},
            [2] = {-1, 0, 0},
            [6] = {-1, 0, 0},
            [7] = {-1, 0, 0}
        }
    },
    ["NoBreathingApperatus"] = {
        components = {
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
        }
    },
    ["BreathingApperatusDown"] = {
        components = {
            [8] = {
                collectionName = "mp_m_factions",
                localIndex = 4,
                textureIndex = 0,
            },
        }
    },
    ["BreathingApperatusUp"] = {
        components = {
            [8] = {
                collectionName = "mp_m_factions",
                localIndex = 5,
                textureIndex = 0,
            },
        }
    },
    ["BreathingApperatusDownFemale"] = {
        components = {
            [8] = {
                collectionName = "mp_f_factions",
                localIndex = 5,
                textureIndex = 0,
            },
        }
    },
    ["BreathingApperatusUpFemale"] = {
        components = {
            [8] = {
                collectionName = "mp_f_factions",
                localIndex = 6,
                textureIndex = 0,
            },
        }
    },
    ["PrisonerMale"] = {
        components = {
            [4] = {
                collectionName = "mp_m_cmg_clothing_pack1",
                localIndex = 119,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "mp_m_2023_02",
                localIndex = 2,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_cmg_clothing_pack4",
                localIndex = 1,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {1, 8, 0}
        }
    },
    ["PrisonerFemale"] = {
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 4,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 2,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "",
                localIndex = 1,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 2,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_f_cmg_clothing_pack2",
                localIndex = 48,
                textureIndex = 0,
            },
        }
    },
    ["TattooMale"] = {
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_valentines_02",
                localIndex = 1,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 1,
            },
        }
    },
    ["TattooFemale"] = {
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 14,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
        }
    },
    ["TruckerMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_lowrider_02",
                localIndex = 1,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "",
                localIndex = 12,
                textureIndex = 12,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "Male_Heist",
                localIndex = 4,
                textureIndex = 1,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [11] = {
                collectionName = "Male_Heist",
                localIndex = 3,
                textureIndex = 0,
            },
        }
    },
    ["TruckerFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 1,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "mp_f_smuggler_01",
                localIndex = 1,
                textureIndex = 4,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [8] = {
                collectionName = "Female_Heist",
                localIndex = 4,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [11] = {
                collectionName = "Female_Heist",
                localIndex = 3,
                textureIndex = 0,
            },
        }
    },
    ["GarbageMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 9,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "Male_Apt01",
                localIndex = 2,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "Male_Heist",
                localIndex = 4,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "Male_freemode_beach",
                localIndex = 0,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {2, 0, 0}
        }
    },
    ["GarbageFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "",
                localIndex = 1,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "mp_f_smuggler_01",
                localIndex = 1,
                textureIndex = 4,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [8] = {
                collectionName = "Female_Heist",
                localIndex = 4,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 1,
            },
            [11] = {
                collectionName = "Female_Heist",
                localIndex = 3,
                textureIndex = 0,
            },
        }
    },
    ["TacoSellerMale"] = {
        components = {
            [3] = {
                collectionName = "Male_Heist",
                localIndex = 66,
                textureIndex = 1,
            },
            [4] = {
                collectionName = "mp_m_clothing",
                localIndex = 52,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "",
                localIndex = 1,
                textureIndex = 14,
            },
            [8] = {
                collectionName = "mp_m_clothing",
                localIndex = 14,
                textureIndex = 2,
            },
            [11] = {
                collectionName = "mp_m_clothing",
                localIndex = 65,
                textureIndex = 0,
            },
        }
    },
    ["TacoSellerFemale"] = {
        components = {
            [3] = {
                collectionName = "Female_Heist",
                localIndex = 65,
                textureIndex = 1,
            },
            [4] = {
                collectionName = "mp_f_clothing",
                localIndex = 51,
                textureIndex = 1,
            },
            [6] = {
                collectionName = "Female_Heist",
                localIndex = 2,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "mp_f_clothing",
                localIndex = 28,
                textureIndex = 2,
            },
            [11] = {
                collectionName = "mp_f_clothing",
                localIndex = 91,
                textureIndex = 0,
            },
        }
    },
    ["BankHeistSearchBoat"] = {
        components = {
            [3] = {
                collectionName = "mp_m_bikerdlc_01",
                localIndex = 11,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_christmas2017",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "mp_m_christmas2017",
                localIndex = 0,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "Male_Heist",
                localIndex = 4,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_christmas2017",
                localIndex = 2,
                textureIndex = 0,
            },
        }
    },
    ["PilotMale"] = {
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "mp_m_2023_01",
                localIndex = 1,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_cmg_clothing_pack4",
                localIndex = 15,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "Male_Heist",
                localIndex = 2,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_cmg_clothing_pack4",
                localIndex = 47,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {
                collectionName = "mp_m_smuggler_01",
                localIndex = 1,
                textureIndex = 3,
            },
            [1] = {
                collectionName = "mp_m_cmg_clothing_pack1",
                localIndex = 5,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "mp_m_luxe_01",
                localIndex = 7,
                textureIndex = 0,
            },
        }
    },
    ["PilotFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_f_cmg_clothing_pack4",
                localIndex = 16,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "mp_f_cmg_clothing_pack1",
                localIndex = 8,
                textureIndex = 2,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 1,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "Female_freemode_business",
                localIndex = 3,
                textureIndex = 0,
            },
        },
    },
    ["MechanicMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_tuner",
                localIndex = 2,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "Male_Apt01",
                localIndex = 2,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_tuner",
                localIndex = 2,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {8, 0, 0}
        }
    },
    ["MechanicFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "",
                localIndex = 3,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_f_tuner",
                localIndex = 2,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "Female_Heist",
                localIndex = 1,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 14,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_f_tuner",
                localIndex = 2,
                textureIndex = 0,
            },
        },
        props = {
            [6] = {
                collectionName = "mp_f_luxe_02",
                localIndex = 1,
                textureIndex = 0,
            },
        }
    },
    ["ParamedicMale"] = {
        model = `mp_m_freemode_01`,
        components = {
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "mp_m_cmgpack",
                localIndex = 30,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_m_cmgpack",
                localIndex = 9,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "Male_Apt01",
                localIndex = 2,
                textureIndex = 1,
            },
            [7] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "mp_m_cmgpack",
                localIndex = 13,
                textureIndex = 0,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_m_cmgpack",
                localIndex = 20,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {2, 0, 0}
        }
    },
    ["ParamedicFemale"] = {
        model = `mp_f_freemode_01`,
        components = {
            [0] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [1] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [2] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [3] = {
                collectionName = "mp_f_cmgpack",
                localIndex = 31,
                textureIndex = 0,
            },
            [4] = {
                collectionName = "mp_f_cmgpack",
                localIndex = 10,
                textureIndex = 0,
            },
            [5] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [6] = {
                collectionName = "mp_f_bikerdlc_01",
                localIndex = 1,
                textureIndex = 0,
            },
            [7] = {
                collectionName = "mp_f_cmgpack",
                localIndex = 14,
                textureIndex = 0,
            },
            [8] = {
                collectionName = "",
                localIndex = 15,
                textureIndex = 1,
            },
            [9] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [10] = {
                collectionName = "",
                localIndex = 0,
                textureIndex = 0,
            },
            [11] = {
                collectionName = "mp_f_cmgpack",
                localIndex = 22,
                textureIndex = 0,
            },
        },
        props = {
            [0] = {
                collectionName = "mp_f_cmgpack",
                localIndex = 12,
                textureIndex = 0,
            },
        }
    }
}

return cfg
