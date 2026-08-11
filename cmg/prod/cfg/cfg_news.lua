--[[
    LEVEL 1 BEGINNER GUIDE — News
    ==================================

    File: cmg/prod/cfg/cfg_news.lua
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

cfg.items = {
    ["camera"] = {
        formalName = "Camera",
        model = `prop_v_cam_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "missfinale_c2mcs_1",
            name = "fin_c2_mcs_1_camman",
        },
        position = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
    },
    ["micA"] = {
        formalName = "Microphone",
        model = `p_ing_microphonel_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "cellphone@",
            name = "cellphone_text_read_base",
        },
        position = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
    },
    ["micB"] = {
        formalName = "Boom Arm Microphone",
        model = `prop_v_bmike_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "missfra1",
            name = "mcs2_crew_idle_m_boom"
        },
        position = {
            x = -0.08,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        }
    }
}

cfg.textures = {
    [3] = {name = "Camera", textureName = "camera"},
    [4] = {name = "CMG TV", textureName = "cmgtv"},
}


return cfg
