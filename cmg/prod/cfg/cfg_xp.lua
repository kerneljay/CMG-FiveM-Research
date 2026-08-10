--[[
    BEGINNER GUIDE — Xp
    ===================

    File: cmg/prod/cfg/cfg_xp.lua
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

-- ─── Jobs ─────────────────────────────────────────────────────────────────────
-- Each entry has jobXP (cmg_* level) and/or skillXP (skill tree).
-- Where the same base is used for both, they share the same value so you can
-- easily spot inconsistencies or deliberately diverge them.

cfg.trucking = {
    jobXP   = 2800,   -- cmg_trucking job level XP per delivery
    skillXP = 50,   -- trucking   skill XP per delivery
}

-- Pilot uses a random range; both systems roll the same value.
cfg.pilot = {
    jobXPMin   = 2500,   -- cmg_pilot job level XP (random min)
    jobXPMax   = 4000,   -- cmg_pilot job level XP (random max)
    skillXPMin = 150,   -- piloting  skill XP (random min)
    skillXPMax = 300,   -- piloting  skill XP (random max)
}

cfg.nhsRevive = {
    jobXP   = 200,   -- cmg_health_service job level XP per revive
    skillXP = 60,   -- health_service     skill XP per revive
}

cfg.nhsBodybag = {
    skillXP = 15,   -- health_service skill XP per bodybag
}

-- XP per drug unit sold via the trap-net NPC buyer (multiplied by unit count)
cfg.trapperRunnerPerUnit = {
    jobXP   = 13,   -- cmg_trapper_runner job level XP per unit sold
    skillXP = 3,   -- trapper            skill XP per unit sold
}

-- cmg_trapper_cook job XP per step in the warehouse pipeline (boosts apply to jobXP).
-- Trapper skill XP: harvest only (same total skill per bud as the old harvest-only grant).
cfg.trapperCook = {
    plant = { jobXP = 30, skillXP = 3 },
    water = { jobXP = 17, skillXP = 2 },
    harvest = { jobXP = 30, skillXP = 3 },
    process = { jobXP = 30, skillXP = 3 },
    bag = { jobXP = 30, skillXP = 3 },
}

cfg.garbageBag = {
    jobXP   = 25,   -- cmg_garbage job level XP per bag deposited in the truck
    skillXP = 10,   -- fishing skill category (Garbage tree UI) XP per bag deposited
}

cfg.mechanicBreakdownContract = {
    jobXP   = 120,   -- cmg_mechanic job level XP per breakdown towed to impound
    skillXP = 100,   -- mechanic (F1) skill XP per breakdown towed to impound
}

-- Mechanic F6 solo jobs (completion once per contract / stage as applicable).
cfg.mechanicSolo = {
    breakdown = { jobXP = 120, skillXP = 90 },
    debris = { jobXP = 100, skillXP = 100 },
    parts_run = { jobXP = 110, skillXP = 110 },
    equipment = { jobXP = 130, skillXP = 60 },
    fuel_runout = { jobXP = 95, skillXP = 95 },
}
-- ─── Crime ────────────────────────────────────────────────────────────────────

cfg.bankDoorHack = {
    skillXP = 600,   -- hacking skill XP per bank door hacked
}

cfg.bankSafeLoot = {
    skillXP = 300,   -- robberies skill XP per bank safe looted
}

cfg.bankHeistHack = {
    skillXP = 675,   -- hacking skill XP for finishing the bank heist hack
}

cfg.jewelryHeistDoorHack = {
    skillXP = 600,   -- hacking skill XP for jewelry heist door hack
}

cfg.jewelryHeistComputerHack = {
    skillXP = 675,   -- hacking skill XP for jewelry heist computer hack
}

cfg.bankHeistTrollyLoot = {
    skillXP = 1000,   -- robberies skill XP per vault trolly looted in bank heist
}

cfg.storeRobberyApuCash = {
    skillXP = 120,   -- robberies skill XP for picking up APU cash after store robbery
}

cfg.storeRobberySafeCrack = {
    skillXP = 400,    -- robberies skill XP for cracking the store safe
}

cfg.clothingStoreRobbery = {
    skillXP = 200,   -- robberies skill XP for clothing store register
}

cfg.atmRobbery = {
    skillXP = 180,   -- robberies skill XP for a successful ATM wire cut
}

cfg.moneyLaundering = {
    skillXP = 500,                 -- money_laundering skill XP per skillXpCleanAmount (£) laundered in one hand-in
    skillXpCleanAmount = 10000000, -- £10,000,000; XP is floor(amount * skillXP / skillXpCleanAmount)
}

-- ─── Police / Law ─────────────────────────────────────────────────────────────

cfg.vehicleLockpick = {
    skillXP = 400,   -- lockpicking skill XP per vehicle trunk lockpick
}

cfg.policeEvidenceBag = {
    skillXP = 75,    -- police_service skill XP per evidence bag stored in evidence room
}

cfg.policeFine = {
    skillXP = 100,   -- police_service skill XP per paid fine issued
}

-- Jailing a player as police (sv_prison direct jail, or police path in sv_vigilante)
cfg.policeJailing = {
    skillXP = 400,   -- police_service skill XP per jailing
    maxHelpers = 3,  -- max additional officers the lead can credit on a single arrest
    helperSelectionRadius = 5.0, -- meters from the lead officer used to find selectable helpers
    selectionTimeoutMsec = 15000, -- if the lead doesn't pick within this, lead silently gets full XP
}

-- Vigilante path when a bounty target is jailed
cfg.vigilanteJailing = {
    skillXP = 400,   -- vigilante skill XP per bounty target jailed
}

-- Per paycheck tick while HMP prison guard is on duty
cfg.prisonGuardPaycheck = {
    skillXP = 400,   -- prison_service skill XP per paycheck tick on duty
}

-- ─── Grinder ──────────────────────────────────────────────────────────────────
-- Applied per unit sold. Final XP = cfgXP.grinderPerUnit.skillXP * amount.
-- Covers: heroin, LSD (north + south), gold, diamond.

cfg.grinderPerUnit = {
    skillXP = 3,     -- grinder skill XP per unit sold
}

return cfg
