--[[
    LEVEL 1 BEGINNER GUIDE — Trader
    ====================================

    File: cmg/prod/cfg/cfg_trader.lua
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
--1220.6180419922,-2956.4887695313,5.8660659790039

local cfg = {}

cfg.trader = {
	{
        type = "Heroin",
		price=10000,
		position=vector3(3582.923828125,3667.4777832031,33.888675689697),
		distance=1000.0,
		dealerPos=vector3(3583.9111328125,3667.28515625,34.888610839844),
		dealerHeading=76.0,
		colour = {
			r = 255,
			g = 0,
			b = 0,
		},
		dealerModel = "s_m_y_dealer_01",
	},
    {
        type = "LSDNorth",
		price=20000,
		position=vector3(1319.5989990234,4314.3930664063,38.222110748291),
		distance=1000.0,
		dealerPos=vector3(1320.4682617188,4314.4072265625,39.140552520752),
		dealerHeading=80.0,
		colour = {
			r = 0,
			g = 255,
			b = 0,
		},
		dealerModel = "s_m_y_dealer_01",
	},
    {
        type = "LSDSouth",
		price=20000,
		position=vector3(2483.4001464844,-417.47219848633,93.73503112793),
		distance=1000.0,
		dealerPos=vector3(2484.0295410156,-417.42150878906,94.73503112793),
		dealerHeading=80.0,
		colour = {
			r = 0,
			g = 255,
			b = 0,
		},
		dealerModel = "s_m_y_dealer_01",
	},
    {
        type = "Legal",
        price=0,
        position=vector3(1219.462, -3023.568, 5.866085),
        distance=1000.0,
        dealerPos=vector3(1220.477, -3023.418, 6.865729),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.459, -3015.865, 5.866082),
        distance=1000.0,
        dealerPos=vector3(1220.477, -3015.76, 6.865766),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.457, -3008.163, 5.866079),
        distance=1000.0,
        dealerPos=vector3(1220.477, -3008.101, 6.865802),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.455, -3000.46, 5.866076),
        distance=1000.0,
        dealerPos=vector3(1220.476, -3000.443, 6.865839),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.453, -2992.758, 5.866073),
        distance=1000.0,
        dealerPos=vector3(1220.476, -2992.784, 6.865876),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.45, -2985.055, 5.86607),
        distance=1000.0,
        dealerPos=vector3(1220.475, -2985.126, 6.865913),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.448, -2977.353, 5.866067),
        distance=1000.0,
        dealerPos=vector3(1220.475, -2977.468, 6.86595),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.446, -2969.65, 5.866064),
        distance=1000.0,
        dealerPos=vector3(1220.474, -2969.809, 6.865986),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.443, -2961.948, 5.866061),
        distance=1000.0,
        dealerPos=vector3(1220.474, -2962.151, 6.866023),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
        position=vector3(1219.441, -2954.246, 5.866058),
        distance=1000.0,
        dealerPos=vector3(1220.474, -2954.492, 6.86606),
        dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Legal",
        price=0,
		position=vector3(1230.0913085938,-3006.5075683594,9.3192682266235),
		distance=1000.0,
		dealerPos=vector3(1230.8022460938,-3006.4682617188,10.3192510604858),
		dealerHeading=83.0,
        colour = {
            r = 0,
            g = 255,
            b = 0,
        },
        dealerModel = "s_m_y_dockwork_01",
    },
    {
        type = "Heroin",
		price=10000,
		position=vector3(1301.0986328125,4307.76171875,37.522640228271),
		distance=1000.0,
		dealerPos=vector3(1300.3160400391,4308.4853515625,38.535346984863),
		dealerHeading=218.2677154541,
		colour = {
			r = 255,
			g = 0,
			b = 0,
		},
		dealerModel = "s_m_y_dealer_01",
	},
}

return cfg
