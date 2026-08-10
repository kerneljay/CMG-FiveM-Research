--[[
    BEGINNER GUIDE — Homes
    ======================

    File: cmg/prod/cfg/homes.lua
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

cfg.slot_types = {
    --Reusable Interiors Slots--
    ["office_1"] = {
        {
            {"entry",-139.9253, -624.356, 168.8132},
            {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
            {"wardrobe",-132.0527, -633.8505, 168.8132},
        }
    },
    ["Cheap_Home"] = {
        {
            {"entry", 346.3893737793, -1012.9935302734, -99.196250915527},
            {"chest", 351.87979125977, -998.93640136719, -99.19620513916, _config = {weight = 1000}},
            {"wardrobe", 351.22573852539, -993.52227783203, -99.19620513916}
        }
    },
    -- ["caravan"] = { --todo remove this interior
    --     {
    --         {"entry", 59.40454864502,3680.8254394531,23.292718887329},
    --         {"chest", 64.279418945312,3684.1306152344,23.314031600952, _config = {weight = 500}},
    --         {"wardrobe", 56.268444061279,3679.6027832031,23.292694091797}
    --     }
    -- },
    --one of the motels from the 100 copied ones (100Motels) in CMGMLOs/Houses/100Motels
    ["100_motel"] = {
        {
            {"entry", 1021, 2003, -99},
            {"chest", 1018, 2002, -99, _config = {weight = 500}},
            {"wardrobe", 1020.5, 1997, -99}
        }
    },
    --10mil ting/mega luxury
    ["high_tier_apart"] = {
        {
            {"entry", -782.171, 324.589, 223.258},
            {"chest", -773.718078613281, 325.144409179688, 223.266357421875, _config = {weight = 2000}},
            {"wardrobe", -760.885437011719, 325.457153320313, 217.061080932617},
        },
    },
    --5mil ting/rockford
    ["medium_tier_apart"] = {
        {
            {"entry", -784.363, 323.792, 211.996},
            {"chest", -766.744384765625, 328.375, 211.396545410156, _config = {weight = 2000}},
            {"wardrobe", -793.502136230469, 326.861846923828, 210.796630859375},
        },
    },
    ["aqua1"] = {
        {
            {"entry", -784.78784179688, 315.70715332031, 217.63845825195},
            {"chest", -795.73602294922, 327.82858276367, 217.03799438477, _config = {weight = 2000}},
            {"wardrobe", -800.05419921875, 338.36154174805, 220.43855285645}
        }
    },
    ["aqua2"] = {
        {
            {"entry", -786.9756, 315.723, 187.9134},
            {"chest", -795.46881103516, 328.26052856445, 187.31324768066, _config = {weight = 2000}},
            {"wardrobe", -800.11108398438, 338.21478271484, 190.71362304688}
        }
    },
    ["aqua3"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        }
    },
    -- ["office_arcadius_centre_exec_rich"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		-- "ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_02b"
    --     }
    -- },
    -- ["office_arcadius_centre_exec_cool"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		-- "ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_02c"
    --     }
    -- },
    -- ["office_arcadius_centre_exec_contrast"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		-- "ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_02a"
    --     }
    -- },
    -- ["office_arcadius_centre_oldspicewarm"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         -- "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_01a"
    --     }
    -- },
    -- ["office_arcadius_centre_oldspiceclassical"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		-- "ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_01b"
    --     }
    -- },
    -- ["office_arcadius_centre_oldspicevintage"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		-- "ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		"ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_01c"
    --     }
    -- },
    ["office_arcadius_centre_powerbrokerice"] = {
        {
            {"entry",-139.9253, -624.356, 168.8132},
            {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
            {"wardrobe",-132.0527, -633.8505, 168.8132},
        },
        iplsToRemove = {
            "ex_dt1_02_office_01a",
			"ex_dt1_02_office_01b",
			"ex_dt1_02_office_01c",
			"ex_dt1_02_office_02a",
			"ex_dt1_02_office_02b",
			"ex_dt1_02_office_02c",
			-- "ex_dt1_02_office_03a",
			"ex_dt1_02_office_03b",
            "ex_dt1_02_office_03c",
        },
        iplsToRequest = {
            "ex_dt1_02_office_03a"
        }
    },
    -- ["office_arcadius_centre_powerbrokerconservative"] = {
    --     {
    --         {"entry",-139.9253, -624.356, 168.8132},
    --         {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
    --         {"wardrobe",-132.0527, -633.8505, 168.8132},
    --     },
    --     iplsToRemove = {
    --         "ex_dt1_02_office_01a",
	-- 		"ex_dt1_02_office_01b",
	-- 		"ex_dt1_02_office_01c",
	-- 		"ex_dt1_02_office_02a",
	-- 		"ex_dt1_02_office_02b",
	-- 		"ex_dt1_02_office_02c",
	-- 		"ex_dt1_02_office_03a",
	-- 		-- "ex_dt1_02_office_03b",
    --         "ex_dt1_02_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_02_office_03b"
    --     }
    -- },
    ["office_arcadius_centre_powerbrokerpolished"] = {
        {
            {"entry",-139.9253, -624.356, 168.8132},
            {"chest",-124.6549, -643.2659, 168.8301, _config = {weight=2000}},
            {"wardrobe",-132.0527, -633.8505, 168.8132},
        },
        iplsToRemove = {
            "ex_dt1_02_office_01a",
			"ex_dt1_02_office_01b",
			"ex_dt1_02_office_01c",
			"ex_dt1_02_office_02a",
			"ex_dt1_02_office_02b",
			"ex_dt1_02_office_02c",
			"ex_dt1_02_office_03a",
			"ex_dt1_02_office_03b",
            -- "ex_dt1_02_office_03c",
        },
        iplsToRequest = {
            "ex_dt1_02_office_03c"
        }
    },
    -- maze bank tower offices
    ["office_maze_tower_exec_rich"] = {
        {
            {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
            {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
            {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
        },
        iplsToRemove = {
			"ex_dt1_11_office_01a",
			"ex_dt1_11_office_01b",
			"ex_dt1_11_office_01c",
			"ex_dt1_11_office_02a",
			-- "ex_dt1_11_office_02b",
			"ex_dt1_11_office_02c",
			"ex_dt1_11_office_03a",
			"ex_dt1_11_office_03b",
			"ex_dt1_11_office_03c",
        },
        iplsToRequest = {
            "ex_dt1_11_office_02b"
        }
    },
    -- ["office_maze_tower_exec_cool"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		"ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		"ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		-- "ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		"ex_dt1_11_office_03b",
	-- 		"ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_02c"
    --     }
    -- },
    -- ["office_maze_tower_exec_contrast"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		"ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		"ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		-- "ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		"ex_dt1_11_office_03b",
	-- 		"ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_02a"
    --     }
    -- },
    -- ["office_maze_tower_oldspicewarm"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		-- "ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		"ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		"ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		"ex_dt1_11_office_03b",
	-- 		"ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_01a"
    --     }
    -- },
    -- ["office_maze_tower_oldspicevintage"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		"ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		-- "ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		"ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		"ex_dt1_11_office_03b",
	-- 		"ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_01c"
    --     }
    -- },
    ["office_maze_tower_powerbrokerice"] = {
        {
            {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
            {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
            {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
        },
        iplsToRemove = {
			"ex_dt1_11_office_01a",
			"ex_dt1_11_office_01b",
			"ex_dt1_11_office_01c",
			"ex_dt1_11_office_02a",
			"ex_dt1_11_office_02b",
			"ex_dt1_11_office_02c",
			-- "ex_dt1_11_office_03a",
			"ex_dt1_11_office_03b",
			"ex_dt1_11_office_03c",
        },
        iplsToRequest = {
            "ex_dt1_11_office_03a"
        }
    },
    -- ["office_maze_tower_powerbrokerconservative"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		"ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		"ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		"ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		-- "ex_dt1_11_office_03b",
	-- 		"ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_03b"
    --     }
    -- },
    -- ["office_maze_tower_powerbrokerpolished"] = {
    --     {
    --         {"entry",-75.243957519531, -823.55603027344, 243.87365722656},
    --         {"chest",-81.494506835938, -799.55603027344, 243.87365722656, _config = {weight=2000}},
    --         {"wardrobe",-78.421974182129, -811.50329589844, 243.87365722656},
    --     },
    --     iplsToRemove = {
	-- 		"ex_dt1_11_office_01a",
	-- 		"ex_dt1_11_office_01b",
	-- 		"ex_dt1_11_office_01c",
	-- 		"ex_dt1_11_office_02a",
	-- 		"ex_dt1_11_office_02b",
	-- 		"ex_dt1_11_office_02c",
	-- 		"ex_dt1_11_office_03a",
	-- 		"ex_dt1_11_office_03b",
	-- 		-- "ex_dt1_11_office_03c",
    --     },
    --     iplsToRequest = {
    --         "ex_dt1_11_office_03c"
    --     }
    -- },
    --Reusable Interiors Slots--
    --Reusable Interiors Slots--
    --Reusable Interiors Slots--
    -- Eclipse towers


    -- ["eclipse_towers_aqua"] = {
    --     {
    --         {"entry", -774.0349, 342.0296, 196.6862},
    --         {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
    --         {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
    --     },
    --     iplsToRemove = {
    -- 		"apa_v_mp_h_01_a",
	-- 		"apa_v_mp_h_01_c",
	-- 		"apa_v_mp_h_01_b",
	-- 		"apa_v_mp_h_02_a",
	-- 		"apa_v_mp_h_02_c",
	-- 		"apa_v_mp_h_02_b",
	-- 		"apa_v_mp_h_03_a",
	-- 		"apa_v_mp_h_03_c",
	-- 		"apa_v_mp_h_03_b",
	-- 		"apa_v_mp_h_04_a",
	-- 		"apa_v_mp_h_04_c",
	-- 		"apa_v_mp_h_04_b",
	-- 		"apa_v_mp_h_05_a",
	-- 		"apa_v_mp_h_05_c",
	-- 		"apa_v_mp_h_05_b",
	-- 		"apa_v_mp_h_06_a",
	-- 		"apa_v_mp_h_06_c",
	-- 		"apa_v_mp_h_06_b",
	-- 		"apa_v_mp_h_07_a",
	-- 		"apa_v_mp_h_07_c",
	-- 		"apa_v_mp_h_07_b",
	-- 		"apa_v_mp_h_08_a",
	-- 		"apa_v_mp_h_08_c",
	-- 		-- "apa_v_mp_h_08_b"
    --     },
    --     iplsToRequest = {
    --         "apa_v_mp_h_08_b"
    --     }
    -- },
    ["eclipse_towers_regal"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			-- "apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_07_b"
        }
    },
    ["eclipse_towers_seductive"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			-- "apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_06_b"
        }
    },
    ["eclipse_towers_monochrome"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			-- "apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_05_b"
        }
    },
    ["eclipse_towers_sharp"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			-- "apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_04_b"
        }
    },
    ["eclipse_towers_vibrant"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			-- "apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_03_b"
        }
    },
    ["eclipse_towers_moody"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			"apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			-- "apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_02_b"
        }
    },
    ["eclipse_towers_modern"] = {
        {
            {"entry", -774.0349, 342.0296, 196.6862},
            {"chest", -765.53662109375, 329.43835449219, 196.08601379395, _config = {weight = 2000}},
            {"wardrobe", -761.00115966797, 319.41290283203, 199.486328125}
        },
        iplsToRemove = {
    		"apa_v_mp_h_01_a",
			"apa_v_mp_h_01_c",
			-- "apa_v_mp_h_01_b",
			"apa_v_mp_h_02_a",
			"apa_v_mp_h_02_c",
			"apa_v_mp_h_02_b",
			"apa_v_mp_h_03_a",
			"apa_v_mp_h_03_c",
			"apa_v_mp_h_03_b",
			"apa_v_mp_h_04_a",
			"apa_v_mp_h_04_c",
			"apa_v_mp_h_04_b",
			"apa_v_mp_h_05_a",
			"apa_v_mp_h_05_c",
			"apa_v_mp_h_05_b",
			"apa_v_mp_h_06_a",
			"apa_v_mp_h_06_c",
			"apa_v_mp_h_06_b",
			"apa_v_mp_h_07_a",
			"apa_v_mp_h_07_c",
			"apa_v_mp_h_07_b",
			"apa_v_mp_h_08_a",
			"apa_v_mp_h_08_c",
			"apa_v_mp_h_08_b"
        },
        iplsToRequest = {
            "apa_v_mp_h_01_b"
        }
    },
    --ipl fix^

    ["mirrorpark1"] = {
        {
            {"entry", 1303.5989990234,-526.09161376953,71.467552185059},
            {"chest", 1302.3269042969,-516.61846923828,74.789947509766, _config = {weight = 2000}},
            {"wardrobe", 1306.5721435547,-527.24359130859,74.792030334473}
        }
    },
    ["mirrorpark2"] = {
        {
            {"entry", 1348.9040527344,-544.97882080078,73.894493103027},
            {"chest", 1348.1815185547,-535.75030517578,77.216979980469, _config = {weight = 2000}},
            {"wardrobe", 1351.7525634766,-546.69549560547,77.219009399414}
        }
    },
    ["mirrorpark3"] = {
        {
            {"entry", 1390.3092041016,-568.92175292969,74.505523681641},
            {"chest", 1396.4077148438,-561.68664550781,77.827865600586, _config = {weight = 2000}},
            {"wardrobe", 1391.3811035156,-572.02813720703,77.829978942871}
        }
    },
    ["mirrorpark4"] = {
        {
            {"entry", 1387.291015625,-594.15197753906,74.492523193359},
            {"chest", 1396.7918701172,-596.02893066406,77.814903259277, _config = {weight = 2000}},
            {"wardrobe", 1385.4617919922,-596.71368408203,77.817024230957}
        }
    },
    ["mirrorpark5"] = {
        {
            {"entry", 1367.3839111328,-608.41833496094,74.720550537109},
            {"chest", 1371.6501464844,-616.90563964844,78.043144226074, _config = {weight = 2000}},
            {"wardrobe", 1364.28125,-608.20709228516,78.045082092285}
        }
    },
    ["mirrorpark6"] = {
        {
            {"entry", 1322.8839111328,-584.64837646484,73.253448486328},
            {"chest", 1323.3602294922,-594.09899902344,76.575996398926, _config = {weight = 2000}},
            {"wardrobe", 1319.6599121094,-583.21643066406,76.578056335449}
        }
    },
    ["mirrorpark7"] = {
        {
            {"entry", 1300.5424804688,-576.09320068359,71.739616394043},
            {"chest", 1302.2275390625,-585.31433105469,75.062049865723, _config = {weight = 2000}},
            {"wardrobe", 1297.6839599609,-574.37884521484,75.063934326172}
        }
    },
    ["mirrorpark8"] = {
        {
            {"entry", 958.43334960938,-670.76275634766,58.457511901855},
            {"chest", 952.98303222656,-678.82159423828,61.780128479004, _config = {weight = 2000}},
            {"wardrobe", 956.92297363281,-667.83489990234,61.78199005127}
        }
    },
    ["mirrorpark9"] = {
        {
            {"entry", 918.93713378906,-568.27990722656,58.373508453369},
            {"chest", 911.42034912109,-562.52056884766,61.696159362793, _config = {weight = 2000}},
            {"wardrobe", 921.77770996094,-566.68768310547,61.697929382324}
        }
    },
    ["mirrorpark10"] = {
        {
            {"entry", 1102.4375,-411.37371826172,67.562576293945},
            {"chest", 1111.8267822266,-407.73114013672,70.88516998291, _config = {weight = 2000}},
            {"wardrobe", 1102.8031005859,-414.61306762695,70.886901855469}
        }
    },
    ["mirrorpark11"] = {
        {
            {"entry", 905.78479003906,-488.15805053711,59.442523956299},
            {"chest", 898.11041259766,-481.72171020508,62.764301300049, _config = {weight = 2000}},
            {"wardrobe", 908.71405029297,-486.67245483398,62.766483306885}
        }
    },
    ["eastbournehotel1"] = {
        {
            {"entry", -362.1750793457,59.269027709961,54.430603027344},
            {"chest", -362.22036743164,64.492958068848,54.430591583252, _config = {weight = 1000}},
            {"wardrobe", -365.75991821289,59.414012908936,54.430606842041}
        }
    },
    ["eastbournehotel2"] = {
        {
            {"entry", -350.56484985352,58.979259490967,54.450553894043},
            {"chest", -350.59164428711,64.542915344238,54.430583953857, _config = {weight = 1000}},
            {"wardrobe", -347.59283447266,59.044151306152,54.430603027344}
        }
    },
    ["eastbournehotel3"] = {
        {
            {"entry", -343.79080200195,58.645809173584,54.430606842041},
            {"chest", -340.38461303711,58.99174118042,54.430591583252, _config = {weight = 1000}},
            {"wardrobe", -344.51303100586,60.24390411377,54.430591583252}
        }
    },
    ["eastbournehotel4"] = {
        {
            {"entry", -332.97875976563,58.280097961426,54.430610656738},
            {"chest", -332.67959594727,63.837684631348,54.430606842041, _config = {weight = 1000}},
            {"wardrobe", -329.35015869141,58.607456207275,54.430606842041}
        }
    },
    ["eastbournehotel5"] = {
        {
            {"entry", -367.80276489258,53.096195220947,59.769882202148},
            {"chest", -374.32614135742,53.35391998291,58.749904632568, _config = {weight = 1000}},
            {"wardrobe", -368.00524902344,56.225650787354,58.749969482422}
        }
    },
    ["eastbournehotel6"] = {
        {
            {"entry", -362.22396850586,59.120975494385,58.767116546631},
            {"chest", -362.2717590332,64.346519470215,58.753154754639, _config = {weight = 1000}},
            {"wardrobe", -365.65170288086,59.310203552246,58.753154754639}
        }
    },
    ["eastbournehotel7"] = {
        {
            {"entry", -350.63641357422,58.651668548584,58.771327972412},
            {"chest", -350.42697143555,64.681755065918,58.75133895874, _config = {weight = 1000}},
            {"wardrobe", -347.39208984375,59.08016204834,58.751373291016}
        }
    },
    ["eastbournehotel8"] = {
        {
            {"entry", -344.14761352539,58.620452880859,58.750003814697},
            {"chest", -340.00860595703,58.871875762939,58.749996185303, _config = {weight = 1000}},
            {"wardrobe", -344.56164550781,60.388591766357,58.749992370605}
        }
    },
    ["eastbournehotel9"] = {
        {
            {"entry", -333.00503540039,58.0055809021,58.753150939941},
            {"chest", -332.6682434082,63.762699127197,58.753143310547, _config = {weight = 1000}},
            {"wardrobe", -329.26834106445,58.389789581299,58.753143310547}
        }
    },
    ["eastbournehotel10"] = {
        {
            {"entry", -328.51300048828,52.22571182251,58.775997161865},
            {"chest", -322.09658813477,51.317836761475,58.75602722168, _config = {weight = 1000}},
            {"wardrobe", -326.06655883789,55.138412475586,58.756042480469}
        }
    },
    ["tongvavilla"] = {
        {
            {"entry", -2588.1479492188, 1909.1192626953, 167.49084472656},
            {"chest", -2601.7626953125, 1876.7369384766, 163.79403686523, _config = {weight = 4000}},
            {"wardrobe", -2597.5380859375, 1871.322265625, 163.79666137695}
        }
    },
    ["tequila"] = {
        {
            {"entry", -563.26617431641, 277.46591186523, 83.136291503906},
            {"chest", -562.43609619141, 282.09774780273, 85.67635345459, _config = {weight = 4000}},
            {"wardrobe", -566.27307128906, 279.88705444336, 82.975509643555}
        }
    },
    ["marabuntaauto"] = {
        {
            {"entry", 823.05102539063, -2336.6145019531, 30.464775085449},
            {"chest", 805.86663818359, -2333.8718261719, 30.464805603027, _config = {weight = 4000}},
            {"wardrobe", 813.77520751953, -2350.095703125, 30.32265663147}
        }
    },
    ["medicalweed"] = {
        {
            {"entry", 375.17645263672, -821.76507568359, 29.302680969238},
            {"chest", 378.46020507813, -819.83618164063, 29.302616119385, _config = {weight = 4000}},
            {"wardrobe", 382.74758911133, -819.56762695313, 29.302610397339}
        }
    },
    ["torture_01"] = {
        {
            {"entry", 1044.6380615234, -2055.6833496094, 36.042533874512},
            {"chest", 1037.1856689453, -2055.9384765625, 36.042320251465, _config = {weight = 4000}},
            {"wardrobe", 1036.1098632813, -2052.7817382813, 36.042377471924}
        }
    },
    ["arcade"] = {
        {
            {"entry", 755.34649658203, -815.23706054688, 26.507099151611},
            {"chest", 740.43975830078, -810.28491210938, 24.270851135254, _config = {weight = 4000}},
            {"wardrobe", 736.89978027344, -814.58001708984, 24.260431289673}
        }
    },
    ["monegera_mannsion"] = {
        {
            {"entry", -1804.9521484375,434.79125976563,128.73178100586},
            {"chest", -1818.4826660156,442.45812988281,127.90921783447, _config = {weight = 4000}},
            {"wardrobe", -1818.2562255859,447.9455871582,127.9207611084}
        }
    },
    ["fgoffice"] = {
        {
            {"entry", -1083.4595947266, -257.74133300781, 37.763336181641},
            {"chest", -1048.5063476563, -229.79183959961, 39.014339447021, _config = {weight = 4000}},
            {"wardrobe", -1078.6712646484, -243.98971557617, 37.763263702393}
        }
    },
    ["fib_oldlsd"] = {
        {
            {"entry", 2520.1262207031, -417.74761962891, 94.091835021973},
            {"chest", 2500.6831054688, -423.7822265625, 94.582023620605, _config = {weight = 4000}},
            {"wardrobe", 2502.5302734375, -426.28762817383, 94.582023620605}
        }
    },
    ["villaisland"] = {
        {
            {"entry", -5865.2836914063, 1151.3153076172, 7.9999957084656},
            {"chest", -5873.3696289063, 1149.9124755859, 13.409121513367, _config = {weight = 4000}},
            {"wardrobe", -5863.5708007813, 1142.8748779297, 13.260018348694}
        }
    },
    ["vapid"] = {
        {
            {"entry", -201.98403930664, -1160.7104492188, 23.759159088135},
            {"chest",-165.53579711914,-1172.4993896484,23.75857925415, _config = {weight=2000}},
            {"wardrobe",-165.28507995605,-1169.9299316406,23.758575439453},
        }
    },
    ["designerhouse"] = {
        {
            {"entry", -2605.302734375, 1688.1937255859, 142.67283630371},
            {"chest", -2620.89453125, 1712.0859375, 146.32258605957, _config = {weight = 4000}},
            {"wardrobe", -2618.4958496094, 1713.0251464844, 146.32261657715}
        }
    },
    ["tannerhq"] = {
        {
            {"entry", -917.65069580078, -2036.0281982422, 9.4026432037354},
            {"chest", -914.30688476563, -2023.6395263672, 9.4040803909302, _config = {weight = 4000}},
            {"wardrobe", -911.50036621094, -2020.9351806641, 9.4044971466064}
        }
    },
    ["modernhouse"] = {
        {
            {"entry", -2669.4123535156, 1326.0823974609, 147.4450378418},
            {"chest", -2676.7741699219, 1310.2375488281, 152.01364135742, _config = {weight = 4000}},
            {"wardrobe", -2677.6069335938, 1307.7264404297, 152.05590820313}
        }
    },
    ["finalfantasy"] = {
        {
            {"entry", -2203.0615234375, -623.24450683594, 15.058621406555},
            {"chest", -2244.1567382813, -637.56262207031, 13.895617485046, _config = {weight = 4000}},
            {"wardrobe", -2241.3298339844, -637.45300292969, 13.895624160767}
        }
    },
    ["beanmachine"] = {
        {
            {"entry", -625.75579833984, 239.04847717285, 81.887184143066},
            {"chest", -634.48394775391, 228.10585021973, 81.881423950195, _config = {weight = 4000}},
            {"wardrobe", -634.50982666016, 225.75950622559, 81.881484985352}
        }
    },
    ["benefactor"] = {
        {
            {"entry", -68.289581298828, 65.040519714355, 71.869415283203},
            {"chest", -50.680637359619, 76.736152648926, 71.944435119629, _config = {weight = 4000}},
            {"wardrobe", -52.446235656738, 71.007537841797, 71.94807434082}
        }
    },
    ["forestgates"] = {
        {
            {"entry", -594.76116943359, -1630.1628417969, 27.01082611084},
            {"chest", -596.80963134766, -1611.9807128906, 27.023365020752, _config = {weight = 4000}},
            {"wardrobe", -581.95983886719, -1611.0166015625, 27.010818481445}
        }
    },
    ["mazearena"] = {
        {
            {"entry", -257.54571533203, -2024.7462158203, 30.145568847656},
            {"chest", -246.53497314453, -2002.9193115234, 30.145574569702, _config = {weight = 4000}},
            {"wardrobe", -244.09159851074, -2003.2727050781, 30.145586013794}
        }
    },
    ["hangar1"] = {
        {
            {"entry", -935.84814453125, -2928.8515625, 13.953420639038},
            {"chest", -929.01586914063, -2937.6843261719, 13.945066452026, _config = {weight = 4000}},
            {"wardrobe", -929.01586914063, -2937.6843261719, 13.945066452026}
        }
    },
    ["hangar2"] = {
        {
            {"entry", -2166.5842285156, 3246.2888183594, 32.8102684021},
            {"chest", -2167.5439453125, 3268.7521972656, 32.810283660889, _config = {weight = 4000}},
            {"wardrobe", -2165.1867675781, 3274.015625, 32.810291290283}
        }
    },
    ["airtower"] = {
        {
            {"entry", -2343.5991210938, 3267.0002441406, 32.810787200928},
            {"chest", -2361.0993652344, 3247.0261230469, 92.903633117676, _config = {weight = 4000}},
            {"wardrobe", -2356.3088378906, 3259.3227539063, 92.903770446777}
        }
    },
    ["luxaryauto"] = {
        {
            {"entry", -777.73596191406, -242.54718017578, 37.119537353516},
            {"chest", -790.44738769531, -214.12741088867, 37.079677581787, _config = {weight = 4000}},
            {"wardrobe", -787.43151855469, -216.15460205078, 37.079669952393}
        }
    },
    ["mansion"] = {
        {
            {"entry", -815.5, 178.78350830078, 72.153137207031},
            {"chest", -808.51202392578, 175.12515258789, 76.740737915039, _config = {weight = 2000}},
            {"wardrobe", -811.91864013672, 175.12641906738, 76.745376586914},
        }
    },
    ["Modern_Apt_2"] = {
        {
            {"entry", -18.354400634766, -591.35821533203, 90.114837646484},
            {"chest", -35.461421966553, -580.32019042969, 83.907508850098, _config = {weight = 4000}},
            {"wardrobe", -38.095764160156, -584.20355224609, 83.918319702148},
        }
    },
    ["Beach_Home"] = {
        {
            {"entry", -1151.330078125, -1520.3634033203, 10.632718086243},
            {"chest", -1159.4989013672, -1521.0078125, 10.632718086242, _config = {weight = 2000}},
            {"wardrobe", -1153.5235595704, -1516.7795410156, 10.632718086242}
        }
    },
    ["trevor_trailer"] = {
        {
            {"entry", 1972.5347900391, 3817.2524414063, 33.428737640381},
            {"chest", 1972.7764892578, 3819.447265625, 33.428737640381, _config = {weight = 4000}},
            {"wardrobe", 1969.2116699219, 3814.6779785156, 33.428745269775},
        }
    },
    ["franklin_house"] = {
        {
            {"entry", -13.934011459351, -1438.681640625, 31.101552963257},
            {"chest", -16.165374755859, -1430.3123779297, 31.101528167725, _config = {weight = 4000}},
            {"wardrobe", -18.420257568359, -1438.7086181641, 31.101554870605},
        }
    },
    ["Expensive_flat"] = {
        {
            {"entry", -174.25415039063, 497.68032836914, 137.66606140137},
            {"chest", -170.91767883301, 486.65267944336, 137.44346618652, _config = {weight = 2000}},
            {"wardrobe", -167.52639770508, 488.09219360352, 133.84378051758},
        }
    },
    -- ["Rich_flat"] = {
    --     {
    --         {"entry", 117.25834655762, 560.08666992188, 184.30490112305},
    --         {"chest", 118.02893829346, 548.17034912109, 184.09687805176, _config = {weight = 2000}},
    --         {"wardrobe", 122.19967651367, 549.14868164063, 180.49728393555},
    --     }
    -- },
    ["Rich_flat_2"] = {
        {
            {"entry", -572.09051513672, 661.30401611328, 145.83984375},
            {"chest", -576.61022949219, 645.83654785156, 142.03224182129, _config = {weight = 2000}},
            {"wardrobe", -571.37268066406, 649.6953125, 142.03210449219},
        }
    },
    ["Normal_flat"] = {
        {
            {"entry", 342.23474121094, 437.68603515625, 149.380859375},
            {"chest", 338.65530395508, 428.56219482422, 145.57086181641, _config = {weight = 2000}},
            {"wardrobe", 334.65530395508, 428.56219482422, 145.57086181641},
        }
    },
    ["Normal_flat_2"] = {
        {
            {"entry", 117.31230926514, 559.31719970703, 184.30488586426},
            {"chest", 118.58416748047, 566.38763427734, 176.69715881348, _config = {weight = 2000}},
            {"wardrobe", 122.20277404785, 549.11993408203, 180.49708557129},
        }
    },
    ["Rich_Home"] = {
        {
            {"entry", 1396.4229736328,1144.08984375,114.37162780762},
            {"chest", 1396.4217529297,1132.05859375,114.37160491943, _config = {weight = 4000}},
            {"wardrobe", 1403.1036376953,1149.7423095703,118.15335845947},
        }
    },
    ["lester_house"] = {
        {
            {"entry", 1273.8759765625, -1718.9895019532, 54.771446228028},
            {"chest", 1270.700805664, -1709.765258789, 54.771450042724, _config = {weight = 2000}},
            {"wardrobe", 1277.1137695312, -1714.263671875, 55.419612884522},
            {"gametable", 1272.0603027344, -1712.1853027344, 54.771446228028}
        }
    },
    ["barn"] = {
        {
            {"entry", 1930.2062988281, 4631.7758789063, 40.471450805664},
            {"chest", 1932.2093505859, 4611.7163085938, 40.471446990967, _config = {weight = 4000}},
            {"wardrobe", 1923.6986083984, 4627.6103515625, 43.981449127197}
        }
    },
    ["farmranch"] = {
        {
            {"entry", 2453.2983398438, 4970.375, 46.810558319092},
            {"chest", 2455.2749023438, 4972.37890625, 46.810211181641, _config = {weight = 4000}},
            {"wardrobe", 2442.8930664063, 4971.7592773438, 46.810592651367},
        }
    },
    ["soa"] = {
        {
            {"entry", 981.08612060547, -102.24370574951, 74.845123291016},
            {"chest", 977.10650634766, -104.13452911377, 74.845191955566, _config = {weight = 4000}},
            {"wardrobe", 972.19714355469, -99.043754577637, 74.847030639648},
        }
    },
    ["lostmc"] = {
        {
            {"entry", 973.35333251953,-117.13001251221,74.971214294434},
            {"chest", 995.08880615234,-124.62696075439,74.425842285156, _config = {weight = 4000}},
            {"wardrobe", 991.06121826172,-111.38049316406,74.976127624512}
        }
    },
    ["bloods"] = {
        {
            {"entry", 8.4985198974609, 540.74157714844, 176.02734375},
            {"chest", 1.1565480232239, 529.73992919922, 170.61885070801, _config = {weight = 4000}},
            {"wardrobe", 9.7121553421021, 530.54577636719, 174.64291381836},
        }
    },
    ["legion"] = {
        {
            {"entry", 159.34970092773, -1055.02734375, 60.939098358154},
            {"chest", 170.32943725586, -1055.0239257813, 60.938823699951, _config = {weight = 4000}},
            {"wardrobe", 166.9504699707, -1053.0654296875, 60.948703765869},
        }
    },
    ["gruppe_bunker"] = {
        {
            {"entry", 471.13076782227, 4800.9204101563, -53.993865966797},
            {"chest", 352.23223876953, 4874.27734375, -60.793746948242, _config = {weight = 4000}},
            {"wardrobe", 459.36920166016, 4828.7583007813, -58.993785858154},
            {"gametable", 364.6044921875, 4841.4790039063, -58.99938583374}
        }
    },
    ["paletodealership"] = {
        {
            {"entry", 116.6466293335, 6429.8178710938, 38.2093582153321},
            {"chest", 101.10063934326, 6433.8100585938, 38.246063232422, _config = {weight = 4000}},
            {"wardrobe", 97.913230895996, 6430.7221679688, 38.245990753174}
        }
    },
    ["murietta"] = {
        {
            {"entry", 265.99063110352, -1007.1249389648, -100.9670715332},
            {"chest", 265.74948120117, -999.33325195313, -99.008689880371, _config = {weight = 4000}},
            {"wardrobe", 259.97561645508, -1004.0410766602, -99.012496948242}
        }
    },
    -- 152.29430000" y="-1004.39100000" z="-100.00000000
    ["acadiusoffice"] = {
        {
            {"entry", -141.4966, -620.8292, 168.8204},
            {"chest", -142.14228820801, -645.21752929688, 168.82049560547, _config = {weight = 4000}},
            {"wardrobe", -132.58071899414, -632.99072265625, 168.82051086426}
        }
    },
    ["iaafacility"] = {
        {
            {"entry", 2154.9191894531, 2921.0004882813, -61.902435302734},
            {"chest", 2136.0759277344, 2925.68359375, -61.901870727539, _config = {weight = 4000}},
            {"wardrobe", 2131.7797851563, 2925.7182617188, -61.901874542236}
        }
    },
    ["iaaserverroom"] = {
        {
            {"entry", 2158.1184082032, 2920.9382324218, -81.075386047364},
            {"chest", 2178.3283691406, 2918.0617675781, -81.075233459473, _config = {weight = 4000}},
            {"wardrobe", 2173.0263671875, 2914.8747558594, -81.075355529785}
        }
    },
    ["mtchilliadbunker"] = {
        {
            {"entry", 1256.2868652344, 4798.3833007812, -39.471000671386},
            {"chest", 563.62982177734, 5965.9165039063, -157.86595153809, _config = {weight = 4000}},
            {"wardrobe", 559.41070556641, 5964.02734375, -157.86585998535}
        }
    },
    ["submarine"] = {
        {
            {"entry", -2041.9237060547, -1031.9086914063, 2.5845317840576},
            {"chest", -2030.0844726562,-1041.2463378906,2.5663452148438, _config = {weight = 4000}},
            {"wardrobe", -2026.5361328125,-1031.5262451172,2.5663154125214}
        }
    },
    ["playboymansion"] = {
        {
            {"entry", -1501.2606201172, 104.13105010986, 55.657718658447},
            {"chest", -1510.1336669922, 103.29749298096, 52.2408065795961, _config = {weight = 4000}},
            {"wardrobe", -1515.0290527344, 109.79512786865, 51.847797393799}
        }
    },
    ["bahamamama"] = {
        {
            {"entry", -1395.6340332031, -594.85949707031, 30.319553375244},
            {"chest", -1382.1014404297, -613.99145507813, 31.497926712036, _config = {weight = 4000}},
            {"wardrobe", -1404.1616210938, -606.73724365234, 30.319549560547}
        }
    },
    ["vineyard_mansion"] = {
        {
            {"entry", -1886.9653320313, 2054.0451660156, 140.98406982422},
            {"chest", -1879.2862548828, 2062.7849121094, 135.91511535645, _config = {weight = 4000}},
            {"wardrobe", -1887.1943359375, 2070.3208007813, 145.57389831543}
        }
    },
    ["marlowe_resort"] = {
        {
            {"entry", -1516.8581542969, 849.24224853516, 181.55108642578},
            {"chest", -1497.6689453125, 836.56854248047, 178.70307922363, _config = {weight = 4000}},
            {"wardrobe", -1510.1842041016, 849.4541015625, 181.53923034668}
        }
    },
    ["sandy_studio"] = {
        {
            {"entry", 2466.5788574219, 4092.4873046875, 37.994522094727},
            {"chest", 2466.9025878906, 4084.9458007813, 37.994518280029, _config = {weight = 4000}},
            {"wardrobe", 2468.9150390625, 4089.2126464844, 37.994518280029}
        }
    },
    ["diamond_penthouse"] = {
        {
            {"entry", 980.00, 57.0, 115.0},
            {"chest", 984.69372558594, 60.439826965332, 116.16412353516, _config = {weight = 4000}},
            {"wardrobe", 974.44250488281, 63.718231201172, 116.62840270996}
        }
    },
    ["popsdiner"] = {
        {
            {"entry", 1594.1871337891,6451.9516601563,26.014041900635},
            {"chest", 1585.6749267578,6458.8950195313,26.0140209198, _config = {weight = 4000}},
            {"wardrobe", 1595.4031982422,6454.1494140625,26.0140209198}
        }
    },
    ["designerpenthouse"] = {
        {
            {"entry", -288.10989379883,-722.70831298828,125.47334289551},
            {"chest", -269.73556518555,-731.54901123047,125.47332000732, _config = {weight = 4000}},
            {"wardrobe", -280.10089111328,-722.33679199219,125.46494293213}
        }
    },
    ["zenzytrailer"] = {
        {
            {"entry", 1760.2291259766,3300.1599121094,42.170841217041},
            {"chest", 1753.5579833984,3305.6948242188,42.170551300049, _config = {weight = 4000}},
            {"wardrobe", 1755.1975097656,3307.1096191406,42.170707702637}
        }
    },
    ["paletobunker"] = {
        {
            {"entry", 546.48529052734,6503.1762695312,14.019468307495},
            {"chest", 459.07986450195,6530.79296875,13.740805625916, _config = {weight = 4000}},
            {"wardrobe", 463.05841064453,6525.916015625,13.745553016663}
        }
    },
    ["marlowemansion"] = {
        {
            {"entry", -1410.3724365234,734.45928955078,183.88009643555},
            {"chest", -1444.9401855469,697.87292480469,189.48008728027, _config = {weight = 4000}},
            {"wardrobe", -1443.3067626953,701.67852783203,185.41011047363}
        }
    },
    ["diamondcasinooffices"] = {
        {
            {"entry", 2486.8830566406,-253.5715637207,-70.694328308105},
            {"chest", 2481.2424316406,-273.74774169922,-70.694267272949, _config = {weight = 4000}},
            {"wardrobe", 2487.4567871094,-274.48468017578,-70.694259643555}
        }
    },
    -- ["adminislandmansion"] = {
    --     {
    --         {"entry", 3514.0344238281,2541.0693359375,10.7200050354},
    --         {"chest", 3568.0939941406,2539.9877929688,5.9399967193604, _config = {weight = 4000}},
    --         {"wardrobe", 3542.1799316406,2543.82421875,9.0719089508057}
    --     }
    -- },
    ["cyberbar"] = {
        {
            {"entry", 340.84732055664,-937.02221679688,29.251461029053},
            {"chest", 325.01571655273,-927.3046875,29.251428604126, _config = {weight = 4000}},
            {"wardrobe", 336.04046630859,-909.17120361328,29.25630569458}
        }
    },
    ["sustanciavilla"] = {
        {
            {"entry", 3261.5932617188,-125.58735656738,15.738280296326},
            {"chest", 3268.9577636719,-139.05683898926,17.24974822998, _config = {weight = 4000}},
            {"wardrobe", 3265.5856933594,-138.43922424316,17.409982681274}
        }
    },
    ["lakevinewoodmansion"] = {
        {
            {"entry", -83.125717163086,834.78253173828,235.92178344727},
            {"chest", -84.710578918457,825.06286621094,235.71795654297, _config = {weight = 4000}},
            {"wardrobe", -83.546577453613,831.62615966797,235.71778869629}
        }
    },
    ["richmanmansion"] = {
        {
            {"entry", -1478.6995849609,-38.935134887695,56.946228027344},
            {"chest", -1471.4710693359,-33.186328887939,57.891944885254, _config = {weight = 4000}},
            {"wardrobe", -1467.7264404297,-45.452045440674,58.668262481689}
        }
    },
    ["autoexotic"] = {
        {
            {"entry", 543.54553222656,-196.75355529785,54.493186950684},
            {"chest", 543.88305664062,-200.51794433594,54.493190765381, _config = {weight = 4000}},
            {"wardrobe", 550.29321289062,-181.87899780273,54.493190765381}
        }
    },
    ["moafsgarage"] = {
        {
            {"entry", -359.25692749023,-156.57633972168,38.728717803955},
            {"chest", -351.04766845703,-155.40330505371,39.01358795166, _config = {weight = 4000}},
            {"wardrobe", -350.65603637695,-171.16458129883,39.015068054199}
        }
    },
    ["crastenburghotel"] = {
        {
            {"entry", -1206.2100830078,-195.26547241211,39.325164794922},
            {"chest", -1211.8596191406,-218.18292236328,39.322444915771, _config = {weight = 4000}},
            {"wardrobe", -1215.2258300781,-216.3035736084,39.32243347168}
        }
    },
    ["chiankskibunker"] = {
        {
            {"entry", 2883.73046875,4391.5727539062,50.768756866455},
            {"chest", 2850.9768066406,4447.2016601562,39.512351989746, _config = {weight = 4000}},
            {"wardrobe", 2846.4196777344,4442.2436523438,39.512340545654}
        }
    },
    ["callistohotel"] = {
        {
            {"entry", 394.27200317383,-1.2123773097992,91.935279846191},
            {"chest", 389.09878540039,-10.865704536438,86.67578125, _config = {weight = 4000}},
            {"wardrobe", 392.27746582031,-14.033180236816,91.935272216797}
        }
    },
    -- ["containerbunker"] = {
    --     {
    --         {"entry", 978.92016601562,-3190.8266601562,-17.306795120239},
    --         {"chest", 935.93981933594,-3208.8972167969,-17.227788925171, _config = {weight = 4000}},
    --         {"wardrobe", 939.17242431641,-3203.1650390625,-17.222480773926}
    --     }
    -- },
    ["callistohotelroom1"] = {
        {
            {"entry", 431.21740722656,-8.5368852615356,99.645698547363},
            {"chest", 435.08447265625,-10.004358291626,99.64582824707, _config = {weight = 1000}},
            {"wardrobe", 434.81967163086,-2.0772476196289,99.645820617676}
        }
    },
    ["callistohotelroom2"] = {
        {
            {"entry", 427.42092895508,-14.648552894592,99.646171569824},
            {"chest", 429.77252197266,-11.885464668274,99.646202087402, _config = {weight = 1000}},
            {"wardrobe", 429.31451416016,-19.916084289551,99.646331787109}
        }
    },
    ["callistohotelroom3"] = {
        {
            {"entry", 423.84030151367,-20.956195831299,99.645805358887},
            {"chest", 422.56777954102,-24.233165740967,99.645919799805, _config = {weight = 1000}},
            {"wardrobe", 425.77313232422,-18.037670135498,99.645851135254}
        }
    },
    ["callistohotelroom4"] = {
        {
            {"entry", 418.39828491211,-30.776266098022,99.64582824707},
            {"chest", 420.58038330078,-27.819927215576,99.645843505859, _config = {weight = 1000}},
            {"wardrobe", 420.09439086914,-35.538509368896,99.645988464355}
        }
    },
    ["callistohotelroom5"] = {
        {
            {"entry", 411.21487426758,-32.208637237549,99.645919799805},
            {"chest", 407.76129150391,-30.828662872314,99.645980834961, _config = {weight = 1000}},
            {"wardrobe", 413.87707519531,-33.87967300415,99.645957946777}
        }
    },
    ["callistohotelroom6"] = {
        {
            {"entry", 401.35400390625,-26.422069549561,99.645812988281},
            {"chest", 403.99966430664,-28.787637710571,99.645843505859, _config = {weight = 1000}},
            {"wardrobe", 396.4114074707,-28.341199874878,99.645965576172}
        }
    },
    ["callistohotelroom7"] = {
        {
            {"entry", 395.2848815918,-22.998613357544,99.645973205566},
            {"chest", 391.93469238281,-21.722166061401,99.645988464355, _config = {weight = 1000}},
            {"wardrobe", 398.00131225586,-24.591979980469,99.645904541016}
        }
    },
    ["callistohotelroom8"] = {
        {
            {"entry", 394.58181762695,-14.722852706909,99.64574432373},
            {"chest", 395.58981323242,-11.590873718262,99.645751953125, _config = {weight = 1000}},
            {"wardrobe", 392.59539794922,-17.730707168579,99.64574432373}
        }
    },
    ["callistohotelroom9"] = {
        {
            {"entry", 400.2060546875,-5.2060551643372,99.645866394043},
            {"chest", 397.95498657227,-7.5832586288452,99.64591217041, _config = {weight = 1000}},
            {"wardrobe", 398.1960144043,-0.038508873432875,99.646026611328}
        }
    },
    ["callistohotelroom10"] = {
        {
            {"entry", 403.72766113281,1.1136155128479,99.645919799805},
            {"chest", 404.85235595703,4.2975745201111,99.645973205566, _config = {weight = 1000}},
            {"wardrobe", 401.8141784668,-1.4637514352798,99.645973205566}
        }
    },
    ["callistohotelroom11"] = {
        {
            {"entry", 412.30041503906,9.5357322692871,99.645950317383},
            {"chest", 415.15243530273,8.3430194854736,99.646026611328, _config = {weight = 1000}},
            {"wardrobe", 409.10537719727,11.330720901489,99.643348693848}
        }
    },
    ["callistohotelroom12"] = {
        {
            {"entry", 422.02099609375,3.7790365219116,99.645729064941},
            {"chest", 427.04254150391,5.7697777748108,99.645881652832, _config = {weight = 1000}},
            {"wardrobe", 419.1789855957,6.1736235618591,99.64575958252}
        }
    },
    ["callistohotelroom13"] = {
        {
            {"entry", 428.17547607422,0.20387944579124,99.64591217041},
            {"chest", 431.31549072266,-0.97994077205658,99.646003723145, _config = {weight = 1000}},
            {"wardrobe", 425.60070800781,2.0341413021088,99.645950317383}
        }
    },
    ["yellowjack"] = {
        {
            {"entry", 1981.1452636719,3051.212890625,50.501873016357},
            {"chest", 1988.5825195312,3046.6079101562,50.501522064209, _config = {weight = 4000}},
            {"wardrobe", 1989.6413574219,3049.4240722656,50.501659393311}
        }
    },
    ["senorabunker"] = {
        {
            {"entry", 2670.7531738281,2182.0368652344,20.653453826904},
            {"chest", 2710.4008789062,2158.2719726562,5.1848292350769, _config = {weight = 4000}},
            {"wardrobe", 2715.0080566406,2152.5031738281,5.184826374054}
        }
    },
    ["cmgtraderdocks"] = {
        {
            {"entry", 1199.5524902344,-3253.5249023438,7.0878028869629},
            {"chest", 1188.296875,-3309.81640625,5.5154571533203, _config = {weight = 4000}},
            {"wardrobe", 1195.9677734375,-3306.5961914062,5.5154666900635}
        }
    },
    ["johnnysgarage"] = {
        {
            {"entry", -205.03314208984,-1330.8591308594,23.142559051514},
            {"chest", -206.16110229492,-1335.4908447266,23.142560958862, _config = {weight = 4000}},
            {"wardrobe", -209.77139282227,-1327.0004882812,23.142560958862}
        }
    },
    ["rockfordhillsmansion"] = {
        {
            {"entry", -845.3916015625,-25.063016891479,40.39767074585},
            {"chest", -846.92370605469,-39.969146728516,39.43675994873, _config = {weight = 4000}},
            {"wardrobe", -846.40942382812,-15.762069702148,39.594757080078}
        }
    },
    ["eastgalileobunker"] = {
        {
            {"entry", 99.142433166504,1239.4709472656,207.17411804199},
            {"chest", 89.344345092773,1236.9749755859,207.17419433594, _config = {weight = 4000}},
            {"wardrobe", 96.412101745605,1243.4742431641,207.17411804199}
        }
    },
    ["vinewoodcustoms"] = {
        {
            {"entry", 113.09886169434,258.52310180664,112.88075256348},
            {"chest", 106.23351287842,261.40560913086,112.88075256348, _config = {weight = 4000}},
            {"wardrobe", 105.10748291016,259.50881958008,112.88075256348}
        }
    },
    ["carshow"] = {
        {
            {"entry", 57.063743591309,-1011.4315185547,29.486623764038},
            {"chest", 51.094223022461,-1018.4241333008,29.486637115479, _config = {weight = 4000}},
            {"wardrobe", 52.108207702637,-1024.1929931641,29.486646652222}
        }
    },
    ["irishpub"] = {
        {
            {"entry", 828.79626464844,-111.47762298584,79.774574279785},
            {"chest", 829.00390625,-118.03957366943,80.432907104492, _config = {weight = 4000}},
            {"wardrobe", 823.86340332031,-113.16404724121,80.432899475098}
        }
    },
    ["elyisianbunker"] = {
        {
            {"entry", 492.94564819336,-2758.1804199219,-12.402626991272},
            {"chest", 487.73428344727,-2763.1904296875,-12.40145778656, _config = {weight = 4000}},
            {"wardrobe", 483.65286254883,-2761.5261230469,-12.401446342468}
        }
    },
    ["rockfordrecords"] = {
        {
            {"entry", -997.68701171875,-270.2688293457,39.04020690918},
            {"chest", -981.78997802734,-260.52752685547,38.472599029541, _config = {weight = 4000}},
            {"wardrobe", -976.88104248047,-257.40197753906,38.472648620605}
        }
    },
    ["constructionbunker"] = {
        {
            {"entry", 2847.5375976562,2792.7863769531,33.75350189209},
            {"chest", 2853.9907226562,2793.970703125,33.753337860107, _config = {weight = 4000}},
            {"wardrobe", 2858.3637695312,2797.3669433594,33.753295898438}
        }
    },
    ["gamblingden"] = {
        {
            {"entry", 1157.669921875,-436.25500488281,67.172744750977},
            {"chest", 1153.50390625,-429.21646118164,62.225044250488, _config = {weight = 4000}},
            {"wardrobe", 1155.2410888672,-436.67272949219,62.225036621094}
        }
    },
    ["rexdiner"] = {
        {
            {"entry", 2561.1042480469,2586.728515625,38.111965179443},
            {"chest", 2555.4721679688,2585.5427246094,38.111953735352, _config = {weight = 4000}},
            {"wardrobe", 2552.5629882812,2584.3444824219,38.111953735352}
        }
    },
    ["vanillaunicorn"] = {
        {
            {"entry", 96.406875610352,-1287.0294189453,29.268686294556},
            {"chest", 106.86894226074,-1305.6394042969,28.768804550171, _config = {weight = 4000}},
            {"wardrobe", 105.3317565918,-1303.1796875,28.76880645752}
        }
    },
    ["casinobunker"] = {
        {
            {"entry", 1014.5866088867,136.90536499023,51.693027496338},
            {"chest", 1042.1051025391,191.29693603516,51.249801635742, _config = {weight = 4000}},
            {"wardrobe", 1049.1142578125,193.68257141113,51.249809265137}
        }
    },
    ["rockyisland"] = {
        {
            {"entry", 3757.7680664062,-1571.701171875,4.0253701210022},
            {"chest", 3764.9150390625,-1573.3651123047,4.0242447853088, _config = {weight = 4000}},
            {"wardrobe", 3762.6474609375,-1578.4024658203,4.0258784294128}
        }
    },
    ["japaneserestaurant"] = {
        {
            {"entry", -151.62989807129,295.84265136719,98.900901794434},
            {"chest", -144.02285766602,296.43283081055,98.872406005859, _config = {weight = 4000}},
            {"wardrobe", -139.78187561035,297.52160644531,98.876518249512}
        }
    },
    ["cayopericovilla"] = {
        {
            {"entry", 4991.224609375,-5715.9741210938,19.880197525024},
            {"chest", 5026.2006835938,-5738.0678710938,17.865600585938, _config = {weight = 4000}},
            {"wardrobe", 5030.7309570313,-5736.8139648438,17.865606307983}
        }
    },
    ["hoswarehouse"] = {
        {
            {"entry", 939.33697509766,-1487.744140625,30.102373123169},
            {"chest", 943.07299804688,-1476.2673339844,30.102432250977, _config = {weight = 4000}},
            {"wardrobe", 938.39617919922,-1462.0085449219,30.401239395142}
        }
    },
    ["venicebeachhouse"] = {
        {
            {"entry", -1986.8712158203,-504.88442993164,12.178228378296},
            {"chest",-1993.0152587891,-506.67324829102,12.17865562439, _config = {weight = 4000}},
            {"wardrobe", -1980.9757080078,-499.56069946289,20.732807159424}
        }
    },
    ["midnightclubgarage"] = {
        {
            {"entry", 826.24346923828,-944.62274169922,22.087617874146},
            {"chest", 826.43, -948.78, 21.09, _config = {weight = 4000}},
            {"wardrobe", 826.15, -953.69, 21.09}
        }
    },
    ["heliportbunker"] = {
        {
            {"entry", 1070.7869873047,2364.0300292969,-13.478886604309},
            {"chest", 1117.6342773438,2364.0791015625,-14.075545310974, _config = {weight = 4000}},
            {"wardrobe", 1115.1663818359,2354.703125,-14.078614234924}
        }
    },
    ["fortuneclub"] = {
        {
            {"entry", -384.59854125977,214.32431030273,83.654899597168},
            {"chest", -391.01712036133,199.43200683594,83.655799865723, _config = {weight = 4000}},
            {"wardrobe", -380.76672363281,205.10719299316,83.654983520508}
        }
    },
    ["undergroundcarpark"] = {
        {
            {"entry", 945.63427734375,-1697.6010742188,30.085176467896},
            {"chest", 904.68212890625,-1803.103515625,22.34162902832, _config = {weight = 4000}},
            {"wardrobe", 904.66204833984,-1805.8647460938,22.341636657715}
        }
    },
    ["importgarage"] = {
        {
            {"entry", 950.28045654297,-964.58166503906,39.506893157959},
            {"chest", 950.72125244141,-968.90435791016,39.506935119629, _config = {weight = 4000}},
            {"wardrobe", 956.35638427734,-966.14318847656,39.506893157959}
        }
    },
    ["pierarcade"] = {
        {
            {"entry", -1653.0521240234,-1081.0095214844,13.160420417786},
            {"chest", -1647.2553710938,-1073.2409667969,13.763834953308, _config = {weight = 4000}},
            {"wardrobe", -1645.9395751953,-1071.9356689453,13.763834953308}
        }
    },
    ["recordastudios"] = {
        {
            {"entry", 474.5546875,-102.60304260254,63.160037994385},
            {"chest", 492.28164672852,-69.770530700684,58.160190582275, _config = {weight = 4000}},
            {"wardrobe", 487.345703125,-83.701049804688,58.190814971924}
        }
    },
    ["hayesautoshop"] = {
        {
            {"entry", -1433.1729736328,-449.01116943359,35.90970993042},
            {"chest", -1428.6240234375,-457.82830810547,35.909690856934, _config = {weight = 4000}},
            {"wardrobe", -1427.9460449219,-459.61923217773,35.909706115723}
        }
    },
    ["catcafe"] = {
        {
            {"entry", -581.02880859375,-1068.2484130859,22.344202041626},
            {"chest", -597.63055419922,-1053.4775390625,22.344198226929, _config = {weight = 4000}},
            {"wardrobe", -597.30511474609,-1049.7796630859,22.344186782837}
        }
    },
    ["triadsrecords"] = {
        {
            {"entry", -821.21929931641,-704.45617675781,28.060125350952},
            {"chest", -816.78088378906,-697.28527832031,32.14086151123, _config = {weight = 4000}},
            {"wardrobe", -816.46960449219,-701.18511962891,32.140644073486}
        }
    },
    -- ["ldnuhq"] = {
    --     {
    --         {"entry", -589.62390136719,-710.35559082031,36.283939361572},
    --         {"chest", -593.52496337891,-708.31396484375,121.60414886475, _config = {weight = 4000}},
    --         {"wardrobe", -600.92224121094,-712.17895507812,121.60451507568}
    --     }
    -- },
    ["imperialmanor"] = {
        {
            {"entry", -50.248023986816,361.37072753906,113.07323455811},
            {"chest", -100.82515716553,386.3828125,113.28322601318, _config = {weight = 4000}},
            {"wardrobe", -72.137939453125,363.77890014648,112.44764709473}
        }
    },
    ["mile_high_club"] = {
        {
            {"entry", -163.69242858887,-1004.7766723633,29.512685775757},
            {"chest", -177.01672363281,-999.283203125,29.512588500977, _config = {weight = 4000}},
            {"wardrobe", -176.2440032959,-995.39471435547,29.512588500977}
        }
    },
    ["mile_high_club_apartment1"] = {
        {
            {"entry", -154.44747924805,-962.24066162109,239.23023986816},
            {"chest", -154.02090454102,-974.11853027344,238.6297454834, _config = {weight = 4000}},
            {"wardrobe", -145.66015625,-947.35034179688,238.02949523926}
        }
    },
    ["mile_high_club_apartment2"] = {
        {
            {"entry", -161.26763916016,-994.15301513672,252.44859313965},
            {"chest", -165.07902526855,-991.02239990234,244.82516479492, _config = {weight = 4000}},
            {"wardrobe", -172.77079772949,-995.16375732422,248.62532043457}
        }
    },
    -- ["Shard_Apartment_1"] = {
    --     {
    --         {"entry", 461.18688964844,-596.48211669922,58.798290252686},
    --         {"chest", 452.74893188477,-610.62762451172,58.162540435791, _config = {weight = 4000}},
    --         {"wardrobe", 451.28262329102,-612.11474609375,61.562896728516},
    --     }
    -- },
    -- ["Shard_Apartment_2"] = {
    --     {
    --         {"entry", 461.77163696289,-594.16821289062,66.39714050293},
    --         {"chest", 453.7258605957,-608.78240966797,65.756568908691, _config = {weight = 4000}},
    --         {"wardrobe", 452.14819335938,-610.22796630859,69.150268554688},
    --     }
    -- },
    -- ["Shard_Apartment_3"] = {
    --     {
    --         {"entry", 461.82894897461,-594.39172363281,75.737030029297},
    --         {"chest", 454.19259643555,-608.80511474609,75.139892578125, _config = {weight = 4000}},
    --         {"wardrobe", 452.17446899414,-610.31909179688,78.536895751953},
    --     }
    -- },
    -- ["Shard_Apartment_4"] = {
    --     {
    --         {"entry", 462.95443725586,-594.28393554688,84.38240814209},
    --         {"chest", 455.1432800293,-608.74853515625,83.779670715332, _config = {weight = 4000}},
    --         {"wardrobe", 453.31704711914,-610.27435302734,87.182403564453},
    --     }
    -- },
    -- ["Shard_Apartment_5"] = {
    --     {
    --         {"entry", 462.70040893555,-605.90435791016,123.45571899414},
    --         {"chest", 454.66098022461,-620.17340087891,122.84971618652, _config = {weight = 4000}},
    --         {"wardrobe", 453.05096435547,-621.52661132812,126.25010681152},
    --     }
    -- },
    -- ["Shard_Apartment_6"] = {
    --     {
    --         {"entry", 464.171875,-602.90435791016,133.826171875},
    --         {"chest", 456.20028686523,-617.29528808594,133.26203918457, _config = {weight = 4000}},
    --         {"wardrobe", 454.30993652344,-618.58093261719,136.55215454102},
    --     }
    -- },
    -- ["Shard_Apartment_7"] = {
    --     {
    --         {"entry", 464.33703613281,-603.19226074219,142.44171142578},
    --         {"chest", 455.88305664062,-617.40209960938,141.80424499512, _config = {weight = 4000}},
    --         {"wardrobe", 454.20248413086,-618.74267578125,145.24765014648},
    --     }
    -- },
    -- ["Shard_Apartment_8"] = {
    --     {
    --         {"entry", 466.02920532227,-603.20581054688,168.93962097168},
    --         {"chest", 458.2822265625,-617.83837890625,168.29895019531, _config = {weight = 4000}},
    --         {"wardrobe", 455.81607055664,-619.05725097656,171.69929504395},
    --     }
    -- },
    -- ["Shard_Apartment_9"] = {
    --     {
    --         {"entry", 467.39520263672,-603.61102294922,189.85636901855},
    --         {"chest", 459.00152587891,-617.97808837891,189.21676635742, _config = {weight = 4000}},
    --         {"wardrobe", 457.48187255859,-619.38165283203,192.63732910156},
    --     }
    -- },
    -- ["Shard_Apartment_10"] = {
    --     {
    --         {"entry", 467.77090454102,-603.48724365234,200.34530639648},
    --         {"chest", 459.78619384766,-617.92303466797,199.71809387207, _config = {weight = 4000}},
    --         {"wardrobe", 457.76898193359,-619.30572509766,203.10870361328},
    --     }
    -- },
    ["jurassic_jackpot"] = {
        {
            {"entry", -264.12149047852,-906.3427734375,32.314155578613},
            {"chest", -262.27136230469,-907.36413574219,46.270446777344, _config = {weight = 4000}},
            {"wardrobe", -265.9635925293,-916.17852783203,46.270469665527},
        }
    },
    ["iaa_bunker"] = {
        {
            {"entry", 2130.7780761719,2919.7919921875,-61.901256561279},
            {"chest", 2067.4753417969,2998.3481445312,-67.701522827148, _config = {weight = 4000}},
            {"wardrobe", 2072.7365722656,2994.6721191406,-67.701522827148},
        },
        useBuckets = true,
    },
    ["casinohotelroom"] = {
        {
            {"entry", 914.89459228516,-0.027502121403813,106.51563262939},
            {"chest", 914.54119873047,-6.4617795944214,106.51573944092, _config = {weight = 1000}},
            {"wardrobe", 916.54309082031,-2.12637758255,106.51559448242}
        }
    },
    ["redstunershop"] = {
        {
            {"entry", -689.65447998047,-2431.4360351562,17.666076660156},
            {"chest", -689.79888916016,-2426.9409179688,17.666076660156, _config = {weight = 4000}},
            {"wardrobe", -687.73345947266,-2428.1958007812,17.666076660156}
        }
    },
    ["aldentes"] = {
        {
            {"entry", -1187.6668701172,-1386.6264648438,4.5378546714783},
            {"chest", -1194.7724609375,-1387.6647949219,4.5378489494324, _config = {weight = 4000}},
            {"wardrobe", -1191.6016845703,-1386.3123779297,4.5378494262695}
        }
    },
    ["cmgtraderhq"] = {
        {
            {"entry", -1267.8134765625,-2964.4543457031,-48.489822387695},
            {"chest", -1298.8801269531,-3033.1052246094,-48.489974975586, _config = {weight = 4000}},
            {"wardrobe", -1293.6870117188,-3021.9143066406,-48.490943908691}
        }
    },
    ["angelsofdeath"] = {
        {
            {"entry", 268.9365234375,2984.8234863281,43.084030151367},
            {"chest", 293.4345703125,3031.4494628906,43.147731781006, _config = {weight = 4000}},
            {"wardrobe", 271.40103149414,3034.9929199219,43.145427703857}
        }
    },
    ["sabrehq"] = {
        {
            {"entry", -3025.6103515625,78.805686950684,11.612833023071},
            {"chest", -3033.470703125,89.354736328125,12.347693443298, _config = {weight = 4000}},
            {"wardrobe", -3027.0651855469,86.300712585449,12.819538116455}
        }
    },
    ["blackbunker"] = {
        {
            {"entry", 3141.2639160156,5377.4296875,26.147201538086},
            {"chest", 3084.6286621094,5465.62890625,23.646341323853, _config = {weight = 4000}},
            {"wardrobe", 3084.5258789062,5458.4770507812,23.688543319702}
        }
    },
    ["luciano"] = {
        {
            {"entry", -1036.2429199219,-1397.6600341797,5.570384979248},
            {"chest", -1038.8759765625,-1363.4050292969,9.4585609436035, _config = {weight = 4000}},
            {"wardrobe", -1036.2166748047,-1356.8813476562,9.4597024917603}
        }
    },
    ["lostmcclubhouseseol"] = {
        {
            {"entry", -692.893799, -1185.196533, 10.715141},
            {"chest", -701.15521240234,-1182.1597900391,6.6327209472656, _config = {weight = 4000}},
            {"wardrobe", -695.55316162109,-1179.2581787109,6.6327505111694}
        }
    },
    ["bossvilla"] = {
        {
            {"entry", -1035.5853271484,222.23066711426,64.61051940918},
            {"chest", -1044.7742919922,215.44996643066,58.990653991699, _config = {weight = 4000}},
            {"wardrobe", -1033.0401611328,226.86622619629,68.216896057129}
        }
    },
    ["rockbaymansion"] = {
        {
            {"entry", -2327.9958496094,4405.947265625,24.058959960938},
            {"chest", -2331.7622070312,4400.490234375,19.348642349243, _config = {weight = 4000}},
            {"wardrobe", -2322.2927246094,4415.3745117188,19.343585968018}
        }
    },
}

