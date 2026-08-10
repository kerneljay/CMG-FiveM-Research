--[[
    BEGINNER GUIDE — Arena
    ======================

    File: cmg/prod/cfg/cfg_arena.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Named framework/network events found:
      * HH:MM

    Example player-facing text in this file:
      * You can not wager whilst on duty.
      * You are already in a wager or queue.
      * You are not in the main world.
      * You are too far from the wager hub.
      * You can not afford this wager.

]]
local cfg = {}

-- Physical wager hubs. Each entry is self-describing so new hubs can be added
-- without code changes; cl_arena iterates this list once on start and spawns a
-- marker + blip + area listener per entry. One entry should be default = true
-- (the canonical post-match return point).
cfg.wagerMarkers = {
    {
        id = "gulag",
        label = "Wager Arena",
        coords = vector3(1462.6199951172, 3561.7263183594, 36.537982940674),
        blip = {
            sprite = 313,
            colour = 1,
            scale = 0.8,
            shortRange = true,
            label = "Wager Arena",
        },
        permission = nil,
        spectatorMarkers = {
            vector3(1458.61, 3562.91, 35.58),
            vector3(1457.92, 3539.94, 40.52),
        },
        default = true,
    },
    {
        id = "city",
        label = "Wagers",
        coords = vector3(-323.76626586914, -707.18292236328, 32.909275054932),
        blip = {
            sprite = 313,
            colour = 1,
            scale = 0.8,
            shortRange = true,
            label = "Wagers",
        },
        permission = nil,
    },
    -- {
    --     id = "coast1",
    --     label = "Wagers",
    --     coords = vector3(-2164.45703125, 5116.8198242188, 2.8104600906372),
    --     blip = {
    --         sprite = 313,
    --         colour = 1,
    --         scale = 0.8,
    --         shortRange = true,
    --         label = "Wagers",
    --     },
    --     permission = nil,
    -- },
    {
        id = "coast2",
        label = "Wagers",
        coords = vector3(-2148.4291992188, 5129.6997070312, 2.7999982833862),
        blip = {
            sprite = 313,
            colour = 1,
            scale = 0.8,
            shortRange = true,
            label = "Wagers",
        },
        permission = nil,
    },
    {
        id = "staffisland",
        label = "Wagers",
        coords = vector3(-3748.7434082031, -3561.3505859375, 10.213112831116),
        blip = {
            sprite = 313,
            colour = 1,
            scale = 0.8,
            shortRange = true,
            label = "Wagers",
        },
        permission = nil,
    },
}

cfg.arenaCentre = vector3(1437.67, 3551.63, 36.59)
cfg.betSize = {100000, 100000000}
-- Flat fee charged from each player when a wager starts (on top of stake).
cfg.wagerEntryFee = 10000
-- Minimum account playtime (hours, CMG.getLivePlaytimeFloat) to participate.
cfg.minPlaytimeHours = {
    general = 10,     -- wagers, warmup, ranked queue
    tournament = 100, -- tournament sign-up / team join
}
cfg.roundTime = 5 -- Minutes

-- Per-round 3-2-1-GO countdown. Server round clock offset uses stepMs × 3.
cfg.roundCountdown = {
    stepMs = 600,       -- duration of each 3 / 2 / 1 step
    roundTitleMs = 500, -- ROUND X/Y banner before the numeric countdown
    goDisplayMs = 400,  -- how long GO stays on screen (movement unlocks immediately)
}

-- Delays while the server positions players and applies combat before beginRound.
cfg.roundHandshake = {
    prePositionWaitMs = 200,
    postPositionWaitMs = 100,
}

-- Client-side map load fade when a match first starts.
cfg.prepareMatch = {
    fadeOutMs = 400,
    postFadeOutWaitMs = 350,
    postLoadWaitMs = 150,
}

-- Out-of-bounds on arena MLO maps: same grace + warning flow as minigames.
cfg.arenaOob = {
    graceSeconds = 3,
}

cfg.proximity = 10.0 -- metres a player must be within a hub marker to interact

cfg.elo = {
    startingElo = 1000,
    kFactor = 32,
    minElo = 100,
}
cfg.blipPosition = vector3(1461.3515625, 3561.5368652344, 36.538208007812)
cfg.noGunsArea = vector3(1468.2966308594, 3563.7902832031, 36.555416107178)

cfg.weaponCategory = {
    "Pistol",
    "SMG",
    "Shotguns",
    "Rifles",
    "LMG",
    "Snipers",
    "Wager Specials",
    "1 Tap",
    "Custom Owned",
}

cfg.bestOf = {
    1, 3, 5, 11, 21
}

cfg.readyTimeoutSec = 90 -- kick a roster member who sits unready this long in an otherwise-full lobby
cfg.readyToggleMaxPerMinute = 20 -- anti-grief: ready<->unready flips per player per minute
cfg.teamsRandomiseCooldown = 10 -- seconds between proposer team shuffles
cfg.kickMaxPerMinute = 5 -- per-proposer kick rate limit

cfg.possibleWeapons = {
    ["Pistol"] = {
        "WEAPON_BERETTACMG",
        "WEAPON_M1911CMG",
        "WEAPON_ROOK",
        "WEAPON_PYTHONCMG",
        "WEAPON_TEC9CMG",
        "WEAPON_SOCOMCMG",
        "WEAPON_NBK",
    },
    ["SMG"] = {
        "WEAPON_UMP45CMG",
        "WEAPON_MPX",
    },
    ["Shotguns"] = {
        "WEAPON_WINCHESTER12CMG",
        "WEAPON_SPAZ",
    },
    ["Rifles"] = {
        "WEAPON_AK74CMG",
        "WEAPON_AK74KASHNARCMG",
        "WEAPON_AKMCMG",
        "WEAPON_AKKAL",
        "WEAPON_MK1EMR",
        "WEAPON_MXM",
        "WEAPON_MX",
        "WEAPON_TRG",
        "WEAPON_SPAR16",
    },
    ["LMG"] = {
        "WEAPON_M249CMG",
        "WEAPON_BRUENMK9",
        "WEAPON_BLUELAGOONMG4",
    },
    ["Snipers"] = {
        "WEAPON_MOSINCMG",
        "WEAPON_SVDCMG",
        "WEAPON_MK14",
    },
    -- Wager-only weapons. Stock GTA hashes, never in gunstore/loot. Stripped from
    -- any non-arena player by the sweep in sv_arena (see cfg.wagerExclusiveWeapons).
    ["Wager Specials"] = {
        "WEAPON_REVOLVER_MK2",
        "WEAPON_TECPISTOL",
        "WEAPON_TACTICALRIFLE",
        "WEAPON_MILITARYRIFLE",
        "WEAPON_MINIGUN",
        "WEAPON_ASSAULTSHOTGUN",
        "WEAPON_RAILGUN",
        "WEAPON_RAILGUNXM3",
        "WEAPON_RAYCARBINE",
        "WEAPON_RAYMINIGUN",
        "WEAPON_COMPACTLAUNCHER",
        "WEAPON_GRENADELAUNCHER",
        "WEAPON_RPG",
        "WEAPON_MUSKET",
        "WEAPON_MARKSMANRIFLE_MK2",
        "WEAPON_RAYPISTOL",
        "WEAPON_NAVYREVOLVER",
        "WEAPON_HEAVYRIFLE",
        "WEAPON_COMBATMG_MK2",
    },
    -- Wager-only 1-tap pistols (no recoil / high headshot). CMG custom hashes in
    -- cfg.wagerExclusiveWeapons; stripped outside arena like Wager Specials.
    ["1 Tap"] = {
        "WEAPON_APPISTOLCMG",
        "WEAPON_COMBATPISTOLCMG",
    },
    -- Populated per-player from cmg_weaponownership in sv_arena pushSync.
    ["Custom Owned"] = {},
}

-- Metadata for wager-exclusive weapons. Drives the EXCLUSIVE badge in Create.tsx
-- and the strip-on-cleanup / periodic sweep guards. Add a hash here to make it
-- wager-only with zero code changes elsewhere.
cfg.wagerExclusiveWeapons = {
    [`WEAPON_APPISTOL`] = {
        label = "AP Pistol",
        spawnAmmo = 250,
        iconKey = "ap_pistol",
        clipSize = 18,
    },
    [`WEAPON_REVOLVER_MK2`] = {
        label = "Heavy Revolver Mk II",
        spawnAmmo = 60,
        iconKey = "revolver_mk2",
        clipSize = 6,
    },
    [`WEAPON_TECPISTOL`] = {
        label = "Tactical Pistol",
        spawnAmmo = 250,
        iconKey = "tec_pistol",
        clipSize = 18,
    },
    [`WEAPON_TACTICALRIFLE`] = {
        label = "Service Carbine",
        spawnAmmo = 250,
        iconKey = "tactical_rifle",
        clipSize = 30,
    },
    [`WEAPON_MILITARYRIFLE`] = {
        label = "Military Rifle",
        spawnAmmo = 250,
        iconKey = "military_rifle",
        clipSize = 30,
    },
    [`WEAPON_MINIGUN`] = {
        label = "Minigun",
        spawnAmmo = 1500,
        iconKey = "minigun",
        clipSize = 200,
    },
    [`WEAPON_ASSAULTSHOTGUN`] = {
        label = "Assault Shotgun",
        spawnAmmo = 120,
        iconKey = "assault_shotgun",
        clipSize = 8,
    },
    [`WEAPON_RAILGUN`] = {
        label = "Railgun",
        spawnAmmo = 20,
        iconKey = "railgun",
        clipSize = 1,
    },
    [`WEAPON_RAILGUNXM3`] = {
        label = "Railgun XM3",
        spawnAmmo = 20,
        iconKey = "railgun_xm3",
        clipSize = 1,
    },
    [`WEAPON_RAYCARBINE`] = {
        label = "Unholy Hellbringer",
        spawnAmmo = 800,
        iconKey = "ray_carbine",
        clipSize = 100,
    },
    [`WEAPON_RAYMINIGUN`] = {
        label = "Widowmaker",
        spawnAmmo = 1500,
        iconKey = "ray_minigun",
        clipSize = 100,
    },
    [`WEAPON_COMPACTLAUNCHER`] = {
        label = "Compact Grenade Launcher",
        spawnAmmo = 10,
        iconKey = "compact_launcher",
        clipSize = 1,
    },
    [`WEAPON_GRENADELAUNCHER`] = {
        label = "Grenade Launcher",
        spawnAmmo = 20,
        iconKey = "grenade_launcher",
        clipSize = 10,
    },
    [`WEAPON_RPG`] = {
        label = "RPG",
        spawnAmmo = 10,
        iconKey = "rpg",
        clipSize = 1,
    },
    [`WEAPON_MUSKET`] = {
        label = "Musket",
        spawnAmmo = 20,
        iconKey = "musket",
        clipSize = 1,
    },
    [`WEAPON_MARKSMANRIFLE_MK2`] = {
        label = "Marksman Rifle Mk II",
        spawnAmmo = 250,
        iconKey = "marksman_rifle_mk2",
        clipSize = 8,
    },
    [`WEAPON_RAYPISTOL`] = {
        label = "Up-n-Atomizer",
        spawnAmmo = 250,
        iconKey = "ray_pistol",
        clipSize = 1,
    },
    [`WEAPON_NAVYREVOLVER`] = {
        label = "Navy Revolver",
        spawnAmmo = 60,
        iconKey = "navy_revolver",
        clipSize = 6,
    },
    [`WEAPON_HEAVYRIFLE`] = {
        label = "Heavy Rifle",
        spawnAmmo = 250,
        iconKey = "heavy_rifle",
        clipSize = 30,
    },
    [`WEAPON_COMBATMG_MK2`] = {
        label = "Combat MG Mk II",
        spawnAmmo = 800,
        iconKey = "combat_mg_mk2",
        clipSize = 100,
    },
    [`WEAPON_APPISTOLCMG`] = {
        label = "AP Pistol",
        spawnAmmo = 250,
        iconKey = "ap_pistol",
        clipSize = 18,
    },
    [`WEAPON_COMBATPISTOLCMG`] = {
        label = "Combat Pistol",
        spawnAmmo = 250,
        iconKey = "ap_pistol",
        clipSize = 12,
    },
}

cfg.wagerExclusive = {
    stripOnEnter = true, -- strip any wager-exclusive weapon a player somehow has before loadout
    sweepIntervalMs = 30000, -- periodic strip from non-arena players carrying one
}

-- Default ammo handed out per wager weapon.
cfg.defaultWeaponAmmo = 250

-- AI test wagers: a developer/admin can start a quick 1-vs-N match against
-- client-spawned combat bots to exercise the full match pipeline (combat
-- baseline, weapons, maps, HUD) without needing a second human. No stake, no
-- ELO, no match history is recorded for these.
cfg.aiTest = {
    adminOnly = true,          -- gate behind arena.admin / developer
    maxBots = 3,
    defaultBotCount = 1,
    botModel = `s_m_y_blackops_01`,
    botHealth = 200,           -- ped max health (200 = "full" in GTA terms)
    botArmour = 0,
    botAccuracy = 35,          -- 0-100
    botCombatAbility = 2,      -- 0 poor, 1 average, 2 professional
    botCombatRange = 2,        -- 0 near, 1 medium, 2 far
    botWeaponAmmo = 250,
}

