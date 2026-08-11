--[[
    LEVEL 1 BEGINNER GUIDE — Heist
    ===================================

    File: cmg/prod/cfg/heists/cfg_heist.lua
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

cfg.staffDoors = {
    {
        position = vector3(269.26681518555,212.48037719727,97.117294311523),
        model = 0x18651EA9,
        thermitePosition = vector3(269.021698, 213.232224, 97.290520),
        thermiteHeading = 338.69860839844,
        thermiteParticle = vector3(269.021698, 214.232224, 97.290520)
    },
    {
        position = vector3(272.21914672852,220.72395324707,97.117294311523),
        model = 0x18651EA9,
        thermitePosition = vector3(271.605804, 220.347916, 97.270691),
        thermiteHeading = 161.79879760742,
        thermiteParticle = vector3(271.605804, 221.347916, 97.270691)
    }
}
cfg.staffDoorThermiteModel = `hei_v_ilev_bk_gate_molten`

cfg.vaultDoorHack = vector3(228.08103942871,229.08581542969,97.1171875)

cfg.lockedDoors = {
    {
        position = vector3(244.03228759766,217.08151245117,97.170280456543),
        model = 0x18651EA9,
    },
    {
        position = vector3(249.95559692383,233.72819519043,97.171112060547),
        model = 0x18651EA9,
    },
    {
        position = vector3(265.61572265625,225.07720947266,97.166137695312),
        model = 0x18651EA9,
    },
    {
        position = vector3(229.27871704102,227.48323059082,97.179840087891),
        model = 0x2655BA8A,
    },
    {
        position = vector3(226.14880371094,228.60801696777,97.18204498291),
        model = 0x2655BA8A,
    }
}

cfg.safeDoor = vector3(234.98,228.06,97.72)
cfg.safeDoorModel = 0x39569782
cfg.safeDoorButton = vector3(236.95303344727,231.55143737793,97.117179870605)

cfg.safeTerminal = {
    position = vector4(236.334320, 231.788727, 97.512642, 69.296913146973),
    model = `v_corp_bk_secpanel`,
}

cfg.alarms = {
    vector3(254.7350769043,239.41065979004,110.22128295898),
    vector3(244.01333618164,209.50090026855,110.228515625),
    vector3(240.29081726074,217.86242675781,108.28177642822),
    vector3(281.74026489258,212.6491394043,106.37060546875),
    vector3(272.41326904297,216.10011291504,112.17317962646),
    vector3(264.64080810547,205.43406677246,107.28225708008),
    vector3(268.11584472656,217.66203308105,108.23894500732),
    vector3(244.86563110352,225.89497375488,106.28211975098),
    vector3(272.90090942383,235.5530090332,123.81565856934),
    vector3(237.52691650391,228.86744689941,97.11701965332),
    vector3(251.23095703125,223.92921447754,97.110008239746),
    vector3(265.35092163086,218.66697692871,97.06852722168)
}

cfg.terminalHack = {
    words = {
        "BANKDOOR",
        "LOCKGATE",
        "TERMINAL",
        "GREENKEY"
    }
}

cfg.trollies = {
    {
        model = 269934519,
        position = vector3(228.86915588379,226.18995666504,97.11701965332),
        handModel = `hei_prop_heist_cash_pile`,
        heading = 0.0,
        name = "cash",
        item = "bankheists_cash"
    },
    {
        model = 269934519,
        position = vector3(252.50869750977,238.62881469727,97.117027282715),
        handModel = `hei_prop_heist_cash_pile`,
        heading = 0.0,
        name = "cash",
        item = "bankheists_cash"
    },
    {
        model = 269934519,
        position = vector3(225.71073913574,227.12228393555,97.116943359375),
        handModel = `hei_prop_heist_cash_pile`,
        heading = 150.0,
        name = "cash",
        item = "bankheists_cash"
    },
    {
        model = 2007413986,
        position = vector3(250.09660339355,236.14601135254,97.109855651855),
        handModel = `ch_prop_gold_bar_01a`,
        heading = 150.0,
        name = "gold",
        item = "bankheists_gold"
    },
    {
        model = 881130828,
        position = vector3(242.38064575195,211.20390319824,97.117195129395),
        handModel = `ch_prop_vault_dimaondbox_01a`,
        heading = 0.0,
        name = "diamonds",
        item = "bankheists_diamonds"
    },
    {
        model = 881130828,
        position = vector3(241.76963806152,214.48385620117,97.090843200684),
        handModel = `ch_prop_vault_dimaondbox_01a`,
        heading = 150.0,
        name = "diamonds",
        item = "bankheists_diamonds"
    },
    {
        model = 2007413986,
        position = vector3(267.35641479492,224.01728820801,97.11701965332),
        handModel = `ch_prop_gold_bar_01a`,
        heading = 150.0,
        name = "gold",
        item = "bankheists_gold"
    }
}

cfg.gases = {
    {
        position = vector3(242.75184631348,213.48474121094,97.116882324219),
        scale = 1.8
    },
    {
        position = vector3(251.41470336914,237.76235961914,97.110260009766),
        scale = 1.8
    },
    {
        position = vector3(230.77607727051,230.97468566895,97.112510681152),
        scale = 2.5
    },
    {
        position = vector3(244.01300048828,226.75827026367,97.109680175781),
        scale = 2.5
    },
    {
        position = vector3(253.39791870117,223.0558013916,97.06706237793),
        scale = 2.5
    },
    {
        position = vector3(261.9245300293,219.90625,97.037300109863),
        scale = 2.5
    },
    {
        position = vector3(275.513671875,214.91065979004,96.835945129395),
        scale = 4.0
    }
}

cfg.timeToGas = 60000

cfg.setupVehicles = {
    {
        model = `tailgatersr`,
        position = vector3(732.99, -981.34, 23.83),
        heading = 273.11
    },
    {
        model = `str`,
        position = vector3(732.44, -986.76, 24.22),
        heading = 274.39
    },
    {
        model = `strwag`,
        position = vector3(722.24, -987.22, 23.4),
        heading = 271.77
    },
    {
        model = `rt3000varis`,
        position = vector3(711.15, -988.32, 23.46),
        heading = 270.46
    },
    {
        model = `driftfr36`,
        position = vector3(710.94, -968.27, 23.46),
        heading = 270.46
    },
    {
        model = `driftremus`,
        position = vector3(703.52, -987.33, 23.47),
        heading = 275.33
    }
}

cfg.sellLocation = vector3(515.69, -1617.43, 29.28)

cfg.sellableItems = {
    ["Gold Pile"] = "bankheists_gold",
    ["Diamond Pile"] = "bankheists_diamonds"
}

cfg.payouts = {
    ["bankheists_cash"] = 142857,
    ["bankheists_gold"] = 285714,
    ["bankheists_diamonds"] = 501428
}

cfg.setups = {
    {
        title = "Setup One: Hack CCTV",
        description = "Penetrate the security of the bank to gain access to internal computer systems.\nDifficulty: Easy",
        position = vector3(176.75, 182.94, 149.07),
        heading = 303.37,
        rotation = vector3(-27.91, 0.05, -60.49),
        cost = 500000,
        series = "Bank Heist"
    },
    {
        title = "Setup Two: Convoy Interception",
        description = "Intercept a convoy from Human Labs containing thermite devices.\nDifficulty: Hard",
        position = vector3(3693.81, 3857.69, 68.04),
        heading = 120.37,
        rotation = vector3(-5.68, 0.0, 130.89),
        cost = 1000000,
        series = "Bank Heist"
    },
    {
        title = "Setup One: Cargo Raid",
        description = "Raid a cargo ship off the west coast to steal proprietary technology.\nDifficulty: Normal",
        position = vector3(-391.1711730957, -4124.875, 26.460508346558),
        heading = 235.28,
        rotation = vector3(-17.60, 0.0, -171.87),
        cost = 750000,
        series = "Bank Robbery"
    }
}

cfg.armourCost = 100000
cfg.minimumPoliceOnline = 10

cfg.alarmDisablePos = vector3(258.52, 275.43, 105.62)

cfg.playerDelayBetweenHeists = 259200 -- 3 days in seconds

return cfg