-- define home clusters
cfg.homes = {
    ["Rundown Trailor"] = {
        slot = "trevor_trailer",
        entry_point = {1973.9703369141,3814.8142089844,33.424438476562},
        buy_price = 16000000,
        sell_price = 400000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/trevorstrailer.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1993.027344, 3795.907715, 25.570366), vector3(1945.780151, 3845.614014, 53.646896)},
    },
    ["1 Jameson St"] = {
        slot = "Cheap_Home",
        entry_point = {500.54632568359, -1697.3969726563, 29.789241790771},
        buy_price = 16000000,
        sell_price = 400000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["15 Paleto Blvd"] = {
        slot = "Cheap_Home",
        entry_point = {25.990934371948, 6602.0546875, 32.470436096191},
        buy_price = 20000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["36 Paleto Blvd"] = {
        slot = "Cheap_Home",
        entry_point = {-347.27276611328, 6225.0146484375, 31.884098052979},
        buy_price = 16000000,
        sell_price = 400000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Lowside House"] = {
        slot = "franklin_house",
        entry_point = {-13.843012809753, -1444.6134033203, 30.646482467651},
        buy_price = 2400000,
        sell_price = 600000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-36.463173, -1457.425049, 16.083134), vector3(-1.067712, -1411.250854, 46.779518)},
    },
    ["Farm Ranch"] = {
        slot = "farmranch",
        entry_point = {2451.94921875,4968.955078125,47.571586608887},
        buy_price = 2400000,
        sell_price = 600000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/smallranch.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(2409.825439, 4926.788086, 27.018501), vector3(2486.607910, 5026.640625, 62.449623)},
    },
    ["Beach Home"] = {
        slot = "Beach_Home",
        entry_point = {-1149.7276611328, -1522.0582275391, 10.628049850464},
        buy_price = 50000000,
        sell_price = 600000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachhouse.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-1124.013062, -1507.302002, -12.303637), vector3(-1169.936646, -1557.413940, 29.670025)},
    },
    ["Torture Room"] = {
        slot = "torture_01",
        entry_point = {1047.8607177734, -2055.7666015625, 35.929195404053},
        buy_price = 2400000,
        sell_price = 600000,
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "TortureRoom",
        bounds = {vector3(1064.999512, -2021.560791, 14.483540), vector3(1008.278503, -2067.727051, 67.639755)},
    },
    ["Arcade"] = {
        slot = "arcade",
        entry_point = {759.15686035156, -816.11901855469, 26.297384262085},
        buy_price = 2400000,
        sell_price = 600000,
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "Arcade",
        bounds = {vector3(831.087036, -671.007690, -4.518215), vector3(647.117432, -866.584717, 48.085320)},
    },
    ["West Vinewood Flat"] = {
        slot = "high_tier_apart",
        entry_point = {-635.665, 44.155, 42.697},
        buy_price = 50000000,
        sell_price = 1250000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png", --was 5
        blipId = 374,
        blipColour = 2
    },
    ["Del Perro Flat"] = {
        slot = "high_tier_apart",
        entry_point = {-1446.769, -538.531, 34.740},
        buy_price = 50000000,
        sell_price = 1250000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png", --was 5
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills Flat"] = {
        slot = "high_tier_apart",
        entry_point = {-937.27130126953, -379.25308227539, 38.961296081543},
        buy_price = 50000000,
        sell_price = 1250000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png", --was 5
        blipId = 374,
        blipColour = 2
    },
    ["Milton Flat"] = {
        slot = "medium_tier_apart",
        entry_point = {-770.921, 312.537, 86.098},
        buy_price = 30000000,
        sell_price = 2000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png", --was 4
        blipId = 374,
        blipColour = 2
    },
    ["Alta Flat"] = {
        slot = "Modern_Apt_2",
        entry_point = {-47.686511993408, -585.67419433594, 37.953033447266},
        buy_price = 8000000,
        sell_price = 2000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-86.714142, -646.176697, 17.762077), vector3(34.106647, -548.386353, 120.293533)},
    },
    ["Lester's House"] = {
        slot = "lester_house",
        entry_point = {1275.2917480469, -1722.2056884766, 55.655071258545},
        buy_price = 2400000,
        sell_price = 600000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1293.258545, -1692.293823, 37.068916), vector3(1246.625610, -1744.234009, 79.747101)},
    },
    ["Grapevine Barn"] = {
        slot = "barn",
        entry_point = {1929.9483642578, 4635.3823242188, 40.933601379395},
        buy_price = 2400000,
        sell_price = 600000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapevinebarn.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "GrapevineBarn",
        bounds = {vector3(1941.184082, 4650.848633, 37.629135), vector3(1911.763306, 4596.704590, 55.861374)},
    },
    ["Vinewood Elite"] = {
        slot = "Normal_flat",
        entry_point = {-109.87996673584, 502.23614501953, 143.47735595703},
        buy_price = 70000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(368.039398, 475.087219, 134.626312), vector3(297.673584, 390.910736, 167.168213)},
    },
    ["Vinewood Less Elite"] = {
        slot = "Normal_flat_2",
        entry_point = {119.38088989258, 564.86901855469, 184.95930480957},
        buy_price = 50000000,
        sell_price = 3000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(95.104927, 593.774658, 162.271942), vector3(147.274460, 520.000549, 212.663910)},
    },
    ["Whyspermount Dr 24"] = {
        slot = "Rich_flat_2",
        entry_point = {-558.9833984375, 665.10632324219, 145.27464294434},
        buy_price = 30000000,
        sell_price = 3000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-600.313660, 685.534241, 127.115250), vector3(-536.320557, 628.008179, 166.056122)},
    },
    ["Wild Oats Dr 1"] = {
        slot = "Expensive_flat",
        entry_point = {-175.36395263672,502.60864257812,137.42070007324},
        buy_price = 60000000,
        sell_price = 3000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-148.016190, 542.151733, 118.551270), vector3(-208.723282, 452.377747, 163.719635)},
    },
    ["Martin Madrazo's Ranch"] = {
        slot = "Rich_Home",
        entry_point = {1394.4885253906,1143.98828125,114.40654754639},
        buy_price = 300000000,
        sell_price = 3000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
		streamFolderName = "MartinMadrazosRanch",
        bounds = {vector3(1530.409424, 1242.336304, 66.387695), vector3(1317.323608, 1015.480042, 146.811935)}
    },
    ["Michaels House"] = {
        slot = "mansion",
        entry_point = {-818.27014160156, 177.49227905273, 73.222503662109},
        buy_price = 30000000,
        sell_price = 3000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/michaleshouse.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-782.330139, 212.298462, 59.329021), vector3(-835.380737, 144.937775, 101.977112)},
    },
    ["Luxury Autos dealership"] = {
        slot = "luxaryauto",
        entry_point = {-776.90972900391, -244.62014770508, 37.817858886719},
        buy_price = 30000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "LuxuryAutosDealership",
        bounds = {vector3(-745.487305, -144.764099, 24.698692), vector3(-832.820129, -262.669312, 89.609268)},
    },
    ["Tongva Villa"] = {
        slot = "tongvavilla",
        entry_point = {-2588.498046875, 1911.2523193359, 167.49893188477},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/tongavilla.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "TongvaVilla",
        bounds = {vector3(-2658.279541, 1969.717285, 135.997833), vector3(-2536.075684, 1849.334473, 188.764282)},
    },
    ["Tequila Bar"] = {
        slot = "tequila",
        entry_point = {-564.55755615234, 275.75860595703, 83.105659484863},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/tequilabar.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "TequilaBar",
        bounds = {vector3(-599.405396, 320.479950, 67.823303), vector3(-516.806641, 251.899323, 107.064209)},
    },
    ["Warehouse Autos"] = {
        slot = "marabuntaauto",
        entry_point = {822.65814208984, -2339.5297851563, 30.334163665771},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/warehouseautos.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "WarehouseAutos",
        bounds = {vector3(869.760193, -2297.583496, 12.883955), vector3(770.796570, -2384.144531, 59.349350)},
    },
    ["Medical Weed"] = {
        slot = "medicalweed",
        entry_point = {375.17645263672, -821.76507568359, 29.302680969238},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "MedicalWeed",
        bounds = {vector3(405.883118, -852.265625, 17.368057), vector3(357.880157, -791.855530, 47.705383)},
    },
    ["Life Invader Office"] = {
        slot = "fgoffice",
        entry_point = {-1081.5358886719, -260.98126220703, 38.102253723145},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lifeinvader.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-1117.340820, -284.238159, 15.529915), vector3(-1019.293030, -196.825699, 61.970158)},
    },
    ["FIB HQ"] = {
        slot = "fib_oldlsd",
        entry_point = {2521.8317871094, -415.61172485352, 95.123901367188},
        buy_price = 250000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fib.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "FIBHQ",
        taxExempt = true,
        bounds = {vector3(2557.634521, -301.369446, 64.137299), vector3(2444.649170, -473.573181, 150.969437)},
    },
    ["Villa Island"] = {
        slot = "villaisland",
        entry_point = {-5861.2446289063, 1151.4503173828, 7.979697227478},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "VillaIsland",
        bounds = {vector3(-5758.682617, 1244.303223, -25.125294), vector3(-5952.185059, 1086.720703, 54.573616)},
    },
    ["Vapid Dealership"] = {
        slot = "vapid",
        entry_point = {-202.1441192627, -1157.7716064453, 23.489591598511},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "VapidDealership",
        bounds = {vector3(-126.289787, -1197.600342, 17.582930), vector3(-251.446213, -1146.952026, 39.959888)},
    },
    ["Designer House"] = {
        slot = "designerhouse",
        entry_point = {-2603.0107421875, 1686.05859375, 142.96749572754},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "DesignerHouse",
        bounds = {vector3(-2571.051270, 1734.327393, 116.415329), vector3(-2662.114258, 1638.697754, 170.611115)},
    },
    ["Tanner HQ"] = {
        slot = "tannerhq",
        entry_point = {-915.30810546875, -2038.2684326172, 9.4049081802368},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "TannerHQ",
        bounds = {vector3(-873.153076, -1996.001465, -12.595062), vector3(-994.417358, -2096.004150, 34.568314)},
    },
    ["Modern House"] = {
        slot = "modernhouse",
        entry_point = {-2666.6352539063, 1326.3610839844, 147.8772277832},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "ModernHouse",
        bounds = {vector3(-2711.538818, 1359.597656, 113.920349), vector3(-2626.446533, 1293.962646, 164.717041)},
    },
    ["Beach Resort"] = {
        slot = "finalfantasy",
        entry_point = {-2195.4990234375, -623.26879882813, 13.212451934814},
        buy_price = 50000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "BeachResort",
        bounds = {vector3(-2438.273193, -581.955078, -5.815842), vector3(-2131.488770, -688.790283, 30.232815)},
    },
    ["Beanmachine"] = {
        slot = "beanmachine",
        entry_point = {-627.91857910156, 239.0025177002, 82.392784118652},
        buy_price = 100000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beanmachine.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "Beanmachine1",
        bounds = {vector3(-662.696533, 277.014313, 54.934433), vector3(-572.540649, 186.400116, 103.954842)},
    },
    ["Benefactor Dealership"] = {
        slot = "benefactor",
        entry_point = {-69.234451293945, 63.268798828125, 72.39094543457},
        buy_price = 250000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/benefactordealership.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "BenefactorDealership",
        bounds = {vector3(-40.696968, 104.825577, 43.393494), vector3(-117.533157, 48.375553, 95.650620)},
    },
    ["Roger Salvage and Scrap"] = {
        slot = "forestgates",
        entry_point = {-591.66125488281, -1630.3267822266, 27.379333496094},
        buy_price = 100000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/forestgates.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-519.663940, -1559.300049, -9.179413), vector3(-664.055603, -1671.836548, 54.549919)},
    },
    ["Maze Arena"] = {
        slot = "mazearena",
        entry_point = {-254.578125, -2026.98046875, 30.446022033691},
        buy_price = 100000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mazebank.png",
        blipId = 374,
        blipColour = 5,
        highTaxBracket = true,
		streamFolderName = "MazeArena",
        bounds = {vector3(-224.778214, -1954.338989, -10.848164), vector3(-352.062897, -2071.573242, 77.756393)},
    },
    ["Hangar 1"] = {
        slot = "hangar1",
        entry_point = {-934.61584472656, -2926.7026367188, 13.950798034668},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/hangar.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-855.653503, -2910.570312, -26.361794), vector3(-1043.927124, -3075.522461, 92.925056)},
    },
    ["Hangar 2"] = {
        slot = "hangar2",
        entry_point = {-2162.431640625, 3244.0412597656, 32.8102684021},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/hangar.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-2073.820801, 3328.622559, -10.050491), vector3(-2198.062744, 3213.744873, 66.096260)},
    },
    ["Air Traffic Control"] = {
        slot = "airtower",
        entry_point = {-2341.7956542969, 3265.8623046875, 32.827625274658},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/airtrafficcontrol.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-2318.048828, 3282.830078, 9.361534), vector3(-2391.195312, 3217.644775, 129.010101)},
    },
    ["Pops Diner"] = {
        slot = "popsdiner",
        entry_point = {1596.1962890625,6451.0654296875,26.064016342163},
        buy_price = 50000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/rebeldiner.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(1614.247803, 6481.797852, 3.609497), vector3(1557.554077, 6431.747559, 48.686058)},
    },
    ["Sons Of Anarchy Bar"] = {
        slot = "soa",
        entry_point = {981.98223876953, -103.70818328857, 75.348731994629},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/soabar.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(1028.186646, -56.351654, 62.564728), vector3(936.247986, -158.366501, 108.934219)},
    },
    ["Lost MC Gang House"] = {
        slot = "lostmc",
        entry_point = {973.48016357422,-120.95459747314,74.971900939941},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/soaganghouse.png",
        blipId = 374,
        blipColour = 5,
        groupPermission = "soa2.whitelisted",
        bounds = {vec3(908.247620, -177.349304, 62.757332), vec3(1056.475220, -75.341782, 107.632088)},
    },
    ["Franklin's House"] = {
        slot = "bloods",
        entry_point = {8.4985198974609, 540.74157714844, 176.52734375},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/franklinshouse.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-51.426464, 562.376465, 152.541443), vector3(41.014236, 497.235199, 199.090652)},
    },
    ["Legion Apartment 1"] = {
        slot = "legion",
        entry_point = {156.24200439453, -1066.1165771484, 30.033823013306},
        buy_price = 100000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/legionapartment.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(132.091583, -1026.724365, 15.878549), vector3(197.802246, -1085.055664, 84.876175)},
    },
    ["Gruppe Bunker"] = {
        slot = "gruppe_bunker",
        entry_point = {2772.3395996094, 3923.5048828125, 46.817611694336},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(544.381409, 4875.575684, -84.887787), vector3(158.578201, 4715.688477, 58.995789)},
    },
    ["Paleto Dealership"] = {
        slot = "paletodealership",
        entry_point = {132.41311645508, 6439.6489257813, 31.613330841064},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletodealership.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(191.109222, 6403.730957, 19.983635), vector3(78.955124, 6490.026855, 63.679333)},
    },
    ["Mandem Home 1"] = {
        slot = "Cheap_Home",
        entry_point = {-140.35710144043, -1599.5223388672, 35.831371307373},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5
    },
    ["Mandem Home 3"] = {
        slot = "Cheap_Home",
        entry_point = {362.29147338867, -2029.48828125, 23.395681381226},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5
    },
    ["Mandem Home 4"] = {
        slot = "Cheap_Home",
        entry_point = {353.81973266602, -2022.4395751953, 22.995332336426},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5
    },
    ["Mandem Home 5"] = {
        slot = "Cheap_Home",
        entry_point = {345.3957824707, -2015.4418945313, 23.395576477051},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5
    },
    ["Murietta Heights"] = {
        slot = "murietta",
        entry_point = {1145.0285644531, -1008.3729248047, 44.916496276855},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(1162.487671, -1021.278931, 33.110207), vector3(1105.839478, -989.927368, 66.324295)},
    },
    ["Motel 1"] = {
        slot = "100_motel",
        entry_point = {-167.11856079102, 6439.5502929688, 32.915880203247},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 5
    },
    ["Aqua 1"] = {
        slot = "aqua1",
        entry_point = {-777.75500488281, 312.75411987305, 86.098112487793},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-735.606140, 281.393677, 219.600601), vector3(-818.783569, 363.091614, 247.614182)},
    },
    ["Aqua 2"] = {
        slot = "aqua2",
        entry_point = {-774.12768554688, 312.07363891602, 86.098211669922},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-725.918640, 397.030457, 65.172058), vector3(-837.567017, 270.924377, 260.639099)},
    },
    ["Aqua 3"] = {
        slot = "aqua3",
        entry_point = {-775.71215820313, 316.19863891602, 86.062673950195},
        buy_price = 90000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-832.743591, 290.606781, 68.744194), vector3(-732.604004, 376.912384, 251.155014)},
    },
    ["Arcadius Business Office"] = {
        slot = "acadiusoffice",
        entry_point = {-117.07023620605, -605.78631591797, 37.280757904053},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-204.451935, -667.005310, -1.983677), vector3(-89.818359, -533.377258, 200.304642)},
    },
    ["IAA Facility"] = {
        slot = "iaafacility",
        entry_point = {1866.185, 271.4012, 165.2743},
        buy_price = 30000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(1946.648926, 2808.128174, -130.421387), vector3(2424.529541, 2981.713135, -39.263329)},
    },
    ["IAA Server Room"] = {
        slot = "iaaserverroom",
        entry_point = {2491.593, 3151.229, 51.27309},
        buy_price = 30000000,
        sell_price = 0,
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(1850.541504, 2990.358887, -132.749710), vector3(2473.671631, 2815.366699, -10.461238)},
    },
    ["Avon Hertz Chiliad Bunker"] = {
        slot = "mtchilliadbunker",
        entry_point = {-354.60424804688, 4825.0668945313, 145.00024829102},
        buy_price = 30000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-8000.0, -8000.0, -8000.0), vector3(8000.0, 8000.0, 8000.0)},
    },
    ["Submarine"] = {
        slot = "submarine",
        entry_point = {-1870.6354980469,-1203.703125,13.017110824585},
        buy_price = 100000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/submarine.png",
        blipId = 374,
        blipColour = 5,
        bounds = {vector3(-2008.162476, -980.097534, -13.763562), vector3(-2160.762207, -1064.849487, 31.601074)},
    },
    ["Alta Motel 1"] = {
        slot = "100_motel",
        entry_point = {312.93154907227, -218.47944641113, 54.5221900939941},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 3"] = {
        slot = "100_motel",
        entry_point = {307.54864501953, -216.15333557129, 54.5222999572754},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 4"] = {
        slot = "100_motel",
        entry_point = {307.43276977539, -213.36297607422, 54.5223003387451},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 5"] = {
        slot = "100_motel",
        entry_point = {309.82336425781, -208.08209228516, 54.5223003387451},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 6"] = {
        slot = "100_motel",
        entry_point = {313.19711303711, -198.2158203125, 54.5223056793213},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 7"] = {
        slot = "100_motel",
        entry_point = {315.61856079102, -195.02339172363, 54.5226360321045},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 11"] = {
        slot = "100_motel",
        entry_point = {312.92025756836, -218.91883850098, 58.5019088745117},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 13"] = {
        slot = "100_motel",
        entry_point = {307.30490112305, -216.37289428711, 58.5018657684326},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 14"] = {
        slot = "100_motel",
        entry_point = {307.94552612305, -213.44528198242, 58.501798248291},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 15"] = {
        slot = "100_motel",
        entry_point = {309.5283203125, -207.92512512207, 58.5017986297607},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 17"] = {
        slot = "100_motel",
        entry_point = {313.36666870117, -198.17070007324, 58.501798248291},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 18"] = {
        slot = "100_motel",
        entry_point = {315.59497070313, -195.33445739746, 58.5017993927002},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 29"] = {
        slot = "100_motel",
        entry_point = {346.39404296875, -199.56288146973, 54.5223033905029},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Alta Motel 32"] = {
        slot = "100_motel",
        entry_point = {334.95126342773, -227.3296661377, 58.5017948150635},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 1"] = {
        slot = "100_motel",
        entry_point = {1142.3262939453, 2663.7668457031, 38.516100692749},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 2"] = {
        slot = "100_motel",
        entry_point = {1141.5893554688, 2651.0053710938, 38.5140888214111},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 3"] = {
        slot = "100_motel",
        entry_point = {1142.1900634766, 2643.5163574219, 38.643291473389},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 4"] = {
        slot = "100_motel",
        entry_point = {1141.1058349609, 2642.4755859375, 38.643867492676},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 5"] = {
        slot = "100_motel",
        entry_point = {1132.6234130859, 2641.6318359375, 38.644245147705},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 6"] = {
        slot = "100_motel",
        entry_point = {1121.3151855469, 2642.0922851563, 38.64404296875},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 7"] = {
        slot = "100_motel",
        entry_point = {1114.7027587891, 2641.9423828125, 38.644111633301},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 8"] = {
        slot = "100_motel",
        entry_point = {1107.1529541016, 2641.6416015625, 38.644256591797},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Motor Motel 9"] = {
        slot = "100_motel",
        entry_point = {1106.6927490234, 2649.0402832031, 38.6409034729},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 1"] = {
        slot = "100_motel",
        entry_point = {-1493.3778076172, -667.87017822266, 29.525163650513},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 2"] = {
        slot = "100_motel",
        entry_point = {-1497.9114990234, -664.56353759766, 29.52515411377},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 3"] = {
        slot = "100_motel",
        entry_point = {-1495.0592041016, -661.78826904297, 29.525177001953},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 4"] = {
        slot = "100_motel",
        entry_point = {-1490.6793212891, -658.3779296875, 29.525133132935},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 5"] = {
        slot = "100_motel",
        entry_point = {-1486.5668945313, -655.76934814453, 30.082862854004},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 6"] = {
        slot = "100_motel",
        entry_point = {-1482.1225585938, -652.12182617188, 30.08291053772},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 7"] = {
        slot = "100_motel",
        entry_point = {-1477.7271728516, -649.63055419922, 30.082796096802},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 8"] = {
        slot = "100_motel",
        entry_point = {-1473.4305419922, -646.23406982422, 30.082778930664},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 9"] = {
        slot = "100_motel",
        entry_point = {-1469.3151855469, -643.43713378906, 30.082805633545},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 10"] = {
        slot = "100_motel",
        entry_point = {-1465.0821533203, -639.62225341797, 30.082960128784},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 11"] = {
        slot = "100_motel",
        entry_point = {-1461.6829833984, -641.12750244141, 30.082983016968},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 12"] = {
        slot = "100_motel",
        entry_point = {-1452.4692382813, -653.27874755859, 30.083009719849},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 13"] = {
        slot = "100_motel",
        entry_point = {-1454.7072753906, -655.57794189453, 30.08282661438},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 14"] = {
        slot = "100_motel",
        entry_point = {-1458.9870605469, -659.17572021484, 30.082908630371},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 15"] = {
        slot = "100_motel",
        entry_point = {-1463.3040771484, -661.79089355469, 30.08283996582},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 16"] = {
        slot = "100_motel",
        entry_point = {-1467.6398925781, -665.38732910156, 30.082908630371},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 17"] = {
        slot = "100_motel",
        entry_point = {-1471.8685302734, -668.05780029297, 30.082992553711},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 18"] = {
        slot = "100_motel",
        entry_point = {-1476.29296875, -671.70043945313, 33.881416320801},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 19"] = {
        slot = "100_motel",
        entry_point = {-1471.9151611328, -667.99530029297, 33.881385803223},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 20"] = {
        slot = "100_motel",
        entry_point = {-1467.7650146484, -665.45892333984, 33.881393432617},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 21"] = {
        slot = "100_motel",
        entry_point = {-1463.2261962891, -661.85797119141, 33.881423950195},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 22"] = {
        slot = "100_motel",
        entry_point = {-1458.9708251953, -659.12249755859, 33.88158416748},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 24"] = {
        slot = "100_motel",
        entry_point = {-1454.4669189453, -655.83819580078, 33.881427764893},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 25"] = {
        slot = "100_motel",
        entry_point = {-1452.7384033203, -653.69897460938, 33.81427764893},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 26"] = {
        slot = "100_motel",
        entry_point = {-1455.5504150391, -648.50573730469, 33.881420135498},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 27"] = {
        slot = "100_motel",
        entry_point = {-1461.5860595703, -641.28082275391, 33.881423950195},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 28"] = {
        slot = "100_motel",
        entry_point = {-1464.8374023438, -639.83081054688, 33.881397247314},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 29"] = {
        slot = "100_motel",
        entry_point = {-1469.4786376953, -642.96398925781, 33.881423950195},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 30"] = {
        slot = "100_motel",
        entry_point = {-1473.2830810547, -646.23687744141, 33.881416320801},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 31"] = {
        slot = "100_motel",
        entry_point = {-1478.0467529297, -649.39392089844, 33.881408691406},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 32"] = {
        slot = "100_motel",
        entry_point = {-1481.8480224609, -652.34521484375, 33.881420135498},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 33"] = {
        slot = "100_motel",
        entry_point = {-1486.7974853516, -655.41809082031, 33.88143157959},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 34"] = {
        slot = "100_motel",
        entry_point = {-1490.3355712891, -658.68518066406, 33.881420135498},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 35"] = {
        slot = "100_motel",
        entry_point = {-1495.2457275391, -661.67926025391, 33.881416320801},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 36"] = {
        slot = "100_motel",
        entry_point = {-1497.7528076172, -664.21551513672, 33.881420135498},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 37"] = {
        slot = "100_motel",
        entry_point = {-1493.7857666016, -668.28247070313, 33.881423950195},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Beach Motel 38"] = {
        slot = "100_motel",
        entry_point = {-1489.5942382813, -670.96954345703, 33.881423950195},
        buy_price = 7000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/beachmotel.png",
        blipId = 374,
        blipColour = 2
    },
    ["Playboy Mansion"] = {
        slot = "playboymansion",
        entry_point = {-1500.2573242188, 103.0327911377, 55.933518218994},
        buy_price = 60000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/playboymansion.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "PlayboyMansion",
        bounds = {vector3(-1408.463867, 244.686371, -1.562347), vector3(-1666.399292, 56.378654, 103.234276)},
    },
    ["Bahama Mama"] = {
        slot = "bahamamama",
        entry_point = {-1388.6518554688, -586.42987060547, 30.718936920166},
        buy_price = 60000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bahamasmammas.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-1420.729492, -640.121277, 18.693802), vector3(-1350.472168, -569.594421, 57.435459)},
    },
    ["Glory Way 1"] = {
        slot = "100_motel",
        entry_point = {952.37133789063, -252.32827758789, 67.961463928223},
        buy_price = 13000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 1"] = {
        slot = "100_motel",
        entry_point = {286.39633178711, -2052.59765625, 19.648128509521},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 2"] = {
        slot = "100_motel",
        entry_point = {290.82415771484, -2047.2843017578, 19.994656829834},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 3"] = {
        slot = "100_motel",
        entry_point = {306.42163085938, -2045.1822509766, 21.449899673462},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 4"] = {
        slot = "100_motel",
        entry_point = {312.38662719727, -2054.208984375, 21.512952804565},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 5"] = {
        slot = "100_motel",
        entry_point = {293.48693847656, -2044.3509521484, 19.9962267684937},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 6"] = {
        slot = "100_motel",
        entry_point = {315.58581542969, -2056.7121582031, 21.493798828125},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 7"] = {
        slot = "100_motel",
        entry_point = {320.69995117188, -2061.517578125, 20.99493183135986},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 8"] = {
        slot = "100_motel",
        entry_point = {323.6748046875, -2063.9216308594, 20.991895675659},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 9"] = {
        slot = "100_motel",
        entry_point = {329.35470581055, -2068.0361328125, 21.440816879272},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 10"] = {
        slot = "100_motel",
        entry_point = {332.50897216797, -2070.5681152344, 21.441507339478},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 11"] = {
        slot = "100_motel",
        entry_point = {329.95654296875, -2095.2905273438, 18.744316101074},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 12"] = {
        slot = "100_motel",
        entry_point = {320.82461547852, -2100.19140625, 18.744375228882},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 13"] = {
        slot = "100_motel",
        entry_point = {304.92098999023, -2086.6457519531, 18.309173202515},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 14"] = {
        slot = "100_motel",
        entry_point = {302.93499755859, -2079.9831542969, 18.301477050781},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 15"] = {
        slot = "100_motel",
        entry_point = {301.32427978516, -2076.3022460938, 18.309171295166},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 16"] = {
        slot = "100_motel",
        entry_point = {356.88143920898, -2073.6276855469, 22.244546890259},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 17"] = {
        slot = "100_motel",
        entry_point = {363.98754882813, -2064.9255371094, 22.237703323364},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 18"] = {
        slot = "100_motel",
        entry_point = {371.51907348633, -2056.1940917969, 22.240007400513},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 19"] = {
        slot = "100_motel",
        entry_point = {341.91201782227, -2064.2407226563, 21.44847869873},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 20"] = {
        slot = "100_motel",
        entry_point = {334.01718139648, -2057.3427734375, 21.436292648315},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 21"] = {
        slot = "100_motel",
        entry_point = {325.41152954102, -2049.8991699219, 21.434909820557},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 22"] = {
        slot = "100_motel",
        entry_point = {317.14099121094, -2043.4587402344, 21.425319671631},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 23"] = {
        slot = "100_motel",
        entry_point = {313.46441650391, -2040.4080810547, 21.435966491699},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 24"] = {
        slot = "100_motel",
        entry_point = {383.10272216797, -2036.7349853516, 23.843639373779},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 25"] = {
        slot = "100_motel",
        entry_point = {388.39794921875, -2025.9650878906, 23.902986526489},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 265"] = {
        slot = "100_motel",
        entry_point = {392.81796264648, -2016.1580810547, 23.997777557373},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 27"] = {
        slot = "100_motel",
        entry_point = {383.89892578125, -2006.9479980469, 24.769815444946},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 28"] = {
        slot = "100_motel",
        entry_point = {377.27752685547, -2004.5864257813, 24.776500701904},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 29"] = {
        slot = "100_motel",
        entry_point = {373.47268676758, -2003.1977539063, 24.737699508667},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 30"] = {
        slot = "100_motel",
        entry_point = {366.89242553711, -2000.7774658203, 24.76841545105},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 31"] = {
        slot = "100_motel",
        entry_point = {363.30560302734, -1999.4356689453, 24.766662597656},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 32"] = {
        slot = "100_motel",
        entry_point = {356.67294311523, -1997.1793212891, 24.741388320923},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 33"] = {
        slot = "100_motel",
        entry_point = {334.1875,-2092.7155761719,18.244073867798},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 34"] = {
        slot = "100_motel",
        entry_point = {326.29122924805,-2050.8288574219,20.936386108398},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 35"] = {
        slot = "100_motel",
        entry_point = {334.94396972656,-2058.2175292969,20.936388015747},
        buy_price = 8000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 36"] = {
        slot = "100_motel",
        entry_point = {385.30764770508,-1995.2774658203,24.234964370728 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 37"] = {
        slot = "100_motel",
        entry_point = {383.59188842773,-1994.5313720703,24.234973907471 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 38"] = {
        slot = "100_motel",
        entry_point = {374.64199829102,-1991.4624023438,24.23494720459 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 39"] = {
        slot = "100_motel",
        entry_point = {364.00033569336,-1987.5610351562,24.23406791687 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 40"] = {
        slot = "100_motel",
        entry_point = {362.30941772461,-1986.8669433594,24.234340667725 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 41"] = {
        slot = "100_motel",
        entry_point = {357.01162719727,-2024.9741210938,22.395456314087 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 42"] = {
        slot = "100_motel",
        entry_point = {365.64538574219,-2031.4384765625,22.273565292358 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 43"] = {
        slot = "100_motel",
        entry_point = {382.3876953125,-2038.4307861328,23.402696609497 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 44"] = {
        slot = "100_motel",
        entry_point = {372.76583862305,-2054.8090820313,21.744499206543 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 45"] = {
        slot = "100_motel",
        entry_point = {356.0205078125,-2075.3447265625,21.744485855103 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 46"] = {
        slot = "100_motel",
        entry_point = {332.35525512695,-2018.6324462891,22.354248046875 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 47"] = {
        slot = "100_motel",
        entry_point = {335.97998046875,-2021.7772216797,22.354322433472 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 48"] = {
        slot = "100_motel",
        entry_point = {343.29995727539,-2028.0158691406,22.353963851929 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 49"] = {
        slot = "100_motel",
        entry_point = {344.55490112305,-2029.2648925781,22.354276657104 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 50"] = {
        slot = "100_motel",
        entry_point = {351.96450805664,-2035.3088378906,22.354280471802 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 51"] = {
        slot = "100_motel",
        entry_point = {353.42150878906,-2036.5625,22.354290008545 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 52"] = {
        slot = "100_motel",
        entry_point = {360.68597412109,-2042.5606689453,22.352247238159 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 53"] = {
        slot = "100_motel",
        entry_point = {364.33316040039,-2045.7430419922,22.35422706604 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 54"] = {
        slot = "100_motel",
        entry_point = {371.79595947266,-2040.841796875,22.199272155762 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 55"] = {
        slot = "100_motel",
        entry_point = {404.25518798828,-2018.0051269531,23.415195465088 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 56"] = {
        slot = "100_motel",
        entry_point = {401.51739501953,-2024.2767333984,23.416307449341 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 57"] = {
        slot = "100_motel",
        entry_point = {399.67205810547,-2027.7846679688,23.413475036621 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 58"] = {
        slot = "100_motel",
        entry_point = {396.70336914062,-2034.0480957031,23.414398193359 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 59"] = {
        slot = "100_motel",
        entry_point = {395.20825195312,-2037.744140625,23.413160324097 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 60"] = {
        slot = "100_motel",
        entry_point = {392.24108886719,-2044.0809326172,23.289817810059 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 61"] = {
        slot = "100_motel",
        entry_point = {382.35568237305,-2061.1645507812,21.754835128784 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 62"] = {
        slot = "100_motel",
        entry_point = {377.97549438477,-2066.4108886719,21.761644363403 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 63"] = {
        slot = "100_motel",
        entry_point = {375.43627929688,-2069.490234375,21.765356063843 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 64"] = {
        slot = "100_motel",
        entry_point = {370.82067871094,-2074.6916503906,21.757966995239 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 65"] = {
        slot = "100_motel",
        entry_point = {368.47598266602,-2077.9196777344,21.754829406738 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 66"] = {
        slot = "100_motel",
        entry_point = {364.01123046875,-2083.1584472656,21.755098342896 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 67"] = {
        slot = "100_motel",
        entry_point = {340.62719726562,-2098.4223632812,18.2038230896 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 68"] = {
        slot = "100_motel",
        entry_point = {332.66400146484,-2106.3410644531,18.135747909546 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 69"] = {
        slot = "100_motel",
        entry_point = {329.2483215332,-2108.3791503906,18.126028060913 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 70"] = {
        slot = "100_motel",
        entry_point = {323.32690429688,-2111.8859863281,18.17259979248 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 71"] = {
        slot = "100_motel",
        entry_point = {306.05407714844,-2097.3908691406,17.535371780396 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 72"] = {
        slot = "100_motel",
        entry_point = {297.24554443359,-2097.8305664062,17.663558959961 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 73"] = {
        slot = "100_motel",
        entry_point = {295.6337890625,-2093.2841796875,17.663562774658 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 74"] = {
        slot = "100_motel",
        entry_point = {293.69180297852,-2087.8452148438,17.663516998291 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 75"] = {
        slot = "100_motel",
        entry_point = {292.92803955078,-2086.1650390625,17.663572311401 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 76"] = {
        slot = "100_motel",
        entry_point = {289.90322875977,-2077.0981445312,17.6630859375 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 77"] = {
        slot = "100_motel",
        entry_point = {288.1116027832,-2072.74609375,17.663562774658 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 78"] = {
        slot = "100_motel",
        entry_point = {295.10440063477,-2067.3254394531,17.649030685425 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 79"] = {
        slot = "100_motel",
        entry_point = {279.53182983398,-2043.4501953125,19.767601013184 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 80"] = {
        slot = "100_motel",
        entry_point = {280.7262878418,-2042.0512695312,19.767572402954 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 81"] = {
        slot = "100_motel",
        entry_point = {286.89801025391,-2034.6761474609,19.76549911499 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 82"] = {
        slot = "100_motel",
        entry_point = {289.93783569336,-2030.9196777344,19.767560958862 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 83"] = {
        slot = "100_motel",
        entry_point = {298.1005859375,-2034.3111572266,19.835502624512 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 84"] = {
        slot = "100_motel",
        entry_point = {342.23614501953,-2075.2800292969,20.938703536987 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 85"] = {
        slot = "100_motel",
        entry_point = {345.73419189453,-2067.1154785156,20.936418533325 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Jameson Street 86"] = {
        slot = "100_motel",
        entry_point = {335.64407348633,-2010.6560058594,22.313106536865 + 0.5},
        buy_price = 8000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grape Street 1"] = {
        slot = "100_motel",
        entry_point = {1662.5104980469, 4776.2045898438, 42.507633209229},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cascabel Avenue 2"] = {
        slot = "100_motel",
        entry_point = {-160.21745300293, 6432.3227539063, 32.415903091431},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cascabel Avenue 3"] = {
        slot = "100_motel",
        entry_point = {-150.23515319824, 6422.3422851563, 32.415904998779},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cascabel Avenue 4"] = {
        slot = "100_motel",
        entry_point = {-150.34680175781, 6416.4423828125, 32.415904998779},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cascabel Avenue 5"] = {
        slot = "100_motel",
        entry_point = {-157.11521911621, 6409.40234375, 32.415904998779},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 1"] = {
        slot = "100_motel",
        entry_point = {-682.37042236328, 5770.8120117188, 17.9911001586914},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 2"] = {
        slot = "100_motel",
        entry_point = {-683.85601806641, 5766.7973632813, 17.9910999679565},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 3"] = {
        slot = "100_motel",
        entry_point = {-685.90899658203, 5763.1015625, 17.9911001586914},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 4"] = {
        slot = "100_motel",
        entry_point = {-687.89508056641, 5759.072265625, 17.9911003494263},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 5"] = {
        slot = "100_motel",
        entry_point = {-690.22399902344, 5759.7109375, 17.991100730896},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 6"] = {
        slot = "100_motel",
        entry_point = {-694.1337890625, 5761.548828125, 17.9910999679565},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 7"] = {
        slot = "100_motel",
        entry_point = {-698.01580810547, 5763.3979492188, 17.9910999679565},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 8"] = {
        slot = "100_motel",
        entry_point = {-701.87365722656, 5765.4970703125, 17.9910999679565},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 9"] = {
        slot = "100_motel",
        entry_point = {-706.01458740234, 5766.849609375, 17.9910959625244},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Lodge 10"] = {
        slot = "100_motel",
        entry_point = {-709.75396728516, 5768.9765625, 17.9911001586914},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grand Senora Hut 1"] = {
        slot = "100_motel",
        entry_point = {722.48425292969, 2330.78125, 51.9950350952148},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletolodge.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 1"] = {
        slot = "100_motel",
        entry_point = {341.28469848633, 2615.6120605469, 44.996869354248},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 2"] = {
        slot = "100_motel",
        entry_point = {346.72933959961, 2618.4880371094, 44.9981518554688},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 3"] = {
        slot = "100_motel",
        entry_point = {354.23602294922, 2620.0095214844, 44.997174911499},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 4"] = {
        slot = "100_motel",
        entry_point = {359.36999511719, 2623.4577636719, 44.9984829711914},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 5"] = {
        slot = "100_motel",
        entry_point = {366.91198730469, 2624.7836914063, 44.9972348022461},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 6"] = {
        slot = "100_motel",
        entry_point = {372.11688232422, 2628.2434082031, 44.9984463500977},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 7"] = {
        slot = "100_motel",
        entry_point = {379.69537353516, 2629.4265136719, 44.9972386169434},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 8"] = {
        slot = "100_motel",
        entry_point = {384.83383178711, 2632.8161621094, 44.9982456970215},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 9"] = {
        slot = "100_motel",
        entry_point = {392.43832397461, 2634.2990722656, 44.9972229766846},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Harmony Motel 10"] = {
        slot = "100_motel",
        entry_point = {397.72808837891, 2637.3264160156, 44.9981446075439},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 1"] = {
        slot = "100_motel",
        entry_point = {-111.53773498535, 6322.3891601563, 32.076179504395},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 2"] = {
        slot = "100_motel",
        entry_point = {-114.76951599121, 6325.6889648438, 32.076164245605},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 3"] = {
        slot = "100_motel",
        entry_point = {-120.18673706055, 6327.0595703125, 32.075897216797},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 4"] = {
        slot = "100_motel",
        entry_point = {-111.42581939697, 6322.5219726563, 35.501041412354},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 5"] = {
        slot = "100_motel",
        entry_point = {-114.61103057861, 6325.6049804688, 36.000995635986},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 6"] = {
        slot = "100_motel",
        entry_point = {-120.11996459961, 6326.9599609375, 36.000999450684},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 7"] = {
        slot = "100_motel",
        entry_point = {-103.32504272461, 6330.6850585938, 32.075899124146},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 8"] = {
        slot = "100_motel",
        entry_point = {-106.47285461426, 6334.3881835938, 32.076160430908},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 9"] = {
        slot = "100_motel",
        entry_point = {-107.14325714111, 6339.8662109375, 32.075899124146},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 10"] = {
        slot = "100_motel",
        entry_point = {-101.7081451416, 6344.8828125, 32.07586479187},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 11"] = {
        slot = "100_motel",
        entry_point = {-98.868309020996, 6348.35546875, 32.0754737854},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 12"] = {
        slot = "100_motel",
        entry_point = {-92.96794128418, 6353.48046875, 32.075883865356},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 13"] = {
        slot = "100_motel",
        entry_point = {-89.763549804688, 6356.6689453125, 32.071918487549},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 14"] = {
        slot = "100_motel",
        entry_point = {-84.43537902832, 6362.1020507813, 32.075668334961},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 15"] = {
        slot = "100_motel",
        entry_point = {-103.15663146973, 6330.8603515625, 36.000782012939},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 16"] = {
        slot = "100_motel",
        entry_point = {-106.34083557129, 6334.4208984375, 36.000778198242},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 17"] = {
        slot = "100_motel",
        entry_point = {-107.63687896729, 6339.4384765625, 36.000782012939},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 18"] = {
        slot = "100_motel",
        entry_point = {-101.85249328613, 6344.9633789063, 36.000774383545},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 19"] = {
        slot = "100_motel",
        entry_point = {-98.610527038574, 6348.2236328125, 36.000774383545},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 21"] = {
        slot = "100_motel",
        entry_point = {-93.295883178711, 6353.7387695313, 36.000774383545},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 22"] = {
        slot = "100_motel",
        entry_point = {-89.997467041016, 6356.9428710938, 36.000774383545},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Premier Inn 23"] = {
        slot = "100_motel",
        entry_point = {-84.820915222168, 6362.3979492188, 36.000782012939},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/premierinn.png",
        blipId = 374,
        blipColour = 2
    },
    ["Power Street 1"] = {
        slot = "100_motel",
        entry_point = {283.78784179688, 47.5390625, 92.660400390625},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Power Street 2"] = {
        slot = "100_motel",
        entry_point = {283.71154785156, 47.512393951416, 96.701377868652},
        buy_price = 4000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 1"] = {
        slot = "100_motel",
        entry_point = {-33.878021240234, -1847.3077392578, 26.69352722168},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 2"] = {
        slot = "100_motel",
        entry_point = {-21.118564605713, -1858.3391113281, 25.86053276062},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 3"] = {
        slot = "100_motel",
        entry_point = {-5.1405458450317, -1872.2199707031, 24.6510181427},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 4"] = {
        slot = "100_motel",
        entry_point = {21.125415802002, -1844.6920166016, 24.9901741790771},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 5"] = {
        slot = "100_motel",
        entry_point = {5.0165863037109, -1884.1329345703, 23.997265625},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 6"] = {
        slot = "100_motel",
        entry_point = {29.673501968384, -1854.6662597656, 24.56883430481},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 7"] = {
        slot = "100_motel",
        entry_point = {23.293975830078, -1896.4211425781, 23.665879440308},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 8"] = {
        slot = "100_motel",
        entry_point = {45.814968109131, -1864.5895996094, 23.778310775757},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 9"] = {
        slot = "100_motel",
        entry_point = {39.535465240479, -1911.9942626953, 22.453592300415},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 10"] = {
        slot = "100_motel",
        entry_point = {56.58723449707, -1922.4140625, 22.411211013794},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 11"] = {
        slot = "100_motel",
        entry_point = {72.408187866211, -1938.4720458984, 21.869167327881},
        buy_price = 16000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills Mansion"] = {
        slot = "rockfordhillsmansion",
        entry_point = {-842.22045898438, -25.136241912842, 40.898445129395},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "RockfordHillsMansion",
        bounds = {vector3(-914.641785, -72.319702, 22.499222), vector3(-818.406372, 18.593716, 72.289398)},
    },
    ["Mega Luxury n02"] = {
        slot = "high_tier_apart",
        entry_point = {-896.48016357422, -5.1464052200317, 43.998892974854},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n03"] = {
        slot = "high_tier_apart",
        entry_point = {-888.44470214844, 42.446506500244, 49.646640777588},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n04"] = {
        slot = "high_tier_apart",
        entry_point = {-971.41143798828, 122.07468414307, 57.548572540283},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n05"] = {
        slot = "high_tier_apart",
        entry_point = {-1896.3984375, 642.61083984375, 130.70904541016},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n06"] = {
        slot = "high_tier_apart",
        entry_point = {-998.29443359375, 157.56649780273, 62.818416595459},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n08"] = {
        slot = "high_tier_apart",
        entry_point = {-949.43682861328, 196.57269287109, 67.890266418457},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n09"] = {
        slot = "high_tier_apart",
        entry_point = {-903.10089111328, 191.68464660645, 69.946060180664},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n10"] = {
        slot = "high_tier_apart",
        entry_point = {-913.7255859375, 108.30228424072, 55.914720916748},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n11"] = {
        slot = "high_tier_apart",
        entry_point = {-930.20721435547, 19.26170539856, 48.52445602417 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n12"] = {
        slot = "high_tier_apart",
        entry_point = {-830.80743408203, 115.13695526123, 55.830825805664 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n13"] = {
        slot = "high_tier_apart",
        entry_point = {-1048.0772705078, 312.88861083984, 66.900764465332 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n14"] = {
        slot = "high_tier_apart",
        entry_point = {-819.72412109375, 268.16131591797, 86.394958496094 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n15"] = {
        slot = "high_tier_apart",
        entry_point = {-876.63702392578, 305.95361328125, 84.149307250977 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n16"] = {
        slot = "high_tier_apart",
        entry_point = {-881.48712158203, 363.73440551758, 85.361930847168 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n17"] = {
        slot = "high_tier_apart",
        entry_point = {-1026.1363525391, 360.53964233398, 71.361450195313 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n18"] = {
        slot = "high_tier_apart",
        entry_point = {-1539.9281005859, 421.50689697266, 110.01400756836 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n19"] = {
        slot = "high_tier_apart",
        entry_point = {-1189.9455566406, 291.96148681641, 69.892456054688 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n20"] = {
        slot = "high_tier_apart",
        entry_point = {-1135.6276855469, 375.86682128906, 71.299774169922 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n21"] = {
        slot = "high_tier_apart",
        entry_point = {-1467.6578369141, 34.792991638184, 54.544841766357 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n23"] = {
        slot = "high_tier_apart",
        entry_point = {-1515.3773193359, 23.785882949829, 56.820671081543 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n24"] = {
        slot = "high_tier_apart",
        entry_point = {-1549.4302978516, -90.31867980957, 54.929176330566 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n25"] = {
        slot = "high_tier_apart",
        entry_point = {-1580.3762207031, -33.930015563965, 57.565185546875 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n26"] = {
        slot = "high_tier_apart",
        entry_point = {-1570.6611328125, 22.336137771606, 59.553970336914 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n27"] = {
        slot = "high_tier_apart",
        entry_point = {-1629.95703125, 36.417114257813, 62.936134338379 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n28"] = {
        slot = "high_tier_apart",
        entry_point = {-1899.0230712891, 132.57824707031, 81.984741210938 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n29"] = {
        slot = "high_tier_apart",
        entry_point = {-1931.7562255859, 163.07414245605, 84.652633666992 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n30"] = {
        slot = "high_tier_apart",
        entry_point = {-1961.1973876953, 212.07287597656, 86.802879333496 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n31"] = {
        slot = "high_tier_apart",
        entry_point = {-1970.2802734375, 246.1478729248, 87.812232971191 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n32"] = {
        slot = "high_tier_apart",
        entry_point = {-1995.1875, 300.35665893555, 91.964653015137 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n33"] = {
        slot = "high_tier_apart",
        entry_point = {-2009.0494384766, 367.39581298828, 94.814315795898 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n34"] = {
        slot = "high_tier_apart",
        entry_point = {-2011.1556396484, 445.20568847656, 103.01591491699 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n35"] = {
        slot = "high_tier_apart",
        entry_point = {-2014.8592529297, 499.98120117188, 107.17169189453 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n36"] = {
        slot = "high_tier_apart",
        entry_point = {-1873.7559814453, 201.73414611816, 84.294456481934 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n37"] = {
        slot = "high_tier_apart",
        entry_point = {-1905.6485595703, 253.00996398926, 86.451652526855 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n38"] = {
        slot = "high_tier_apart",
        entry_point = {-1923.1368408203, 298.23001098633, 89.286430358887 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n40"] = {
        slot = "high_tier_apart",
        entry_point = {-1940.6569824219, 387.56149291992, 96.507080078125 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n41"] = {
        slot = "high_tier_apart",
        entry_point = {-1942.7913818359, 449.69360351563, 102.92771911621 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n42"] = {
        slot = "high_tier_apart",
        entry_point = {-1838.4322509766, 314.47180175781, 91.112419128418 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n43"] = {
        slot = "high_tier_apart",
        entry_point = {-1808.0444335938, 333.11071777344, 89.567459106445 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n44"] = {
        slot = "high_tier_apart",
        entry_point = {-1733.1506347656, 379.03955078125, 89.725173950195 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n45"] = {
        slot = "high_tier_apart",
        entry_point = {-1673.2691650391, 385.62448120117, 89.348266601563 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Monegera Mansion"] = {
        slot = "monegera_mannsion",
        entry_point = {-1804.8377685547, 436.42965698242, 128.81390380859 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "MongeraMansion",
        bounds = {vector3(-1876.067383, 383.569458, 82.317604), vector3(-1715.473755, 484.510803, 151.962433)},
    },
    ["Mega Luxury n47"] = {
        slot = "high_tier_apart",
        entry_point = {-1996.3542480469, 591.42736816406, 118.09920501709 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n48"] = {
        slot = "high_tier_apart",
        entry_point = {-1938.3509521484, 551.09271240234, 114.82830047607 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n49"] = {
        slot = "high_tier_apart",
        entry_point = {-1929.0084228516, 595.34210205078, 122.28477478027 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n50"] = {
        slot = "high_tier_apart",
        entry_point = {-1974.6345214844, 631.13787841797, 122.68579864502 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n51"] = {
        slot = "high_tier_apart",
        entry_point = {-151.75924682617, 910.64514160156, 235.65559387207 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n52"] = {
        slot = "high_tier_apart",
        entry_point = {-184.17541503906, 967.62872314453, 232.13362121582 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n53"] = {
        slot = "high_tier_apart",
        entry_point = {-113.02848815918, 986.15289306641, 235.75384521484 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n55"] = {
        slot = "high_tier_apart",
        entry_point = {228.63905334473, 765.66394042969, 204.9654083252 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n56"] = {
        slot = "high_tier_apart",
        entry_point = {232.20629882813, 672.14166259766, 189.97761535645 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n57"] = {
        slot = "high_tier_apart",
        entry_point = {150.86026000977, 556.29632568359, 183.7371673584 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n58"] = {
        slot = "high_tier_apart",
        entry_point = {84.915641784668, 561.92602539063, 182.73599243164 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n59"] = {
        slot = "high_tier_apart",
        entry_point = {46.054248809814, 555.92401123047, 180.08201599121 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n60"] = {
        slot = "high_tier_apart",
        entry_point = {-126.52033233643, 588.27508544922, 204.70350646973 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n61"] = {
        slot = "high_tier_apart",
        entry_point = {-189.34045410156, 617.50201416016, 199.66159057617 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n62"] = {
        slot = "high_tier_apart",
        entry_point = {-185.43742370605, 591.21630859375, 197.8232421875 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n63"] = {
        slot = "high_tier_apart",
        entry_point = {-232.50073242188, 588.18157958984, 190.53633117676 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n64"] = {
        slot = "high_tier_apart",
        entry_point = {-293.35827636719, 600.83276367188, 181.57556152344 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n65"] = {
        slot = "high_tier_apart",
        entry_point = {-245.81416320801, 620.88287353516, 187.81018066406 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n66"] = {
        slot = "high_tier_apart",
        entry_point = {-340.52233886719, 625.71569824219, 171.35906982422 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n67"] = {
        slot = "high_tier_apart",
        entry_point = {325.01190185547, 537.22137451172, 153.86878967285 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n68"] = {
        slot = "high_tier_apart",
        entry_point = {315.82250976563, 502.03048706055, 153.17976379395 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n69"] = {
        slot = "high_tier_apart",
        entry_point = {331.62689208984, 465.69534301758, 151.22158813477 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n70"] = {
        slot = "high_tier_apart",
        entry_point = {223.38740539551, 514.41827392578, 140.7671661377 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n71"] = {
        slot = "high_tier_apart",
        entry_point = {-1067.6000976563,795.29565429688,166.94367980957 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n72"] = {
        slot = "high_tier_apart",
        entry_point = {-1100.5422363281,797.19934082031,167.25898742676 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n73"] = {
        slot = "high_tier_apart",
        entry_point = {-1165.1798095703,727.32391357422,155.60668945313 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n74"] = {
        slot = "high_tier_apart",
        entry_point = {-1118.1077880859,761.98919677734,164.28869628906 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n75"] = {
        slot = "high_tier_apart",
        entry_point = {-1065.0899658203,772.95574951172,169.62521362305 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n76"] = {
        slot = "high_tier_apart",
        entry_point = {-1065.1905517578,727.09753417969,165.47451782227 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n77"] = {
        slot = "high_tier_apart",
        entry_point = {-997.34399414063,681.63104248047,160.54972839355 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n78"] = {
        slot = "high_tier_apart",
        entry_point = {-974.15026855469,685.14636230469,158.03421020508 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n79"] = {
        slot = "high_tier_apart",
        entry_point = {-931.53167724609,691.36535644531,153.46664428711 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n80"] = {
        slot = "high_tier_apart",
        entry_point = {-908.78051757813,694.08245849609,151.43472290039 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n81"] = {
        slot = "high_tier_apart",
        entry_point = {-885.27593994141,699.44189453125,151.27062988281 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n82"] = {
        slot = "high_tier_apart",
        entry_point = {-853.06121826172,695.73773193359,148.78721618652 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n83"] = {
        slot = "high_tier_apart",
        entry_point = {-819.43499755859,696.94879150391,148.10960388184 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n84"] = {
        slot = "high_tier_apart",
        entry_point = {-765.30114746094,650.81958007813,145.50123596191 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n85"] = {
        slot = "high_tier_apart",
        entry_point = {-753.25921630859,620.34930419922,142.80741882324 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n86"] = {
        slot = "high_tier_apart",
        entry_point = {-732.84790039063,594.18450927734,142.09771728516 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n87"] = {
        slot = "high_tier_apart",
        entry_point = {-704.29937744141,589.02557373047,141.92823791504 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n88"] = {
        slot = "high_tier_apart",
        entry_point = {-686.17749023438,596.30529785156,143.64199829102 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n89"] = {
        slot = "high_tier_apart",
        entry_point = {-669.16552734375,638.29376220703,149.52879333496 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n90"] = {
        slot = "high_tier_apart",
        entry_point = {-662.17144775391,679.10009765625,153.91030883789 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n91"] = {
        slot = "high_tier_apart",
        entry_point = {-700.63714599609,647.61877441406,155.17515563965 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n92"] = {
        slot = "high_tier_apart",
        entry_point = {-708.59588623047,712.68115234375,162.20007324219 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n93"] = {
        slot = "high_tier_apart",
        entry_point = {-645.98864746094,740.57470703125,174.27749633789 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n94"] = {
        slot = "high_tier_apart",
        entry_point = {-579.63531494141,733.49151611328,184.21188354492 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n95"] = {
        slot = "high_tier_apart",
        entry_point = {-566.06958007813,761.36358642578,185.4248046875 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n96"] = {
        slot = "high_tier_apart",
        entry_point = {-595.39819335938,780.88781738281,189.11047363281 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n97"] = {
        slot = "high_tier_apart",
        entry_point = {-655.29724121094,803.24591064453,198.99076843262 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n98"] = {
        slot = "high_tier_apart",
        entry_point = {-746.90295410156,808.35693359375,215.00421142578 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n99"] = {
        slot = "high_tier_apart",
        entry_point = {-658.53063964844,887.34039306641,229.24885559082 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n100"] = {
        slot = "high_tier_apart",
        entry_point = {-597.35345458984,852.14428710938,211.40608215332 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n101"] = {
        slot = "high_tier_apart",
        entry_point = {-527.15484619141,822.78869628906,197.5044708252 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mega Luxury n102"] = {
        slot = "high_tier_apart",
        entry_point = {-605.99475097656,672.86273193359,151.59692382813 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n01"] = {
        slot = "medium_tier_apart",
        entry_point = {-866.68829345703, 457.38912963867, 88.281097412109 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n02"] = {
        slot = "medium_tier_apart",
        entry_point = {-884.29614257813, 517.72192382813, 92.44287109375 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n03"] = {
        slot = "medium_tier_apart",
        entry_point = {-842.84576416016, 466.65921020508, 87.597229003906 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n04"] = {
        slot = "medium_tier_apart",
        entry_point = {-848.68981933594, 508.62054443359, 90.817047119141 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n05"] = {
        slot = "medium_tier_apart",
        entry_point = {-873.57452392578, 562.67016601563, 96.619468688965 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n06"] = {
        slot = "medium_tier_apart",
        entry_point = {-904.55999755859, 588.12457275391, 101.19079589844 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n07"] = {
        slot = "medium_tier_apart",
        entry_point = {-958.04254150391, 604.24096679688, 101.55349731445 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n08"] = {
        slot = "medium_tier_apart",
        entry_point = {-907.63140869141, 544.89990234375, 100.39901733398 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n09"] = {
        slot = "medium_tier_apart",
        entry_point = {-1022.5431518555, 586.93200683594, 103.42906951904 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n10"] = {
        slot = "medium_tier_apart",
        entry_point = {-1090.1475830078, 548.74761962891, 103.63327789307 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n11"] = {
        slot = "medium_tier_apart",
        entry_point = {-950.07141113281, 465.14920043945, 81.000399780273 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n12"] = {
        slot = "medium_tier_apart",
        entry_point = {-967.05932617188, 510.58291625977, 82.567115783691 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n13"] = {
        slot = "medium_tier_apart",
        entry_point = {-997.09094238281, 517.9248046875, 83.979078674316 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n14"] = {
        slot = "medium_tier_apart",
        entry_point = {-1040.1650390625, 508.21099853516, 84.880882263184 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n15"] = {
        slot = "medium_tier_apart",
        entry_point = {-1087.4440917969, 479.26803588867, 81.82063293457 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n16"] = {
        slot = "medium_tier_apart",
        entry_point = {-1019.1580810547, 718.67858886719, 164.59630737305 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n17"] = {
        slot = "medium_tier_apart",
        entry_point = {-1052.2956542969, 432.1005859375, 77.565605163574 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n18"] = {
        slot = "medium_tier_apart",
        entry_point = {-1009.5657958984, 479.1650390625, 79.995321655273 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n19"] = {
        slot = "medium_tier_apart",
        entry_point = {-968.83911132813, 436.67028808594, 81.0005472412109 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n20"] = {
        slot = "medium_tier_apart",
        entry_point = {-1107.8060302734, 594.46179199219, 104.4546661377 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n21"] = {
        slot = "medium_tier_apart",
        entry_point = {-824.87280273438, 422.11770629883, 92.124183654785 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n22"] = {
        slot = "medium_tier_apart",
        entry_point = {-762.14733886719, 430.86065673828, 100.19687652588 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n23"] = {
        slot = "medium_tier_apart",
        entry_point = {-717.86859130859, 448.64730834961, 106.90914154053 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n24"] = {
        slot = "medium_tier_apart",
        entry_point = {-721.33587646484, 490.39944458008, 109.38710784912 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n25"] = {
        slot = "medium_tier_apart",
        entry_point = {-784.66369628906, 459.69317626953, 100.38928985596 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n26"] = {
        slot = "medium_tier_apart",
        entry_point = {-679.11090087891, 512.01483154297, 113.52597045898 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n27"] = {
        slot = "medium_tier_apart",
        entry_point = {-667.35467529297, 471.80880737305, 114.13646697998 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n28"] = {
        slot = "medium_tier_apart",
        entry_point = {-641.00653076172, 520.53100585938, 109.88278198242 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n29"] = {
        slot = "medium_tier_apart",
        entry_point = {-580.35260009766, 492.21530151367, 108.90233612061 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n30"] = {
        slot = "medium_tier_apart",
        entry_point = {-622.69152832031, 488.89440917969, 108.87704467773 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n31"] = {
        slot = "medium_tier_apart",
        entry_point = {-595.59411621094, 530.24499511719, 107.75480651855 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n32"] = {
        slot = "medium_tier_apart",
        entry_point = {-561.10693359375, 402.64929199219, 101.80590057373 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n33"] = {
        slot = "medium_tier_apart",
        entry_point = {-595.50238037109, 393.07995605469, 101.88249206543 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n34"] = {
        slot = "medium_tier_apart",
        entry_point = {-1931.1569824219, 362.3757019043, 93.976341247559 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n35"] = {
        slot = "medium_tier_apart",
        entry_point = {-469.47415161133, 329.39495849609, 104.74592590332 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n36"] = {
        slot = "medium_tier_apart",
        entry_point = {-443.98876953125, 342.88174438477, 105.62078094482 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n37"] = {
        slot = "medium_tier_apart",
        entry_point = {-409.57043457031, 341.2721862793, 108.90745544434 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n38"] = {
        slot = "medium_tier_apart",
        entry_point = {-327.78820800781, 369.69400024414, 110.00605010986 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n39"] = {
        slot = "medium_tier_apart",
        entry_point = {-298.07962036133, 380.34356689453, 112.09539794922 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n40"] = {
        slot = "medium_tier_apart",
        entry_point = {-239.06715393066, 381.74038696289, 112.62311553955 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n41"] = {
        slot = "medium_tier_apart",
        entry_point = {-213.78153991699, 399.61724853516, 111.30392456055 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n42"] = {
        slot = "medium_tier_apart",
        entry_point = {-168.96943664551, 431.8918762207, 111.22441864014 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n43"] = {
        slot = "medium_tier_apart",
        entry_point = {-371.4591, 407.553, 110.4986 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n44"] = {
        slot = "medium_tier_apart",
        entry_point = {-304.78744506836, 431.12060546875, 110.4822845459 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n45"] = {
        slot = "medium_tier_apart",
        entry_point = {-450.91580200195, 395.23333740234, 104.7781829834 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n46"] = {
        slot = "medium_tier_apart",
        entry_point = {-517.08062744141, 433.57177734375, 97.802307128906 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n47"] = {
        slot = "medium_tier_apart",
        entry_point = {-532.7626953125, 464.69744873047, 103.19361114502 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n48"] = {
        slot = "medium_tier_apart",
        entry_point = {-526.60241699219, 517.0029296875, 112.94216156006 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n49"] = {
        slot = "medium_tier_apart",
        entry_point = {-520.69769287109, 594.17388916016, 120.8366394043 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n50"] = {
        slot = "medium_tier_apart",
        entry_point = {-474.30297851563, 585.86468505859, 128.68399047852 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n51"] = {
        slot = "medium_tier_apart",
        entry_point = {-500.70974731445, 551.9248046875, 120.60171508789 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n52"] = {
        slot = "medium_tier_apart",
        entry_point = {-459.33804321289, 537.00286865234, 121.4607925415 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n53"] = {
        slot = "medium_tier_apart",
        entry_point = {-435.48678588867, 542.05682373047, 122.06963348389 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n54"] = {
        slot = "medium_tier_apart",
        entry_point = {-386.59112548828, 504.49176025391, 120.41268920898 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n55"] = {
        slot = "medium_tier_apart",
        entry_point = {-355.87490844727, 469.89123535156, 112.6466217041 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n56"] = {
        slot = "medium_tier_apart",
        entry_point = {-406.38705444336, 567.591796875, 124.60328674316 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n57"] = {
        slot = "medium_tier_apart",
        entry_point = {-378.5344543457, 548.21228027344, 123.85070800781 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n58"] = {
        slot = "medium_tier_apart",
        entry_point = {-349.03427124023, 515.23455810547, 120.64391326904 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n59"] = {
        slot = "medium_tier_apart",
        entry_point = {-311.84756469727, 474.95669555664, 111.82420349121 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n60"] = {
        slot = "medium_tier_apart",
        entry_point = {-615.57440185547, 398.25619506836, 101.62631225586 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n61"] = {
        slot = "medium_tier_apart",
        entry_point = {-1193.0955810547, 564.02813720703, 100.33945465088 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n62"] = {
        slot = "medium_tier_apart",
        entry_point = {-1122.8426513672, 486.31924438477, 82.350448608398 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n63"] = {
        slot = "medium_tier_apart",
        entry_point = {-1158.9034423828, 481.57571411133, 86.093704223633 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n64"] = {
        slot = "medium_tier_apart",
        entry_point = {-1215.6011962891, 457.89691162109, 92.063850402832 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n65"] = {
        slot = "medium_tier_apart",
        entry_point = {-1174.6365966797, 440.13598632813, 86.849830627441 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n66"] = {
        slot = "medium_tier_apart",
        entry_point = {-1094.1077880859, 427.26608276367, 75.880035400391 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n67"] = {
        slot = "medium_tier_apart",
        entry_point = {-1308.1734619141, 449.37713623047, 100.97021484375 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n68"] = {
        slot = "medium_tier_apart",
        entry_point = {-1371.5064697266, 444.00451660156, 105.8571472168 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n69"] = {
        slot = "medium_tier_apart",
        entry_point = {-1413.4758300781, 462.12802124023, 109.20854949951 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n70"] = {
        slot = "medium_tier_apart",
        entry_point = {-1343.8181152344, 481.32540893555, 102.76188659668 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n71"] = {
        slot = "medium_tier_apart",
        entry_point = {-1500.6556396484, 523.11541748047, 118.27212524414 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n72"] = {
        slot = "medium_tier_apart",
        entry_point = {-1452.7628173828, 545.39923095703, 120.79947662354 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n73"] = {
        slot = "medium_tier_apart",
        entry_point = {-1404.7841796875, 561.71295166016, 125.40626525879 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n74"] = {
        slot = "medium_tier_apart",
        entry_point = {-1364.4526367188, 569.85815429688, 134.97300720215 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n75"] = {
        slot = "medium_tier_apart",
        entry_point = {-1367.3432617188, 610.88977050781, 133.88256835938 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n76"] = {
        slot = "medium_tier_apart",
        entry_point = {-1291.9556884766, 650.23333740234, 141.50141906738 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n77"] = {
        slot = "medium_tier_apart",
        entry_point = {-1241.2580566406, 674.48529052734, 142.8119354248 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n78"] = {
        slot = "medium_tier_apart",
        entry_point = {-1218.4979248047, 665.31787109375, 144.53451538086 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n79"] = {
        slot = "medium_tier_apart",
        entry_point = {-1196.68359375, 693.24877929688, 147.4270324707 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n80"] = {
        slot = "medium_tier_apart",
        entry_point = {-516.39611816406, 683.73187255859, 151.25880432129 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n81"] = {
        slot = "medium_tier_apart",
        entry_point = {-446.08963012695, 686.36791992188, 153.11741638184 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n82"] = {
        slot = "medium_tier_apart",
        entry_point = {-564.69708251953, 684.28033447266, 146.41360473633 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n83"] = {
        slot = "medium_tier_apart",
        entry_point = {-533.60748291016, 709.54479980469, 153.15199279785 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n84"] = {
        slot = "medium_tier_apart",
        entry_point = {-352.99807739258, 668.33557128906, 169.07579040527 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n85"] = {
        slot = "medium_tier_apart",
        entry_point = {-495.46939086914, 738.48913574219, 163.02903747559 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n86"] = {
        slot = "medium_tier_apart",
        entry_point = {-494.04574584961, 796.09008789063, 184.34104919434 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n87"] = {
        slot = "medium_tier_apart",
        entry_point = {-599.8056640625, 807.41143798828, 191.3797454834 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n88"] = {
        slot = "medium_tier_apart",
        entry_point = {-6.5188760757446, 408.97610473633, 120.28819274902 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n89"] = {
        slot = "medium_tier_apart",
        entry_point = {39.910831451416, 361.52203369141, 116.0408782959 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n90"] = {
        slot = "medium_tier_apart",
        entry_point = {-1130.8797607422, 784.45025634766, 163.88775634766 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n91"] = {
        slot = "medium_tier_apart",
        entry_point = {-962.66375732422, 814.27374267578, 177.75703430176 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n92"] = {
        slot = "medium_tier_apart",
        entry_point = {-931.92993164063, 809.03497314453, 184.78088378906 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n93"] = {
        slot = "medium_tier_apart",
        entry_point = {-998.23443603516, 768.61364746094, 171.58267211914 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n94"] = {
        slot = "medium_tier_apart",
        entry_point = {-824.03204345703, 805.9638671875, 202.78443908691 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n96"] = {
        slot = "medium_tier_apart",
        entry_point = {-66.66820526123, 489.99426269531, 144.88442993164 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n97"] = {
        slot = "medium_tier_apart",
        entry_point = {42.96756362915, 468.81405639648, 148.09591674805 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n98"] = {
        slot = "medium_tier_apart",
        entry_point = {80.029373168945, 486.26986694336, 148.20161437988 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n99"] = {
        slot = "medium_tier_apart",
        entry_point = {119.91096496582, 494.04287719727, 147.34294128418 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Rockford Hills n100"] = {
        slot = "medium_tier_apart",
        entry_point = {-72.864585876465, 428.46035766602, 113.03815460205 + 0.5},
        buy_price = 30000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vineyard Mansion"] = {
        slot = "vineyard_mansion",
        entry_point = {-1888.6137695313, 2050.2224121094, 140.98388671875 + 0.5},
        buy_price = 500000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vineyardmansion.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "VineyardMansion",
        bounds = {vector3(-1704.581299, 2241.807129, 42.128059), vector3(-1993.330811, 1945.925903, 171.935577)},
    },
    ["Marlowe Resort"] = {
        slot = "marlowe_resort",
        entry_point = {-1516.7032470703, 851.73767089844, 181.59451293945 + 0.5},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/Marlowe%20Resort.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "MarloweResort",
        bounds = {vector3(-1468.013672, 891.014771, 157.306839), vector3(-1553.884155, 794.227905, 204.284332)},
    },
    ["Sandy Studio"] = {
        slot = "sandy_studio",
        entry_point = {2466.5788574219, 4092.4873046875, 37.994522094727 + 0.5},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandystudio.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "SandyStudio",
        bounds = {vector3(2500.833008, 4151.991699, 20.239584), vector3(2440.636230, 4063.220703, 62.013481)},
    },
    ["Diamond Penthouse"] = {
        slot = "diamond_penthouse",
        entry_point = {969.57824707031, 63.19743347168, 112.55540466309},
        buy_price = 10000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/designerpenthouse.png",
        blipId = 374,
        blipColour = 2,
        bounds = vector3(1045.034790, 99.076233, 54.787098), vector3(868.125000, -33.949463, 154.512817),
    },
    ["Eastbourne Hotel 1"] = {
        slot = "eastbournehotel1",
        entry_point = {-362.0888671875,57.256561279297,55.429756164551},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 2"] = {
        slot = "eastbournehotel2",
        entry_point = {-350.58987426758,56.943153381348,55.436489105225},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 3"] = {
        slot = "eastbournehotel3",
        entry_point = {-343.99240112305,57.069763183594,55.435417175293},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 4"] = {
        slot = "eastbournehotel4",
        entry_point = {-333.05966186523,56.52075958252,55.429779052734},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 5"] = {
        slot = "eastbournehotel5",
        entry_point = {-366.24761962891,53.044929504395,55.747756958008},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-308.723114, 81.119339, 34.274727), vector3(-387.704987, 36.884403, 75.114120)},
    },
    ["Eastbourne Hotel 6"] = {
        slot = "eastbournehotel6",
        entry_point = {-366.24572753906,53.130004882813,59.747692108154},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 7"] = {
        slot = "eastbournehotel7",
        entry_point = {-350.58587646484,57.298046112061,59.746398925781},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 8"] = {
        slot = "eastbournehotel8",
        entry_point = {-344.08508300781,57.187068939209,59.746364593506},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 9"] = {
        slot = "eastbournehotel9",
        entry_point = {-332.95080566406,56.876174926758,59.746116638184},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-300.495117, 100.777763, 43.469418), vector3(-404.463470, -6.272575, 74.091049)},
    },
    ["Eastbourne Hotel 10"] = {
        slot = "eastbournehotel10",
        entry_point = {-329.79864501953,52.281600952148,59.747764587402},
        buy_price = 20000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(-393.976349, -7.166050, 21.821091), vector3(-299.485992, 90.198257, 80.791046)},
    },
    ["Mirror Park House 1"] = {
        slot = "mirrorpark1",
        entry_point = {1303.1352539063,-527.72839355469,72.000285644531},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1333.840454, -485.331818, 62.649708), vector3(1283.297241, -558.739014, 85.520393)},
    },
    ["Mirror Park House 2"] = {
        slot = "mirrorpark2",
        entry_point = {1348.2620849609,-547.07476806641,74.491647338867},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1319.495850, -518.324829, 56.648857), vector3(1383.678833, -561.598816, 87.266098)},
    },
    ["Mirror Park House 3"] = {
        slot = "mirrorpark3",
        entry_point = {1388.6031494141,-569.73217773438,75.001678466797},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1364.560669, -546.145264, 62.625092), vector3(1429.924194, -586.017273, 100.357941)},
    },
    ["Mirror Park House 4"] = {
        slot = "mirrorpark4",
        entry_point = {1385.7469482422,-593.20758056641,74.522773742676},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1415.918213, -565.718384, 60.616364), vector3(1370.755249, -630.443909, 87.383148)},
    },
    ["Mirror Park House 5"] = {
        slot = "mirrorpark5",
        entry_point = {1367.2368164063,-605.77960205078,74.72631072998},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1336.476440, -587.404602, 55.120026), vector3(1394.268677, -637.595459, 97.459564)},
    },
    ["Mirror Park House 6"] = {
        slot = "mirrorpark6",
        entry_point = {1323.6789550781,-582.53771972656,73.246482849121},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1307.469116, -561.187012, 56.840424), vector3(1346.171753, -609.156860, 93.185150)},
    },
    ["Mirror Park House 7"] = {
        slot = "mirrorpark7",
        entry_point = {1301.2249755859,-573.41339111328,71.734733581543},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1273.681030, -547.011292, 57.910824), vector3(1317.687012, -601.444519, 86.711769)},
    },
    ["Mirror Park House 8"] = {
        slot = "mirrorpark8",
        entry_point = {960.46533203125,-669.49523925781,58.450061798096},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(977.944153, -638.215271, 29.431028), vector3(907.777344, -705.850708, 80.726486)},
    },
    ["Mirror Park House 9"] = {
        slot = "mirrorpark9",
        entry_point = {920.1396484375,-570.22320556641,58.37610244751},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(886.341736, -540.630310, 49.127045), vector3(940.117249, -583.815308, 76.118469)},
    },
    ["Mirror Park House 10"] = {
        slot = "mirrorpark10",
        entry_point = {1100.5989990234,-411.40798950195,67.555084228516},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(1137.645264, -383.949066, 50.781654), vector3(1089.197754, -447.042725, 97.843597)},
    },
    ["Mirror Park House 11"] = {
        slot = "mirrorpark11",
        entry_point = {906.65960693359,-490.259765625,59.472988128662},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(919.584717, -442.531555, 41.818245), vector3(879.692017, -507.491730, 75.096687)},
    },
    ["Business Centre 1"] = {
        slot = "office_1",
        entry_point = {-149.85494995117, -625.79339599609, 48.904418945312},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 2"] = {
        slot = "office_1",
        entry_point = {-150.65933227539, -628.15386962891, 48.904418945312},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 3"] = {
        slot = "office_1",
        entry_point = {-151.63516235352, -630.73846435547, 48.904418945312},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 4"] = {
        slot = "office_1",
        entry_point = {-152.53186035156, -633.41540527344, 48.904418945312},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 5"] = {
        slot = "office_1",
        entry_point = {-154.99780273438, -604.77362060547, 48.73583984375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 6"] = {
        slot = "office_1",
        entry_point = {-156.8571472168, -602.14947509766, 48.73583984375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 7"] = {
        slot = "office_1",
        entry_point = {-179.6967010498, -593.72308349609, 48.718994140625},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 8"] = {
        slot = "office_1",
        entry_point = {-182.47912597656, -593.76263427734, 48.718994140625},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 9"] = {
        slot = "office_1",
        entry_point = {-176.22857666016, -593.11645507812, 48.718994140625},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 10"] = {
        slot = "office_1",
        entry_point = {-186.27691650391, -594.54064941406, 48.718994140625},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Grove Street 12"] = {
        slot = "Cheap_Home",
        entry_point = {85.283157348633, -1959.3740234375, 22.121461868286 + 0.5},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 13"] = {
        slot = "Cheap_Home",
        entry_point = {-51.07253, -1783.556, 28.28577 + 0.5},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 14"] = {
        slot = "Cheap_Home",
        entry_point = {-43.015384674072, -1793.2087402344, 28.195922851562},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 15"] = {
        slot = "Cheap_Home",
        entry_point = {126.54066467285, -1929.7449951172, 21.877319335938},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 16"] = {
        slot = "Cheap_Home",
        entry_point = {113.70989227295, -1960.4571533203, 21.62451171875},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 17"] = {
        slot = "Cheap_Home",
        entry_point = {77.632820129395,-1948.6473388672,21.174163818359},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 18"] = {
        slot = "Cheap_Home",
        entry_point = {-41.591209411621, -1794.10546875, 27.926391601562},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Grove Street 19"] = {
        slot = "Cheap_Home",
        entry_point = {-50.531867980957, -1783.6087646484, 28.785766601562},
        buy_price = 20000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grovestreet.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 1"] = {
        slot = "Cheap_Home",
        entry_point = {1297.6351318359, -1738.6812744141, 54.36376953125},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 2"] = {
        slot = "Cheap_Home",
        entry_point = {1289.8813476562, -1712.2548828125, 55.56005859375},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 3"] = {
        slot = "Cheap_Home",
        entry_point = {1315.5692138672, -1730.9143066406, 55.189331054688},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 4"] = {
        slot = "Cheap_Home",
        entry_point = {1313.0637207031, -1699.8989257812, 58.323486328125},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 5"] = {
        slot = "Cheap_Home",
        entry_point = {1336.9714355469, -1688.2153320312, 61.002563476562},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 7"] = {
        slot = "Cheap_Home",
        entry_point = {1365.1120605469, -1720.4571533203, 66.225952148438},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 8"] = {
        slot = "Cheap_Home",
        entry_point = {1349.4066162109, -1747.0549316406, 64.57470703125},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 9"] = {
        slot = "Cheap_Home",
        entry_point = {1369.6746826172, -1736.17578125, 65.669921875},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 10"] = {
        slot = "Cheap_Home",
        entry_point = {1369.3978271484, -1745.2879638672, 65.787963867188},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 11"] = {
        slot = "Cheap_Home",
        entry_point = {1257.8637695312, -1760.17578125, 49.746826171875},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 12"] = {
        slot = "Cheap_Home",
        entry_point = {-356.33407592773, 6206.0043945312, 31.987182617188},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 13"] = {
        slot = "Cheap_Home",
        entry_point = {-373.66152954102, 6190.2592773438, 32.223022460938},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 14"] = {
        slot = "Cheap_Home",
        entry_point = {-378.26373291016, 6254.6372070312, 32.020874023438},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 15"] = {
        slot = "Cheap_Home",
        entry_point = {-406.44396972656, 6313.8725585938, 29.44287109375},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 16"] = {
        slot = "Cheap_Home",
        entry_point = {-302.8483581543, 6327.9560546875, 33.031860351562},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 17"] = {
        slot = "Cheap_Home",
        entry_point = {-281.35385131836, 6351.82421875, 32.981323242188},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 18"] = {
        slot = "Cheap_Home",
        entry_point = {-249.53405761719, 6370.8129882812, 31.970336914062},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 19"] = {
        slot = "Cheap_Home",
        entry_point = {-272.14944458008, 6399.40234375, 31.835571289062},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 20"] = {
        slot = "Cheap_Home",
        entry_point = {-246.9098815918, 6413.2749023438, 31.683837890625},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 21"] = {
        slot = "Cheap_Home",
        entry_point = {-229.60879516602, 6445.0947265625, 31.683837890625},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 22"] = {
        slot = "Cheap_Home",
        entry_point = {-189.87692260742, 6411.4682617188, 32.408447265625},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 23"] = {
        slot = "Cheap_Home",
        entry_point = {-44.795604705811, 6582.7119140625, 32.6611328125},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 24"] = {
        slot = "Cheap_Home",
        entry_point = {-40.219779968262, 6637.2001953125, 31.582763671875},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 25"] = {
        slot = "Cheap_Home",
        entry_point = {-27.995601654053, 6598.615234375, 31.970336914062},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 26"] = {
        slot = "Cheap_Home",
        entry_point = {0.54065936803818, 6613.806640625, 32.374755859375},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 27"] = {
        slot = "Cheap_Home",
        entry_point = {-9.481315612793, 6653.2880859375, 31.599609375},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 28"] = {
        slot = "Cheap_Home",
        entry_point = {35.327476501465, 6661.9780273438, 32.677978515625},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 29"] = {
        slot = "Cheap_Home",
        entry_point = {12.59340763092, 6577.4506835938, 33.234008789062},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 30"] = {
        slot = "Cheap_Home",
        entry_point = {-14.36043548584, 6558.6196289062, 33.739501953125},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 31"] = {
        slot = "Cheap_Home",
        entry_point = {880.25933837891, -206.28131103516, 72.46044921875},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 32"] = {
        slot = "Cheap_Home",
        entry_point = {920.00439453125, -239.36703491211, 70.60693359375},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 33"] = {
        slot = "Cheap_Home",
        entry_point = {930.97583007812, -246.0, 69.494873046875},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 34"] = {
        slot = "Cheap_Home",
        entry_point = {1113.8110351562, -390.89669799805, 69.225219726562},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 35"] = {
        slot = "Cheap_Home",
        entry_point = {1098.9890136719, -437.61758422852, 68.079467773438},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 36"] = {
        slot = "Cheap_Home",
        entry_point = {1097.9340820312, -464.91427612305, 67.776245117188},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Cheap Home 37"] = {
        slot = "Cheap_Home",
        entry_point = {1089.9560546875, -484.43075561523, 66.158569335938},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Maze Bank Tower 1"] = {
        slot = "office_maze_tower_powerbrokerice",
        entry_point = {-56.927467346191, -803.47253417969, 44.7255859375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2,
        bounds = {vector3(-135.359299, -770.406616, 4.939728), vector3(-37.554531, -860.446716, 348.693237)},
    },
    ["Maze Bank Tower 2"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-61.951644897461, -801.49450683594, 44.7255859375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 3"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-66.369232177734, -800.86151123047, 44.7255859375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 4"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-70.826370239258, -799.42419433594, 44.7255859375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 5"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-79.503295898438, -795.57360839844, 44.7255859375},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 6"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-93.072525024414, -834.32965087891, 41.035522460938},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 7"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-83.65714263916, -836.69012451172, 41.052368164062},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 8"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-78.936264038086, -837.9560546875, 41.052368164062},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Maze Bank Tower 9"] = {
        slot = "office_maze_tower_exec_rich",
        entry_point = {-71.512084960938, -841.50329589844, 41.052368164062},
        buy_price = 60000000,
        sell_price = 7500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Radio Tower Shed 1"] = {
        slot = "100_motel",
        entry_point = {-1005.3322753906,4842.4467773438,275.00640869141 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/radioshed.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Shed 1"] = {
        slot = "100_motel",
        entry_point = {751.48468017578,6459.2583007813,31.367227554321 + 0.5},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Shed 2"] = {
        slot = "100_motel",
        entry_point = {1469.9932861328,6541.5141601563,14.680897712708 + 0.5},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto Shed 3"] = {
        slot = "100_motel",
        entry_point = {1681.3045654297,6428.8999023438,32.175159454346 + 0.5},
        buy_price = 10000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 1"] = {
        slot = "Cheap_Home",
        entry_point = {-481.91708374023,6276.5668945313,13.411512374878 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 2"] = {
        slot = "Cheap_Home",
        entry_point = {-448.16506958008,6259.9140625,30.048154830933 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 3"] = {
        slot = "Cheap_Home",
        entry_point = {-467.86917114258,6206.5219726563,29.55281829834 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 4"] = {
        slot = "Cheap_Home",
        entry_point = {-371.59063720703,6267.4614257813,31.508787155151 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 5"] = {
        slot = "Cheap_Home",
        entry_point = {-359.33517456055,6334.185546875,29.844137191772 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 6"] = {
        slot = "Cheap_Home",
        entry_point = {-333.02673339844,6302.5502929688,33.088062286377 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 7"] = {
        slot = "Cheap_Home",
        entry_point = {-294.51962280273,6296.8701171875,31.492437362671 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 8"] = {
        slot = "Cheap_Home",
        entry_point = {-227.58796691895,6377.7651367188,31.759302139282 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 9"] = {
        slot = "Cheap_Home",
        entry_point = {-213.79632568359,6396.2197265625,33.08402633667 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 10"] = {
        slot = "Cheap_Home",
        entry_point = {-130.37046813965,6551.6137695313,29.522787094116 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 12"] = {
        slot = "Cheap_Home",
        entry_point = {-105.31304931641,6528.8671875,30.166650772095 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 14"] = {
        slot = "Cheap_Home",
        entry_point = {56.451396942139,6646.0478515625,32.276473999023 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 15"] = {
        slot = "Cheap_Home",
        entry_point = {-679.56268310547,5833.8999023438,17.331327438354 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 16"] = {
        slot = "Cheap_Home",
        entry_point = {1522.6241455078,6329.3403320313,24.606830596924 + 0.5},
        buy_price = 50000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 17"] = {
        slot = "Cheap_Home",
        entry_point = {1538.9783935547,6322.1025390625,24.884267807007 + 0.5},
        buy_price = 50000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 18"] = {
        slot = "Cheap_Home",
        entry_point = {-481.22760009766,6265.50390625,14.415592193604},
        buy_price = 20000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 19"] = {
        slot = "Cheap_Home",
        entry_point = {-443.16189575195,6332.5688476562,14.084847450256},
        buy_price = 20000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 20"] = {
        slot = "Cheap_Home",
        entry_point = {-453.6955871582,6337.3393554688,13.825386047363},
        buy_price = 20000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 21"] = {
        slot = "Cheap_Home",
        entry_point = {-400.23941040039,6378.306640625,15.067602157593  },
        buy_price = 20000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 22"] = {
        slot = "Cheap_Home",
        entry_point = {1428.576171875,6353.865234375,24.984972000122},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 23"] = {
        slot = "Cheap_Home",
        entry_point = {1463.3670654297,6360.1577148438,23.835193634033},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Paleto 24"] = {
        slot = "Cheap_Home",
        entry_point = {1455.8200683594,6360.5541992188,23.868139266968},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Senora Hatch 1"] = {
        slot = "Cheap_Home",
        entry_point = {2221.265625,5614.5297851563,54.910800933838 + 0.5},
        buy_price = 20000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 1"] = {
        slot = "100_motel",
        entry_point = {-77.251174926758,-1515.4644775391,34.245357513428 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 2"] = {
        slot = "100_motel",
        entry_point = {-71.340881347656,-1508.4033203125,33.436145782471 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 3"] = {
        slot = "100_motel",
        entry_point = {-65.473571777344,-1513.3702392578,33.436111450195 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 4"] = {
        slot = "100_motel",
        entry_point = {-60.408374786377,-1517.6348876953,33.436157226563 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 5"] = {
        slot = "100_motel",
        entry_point = {-53.67066192627,-1523.4554443359,33.436172485352 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 6"] = {
        slot = "100_motel",
        entry_point = {-59.491069793701,-1530.5665283203,34.235214233398 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 7"] = {
        slot = "100_motel",
        entry_point = {-61.951835632324,-1532.1566162109,34.235214233398 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 8"] = {
        slot = "100_motel",
        entry_point = {-68.93968963623,-1526.2341308594,34.235252380371 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 9"] = {
        slot = "100_motel",
        entry_point = {-77.508018493652,-1515.2987060547,37.419563293457 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 10"] = {
        slot = "100_motel",
        entry_point = {-71.444961547852,-1508.2952880859,36.624927520752 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 11"] = {
        slot = "100_motel",
        entry_point = {-65.290031433105,-1513.1170654297,36.624927520752 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 12"] = {
        slot = "100_motel",
        entry_point = {-60.256851196289,-1517.5543212891,36.624927520752 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 13"] = {
        slot = "100_motel",
        entry_point = {-53.847396850586,-1523.1798095703,36.624923706055 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 14"] = {
        slot = "100_motel",
        entry_point = {-59.519256591797,-1530.3937988281,37.419631958008 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 15"] = {
        slot = "100_motel",
        entry_point = {-62.02025604248,-1532.158203125,37.419631958008 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Chamberlain Hills 16"] = {
        slot = "100_motel",
        entry_point = {-68.974922180176,-1526.3354492188,37.419631958008 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 1"] = {
        slot = "100_motel",
        entry_point = {-84.003684997559,-1622.7453613281,31.477024078369 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 2"] = {
        slot = "100_motel",
        entry_point = {-89.874938964844,-1629.77734375,31.505592346191 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 3"] = {
        slot = "100_motel",
        entry_point = {-97.433662414551,-1638.9725341797,32.103130340576 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 4"] = {
        slot = "100_motel",
        entry_point = {-105.276222229,-1632.3404541016,32.90699005127 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 5"] = {
        slot = "100_motel",
        entry_point = {-109.36850738525,-1628.7521972656,32.907558441162 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 6"] = {
        slot = "100_motel",
        entry_point = {-97.383155822754,-1612.7475585938,32.312431335449 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 7"] = {
        slot = "100_motel",
        entry_point = {-93.212112426758,-1607.5065917969,32.312007904053 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 8"] = {
        slot = "100_motel",
        entry_point = {-88.084403991699,-1601.7474365234,32.311912536621 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 9"] = {
        slot = "100_motel",
        entry_point = {-80.485252380371,-1608.1773681641,31.480884552002 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 10"] = {
        slot = "100_motel",
        entry_point = {-83.95556640625,-1622.7653808594,34.689144134521 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 11"] = {
        slot = "100_motel",
        entry_point = {-89.83470916748,-1629.759765625,34.689155578613 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 12"] = {
        slot = "100_motel",
        entry_point = {-97.308052062988,-1638.8529052734,35.489101409912 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 13"] = {
        slot = "100_motel",
        entry_point = {-98.976585388184,-1637.8580322266,35.484172821045 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 14"] = {
        slot = "100_motel",
        entry_point = {-105.2975692749,-1632.3974609375,36.289054870605 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 15"] = {
        slot = "100_motel",
        entry_point = {-109.09503173828,-1628.8082275391,36.2890625 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 16"] = {
        slot = "100_motel",
        entry_point = {-97.610809326172,-1612.4399414063,35.489200592041 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 17"] = {
        slot = "100_motel",
        entry_point = {-93.434555053711,-1607.2893066406,35.489200592041 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 18"] = {
        slot = "100_motel",
        entry_point = {-88.183532714844,-1601.8178710938,35.489200592041 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Carson Ave 19"] = {
        slot = "100_motel",
        entry_point = {-80.38011932373,-1607.9699707031,34.68921661377 + 0.5},
        buy_price = 6000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 1"] = {
        slot = "100_motel",
        entry_point = {-1543.3518066406,-249.31552124023,48.280624389648 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 2"] = {
        slot = "100_motel",
        entry_point = {-1538.6677246094,-255.15060424805,48.275775909424 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 3"] = {
        slot = "100_motel",
        entry_point = {-1533.4354248047,-260.54061889648,48.27465057373 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 4"] = {
        slot = "100_motel",
        entry_point = {-1536.8643798828,-270.29119873047,48.278373718262 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 5"] = {
        slot = "100_motel",
        entry_point = {-1538.4935302734,-272.2373046875,48.278377532959 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 6"] = {
        slot = "100_motel",
        entry_point = {-1541.5667724609,-276.32150268555,48.278984069824 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 7"] = {
        slot = "100_motel",
        entry_point = {-1543.1352539063,-278.36004638672,48.279197692871 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 8"] = {
        slot = "100_motel",
        entry_point = {-1549.9228515625,-283.80166625977,48.278854370117 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 9"] = {
        slot = "100_motel",
        entry_point = {-1555.3828125,-279.31591796875,48.278450012207 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 10"] = {
        slot = "100_motel",
        entry_point = {-1560.7200927734,-274.49884033203,48.2783203125 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 12"] = {
        slot = "100_motel",
        entry_point = {-1583.4135742188,-265.71881103516,48.275638580322 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 13"] = {
        slot = "100_motel",
        entry_point = {-1581.7520751953,-277.91558837891,48.275707244873 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 14"] = {
        slot = "100_motel",
        entry_point = {-1574.3929443359,-289.65475463867,48.275707244873 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 15"] = {
        slot = "100_motel",
        entry_point = {-1569.2377929688,-294.74282836914,48.275707244873 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 16"] = {
        slot = "100_motel",
        entry_point = {-1564.2045898438,-300.08465576172,48.228328704834 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 17"] = {
        slot = "100_motel",
        entry_point = {-1555.5196533203,-290.54119873047,48.269329071045 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 18"] = {
        slot = "100_motel",
        entry_point = {-1561.0913085938,-285.76718139648,48.275714874268 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["South Rockford 19"] = {
        slot = "100_motel",
        entry_point = {-1566.6726074219,-280.80758666992,48.275733947754 + 0.5},
        buy_price = 14000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipId = 374,
        blipColour = 2
    },
    ["Sharp Apartment 1"] = {
        slot = "eclipse_towers_sharp",
        entry_point = {282.48043823242,-815.69555664063,29.313070297241 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Sharp Apartment 2"] = {
        slot = "eclipse_towers_sharp",
        entry_point = {-59.719463348389,-616.28265380859,37.36194229126 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Regal Apartment 1"] = {
        slot = "eclipse_towers_regal",
        entry_point = {143.39433288574,-832.36553955078,31.171886444092 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Regal Apartment 2"] = {
        slot = "eclipse_towers_regal",
        entry_point = {363.19247436523,-711.82946777344,29.282138824463 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Seductive Apartment 1"] = {
        slot = "eclipse_towers_seductive",
        entry_point = {-211.22396850586,-723.07086181641,33.550350189209 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Seductive Apartment 2"] = {
        slot = "eclipse_towers_seductive",
        entry_point = {285.74792480469,-937.32983398438,29.397493362427 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Monochrome Apartment 1"] = {
        slot = "eclipse_towers_monochrome",
        entry_point = {-212.9917755127,-728.18359375,33.5360832214369 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Monochrome Apartment 2"] = {
        slot = "eclipse_towers_monochrome",
        entry_point = {307.81719970703,-727.97613525391,29.3167552948 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vibrant Apartment 1"] = {
        slot = "eclipse_towers_vibrant",
        entry_point = {-215.13442993164,-733.10241699219,33.508548736572 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vibrant Apartment 2"] = {
        slot = "eclipse_towers_vibrant",
        entry_point = {-310.28970336914,222.27450561523,87.926452636719 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Moody Apartment 2"] = {
        slot = "eclipse_towers_moody",
        entry_point = {-71.250022888184,142.60317993164,81.55086517334 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(2.112892, 192.379837, 70.574898), vector3(-99.253036, 94.503319, 145.631134)},
    },
    ["Modern Apartment 1"] = {
        slot = "eclipse_towers_modern",
        entry_point = {-570.40545654297,-395.02557373047,35.05655670166 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Modern Apartment 2"] = {
        slot = "eclipse_towers_modern",
        entry_point = {-1545.2463378906,-529.92614746094,36.148166656494 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cityapartment.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 1"] = {
        slot = "Cheap_Home",
        entry_point = {997.13519287109,-729.28131103516,57.815727233887 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 2"] = {
        slot = "Cheap_Home",
        entry_point = {979.599609375,-715.90795898438,58.02233505249 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 3"] = {
        slot = "Cheap_Home",
        entry_point = {970.84063720703,-701.23400878906,58.481948852539 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 4"] = {
        slot = "Cheap_Home",
        entry_point = {943.55590820313,-653.46734619141,58.429042816162 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 5"] = {
        slot = "Cheap_Home",
        entry_point = {929.26165771484,-639.38500976563,58.242290496826 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 6"] = {
        slot = "Cheap_Home",
        entry_point = {903.44226074219,-615.99035644531,58.453102111816 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 7"] = {
        slot = "Cheap_Home",
        entry_point = {887.12377929688,-607.93249511719,58.381717681885 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 8"] = {
        slot = "Cheap_Home",
        entry_point = {861.74530029297,-583.12469482422,58.156658172607 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 9"] = {
        slot = "Cheap_Home",
        entry_point = {844.21752929688,-563.25689697266,57.834114074707 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 10"] = {
        slot = "Cheap_Home",
        entry_point = {850.75158691406,-532.60430908203,57.925254821777 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 11"] = {
        slot = "Cheap_Home",
        entry_point = {854.69079589844,-516.333984375,57.328380584717 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 12"] = {
        slot = "Cheap_Home",
        entry_point = {879.0712890625,-498.41204833984,57.875877380371 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 13"] = {
        slot = "Cheap_Home",
        entry_point = {922.19079589844,-478.29751586914,61.083698272705 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 14"] = {
        slot = "Cheap_Home",
        entry_point = {944.03491210938,-463.54019165039,61.394561767578 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 15"] = {
        slot = "Cheap_Home",
        entry_point = {967.42498779297,-452.08349609375,62.789260864258 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 16"] = {
        slot = "Cheap_Home",
        entry_point = {987.89208984375,-433.66510009766,63.890308380127 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 17"] = {
        slot = "Cheap_Home",
        entry_point = {1010.4334106445,-423.3889465332,65.348663330078 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 18"] = {
        slot = "Cheap_Home",
        entry_point = {1029.2569580078,-408.75784301758,65.949409484863 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 19"] = {
        slot = "Cheap_Home",
        entry_point = {1060.7647705078,-378.49905395508,68.231132507324 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 20"] = {
        slot = "Cheap_Home",
        entry_point = {979.96252441406,-627.43481445313,59.235809326172 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 21"] = {
        slot = "Cheap_Home",
        entry_point = {963.86090087891,-596.06732177734,59.90274810791 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 22"] = {
        slot = "Cheap_Home",
        entry_point = {976.25201416016,-579.93707275391,59.635612487793 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 23"] = {
        slot = "Cheap_Home",
        entry_point = {1010.4010009766,-572.49627685547,60.594398498535 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 24"] = {
        slot = "Cheap_Home",
        entry_point = {1000.0812988281,-594.08306884766,59.63858795166 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 25"] = {
        slot = "Cheap_Home",
        entry_point = {994.21453857422,-620.46685791016,59.039558410645 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 26"] = {
        slot = "Cheap_Home",
        entry_point = {965.44787597656,-542.14184570313,59.456176757813 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 27"] = {
        slot = "Cheap_Home",
        entry_point = {987.97546386719,-526.03033447266,60.720035552979 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 28"] = {
        slot = "Cheap_Home",
        entry_point = {1006.0800170898,-511.27288818359,60.833896636963 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 29"] = {
        slot = "Cheap_Home",
        entry_point = {1046.3061523438,-497.57678222656,64.07935333252 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 30"] = {
        slot = "Cheap_Home",
        entry_point = {1051.7758789063,-470.63192749023,63.898941040039 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 31"] = {
        slot = "Cheap_Home",
        entry_point = {1056.1591796875,-448.77258300781,66.257438659668 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 32"] = {
        slot = "Cheap_Home",
        entry_point = {1229.0129394531,-725.54724121094,60.797946929932 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 33"] = {
        slot = "Cheap_Home",
        entry_point = {1222.2376708984,-697.13891601563,60.809204101563 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 34"] = {
        slot = "Cheap_Home",
        entry_point = {1221.3576660156,-668.91217041016,63.493713378906 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 35"] = {
        slot = "Cheap_Home",
        entry_point = {1206.6859130859,-620.40673828125,66.438766479492 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 36"] = {
        slot = "Cheap_Home",
        entry_point = {1203.6772460938,-598.75500488281,68.063484191895 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 37"] = {
        slot = "Cheap_Home",
        entry_point = {1200.7387695313,-576.04754638672,69.13907623291 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 38"] = {
        slot = "Cheap_Home",
        entry_point = {1204.2508544922,-557.80523681641,69.576667785645 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 39"] = {
        slot = "Cheap_Home",
        entry_point = {1241.6832275391,-566.03045654297,69.657379150391 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 40"] = {
        slot = "Cheap_Home",
        entry_point = {1237.0003662109,-589.10144042969,69.526222229004 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 41"] = {
        slot = "Cheap_Home",
        entry_point = {1251.1968994141,-621.27813720703,69.413208007813 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 42"] = {
        slot = "Cheap_Home",
        entry_point = {1265.4489746094,-648.42852783203,67.921485900879 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 43"] = {
        slot = "Cheap_Home",
        entry_point = {1270.9724121094,-683.43927001953,66.031593322754 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 44"] = {
        slot = "Cheap_Home",
        entry_point = {1265.1000976563,-702.94055175781,64.585708618164 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 45"] = {
        slot = "Cheap_Home",
        entry_point = {1251.4266357422,-515.61663818359,69.34903717041 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 46"] = {
        slot = "Cheap_Home",
        entry_point = {1251.8126220703,-494.16674804688,69.907859802246 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 47"] = {
        slot = "Cheap_Home",
        entry_point = {1259.8138427734,-479.83428955078,70.189254760742 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 48"] = {
        slot = "Cheap_Home",
        entry_point = {1266.1467285156,-457.9674987793,70.517585754395 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park 49"] = {
        slot = "Cheap_Home",
        entry_point = {1262.8853759766,-429.54254150391,69.993103027344 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Designer Penthouse"] = {
        slot = "designerpenthouse",
        entry_point = {-305.87030029297,-723.46014404297,28.03066444397 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/designerpenthouse.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "DesignerPenthouse",
        bounds = {vector3(-322.598236, -766.612732, 16.371786), vector3(-240.826050, -685.875854, 139.279022)},
    },
    ["Airfield Trailer"] = {
        slot = "zenzytrailer",
        entry_point = {1758.8443603516,3297.7849121094,41.148319244385 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/trevorstrailer.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "AirfieldTrailer",
        bounds = {vector3(1743.051758, 3285.356201, 33.975536), vector3(1772.216187, 3321.489258, 55.577633)},
    },
    ["Paleto Bunker"] = {
        slot = "paletobunker",
        entry_point = {660.56573486328,6471.6591796875,32.719669342041 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "PaletoBunker1",
        bounds = vector3(411.312317, 6567.521484, 6.193388), vector3(703.963867, 6455.289062, 49.788483),
    },
    ["Marlowe Mansion"] = {
        slot = "marlowemansion",
        entry_point = {-1408.7238769531,736.56243896484,183.87989807129 + 0.5},
        buy_price = 15000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/Marlowe%20Resort.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "MarloweMansion",
        bounds = {vector3(-1379.648804, 778.633484, 156.849670), vector3(-1476.218872, 679.748413, 212.361298)},
    },
    ["Diamond Casino Offices"] = {
        slot = "diamondcasinooffices",
        entry_point = {941.09191894531,63.740043640137,80.902610778809 + 0.5},
        buy_price = 1000000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/diamondcasinooffices.png",
        blipId = 475,
        blipColour = 2,
        openInterior = false
    },
    ["Cyber Bar"] = {
        slot = "cyberbar",
        entry_point = {340.98608398438,-940.85491943359,29.416851043701 + 0.5},
        buy_price = 1000000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cyberbar.png",
        blipId = 475,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "Cyberbar",
        bounds = {vector3(263.809326, -961.770264, -10.445850), vector3(367.471619, -882.561707, 62.366104)},
    },
    ["Sustancia Villa"] = {
        slot = "sustanciavilla",
        entry_point = {3262.2946777344,-122.23464202881,15.731784820557 + 0.5},
        buy_price = 1000000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sustancia.png",
        blipId = 475,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "SustanciaVilla",
        bounds = {vector3(3362.155518, -216.186737, -11.334797), vector3(3196.009033, -41.225651, 43.587189)},
    },
    ["Lake Vinewood Estates Mansion"] = {
        slot = "lakevinewoodmansion",
        entry_point = {-85.666053771973, 834.7421875, 235.92010498047 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodestate.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "LakeVinewoodEstatesMansion",
        bounds = {vector3(-15.238796, 869.093140, 177.135361), vector3(-120.675568, 764.808411, 270.698547)},
    },
    ["Richman Mansion"] = {
        slot = "richmanmansion",
        entry_point = {-1481.5502929688,-41.575054168701,56.845321655273 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/richmanmansion.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "RichmanMansion",
        bounds = {vector3(-1430.555420, 5.500645, 24.286556), vector3(-1533.929321, -103.207283, 76.210030)},
    },
    ["Trickys Garage"] = {
        slot = "autoexotic",
        entry_point = {539.69165039062,-196.69194030762,54.487056732178 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/autoexotic.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "AutoExotic",
        bounds = {vector3(577.150330, -143.497101, 39.850700), vector3(517.747803, -211.157150, 74.554016)},
    },
    ["Ryan's Customs"] = {
        slot = "moafsgarage",
        entry_point = {-361.2822265625,-153.14637756348,38.502384185791 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/moafsgarage.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "MoafGarage1",
        bounds = {vector3(-287.667908, -50.984200, 19.519600), vector3(-409.203156, -188.721542, 69.745773)},
    },
    ["Crastenburg Hotel"] = {
        slot = "crastenburghotel",
        entry_point = {-1214.1314697266,-190.90307617188,39.325088500977 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/crastenburghotel.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "CrastenburgHotel",
        bounds = {vector3(-1101.800781, -148.546646, 30.122942), vector3(-1256.057861, -235.159271, 88.032486)},
    },
    ["Chianski Bunker"] = {
        slot = "chiankskibunker",
        entry_point = {2886.1833496094,4385.8515625,50.71363067627 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "ChianskiBunker",
        bounds = {vector3(2935.387695, 4465.798828, 24.152672), vector3(2799.005127, 4339.966309, 66.032051)},
    },
    ["Callisto Hotel"] = {
        slot = "callistohotel",
        entry_point = {389.19250488281,1.8228433132172,91.415802001953 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "CallistoHotel",
        bounds = {vector3(498.256836, 55.714073, 26.360039), vector3(283.559479, -97.854904, 163.045944)},
    },
    ["Callisto Hotel Room 1"] = {
        slot = "callistohotelroom1",
        entry_point = {429.06399536133,-7.1695375442505,99.645538330078 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 2"] = {
        slot = "callistohotelroom2",
        entry_point = {425.26287841797,-13.523979187012,99.645530700684 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 3"] = {
        slot = "callistohotelroom3",
        entry_point = {421.92477416992,-19.779664993286,99.645561218262 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 4"] = {
        slot = "callistohotelroom4",
        entry_point = {416.22067260742,-29.333112716675,99.6455078125 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 5"] = {
        slot = "callistohotelroom5",
        entry_point = {412.25546264648,-30.113475799561,99.645568847656 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 6"] = {
        slot = "callistohotelroom6",
        entry_point = {402.38800048828,-24.568368911743,99.6455078125 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 7"] = {
        slot = "callistohotelroom7",
        entry_point = {396.42498779297,-20.767530441284,99.645576477051 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 8"] = {
        slot = "callistohotelroom8",
        entry_point = {396.59524536133,-16.031532287598,99.645523071289 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 9"] = {
        slot = "callistohotelroom9",
        entry_point = {401.93954467773,-6.2361097335815,99.645439147949 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 10"] = {
        slot = "callistohotelroom10",
        entry_point = {405.53146362305,-0.13245901465416,99.645576477051 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 11"] = {
        slot = "callistohotelroom11",
        entry_point = {410.92471313477,7.464653968811,99.645454406738 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 12"] = {
        slot = "callistohotelroom12",
        entry_point = {420.80117797852,1.8088954687119,99.645500183105 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Callisto Hotel Room 13"] = {
        slot = "callistohotelroom13",
        entry_point = {426.83013916016,-1.7415518760681,99.645561218262 + 0.5},
        buy_price = 24000000,
        sell_price = 5000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/callistohotel.png",
        blipId = 374,
        blipColour = 2,
        bounds = {vector3(472.001312, 36.121883, 80.180687), vector3(368.497986, -68.439735, 181.142059)},
    },
    ["Vespucci Canals 1"] = {
        slot = "Cheap_Home",
        entry_point = {-1203.9991455078,-1021.6267089844,5.9451489448547 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 2"] = {
        slot = "Cheap_Home",
        entry_point = {-1199.0485839844,-1023.8281860352,2.1502830982208 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 3"] = {
        slot = "Cheap_Home",
        entry_point = {-1195.7277832031,-1035.7828369141,2.1690437793732 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 4"] = {
        slot = "Cheap_Home",
        entry_point = {-1184.2410888672,-1044.9465332031,2.1502342224121 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 5"] = {
        slot = "Cheap_Home",
        entry_point = {-1181.1978759766,-1056.0588378906,2.1502933502197 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 6"] = {
        slot = "Cheap_Home",
        entry_point = {-1176.8596191406,-1073.0910644531,5.9084038734436 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 7"] = {
        slot = "Cheap_Home",
        entry_point = {-1161.7388916016,-1099.2669677734,2.1858735084534 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 8"] = {
        slot = "Cheap_Home",
        entry_point = {-1143.1203613281,-1122.3262939453,2.6334187984467 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 9"] = {
        slot = "Cheap_Home",
        entry_point = {-1145.4351806641,-1127.5020751953,6.5031218528748 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 10"] = {
        slot = "Cheap_Home",
        entry_point = {-1132.064453125,-1138.4418945312,2.8403742313385 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 11"] = {
        slot = "Cheap_Home",
        entry_point = {-1128.8604736328,-1143.4362792969,2.8389751911163 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 12"] = {
        slot = "Cheap_Home",
        entry_point = {-1128.4997558594,-1162.2233886719,6.4958748817444 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 13"] = {
        slot = "Cheap_Home",
        entry_point = {-1123.9399414062,-1163.5340576172,2.3571538925171 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 14"] = {
        slot = "Cheap_Home",
        entry_point = {-1068.4503173828,-1162.7805175781,2.5519986152649 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 15"] = {
        slot = "Cheap_Home",
        entry_point = {-1063.7729492188,-1159.8833007812,2.4609730243683 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 16"] = {
        slot = "Cheap_Home",
        entry_point = {-1046.2806396484,-1159.3698730469,2.1586015224457 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 17"] = {
        slot = "Cheap_Home",
        entry_point = {-1034.9978027344,-1146.5690917969,2.1585958003998 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 18"] = {
        slot = "Cheap_Home",
        entry_point = {-1024.8466796875,-1139.0325927734,2.5471744537354 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 19"] = {
        slot = "Cheap_Home",
        entry_point = {-1040.2277832031,-1136.3920898438,2.1586010456085 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 20"] = {
        slot = "Cheap_Home",
        entry_point = {-1073.64453125,-1152.3492431641,2.1585867404938 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 21"] = {
        slot = "Cheap_Home",
        entry_point = {-986.59112548828,-1122.1605224609,4.5453510284424 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 22"] = {
        slot = "Cheap_Home",
        entry_point = {-978.47277832031,-1107.8287353516,2.1503210067749 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 23"] = {
        slot = "Cheap_Home",
        entry_point = {-960.16577148438,-1109.4348144531,2.1503148078918 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 24"] = {
        slot = "Cheap_Home",
        entry_point = {-948.91333007812,-1107.8940429688,2.1718440055847 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 25"] = {
        slot = "Cheap_Home",
        entry_point = {-942.76837158203,-1076.0115966797,2.7517304420471 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 26"] = {
        slot = "Cheap_Home",
        entry_point = {-952.126953125,-1077.9953613281,2.4403038024902 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 27"] = {
        slot = "Cheap_Home",
        entry_point = {-982.17706298828,-1083.2159423828,2.5452091693878 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 28"] = {
        slot = "Cheap_Home",
        entry_point = {-991.21917724609,-1104.0611572266,2.1503100395203 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 29"] = {
        slot = "Cheap_Home",
        entry_point = {-1114.5855712891,-1068.7008056641,2.150358915329 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 30"] = {
        slot = "Cheap_Home",
        entry_point = {-1104.3643798828,-1059.5054931641,2.3310525417328 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 31"] = {
        slot = "Cheap_Home",
        entry_point = {-1041.8012695312,-1025.5120849609,2.5554025173187 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 32"] = {
        slot = "Cheap_Home",
        entry_point = {-942.34759521484,-969.25872802734,2.1501157283783 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 33"] = {
        slot = "Cheap_Home",
        entry_point = {-903.65411376953,-1005.0647583008,2.1503255367279 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 34"] = {
        slot = "Cheap_Home",
        entry_point = {-1084.8502197266,-952.10089111328,2.3617935180664 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 35"] = {
        slot = "Cheap_Home",
        entry_point = {-1061.3052978516,-943.45947265625,2.1864557266235 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 36"] = {
        slot = "Cheap_Home",
        entry_point = {-1053.6850585938,-933.00079345703,3.3553168773651 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 37"] = {
        slot = "Cheap_Home",
        entry_point = {-1043.0815429688,-924.39282226562,3.1541697978973 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 38"] = {
        slot = "Cheap_Home",
        entry_point = {-1027.41796875,-920.05187988281,5.0412349700928 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 39"] = {
        slot = "Cheap_Home",
        entry_point = {-1011.2272949219,-909.32873535156,2.130535364151 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 40"] = {
        slot = "Cheap_Home",
        entry_point = {-987.15869140625,-892.02941894531,2.1506683826447 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 41"] = {
        slot = "Cheap_Home",
        entry_point = {-950.48376464844,-905.39111328125,2.362030506134 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Vespucci Canals 42"] = {
        slot = "Cheap_Home",
        entry_point = {-947.96295166016,-910.31518554688,2.5630233287811 + 0.5},
        buy_price = 16000000,
        sell_price = 4000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vespuccicanals.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 1"] = {
        slot = "100_motel",
        entry_point = {-400.40698242188,146.81517028809,65.722763061523 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 2"] = {
        slot = "100_motel",
        entry_point = {-396.02819824219,146.51689147949,65.722763061523 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 3"] = {
        slot = "100_motel",
        entry_point = {-384.36312866211,152.72496032715,65.531341552734 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 4"] = {
        slot = "100_motel",
        entry_point = {-385.55578613281,159.41131591797,65.531341552734 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 5"] = {
        slot = "100_motel",
        entry_point = {-385.42562866211,159.41960144043,69.72191619873 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 6"] = {
        slot = "100_motel",
        entry_point = {-384.40063476562,152.6262512207,69.72191619873 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 7"] = {
        slot = "100_motel",
        entry_point = {-385.55999755859,159.4591217041,73.733024597168 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 8"] = {
        slot = "100_motel",
        entry_point = {-384.44323730469,152.63461303711,73.735778808594 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 9"] = {
        slot = "100_motel",
        entry_point = {-385.39749145508,159.46789550781,77.744117736816 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 10"] = {
        slot = "100_motel",
        entry_point = {-384.39520263672,152.61891174316,77.744117736816 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 11"] = {
        slot = "100_motel",
        entry_point = {-385.62634277344,159.43783569336,81.743103027344 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 12"] = {
        slot = "100_motel",
        entry_point = {-384.41320800781,152.70735168457,81.74681854248 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 13"] = {
        slot = "100_motel",
        entry_point = {-411.33966064453,152.77908325195,65.52725982666 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 14"] = {
        slot = "100_motel",
        entry_point = {-410.35433959961,159.54403686523,65.525009155273 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 15"] = {
        slot = "100_motel",
        entry_point = {-410.24047851562,159.61184692383,69.721908569336 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 16"] = {
        slot = "100_motel",
        entry_point = {-411.47647094727,152.83062744141,69.721893310547 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 17"] = {
        slot = "100_motel",
        entry_point = {-410.09912109375,159.56623840332,73.73299407959 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 18"] = {
        slot = "100_motel",
        entry_point = {-411.52883911133,152.7943572998,73.735298156738 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 19"] = {
        slot = "100_motel",
        entry_point = {-410.11862182617,159.55348205566,77.744087219238 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 20"] = {
        slot = "100_motel",
        entry_point = {-411.55078125,152.82704162598,77.744087219238 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 21"] = {
        slot = "100_motel",
        entry_point = {-410.25842285156,159.59381103516,81.743095397949 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    ["Spanish Ave 22"] = {
        slot = "100_motel",
        entry_point = {-411.62326049805,152.90856933594,81.743095397949 + 0.5},
        buy_price = 10000000,
        sell_price = 2500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/spanishavenue.png",
        blipId = 374,
        blipColour = 2
    },
    -- ["Container Bunker"] = {
    --     slot = "containerbunker",
    --     entry_point = {820.4638671875,-3087.7749023438,4.7656950950623 + 0.5},
    --     buy_price = 10000000,
    --     sell_price = 2500000,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
    --     blipId = 374,
    --     blipColour = 2
    -- },
    ["Picture Perfect Drive 1"] = {
        slot = "Cheap_Home",
        entry_point = {-1342.6597900391,307.2253112793,65.505081176758 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 2"] = {
        slot = "Cheap_Home",
        entry_point = {-1338.0240478516,308.55099487305,65.505065917969 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 3"] = {
        slot = "Cheap_Home",
        entry_point = {-1345.5067138672,317.67886352539,65.505043029785 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 4"] = {
        slot = "Cheap_Home",
        entry_point = {-1341.1434326172,318.77392578125,65.505111694336 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 5"] = {
        slot = "Cheap_Home",
        entry_point = {-1308.4967041016,328.4460144043,65.493225097656 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 6"] = {
        slot = "Cheap_Home",
        entry_point = {-1312.7989501953,327.38119506836,65.493225097656 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 7"] = {
        slot = "Cheap_Home",
        entry_point = {-1305.2164306641,318.27554321289,65.493225097656 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 8"] = {
        slot = "Cheap_Home",
        entry_point = {-1309.9077148438,317.01943969727,65.493225097656 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 9"] = {
        slot = "Cheap_Home",
        entry_point = {-1383.3076171875,266.99514770508,61.23876953125 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 10"] = {
        slot = "Cheap_Home",
        entry_point = {-1378.6107177734,302.55969238281,64.069747924805 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Picture Perfect Drive 11"] = {
        slot = "Cheap_Home",
        entry_point = {-1374.3592529297,303.59140014648,64.067481994629 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pictureperfecthotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 1"] = {
        slot = "100_motel",
        entry_point = {1512.9710693359,3566.8015136719,35.400974273682 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 2"] = {
        slot = "100_motel",
        entry_point = {1520.7844238281,3571.6140136719,35.409595489502 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 3"] = {
        slot = "100_motel",
        entry_point = {1522.4622802734,3572.5361328125,35.408512115479 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 4"] = {
        slot = "100_motel",
        entry_point = {1537.1733398438,3581.0122070312,35.422771453857 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 5"] = {
        slot = "100_motel",
        entry_point = {1544.9644775391,3585.5017089844,35.40567779541 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 6"] = {
        slot = "100_motel",
        entry_point = {1558.5654296875,3593.4294433594,35.474727630615 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 7"] = {
        slot = "100_motel",
        entry_point = {1566.6002197266,3598.0437011719,35.406723022461 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 8"] = {
        slot = "100_motel",
        entry_point = {1566.5477294922,3598.021484375,38.731426239014 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 9"] = {
        slot = "100_motel",
        entry_point = {1554.689453125,3591.1586914062,38.731391906738 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 10"] = {
        slot = "100_motel",
        entry_point = {1544.9736328125,3585.6293945312,38.731544494629 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 11"] = {
        slot = "100_motel",
        entry_point = {1530.4880371094,3577.1879882812,38.736480712891 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 12"] = {
        slot = "100_motel",
        entry_point = {1522.4649658203,3572.4682617188,38.802589416504 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 13"] = {
        slot = "100_motel",
        entry_point = {1520.8489990234,3571.5942382812,38.736797332764 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 14"] = {
        slot = "100_motel",
        entry_point = {1572.9338378906,3614.74609375,35.409400939941 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 15"] = {
        slot = "100_motel",
        entry_point = {1577.4359130859,3606.5905761719,35.402980804443 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 16"] = {
        slot = "100_motel",
        entry_point = {1578.5882568359,3605.0266113281,35.41064453125 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 17"] = {
        slot = "100_motel",
        entry_point = {1582.9282226562,3596.9333496094,35.400203704834 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 18"] = {
        slot = "100_motel",
        entry_point = {1586.9603271484,3590.439453125,35.469650268555 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 19"] = {
        slot = "100_motel",
        entry_point = {1591.7227783203,3582.6225585938,35.417289733887 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 20"] = {
        slot = "100_motel",
        entry_point = {1592.5882568359,3580.7309570312,35.409290313721 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 21"] = {
        slot = "100_motel",
        entry_point = {1599.4169921875,3568.8635253906,35.40958404541 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 22"] = {
        slot = "100_motel",
        entry_point = {1603.8955078125,3560.966796875,35.406860351562 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 23"] = {
        slot = "100_motel",
        entry_point = {1603.9760742188,3560.8937988281,38.731307983398 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 24"] = {
        slot = "100_motel",
        entry_point = {1597.1271972656,3572.8356933594,38.738945007324 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 25"] = {
        slot = "100_motel",
        entry_point = {1583.12109375,3597.0412597656,38.731338500977 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 26"] = {
        slot = "100_motel",
        entry_point = {1578.4484863281,3604.9313964844,38.761268615723 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Algonquin Motel 27"] = {
        slot = "100_motel",
        entry_point = {1577.6876220703,3606.7053222656,38.761203765869 + 0.5},
        buy_price = 6000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/algoquinmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 1"] = {
        slot = "100_motel",
        entry_point = {970.66430664062,-199.39697265625,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 2"] = {
        slot = "100_motel",
        entry_point = {966.95843505859,-204.9228515625,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 3"] = {
        slot = "100_motel",
        entry_point = {964.37469482422,-209.78799438477,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 4"] = {
        slot = "100_motel",
        entry_point = {961.71160888672,-214.45849609375,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 5"] = {
        slot = "100_motel",
        entry_point = {957.71667480469,-214.03326416016,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 6"] = {
        slot = "100_motel",
        entry_point = {951.82684326172,-210.40155029297,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 7"] = {
        slot = "100_motel",
        entry_point = {948.72680664062,-208.82015991211,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 8"] = {
        slot = "100_motel",
        entry_point = {947.95538330078,-205.93891906738,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 9"] = {
        slot = "100_motel",
        entry_point = {950.64141845703,-201.29040527344,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 10"] = {
        slot = "100_motel",
        entry_point = {953.470703125,-196.59909057617,73.20817565918 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 11"] = {
        slot = "100_motel",
        entry_point = {970.32702636719,-199.35075378418,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 12"] = {
        slot = "100_motel",
        entry_point = {967.05187988281,-205.00112915039,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 13"] = {
        slot = "100_motel",
        entry_point = {964.34197998047,-209.68115234375,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 14"] = {
        slot = "100_motel",
        entry_point = {961.59143066406,-214.31988525391,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 15"] = {
        slot = "100_motel",
        entry_point = {957.81079101562,-213.92558288574,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 16"] = {
        slot = "100_motel",
        entry_point = {951.76440429688,-210.60935974121,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 17"] = {
        slot = "100_motel",
        entry_point = {948.66821289062,-208.69186401367,76.255210876465 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 18"] = {
        slot = "100_motel",
        entry_point = {947.65588378906,-205.77514648438,76.255096435547 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 19"] = {
        slot = "100_motel",
        entry_point = {950.51306152344,-201.26606750488,76.255195617676 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 20"] = {
        slot = "100_motel",
        entry_point = {953.23590087891,-196.51525878906,76.255195617676 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 21"] = {
        slot = "100_motel",
        entry_point = {970.55218505859,-199.39207458496,79.297584533691 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 22"] = {
        slot = "100_motel",
        entry_point = {967.328125,-205.14779663086,79.297584533691 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 23"] = {
        slot = "100_motel",
        entry_point = {964.42456054688,-209.71884155273,79.29761505127 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 24"] = {
        slot = "100_motel",
        entry_point = {961.75146484375,-214.42384338379,79.297584533691 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 25"] = {
        slot = "100_motel",
        entry_point = {957.69879150391,-214.1104888916,79.297584533691 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 26"] = {
        slot = "100_motel",
        entry_point = {951.77569580078,-210.71272277832,79.297698974609 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 27"] = {
        slot = "100_motel",
        entry_point = {948.70910644531,-208.6393737793,79.29759979248 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 28"] = {
        slot = "100_motel",
        entry_point = {947.76251220703,-205.81315612793,79.297439575195 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 29"] = {
        slot = "100_motel",
        entry_point = {950.54010009766,-201.20045471191,79.297439575195 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Starlight Motel 30"] = {
        slot = "100_motel",
        entry_point = {953.44207763672,-196.6664276123,79.29744720459 + 0.5},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/starlightmotel.png",
        blipColour = 2
    },
    ["Grapeseed Main St 1"] = {
        slot = "Cheap_Home",
        entry_point = {1724.9682617188,4642.1513671875,43.875453948975 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Grapeseed Main St 2"] = {
        slot = "Cheap_Home",
        entry_point = {1674.1400146484,4658.4018554688,43.371196746826 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Grapeseed Main St 3"] = {
        slot = "Cheap_Home",
        entry_point = {1718.5844726562,4677.1416015625,43.655849456787 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Grapeseed Main St 4"] = {
        slot = "Cheap_Home",
        entry_point = {1683.2521972656,4689.6552734375,43.0661277771 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Grapeseed Main St 5"] = {
        slot = "Cheap_Home",
        entry_point = {1664.3070068359,4739.9125976562,42.003147125244 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Grapeseed Main St 6"] = {
        slot = "Cheap_Home",
        entry_point = {2016.7552490234,4987.4731445312,43.098304748535},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["North Calafia Way 1"] = {
        slot = "Cheap_Home",
        entry_point = {790.31658935547,4184.033203125,41.36157989502 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 2"] = {
        slot = "Cheap_Home",
        entry_point = {741.81799316406,4170.5922851562,41.08784866333 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 3"] = {
        slot = "Cheap_Home",
        entry_point = {723.142578125,4187.2270507812,41.079200744629 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 4"] = {
        slot = "Cheap_Home",
        entry_point = {1429.1097412109,4377.9775390625,44.312129974365 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 5"] = {
        slot = "100_motel",
        entry_point = {1381.8681640625,4381.3583984375,44.852588653564 + 0.5},
        buy_price = 30000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 6"] = {
        slot = "100_motel",
        entry_point = {1374.2292480469,4380.7387695312,44.873073577881 + 0.5},
        buy_price = 30000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 7"] = {
        slot = "Cheap_Home",
        entry_point = {1365.9479980469,4358.5009765625,44.500549316406 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 8"] = {
        slot = "100_motel",
        entry_point = {1338.5540771484,4359.7622070312,44.367282867432 + 0.5},
        buy_price = 30000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 9"] = {
        slot = "Cheap_Home",
        entry_point = {1309.3796386719,4362.0986328125,41.56071472168 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["North Calafia Way 10"] = {
        slot = "Cheap_Home",
        entry_point = {1332.7645263672,4325.6743164062,38.073455810547 + 0.5},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/northcalafiaway.png",
        blipColour = 2
    },
    ["Business Centre 11"] = {
        slot = "office_arcadius_centre_powerbrokerice",
        entry_point = {6.2864894866943,-932.22485351563,29.905027389526},
        buy_price = 40000000,
        blipId = 475,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipColour = 2
    },
    ["Business Centre 12"] = {
        slot = "office_arcadius_centre_powerbrokerice",
        entry_point = {7.3491926193237,-934.65093994141,29.905027389526},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 13"] = {
        slot = "office_arcadius_centre_powerbrokerpolished",
        entry_point = {-115.60822296143,-602.11975097656,36.281009674072},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Business Centre 14"] = {
        slot = "office_arcadius_centre_powerbrokerpolished",
        entry_point = {-119.44849395752,-612.68829345703,36.280754089355},
        buy_price = 40000000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/businesscenter.png",
        blipId = 475,
        blipColour = 2
    },
    ["Forum Drive 1"] = {
        slot = "100_motel",
        entry_point = {-157.55821228027,-1680.0379638672,33.47481918335 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 2"] = {
        slot = "100_motel",
        entry_point = {-148.35346984863,-1687.9602050781,32.872425079346 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 3"] = {
        slot = "100_motel",
        entry_point = {-147.17108154297,-1688.8782958984,32.872425079346 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 5"] = {
        slot = "100_motel",
        entry_point = {-142.03485107422,-1693.2885742188,32.872455596924 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 6"] = {
        slot = "100_motel",
        entry_point = {-141.90397644043,-1693.3724365234,36.167213439941 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 8"] = {
        slot = "100_motel",
        entry_point = {-147.14805603027,-1688.7821044922,36.167064666748 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 9"] = {
        slot = "100_motel",
        entry_point = {-148.26007080078,-1687.9008789062,36.167060852051 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 10"] = {
        slot = "100_motel",
        entry_point = {-158.05470275879,-1679.6022949219,36.966472625732 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 11"] = {
        slot = "100_motel",
        entry_point = {-216.67134094238,-1674.1301269531,34.46333694458 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 12"] = {
        slot = "100_motel",
        entry_point = {-224.4008026123,-1674.1252441406,34.463306427002 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 13"] = {
        slot = "100_motel",
        entry_point = {-224.64775085449,-1666.2022705078,34.4631690979 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 14"] = {
        slot = "100_motel",
        entry_point = {-224.41360473633,-1648.9085693359,34.872863769531 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 15"] = {
        slot = "100_motel",
        entry_point = {-216.44284057617,-1649.0388183594,34.463279724121 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 16"] = {
        slot = "100_motel",
        entry_point = {-212.52003479004,-1660.7193603516,34.463184356689 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 17"] = {
        slot = "100_motel",
        entry_point = {-212.7981262207,-1668.1296386719,34.463237762451 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 18"] = {
        slot = "100_motel",
        entry_point = {-216.57260131836,-1674.1641845703,37.636646270752 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 19"] = {
        slot = "100_motel",
        entry_point = {-224.43870544434,-1674.2027587891,37.636745452881 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 20"] = {
        slot = "100_motel",
        entry_point = {-224.42864990234,-1666.3166503906,37.636905670166 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 21"] = {
        slot = "100_motel",
        entry_point = {-224.60273742676,-1653.9345703125,37.636890411377 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 22"] = {
        slot = "100_motel",
        entry_point = {-224.00303649902,-1648.7595214844,38.444946289062 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 23"] = {
        slot = "100_motel",
        entry_point = {-216.45677185059,-1648.9333496094,37.636901855469 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 24"] = {
        slot = "100_motel",
        entry_point = {-212.5707244873,-1660.5788574219,37.636871337891 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 25"] = {
        slot = "100_motel",
        entry_point = {-212.71307373047,-1668.1036376953,37.636905670166 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 1"] = {
        slot = "100_motel",
        entry_point = {-124.35488891602,-1671.0166015625,32.564315795898 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 2"] = {
        slot = "100_motel",
        entry_point = {-131.41862487793,-1665.2747802734,32.564323425293 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 3"] = {
        slot = "100_motel",
        entry_point = {-138.27062988281,-1659.3143310547,32.93900680542 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 4"] = {
        slot = "100_motel",
        entry_point = {-131.17222595215,-1679.3962402344,34.914199829102 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 5"] = {
        slot = "100_motel",
        entry_point = {-124.518699646,-1670.9233398438,35.714160919189 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 6"] = {
        slot = "100_motel",
        entry_point = {-131.40364074707,-1665.2573242188,35.714248657227 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 7"] = {
        slot = "100_motel",
        entry_point = {-138.17597961426,-1659.26171875,36.514144897461 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 8"] = {
        slot = "100_motel",
        entry_point = {-114.50927734375,-1659.5184326172,32.564380645752 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 9"] = {
        slot = "100_motel",
        entry_point = {-121.4732208252,-1653.6082763672,32.564380645752 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 10"] = {
        slot = "100_motel",
        entry_point = {-128.72268676758,-1647.5335693359,33.112297058105 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 11"] = {
        slot = "100_motel",
        entry_point = {-107.66934204102,-1651.3868408203,34.881092071533 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 12"] = {
        slot = "100_motel",
        entry_point = {-114.63774108887,-1659.5233154297,35.71422958374 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 13"] = {
        slot = "100_motel",
        entry_point = {-121.18495941162,-1653.2685546875,35.71418762207 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry 14"] = {
        slot = "100_motel",
        entry_point = {-128.86090087891,-1647.39453125,36.514213562012 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 1"] = {
        slot = "100_motel",
        entry_point = {-209.10038757324,-1600.5418701172,34.869255065918 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 2"] = {
        slot = "100_motel",
        entry_point = {-210.25361633301,-1607.0583496094,34.86926651001 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 3"] = {
        slot = "100_motel",
        entry_point = {-212.04734802246,-1617.5828857422,34.869270324707 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 4"] = {
        slot = "100_motel",
        entry_point = {-213.23004150391,-1617.8427734375,34.869270324707 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 5"] = {
        slot = "100_motel",
        entry_point = {-222.80113220215,-1617.5057373047,34.869338989258 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 6"] = {
        slot = "100_motel",
        entry_point = {-222.96084594727,-1601.1192626953,34.880809783936 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 7"] = {
        slot = "100_motel",
        entry_point = {-222.79724121094,-1585.8162841797,34.869262695312 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 8"] = {
        slot = "100_motel",
        entry_point = {-219.23341369629,-1579.9377441406,34.869281768799 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 9"] = {
        slot = "100_motel",
        entry_point = {-215.95719909668,-1576.6208496094,34.869281768799 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 10"] = {
        slot = "100_motel",
        entry_point = {-205.90022277832,-1585.4720458984,34.869262695312 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 12"] = {
        slot = "100_motel",
        entry_point = {-205.89863586426,-1585.5693359375,38.054580688477 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 13"] = {
        slot = "100_motel",
        entry_point = {-215.86569213867,-1576.5526123047,38.054508209229 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 14"] = {
        slot = "100_motel",
        entry_point = {-219.02690124512,-1580.0513916016,38.054508209229 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 15"] = {
        slot = "100_motel",
        entry_point = {-222.85665893555,-1585.7232666016,38.054508209229 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 16"] = {
        slot = "100_motel",
        entry_point = {-222.75259399414,-1601.0686035156,38.054508209229 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 17"] = {
        slot = "100_motel",
        entry_point = {-222.83808898926,-1617.5710449219,38.056583404541 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 18"] = {
        slot = "100_motel",
        entry_point = {-212.86329650879,-1617.6203613281,38.054504394531 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 20"] = {
        slot = "100_motel",
        entry_point = {-210.30909729004,-1607.0780029297,38.049320220947 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["All Swell Motel 21"] = {
        slot = "100_motel",
        entry_point = {-208.72512817383,-1600.6008300781,38.049320220947 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 1"] = {
        slot = "100_motel",
        entry_point = {566.30578613281,-1777.8184814453,29.353384017944 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 2"] = {
        slot = "100_motel",
        entry_point = {550.80804443359,-1775.7111816406,29.311800003052 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 3"] = {
        slot = "100_motel",
        entry_point = {552.68615722656,-1771.6873779297,29.311878204346 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 4"] = {
        slot = "100_motel",
        entry_point = {555.13122558594,-1766.4791259766,29.311685562134 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 5"] = {
        slot = "100_motel",
        entry_point = {558.12432861328,-1759.7664794922,29.313753128052 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 6"] = {
        slot = "100_motel",
        entry_point = {561.84643554688,-1751.9484863281,29.28031539917 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 8"] = {
        slot = "100_motel",
        entry_point = {559.30590820313,-1776.8237304688,33.442569732666 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 10"] = {
        slot = "100_motel",
        entry_point = {550.53442382813,-1770.6756591797,33.442584991455 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 11"] = {
        slot = "100_motel",
        entry_point = {553.00341796875,-1765.5075683594,33.442584991455 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 12"] = {
        slot = "100_motel",
        entry_point = {555.982421875,-1758.8017578125,33.442577362061 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 14"] = {
        slot = "100_motel",
        entry_point = {559.73687744141,-1750.9761962891,33.442584991455 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Bilingsgate Motel 15"] = {
        slot = "100_motel",
        entry_point = {561.74530029297,-1747.6939697266,33.442584991455 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 26"] = {
        slot = "100_motel",
        entry_point = {-174.01707458496,-1546.9875488281,35.127326965332 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 27"] = {
        slot = "100_motel",
        entry_point = {-180.00357055664,-1553.9001464844,35.125259399414 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 28"] = {
        slot = "100_motel",
        entry_point = {-187.59449768066,-1563.1302490234,35.755111694336 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 29"] = {
        slot = "100_motel",
        entry_point = {-191.89656066895,-1559.4351806641,34.954563140869 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 30"] = {
        slot = "100_motel",
        entry_point = {-196.04052734375,-1555.8383789062,34.955467224121 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 31"] = {
        slot = "100_motel",
        entry_point = {-184.15922546387,-1539.6794433594,34.358306884766 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 32"] = {
        slot = "100_motel",
        entry_point = {-180.00257873535,-1534.5462646484,34.355731964111 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 33"] = {
        slot = "100_motel",
        entry_point = {-174.68739318848,-1528.7994384766,34.353839874268 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 34"] = {
        slot = "100_motel",
        entry_point = {-167.70960998535,-1534.8754882812,35.100605010986 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 35"] = {
        slot = "100_motel",
        entry_point = {-167.61863708496,-1534.7342529297,38.329761505127 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 36"] = {
        slot = "100_motel",
        entry_point = {-174.6520690918,-1528.8337402344,37.535045623779 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 37"] = {
        slot = "100_motel",
        entry_point = {-179.86880493164,-1534.5955810547,37.535034179688 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 38"] = {
        slot = "100_motel",
        entry_point = {-184.34300231934,-1539.5172119141,37.535034179688 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 39"] = {
        slot = "100_motel",
        entry_point = {-195.84072875977,-1555.8391113281,38.335033416748 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 40"] = {
        slot = "100_motel",
        entry_point = {-192.07955932617,-1559.6513671875,38.335010528564 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 41"] = {
        slot = "100_motel",
        entry_point = {-187.78448486328,-1562.8648681641,39.13158416748 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 42"] = {
        slot = "100_motel",
        entry_point = {-179.78666687012,-1554.1906738281,38.330821990967 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Forum Drive 43"] = {
        slot = "100_motel",
        entry_point = {-173.9645690918,-1547.2067871094,38.334251403809 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Strawberry St 1"] = {
        slot = "Cheap_Home",
        entry_point = {-64.224327087402,-1449.7905273438,32.524894714355 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Strawberry St 2"] = {
        slot = "Cheap_Home",
        entry_point = {-46.003837585449,-1445.55859375,32.429576873779 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Strawberry St 3"] = {
        slot = "Cheap_Home",
        entry_point = {-32.736099243164,-1446.4429931641,31.891386032104 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Strawberry St 4"] = {
        slot = "Cheap_Home",
        entry_point = {-1.958139538765,-1442.4423828125,30.963056564331 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Strawberry St 5"] = {
        slot = "Cheap_Home",
        entry_point = {16.504856109619,-1444.2896728516,30.946327209473 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 1"] = {
        slot = "Cheap_Home",
        entry_point = {252.65090942383,-1671.1179199219,29.663066864014 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 2"] = {
        slot = "Cheap_Home",
        entry_point = {240.89953613281,-1687.9832763672,29.699220657349 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 3"] = {
        slot = "Cheap_Home",
        entry_point = {222.88026428223,-1702.8205566406,29.695100784302 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 4"] = {
        slot = "Cheap_Home",
        entry_point = {216.67524719238,-1717.2449951172,29.672740936279 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 5"] = {
        slot = "Cheap_Home",
        entry_point = {197.86654663086,-1725.6031494141,29.663543701172 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 6"] = {
        slot = "Cheap_Home",
        entry_point = {249.78576660156,-1730.6131591797,29.668802261353 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 7"] = {
        slot = "Cheap_Home",
        entry_point = {257.40362548828,-1723.2456054688,29.654123306274 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 8"] = {
        slot = "Cheap_Home",
        entry_point = {269.2243347168,-1712.8876953125,29.669031143188 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 9"] = {
        slot = "Cheap_Home",
        entry_point = {282.05438232422,-1694.8864746094,29.646450042725 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 10"] = {
        slot = "Cheap_Home",
        entry_point = {152.25151062012,-1823.4989013672,27.868598937988 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Brouge Ave 11"] = {
        slot = "Cheap_Home",
        entry_point = {136.28602600098,-1841.6971435547,24.857442855835 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 1"] = {
        slot = "Cheap_Home",
        entry_point = {332.83596801758,-1741.2058105469,29.730518341064 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 2"] = {
        slot = "Cheap_Home",
        entry_point = {320.85900878906,-1759.9584960938,29.637907028198 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 3"] = {
        slot = "Cheap_Home",
        entry_point = {304.64688110352,-1775.5809326172,29.1012134552 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 4"] = {
        slot = "Cheap_Home",
        entry_point = {299.94897460938,-1784.1290283203,28.438692092896 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 5"] = {
        slot = "Cheap_Home",
        entry_point = {289.09075927734,-1792.4755859375,28.089059829712 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 6"] = {
        slot = "Cheap_Home",
        entry_point = {178.98667907715,-1924.4461669922,21.371017456055 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 7"] = {
        slot = "Cheap_Home",
        entry_point = {165.38163757324,-1945.1557617188,20.235441207886 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 8"] = {
        slot = "Cheap_Home",
        entry_point = {149.13690185547,-1960.7606201172,19.45871925354 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 9"] = {
        slot = "Cheap_Home",
        entry_point = {144.1882019043,-1969.3125,18.857627868652 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 10"] = {
        slot = "Cheap_Home",
        entry_point = {250.34274291992,-1934.7120361328,24.736225128174 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 11"] = {
        slot = "Cheap_Home",
        entry_point = {258.03970336914,-1927.4930419922,25.444776535034 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 12"] = {
        slot = "Cheap_Home",
        entry_point = {270.1828918457,-1917.3541259766,26.180931091309 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 13"] = {
        slot = "Cheap_Home",
        entry_point = {282.27658081055,-1898.7517089844,27.264108657837 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 14"] = {
        slot = "Cheap_Home",
        entry_point = {319.91000366211,-1853.8547363281,27.511507034302 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 15"] = {
        slot = "Cheap_Home",
        entry_point = {328.79986572266,-1845.4447021484,27.748147964478 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 16"] = {
        slot = "Cheap_Home",
        entry_point = {338.67330932617,-1829.2718505859,28.336853027344 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 17"] = {
        slot = "Cheap_Home",
        entry_point = {348.89651489258,-1820.5627441406,28.894088745117 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 18"] = {
        slot = "Cheap_Home",
        entry_point = {405.3957824707,-1751.2271728516,29.710329055786 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 19"] = {
        slot = "Cheap_Home",
        entry_point = {418.87939453125,-1735.9725341797,29.607692718506 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 20"] = {
        slot = "Cheap_Home",
        entry_point = {431.10430908203,-1725.7445068359,29.601427078247 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Roy Lowenstein Blvd 21"] = {
        slot = "Cheap_Home",
        entry_point = {443.16293334961,-1707.1733398438,29.69469833374 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Chamberlain Hills 17"] = {
        slot = "100_motel",
        entry_point = {-150.6886138916,-1625.4848632812,33.656745910645 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 18"] = {
        slot = "100_motel",
        entry_point = {-150.86013793945,-1622.5218505859,33.651062011719 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 19"] = {
        slot = "100_motel",
        entry_point = {-145.28312683105,-1618.513671875,36.04846572876 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 20"] = {
        slot = "100_motel",
        entry_point = {-145.91900634766,-1614.5469970703,36.048484802246 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 21"] = {
        slot = "100_motel",
        entry_point = {-152.2940826416,-1623.9454345703,36.848285675049 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 22"] = {
        slot = "100_motel",
        entry_point = {-150.72314453125,-1625.4235839844,36.848285675049 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 23"] = {
        slot = "100_motel",
        entry_point = {-160.15153503418,-1636.443359375,34.028839111328 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 24"] = {
        slot = "100_motel",
        entry_point = {-161.1159362793,-1638.6203613281,34.028839111328 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 25"] = {
        slot = "100_motel",
        entry_point = {-153.64654541016,-1641.3861083984,36.851058959961 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 26"] = {
        slot = "100_motel",
        entry_point = {-161.57803344727,-1638.2453613281,37.245887756348 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 27"] = {
        slot = "100_motel",
        entry_point = {-159.99792480469,-1636.4326171875,37.245899200439 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 28"] = {
        slot = "100_motel",
        entry_point = {-123.46657562256,-1590.8951416016,34.207672119141 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 29"] = {
        slot = "100_motel",
        entry_point = {-147.37164306641,-1596.5731201172,34.831359863281 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 30"] = {
        slot = "100_motel",
        entry_point = {-140.04202270508,-1587.5,34.243709564209 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 31"] = {
        slot = "100_motel",
        entry_point = {-133.98500061035,-1580.6359863281,34.208003997803 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 32"] = {
        slot = "100_motel",
        entry_point = {-120.21141052246,-1574.8752441406,34.176559448242 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 33"] = {
        slot = "100_motel",
        entry_point = {-119.11458587646,-1586.0091552734,34.213047027588 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 34"] = {
        slot = "100_motel",
        entry_point = {-140.33792114258,-1599.4624023438,38.2126121521 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 35"] = {
        slot = "100_motel",
        entry_point = {-147.10110473633,-1596.5716552734,38.2126121521 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 36"] = {
        slot = "100_motel",
        entry_point = {-139.98057556152,-1587.53515625,37.407829284668 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 37"] = {
        slot = "100_motel",
        entry_point = {-134.12786865234,-1580.5495605469,37.407821655273 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 38"] = {
        slot = "100_motel",
        entry_point = {-120.11024475098,-1574.6739501953,37.407745361328 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 39"] = {
        slot = "100_motel",
        entry_point = {-114.14001464844,-1579.5764160156,37.407745361328 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 40"] = {
        slot = "100_motel",
        entry_point = {-118.90303039551,-1585.8361816406,37.407745361328 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 41"] = {
        slot = "100_motel",
        entry_point = {-123.25595855713,-1591.0126953125,37.407749176025 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Chamberlain Hills 42"] = {
        slot = "100_motel",
        entry_point = {-142.15060424805,-1697.7098388672,30.766128540039 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 1"] = {
        slot = "100_motel",
        entry_point = {-35.511085510254,-1554.9045410156,30.676761627197 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 2"] = {
        slot = "100_motel",
        entry_point = {-44.262233734131,-1547.3427734375,31.150316238403 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 3"] = {
        slot = "100_motel",
        entry_point = {-35.77526473999,-1537.2264404297,31.259803771973 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 4"] = {
        slot = "100_motel",
        entry_point = {-26.931568145752,-1544.8486328125,30.677297592163 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 5"] = {
        slot = "100_motel",
        entry_point = {-20.140869140625,-1550.4554443359,30.67677116394 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 6"] = {
        slot = "100_motel",
        entry_point = {-25.103673934937,-1556.7104492188,30.686836242676 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 7"] = {
        slot = "100_motel",
        entry_point = {-33.656673431396,-1567.1467285156,33.021411895752 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 8"] = {
        slot = "100_motel",
        entry_point = {-35.720069885254,-1555.0009765625,33.82137298584 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 9"] = {
        slot = "100_motel",
        entry_point = {-44.01127243042,-1547.4189453125,34.621410369873 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 10"] = {
        slot = "100_motel",
        entry_point = {-35.65060043335,-1537.2110595703,34.621471405029 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 11"] = {
        slot = "100_motel",
        entry_point = {-26.674646377563,-1544.4346923828,33.82141494751 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 12"] = {
        slot = "100_motel",
        entry_point = {-14.416104316711,-1543.7606201172,33.021411895752 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 13"] = {
        slot = "100_motel",
        entry_point = {-20.028219223022,-1550.5483398438,33.82137298584 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Tahitan 14"] = {
        slot = "100_motel",
        entry_point = {-28.458177566528,-1560.7624511719,33.821445465088 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["The Yellow Jack"] = {
        slot = "yellowjack",
        entry_point = {1980.3087158203,3049.4211425781,50.441711425781 + 0.5},
        buy_price = 160000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/yellowjack.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "YellowJack",
        bounds = {vector3(2020.660522, 3076.546875, 26.923237), vector3(1967.234131, 3014.149170, 74.776291)},
    },
    ["Grapseed Hut"] = {
        slot = "Cheap_Home",
        entry_point = {2728.1281738281,4142.0815429688,44.287891387939 + 0.5},
        buy_price = 40000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/grapeseedhouses.png",
        blipColour = 2
    },
    ["Sandy Shores 1"] = {
        slot = "Cheap_Home",
        entry_point = {1900.0384521484,3773.2126464844,32.878307342529 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 2"] = {
        slot = "Cheap_Home",
        entry_point = {1843.2269287109,3777.8793945312,33.391689300537 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 3"] = {
        slot = "Cheap_Home",
        entry_point = {1880.9494628906,3810.7524414062,32.778785705566 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 4"] = {
        slot = "Cheap_Home",
        entry_point = {1915.9089355469,3823.9108886719,32.439949035645 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 5"] = {
        slot = "Cheap_Home",
        entry_point = {1857.9239501953,3854.4016113281,33.092796325684 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 6"] = {
        slot = "Cheap_Home",
        entry_point = {1838.1080322266,3907.3239746094,33.259536743164 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 7"] = {
        slot = "Cheap_Home",
        entry_point = {1809.2032470703,3907.62109375,33.75520324707 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 8"] = {
        slot = "Cheap_Home",
        entry_point = {1728.7808837891,3851.47265625,34.78247833252 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 9"] = {
        slot = "Cheap_Home",
        entry_point = {1733.2869873047,3809.1450195312,34.894012451172 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 10"] = {
        slot = "Cheap_Home",
        entry_point = {1759.8089599609,3821.8701171875,34.767822265625 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 11"] = {
        slot = "Cheap_Home",
        entry_point = {1745.7502441406,3787.8635253906,34.834915161133 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 12"] = {
        slot = "Cheap_Home",
        entry_point = {1748.4694824219,3783.1672363281,34.834915161133 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 13"] = {
        slot = "Cheap_Home",
        entry_point = {1777.2620849609,3738.1157226562,34.655212402344 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 14"] = {
        slot = "Cheap_Home",
        entry_point = {1435.9594726562,3657.3986816406,34.308784484863 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 15"] = {
        slot = "Cheap_Home",
        entry_point = {1400.9340820312,3636.8171386719,34.911262512207 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 16"] = {
        slot = "Cheap_Home",
        entry_point = {1862.1402587891,3857.3698730469,36.271286010742 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Sandy Shores 17"] = {
        slot = "Cheap_Home",
        entry_point = {2988.0036621094,3482.029296875,73.490547180176},
        buy_price = 40000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandyhut.png",
        blipColour = 2
    },
    ["Low Retunda 1"] = {
        slot = "Cheap_Home",
        entry_point = {-2291.5283203125,364.20083618164,174.60151672363 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 2"] = {
        slot = "Cheap_Home",
        entry_point = {-2299.1674804688,336.27905273438,174.60179138184 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 3"] = {
        slot = "Cheap_Home",
        entry_point = {-2299.4978027344,326.4208984375,174.60179138184 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 4"] = {
        slot = "Cheap_Home",
        entry_point = {-2264.3083496094,351.27243041992,174.60185241699 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 5"] = {
        slot = "Cheap_Home",
        entry_point = {-2223.0524902344,304.18496704102,174.60165405273 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 6"] = {
        slot = "Cheap_Home",
        entry_point = {-2221.8134765625,262.94403076172,174.60664367676 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 7"] = {
        slot = "Cheap_Home",
        entry_point = {-2218.5456542969,258.41152954102,174.60664367676 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 8"] = {
        slot = "Cheap_Home",
        entry_point = {-2197.0134277344,237.7992401123,174.60185241699 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 9"] = {
        slot = "Cheap_Home",
        entry_point = {-2255.9538574219,320.26385498047,184.60148620605 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 10"] = {
        slot = "Cheap_Home",
        entry_point = {-2299.4243164063,336.34606933594,184.59582519531 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 11"] = {
        slot = "Cheap_Home",
        entry_point = {-2279.0197753906,265.25787353516,184.60140991211 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 12"] = {
        slot = "Cheap_Home",
        entry_point = {-2223.2993164063,304.00863647461,184.59820556641 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 13"] = {
        slot = "Cheap_Home",
        entry_point = {-2221.8195800781,263.27560424805,184.59941101074 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 14"] = {
        slot = "Cheap_Home",
        entry_point = {-2219.1904296875,257.57891845703,184.59941101074 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 15"] = {
        slot = "Cheap_Home",
        entry_point = {-2195.0456542969,249.11825561523,184.60429382324 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Low Retunda 16"] = {
        slot = "Cheap_Home",
        entry_point = {-2253.818359375,234.58117675781,174.6068572998 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lowrotunda.png",
        blipColour = 2
    },
    ["Senora Bunker"] = {
        slot = "senorabunker",
        entry_point = {2665.2807617188,2181.9089355469,20.648946762085 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "SenoraBunker1",
        bounds = {vector3(2750.916016, 2224.983643, -26.879210), vector3(2648.578857, 2132.270508, 65.815125)},
    },
    ["CMG Trader Docks"] = {
        slot = "cmgtraderdocks",
        entry_point = {1196.8201904297,-3253.6701660156,7.0949859619141 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cmgtraderdocks.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "CMGTraderDocks1",
        bounds = {vector3(1307.560303, -3175.735352, -44.754623), vector3(1132.377075, -3368.353760, 34.371185)},
    },
    ["Johnny's Garage"] = {
        slot = "johnnysgarage",
        entry_point = {-202.80078125,-1330.8767089844,23.109630584717 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/johnnysgarage.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "JohnnysGarage1",
        bounds = {vector3(-135.402725, -1378.746460, 19.200531), vector3(-258.608673, -1258.316284, 54.525768)},
    },
    ["East Galileo Bunker"] = {
        slot = "eastgalileobunker",
        entry_point = {101.42204284668,1240.0791015625,207.17407226562 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "EastGalileoBunker",
        bounds = {vector3(50.002464, 1163.263916, 172.940872), vector3(190.859924, 1291.097046, 236.075012)},
    },
    ["Casino Apartments 1"] = {
        slot = "Cheap_Home",
        entry_point = {1045.4929199219,192.64569091797,80.999946594238 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 2"] = {
        slot = "Cheap_Home",
        entry_point = {1043.9019775391,190.52679443359,80.999931335449 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 3"] = {
        slot = "Cheap_Home",
        entry_point = {1079.2807617188,232.19219970703,84.99055480957 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 4"] = {
        slot = "Cheap_Home",
        entry_point = {1065.7045898438,217.38766479492,84.99048614502 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 5"] = {
        slot = "Cheap_Home",
        entry_point = {1064.1899414063,215.16537475586,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 6"] = {
        slot = "Cheap_Home",
        entry_point = {1062.6069335938,212.75010681152,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 7"] = {
        slot = "Cheap_Home",
        entry_point = {1061.1392822266,210.19918823242,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 8"] = {
        slot = "Cheap_Home",
        entry_point = {1053.3486328125,191.25080871582,84.990928649902 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 9"] = {
        slot = "Cheap_Home",
        entry_point = {1048.8468017578,183.73234558105,85.024513244629 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 10"] = {
        slot = "Cheap_Home",
        entry_point = {1035.0288085938,168.91757202148,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 11"] = {
        slot = "Cheap_Home",
        entry_point = {1033.4447021484,166.50453186035,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 12"] = {
        slot = "Cheap_Home",
        entry_point = {1032.0048828125,164.32931518555,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 13"] = {
        slot = "Cheap_Home",
        entry_point = {1030.357421875,161.93995666504,84.990463256836 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 14"] = {
        slot = "Cheap_Home",
        entry_point = {1022.8220825195,142.64009094238,84.990921020508 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 15"] = {
        slot = "Cheap_Home",
        entry_point = {1018.6748657227,135.67176818848,84.990913391113 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 16"] = {
        slot = "Cheap_Home",
        entry_point = {1075.4217529297,241.7412109375,80.990562438965 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 17"] = {
        slot = "Cheap_Home",
        entry_point = {1073.7651367188,239.43522644043,80.990562438965 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 18"] = {
        slot = "Cheap_Home",
        entry_point = {1015.3973388672,144.15788269043,80.990417480469 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 19"] = {
        slot = "Cheap_Home",
        entry_point = {1013.6531982422,141.96812438965,80.990417480469 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Casino Apartments 20"] = {
        slot = "Cheap_Home",
        entry_point = {1087.5477294922,244.44253540039,80.990699768066 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/casinoapartments.png",
        blipColour = 2
    },
    ["Vinewood Customs"] = {
        slot = "vinewoodcustoms",
        entry_point = {113.9928894043,260.64395141602,112.87313079834 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodcustoms.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "VinewoodCustoms",
        bounds = {vector3(59.251839, 335.696808, 103.709167), vector3(169.908127, 231.297760, 161.249741)},
    },
    ["TTG Hideout"] = {
        slot = "carshow",
        entry_point = {58.73823928833,-1011.8208007812,29.486610412598 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/ttghideout.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "TTGHideout",
        bounds = {vector3(59.859504699707,-1033.5750732422,21.615743637085), vector3(25.329133987427,-971.46868896484,38.599594116211)},
    },
    ["Irish Pub"] = {
        slot = "irishpub",
        entry_point = {830.66790771484,-112.37405395508,79.774574279785 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/irishpub.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "IrishPub",
        bounds = {vector3(794.359253, -146.933502, 56.021641), vector3(870.411194, -80.978790, 93.274811)},
    },
    ["Elysian Bunker"] = {
        slot = "elyisianbunker",
        entry_point = {493.84936523438,-2756.1843261719,-12.476132392883 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "ElysianBunker",
        bounds = {vector3(432.319489, -2708.847168, -34.897255), vector3(606.439148, -2827.866699, 77.324425)},
    },
    ["Ace Records"] = {
        slot = "rockfordrecords",
        entry_point = {-999.92877197266,-268.74771118164,39.039497375488 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/acerecords.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "RockfordRecords",
        bounds = {vector3(-1034.831787, -313.641357, 12.496577), vector3(-955.670105, -222.045166, 65.822479)},
    },
    ["Construction Bunker"] = {
        slot = "constructionbunker",
        entry_point = {2848.1689453125,2795.2473144531,33.701061248779 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "ConstructionBunker",
        bounds = {vector3(3106.648438, 3091.461426, -70.219910), vector3(2726.671143, 2568.254883, 132.802490)},
    },
    ["Perico House 1"] = {
        slot = "Cheap_Home",
        entry_point = {4008.2619628906,-4682.7524414062,4.2184948921204 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 2"] = {
        slot = "Cheap_Home",
        entry_point = {3989.9697265625,-4692.501953125,4.366765499115 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 3"] = {
        slot = "Cheap_Home",
        entry_point = {3976.1235351562,-4699.6640625,4.5437922477722 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 4"] = {
        slot = "Cheap_Home",
        entry_point = {3971.3615722656,-4703.6928710938,4.1083030700684 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 5"] = {
        slot = "Cheap_Home",
        entry_point = {3957.3903808594,-4706.3349609375,4.2902145385742 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 6"] = {
        slot = "Cheap_Home",
        entry_point = {3940.8947753906,-4708.6372070312,4.1843109130859 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 7"] = {
        slot = "Cheap_Home",
        entry_point = {3926.435546875,-4703.7104492188,4.5194759368896 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 8"] = {
        slot = "Cheap_Home",
        entry_point = {3929.0124511719,-4686.1455078125,4.466197013855 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 9"] = {
        slot = "Cheap_Home",
        entry_point = {3958.3601074219,-4669.5834960938,4.108651638031 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 10"] = {
        slot = "Cheap_Home",
        entry_point = {3978.5483398438,-4661.6606445312,4.2932000160217 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 11"] = {
        slot = "Cheap_Home",
        entry_point = {4525.7836914062,-4536.6303710938,7.5520520210266 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 12"] = {
        slot = "Cheap_Home",
        entry_point = {5095.1337890625,-4607.6245117188,3.2518124580383 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico House 13"] = {
        slot = "Cheap_Home",
        entry_point = {5157.1264648438,-5113.7778320312,3.2911274433136 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 1"] = {
        slot = "100_motel",
        entry_point = {4519.9521484375,-4514.9272460938,4.4944353103638 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 2"] = {
        slot = "100_motel",
        entry_point = {4958.5283203125,-4471.767578125,10.63960647583 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 3"] = {
        slot = "100_motel",
        entry_point = {4799.666015625,-4724.0883789062,5.1708703041077 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 4"] = {
        slot = "100_motel",
        entry_point = {5171.791015625,-4990.3110351562,13.680047035217 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 5"] = {
        slot = "100_motel",
        entry_point = {5162.2197265625,-4993.8081054688,12.694774627686 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 6"] = {
        slot = "100_motel",
        entry_point = {5599.3291015625,-5665.5810546875,11.576442718506 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 7"] = {
        slot = "100_motel",
        entry_point = {5262.3227539062,-5434.4052734375,65.597114562988 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 8"] = {
        slot = "100_motel",
        entry_point = {5265.4995117188,-5418.982421875,65.597152709961 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 9"] = {
        slot = "100_motel",
        entry_point = {4955.5053710938,-5321.4370117188,8.2903652191162 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 10"] = {
        slot = "100_motel",
        entry_point = {4956.732421875,-5315.32421875,8.3074188232422 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Perico Hut 11"] = {
        slot = "100_motel",
        entry_point = {4818.68359375,-4309.2788085938,5.5211305618286 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/pericohouse.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 1"] = {
        slot = "100_motel",
        entry_point = {2357.4536132812,2609.1115722656,47.929328918457},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 2"] = {
        slot = "100_motel",
        entry_point = {2337.4108886719,2605.1071777344,48.090911865234 },
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 3"] = {
        slot = "100_motel",
        entry_point = {2334.2766113281,2588.9213867188,48.493591308594},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 4"] = {
        slot = "100_motel",
        entry_point = {2338.6284179688,2570.5490722656,48.724456787109},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 5"] = {
        slot = "100_motel",
        entry_point = {2355.7990722656,2564.6596679688,47.949626922607},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 6"] = {
        slot = "100_motel",
        entry_point = {2363.0554199219,2556.3459472656,48.106380462646},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 7"] = {
        slot = "100_motel",
        entry_point = {2358.4255371094,2547.9929199219,48.395614624023},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 8"] = {
        slot = "100_motel",
        entry_point = {2359.740234375,2541.3615722656,48.69607925415},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 9"] = {
        slot = "100_motel",
        entry_point = {2352.8227539062,2523.7841796875,48.689445495605},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 10"] = {
        slot = "100_motel",
        entry_point = {2333.3093261719,2524.2607421875,47.546619415283},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 11"] = {
        slot = "100_motel",
        entry_point = {2321.1457519531,2535.7409667969,48.211036682129},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 12"] = {
        slot = "100_motel",
        entry_point = {2357.0524902344,2519.3610839844,48.391807556152},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 13"] = {
        slot = "100_motel",
        entry_point = {2355.0458984375,2540.5698242188,48.375312805176},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 14"] = {
        slot = "100_motel",
        entry_point = {2319.7216796875,2528.748046875,47.667667388916},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 15"] = {
        slot = "100_motel",
        entry_point = {2314.3391113281,2549.5615234375,48.459972381592},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 16"] = {
        slot = "100_motel",
        entry_point = {2319.33984375,2553.2084960938,48.690544128418},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ron Alternates Caravan 17"] = {
        slot = "100_motel",
        entry_point = {2336.3513183594,2566.4226074219,48.547973632812},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 1"] = {
        slot = "100_motel",
        entry_point = {1936.8558349609,3891.1875,32.527412414551 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 2"] = {
        slot = "100_motel",
        entry_point = {1916.3591308594,3909.0434570312,33.441589355469 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 3"] = {
        slot = "100_motel",
        entry_point = {1905.5295410156,3922.9304199219,32.741828918457 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 4"] = {
        slot = "100_motel",
        entry_point = {1895.7576904297,3873.2255859375,32.485767364502 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 5"] = {
        slot = "100_motel",
        entry_point = {1899.2312011719,3875.55078125,32.475734710693 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 6"] = {
        slot = "100_motel",
        entry_point = {1859.958984375,3865.38671875,33.058643341064 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 7"] = {
        slot = "100_motel",
        entry_point = {1889.154296875,3927.98828125,33.434238433838 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 8"] = {
        slot = "100_motel",
        entry_point = {1908.2232666016,3869.76171875,32.887302398682 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 9"] = {
        slot = "100_motel",
        entry_point = {1902.6531982422,3866.529296875,33.068176269531 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 10"] = {
        slot = "100_motel",
        entry_point = {1833.8306884766,3863.1494140625,34.301696777344 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 11"] = {
        slot = "100_motel",
        entry_point = {1832.1508789062,3868.2573242188,34.29748916626 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 12"] = {
        slot = "100_motel",
        entry_point = {1813.3011474609,3854.4812011719,34.354076385498 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 13"] = {
        slot = "100_motel",
        entry_point = {1807.5252685547,3851.5224609375,34.354373931885 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 14"] = {
        slot = "100_motel",
        entry_point = {1781.2813720703,3911.8283691406,34.912048339844 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 15"] = {
        slot = "100_motel",
        entry_point = {1786.4188232422,3913.5549316406,34.936992645264 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 16"] = {
        slot = "100_motel",
        entry_point = {1744.5656738281,3886.7470703125,35.27417755127 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 17"] = {
        slot = "100_motel",
        entry_point = {1756.685546875,3871.6743164062,34.871387481689 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 18"] = {
        slot = "100_motel",
        entry_point = {1718.4943847656,3885.6342773438,34.903625488281 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 19"] = {
        slot = "100_motel",
        entry_point = {1700.3277587891,3867.2248535156,34.8977394104 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 20"] = {
        slot = "100_motel",
        entry_point = {1661.6846923828,3820.2185058594,35.469745635986 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 21"] = {
        slot = "100_motel",
        entry_point = {1657.7701416016,3799.9079589844,35.106803894043 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 22"] = {
        slot = "100_motel",
        entry_point = {1642.8227539062,3727.5329589844,35.06706237793 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 23"] = {
        slot = "100_motel",
        entry_point = {1639.5589599609,3731.525390625,35.067081451416 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 24"] = {
        slot = "100_motel",
        entry_point = {1541.234375,3721.2856445312,34.850517272949 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 25"] = {
        slot = "100_motel",
        entry_point = {1532.400390625,3722.5798339844,34.767955780029 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 26"] = {
        slot = "100_motel",
        entry_point = {1500.9946289062,3694.7041015625,35.220180511475 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 27"] = {
        slot = "100_motel",
        entry_point = {1500.4600830078,3679.4716796875,34.51375579834 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 28"] = {
        slot = "100_motel",
        entry_point = {1480.6639404297,3678.4702148438,34.26876449585 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 29"] = {
        slot = "100_motel",
        entry_point = {1489.9835205078,3643.2409667969,35.264072418213 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 30"] = {
        slot = "100_motel",
        entry_point = {1489.9835205078,3643.2409667969,35.264072418213 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 31"] = {
        slot = "100_motel",
        entry_point = {1841.9519042969,3927.9995117188,33.316997528076 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 32"] = {
        slot = "100_motel",
        entry_point = {1777.1444091797,3799.6635742188,34.52836227417 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 33"] = {
        slot = "100_motel",
        entry_point = {1864.6196289062,3791.2604980469,32.848915100098 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 34"] = {
        slot = "100_motel",
        entry_point = {1932.7401123047,3804.8259277344,32.910999298096 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 35"] = {
        slot = "100_motel",
        entry_point = {1968.6467285156,3811.8596191406,33.037300109863 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 36"] = {
        slot = "100_motel",
        entry_point = {1433.9963378906,3628.1516113281,35.748111724854 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 37"] = {
        slot = "100_motel",
        entry_point = {1394.708984375,3649.0402832031,34.458488464355 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 38"] = {
        slot = "100_motel",
        entry_point = {1413.5760498047,3664.2141113281,34.405075073242 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 39"] = {
        slot = "100_motel",
        entry_point = {1289.7556152344,3630.6457519531,33.190326690674 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 40"] = {
        slot = "100_motel",
        entry_point = {437.27600097656,3546.3820800781,33.238544464111 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 41"] = {
        slot = "100_motel",
        entry_point = {101.5057220459,3652.6127929688,40.203937530518 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 42"] = {
        slot = "100_motel",
        entry_point = {97.84920501709,3682.703125,39.73263168335 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 43"] = {
        slot = "100_motel",
        entry_point = {105.36512756348,3728.3806152344,40.058040618896 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 44"] = {
        slot = "100_motel",
        entry_point = {93.020233154297,3744.38671875,40.42045211792 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 45"] = {
        slot = "100_motel",
        entry_point = {76.611473083496,3757.3779296875,39.754764556885 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 46"] = {
        slot = "100_motel",
        entry_point = {52.186164855957,3741.5544433594,39.832260131836 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 47"] = {
        slot = "100_motel",
        entry_point = {30.609851837158,3735.6564941406,40.628818511963 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 48"] = {
        slot = "100_motel",
        entry_point = {-4.8524227142334,3704.8759765625,39.4306640625 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 49"] = {
        slot = "100_motel",
        entry_point = {15.556455612183,3688.4172363281,39.712909698486 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 50"] = {
        slot = "100_motel",
        entry_point = {8.5935592651367,3686.0065917969,39.722385406494 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 51"] = {
        slot = "100_motel",
        entry_point = {30.186544418335,3661.7424316406,40.343170166016 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 52"] = {
        slot = "100_motel",
        entry_point = {32.90905380249,3667.1435546875,40.275321960449 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 53"] = {
        slot = "100_motel",
        entry_point = {41.60799407959,3705.7119140625,40.264846801758 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 54"] = {
        slot = "100_motel",
        entry_point = {48.03653717041,3702.4548339844,40.286296844482 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 55"] = {
        slot = "100_motel",
        entry_point = {67.661720275879,3693.5747070312,40.292182922363 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 56"] = {
        slot = "100_motel",
        entry_point = {67.661720275879,3693.5747070312,40.292182922363 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 57"] = {
        slot = "100_motel",
        entry_point = {78.237281799316,3732.6860351562,40.198528289795 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 58"] = {
        slot = "100_motel",
        entry_point = {84.415069580078,3718.166015625,40.128711700439 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 59"] = {
        slot = "100_motel",
        entry_point = {348.12927246094,2565.6560058594,43.519508361816 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 60"] = {
        slot = "100_motel",
        entry_point = {366.59851074219,2571.2546386719,44.199012756348 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 61"] = {
        slot = "100_motel",
        entry_point = {382.18246459961,2576.2268066406,44.109355926514 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 62"] = {
        slot = "100_motel",
        entry_point = {404.12170410156,2584.3439941406,43.519512176514 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 63"] = {
        slot = "100_motel",
        entry_point = {564.15173339844,2598.6623535156,43.64457321167 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Caravan 64"] = {
        slot = "100_motel",
        entry_point = {1585.8510742188,2906.529296875,57.614326477051 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    -- ["Elkridge Hotel Skybar"] = {
    --     slot = "elkridgehotelskybar",
    --     entry_point = {315.46514892578,-931.92736816406,29.470895767212 + 0.5},
    --     buy_price = 0,
    --     blipId = 374,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/elkridgeskybar.png",
    --     blipColour = 2
    -- },
    ["Carson Ave 20"] = {
        slot = "100_motel",
        entry_point = {-113.88372802734,-1468.3408203125,33.822555541992 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 21"] = {
        slot = "100_motel",
        entry_point = {-107.90726470947,-1473.2064208984,33.822654724121 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 22"] = {
        slot = "100_motel",
        entry_point = {-113.04328918457,-1479.0441894531,33.822723388672 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 23"] = {
        slot = "100_motel",
        entry_point = {-120.00858306885,-1478.1105957031,33.822696685791 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 24"] = {
        slot = "100_motel",
        entry_point = {-125.60082244873,-1473.2642822266,33.822639465332 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 25"] = {
        slot = "100_motel",
        entry_point = {-132.05041503906,-1463.0186767578,33.822616577148 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 26"] = {
        slot = "100_motel",
        entry_point = {-126.90506744385,-1456.8594970703,34.371826171875 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 27"] = {
        slot = "100_motel",
        entry_point = {-123.09991455078,-1460.3012695312,33.822677612305 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 28"] = {
        slot = "100_motel",
        entry_point = {-123.04795074463,-1460.2657470703,36.992118835449 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 29"] = {
        slot = "100_motel",
        entry_point = {-127.13620758057,-1457.1927490234,37.791938781738 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 30"] = {
        slot = "100_motel",
        entry_point = {-132.14630126953,-1462.8858642578,36.992149353027 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 31"] = {
        slot = "100_motel",
        entry_point = {-138.22813415527,-1470.6220703125,36.992134094238 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 32"] = {
        slot = "100_motel",
        entry_point = {-125.71740722656,-1473.4864501953,36.992076873779 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 33"] = {
        slot = "100_motel",
        entry_point = {-120.06784820557,-1478.2026367188,36.992092132568 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 34"] = {
        slot = "100_motel",
        entry_point = {-119.24743652344,-1486.0927734375,36.982093811035 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 35"] = {
        slot = "100_motel",
        entry_point = {-112.95124816895,-1479.2415771484,36.992153167725 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 36"] = {
        slot = "100_motel",
        entry_point = {-108.05830383301,-1473.2083740234,36.992164611816 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Carson Ave 37"] = {
        slot = "100_motel",
        entry_point = {-113.62252044678,-1468.1773681641,36.992168426514 + 0.5},
        buy_price = 8000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 1"] = {
        slot = "Cheap_Home",
        entry_point = {490.12847900391,-1714.2517089844,29.706813812256 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 2"] = {
        slot = "Cheap_Home",
        entry_point = {479.67446899414,-1736.2880859375,29.15100479126 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 3"] = {
        slot = "Cheap_Home",
        entry_point = {474.77349853516,-1757.7109375,29.092149734497 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 4"] = {
        slot = "Cheap_Home",
        entry_point = {472.6943359375,-1775.3903808594,29.059503555298 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 5"] = {
        slot = "Cheap_Home",
        entry_point = {440.38980102539,-1830.1285400391,28.361831665039 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 6"] = {
        slot = "Cheap_Home",
        entry_point = {427.72875976562,-1842.0462646484,28.46343421936 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 7"] = {
        slot = "Cheap_Home",
        entry_point = {412.85293579102,-1855.8641357422,27.323162078857 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 8"] = {
        slot = "Cheap_Home",
        entry_point = {399.64599609375,-1864.9696044922,26.716421127319 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 9"] = {
        slot = "Cheap_Home",
        entry_point = {385.26910400391,-1881.7156982422,26.031450271606 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 10"] = {
        slot = "Cheap_Home",
        entry_point = {368.44876098633,-1896.4252929688,25.17854309082 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 11"] = {
        slot = "Cheap_Home",
        entry_point = {495.53366088867,-1823.0064697266,28.869729995728 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 12"] = {
        slot = "Cheap_Home",
        entry_point = {500.67364501953,-1812.7589111328,28.891199111938 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 13"] = {
        slot = "Cheap_Home",
        entry_point = {512.11743164062,-1790.7430419922,28.918004989624 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["Innocence Blvd 14"] = {
        slot = "Cheap_Home",
        entry_point = {513.85528564453,-1780.7978515625,28.913265228271 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/carsonave.png",
        blipColour = 2
    },
    ["El Burro Heights 1"] = {
        slot = "Cheap_Home",
        entry_point = {1316.1953125,-1528.4489746094,52.410293579102},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 2"] = {
        slot = "Cheap_Home",
        entry_point = {1338.1667480469,-1524.9055175781,55.379119873047},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 3"] = {
        slot = "Cheap_Home",
        entry_point = {1379.4682617188,-1515.3986816406,59.03755569458},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 4"] = {
        slot = "Cheap_Home",
        entry_point = {1411.4962158203,-1490.9595947266,61.657764434814},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 5"] = {
        slot = "Cheap_Home",
        entry_point = {1437.328125,-1492.6861572266,64.622013092041},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 6"] = {
        slot = "Cheap_Home",
        entry_point = {1389.5535888672,-1545.9741210938,57.904460906982},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 7"] = {
        slot = "Cheap_Home",
        entry_point = {1360.3934326172,-1555.3471679688,57.350776672363},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 8"] = {
        slot = "Cheap_Home",
        entry_point = {1327.1374511719,-1552.7890625,55.051597595215},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 9"] = {
        slot = "Cheap_Home",
        entry_point = {1331.0852050781,-1560.0568847656,55.05154800415},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 10"] = {
        slot = "Cheap_Home",
        entry_point = {1337.1365966797,-1579.2546386719,55.422897338867},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 11"] = {
        slot = "Cheap_Home",
        entry_point = {1230.8692626953,-1591.1292724609,54.766536712646},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 12"] = {
        slot = "Cheap_Home",
        entry_point = {1205.8189697266,-1607.6871337891,51.730388641357},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 13"] = {
        slot = "Cheap_Home",
        entry_point = {1192.8259277344,-1622.9311523438,46.221454620361},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 14"] = {
        slot = "Cheap_Home",
        entry_point = {1193.3444824219,-1656.2473144531,44.02653503418},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 15"] = {
        slot = "Cheap_Home",
        entry_point = {1214.2774658203,-1644.1182861328,49.645992279053},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 16"] = {
        slot = "Cheap_Home",
        entry_point = {1245.1539306641,-1626.6602783203,54.282379150391},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 17"] = {
        slot = "Cheap_Home",
        entry_point = {1261.3096923828,-1616.3986816406,55.742874145508},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 18"] = {
        slot = "Cheap_Home",
        entry_point = {1286.6159667969,-1604.4387207031,55.824893951416},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["El Burro Heights 19"] = {
        slot = "Cheap_Home",
        entry_point = {1250.8740234375,-1735.0096435547,53.030269622803},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lestershouse.png",
        blipColour = 2
    },
    ["Joshua Rd 1"] = {
        slot = "Cheap_Home",
        entry_point = {195.51091003418,3031.1345214844,44.886653900146},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 2"] = {
        slot = "Cheap_Home",
        entry_point = {191.61059570312,3082.24609375,44.472801208496},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 3"] = {
        slot = "Cheap_Home",
        entry_point = {163.34613037109,3118.9738769531,44.426021575928},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 4"] = {
        slot = "Cheap_Home",
        entry_point = {248.32559204102,3180.5778808594,43.918785095215},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 5"] = {
        slot = "Cheap_Home",
        entry_point = {241.15893554688,3107.716796875,43.487201690674},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 6"] = {
        slot = "Cheap_Home",
        entry_point = {-35.806137084961,2870.7048339844,60.607177734375},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 7"] = {
        slot = "Cheap_Home",
        entry_point = {-287.03497314453,2535.6901855469,76.268432617188},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 8"] = {
        slot = "Cheap_Home",
        entry_point = {-263.60794067383,2196.3708496094,131.3988494873},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 9"] = {
        slot = "Cheap_Home",
        entry_point = {201.45207214355,2442.2280273438,61.449031829834},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Joshua Rd 10"] = {
        slot = "Cheap_Home",
        entry_point = {166.47547912598,2229.2048339844,91.752731323242},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Gambling Den"] = {
        slot = "gamblingden",
        entry_point = {1150.5417480469,-438.23510742188,67.002700805664 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/gamblingden.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "GamblingDen",
        bounds = {vector3(1198.720215, -406.167114, 49.942833), vector3(1119.130127, -460.772217, 102.451958)},
    },
    ["Rex's Diner"] = {
        slot = "rexdiner",
        entry_point = {2560.4284667969,2588.943359375,38.111980438232 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/rexdiner.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "RexsDiner",
        bounds = {vector3(2584.469482, 2562.363281, 26.161734), vector3(2509.874512, 2651.547607, 62.863457)},
    },
    ["Vanilla Unicorn"] = {
        slot = "vanillaunicorn",
        entry_point = {94.692695617676,-1283.8228759766,29.264156341553 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/vanillaunicorn.png",
        blipColour = 2,
        bounds = {vector3(75.242592, -1333.520630, 0.585014), vector3(166.207993, -1255.447144, 44.723499)},
    },
    ["Casino Bunker"] = {
        slot = "casinobunker",
        entry_point = {996.96868896484,-48.640083312988,73.170181274414 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "CasinoBunker1",
        bounds = {vector3(865.071716, -129.072739, -61.636711), vector3(1244.749878, 262.385681, 164.882919)},
    },
    ["The Olympia"] = {
        slot = "rockyisland",
        entry_point = {3756.0541992188,-1571.3741455078,3.7732934951782 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/theolympia.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "TheOlympia",
        bounds = {vector3(3809.776611, -1462.778931, -10.590050), vector3(3653.709229, -1638.347656, 35.021210)},
    },
    ["Japanese Restaurant"] = {
        slot = "japaneserestaurant",
        entry_point = {-151.7127532959,294.1252746582,98.686660766602 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/triadsrestaurant.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "JapaneseRestaurant1",
        bounds = {vector3(-117.723724, 334.253448, 75.487419), vector3(-210.983109, 256.205322, 120.437973)},
    },
    ["Cayo Perico Villa"] = {
        slot = "cayopericovilla",
        entry_point = {4986.7426757813,-5712.666015625,19.880178451538 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cayopericovilla.png",
        blipColour = 2,
        bounds = {vector3(5145.143555, -5624.310059, -24.310263), vector3(4915.225098, -5836.981934, 46.888977)},
    },
    ["HOS Warehouse"] = {
        slot = "hoswarehouse",
        entry_point = {939.56921386719,-1490.4188232422,30.101306915283 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/hoswarehouse.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "HOSWarehouse",
        bounds = {vector3(968.651428, -1431.103027, 12.649593), vector3(912.449646, -1513.598022, 52.209469)},
    },
    ["Venice Beach House"] = {
        slot = "venicebeachhouse",
        entry_point = {-1987.236328125,-502.73022460938,12.178233146667 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/venicebeachhouse.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "VeniceBeachHouse1",
        bounds = {vector3(-1961.691895, -473.142822, 3.876072), vector3(-2017.747070, -534.470276, 38.513622)},
    },
    -- ["Grove Clubhouse"] = {
    --     slot = "groveclubhouse",
    --     entry_point = {125.71877288818,-1956.8056640625,20.734895706177 + 0.5},
    --     buy_price = 0,
    --     blipId = 374,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/groveclubhouse.png",
    --     blipColour = 2
    -- },
    ["The Midnight Club Garage"] = {
        slot = "midnightclubgarage",
        entry_point = {823.99499511719,-944.71533203125,22.087619781494 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/midnitghclubhouse.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "MidnightClubGarage",
        bounds = {vector3(781.466125, -913.159851, 1.407711), vector3(883.421875, -1012.630737, 59.704624)},
    },
    ["Heliport Bunker"] = {
        slot = "heliportbunker",
        entry_point = {1067.7060546875,2350.14453125,48.479164123535 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bunker.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "HeliportBunker",
        bounds = {vector3(1018.412109, 2303.430664, -43.642960), vector3(1140.262085, 2438.546143, 66.311935)},
    },
    ["Fortune Club"] = {
        slot = "fortuneclub",
        entry_point = {-384.67468261719,216.03887939453,83.654808044434 + 0.5},
        buy_price = 0,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
		streamFolderName = "FortuneClub1",
        bounds = {vector3(-340.915955, 247.577042, 66.442131), vector3(-409.947845, 169.951111, 108.429085)},
    },
    ["Underground Car Park"] = {
        slot = "undergroundcarpark",
        entry_point = {952.46362304688,-1698.1840820312,29.897285461426 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(1420.186035, -1563.819702, 115.048874), vector3(846.384766, -2058.830322, -37.911430)},
    },
    ["Import Garage"] = {
        slot = "importgarage",
        entry_point = {947.4619140625,-964.76330566406,39.499904632568 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(981.663025, -1001.203430, 26.979355), vector3(891.027161, -919.328247, 54.140053)},
    },
    ["Pier Arcade"] = {
        slot = "pierarcade",
        entry_point = {-1650.9195556641,-1082.9091796875,13.155512809753 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(-1602.584351, -1020.927307, -5.842125), vector3(-1730.167114, -1116.083252, 36.435841)},
    },
    ["Record A Studios"] = {
        slot = "recordastudios",
        entry_point = {473.56823730469,-105.95534515381,63.158290863037 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(433.202576, -37.855530, 20.893711), vector3(530.711182, -141.512573, 141.579025)},
    },
    ["Hayes Autoshop"] = {
        slot = "hayesautoshop",
        entry_point = {-1433.8493652344,-447.65368652344,35.797374725342 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(-1368.320312, -397.433960, 25.020660), vector3(-1439.711060, -477.432220, 58.243385)},
    },
    ["Cat Cafe"] = {
        slot = "catcafe",
        entry_point = {-581.05358886719,-1070.8856201172,22.329660415649 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        bounds = {vector3(-550.979858, -1008.183655, 13.965952), vector3(-622.625732, -1093.645142, 53.915081)},
    },
    ["LC Records"] = {
        slot = "triadsrecords",
        entry_point = {-821.15002441406,-702.10955810547,28.060119628906 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        bounds = {vector3(-864.511963, -671.863281, 14.720284), vector3(-794.687622, -748.096558, 153.795029)},
    },
    -- ["London Underworld HQ"] = {
    --     slot = "ldnuhq",
    --     entry_point = {-589.66656494141,-706.43353271484,36.284976959229 + 0.5},
    --     buy_price = 10000000000,
    --     blipId = 374,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
    --     blipColour = 2,
    --     groupPermission = "gang.ldnu.whitelist",
    --     bounds = {vector3(-552.032593, -673.273071, 9.735649), vector3(-631.412354, -754.922913, 150.792618)},
    -- },
    ["Sixth Sense Manor"] = {
        slot = "imperialmanor",
        entry_point = {-51.455780029297,358.30191040039,113.05756378174 + 0.5},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/fortuneclub.png",
        blipColour = 2,
        highTaxBracket = true,
        groupPermission = "gang.sixthsense.whitelist",
        bounds = {vector3(-29.551868, 422.368134, 85.828522), vector3(-150.797119, 287.432678, 165.172195)},
    },
    ["Military Base 1"] = {
        slot = "100_motel",
        entry_point = {-2441.4738769531,2951.2038574219,34.998840332031},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 2"] = {
        slot = "100_motel",
        entry_point = {-2131.9592285156,2820.8940429688,34.841274261475},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 3"] = {
        slot = "100_motel",
        entry_point = {-2095.2331542969,2829.6665039063,32.960666656494},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 4"] = {
        slot = "100_motel",
        entry_point = {-1891.1469726563,3247.9096679688,36.849254608154},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 5"] = {
        slot = "100_motel",
        entry_point = {-1891.1690673828,3248.0334472656,32.844772338867},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 6"] = {
        slot = "100_motel",
        entry_point = {-1858.2668457031,3305.111328125,36.849193572998},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 7"] = {
        slot = "100_motel",
        entry_point = {-1858.3948974609,3305.0244140625,32.820320129395},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 8"] = {
        slot = "100_motel",
        entry_point = {-1853.6201171875,3302.7111816406,32.815593719482},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 9"] = {
        slot = "100_motel",
        entry_point = {-1850.3966064453,3304.5239257813,32.814373016357},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 10"] = {
        slot = "100_motel",
        entry_point = {-1847.9805908203,3300.3037109375,32.815361022949},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 11"] = {
        slot = "100_motel",
        entry_point = {-1881.5604248047,3241.3037109375,32.844844818115},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 12"] = {
        slot = "100_motel",
        entry_point = {-1887.0404052734,3245.0380859375,32.844593048096},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 13"] = {
        slot = "100_motel",
        entry_point = {-1845.3526611328,3220.2180175781,32.844921112061},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 14"] = {
        slot = "100_motel",
        entry_point = {-1811.4833984375,3278.7983398438,32.815494537354},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 15"] = {
        slot = "100_motel",
        entry_point = {-1806.1417236328,3275.1501464844,32.815647125244},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 16"] = {
        slot = "100_motel",
        entry_point = {-1801.7268066406,3272.4196777344,32.825313568115},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 17"] = {
        slot = "100_motel",
        entry_point = {-1801.8552246094,3272.458984375,36.849208831787},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 18"] = {
        slot = "100_motel",
        entry_point = {-1834.7932128906,3215.3513183594,32.84513092041},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 19"] = {
        slot = "100_motel",
        entry_point = {-1834.8477783203,3215.4833984375,36.849254608154},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 20"] = {
        slot = "100_motel",
        entry_point = {-1839.4447021484,3217.6594238281,32.844615936279},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 21"] = {
        slot = "100_motel",
        entry_point = {-1808.0802001953,3200.0400390625,32.826240539551},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 22"] = {
        slot = "100_motel",
        entry_point = {-1808.0406494141,3200.0007324219,36.830631256104},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 23"] = {
        slot = "100_motel",
        entry_point = {-1775.216796875,3257.0837402344,32.801872253418},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 24"] = {
        slot = "100_motel",
        entry_point = {-1775.2271728516,3257.1003417969,36.830654144287},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 25"] = {
        slot = "100_motel",
        entry_point = {-1770.5275878906,3254.9074707031,32.7971534729},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 26"] = {
        slot = "100_motel",
        entry_point = {-1764.9348144531,3252.072265625,32.796993255615},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 27"] = {
        slot = "100_motel",
        entry_point = {-1798.5413818359,3193.4294433594,32.826351165771},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 28"] = {
        slot = "100_motel",
        entry_point = {-1803.8280029297,3197.0288085938,32.826110839844},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 29"] = {
        slot = "100_motel",
        entry_point = {-1762.0600585938,3172.3745117188,32.826469421387},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 30"] = {
        slot = "100_motel",
        entry_point = {-1728.4161376953,3230.8952636719,32.797050476074},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 31"] = {
        slot = "100_motel",
        entry_point = {-1723.1097412109,3227.2932128906,32.797271728516},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 32"] = {
        slot = "100_motel",
        entry_point = {-1718.6259765625,3224.2893066406,32.807266235352},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 33"] = {
        slot = "100_motel",
        entry_point = {-1718.8913574219,3224.3203125,36.830730438232},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 34"] = {
        slot = "100_motel",
        entry_point = {-1751.6629638672,3167.2517089844,32.826923370361},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 35"] = {
        slot = "100_motel",
        entry_point = {-1751.8482666016,3167.3857421875,36.830867767334},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Military Base 36"] = {
        slot = "100_motel",
        entry_point = {-1756.3353271484,3169.6843261719,32.826229095459},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 1"] = {
        slot = "100_motel",
        entry_point = {-108.72647094727,2795.3098144531,53.30415725708},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 2"] = {
        slot = "100_motel",
        entry_point = {-96.827087402344,2810.7731933594,53.262222290039},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 3"] = {
        slot = "100_motel",
        entry_point = {59.013496398926,2794.9353027344,57.878242492676},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 4"] = {
        slot = "100_motel",
        entry_point = {265.74502563477,2598.4470214844,44.825572967529},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 5"] = {
        slot = "100_motel",
        entry_point = {317.2887878418,2622.9775390625,44.459224700928},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 6"] = {
        slot = "100_motel",
        entry_point = {579.25323486328,2677.990234375,41.841888427734},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 7"] = {
        slot = "100_motel",
        entry_point = {471.12130737305,2608.0639648438,44.477252960205},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 8"] = {
        slot = "100_motel",
        entry_point = {506.48397827148,2610.3051757813,43.972282409668},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 9"] = {
        slot = "100_motel",
        entry_point = {983.93969726563,2718.4904785156,39.503429412842},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 10"] = {
        slot = "100_motel",
        entry_point = {1142.2834472656,2654.7216796875,38.15083694458},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 11"] = {
        slot = "100_motel",
        entry_point = {1136.2769775391,2641.6967773438,38.143753051758},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 12"] = {
        slot = "100_motel",
        entry_point = {1125.1673583984,2641.86328125,38.143753051758},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 13"] = {
        slot = "100_motel",
        entry_point = {1106.2716064453,2652.7795410156,38.140937805176	},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 14"] = {
        slot = "100_motel",
        entry_point = {1258.5721435547,2739.8171386719,38.827278137207},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 15"] = {
        slot = "100_motel",
        entry_point = {1716.2998046875,3294.8369140625,41.192882537842},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 16"] = {
        slot = "100_motel",
        entry_point = {1691.7019042969,3865.9145507813,34.907382965088},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 17"] = {
        slot = "100_motel",
        entry_point = {1733.3969726563,3895.4831542969,35.558990478516},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 18"] = {
        slot = "100_motel",
        entry_point = {1802.9447021484,3913.8205566406,37.057193756104},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 19"] = {
        slot = "100_motel",
        entry_point = {1880.0567626953,3920.5739746094,33.200668334961},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 20"] = {
        slot = "100_motel",
        entry_point = {1894.4633789063,3714.9970703125,32.758403778076},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 21"] = {
        slot = "100_motel",
        entry_point = {2200.9438476563,3318.2905273438,46.807445526123},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 22"] = {
        slot = "100_motel",
        entry_point = {2195.1782226563,3306.8549804688,46.333114624023},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 23"] = {
        slot = "100_motel",
        entry_point = {2175.3010253906,3322.1499023438,46.420635223389},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 24"] = {
        slot = "100_motel",
        entry_point = {2168.08984375,3331.1384277344,46.499500274658},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 25"] = {
        slot = "100_motel",
        entry_point = {2153.0056152344,3360.22265625,45.427917480469},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 26"] = {
        slot = "100_motel",
        entry_point = {2163.1530761719,3374.9575195313,46.323703765869},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 27"] = {
        slot = "100_motel",
        entry_point = {2368.8679199219,3155.5002441406,49.06888961792},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 28"] = {
        slot = "100_motel",
        entry_point = {2588.5283203125,3167.7990722656,51.367321014404},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 29"] = {
        slot = "100_motel",
        entry_point = {2632.4270019531,3258.0581054688,55.463344573975},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 30"] = {
        slot = "100_motel",
        entry_point = {2618.5812988281,3275.1293945313,55.738212585449},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 31"] = {
        slot = "100_motel",
        entry_point = {2634.1633300781,3291.6103515625,55.728317260742},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 32"] = {
        slot = "100_motel",
        entry_point = {2660.3459472656,3291.5170898438,55.849040985107},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 33"] = {
        slot = "100_motel",
        entry_point = {2569.4094238281,2720.3422851563,42.955932617188},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 34"] = {
        slot = "100_motel",
        entry_point = {2526.2819824219,2586.3889160156,38.773181915283},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Sandy Area 35"] = {
        slot = "100_motel",
        entry_point = {1531.8287353516,1728.2536621094,109.9206161499},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 1"] = {
        slot = "100_motel",
        entry_point = {-9.109676361084,-2536.1772460938,7.3853888511658},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 2"] = {
        slot = "100_motel",
        entry_point = {-57.010562896729,-2448.4067382813,7.2357659339905},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 3"] = {
        slot = "100_motel",
        entry_point = {-178.84777832031,-2502.0395507813,6.25324010849},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 4"] = {
        slot = "100_motel",
        entry_point = {-179.04100036621,-2505.8669433594,6.2532391548157},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 5"] = {
        slot = "100_motel",
        entry_point = {-184.90919494629,-2509.1430664063,9.1407089233398},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 6"] = {
        slot = "100_motel",
        entry_point = {-184.89862060547,-2503.2475585938,6.2532510757446},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["South Side 7"] = {
        slot = "Cheap_Home",
        entry_point = {-48.430137634277,-2508.5866699219,7.3961672782898},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["East Side 1"] = {
        slot = "100_motel",
        entry_point = {1037.9245605469,-2237.2507324219,31.888401031494},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["East Side 2"] = {
        slot = "100_motel",
        entry_point = {1017.5233764648,-2281.4729003906,30.50954246521},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["East Side 3"] = {
        slot = "100_motel",
        entry_point = {997.27551269531,-2360.4873046875,30.50954246521},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["East Side 4"] = {
        slot = "100_motel",
        entry_point = {963.90057373047,-1786.8718261719,31.237770080566},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["East Side 5"] = {
        slot = "100_motel",
        entry_point = {964.56597900391,-1779.8325195313,31.235544204712},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["East Side 6"] = {
        slot = "100_motel",
        entry_point = {849.31488037109,-2097.5246582031,30.259481430054},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 1"] = {
        slot = "100_motel",
        entry_point = {522.76544189453,198.67143249512,108.30945587158},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 2"] = {
        slot = "100_motel",
        entry_point = {520.4697265625,192.66398620605,108.30945587158},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 3"] = {
        slot = "100_motel",
        entry_point = {514.46105957031,191.75605773926,108.30950927734},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 4"] = {
        slot = "100_motel",
        entry_point = {508.18704223633,194.04817199707,108.30950927734},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 5"] = {
        slot = "100_motel",
        entry_point = {486.4782409668,202.19760131836,108.30959320068},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 6"] = {
        slot = "100_motel",
        entry_point = {482.66021728516,206.3980255127,108.30959320068},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 7"] = {
        slot = "100_motel",
        entry_point = {484.87301635742,212.37289428711,108.30958557129},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 8"] = {
        slot = "100_motel",
        entry_point = {522.33618164063,198.96649169922,104.74409484863},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 9"] = {
        slot = "100_motel",
        entry_point = {520.27673339844,192.77207946777,104.74464416504},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 10"] = {
        slot = "100_motel",
        entry_point = {514.14660644531,191.64068603516,104.74493408203},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 11"] = {
        slot = "100_motel",
        entry_point = {508.07308959961,193.82650756836,104.74493408203},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 12"] = {
        slot = "100_motel",
        entry_point = {486.50500488281,201.62161254883,104.74492645264},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 13"] = {
        slot = "100_motel",
        entry_point = {482.61953735352,206.62469482422,104.7448348999},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 14"] = {
        slot = "100_motel",
        entry_point = {484.85809326172,212.56536865234,104.74420928955},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 15"] = {
        slot = "100_motel",
        entry_point = {487.80233764648,221.41059875488,104.74406433105},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 16"] = {
        slot = "100_motel",
        entry_point = {490.27249145508,227.88845825195,104.74435424805},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 17"] = {
        slot = "100_motel",
        entry_point = {496.91595458984,236.81851196289,104.74494171143},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 18"] = {
        slot = "100_motel",
        entry_point = {504.3610534668,234.2580871582,104.74449920654},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 19"] = {
        slot = "100_motel",
        entry_point = {510.76956176758,231.77967834473,104.744140625},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 20"] = {
        slot = "100_motel",
        entry_point = {519.6728515625,228.6763458252,104.74411773682},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 21"] = {
        slot = "100_motel",
        entry_point = {526.78381347656,225.95025634766,104.74446868896},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 22"] = {
        slot = "100_motel",
        entry_point = {527.95660400391,213.84701538086,104.74446105957},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 23"] = {
        slot = "100_motel",
        entry_point = {525.57385253906,207.68228149414,104.74415588379},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 24"] = {
        slot = "100_motel",
        entry_point = {352.79403686523,-142.60806274414,66.68830871582},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 25"] = {
        slot = "100_motel",
        entry_point = {414.83480834961,-217.23490905762,59.910427093506},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 26"] = {
        slot = "100_motel",
        entry_point = {418.52374267578,-207.42385864258,59.910427093506},
        buy_price = 10000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Vinewood Area 27"] = {
        slot = "Cheap_Home",
        entry_point = {583.60754394531,137.98774719238,99.474746704102},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Vinewood Area 28"] = {
        slot = "Cheap_Home",
        entry_point = {580.90350341797,139.00953674316,99.474746704102},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Vinewood Area 29"] = {
        slot = "Cheap_Home",
        entry_point = {551.91052246094,142.46315002441,98.859230041504},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Vinewood Area 30"] = {
        slot = "Cheap_Home",
        entry_point = {555.51806640625,151.39739990234,99.457214355469},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Vinewood Area 31"] = {
        slot = "Cheap_Home",
        entry_point = {571.41961669922,194.09977722168,101.65659332275},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Vinewood Area 32"] = {
        slot = "Cheap_Home",
        entry_point = {572.85504150391,198.05769348145,101.88804626465},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },

    ["Sea View 1"] = {
        slot = "Cheap_Home",
        entry_point = {-3089.1713867188,221.28367614746,14.110295295715},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 2"] = {
        slot = "Cheap_Home",
        entry_point = {-3104.9172363281,246.69006347656,12.496374130249},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 3"] = {
        slot = "Cheap_Home",
        entry_point = {-3105.6633300781,286.66589355469,8.9721212387085},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 4"] = {
        slot = "Cheap_Home",
        entry_point = {-3110.5043945313,335.5133972168,7.4933481216431},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 5"] = {
        slot = "Cheap_Home",
        entry_point = {-3080.7712402344,406.49499511719,6.9684791564941},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 6"] = {
        slot = "Cheap_Home",
        entry_point = {-3093.5666503906,349.07214355469,7.5403780937195},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 7"] = {
        slot = "Cheap_Home",
        entry_point = {-3088.7294921875,392.28942871094,11.44753074646},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 8"] = {
        slot = "Cheap_Home",
        entry_point = {-3071.1730957031,442.64254760742,6.3579578399658},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 9"] = {
        slot = "Cheap_Home",
        entry_point = {-3049.9326171875,474.73754882813,6.7796487808228},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 10"] = {
        slot = "Cheap_Home",
        entry_point = {-3039.2292480469,492.88031005859,6.7727122306824},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 11"] = {
        slot = "Cheap_Home",
        entry_point = {-3031.5107421875,524.93804931641,7.4160056114197},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 12"] = {
        slot = "Cheap_Home",
        entry_point = {-3029.3283691406,568.80554199219,7.8050627708435},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 13"] = {
        slot = "Cheap_Home",
        entry_point = {-3077.3740234375,658.99761962891,11.636443138123},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 14"] = {
        slot = "Cheap_Home",
        entry_point = {-3107.0756835938,718.93432617188,20.629652023315},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 15"] = {
        slot = "Cheap_Home",
        entry_point = {-3109.4780273438,751.62731933594,24.701889038086},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 16"] = {
        slot = "Cheap_Home",
        entry_point = {-3225.2355957031,911.28472900391,13.993286132813},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 17"] = {
        slot = "Cheap_Home",
        entry_point = {-3228.6508789063,927.46832275391,13.969741821289},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 18"] = {
        slot = "Cheap_Home",
        entry_point = {-3243.1750488281,931.7568359375,17.221349716187},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 19"] = {
        slot = "Cheap_Home",
        entry_point = {-3237.7944335938,952.63848876953,13.128752708435},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 20"] = {
        slot = "Cheap_Home",
        entry_point = {-3254.6518554688,1063.9923095703,11.146202087402},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 21"] = {
        slot = "Cheap_Home",
        entry_point = {-3248.3901367188,1069.7940673828,11.028952598572},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 22"] = {
        slot = "Cheap_Home",
        entry_point = {-3229.2102050781,1100.5681152344,10.578734397888},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 23"] = {
        slot = "Cheap_Home",
        entry_point = {-3205.6354980469,1185.9581298828,9.6646976470947},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 24"] = {
        slot = "Cheap_Home",
        entry_point = {-3200.2163085938,1232.6257324219,10.048316001892},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 25"] = {
        slot = "Cheap_Home",
        entry_point = {-3190.9187011719,1297.7077636719,19.067398071289},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 26"] = {
        slot = "Cheap_Home",
        entry_point = {-3017.1027832031,746.70422363281,27.781278610229},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 27"] = {
        slot = "Cheap_Home",
        entry_point = {-2992.8024902344,707.15612792969,28.496591567993},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 28"] = {
        slot = "Cheap_Home",
        entry_point = {-2994.6625976563,682.63269042969,25.042675018311},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 29"] = {
        slot = "Cheap_Home",
        entry_point = {-2973.0751953125,642.72491455078,25.798782348633},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Sea View 30"] = {
        slot = "Cheap_Home",
        entry_point = {-2977.5505371094,609.396484375,20.244577407837},
        buy_price = 20000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/paletosmallhome.png",
        blipColour = 2
    },
    ["Ocean View 1"] = {
        slot = "100_motel",
        entry_point = {-3115.1687011719,304.17333984375,8.3810424804688},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 2"] = {
        slot = "100_motel",
        entry_point = {-3111.5837402344,315.6953125,8.3810434341431},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 3"] = {
        slot = "100_motel",
        entry_point = {-3091.4189453125,379.25857543945,7.1119122505188},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 4"] = {
        slot = "100_motel",
        entry_point = {-3094.1784667969,363.99078369141,7.1190791130066},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 5"] = {
        slot = "100_motel",
        entry_point = {-3036.4562988281,544.84338378906,7.5076813697815},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 6"] = {
        slot = "100_motel",
        entry_point = {-3036.5947265625,559.25317382813,7.5076813697815},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 7"] = {
        slot = "100_motel",
        entry_point = {-3251.03125,1027.1672363281,11.757687568665},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 8"] = {
        slot = "100_motel",
        entry_point = {-3256.3249511719,1042.5372314453,11.757714271545},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 9"] = {
        slot = "100_motel",
        entry_point = {-3228.2915039063,1092.2888183594,10.758546829224},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 10"] = {
        slot = "100_motel",
        entry_point = {-3231.5192871094,1081.3990478516,10.811365127563},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 11"] = {
        slot = "100_motel",
        entry_point = {-3220.1237792969,1138.0325927734,9.902063369751},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 12"] = {
        slot = "100_motel",
        entry_point = {-3214.7541503906,1149.0223388672,9.895393371582},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 13"] = {
        slot = "100_motel",
        entry_point = {-3205.2927246094,1152.1328125,9.6622648239136},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 14"] = {
        slot = "100_motel",
        entry_point = {-3200.2609863281,1165.5233154297,9.6543521881104},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 15"] = {
        slot = "100_motel",
        entry_point = {-3193.517578125,1208.8168945313,9.4252281188965},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Ocean View 16"] = {
        slot = "100_motel",
        entry_point = {-3201.1184082031,1194.3642578125,9.5453262329102},
        buy_price = 7000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2
    },
    ["Mile High Club"] = {
        slot = "mile_high_club",
        entry_point = {-164.82669067383,-1008.1002197266,30.393335342407},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2,
        bounds = {vector3(-39.803143, -896.515991, 21.468735), vector3(-222.656815, -1079.371216, 292.129089)},
    },
    ["Mile High Club: Apartment 1"] = {
        slot = "mile_high_club_apartment1",
        entry_point = {-153.52545166016,-959.89868164062,240.23011779785},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2,
        bounds = {vector3(-198.225540, -1031.351929, 206.181641), vector3(-105.535797, -898.105652, 266.813660)},
    },
    ["Mile High Club: Apartment 2"] = {
        slot = "mile_high_club_apartment2",
        entry_point = {-160.34188842773,-996.01232910156,253.43524169922},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sandycaravan.png",
        blipColour = 2,
        bounds = {vector3(-198.225540, -1031.351929, 206.181641), vector3(-105.535797, -898.105652, 266.813660)},
    },
    ["Covenant Ave 1"] = {
        slot = "Cheap_Home",
        entry_point = {208.5126953125,-1895.2644042969,24.814136505127 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 2"] = {
        slot = "Cheap_Home",
        entry_point = {192.3345489502,-1883.4691162109,25.056730270386 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 3"] = {
        slot = "Cheap_Home",
        entry_point = {171.56590270996,-1871.3786621094,24.400232315063 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 4"] = {
        slot = "Cheap_Home",
        entry_point = {149.93090820312,-1864.6383056641,24.59130859375 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 5"] = {
        slot = "Cheap_Home",
        entry_point = {130.55006408691,-1853.4294433594,25.234796524048 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 6"] = {
        slot = "Cheap_Home",
        entry_point = {104.17501831055,-1885.4011230469,24.318311691284 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 7"] = {
        slot = "Cheap_Home",
        entry_point = {114.94915008545,-1887.6695556641,23.928194046021 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 8"] = {
        slot = "Cheap_Home",
        entry_point = {128.15617370605,-1896.6614990234,23.674196243286 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Covenant Ave 9"] = {
        slot = "Cheap_Home",
        entry_point = {148.76542663574,-1904.4342041016,23.531290054321 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Grove Street 20"] = {
        slot = "Cheap_Home",
        entry_point = {100.9080581665,-1912.0809326172,21.408508300781 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Grove Street 21"] = {
        slot = "Cheap_Home",
        entry_point = {118.14582824707,-1920.9694824219,21.32342338562 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 1"] = {
        slot = "Cheap_Home",
        entry_point = {235.84150695801,-2046.1311035156,18.379987716675 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 2"] = {
        slot = "Cheap_Home",
        entry_point = {251.29827880859,-2030.3996582031,18.706123352051 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 3"] = {
        slot = "Cheap_Home",
        entry_point = {256.35577392578,-2023.4953613281,19.269695281982 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 4"] = {
        slot = "Cheap_Home",
        entry_point = {280.08963012695,-1993.9671630859,20.803964614868 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 5"] = {
        slot = "Cheap_Home",
        entry_point = {291.5764465332,-1980.2562255859,21.600534439087 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 6"] = {
        slot = "Cheap_Home",
        entry_point = {295.61145019531,-1971.9987792969,22.900814056396 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 7"] = {
        slot = "Cheap_Home",
        entry_point = {311.95727539062,-1956.1226806641,24.618686676025 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Jamestown Street 8"] = {
        slot = "Cheap_Home",
        entry_point = {324.29760742188,-1937.5181884766,25.018901824951 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 1"] = {
        slot = "Cheap_Home",
        entry_point = {460.93020629883,-1573.4470214844,32.792266845703 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 2"] = {
        slot = "Cheap_Home",
        entry_point = {465.56298828125,-1567.537109375,32.824760437012 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 3"] = {
        slot = "Cheap_Home",
        entry_point = {470.56600952148,-1561.5750732422,32.825634002686 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 4"] = {
        slot = "Cheap_Home",
        entry_point = {455.13583374023,-1579.8094482422,32.791984558105 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 5"] = {
        slot = "Cheap_Home",
        entry_point = {460.8024597168,-1585.2144775391,32.818305969238 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 6"] = {
        slot = "Cheap_Home",
        entry_point = {467.06323242188,-1590.3673095703,32.82092666626 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 7"] = {
        slot = "Cheap_Home",
        entry_point = {442.16287231445,-1569.6534423828,32.82400894165 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 8"] = {
        slot = "Cheap_Home",
        entry_point = {436.12448120117,-1564.4224853516,32.819171905518 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Lowenstein Apartment 9"] = {
        slot = "Cheap_Home",
        entry_point = {430.09509277344,-1559.3892822266,32.823051452637 + 0.5},
        buy_price = 16000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/citysmallhome.png",
        blipColour = 2
    },
    ["Mirror Park House 12"] = {
        slot = "Cheap_Home",
        entry_point = {970.02880859375,-502.16333007812,62.140956878662 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park House 13"] = {
        slot = "Cheap_Home",
        entry_point = {945.77075195312,-518.88214111328,60.625522613525 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park House 14"] = {
        slot = "Cheap_Home",
        entry_point = {923.88024902344,-525.43267822266,59.574604034424 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park House 15"] = {
        slot = "Cheap_Home",
        entry_point = {892.39440917969,-540.71350097656,58.506271362305 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    ["Mirror Park House 16"] = {
        slot = "Cheap_Home",
        entry_point = {1014.5584716797,-468.98583984375,64.512489318848 + 0.5},
        buy_price = 50000000,
        sell_price = 500000,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/mirrorpark.png",
        blipId = 374,
        blipColour = 2
    },
    -- ["Shard Apartment 1"] = {
    --     slot = "Shard_Apartment_1",
    --     entry_point = {463.92904663086,-596.40270996094,58.762874603271 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 2"] = {
    --     slot = "Shard_Apartment_2",
    --     entry_point = {464.32379150391,-594.26977539062,66.35693359375 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 3"] = {
    --     slot = "Shard_Apartment_3",
    --     entry_point = {464.26019287109,-594.26507568359,75.737022399902 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 4"] = {
    --     slot = "Shard_Apartment_4",
    --     entry_point = {465.33081054688,-594.38586425781,84.380088806152 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 5"] = {
    --     slot = "Shard_Apartment_5",
    --     entry_point = {465.48751831055,-605.93884277344,123.45015716553 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 6"] = {
    --     slot = "Shard_Apartment_6",
    --     entry_point = {466.90673828125,-602.88720703125,133.82618713379 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 7"] = {
    --     slot = "Shard_Apartment_7",
    --     entry_point = {466.9921875,-603.01861572266,142.44543457031 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 8"] = {
    --     slot = "Shard_Apartment_8",
    --     entry_point = {468.73376464844,-603.38598632812,168.89953613281 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 9"] = {
    --     slot = "Shard_Apartment_9",
    --     entry_point = {470.0244140625,-603.50457763672,189.84396362305 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    -- ["Shard Apartment 10"] = {
    --     slot = "Shard_Apartment_10",
    --     entry_point = {470.49951171875,-603.48614501953,200.34535217285 + 0.5},
    --     buy_price = 10000000000,
    --     sell_price = 0,
    --     image = "https://cdn.cmgstudios.net/content/fivem/houses/vinewoodhills.png",
    --     blipId = 374,
    --     blipColour = 2,
    --     bounds = {vector3(400.966370, -668.084351, -25.888298), vector3(532.439941, -542.486328, 481.528564)},
    -- },
    ["Jurassic Jackpot"] = {
        slot = "jurassic_jackpot",
        entry_point = {-263.0700378418,-903.06927490234,32.313854217529},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/upld/images/8CxgsXIrMzpkMmq.jpg",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(-182.300690, -1014.339966, 10.620819), vector3(-373.817108, -861.316528, 88.783989)},
        groupPermission = "gang.marketplace.whitelist",
    },
    ["IAA Bunker"] = {
        slot = "iaa_bunker",
        entry_point = {2135.3674316406,2919.8630371094,-61.901950836182},
        buy_price = 10000000000,
        blipId = 374,
        image = "https://cdn.cmgstudios.net/content/upld/images/rGdKCdTh4DdDBh1.jpg",
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(2513.028320, 2694.098633, -214.407059), vector3(1994.230835, 3024.283203, 13.800469)},
    },
    ["Casino Hotel Room 501"] = {
        slot = "casinohotelroom",
        entry_point = {952.19616699219,49.733203887939,104.62847137451 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 502"] = {
        slot = "casinohotelroom",
        entry_point = {956.55560302734,46.889247894287,104.6284942627 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 503"] = {
        slot = "casinohotelroom",
        entry_point = {960.87908935547,44.142459869385,104.62805175781 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 504"] = {
        slot = "casinohotelroom",
        entry_point = {965.32733154297,41.399578094482,104.62831878662 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 505"] = {
        slot = "casinohotelroom",
        entry_point = {969.73571777344,38.561626434326,104.62827301025 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 506"] = {
        slot = "casinohotelroom",
        entry_point = {974.15655517578,35.803047180176,104.62818908691 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 507"] = {
        slot = "casinohotelroom",
        entry_point = {977.263671875,26.805986404419,104.62859344482 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 508"] = {
        slot = "casinohotelroom",
        entry_point = {974.43212890625,22.50705909729,104.62824249268 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 509"] = {
        slot = "casinohotelroom",
        entry_point = {972.97674560547,20.205953598022,104.6283493042 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 510"] = {
        slot = "casinohotelroom",
        entry_point = {970.15075683594,15.807827949524,104.62850189209 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 511"] = {
        slot = "casinohotelroom",
        entry_point = {960.90600585938,14.732926368713,104.62831878662 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 512"] = {
        slot = "casinohotelroom",
        entry_point = {956.40441894531,17.372661590576,104.6283493042 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 513"] = {
        slot = "casinohotelroom",
        entry_point = {952.05700683594,20.161596298218,104.62837219238 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 514"] = {
        slot = "casinohotelroom",
        entry_point = {947.65643310547,22.984149932861,104.62837219238 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 515"] = {
        slot = "casinohotelroom",
        entry_point = {943.16033935547,25.731767654419,104.62832641602 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 516"] = {
        slot = "casinohotelroom",
        entry_point = {938.79022216797,28.573776245117,104.62836456299 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 517"] = {
        slot = "casinohotelroom",
        entry_point = {937.73663330078,37.82107925415,104.62840270996 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 518"] = {
        slot = "casinohotelroom",
        entry_point = {940.45892333984,42.225410461426,104.62816619873 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Casino Hotel Room 519"] = {
        slot = "casinohotelroom",
        entry_point = {943.22808837891,46.566223144531,104.6283416748 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/tmAtb2GNQyqJEx4.jpg",
        blipId = 374,
        blipColour = 2,
    },
    ["Red's Tuner Shop"] = {
        slot = "redstunershop",
        entry_point = {-687.74719238281,-2432.6335449219,17.66111946106 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/DELsMkNifla6Oxb.jpg",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(-635.893066, -2383.610596, 1.604111), vector3(-711.871826, -2465.703613, 45.017151)},
    },
    ["Aldentes"] = {
        slot = "aldentes",
        entry_point = {-1185.3037109375,-1385.4992675781,4.6357069015503 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/upld/images/q7PCvUWOPVdkBkA.jpg",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(-1154.505859, -1427.728516, -206.131180), vector3(-1219.436157, -1371.301147, 39.548977)},
    },
    ["CMG Trader HQ"] = {
        slot = "cmgtraderhq",
        entry_point = {2748.50390625,3472.4736328125,55.67622756958 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/cmgtraderhq.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        openInterior = false
    },
    ["Angels of Death"] = {
        slot = "angelsofdeath",
        entry_point = {269.12945556641,2982.4099121094,43.066337585449 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/angelsofdeath.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(234.26322937012,2935.9689941406,30.184635162354), vector3(330.26406860352,3124.4663085938,84.404190063477)},
        openInterior = true
    },
    ["Sabre HQ"] = {
        slot = "sabrehq",
        entry_point = {-3023.8984375,80.91618347168,11.61354637146 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/sabrehq.png",
        blipId = 374,
        highTaxBracket = true,
        blipColour = 2,
        bounds = {vector3(-3221.4516601562,139.90098571777,-0.83944129943848), vector3(-2676.8645019531,52.227764129639,102.82068634033)},
        openInterior = true
    },
    ["Black Bunker"] = {
        slot = "blackbunker",
        entry_point = {3143.1928710938,5373.9599609375,26.146196365356 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/blackbunker.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vector3(3185.0971679688,5623.5463867188,-0.59163773059845), vector3(2885.3364257812,5383.451171875,81.875030517578)},
        openInterior = true
    },
    ["Luciano's Restaurant"] = {
        slot = "luciano",
        entry_point = {-1038.3963623047,-1397.0456542969,5.5566244125366 + 0.5},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/luciano.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vec3(-1065.781494, -1336.213745, -1.826494), vec3(-1007.459961, -1444.660156, 26.816963)},
        openInterior = true
    },
    ["Lost MC Clubhouse"] = {
        slot = "lostmcclubhouseseol",
        entry_point = {-694.68902587891,-1186.7208251953,10.711611747742},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/lostmcseol.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vec3(-727.577148, -1138.945923, -6.525190), vec3(-660.310547, -1209.367798, 34.314999)},
        openInterior = true
    },
    ["Boss Villa"] = {
        slot = "bossvilla",
        entry_point = {-1038.7482910156,222.09124755859,64.382278442383},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bossvilla.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vec3(-1069.375488, 250.037979, 48.944466), vec3(-992.794983, 203.580658, 79.020203)},
        openInterior = true
    },
    ["Rockbay Mansion"] = {
        slot = "rockbaymansion",
        entry_point = {-2324.8811035156,4404.7861328125,24.385374069214},
        buy_price = 10000000000,
        sell_price = 0,
        image = "https://cdn.cmgstudios.net/content/fivem/houses/bossvilla.png",
        blipId = 374,
        blipColour = 2,
        highTaxBracket = true,
        bounds = {vec3(-2233.677490, 4244.270020, -8.876379), vec3(-2403.811523, 4512.433105, 79.928177)},
        openInterior = true
    },
}

--?Must do this asynchronously otherwise other files can't load this cfg
if IsDuplicityVersion() then
    SetTimeout(0, function()
        for slotName, _ in pairs(cfg.slot_types) do
            local inUse
            for _, homeInfo in pairs(cfg.homes) do
                if homeInfo.slot == slotName then
                    inUse = true
                end
            end
            if not inUse then
                CMG.warn("[Houses] " .. slotName .. " is not used in any defined homes")
            end
        end
    end)
end

-- If a slot is used in more than one house then we will need to use a bucket.
local slotUsageCount = {}
for _, homeInfo in pairs(cfg.homes) do
    if not slotUsageCount[homeInfo.slot] then
        slotUsageCount[homeInfo.slot] = 1
    else
        slotUsageCount[homeInfo.slot] = slotUsageCount[homeInfo.slot] + 1
    end
end

for slotName, usageCount in pairs(slotUsageCount) do
    if usageCount > 1 then
        cfg.slot_types[slotName].useBuckets = true
    end
end

local numFailedBounds = 0
for homeName, homeInfo in pairs(cfg.homes) do
    if slotUsageCount[homeInfo.slot] == 1 and not homeInfo.bounds and homeInfo.openInterior then
        CMG.warn(string.format("[Houses] %s does not have any bounds defined for an open interior.", homeName))
        numFailedBounds = numFailedBounds + 1
    end
end
assert(numFailedBounds == 0, string.format("%s house(s) do not have any bounds defined for an open interior.", numFailedBounds))

-- If two or more entry positions are within 5 meters of each other then we will need to use a bucket too.
local locationLookupMap = {}
for slotName, slotData in pairs(cfg.slot_types) do
    local innerInfo = slotData[1]
    if innerInfo then
        local entryInfo = innerInfo[1]
        if entryInfo then
            local x, y = math.floor(entryInfo[2] / 5.0) * 5, math.floor(entryInfo[3] / 5.0) * 5
            if not locationLookupMap[x] then
                locationLookupMap[x] = {}
            end
            if not locationLookupMap[x][y] then
                locationLookupMap[x][y] = {}
            end
            table.insert(locationLookupMap[x][y], slotName)
        end
    end
end

for _, outerLookupMap in pairs(locationLookupMap) do
    for _, slotNames in pairs(outerLookupMap) do
        if #slotNames > 1 then
            for _, slotName in pairs(slotNames) do
                cfg.slot_types[slotName].useBuckets = true
            end
        end
    end
end

cfg.homesWithGroupPermissions = {}

for homeKey, homeInfo in pairs(cfg.homes) do
    if homeInfo.groupPermission then
        table.insert(cfg.homesWithGroupPermissions, homeKey)
    end
end

return cfg