-- Mode registry. modeId -> descriptor. teams = number of distinct teams (0 = FFA
-- style single-pool), respawn = whether players respawn within a round/session,
-- weaponCategory = forced category (nil = proposer choice). roundEnd/loadout are
-- behaviour keys interpreted server-side.
cfg.gameModes = {
    teams = {
        name = "Team Deathmatch",
        teams = 2,
        respawn = false,
        roundEnd = "lastTeamStanding",
        loadout = "single",
        allowsCrouchShoot = true,
        allowsRandomiseTeams = true,
        order = 1,
    },
    ffa = {
        name = "Free For All",
        teams = 0,
        respawn = false,
        roundEnd = "lastAlive",
        loadout = "single",
        allowsCrouchShoot = true,
        mapPool = "ffa", -- FFA picks from cfg.ffaMaps (warmup locations), not arena MLOs
        hidden = true, -- disabled until finished
        order = 2,
    },
    hop_out = {
        name = "Hop Out",
        teams = 0,
        maxPlayers = 2,
        respawn = false,
        roundEnd = "lastAlive",
        loadout = "single",
        allowsCrouchShoot = true,
        worldMode = true, -- played in the open world, not on an arena map
        hidden = true, -- disabled until finished
        order = 3,
    },
    warmup = {
        name = "Warmup",
        teams = 0,
        respawn = true,
        roundEnd = "never",
        loadout = "warmupRandom",
        allowsCrouchShoot = true,
        hidden = true, -- not creatable; players only join the global warmup lobby
        order = 99,
    },
}

-- The list of mode ids a proposer can pick in Create.tsx (excludes hidden modes).
cfg.creatableModes = {
    "teams",
}

-- CS-style top scoreboard defaults.
cfg.scoreboard = {
    defaultShowHp = true,
    hpThrottleHz = 5,
}

-- Teammate nameplates (native MP gamer tags).
cfg.teammateTags = {
    throughWalls = true,
    maxDistance = 50.0,
    fadeStart = 35.0,
    allyColour = 38, -- HUD colour index for allies
}

-- Spectator system.
cfg.spectate = {
    requireDelay = false, -- 30s tape-delay buffer for tournament streams
    delaySeconds = 30,
    recentOpponentBlockSeconds = 300, -- can't spectate someone you fought in the last 5 min
    highStakeAuditAmount = 25000000, -- spectate joins above this stake are audit-logged
    spectateCooldownMs = 5000, -- anti click-spam bucket flapping
    -- Spectator ped is kept this far below the map / target so fighters never see them.
    freeCamMargin = 50.0,
}

-- Always-on FFA warmup lobby: mosin-only, instant random respawns, played in an
-- isolated bucket. The active location rotates between cfg.warmup.locations every
-- cfg.warmup.rotateMinutes; players already in warmup are relocated on a switch.
cfg.warmup = {
    enabled = true,
    bucket = 9999,
    respawnSeconds = 0,        -- 0 = instant respawn on death
    useArmour = true,
    weapon = "WEAPON_MOSINCMG", -- mosins only
    rotateMinutes = 30,         -- swap to the next location every N minutes
    locations = {
        {
            name = "Humane Labs",
            textureName = "humanelabs",
            spawns = {
                vector4(3505.3054199219, 3756.6989746094, 30.07177734375, 161.57479858398),
                vector4(3521.7626953125, 3753.2702636719, 29.886474609375, 167.24407958984),
                vector4(3537.1779785156, 3753.1384277344, 29.920166015625, 167.24407958984),
                vector4(3479.4064941406, 3754.24609375, 32.666625976563, 215.43309020996),
                vector4(3567.4152832031, 3751.701171875, 30.07177734375, 51.023624420166),
                vector4(3424.7736816406, 3756.8835449219, 30.509887695313, 297.63778686523),
                vector4(3417.0856933594, 3663.8505859375, 41.327514648438, 323.14959716797),
                vector4(3466.8132324219, 3636.5671386719, 41.17578125, 345.82678222656),
                vector4(3529.3054199219, 3637.3054199219, 41.462280273438, 345.82678222656),
                vector4(3593.7626953125, 3652.1010742188, 36.946533203125, 76.535430908203),
                vector4(3600.9626464844, 3661.0021972656, 42.591186523438, 130.39370727539),
                vector4(3584.17578125, 3690.7517089844, 40.80517578125, 283.4645690918),
                vector4(3610.1274414063, 3708.7648925781, 35.1435546875, 62.362205505371),
                vector4(3616.1669921875, 3740.28125, 37.418334960938, 147.40158081055),
                vector4(3565.5034179688, 3705.4548339844, 36.626342773438, 337.32284545898),
                vector4(3523.9252929688, 3699.4284667969, 33.8798828125, 351.49606323242),
                vector4(3520.1669921875, 3681.3889160156, 33.8798828125, 167.24407958984),
                vector4(3531.666015625, 3647.7890625, 36.980224609375, 82.204727172852),
                vector4(3533.0505371094, 3713.5649414063, 36.10400390625, 70.866142272949),
                vector4(3466.3779296875, 3743.4592285156, 36.626342773438, 195.5905456543),
            },
        },
        {
            name = "Los Santos Airport",
            textureName = "lsairport",
            spawns = {
                vector4(-966.68572998047, -2937.2307128906, 13.9296875, 161.57479858398),
                vector4(-944.26812744141, -2958.158203125, 13.9296875, 113.38582611084),
                vector4(-928.66815185547, -2975.0637207031, 13.9296875, 113.38582611084),
                vector4(-915.38903808594, -3003.982421875, 13.9296875, 68.031494140625),
                vector4(-934.24615478516, -3034.4965820313, 13.9296875, 19.842519760132),
                vector4(-966.81756591797, -3038.4262695313, 13.9296875, 348.6614074707),
                vector4(-999.42858886719, -3024.6726074219, 13.9296875, 325.98425292969),
                vector4(-1017.9165039063, -2998.3251953125, 13.9296875, 263.6220703125),
                vector4(-1001.6967163086, -2966.3735351563, 13.9296875, 246.61416625977),
                vector4(-982.50988769531, -2876.3999023438, 13.946533203125, 127.55905151367),
                vector4(-1041.9428710938, -2874.8703613281, 13.946533203125, 192.75592041016),
                vector4(-1090.6812744141, -2954.4921875, 13.9296875, 289.13385009766),
                vector4(-1050.6593017578, -3017.0109863281, 13.96337890625, 331.65353393555),
                vector4(-1001.4066162109, -2837.9077148438, 13.946533203125, 167.24407958984),
                vector4(-1091.7890625, -2940.1977539063, 13.9296875, 266.45669555664),
                vector4(-1060.9846191406, -2879.3010253906, 13.96337890625, 192.75592041016),
                vector4(-952.33843994141, -2896.6022949219, 13.946533203125, 90.708656311035),
                vector4(-948.40881347656, -2866.3383789063, 13.946533203125, 127.55905151367),
                vector4(-1131.4549560547, -2951.8286132813, 13.9296875, 272.1259765625),
                vector4(-1091.3670654297, -3020.0043945313, 13.9296875, 320.31497192383),
            },
        },
        {
            name = "Large Arms",
            textureName = "largearms",
            spawns = {
                vector4(-999.87689208984, 4843.6616210938, 278.43811035156, 59.52755355835),
                vector4(-1061.9208984375, 4854.9624023438, 231.71350097656, 28.34645652771),
                vector4(-1105.3055419922, 4872.2768554688, 215.63879394531, 76.535430908203),
                vector4(-1105.6219482422, 4858.03515625, 215.01538085938, 45.354328155518),
                vector4(-1147.8857421875, 4875.1782226563, 211.20727539063, 272.1259765625),
                vector4(-1179.1647949219, 4913.68359375, 219.19409179688, 257.95275878906),
                vector4(-1152.5142822266, 4940.0043945313, 220.45788574219, 189.92126464844),
                vector4(-1142.6900634766, 4967.3671875, 220.98022460938, 263.6220703125),
                vector4(-1068.3692626953, 4973.6572265625, 206.96118164063, 170.07873535156),
                vector4(-1045.6614990234, 4945.4375, 208.24169921875, 124.72441101074),
                vector4(-1035.6131591797, 4907.8813476563, 207.9384765625, 62.362205505371),
                vector4(-1047.0988769531, 4930.0615234375, 208.05639648438, 76.535430908203),
                vector4(-1122.5010986328, 4897.5297851563, 217.34069824219, 45.354328155518),
                vector4(-1116.9626464844, 4942.720703125, 218.72229003906, 175.74803161621),
                vector4(-1143.7186279297, 4911.19140625, 220.96337890625, 308.97637939453),
                vector4(-1135.9252929688, 4967.1430664062, 221.1318359375, 240.94488525391),
                vector4(-1152.3428955078, 4939.9780273438, 220.47473144531, 172.91339111328),
                vector4(-1157.8286132812, 4895.0771484375, 216.83520507812, 17.007873535156),
                vector4(-1120.4044189453, 4895.7099609375, 216.78466796875, 212.59841918945),
                vector4(-1091.5911865234, 4872.9360351562, 216.96997070312, 328.81890869141),
            },
        },
        {
            name = "Strip Club",
            textureName = "stripclub",
            spawns = {
                vector4(97.846160888672, -1269.3099365234, 30.375122070313, 127.55905151367),
                vector4(51.63956451416, -1313.3143310547, 29.229248046875, 269.29135131836),
                vector4(40.272529602051, -1351.5823974609, 29.279907226563, 257.95275878906),
                vector4(65.221977233887, -1387.0021972656, 29.330444335938, 325.98425292969),
                vector4(90.540664672852, -1398.1318359375, 29.1787109375, 294.80316162109),
                vector4(151.09451293945, -1429.4373779297, 29.279907226563, 354.33071899414),
                vector4(213.56044006348, -1406.9538574219, 29.279907226563, 68.031494140625),
                vector4(195.00659179688, -1373.2879638672, 29.279907226563, 68.031494140625),
                vector4(145.92527770996, -1323.8901367188, 29.21240234375, 70.866142272949),
                vector4(139.09451293945, -1344.7648925781, 29.21240234375, 320.31497192383),
                vector4(173.15605163574, -1275.1252441406, 28.993408203125, 116.22047424316),
                vector4(196.43077087402, -1285.0812988281, 29.296752929688, 192.75592041016),
                vector4(98.703300476074, -1277.2219238281, 29.128173828125, 110.55118560791),
                vector4(137.70989990234, -1272.5010986328, 29.195556640625, 221.10237121582),
                vector4(141.20440673828, -1293.4417724609, 29.296752929688, 144.56690979004),
                vector4(162.65934753418, -1305.876953125, 29.347290039063, 65.196853637695),
                vector4(171.01977539063, -1340.9538574219, 29.313598632813, 187.08660888672),
                vector4(110.98021697998, -1339.5164794922, 29.24609375, 8.5039367675781),
                vector4(123.20439910889, -1323.4154052734, 29.330444335938, 328.81890869141),
                vector4(25.872529983521, -1307.2351074219, 29.060791015625, 274.96063232422),
            },
        },
        {
            name = "South LSD",
            textureName = "southlsd",
            spawns = {
                vector4(2533.4504394531, -438.92306518555, 114.0849609375, 28.34645652771),
                vector4(2509.2131347656, -425.06372070313, 118.33117675781, 320.31497192383),
                vector4(2487.876953125, -410.9274597168, 114.0849609375, 14.173228263855),
                vector4(2462.0571289063, -395.24835205078, 109.51867675781, 195.5905456543),
                vector4(2460.8439941406, -370.79998779297, 109.51867675781, 325.98425292969),
                vector4(2489.9340820313, -353.03735351563, 114.06811523438, 124.72441101074),
                vector4(2507.7626953125, -342.71209716797, 118.17944335938, 150.23622131348),
                vector4(2532.5803222656, -329.06372070313, 114.06811523438, 158.74015808105),
                vector4(2500.45703125, -324.81756591797, 92.989013671875, 28.34645652771),
                vector4(2548.0219726563, -324.58020019531, 92.989013671875, 198.42520141602),
                vector4(2575.8989257813, -385.00219726563, 92.989013671875, 76.535430908203),
                vector4(2556.421875, -426.55383300781, 92.989013671875, 22.677164077759),
                vector4(2519.3405761719, -381.00659179688, 92.989013671875, 249.44882202148),
                vector4(2494.4965820313, -395.07690429688, 94.117919921875, 286.29919433594),
                vector4(2502.6594238281, -474.98901367188, 92.989013671875, 17.007873535156),
                vector4(2481.3493652344, -459.89010620117, 92.989013671875, 357.16534423828),
                vector4(2439.982421875, -395.40658569336, 92.989013671875, 280.62991333008),
                vector4(2456.6770019531, -337.21319580078, 92.989013671875, 161.57479858398),
                vector4(2572.45703125, -329.12966918945, 92.989013671875, 158.74015808105),
            },
        },
        {
            name = "James Town",
            textureName = "jamestown",
            spawns = {
                vector4(365.65713500977, -2060.8615722656, 21.528930664063, 48.188972473145),
                vector4(331.92526245117, -2052.7121582031, 20.838134765625, 306.14172363281),
                vector4(302.8483581543, -2012.7824707031, 20.113525390625, 223.93701171875),
                vector4(341.70989990234, -2029.1735839844, 21.933349609375, 127.55905151367),
                vector4(337.85934448242, -2007.2175292969, 22.556762695313, 260.78741455078),
                vector4(384.75164794922, -2027.3538818359, 23.028564453125, 65.196853637695),
                vector4(353.36703491211, -2020.1801757813, 22.405151367188, 325.98425292969),
                vector4(394.74725341797, -2002.6944580078, 23.365600585938, 127.55905151367),
                vector4(362.42639160156, -1971.6658935547, 24.376586914063, 127.55905151367),
                vector4(336.26373291016, -1967.6571044922, 24.376586914063, 124.72441101074),
                vector4(298.8923034668, -1977.6658935547, 22.287231445313, 226.77166748047),
                vector4(275.48571777344, -2007.0725097656, 19.574340820313, 232.44094848633),
                vector4(264.98901367188, -2046.6856689453, 17.720825195313, 328.81890869141),
                vector4(277.56924438477, -2075.0241699219, 16.895263671875, 328.81890869141),
                vector4(308.00439453125, -2104.8000488281, 17.720825195313, 328.81890869141),
                vector4(335.43298339844, -2077.4768066406, 19.99560546875, 79.370079040527),
                vector4(312.18463134766, -2056.8659667969, 20.1640625, 79.370079040527),
                vector4(301.63516235352, -2070.7385253906, 17.90625, 243.77952575684),
                vector4(285.36264038086, -2066.0571289062, 17.687133789062, 323.14959716797),
            },
        },
    },
}

