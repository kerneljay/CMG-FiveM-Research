--[[
    LEVEL 1 BEGINNER GUIDE — Healthservice
    ===========================================

    File: cmg/prod/cfg/cfg_healthservice.lua
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

-- St Thomas Hospital respawn beds (NHS clocked-on respawn) - coords for teleport before lay
cfg.hospitalRespawnBeds = {
    stthomas_bed_1 = vector4(352.13, -575.15, 42.95+0.2, 25.0),
    stthomas_bed_2 = vector4(355.89, -573.41, 42.95+0.2, 25.0),
    stthomas_bed_3 = vector4(358.89, -580.10, 42.95+0.2, 205.0),
    stthomas_bed_4 = vector4(355.23, -581.82, 42.95+0.2, 205.0),
}

-- Camera positions for each bed (looks at player until they get up)
cfg.hospitalRespawnBedCameras = {
    stthomas_bed_1 = vector3(353.76187133789,-578.56140136719,45.396633148193),
    stthomas_bed_2 = vector3(357.45495605469, -576.62078857422, 45.396633148193),
    stthomas_bed_3 = vector3(357.32827758789, -577.10406494141, 45.396636962891),
    stthomas_bed_4 = vector3(353.75357055664, -578.90130615234, 45.396640777588),
}

-- Progression tab (F6): pay bonus matches garbage job — linear to max level 100 => +200% (base * (1 + payBonus))).
-- NHS Vehicles / NHS Helicopters Simeons rows: cfg_simeons.lua (levelName = health_service_level).
local nhsSimeonsVehicleUnlocks = {
    [1] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Marked Ambulance Van.",
    },
    [10] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Bravado Blackline Ambulance.",
    },
    [20] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Castigator NHS Marked.",
    },
    [30] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Rhinehart Ambulance.",
    },
    [40] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Komoda Marked.",
    },
    [50] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Obey Revenant NHS Marked.",
    },
    [60] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Paragon Ambulance.",
    },
    [70] = {
        title = "Simeons vehicle",
        icon = "fa-ambulance",
        description = "Unlock Rebla NHS Marked.",
    },
    [100] = {
        title = "Simeons vehicle",
        icon = "fa-helicopter",
        description = "Unlock NHS Helicopter.",
    },
}

cfg.levels = {}
for lvl = 1, 100 do
    local payBonus = (lvl / 100) * 2.0
    local pct = math.floor(payBonus * 100 + 0.5)
    local vehicleRow = nhsSimeonsVehicleUnlocks[lvl]
    if vehicleRow then
        cfg.levels[lvl] = {
            name = string.format("Level %d", lvl),
            title = vehicleRow.title,
            icon = vehicleRow.icon,
            description = vehicleRow.description .. string.format(" (+%d%% pay)", pct),
            payBonus = payBonus,
        }
    else
        cfg.levels[lvl] = {
            name = string.format("Level %d", lvl),
            title = "Pay",
            icon = "fa-coins",
            description = string.format("%d%% extra pay.", pct),
            payBonus = payBonus,
        }
    end
end

