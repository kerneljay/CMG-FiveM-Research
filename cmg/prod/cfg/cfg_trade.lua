--[[
    LEVEL 1 BEGINNER GUIDE — Trade
    ===================================

    File: cmg/prod/cfg/cfg_trade.lua
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
-- Secure trading system tunables. A trade is a two-party escrow: neither side's
-- assets move until BOTH players lock and confirm, and the server re-validates
-- everything (greenzone, ownership, balances) at commit.
local cfg = {}

-- Both players must be inside a greenzone the whole time (request, lock, commit).
cfg.requireGreenzone = true

-- How long (seconds) an outgoing trade request waits for the other player to accept.
cfg.requestTimeoutSeconds = 60

-- Max distinct entries a single side may add to their offer (across all asset types).
cfg.maxOfferItemsPerSide = 500

-- Bulk vehicle safety cap: max vehicles a single side may include in one trade.
cfg.maxVehiclesPerSide = 500

-- Bulk home cap per side.
cfg.maxHomesPerSide = 25

-- Max simultaneous open trades a single player may have at once.
cfg.maxOpenTrades = 10

-- Min/max bounds mirrored from existing sell flows.
cfg.maxMoneyPerSide = 10000000000
cfg.minRentHours = 2
cfg.maxRentHours = 10000

-- Radius (metres) used to populate the "Nearby" list in /trade when the search
-- box is empty. Players within this distance can be quick-picked to trade.
cfg.nearbyRadius = 50.0

-- UI strings surfaced in the Trade menu.
cfg.strings = {
    appTitle = "Secure Trade",
    accessCodeNote = "Access codes are bound to the buyer's Perm ID. The buyer still needs the matching store whitelist item to redeem it.",
    rentalNote = "Offered rentals use the standard rental system and return automatically when the duration expires.",
}

return cfg