-- FFA maps reuse the warmup locations: open-world patches with a ring of spawn
-- points and no MLO/IPL. FFA only offers these (not the arena MLO maps). Each map
-- is keyed by the warmup location name; add a `textureName` per location once
-- preview images are available.
cfg.ffaMaps = {}
for _, loc in ipairs(cfg.warmup.locations) do
    if loc.name and loc.spawns then
        cfg.ffaMaps[loc.name] = {
            spawnLocations = { loc.spawns }, -- FFA flattens all spawn groups
            maxPlayers = math.max(2, math.min(16, #loc.spawns)),
            hasInteriorCheck = false,
            crouchShootAllowed = true,
            textureName = loc.textureName,
            category = "ffa",
        }
    end
end

-- Ranked matchmaking queue.
cfg.ranked = {
    enabled = true,
    seasonalStake = 250000,
    bestOf = 11,
    startEloWindow = 100,
    widenEloPer30s = 50,
    acceptTimeoutSec = 15,
    allowWagerExclusive = false,
}

-- Tournaments. Single-elimination 1v1 brackets that players sign up for ahead of
-- time; at the scheduled start the server seeds everyone into a bracket and runs
-- it round-by-round with a per-match ready-up phase.
cfg.tournament = {
    -- Prize pool split for the top finishers (winner, runner-up, ...). Indexes
    -- past the number of paid places are ignored. For team tournaments each
    -- place's share is split equally between that team's members.
    prizeSplit = { 0.70, 0.30 },
    -- Default sign-up fee for scheduled and admin-created cups (unless overridden).
    entryFee = 100000,
    -- Admin custom cups: spawned prize pool cap (superadmin only).
    maxManualPrizePool = 1000000000,
    -- How long each pairing has to ready up before non-ready players forfeit.
    readyTimeoutSec = 60,
    -- Players per team per bracket slot. 1 = classic 1v1. 2..6 = NvN team play;
    -- teams are pre-made in the sign-up phase (a captain invites teammates) and
    -- every player on both sides must ready up before their match runs.
    teamSize = 1,
    maxTeamSize = 6,
    -- Minimum full teams required to start (applies to 1v1 and NvN). 1v1 needs 4
    -- players; 2v2 needs 8 players (4 teams), etc. No upper cap on sign-ups.
    minTeams = 4,
    -- How long before start that signups open (minutes), default for entries.
    signupLeadMins = 120,
    -- Server chat reminder this many minutes before start (signup phase).
    signupStartReminderMins = 10,
    -- HUD timer bar for signed-up players in the final N seconds before start.
    startCountdownSec = 300,
    -- Admin ad-hoc tournaments: signup window length (minutes) when an admin
    -- opens one on the fly.
    adminSignupMins = 1,
    -- How often the scheduler/ready-timeout sweep runs (ms).
    tickIntervalMs = 5000,
    -- When a round opens, ready-up notifications are sent in batches so a large
    -- bracket (e.g. 64 players / 32 R1 matches) does not spike the server.
    readyNotifyBatchSize = 4,
    readyNotifyBatchDelayMs = 250,
    -- Coalesce rapid tournament DB writes / UI broadcasts (ready clicks, signups).
    persistDebounceMs = 500,
    broadcastDebounceMs = 300,
    -- Run the minigame stadium podium scene for finalists after the grand final.
    podiumCelebration = true,
    podiumDurationMs = 16000,
    bestOf = 11,
    useArmour = true,
    disableCoverPeek = true,
}

-- Daily scheduled tournaments. Times are UK wall-clock (GMT/BST) "HH:MM" and
-- recur every day. Each entry can override weapon/map/stake/bracket bounds.
cfg.tournamentSchedule = {
    -- {
    --     scheduleId = "daily_1400_mosin_1v1",
    --     name = "1v1 Mosin",
    --     times = { "14:00" },
    --     weaponCategory = "Snipers",
    --     weaponId = "WEAPON_MOSINCMG",
    --     map = nil,
    --     bestOf = 11,
    --     teamSize = 1,
    -- },
    -- {
    --     scheduleId = "daily_1500_ar_2v2",
    --     name = "2v2 AR",
    --     times = { "15:00" },
    --     weaponCategory = "Rifles",
    --     weaponId = "WEAPON_SPAR16",
    --     map = nil,
    --     bestOf = 11,
    --     teamSize = 2,
    -- },
    {
        scheduleId = "daily_1600_mosin_2v2",
        name = "2v2 Mosin",
        times = { "17:00" },
        weaponCategory = "Snipers",
        weaponId = "WEAPON_MOSINCMG",
        map = nil,
        bestOf = 11,
        teamSize = 2,
    },
    {
        scheduleId = "daily_1800_ap_pistol_2v2",
        name = "2v2 AP Pistol",
        times = { "18:00" },
        weaponCategory = "1 Tap",
        weaponId = "WEAPON_APPISTOLCMG",
        map = nil,
        bestOf = 11,
        teamSize = 2,
    },
    {
        scheduleId = "daily_1900_mosin_1v1",
        name = "1v1 Mosin",
        times = { "19:00" },
        weaponCategory = "Snipers",
        weaponId = "WEAPON_MOSINCMG",
        map = nil,
        bestOf = 11,
        teamSize = 1,
    },
    {
        scheduleId = "daily_2000_mosin_6v6",
        name = "6v6 Mosin",
        times = { "20:00" },
        weaponCategory = "Snipers",
        weaponId = "WEAPON_MOSINCMG",
        map = nil,
        bestOf = 11,
        teamSize = 6,
    },
    {
        scheduleId = "daily_2100_ar_2v2",
        name = "2v2 AR",
        times = { "21:00" },
        weaponCategory = "Rifles",
        weaponId = "WEAPON_SPAR16",
        map = nil,
        bestOf = 11,
        teamSize = 3,
    },
    {
        scheduleId = "daily_2200_mosin_2v2",
        name = "2v2 Mosin",
        times = { "22:00" },
        weaponCategory = "Snipers",
        weaponId = "WEAPON_MOSINCMG",
        map = nil,
        bestOf = 11,
        teamSize = 2,
    },
    -- {
    --     scheduleId = "daily_2300_pistol_1v1",
    --     name = "1v1 Pistol",
    --     times = { "23:00" },
    --     weaponCategory = "1 Tap",
    --     weaponId = "WEAPON_COMBATPISTOLCMG",
    --     map = nil,
    --     bestOf = 11,
    --     teamSize = 1,
    -- },
    -- {
    --     scheduleId = "daily_0000_mosin_1v1",
    --     name = "1v1 Mosin",
    --     times = { "00:00" },
    --     weaponCategory = "Snipers",
    --     weaponId = "WEAPON_MOSINCMG",
    --     map = nil,
    --     bestOf = 11,
    --     teamSize = 1,
    -- },
}

-- Hop-out world regions (large rectangular bounds). Server picks the spawn pair
-- and drift waypoints inside the chosen region.
cfg.hopOut = {
    circleRadius = 250.0,
    driftSpeed = 18.0, -- m/s
    minOverlapTime = 90, -- seconds until circles first overlap (approximate)
    overlapCloseSeconds = 60, -- after overlap, circles drift apart for this long
    oobDamagePerSecond = 5,
    oobGraceSeconds = 3,
    allowDriveby = true,
    regionForfeitSeconds = 15, -- leaving the whole region this long forfeits
    mustEngageSeconds = 30, -- staying in-car this long forces incremental damage
    vehiclePools = {
        sports = { "elegy2", "sultanrs", "comet2" },
        motorbikes = { "bati", "akuma", "hakuchou" },
        supers = { "adder", "t20", "zentorno" },
        muscle = { "dominator", "gauntlet", "sabregt" },
    },
    defaultVehiclePool = "sports",
    regions = {
        { id = "paleto", label = "Paleto Loop", bounds = { vector3(-1000.0, 5500.0, 0.0), vector3(1000.0, 7000.0, 400.0) } },
        { id = "vinewood", label = "Vinewood Hills", bounds = { vector3(-500.0, 0.0, 0.0), vector3(1500.0, 1500.0, 400.0) } },
        { id = "vespucci", label = "LSIA + Vespucci", bounds = { vector3(-1700.0, -3300.0, 0.0), vector3(-700.0, -800.0, 400.0) } },
        { id = "grapeseed", label = "Grapeseed Fields", bounds = { vector3(1500.0, 4000.0, 0.0), vector3(3000.0, 5500.0, 400.0) } },
    },
}

-- Hop-out maps. These are NOT arena MLOs: they are open patches of the normal
-- GTA world. Each map has two spawn points at opposite ends and a vehicle that
-- is spawned for each fighter at their spawn. Players drive out, find each
-- other, hop out and fight on foot (last alive wins, like the other FFA modes).
-- worldMode maps carry no IPLs/props; the client ground-snaps the spawned car.
cfg.hopOutMaps = {
    ["Sandy Shores Airfield"] = {
        worldMode = true,
        vehicle = "elegy2",
        spawnLocations = {
            { vector4(1700.0, 3290.0, 41.2, 200.0) },
            { vector4(1267.0, 3210.0, 40.4, 25.0) },
        },
    },
    ["LSIA Runway"] = {
        worldMode = true,
        vehicle = "elegy2",
        spawnLocations = {
            { vector4(-1336.0, -3044.0, 13.9, 60.0) },
            { vector4(-1652.0, -2790.0, 13.9, 240.0) },
        },
    },
    ["Grapeseed Fields"] = {
        worldMode = true,
        vehicle = "sandking",
        spawnLocations = {
            { vector4(2480.0, 4940.0, 45.2, 200.0) },
            { vector4(2180.0, 4760.0, 40.5, 20.0) },
        },
    },
}

cfg.doorCoords = {
    vector3(1417.226, 3542.841, 36.66679),
    vector3(1416.291, 3545.271, 36.66896),
    vector3(1458.539, 3558.665, 36.66198),
    vector3(1457.612, 3561.073, 36.66402)
}

cfg.maps = {
    ["Gulag"] = {
        spawnLocations = {
            {
                vector4(1458.61,3552.97,36.52,85.03),
                vector4(1453.67,3564.69,36.54,136.06)
            },
            {
                vector4(1416.63,3550.54,36.54,289.13),
                vector4(1421.55,3538.74,36.52,308.97)
            }
        },
        maxPlayers = 4,
        hasInteriorCheck = true,
        bounds = {vector3(1378.783447, 3498.166016, 24.345850), vector3(1508.609985, 3602.969971, 76.520004)},
        textureName = "gulag"
    },
    -- ["Nuketown"] = {
    --     spawnLocations = {
    --         {
    --             vector4(2388.3823242188,3273.6000976562,92.348754882812,243.77952575684),
    --             vector4(2386.6945800781,3265.1999511719,92.348754882812,249.44882202148)
    --         },
    --         {
    --             vector4(2461.1735839844,3260.17578125,92.348754882812,104.88188934326),
    --             vector4(2457.71875,3270.5803222656,92.331909179688,102.04724884033)
    --         }
    --     },
    --     ipls = {
    --         "nuketown"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {vector3(2476.013428, 3288.685791, 82.433319), vector3(2366.694336, 3231.952637, 101.597427)},
    --     textureName = "nuketown"
    -- },
    -- ["Shipment"] = {
    --     spawnLocations = {
    --         {
    --             vector4(919.16046142578,-3489.5869140625,17.131103515625,243.77952575684),
    --             vector4(923.73626708984,-3485.0373535156,17.131103515625,229.60629272461)
    --         },
    --         {
    --             vector4(946.0615234375,-3516.9890136719,17.131103515625,36.850395202637),
    --             vector4(951.78460693359,-3513.3493652344,17.131103515625,39.685039520264)
    --         }
    --     },
    --     ipls = {
    --         "shipment"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {vector3(955.946411, -3521.772217, 31.374430), vector3(917.787109, -3481.791016, 13.446102)},
    --     textureName = "shipmentmap"
    -- },
    ["Sky Skate Park"] = {
        spawnLocations = {
            {
                vector4(-2108.6901855469,-1775.1032714844,640.91137695312,266.45669555664),
                vector4(-2116.0615234375,-1805.6571044922,645.91577148438,269.29135131836),
                vector4(-2112.8967285156,-1771.6878662109,651.12231445312,274.96063232422),
                vector4(-2116.1538085938,-1805.5648193359,655.92456054688,266.45669555664)
            },
            {
                vector4(-2084.228515625,-1775.0109863281,640.91137695312,90.708656311035),
                vector4(-2091.2175292969,-1806.3956298828,645.91577148438,96.377944946289),
                vector4(-2088.474609375,-1772.1362304688,651.12231445312,87.874015808105),
                vector4(-2091.2043457031,-1805.947265625,655.92456054688,90.708656311035)
            }
        },
        ipls = {
            "chris_airskate1"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-2158.690186, -1825.103271, 630.911377), vector3(-2058.690186, -1725.103271, 680.911377)},
        category = "skate",
        tags = { "skate", "verticality" },
        movement = {
            disableSlopeSliding = true,
            pedConfigFlag427 = false,
            oobTeleportPoint = vector3(-2108.69, -1775.10, 640.91),
        },
        textureName = "skyskatepark",
    },
    ["Blocks"] = {
        spawnLocations = {
            {
                vector4(-2373.6264648438,-1150.3385009766,328.65051269531,272.1259765625),
                vector4(-2372.6374511719,-1158.1977539062,328.65051269531,269.29135131836)
            },
            {
                vector4(-2347.4899902344,-1158.3165283203,328.65051269531,85.039367675781),
                vector4(-2347.5166015625,-1150.4176025391,328.65051269531,87.874015808105)
            }
        },
        ipls = {
            "chris_lego"
        },
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-2423.626465, -1200.338501, 318.650513), vector3(-2323.626465, -1100.338501, 368.650513)},
        textureName = "blocks"
    },
    ["Neon 4"] = {
        spawnLocations = {
            {
                vector4(-3167.3801269531,-480.73846435547,318.87768554688,87.874015808105),
                vector4(-3167.0241699219,-477.44177246094,318.87768554688,85.039367675781),
                vector4(-3166.9318847656,-473.40658569336,318.87768554688,56.69291305542),
                vector4(-3166.1142578125,-469.50329589844,318.87768554688,76.535430908203)
            },
            {
                vector4(-3243.2043457031,-479.76263427734,318.87768554688,272.1259765625),
                vector4(-3242.28125,-477.11209106445,318.87768554688,303.30709838867),
                vector4(-3242.3603515625,-473.93405151367,318.87768554688,331.65353393555),
                vector4(-3242.2021484375,-470.66372680664,318.87768554688,272.1259765625)
            }
        },
        ipls = {
            "chris_neon4"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-3256.729004, -522.244934, 302.260101), vector3(-3117.380127, -430.738464, 358.877686)},
        textureName = "neon4"
    },
    ["Craft"] = {
        spawnLocations = {
            {
                vector4(-1935.4022216797,-1504.3516845703,321.05126953125,90.708656311035),
                vector4(-1928.4527587891,-1494.2637939453,321.05126953125,90.708656311035),
                vector4(-1929.0197753906,-1513.3714599609,321.05126953125,90.708656311035)
            },
            {
                vector4(-1965.1120605469,-1502.7956542969,321.05126953125,272.1259765625),
                vector4(-1972.2197265625,-1512.9099121094,321.05126953125,272.1259765625),
                vector4(-1972.4703369141,-1493.841796875,321.05126953125,269.29135131836)
            }
        },
        ipls = {
             "chris_minecraftpvp"
        },
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(-1985.402222, -1554.351685, 311.051270), vector3(-1885.402222, -1454.351685, 361.051270)},
        textureName = "craft"
    },
    ["Neon 3"] = {
        spawnLocations = {
            {
                vector4(-2221.4108886719,-2360.0043945312,500.72094726562,272.1259765625),
                vector4(-2220.9626464844,-2363.2878417969,500.72094726562,269.29135131836),
                vector4(-2220.7253417969,-2367.0197753906,500.72094726562,266.45669555664),
                vector4(-2220.8176269531,-2370.7912597656,500.72094726562,232.44094848633)
            },
            {
                vector4(-2130.9758300781,-2373.3361816406,500.72094726562,85.039367675781),
                vector4(-2130.4877929688,-2370.3559570312,500.72094726562,87.874015808105),
                vector4(-2129.525390625,-2366.8747558594,500.72094726562,85.039367675781),
                vector4(-2129.4987792969,-2361.8110351562,500.72094726562,85.039367675781)
            }
        },
        ipls = {
            "chris_neon3"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-2271.410889, -2410.004395, 490.720947), vector3(-2109.089355, -2291.079102, 532.012268)},
        textureName = "neon3"
    },
    ["Arena 2"] = {
        spawnLocations = {
            {
                vector4(5302.5888671875,-1045.2263183594,355.20581054688,192.75592041016),
                vector4(5323.1079101562,-1042.6285400391,355.20581054688,181.41732788086),
                vector4(5338.6020507812,-1043.2747802734,355.20581054688,189.92126464844),
                vector4(5358.6459960938,-1044.3428955078,355.20581054688,181.41732788086),
                vector4(5378.7954101562,-1043.0505371094,355.20581054688,181.41732788086),
                vector4(5407.2265625,-1042.7208251953,355.20581054688,172.91339111328)
            },
            {
                vector4(5422.0087890625,-1175.1691894531,355.20581054688,2.8346455097198),
                vector4(5399.2485351562,-1178.2681884766,355.20581054688,2.8346455097198),
                vector4(5380.5229492188,-1178.4263916016,355.20581054688,351.49606323242),
                vector4(5364.263671875,-1177.7802734375,355.20581054688,357.16534423828),
                vector4(5348.9272460938,-1178.6505126953,355.20581054688,8.5039367675781),
                vector4(5319.8505859375,-1176.9494628906,355.20581054688,5.6692910194397)
            }
        },
        ipls = {
            "arena"
        },
        maxPlayers = 12,
        hasInteriorCheck = false,
        bounds = {vector3(5248.713379, -1191.138794, 343.513489), vector3(5454.269531, -1032.406250, 419.225525)},
        textureName = "arena2"
    },
    ["Arena 3"] = {
        spawnLocations = {
            {
                vector4(3988.5100097656,18.804397583008,195.99194335938,272.1259765625),
                vector4(3988.8000488281,-5.3010940551758,195.99194335938,274.96063232422),
                vector4(3988.2856445312,-24.382415771484,195.99194335938,272.1259765625)
            },
            {
                vector4(4118.2680664062,-25.648349761963,195.99194335938,87.874015808105),
                vector4(4118.1362304688,-3.5868072509766,195.99194335938,90.708656311035),
                vector4(4118.650390625,17.749452590942,195.99194335938,87.874015808105)
            }
        },
        ipls = {
            "arena3_chris"
        },
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(3938.510010, -31.195602, 185.991943), vector3(4135.729980, 36.873962, 249.880478)},
        textureName = "arena3"
    },
    -- ["Arena 4"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-96.421974182129,-4340.1098632812,191.49304199219,85.039367675781),
    --             vector4(-96.435165405273,-4355.630859375,191.49304199219,85.039367675781)
    --         },
    --         {
    --             vector4(-197.74945068359,-4355.8813476562,191.49304199219,266.45669555664),
    --             vector4(-197.76263427734,-4339.9516601562,191.49304199219,255.11810302734)
    --         }
    --     },
    --     ipls = {
    --         "arena4_chris"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "arena4",
    -- },
    ["Neon 2"] = {
        spawnLocations = {
            {
                vector4(-185.94725036621,-3403.0681152344,558.4482421875,87.874015808105),
                vector4(-185.70988464355,-3399.3625488281,558.4482421875,87.874015808105),
                vector4(-186.0,-3396.2768554688,558.4482421875,82.204727172852),
                vector4(-185.6703338623,-3392.2416992188,558.4482421875,85.039367675781)
            },
            {
                vector4(-276.84396362305,-3391.5166015625,558.4482421875,269.29135131836),
                vector4(-276.89669799805,-3395.1296386719,558.4482421875,269.29135131836),
                vector4(-276.8835144043,-3398.8220214844,558.4482421875,266.45669555664),
                vector4(-276.96264648438,-3402.8439941406,558.4482421875,272.1259765625)
            }
        },
        ipls = {
            "chris_neon2"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-313.963776, -3461.616943, 544.605103), vector3(-135.947250, -3353.068115, 598.448242)},
        textureName = "neon2"
    },
    ["Neon 1"] = {
        spawnLocations = {
            {
                vector4(-2404.8395996094,-1787.6702880859,100.35241699219,93.543304443359),
                vector4(-2409.8110351562,-1831.5032958984,100.35241699219,110.55118560791)
            },
            {
                vector4(-2481.2966308594,-1825.9384765625,100.35241699219,274.96063232422),
                vector4(-2476.7473144531,-1784.4923095703,100.35241699219,280.62991333008)
            }
        },
        ipls = {
            "chris_neon"
        },
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-2519.300049, -1864.892944, 75.609909), vector3(-2354.839600, -1737.670288, 140.352417)},
        textureName = "neon1"
    },
    ["Helizone 1"] = {
        spawnLocations = {
            {
                vector4(1804.7604980469,-3099.5737304688,397.71801757812,215.43309020996),
                vector4(1802.4923095703,-3100.6022949219,397.71801757812,212.59841918945),
                vector4(1800.4747314453,-3102.0659179688,397.71801757812,198.42520141602),
                vector4(1797.5472412109,-3104.0703125,397.71801757812,204.09449768066),
                vector4(1866.1186523438,-3108.3295898438,397.71801757812,136.06298828125),
                vector4(1864.2857666016,-3105.82421875,397.71801757812,133.22833251953),
                vector4(1862.0834960938,-3104.0703125,397.71801757812,130.39370727539),
                vector4(1859.5252685547,-3102.1977539062,397.71801757812,133.22833251953)
            },
            {
                vector4(1854.3560791016,-3191.3273925781,397.71801757812,36.850395202637),
                vector4(1857.5076904297,-3189.8374023438,397.71801757812,17.007873535156),
                vector4(1860.3428955078,-3187.6352539062,397.71801757812,28.34645652771),
                vector4(1862.7429199219,-3186.0263671875,397.71801757812,34.015747070312),
                vector4(1805.3538818359,-3193.4504394531,397.71801757812,314.64566040039),
                vector4(1802.4659423828,-3190.9055175781,397.71801757812,323.14959716797),
                vector4(1800.10546875,-3188.9538574219,397.71801757812,14.173228263855),
                vector4(1797.2043457031,-3186.2504882812,397.71801757812,323.14959716797)
            },
        },
        ipls = {
            "helizone1"
        },
        maxPlayers = 16,
        hasInteriorCheck = false,
        bounds = {vector3(1752.048462, -3227.971436, 383.555176), vector3(1904.754517, -3022.512207, 422.017456)},
        textureName = "helizone1"
    },
    -- ["Dust"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-3180.0922851562,-331.00219726562,556.52758789062,178.58267211914)
    --         },
    --         {
    --             vector4(-3180.8703613281,-365.22198486328,556.52758789062,0.0)
    --         }
    --     },
    --     ipls = {
    --         "chris_dust_arena"
    --     },
    --     maxPlayers = 2,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "dustmap"
    -- },
    -- ["Skate Park"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2571.6396484375,-2187.5341796875,1271.6337890625,178.58267211914),
    --             vector4(-2574.9362792969,-2187.3098144531,1271.6337890625,181.41732788086)
    --         },
    --         {
    --             vector4(-2613.0593261719,-2272.8264160156,1267.6403808594,317.48031616211),
    --             vector4(-2610.6066894531,-2275.2790527346,1267.6403808594,317.48031616211)
    --         }
    --     },
    --     ipls = {
    --         "chris_skatepark"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     category = "skate",
    --     tags = { "skate", "verticality" },
    --     movement = {
    --         disableSlopeSliding = true,
    --         pedConfigFlag427 = false,
    --         oobTeleportPoint = vector3(-2571.64, -2187.53, 1271.63),
    --     },
    --     textureName = "skatepark",
    -- },
    ["Goddess"] = {
        spawnLocations = {
            {
                vector4(-3530.5583496094,1363.75390625,310.35168457031,87.874015808105),
                vector4(-3531.1911621094,1358.9274902344,310.35168457031,87.874015808105)
            },
            {
                vector4(-3558.7517089844,1358.6373291016,310.35168457031,272.1259765625),
                vector4(-3558.6066894531,1363.2659912109,310.35168457031,272.1259765625)
            }
        },
        ipls = {
            "chris_csspy"
        },
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-3580.558350, 1313.753906, 300.351685), vector3(-3480.558350, 1413.753906, 350.351685)},
        textureName = "godness"
    },
    -- ["Sky Skate 2"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-3353.5913085938,-863.53845214844,99.728881835938,0.0),
    --             vector4(-3309.9296875,-814.91870117188,99.695190429688,87.874015808105)
    --         },
    --         {
    --             vector4(-3395.1428222656,-814.69451904297,99.695190429688,272.1259765625),
    --             vector4(-3353.3669433594,-767.47253417969,99.7626953125,181.41732788086)
    --         }
    --     },
    --     ipls = {
    --         "chris_airskate2"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     category = "skate",
    --     tags = { "skate", "verticality" },
    --     movement = {
    --         disableSlopeSliding = true,
    --         pedConfigFlag427 = false,
    --         oobTeleportPoint = vector3(-3353.59, -863.54, 99.73),
    --     },
    --     textureName = "skyskate2",
    -- },
    -- ["Sky Skate 3"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2913.4548339844,-1011.8768920898,100.99267578125,175.74803161621)
    --         },
    --         {
    --             vector4(-2913.4812011719,-1061.0109863281,100.99267578125,348.6614074707)
    --         }
    --     },
    --     ipls = {
    --         "chris_airskate3"
    --     },
    --     maxPlayers = 2,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     category = "skate",
    --     tags = { "skate", "verticality" },
    --     movement = {
    --         disableSlopeSliding = true,
    --         pedConfigFlag427 = false,
    --         oobTeleportPoint = vector3(-2913.45, -1011.88, 100.99),
    --     },
    --     textureName = "skyskate3",
    -- },
    -- ["Arena 5"] = {
    --     spawnLocations = {
    --         {
    --             vector4(4249.1079101562,1480.4044189453,679.80078125,272.1259765625),
    --             vector4(4253.4858398438,1465.912109375,679.80078125,277.79528808594)
    --         },
    --         {
    --             vector4(4298.4790039062,1452.6461181641,679.80078125,68.031494140625),
    --             vector4(4301.4858398438,1460.7824707031,679.63232421875,65.196853637695)
    --         }
    --     },
    --     ipls = {
    --         "mafiapvp10v10arena"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "arena5"
    -- },
    -- ["Arena 6"] = {
    --     spawnLocations = {
    --         {
    --             vector4(4037.4990234375,1344.8967285156,679.63232421875,127.55905151367),
    --             vector4(4042.2329101562,1283.1164550781,679.63232421875,45.354328155518)
    --         },
    --         {
    --             vector4(3985.6352539062,1279.5296630859,679.63232421875,297.63778686523),
    --             vector4(3984.3427734375,1341.7186279297,679.63232421875,274.96063232422)
    --         }
    --     },
    --     ipls = {
    --         "mafiapvp11arena"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "arena6"
    -- },
    -- ["Legion Square"] = {
    --     spawnLocations = {
    --         {
    --             vector4(161.18241882324,-975.12524414062,30.088623046875,320.31497192383),
    --             vector4(173.39340209961,-987.83734130859,30.088623046875,306.14172363281),
    --             vector4(200.5714263916,-993.9296875,30.088623046875,348.6614074707),
    --             vector4(142.91868591309,-969.20440673828,29.515747070312,297.63778686523)
    --         },
    --         {
    --             vector4(256.20660400391,-884.08349609375,29.431518554688,144.56690979004),
    --             vector4(220.98461914062,-862.61535644531,30.290893554688,158.74015808105),
    --             vector4(204.93626403809,-854.40002441406,30.543579101562,130.39370727539),
    --             vector4(188.05714416504,-858.43518066406,31.537719726562,155.90550231934)
    --         }
    --     },
    --     ipls = {},
    --     maxPlayers = 8,
    --     hasInteriorCheck = false,
    --     bounds = {}
    -- },
    -- ["Prison"] = {
    --     spawnLocations = {
    --         {
    --             vector4(1644.0922851562,2546.28125,45.556762695312,232.44094848633),
    --             vector4(1648.1010742188,2550.9362792969,45.556762695312,229.60629272461),
    --             vector4(1648.4307861328,2546.7561035156,45.556762695312,232.44094848633)
    --         },
    --         {
    --             vector4(1736.7427978516,2514.6330566406,45.556762695312,31.181102752686),
    --             vector4(1733.2482910156,2513.0637207031,45.556762695312,34.015747070312),
    --             vector4(1735.3055419922,2516.9143066406,45.556762695312,22.677164077759)
    --         }
    --     },
    --     ipls = {},
    --     maxPlayers = 6,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "prison"
    -- },
    -- ["Arena Roof"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-362.41317749023,-1936.5889892578,59.89599609375,226.77166748047)
    --         },
    --         {
    --             vector4(-286.78680419922,-2000.228515625,59.9970703125,45.354328155518)
    --         }
    --     },
    --     ipls = {},
    --     maxPlayers = 2,
    --     hasInteriorCheck = false,
    --     bounds = {}
    -- },
    ["Large Arms"] = {
        spawnLocations = {
            {
                vector4(-1169.8681640625,4892.650390625,215.67248535156,334.48818969727),
                vector4(-1153.7802734375,4886.7954101562,214.81323242188,328.81890869141),
                vector4(-1138.2329101562,4880.8745117188,213.95385742188,337.32284545898),
                vector4(-1106.9538574219,4865.4067382812,215.25134277344,342.99212646484)
            },
            {
                vector4(-1134.9230957031,4968.3559570312,220.794921875,161.57479858398),
                vector4(-1102.9187011719,4962.6591796875,218.40222167969,155.90550231934),
                vector4(-1096.5626220703,4960.1801757812,217.47546386719,155.90550231934),
                vector4(-1077.9165039062,4957.5561523438,214.00439453125,167.24407958984)
            }
        },
        ipls = {},
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-1219.868164, 4842.650391, 205.672485), vector3(-940.183655, 4989.898926, 306.136810)},
        textureName = "laragearms"
    },
    ["LSD North"] = {
        spawnLocations = {
            {
                vector4(1292.5318603516,4325.630859375,38.429321289062,291.96850585938),
                vector4(1291.4637451172,4328.0571289062,38.412475585938,308.97637939453),
                vector4(1290.3824462891,4331.5913085938,38.446166992188,283.4645690918),
                vector4(1290.5802001953,4336.7470703125,38.800048828125,266.45669555664)
            },
            {
                vector4(1383.6395263672,4376.0439453125,43.619018554688,110.55118560791),
                vector4(1384.5758056641,4372.984375,43.501098632812,85.039367675781),
                vector4(1385.4725341797,4369.7143554688,43.467407226562,195.5905456543),
                vector4(1386.3165283203,4366.8657226562,43.113525390625,119.0551071167)
            }
        },
        ipls = {},
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(1242.531860, 4275.630859, 28.429321), vector3(1442.671021, 4435.236816, 81.830246)},
        textureName = "lsdnorth"
    },
    ["LSD South"] = {
        spawnLocations = {
            {
                vector4(2490.1318359375,-362.96704101562,114.0849609375,317.48031616211),
                vector4(2488.6286621094,-348.0,114.0849609375,320.31497192383),
                vector4(2504.5451660156,-364.0615234375,114.0849609375,314.64566040039)
            },
            {
                vector4(2531.9604492188,-320.49230957031,114.06811523438,133.22833251953),
                vector4(2533.4636230469,-335.02416992188,114.06811523438,133.22833251953),
                vector4(2516.8220214844,-319.1604309082,114.06811523438,133.22833251953)
            }
        },
        ipls = {},
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(2414.589111, -510.834900, 62.319542), vector3(2626.317383, -229.424805, 134.375061)},
        textureName = "lsdsouthrooftop"
    },
    ["Coke"] = {
        spawnLocations = {
            {
                vector4(146.04396057129,-1277.841796875,28.993408203125,161.57479858398),
                vector4(148.37802124023,-1281.7978515625,28.993408203125,161.57479858398),
                vector4(149.49890136719,-1286.6636962891,29.07763671875,150.23622131348)
            },
            {
                vector4(147.41539001465,-1333.3055419922,29.195556640625,354.33071899414),
                vector4(143.1428527832,-1329.5340576172,29.195556640625,351.49606323242),
                vector4(138.64614868164,-1326.0263671875,29.195556640625,340.15747070312)
            }
        },
        ipls = {},
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(102.843018, -1378.164429, 12.098373), vector3(196.043961, -1227.841797, 68.993408)},
        textureName = "cocainemap"
    },
    ["Rebel"] = {
        spawnLocations = {
            {
                vector4(1552.140625,6319.6088867188,24.0732421875,68.031494140625),
                vector4(1555.3319091797,6328.4174804688,23.989013671875,65.196853637695),
                vector4(1553.9208984375,6337.2661132812,23.685668945312,59.52755355835),
                vector4(1531.5692138672,6315.3100585938,24.0732421875,65.196853637695)
            },
            {
                vector4(1420.8791503906,6358.1669921875,23.97216796875,257.95275878906),
                vector4(1424.9406738281,6347.3935546875,23.97216796875,277.79528808594),
                vector4(1427.1296386719,6337.5034179688,23.989013671875,269.29135131836),
                vector4(1431.982421875,6325.3056640625,24.0732421875,277.79528808594)
            }
        },
        ipls = {},
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(1422.515137, 6288.436035, 6.202682), vector3(1602.140625, 6369.608887, 64.073242)},
        textureName = "rebelmap"
    },
    ["Back Garages"] = {
        spawnLocations = {
            {
                vector4(3620.3076171875,3729.3361816406,28.673217773438,141.7322845459),
                vector4(3614.4526367188,3734.3603515625,28.673217773438,150.23622131348),
                vector4(3610.9978027344,3736.4965820312,28.673217773438,155.90550231934)
            },
            {
                vector4(3598.8659667969,3711.3098144531,29.684204101562,266.45669555664),
                vector4(3598.6022949219,3709.0417480469,29.684204101562,260.78741455078),
                vector4(3598.4174804688,3706.8132324219,29.684204101562,260.78741455078)
            }
        },
        ipls = {},
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(3570.307617, 3679.336182, 18.673218), vector3(3670.307617, 3779.336182, 68.673218)},
        textureName = "backgarages"
    },
    ["Heroin"] = {
        spawnLocations = {
            {
                vector4(3524.4921875,3658.8923339844,33.8798828125,354.33071899414),
                vector4(3527.5517578125,3658.3383789062,33.8798828125,351.49606323242),
                vector4(3530.17578125,3657.7319335938,33.8798828125,351.49606323242),
                vector4(3533.0637207031,3657.0461425781,33.8798828125,351.49606323242),
                vector4(3536.3076171875,3656.5451660156,33.8798828125,354.33071899414),
                vector4(3539.1955566406,3656.3076171875,33.8798828125,357.16534423828),
                vector4(3541.54296875,3655.9384765625,33.8798828125,348.6614074707),
                vector4(3544.1669921875,3655.54296875,33.8798828125,345.82678222656),
            },
            {
                vector4(3532.9318847656,3771.5737304688,29.920166015625,164.4094543457),
                vector4(3529.9252929688,3771.3889160156,29.93701171875,167.24407958984),
                vector4(3526.2856445312,3771.9560546875,29.93701171875,172.91339111328),
                vector4(3523.0812988281,3772.298828125,29.93701171875,153.07086181641),
                vector4(3519.6528320312,3773.1560058594,29.920166015625,164.4094543457),
                vector4(3535.54296875,3770.9802246094,29.920166015625,187.08660888672),
                vector4(3538.5363769531,3770.2021484375,29.920166015625,161.57479858398),
                vector4(3540.8703613281,3769.912109375,29.920166015625,170.07873535156),
            }
        },
        ipls = {},
        maxPlayers = 10,
        hasInteriorCheck = false,
        bounds = {vector3(3377.317871, 3561.157227, 11.941078), vector3(3661.545654, 3850.011230, 72.170662)},
        textureName = "heroinn"
    },
    ["Oil Rig"] = {
        spawnLocations = {
            {
                vector4(-1727.3011474609,8883.40234375,27.359008789062,308.97637939453),
                vector4(-1714.8527832031,8874.8046875,19.86083984375,311.81103515625)
            },
            {
                vector4(-1684.3516845703,8892.59375,27.359008789062,127.55905151367),
                vector4(-1694.7296142578,8893.3974609375,19.843994140625,138.89762878418)
            }
        },
        ipls = {},
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-1756.723511, 8808.754883, -5.912561), vector3(-1677.301147, 8933.402344, 67.359009)},
        textureName = "rig"
    },
    ["Dust OG"] = {
        spawnLocations = {
            {
                vector4(-1916.6109619141,-1688.9538574219,76.425659179688,99.212593078613),
                vector4(-1917.1516113281,-1723.4110107422,76.425659179688,62.362205505371)
            },
            {
                vector4(-1940.4395751953,-1724.2153320312,76.425659179688,314.64566040039),
                vector4(-1940.9538574219,-1689.5472412109,76.425659179688,272.1259765625)
            }
        },
        ipls = {
            "did_new_arena_dust"
        },
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-1966.610962, -1738.953857, 66.425659), vector3(-1866.610962, -1638.953857, 116.425659)},
        textureName = "dust"
    },
    -- ["Construction Site Small"] = { --AKA City Small
    --     spawnLocations = {
    --         {
    --             vector4(-2004.8308105469,-775.76702880859,73.139892578125,357.16534423828),
    --             vector4(-2000.4659423828,-776.33404541016,73.139892578125,345.82678222656)
    --         },
    --         {
    --             vector4(-2005.4769287109,-735.70550537109,73.139892578125,170.07873535156),
    --             vector4(-2010.7648925781,-735.37579345703,73.139892578125,175.74803161621)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_citysmall"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "citysmall"
    -- },
    ["Pool"] = {
        spawnLocations = {
            {
                vector4(-1415.2879638672,-1788.5406494141,45.893798828125,90.708656311035),
                vector4(-1415.5384521484,-1805.5120849609,45.893798828125,85.039367675781)
            },
            {
                vector4(-1433.4593505859,-1805.8813476562,45.893798828125,272.1259765625),
                vector4(-1433.4066162109,-1788.2504882812,45.893798828125,272.1259765625)
            }
        },
        ipls = {
            "did_new_arena_pool"
        },
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-1465.287964, -1838.540649, 35.893799), vector3(-1365.287964, -1738.540649, 85.893799)},
        textureName = "pool"
    },
    -- ["Playground"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-3308.1494140625,-230.82197570801,29.111328125,266.45669555664)
    --         },
    --         {
    --             vector4(-3270.8835449219,-230.63735961914,29.111328125,85.039367675781)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_playground"
    --     },
    --     maxPlayers = 2,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "playground"
    -- },
    -- ["Bunker"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-1325.3406982422,-1656.4483642578,261.28503417969,0.0),
    --             vector4(-1304.9934082031,-1657.0021972656,261.28503417969,0.0)
    --         },
    --         {
    --             vector4(-1313.1691894531,-1616.228515625,261.28503417969,184.25196838379),
    --             vector4(-1305.0329589844,-1615.6087646484,261.28503417969,175.74803161621)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_bunker"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "bunker"
    -- },
    -- ["Construction Site"] = { --AKA City Large
    --     spawnLocations = {
    --         {
    --             vector4(-1696.8395996094,-1804.6680908203,94.842529296875,0.0),
    --             vector4(-1685.9736328125,-1805.2219238281,94.842529296875,5.6692910194397),
    --             vector4(-1675.2658691406,-1805.7362060547,94.842529296875,0.0)
    --         },
    --         {
    --             vector4(-1670.9802246094,-1731.1911621094,89.534790039062,181.41732788086),
    --             vector4(-1686.1450195312,-1731.0593261719,94.842529296875,136.06298828125),
    --             vector4(-1697.2747802734,-1730.9274902344,94.842529296875,170.07873535156)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_citylarge"
    --     },
    --     maxPlayers = 6,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "citylarge"
    -- },
    ["Worksite"] = {
        spawnLocations = {
            {
                vector4(-107.36703491211,-2850.5407714844,90.731201171875,272.1259765625),
                vector4(-116.39999389648,-2862.8835449219,90.731201171875,269.29135131836),
                vector4(-104.04395294189,-2868.421875,90.731201171875,272.1259765625)
            },
            {
                vector4(-33.098899841309,-2855.4328613281,90.731201171875,104.88188934326),
                vector4(-30.131866455078,-2862.2504882812,90.731201171875,85.039367675781),
                vector4(-33.243953704834,-2857.2395019531,90.731201171875,87.874015808105)
            }
        },
        ipls = {
            "did_new_arena_worksite"
        },
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(-157.367035, -2900.540771, 80.731201), vector3(-4.254667, -2793.736572, 121.251556)},
        textureName = "worksite"
    },
    ["Blockland"] = { --AKA LegoLand
        spawnLocations = {
            {
                vector4(-3144.474609375,270.36923217773,85.473999023438,272.1259765625),
                vector4(-3142.4965820312,240.51428222656,85.473999023438,269.29135131836),
                vector4(-3143.6704101562,252.89669799805,85.473999023438,272.1259765625)
            },
            {
                vector4(-3095.6704101562,271.97802734375,85.473999023438,107.71653747559),
                vector4(-3099.82421875,253.97802734375,85.473999023438,90.708656311035),
                vector4(-3096.3427734375,244.21978759766,85.473999023438,79.370079040527)
            }
        },
        ipls = {
            "did_new_arena_legoland"
        },
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(-3194.474609, 220.369232, 75.473999), vector3(-3077.640137, 323.609894, 121.012199)},
        textureName = "legoland"
    },
    ["Helipad"] = {
        spawnLocations = {
            {
                vector4(-2958.0,-266.71649169922,28.319458007812,87.874015808105),
                vector4(-2957.9604492188,-247.22637939453,28.319458007812,85.039367675781),
                vector4(-2950.5495605469,-251.19560241699,30.712036132812,93.543304443359),
                vector4(-2950.5759277344,-261.82418823242,30.712036132812,87.874015808105)
            },
            {
                vector4(-2993.6572265625,-267.27032470703,28.319458007812,272.1259765625),
                vector4(-2993.8286132812,-247.7142791748,28.319458007812,274.96063232422),
                vector4(-2998.7868652344,-251.39340209961,30.712036132812,272.1259765625),
                vector4(-2998.9582519531,-261.83737182617,30.712036132812,277.79528808594)
            }
        },
        ipls = {
            "did_new_arena_helipad"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-3008.000000, -316.716492, 18.319458), vector3(-2908.000000, -216.716492, 68.319458)},
        textureName = "helipad"
    },
    -- ["Village"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2258.9274902344,-782.18902587891,72.432250976562,175.74803161621),
    --             vector4(-2278.45703125,-782.017578125,72.432250976562,184.25196838379)
    --         },
    --         {
    --             vector4(-2286.7780761719,-819.96923828125,73.426391601562,354.33071899414),
    --             vector4(-2267.6440429688,-821.63073730469,72.432250976562,0.0)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_mcvillage"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "mvillage"
    -- },
    ["Warehouse"] = {
        spawnLocations = {
            {
                vector4(-1892.0571289062,-1987.5955810547,280.62854003906,274.96063232422),
                vector4(-1874.0307617188,-1991.6834716797,280.62854003906,269.29135131836),
                vector4(-1872.4351806641,-2013.8505859375,280.62854003906,274.96063232422),
                vector4(-1876.7471923828,-2040.9626464844,280.62854003906,269.29135131836)
            },
            {
                vector4(-1794.5010986328,-1979.7626953125,280.62854003906,79.370079040527),
                vector4(-1793.9868164062,-1973.6175537109,280.62854003906,73.700790405273),
                vector4(-1808.7296142578,-2041.4241943359,280.62854003906,85.039367675781),
                vector4(-1795.6087646484,-1987.3978271484,280.62854003906,85.039367675781)
            }
        },
        ipls = {
            "did_new_arena_warehouse"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-1955.613525, -2113.811523, 251.963409), vector3(-1721.286133, -1923.492065, 337.327881)},
        textureName = "warehouse"
    },
    -- ["Military Base"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2460.1977539062,-2422.140625,27.375854492188,172.91339111328),
    --             vector4(-2479.7934570312,-2421.2307128906,27.561157226562,175.74803161621),
    --             vector4(-2496.3032226562,-2422.193359375,27.594848632812,175.74803161621),
    --             vector4(-2510.17578125,-2421.6264648438,27.645385742188,187.08660888672),
    --             vector4(-2523.4943847656,-2420.5451660156,27.645385742188,201.25984191895)
    --         },
    --         {
    --             vector4(-2460.052734375,-2533.8989257812,27.645385742188,0.0),
    --             vector4(-2470.8527832031,-2534.5319824219,27.611694335938,8.5039367675781),
    --             vector4(-2480.0703125,-2534.2680664062,27.611694335938,14.173228263855),
    --             vector4(-2496.8044433594,-2534.123046875,27.611694335938,62.362205505371),
    --             vector4(-2499.1120605469,-2533.7670898438,27.611694335938,31.181102752686)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_militarybase"
    --     },
    --     maxPlayers = 10,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "millybase"
    -- },
    -- ["Junkyard"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2044.2989501953,-2771.6572265625,50.662231445312,181.41732788086),
    --             vector4(-2033.5120849609,-2771.6704101562,50.662231445312,181.41732788086),
    --             vector4(-2025.0197753906,-2771.6176757812,50.662231445312,184.25196838379),
    --             vector4(-2013.6658935547,-2771.8549804688,50.662231445312,172.91339111328),
    --             vector4(-1999.7802734375,-2772.0395507812,50.662231445312,178.58267211914)
    --         },
    --         {
    --             vector4(-2043.3099365234,-2853.0593261719,50.662231445312,5.6692910194397),
    --             vector4(-2032.1274414062,-2852.9274902344,50.662231445312,0.0),
    --             vector4(-2019.6527099609,-2852.9670410156,50.662231445312,8.5039367675781),
    --             vector4(-2010.9230957031,-2852.7956542969,50.662231445312,0.0),
    --             vector4(-1997.3275146484,-2851.9780273438,50.662231445312,5.6692910194397)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_junkyard"
    --     },
    --     maxPlayers = 10,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "junkyard"
    -- },
    -- ["Villa"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2948.5715332031,-175.50329589844,85.9794921875,175.74803161621),
    --             vector4(-2933.6967773438,-176.86154174805,86.030029296875,175.74803161621)
    --         },
    --         {
    --             vector4(-2933.1296386719,-215.07691955566,85.895263671875,0.0),
    --             vector4(-2947.9516601562,-214.49670410156,85.895263671875,0.0)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_villa"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "villa"
    -- },
    -- ["Village Mill"] = {
    --     spawnLocations = {
    --         {
    --             vector4(-2619.61328125,-636.68572998047,22.7421875,269.29135131836),
    --             vector4(-2621.3405761719,-604.44396972656,26.9208984375,272.1259765625)
    --         },
    --         {
    --             vector4(-2581.7407226562,-600.79119873047,21.899658203125,96.377944946289),
    --             vector4(-2583.771484375,-639.12524414062,24.410278320312,90.708656311035)
    --         }
    --     },
    --     ipls = {
    --         "did_new_arena_mcmill"
    --     },
    --     maxPlayers = 4,
    --     hasInteriorCheck = false,
    --     bounds = {},
    --     textureName = "mmill"
    -- },
    ["Ship"] = {
        spawnLocations = {
            {
                vector4(-2916.7648925781,-832.36480712891,74.605834960938,87.874015808105),
                vector4(-2916.9890136719,-837.74505615234,74.588989257812,87.874015808105),
                vector4(-2917.1076660156,-843.78460693359,74.588989257812,90.708656311035),
                vector4(-2917.1999511719,-838.90551757812,74.588989257812,85.039367675781)
            },
            {
                vector4(-3072.2504882812,-837.71868896484,69.736328125,269.29135131836),
                vector4(-3073.3186035156,-841.14727783203,69.736328125,274.96063232422),
                vector4(-3072.9758300781,-834.72528076172,69.736328125,269.29135131836),
                vector4(-3072.3559570312,-828.83074951172,69.736328125,269.29135131836)
            }
        },
        ipls = {
            "did_new_arena_ship"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {vector3(-3104.686035, -874.815918, 40.682026), vector3(-2866.764893, -782.364807, 114.605835)},
        textureName = "ship"
    },
    ["Cargoyard"] = {
        spawnLocations = {
            {
                vector4(-1661.1955566406,-2158.3515625,65.574340820312,90.708656311035),
                vector4(-1661.1560058594,-2153.1691894531,65.574340820312,87.874015808105),
                vector4(-1657.2526855469,-2128.7341308594,65.574340820312,96.377944946289),
                vector4(-1656.8967285156,-2124.8703613281,65.574340820312,85.039367675781)
            },
            {
                vector4(-1717.3055419922,-2159.1032714844,65.574340820312,272.1259765625),
                vector4(-1717.0417480469,-2153.3010253906,65.574340820312,280.62991333008),
                vector4(-1716.9099121094,-2122.2724609375,65.574340820312,274.96063232422),
                vector4(-1717.1735839844,-2127.5737304688,65.574340820312,269.29135131836)
            }
        },
        ipls = {
            "did_new_arena_cargoyard"
        },
        maxPlayers = 8,
        hasInteriorCheck = false,
        bounds = {},
        textureName = "cargoyard"
    },
    ["Tropical Island"] = {
        spawnLocations = {
            {
                vector4(-1837.2131347656,-3335.9736328125,95.7861328125,184.25196838379),
                vector4(-1833.1252441406,-3336.4877929688,95.735473632812,181.41732788086),
                vector4(-1805.2614746094,-3340.8000488281,96.830810546875,170.07873535156),
                vector4(-1785.1384277344,-3350.1362304688,95.870361328125,172.91339111328),
                vector4(-1789.2791748047,-3350.1362304688,95.870361328125,178.58267211914),
                vector4(-1768.5494384766,-3367.8461914062,93.511352539062,161.57479858398),
                vector4(-1771.4373779297,-3365.9868164062,93.561889648438,161.57479858398),
                vector4(-1773.2835693359,-3364.8923339844,93.7978515625,147.40158081055)
            },
            {
                vector4(-1849.9780273438,-3453.1647949219,96.662231445312,357.16534423828),
                vector4(-1847.3538818359,-3454.2329101562,96.527465820312,345.82678222656),
                vector4(-1845.2043457031,-3455.0241699219,96.527465820312,0.0),
                vector4(-1873.75390625,-3443.0241699219,93.545043945312,354.33071899414),
                vector4(-1870.6021728516,-3442.4702148438,93.781005859375,0.0),
                vector4(-1852.7076416016,-3474.1318359375,93.713500976562,354.33071899414),
                vector4(-1861.8198242188,-3467.3010253906,93.528198242188,345.82678222656),
                vector4(-1841.6966552734,-3448.140625,96.628540039062,348.6614074707)
            }
        },
        ipls = {
            "did_new_arena_tropicalisland"
        },
        maxPlayers = 16,
        hasInteriorCheck = false,
        bounds = {vector3(-2020.717041, -3529.258789, 24.806427), vector3(-1634.751831, -3271.869873, 164.977081)},
        textureName = "tropicalisland"
    },
    ["Skate"] = {
        spawnLocations = {
            {
                vector4(-949.35821533203,-802.93188476562,15.91796875,323.14959716797),
                vector4(-950.87469482422,-801.58679199219,15.91796875,317.48031616211),
            },
            {
                vector4(-933.13842773438,-780.42199707031,15.91796875,153.07086181641),
                vector4(-931.67474365234,-782.123046875,15.91796875,136.06298828125),
            },
        },
        ipls = {},
        maxPlayers = 4,
        hasInteriorCheck = false,
        bounds = {vector3(-984.315063, -816.430603, 9.035145), vector3(-912.105408, -759.826416, 37.389782)},
        category = "skate",
        tags = { "skate", "new" },
        textureName = "skate",
    },
    ["Rooftop 1"] = {
        spawnLocations = {
            {
                vector4(85.29231262207,-863.14288330078,134.759765625,255.11810302734),
                vector4(83.709892272949,-867.41540527344,134.759765625,243.77952575684),
                vector4(83.050552368164,-869.02416992188,134.759765625,249.44882202148),
            },
            {
                vector4(118.32527160645,-880.69451904297,134.759765625,65.196853637695),
                vector4(119.47252655029,-875.53845214844,134.759765625,59.52755355835),
                vector4(120.35604858398,-873.86370849609,134.759765625,70.866142272949)
            },
        },
        ipls = {},
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(35.292313, -913.142883, 124.759766), vector3(135.292313, -813.142883, 174.759766)},
        tags = { "new" },
        textureName = "rooftop1",
    },
    ["Rooftop 2"] = {
        spawnLocations = {
            {
                vector4(316.50988769531,-58.509887695312,153.29455566406,308.97637939453),
                vector4(314.80880737305,-56.228569030762,153.29455566406,308.97637939453),
                vector4(313.49011230469,-54.395599365234,153.29455566406,317.48031616211),
            },
            {
                vector4(365.35385131836,-26.017580032349,153.29455566406,121.88976287842),
                vector4(363.33627319336,-23.775821685791,153.29455566406,104.88188934326),
                vector4(361.04174804688,-20.650547027588,153.27770996094,99.212593078613),
            },
        },
        ipls = {},
        maxPlayers = 6,
        hasInteriorCheck = false,
        bounds = {vector3(266.509888, -108.509888, 143.294556), vector3(381.875031, 17.530186, 186.860733)},
        tags = { "new" },
        textureName = "rooftop2",
    },
    ["Lodges"] = {
        spawnLocations = {
            {
                vector4(-712.35162353516,5758.2065429688,17.552368164062,334.48818969727),
                vector4(-708.29010009766,5756.2416992188,17.619750976562,337.32284545898),
                vector4(-704.99340820312,5754.4614257812,17.771484375,337.32284545898),
                vector4(-701.9208984375,5753.0903320312,17.822021484375,334.48818969727),
                vector4(-696.96264648438,5750.4921875,17.855712890625,314.64566040039),
                vector4(-691.16046142578,5747.4990234375,17.8388671875,323.14959716797),
            },
            {
                vector4(-667.10766601562,5835.9692382812,17.316528320312,133.22833251953),
                vector4(-668.87469482422,5837.89453125,17.316528320312,127.55905151367),
                vector4(-670.74725341797,5840.0703125,17.316528320312,116.22047424316),
                vector4(-672.68572998047,5841.71875,17.316528320312,124.72441101074),
                vector4(-674.08349609375,5843.0903320312,17.316528320312,133.22833251953),
                vector4(-676.31207275391,5845.2529296875,17.316528320312,138.89762878418),
            },
        },
        ipls = {},
        maxPlayers = 12,
        hasInteriorCheck = false,
        bounds = {vector3(-762.351624, 5708.206543, 7.552368), vector3(-582.613647, 5876.784180, 56.962971)},
        tags = { "new" },
        textureName = "lodges",
    },
}

