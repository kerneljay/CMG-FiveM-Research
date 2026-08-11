--[[
    LEVEL 1 BEGINNER GUIDE — Vehicle Crush Trade
    =================================================

    File: cmg/prod/cfg/cfg_vehicle_crush_trade.lua
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
-- Crush trade-in: locked garage vehicles; exclude lore (lore true only). Only models with global cmg_garages count <= maxCrushRatioDenominator; ratio = that count.
local cfg = {}

cfg.areaCenter = vector3(-28.920980453491, -1103.8720703125, 25.422470092773)
cfg.areaHalfExtent = 2.0
cfg.areaHeight = 2.5
cfg.serverMaxDistance = 12.0

cfg.sinkUserId = 9000
cfg.tokensPerLockslotItem = 10

-- Cash redemption: spend N lock slot tokens to get a fixed bank deposit.
cfg.cashRedeemTokenCost = 10
cfg.cashRedeemAmount = 100000000

-- Cache full-table GROUP BY counts (seconds).
cfg.globalGarageCopyCountCacheTtlSecs = 120

-- Max global copies (cmg_garages, all rows) for a model to be tradeable; ratio = that count. More copies than this = not listed.
-- Tokens per crush = floor(tokensPerLockslotItem / ratio). Example: 2 copies -> ratio 2 -> 5 tokens; 10 copies -> ratio 10 -> 1 token.
cfg.maxCrushRatioDenominator = 10

return cfg