-- Vehicle to grant when tutorial starts (if player doesn't own it). Must be in NHS Vehicles garage.
cfg.tutorialAmbulance = "amb"

cfg.tutorial = {
    {
        id = "go_to_hospital",
        title = "Head to Hospital",
        description = "Head to Pillbox Hospital to start your shift.",
        current = 0,
        required = 1,
        locationMarker = vector3(401.02847290039,-550.18731689453,28.607383728027),
        checkpoints = {},
        markerForVehicle = true,
    },
    {
        id = "go_to_garage",
        title = "Enter The Hospital",
        description = "Enter the hospital compound",
        current = 0,
        required = 1,
        locationMarker = vector3(351.91131591797,-543.79663085938,28.744722366333),
        checkpoints = {},
        markerForVehicle = true,
    },
    {
        id = "go_to_garage2",
        title = "Enter The Garage",
        description = "Enter the garage at the hospital",
        current = 0,
        required = 1,
        locationMarker = vector3(337.11193847656,-558.54974365234,28.744749069214),
        checkpoints = {},
        markerForVehicle = true,
    },
    {
        id = "spawn_ambulance",
        title = "Spawn Ambulance",
        description = "Spawn an ambulance from the CMG Health Service garage at the hospital.",
        current = 0,
        required = 1,
        checkpoints = {},
        locationMarker = vector3(331.84707641602,-572.22821044922,28.802728652954),
        markerForVehicle = true,
        markerVisualOnly = true,
    },
    {
        id = "accept_dispatch",
        title = "Accept a Dispatch",
        description = "Wait for a dispatch call to be made, you will receive a notification in the top right of your screen. Accept the dispatch by pressing Z.",
        current = 0,
        required = 1,
        checkpoints = {},
    },
    {
        id = "revive_patient",
        title = "Revive the Patient",
        description = "Press E on the downed player and select Revive to perform CPR.",
        current = 0,
        required = 1,
        checkpoints = {},
    },
}

cfg.xp = {
    [1] = 2000,
    [2] = 4000,
    [3] = 6000,
    [4] = 8000,
    [5] = 10000,
    [6] = 12000,
    [7] = 14000,
    [8] = 16000,
    [9] = 18000,
    [10] = 20000,
    [11] = 22000,
    [12] = 24000,
    [13] = 26000,
    [14] = 28000,
    [15] = 30000,
    [16] = 32000,
    [17] = 34000,
    [18] = 36000,
    [19] = 38000,
    [20] = 40000,
    [21] = 42000,
    [22] = 44000,
    [23] = 46000,
    [24] = 48000,
    [25] = 50000,
    [26] = 52000,
    [27] = 54000,
    [28] = 56000,
    [29] = 58000,
    [30] = 60000,
    [31] = 62000,
    [32] = 64000,
    [33] = 66000,
    [34] = 68000,
    [35] = 70000,
    [36] = 72000,
    [37] = 74000,
    [38] = 76000,
    [39] = 78000,
    [40] = 80000,
    [41] = 82000,
    [42] = 84000,
    [43] = 86000,
    [44] = 88000,
    [45] = 90000,
    [46] = 92000,
    [47] = 94000,
    [48] = 96000,
    [49] = 98000,
    [50] = 100000,
    [51] = 102000,
    [52] = 104000,
    [53] = 106000,
    [54] = 108000,
    [55] = 110000,
    [56] = 112000,
    [57] = 114000,
    [58] = 116000,
    [59] = 118000,
    [60] = 120000,
    [61] = 122000,
    [62] = 124000,
    [63] = 126000,
    [64] = 128000,
    [65] = 130000,
    [66] = 132000,
    [67] = 134000,
    [68] = 136000,
    [69] = 138000,
    [70] = 140000,
    [71] = 142000,
    [72] = 144000,
    [73] = 146000,
    [74] = 148000,
    [75] = 150000,
    [76] = 152000,
    [77] = 154000,
    [78] = 156000,
    [79] = 158000,
    [80] = 160000,
    [81] = 162000,
    [82] = 164000,
    [83] = 166000,
    [84] = 168000,
    [85] = 170000,
    [86] = 172000,
    [87] = 174000,
    [88] = 176000,
    [89] = 178000,
    [90] = 180000,
    [91] = 182000,
    [92] = 184000,
    [93] = 186000,
    [94] = 188000,
    [95] = 190000,
    [96] = 192000,
    [97] = 194000,
    [98] = 196000,
    [99] = 198000,
    [100] = 200000,
}

-- Keep levels 1–100 as-is, make 101–200 scale exponentially
local growth = 1.04 -- 4% harder each level after 100
local current = cfg.xp[100]

for level = 101, 200 do
    current = math.floor(current * growth)
    cfg.xp[level] = current
end

return cfg