cfg.mapsList = {}

for mapName in pairs(cfg.maps) do
    table.insert(cfg.mapsList, mapName)
end
table.sort(cfg.mapsList, function(lhs, rhs) return lhs < rhs end)

-- ============================================================================
-- Player-visible copy (notifications, prompts, UI). Edit here to reword text.
-- Colour codes: ~r~ red, ~g~ green, ~b~ blue, ~y~ yellow (GTA notify format).
-- ============================================================================
cfg.strings = {
    validate = {
        arenaDisabled = "Arenas are currently disabled.",
        onDuty = "You can not wager whilst on duty.",
        busy = "You are already in a wager or queue.",
        notMainWorld = "You are not in the main world.",
        tooFarFromHub = "You are too far from the wager hub.",
        invalidMode = "Invalid game mode.",
        invalidMap = "Invalid map.",
        invalidStake = "Invalid stake amount.",
        invalidBestOf = "Invalid best-of.",
        invalidWeaponCategory = "Invalid weapon category.",
        invalidWeaponForCategory = "Invalid weapon for category.",
        cantAffordWager = "You can not afford this wager.",
        insufficientPlaytimeGeneral = "You need at least %d hours playtime to use wagers, warmup, or ranked.",
        insufficientPlaytimeTournament = "You need at least %d hours playtime to join tournaments.",
        teamEmpty = "A team is empty.",
        teamsUneven = "Teams are uneven.",
        needTwoPlayers = "Need at least 2 players.",
        allPlayersOnline = "All players must be online.",
        playerNotMainWorld = "A player is not in the main world.",
        playerCantAfford = "A player can not afford the wager.",
        notEveryoneReady = "Not everyone is ready.",
    },

    notify = {
        playtime = {
            general = "~r~You need at least %d hours playtime to use wagers, warmup, or ranked.",
            tournament = "~r~You need at least %d hours playtime to join tournaments.",
        },
        wager = {
            noPasswordPublic = "~r~No password provided, making wager public.",
            passwordTooLong = "~r~Password can not be longer than 10 characters.",
            slotFull = "~r~That slot is full.",
            lobbyGone = "~r~That wager no longer exists.",
            busy = "~r~You are already in a wager or queue.",
            onDuty = "~r~You can not wager whilst on duty.",
            mustBeAtHub = "~r~You must be at the wager hub.",
            removedFromWager = "~r~You were removed from this wager.",
            cantAfford = "~r~You can not afford this wager.",
            invalidPassword = "~r~Invalid password.",
            kickingTooFast = "~r~You are kicking too quickly.",
            removedTarget = "~r~You were removed from the wager.",
            shuffleCooldown = "~r~Slow down - teams were just shuffled.",
            cantPayCancelled = "~r~A player could not pay; wager cancelled.",
        },
        aiTest = {
            adminOnly = "~r~AI test wagers are admin-only.",
            finishFirst = "~r~Finish your current wager/lobby first.",
            mustBeAtHub = "~r~You must be at a wager hub.",
            invalidMap = "~r~Invalid map.",
            invalidWeapon = "~r~Invalid weapon for that category.",
            starting = "~g~Starting AI test match...",
        },
        ranked = {
            matchCancelledFunds = "~r~Ranked match cancelled: insufficient funds.",
            matchFound = "~g~Ranked match found!",
            cantAfford = "~r~You can not afford the ranked stake and entry fee.",
            joinedQueue = "~b~Joined the ranked queue.",
            leftQueue = "~y~Left the ranked queue.",
        },
        warmup = {
            leaveWagerFirst = "~r~Leave your current wager first.",
            full = "~r~Warmup is full.",
            finishFirst = "~r~Finish your current wager/lobby first.",
        },
        preview = {
            unknownMap = "~r~Unknown map.",
            mustBeAtHub = "~r~You must be at the wager hub to preview a map.",
        },
        spectate = {
            busy = "~r~You can not spectate right now.",
            matchGone = "~r~That match no longer exists.",
            mustBeAtHub = "~r~You must be at the wager hub to spectate.",
        },
        tournament = {
            matchReady = "~y~Your tournament match is up - open Tournaments and ready up!",
            opponentNoReady = "~g~Opponent failed to ready - you advance!",
            eliminatedNoReady = "~r~Your team failed to ready up in time - eliminated.",
            opponentNoMapBan = "~g~Opponent failed to ban a map - you advance!",
            eliminatedNoMapBan = "~r~Your team failed to ban a map in time - eliminated.",
            won = "~g~You won the tournament!",
            runnerUp = "~y~Runner-up finish!",
            prizeSuffix = " £%s",
            cancelledRefund = "%s Entry fee refunded.",
            cancelledDefault = "Tournament cancelled.",
            teamIncomplete = "~y~Your team was incomplete - dropped from %s.",
            starting = "~g~%s is starting - check your bracket!",
            adminCreateOnly = "~r~Tournaments can only be created by developers.",
            superadminCreateOnly = "~r~Custom tournaments can only be created by superadmins.",
            mapInsufficientSpawns = "~r~%s doesn't have enough spawn points for a %dv%d.",
            mapWrongSize = "~r~%s is not a %dv%d map.",
            mapBanPhase = "~y~Ban a map - open Tournaments to veto!",
            mapBanInvalid = "~r~You can't ban that map right now.",
            created = "~g~Tournament created - sign-ups open for %d min.",
            aiTestAdminOnly = "~r~AI test tournaments are admin-only.",
            aiTestTeamStarting = "~g~AI test %dv%d tournament starting (%d bot teams)...",
            aiTestStarting = "~g~AI test tournament starting (%d bots)...",
            teamOnly = "~r~This is a team tournament - create or join a team.",
            signupsClosed = "~r~Sign-ups have closed.",
            alreadySignedUp = "~r~Already signed up.",
            full = "~r~Tournament is full.",
            finishWagerFirst = "~r~Finish your current wager first.",
            cantAffordEntry = "~r~Can't afford the £%s entry fee.",
            signedUp = "~g~Signed up for %s!",
            useLeaveTeam = "~r~Use Leave team for a team tournament.",
            leftRefund = "~y~Left the tournament. Entry fee refunded.",
            alreadyOnTeam = "~r~You're already on a team.",
            noTeamRoom = "~r~No room for more teams.",
            teamCreated = "~g~Team '%s' created - invite your friends.",
            captainOnlyInvite = "~r~Only a team captain can invite.",
            teamFull = "~r~Your team is already full.",
            targetOnTeam = "~r~That player is already on a team.",
            targetUnavailable = "~r~That player is not available.",
            targetBusy = "~r~That player is busy.",
            invited = "~g~Invited %s.",
            inviteReceived = "~y~%s invited you to '%s' - open Tournaments to accept.",
            noInvite = "~r~No pending invite.",
            teamGone = "~r~That team no longer exists.",
            thatTeamFull = "~r~That team is full.",
            joinedTeam = "~g~Joined %s!",
            memberJoined = "~g~%s joined your team.",
            leftTeamRefund = "~y~Left your team. Entry fee refunded.",
            kickedFromTeam = "~r~You were removed from %s. Entry fee refunded.",
            cancelledByAdmin = "Tournament cancelled by an admin.",
            notEnoughTeams = "Not enough teams for %s (need at least %d full teams).",
            notEnoughPlayers = "Not enough players for %s (need at least %d).",
            captainLeftDisband = "Your team's captain left - team disbanded, entry fee refunded.",
            invalidWeaponCategory = "~r~Invalid weapon category.",
        },
    },

    announce = {
        tournamentMatchUpTitle = "YOUR MATCH IS UP",
        tournamentMatchUpSubtitle = "Open Tournaments and ready up",
        tournamentMapBanTitle = "MAP VETO",
        tournamentMapBanSubtitle = "Ban maps until one remains",
        teamInviteTitle = "TEAM INVITE",
        teamInviteSubtitle = "%s invited you to %s",
    },

    prompts = {
        wagerPassword = "Enter Wager Password",
    },

    chat = {
        tournamentSignupOpen = "[Tournament] %s sign-ups are open! Head to a Wager arena to sign up!",
        tournamentStartingSoon = "[Tournament] %s starts in %d minutes! Head to a Wager arena to sign up!",
        tournamentComplete = "[Tournament] %s has been won by %s!",
        adminArenaStats = "^2[Arena]^7 lobbies=%d matches=%d spectators=%d warmup=%d gamesPlayed=%d wagered=£%s",
    },

    client = {
        hubOpenMenu = "Press ~INPUT_CONTEXT~ to open wager menu",
        spectateMarkerOpen = "Press ~INPUT_CONTEXT~ to watch live wagers",
        hubMarkerTitle = "~b~WAGERS",
        leftLobbyRemoved = "~r~You were removed from the wager lobby.",
        warmupLeave = "Press ~INPUT_FRONTEND_CANCEL~ to leave warmup",
        warmupMapChangesIn = "~y~MAP CHANGES IN:~w~",
        warmupPlayersIn = "~y~PLAYERS:~w~",
        tournamentStartsIn = "TOURNAMENT STARTS",
        spectateLeave = "Press ~INPUT_FRONTEND_CANCEL~ to stop spectating",
        previewExit = "Press ~INPUT_FRONTEND_CANCEL~ to exit map preview",
        hopoutReturnZone = "~r~Return to the zone",
        oobTitle = "~r~Out Of Bounds~w~",
        oobReturnMessage = "Return to the arena within %d seconds or you will die.",
        matchRoundTitle = "~r~ROUND %d/%d",
        hopoutDriveTitle = "~b~DRIVE OUT & FIGHT",
        hopoutDriveSubtitle = "Hunt down your opponent, hop out and win on foot",
    },

    ui = {
        appTitle = "Wagers",
        nav = {
            wagers = "Wagers",
            live = "Live",
            ranked = "Ranked",
            warmup = "Warmup",
            leaderboard = "Leaderboard",
            maps = "Maps",
            tournaments = "Tournaments",
            results = "Results",
        },
        stats = {
            rankedElo = "Ranked ELO",
            openWagers = "Open wagers",
            inWarmup = "In warmup",
            searching = "Searching",
            notQueued = "Not queued",
            hours = "Hours",
            kills = "Kills",
            deaths = "Deaths",
            won = "Won",
            lost = "Lost",
        },
        wagers = {
            emptyList = "No wagers available",
            emptyLiveList = "No live matches",
            liveMatchesTitle = "Live matches (%d)",
            livePlayers = "%d fighting",
            liveSpectators = "%d watching",
            watch = "WATCH",
            selectPrompt = "Select a wager to view its roster.",
            openWagersTitle = "Open wagers (%d)",
            createButton = "+ CREATE WAGER",
            back = "← Back",
            playersCount = "%d/%d players",
            readyCount = "%d ready",
            private = "PRIVATE",
            host = "HOST",
            hostTools = "Host",
            allowUneven = "Allow uneven",
            readyUp = "READY UP",
            readyDone = "READY ✓",
            players = "Players",
            team = "Team %d",
            joinTeam = "JOIN TEAM %d",
            joinGame = "JOIN GAME",
            joinPasswordTitle = "Enter wager password",
            joinPasswordPlaceholder = "Password",
            joinPasswordConfirm = "Join wager",
            joinPasswordCancel = "Cancel",
            shuffleTeams = "SHUFFLE TEAMS",
            start = "START (%d/%d)",
            leave = "LEAVE",
            cancel = "CANCEL",
        },
        create = {
            title = "Create wager",
            chooseMap = "Choose map",
            matchSetup = "Match setup",
            mode = "Mode",
            backToSetup = "← Back to setup",
            backToWagers = "← Back to wagers",
            changeMap = "Change",
            bestOf = "Best of",
            weaponCategory = "Weapon category",
            weapon = "Weapon",
            stake = "Wager",
            rules = "Rules",
            armour = "Armour",
            crouch = "Enable Crouching",
            disableCoverPeek = "Disable Q Peek",
            siphon = "Siphon",
            private = "Private",
            passwordPlaceholder = "Set a password",
            summary = "Summary",
            map = "Map",
            entryFee = "Entry fee",
            entryFeePerPlayer = "%s per player",
            entryFeeHint = "+ %s fee",
            winnerTake = "Winner take (%s max)",
            crouching = "Crouching",
            noCoverPeek = "No Q Peek",
            siphonTag = "Siphon",
            propose = "PROPOSE WAGER",
            aiTestHead = "Developer · AI test",
            bots = "Bots",
            aiTestNote = "No stake · no ELO · best of 1",
            startAiTest = "VS AI (TEST)",
        },
        ranked = {
            title = "Ranked 1v1",
            blurb = "Queue for a ranked 1v1 wager",
            oneVOne = "1v1",
            mosinsOnly = "Mosins only",
            randomMap = "Random map",
            queueSearching = "In queue - finding an opponent…",
            queueSearchingSub = "%d player%s searching",
            joinQueue = "JOIN QUEUE",
            leaveQueue = "LEAVE QUEUE",
        },
        warmup = {
            title = "Warmup lobby",
            blurb = "test",
            blurbFfa = "Warmup in FFA with instant respawns",
            join = "JOIN WARMUP",
            leave = "LEAVE WARMUP",
            inLobby = "%d in lobby",
            inLobbyLabel = "in lobby",
            playersIn = "%d in warmup",
        },
        leaderboard = {
            title = "ELO Leaderboard",
            empty = "None available",
            refresh = "REFRESH",
            player = "Player",
            kd = "K/D",
        },
        maps = {
            searchPlaceholder = "Search maps…",
            empty = "No maps match your search.",
            favouritesOnly = "Favourites only",
            teamFilter = "Team size",
            teamFilterAll = "All",
            openWorld = "Open world",
            upTo = "Up to %dv%d",
            new = "NEW",
            addFavourite = "Add favourite",
            removeFavourite = "Remove favourite",
            played = "%d played",
            preview = "PREVIEW",
            selected = "✓ SELECTED",
            mapCount = "%d map%s",
            prev = "‹ Prev",
            next = "Next ›",
            pageOf = "Page %d of %d",
        },
        tournaments = {
            pageTitle = "Tournaments",
            signupLeadSubtitle = "Sign ups open %d mins before",
            inProgress = "In Progress",
            upcoming = "Upcoming Tournaments",
            empty = "No tournaments scheduled right now",
            startsAt = "Starts at",
            startsIn = "Starts in",
            startingSoon = "Starting soon",
            startingNow = "Starting",
            now = "NOW",
            signupsOpenIn = "Opens in",
            startingSoonBadge = "STARTING SOON",
            signupsOpenBadge = "OPEN",
            liveBadge = "LIVE",
            round = "Round",
            randomMap = "Random map",
            randomMaps = "Random maps",
            weaponFallback = "Weapon",
            aiTestChip = "AI test",
            back = "← Back",
            aiTestTag = "AI TEST",
            create = "+ Create",
            aiTestBtn = "AI Test",
            bestOf = "Best of %d",
            oneVOne = "1v1",
            teamFormat = "%dv%d",
            signUp = "SIGN UP",
            signUpFee = "SIGN UP · %s",
            full = "FULL",
            registered = "REGISTERED",
            notRegistered = "NOT REGISTERED",
            createTitle = "Create tournament",
            aiTestTitle = "AI test tournament",
            name = "Name",
            namePlaceholder = "Tournament name",
            entryFee = "Entry fee",
            signupWindow = "Sign-up window (min)",
            teamSize = "Team size",
            bracket = "Bracket",
            categoryDefault = "Category default",
            randomEachMatch = "Random each match",
            createTeam = "CREATE TEAM",
            createTeamFee = "CREATE TEAM · %s",
            bracketFull = "BRACKET FULL",
            teamNamePlaceholder = "Team name",
            createTeamField = "Create a team",
            disbandTeam = "DISBAND TEAM",
            leaveTeam = "LEAVE TEAM",
            invitePrompt = "Invite a player…",
            inviteSearchPlaceholder = "Search by username…",
            inviteNoMatches = "No players found",
            inviteBanner = "%s invited you to join.",
            inviteBannerSuffix = "invited you to join.",
            teamFallback = "A team",
            emptySlot = "Empty slot",
            openTeamSlot = "Open team slot",
            startsInLabel = "Starts in",
            teamsLabel = "Teams",
            teamsCount = "Teams (%d)",
            teamsSignedUp = "Teams (min %d)",
            signedUpLabel = "Signed up",
            playersSignedUp = "Signed up (min %d)",
            entryFeeLabel = "Entry fee",
            prizePoolLabel = "Prize pool",
            invite = "INVITE",
            accept = "ACCEPT",
            decline = "DECLINE",
            leaveTournament = "LEAVE TOURNAMENT",
            startNow = "START NOW",
            startNowConfirmTitle = "Start tournament now?",
            startNowConfirmBody = "Sign-ups will close and the bracket will begin immediately.",
            cancelBtn = "CANCEL",
            cancelTournament = "CANCEL TOURNAMENT",
            cancelConfirmTitle = "Cancel tournament?",
            cancelConfirmBody = "All sign-ups will be refunded and the tournament will be removed.",
            confirmYes = "Yes",
            confirmNo = "No",
            entrants = "Entrants (%d/%d)",
            entrantsCount = "Entrants (%d)",
            open = "Open",
            championPrefix = "🏆 Champion:",
            champion = "🏆 Champion: %s",
            matchUpReady = "Your match is up! Ready in %s or your team forfeits.",
            waitingOtherTeam = "Waiting for the other team to ready up… (%s)",
            waitingTeammates = "Readied - waiting for your teammates… (%s)",
            mapBanTitle = "Map veto",
            mapBanHint = "Ban one map each until one remains. Time left: %s",
            mapBanYourTurn = "Your turn - click a map to ban it",
            mapBanWaitingOpponent = "Waiting for the other side to ban… (%s)",
            mapBanWaitingCaptain = "Waiting for your captain to ban… (%s)",
            mapBanBan = "BAN",
            mapBanBanned = "Banned",
            teamHint = "Create a team, then invite teammates to fill your %d-player roster.",
            openSignups = "OPEN SIGN-UPS",
            teamSizeSolo = "1v1 (solo)",
            aiTestNote = "Spin up a throwaway bracket against bots. You play your own pairings as AI-test matches; bot-vs-bot rounds resolve automatically. No money or ELO is involved.",
            aiTestTeamNote = " Your team is you plus AI team-mates.",
            botTeamsBracket = "%d %s · %d-team bracket",
            startAiTestTournament = "START AI TEST",
            opposingBotTeams = "Opposing bot teams",
            bots = "Bots",
        },
        results = {
            title = "Tournament results",
            empty = "You haven't participated in any completed tournaments yet.",
            refresh = "REFRESH",
            winner = "Winner",
            prizePool = "Prize pool",
            entrants = "%d entrants",
            completed = "Completed",
            back = "← Back",
            noBracket = "Bracket data is not available for this tournament.",
            viewBracket = "View bracket",
            loading = "Loading…",
        },
        bracket = {
            final = "Final",
            semiFinals = "Semi-finals",
            quarterFinals = "Quarter-finals",
            roundN = "Round %d",
            live = "LIVE",
            ready = "READY",
            mapban = "VETO",
            bye = "Skip",
            remove = "Remove",
            kick = "Kick",
        },
        overlay = {
            round = "Round %d",
            teamWins = "TEAM %d WINS",
            playersWin = "%s WINS",
            draw = "DRAW",
            mvp = "MVP",
            player = "Player",
            pot = "Pot %s",
            pressEscClose = "Press Escape to close",
            spectating = "SPECTATING",
            leave = "LEAVE",
            forfeitTitle = "Leave the wager?",
            forfeitBody = "Forfeiting counts as a loss. You'll lose your wager and ELO, and your opponent wins.",
            gtaSettings = "GTA settings",
            settings = "Settings",
            keepFighting = "Keep fighting",
            forfeitWager = "Forfeit wager",
            spectatorsWatching = "%d watching",
        },
        common = {
            bestOf = "Best of",
            bestOfN = "Best of %d",
        },
    },
}

return cfg