--[[
    LEVEL 1 BEGINNER GUIDE — Chess
    ===================================

    File: cmg/prod/cfg/cfg_chess.lua
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

cfg.pieceToArchetypeMap = {
    ["r"] = `ch_b_rook`,
    ["n"] = `ch_b_knight`,
    ["b"] = `ch_b_bishop`,
    ["q"] = `ch_b_queen`,
    ["k"] = `ch_b_king`,
    ["p"] = `ch_b_pawn`,
    ["R"] = `ch_w_rook`,
    ["N"] = `ch_w_knight`,
    ["B"] = `ch_w_bishop`,
    ["Q"] = `ch_w_queen`,
    ["K"] = `ch_w_king`,
    ["P"] = `ch_w_pawn`
}

cfg.archetypeToOffsetMap = {
    [`ch_b_rook`] = vector3(-0.022694767, -8.940697e-08, 0.98),
    [`ch_b_knight`] = vector3(-0.0056754947, 0.004611373, -0.45),
    [`ch_b_bishop`] = vector3(0.08403134, 0.6555201, 0.73),
    [`ch_b_queen`] = vector3(-0.062370807, 0.045907557, -0.93),
    [`ch_b_king`] = vector3(0.0028924346, 0.00024586916, -1.31),
    [`ch_b_pawn`] = vector3(-3.874302e-07, -4.4703484e-07, 0.04),
    [`ch_w_rook`] = vector3(-0.022694767, -8.940697e-08, 0.98),
    [`ch_w_knight`] = vector3(-0.0056754947, 0.004611373, -0.45),
    [`ch_w_bishop`] = vector3(0.0, -0.6555201, 0.73),
    [`ch_w_queen`] = vector3(-0.062370807, 0.045907557, -0.93),
    [`ch_w_king`] = vector3(0.0028924346, 0.00024586916, -1.31),
    [`ch_w_pawn`] = vector3(-3.874302e-07, -4.4703484e-07, 0.04)
}

cfg.archetypeToHeadingsMap = {
    [`ch_b_rook`] = 0.0,
    [`ch_b_knight`] = 160.0,
    [`ch_b_bishop`] = 0.0,
    [`ch_b_queen`] = 0.0,
    [`ch_b_king`] = -90.0,
    [`ch_b_pawn`] = 0.0,
    [`ch_w_rook`] = 0.0,
    [`ch_w_knight`] = -20.0,
    [`ch_w_bishop`] = 180.0,
    [`ch_w_queen`] = 0.0,
    [`ch_w_king`] = 90.0,
    [`ch_w_pawn`] = 0.0
}

cfg.locations = {
    ["Casino"] = {
        originPosition = vector3(1122.1206054688, 111.34351348877, 81.542315673828),
        whitePosition = vector3(1135.8620605469, 110.3430557251, 79.786485290527),
        blackPosition = vector3(1128.9699707031, 110.17691040039, 79.952195739746),
        spectatePosition = vector3(1132.3977050781, 105.91315460205, 79.959916687012),
    },
    ["Prison"] = {
        originPosition = vector3(1682.7104492188,2473.5432128906,45.725294494629),
        whitePosition = vector3(1696.0915527344,2495.4265136719,44.614891815186),
        blackPosition = vector3(1689.3677978516,2495.4692382812,44.614891815186),
        spectatePosition = vector3(1692.7517089844,2496.7536621094,44.614891815186),
    },
}

cfg.squareSize = 2.265
cfg.defaultFEN = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

return cfg
