--[[
    BEGINNER GUIDE — Trade
    ======================

    File: cmg/prod/cfg/cfg_trade.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

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
