--[[
    BEGINNER GUIDE — Vigilante
    ==========================

    File: cmg/prod/cfg/cfg_vigilante.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type VigilanteConfig
local cfg = {} ---@diagnostic disable-line

cfg.crimeAmounts = {
    storeRobbery = 200000,
    smallBankRobbery = 500000,
    jeweleryHeist = 1000000,
    bigBankHeist = 2500000,
    atmRobbery = 50000,
    clothingRobbery = 50000,
    illegalTrucking = 5000,
    illegalPiloting = 5000,
    lockPicking = 50000,
    boltCutting = 150000,
    murder = 50000,
    murderEmergencyService = 150000,
    vigilanteAttackEmergencyService = 100000,
}

cfg.cityPosition = vector3(-225.30703735352,-916.74755859375,31.216938018799)
cfg.cityRadius = 750.0

cfg.targetSuspectedRadius = 400.0
cfg.targetSuspectedInaccuracy = 300.0

cfg.minTargetThreshold = 500000
cfg.minRefreshTimeMsec = 300000

cfg.jailTimeIncrement = 150
cfg.moneyPerEachJailIncrement = 250000
cfg.maxJailTimeSecs = 1800
cfg.policeBountyCommission = 0.25

cfg.amountToChatAnnounce = 5000000
cfg.maxNumOtherPlayersToShareWith = 3
cfg.automaticKickTimerMsec = 5400000
cfg.inactiveBountyBucketTimeMsec = 300000
cfg.inactiveGreenzoneTimeMsec = 180000

cfg.bases = {
    {
        position = vector3(-814.54724121094,5389.830078125,35.865348815918),
        radius = 50.0,
        pedLocation = vector4(-802.03515625,5389.859375,29.296752929688,113.38582611084),
        gunstorePedLocation = vector4(-820.07470703125,5398.8657226562,35.851318359375,90.708656311035),
        gunstoreLocation = vector3(-821.54376220703,5398.9038085938,34.885337371826),
        groupSelectorLocation = vector3(-814.48358154297,5392.3198242188,35.867950439453),
        groupSelectorPedLocation = vector4(-814.48352050781,5390.38671875,35.851318359375,0.0),
        marketLocation = vector3(-823.76422119141,5389.7553710938,35.865333557129),
        marketPedLocation = vector4(-823.70111083984,5387.9604492188,35.851318359375,0.0),
        clothingLocation = vector3(-829.32775878906,5388.2260742188,35.865238189697),
    },
    {
        position = vector3(383.4055480957,796.60504150391,190.49021911621),
        radius = 15.0,
        pedLocation = vector4(384.65933227539,795.27032470703,187.44909667969,274.96063232422),
        gunstorePedLocation = vector4(383.49890136719,794.70330810547,190.48205566406,90.708656311035),
        gunstoreLocation = vector3(381.39535522461,794.72808837891,189.51021911621),
        groupSelectorLocation = vector3(386.85104370117,795.0703125,187.46166992188),
        groupSelectorPedLocation = vector4(386.80877685547,798.63299560547,190.48205566406,178.58267211914),
        marketLocation = vector3(378.42144775391,795.78326416016,190.51021911621),
        marketPedLocation = vector4(378.67251586914,797.67034912109,190.48205566406,184.25196838379),
        clothingLocation = vector3(386.47769165039,794.79089355469,190.49020385742),
    }
}

cfg.pedModels = {
    dropoff = `csb_mweather`,
    gunstore = `s_m_y_blackops_01`,
    market = `s_m_y_blackops_03`,
    clockon = `mp_m_weapexp_01`,
}

cfg.pardonMaximumAmount = 500000
cfg.maxTargetsPerPlayer = 3
cfg.maxVigilantesPerBounty = 3
cfg.jailCountdownMsec = 30000

cfg.levels = {
    {
        minRequired = 0,
        gunPayout = 0,
        circleScale = 1.0,
        payoutPercent = 30,
        weaponGroups = {"vigilanteglock"},
        armourPercent = 50,
    },
    {
        minRequired = 25,
        gunPayout = 0,
        circleScale = 1.0,
        payoutPercent = 40,
        weaponGroups = {"vigilanteglock"},
        armourPercent = 50,
    },
    {
        minRequired = 50,
        gunPayout = 0,
        circleScale = 1.0,
        payoutPercent = 40,
        weaponGroups = {"vigilanteglock", "vigilantesting"},
        armourPercent = 50,
    },
    {
        minRequired = 100,
        gunPayout = 0.01,
        circleScale = 1.0,
        payoutPercent = 40,
        weaponGroups = {"vigilanteglock", "vigilantesting"},
        armourPercent = 75,
    },
    {
        minRequired = 150,
        gunPayout = 0.01,
        circleScale = 1.0,
        payoutPercent = 50,
        weaponGroups = {"vigilanteglock", "vigilantesting"},
        armourPercent = 75,
    },
    {
        minRequired = 200,
        gunPayout = 0.01,
        circleScale = 1.0,
        payoutPercent = 50,
        weaponGroups = {"vigilanteglock", "vigilantesting"},
        armourPercent = 75,
    },
    {
        minRequired = 250,
        gunPayout = 0.01,
        circleScale = 0.9,
        payoutPercent = 50,
        weaponGroups = {"vigilanteglock", "vigilantesting"},
        armourPercent = 75,
    },
    {
        minRequired = 300,
        gunPayout = 0.02,
        circleScale = 0.9,
        payoutPercent = 50,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 75,
    },
    {
        minRequired = 400,
        gunPayout = 0.02,
        circleScale = 0.9,
        payoutPercent = 50,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 500,
        gunPayout = 0.02,
        circleScale = 0.9,
        payoutPercent = 60,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 600,
        gunPayout = 0.02,
        circleScale = 0.8,
        payoutPercent = 60,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 750,
        gunPayout = 0.03,
        circleScale = 0.8,
        payoutPercent = 65,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 800,
        gunPayout = 0.03,
        circleScale = 0.7,
        payoutPercent = 65,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 900,
        gunPayout = 0.03,
        circleScale = 0.7,
        payoutPercent = 65,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16"},
        armourPercent = 100,
    },
    {
        minRequired = 1000,
        gunPayout = 0.04,
        circleScale = 0.7,
        payoutPercent = 65,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
    {
        minRequired = 1500,
        gunPayout = 0.04,
        circleScale = 0.7,
        payoutPercent = 75,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
    {
        minRequired = 2000,
        gunPayout = 0.04,
        circleScale = 0.7,
        payoutPercent = 80,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
    {
        minRequired = 2500,
        gunPayout = 0.04,
        circleScale = 0.6,
        payoutPercent = 80,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
    {
        minRequired = 3000,
        gunPayout = 0.04,
        circleScale = 0.5,
        payoutPercent = 80,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
    {
        minRequired = 4000,
        gunPayout = 0.05,
        circleScale = 0.5,
        payoutPercent = 90,
        weaponGroups = {"vigilanteglock", "vigilantesting", "vigilantespar16", "vigilantemosin"},
        armourPercent = 100,
    },
}

cfg.weaponClassToGroup = {
    ["Pistol"] = "vigilanteglock",
    ["SMG"] = "vigilantesting",
    ["Shotgun"] = "vigilantesting",
    ["AR"] = "vigilantespar16",
    ["Heavy"] = "vigilantemosin",
}

cfg.tagLongIdsDurationMsec = 15000

cfg.statsBoardModel = `v_ilev_mm_screen2`
cfg.statsBoardLocations = {
    vector4(379.64834594727,792.59010009766,187.21862792969,1.41732788086),
    vector4(-809.74945068359,5401.006445312,35.351318359375,180.0)
}

return cfg