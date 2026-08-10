--[[
    BEGINNER GUIDE — Mechanic
    =========================

    File: cmg/prod/cfg/cfg_mechanic.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Config/data used:
      * cfg/cfg_garages

]]
-- Mechanic job: F6 terminal + solo contracts (breakdown, lane clear / debris, parts, equipment, fuel).
local cfg = {}

cfg.jobName = "Mechanic"

-- Payout for completing a breakdown contract (bank). Mirrored in soloPayouts.breakdown.
cfg.breakdownPayout = 21000

-- Per contract type: seconds after finish or cancel before that same type can be started again (0 = none).
cfg.soloJobCooldownSec = 600

-- Do not network mission vehicles until the mechanic is within this distance (client-side spawn).
cfg.vehicleSpawnNearMeters = 110.0

-- Base bank payouts before level bonus × grind mult (see mechanicPayBonusForLevel on server).
cfg.soloPayouts = {
    fuel_runout = 20000,
    parts_run = 60000,
    breakdown = 30000,
    debris = 80000,
    equipment = 40000,
}

-- Solo roster: mechanics take contracts in this order (loops). Server assigns the next type; players cannot pick an easier line.
cfg.soloJobRotation = {
    "breakdown",
    "debris",
    "parts_run",
    "fuel_runout",
    "equipment",
}

-- Highway / roadside debris sites (vector3). One site per lane-clear job.
cfg.debrisSpawns = {
    vector3(1170.4520263672,-1020.5928955078,44.251468658447),
    vector3(1305.9281005859,1015.7189331055,105.81639862061),
    vector3(990.041015625,2144.1535644531,48.874095916748),
    vector3(148.05674743652,2106.4658203125,130.88511657715),
    vector3(-540.16412353516,2044.4929199219,195.72547912598),
    vector3(-753.78454589844,2172.0537109375,99.17798614502),
    vector3(-798.98254394531,2766.40625,23.737905502319),
    vector3(-2435.3828125,3642.9157714844,14.132472991943),
    vector3(1038.7116699219,239.65869140625,82.899795532227),
    vector3(533.96765136719,-1525.0517578125,29.267944335938),
    vector3(347.48825073242,-1937.7420654297,24.559587478638),
}

-- Lane clear (debris): Mechanic flatbed required. Main burnt wreck + up to 4 scattered parts (client-spawned local props).
cfg.debrisPropSpawnNearMeters = 95.0
-- After winching, flatbed must enter Mission Row yard (cfg.impoundDropoff) within this radius to finish (meters).
cfg.debrisDepotDeliverRadius = 24.0

cfg.debrisMainWreckModels = {
    "prop_rub_carwreck_8",
}

-- Client: attach main wreck object to Mechanic flatbed (bone index matches cl_aa flatbed rig).
cfg.debrisMainFlatbedBone = 20
cfg.debrisMainFlatbedAttach = { ox = -1.1, oy = -6.85, oz = -0.08, rx = 0.0, ry = 0.0, rz = -10.0 }

--[[ Lane-clear debris layouts keyed by main wreck model. secondaryModels is the exact ordered list used for that wreck. ]]
cfg.debrisLayoutGroups = {
    ["prop_rub_carwreck_8"] = {
        secondaryModels = {
            "prop_car_seat",
            "prop_rub_carpart_02",
            "prop_wheel_rim_02",
            "prop_car_exhaust_01",
        },
        secondaryOffsets = {
            ["prop_car_seat"] = { dx = -0.85, dy = 2.75, dz = 0.0, h = 22.0 },
            ["prop_rub_carpart_02"] = { dx = 0.95, dy = 3.2, dz = 0.02, h = -12.0 },
            ["prop_wheel_rim_02"] = { dx = -1.15, dy = 3.75, dz = 0.04, h = 38.0 },
            ["prop_car_exhaust_01"] = { dx = 1.05, dy = 4.2, dz = 0.0, h = 205.0 },
        },
        secondaryFlatbedAttach = {
            ["prop_car_seat"] = { ox = 0.18, oy = -4.18, oz = -0.24, rx = 0.0, ry = 0.0, rz = -141.0 },
            ["prop_rub_carpart_02"] = { ox = -0.72, oy = -4.42, oz = -0.24, rx = 0.0, ry = 0.0, rz = -5.0 },
            ["prop_wheel_rim_02"] = { ox = -0.98, oy = -4.08, oz = 0.08, rx = 0.0, ry = 0.0, rz = 35.0 },
            ["prop_car_exhaust_01"] = { ox = -0.68, oy = -3.72, oz = -0.22, rx = 0.0, ry = 0.0, rz = 68.0 },
        },
    },
}

-- Parts depot pickup then drop-off (vector4). Same pickup reused for variety.
cfg.partsRoutes = {
    { pickup = vector4(472.35, -1310.22, 29.22, 120.0), dropoff = vector4(733.59558105469,-1295.1164550781,27.02197265625,274.96063232422) },
    { pickup = vector4(472.35, -1310.22, 29.22, 120.0), dropoff = vector4(-544.66314697266,-888.91711425781,25.135257720947, 180.0) },
    { pickup = vector4(472.35, -1310.22, 29.22, 120.0), dropoff = vector4(1214.22, -1269.45, 35.23, 270.0) },
    { pickup = vector4(472.35, -1310.22, 29.22, 120.0), dropoff = vector4(-319.88, -1334.12, 31.31, 0.0) },
}

-- LSIA + docks equipment (flatbed/tow to impound). Models must pass AA tow damage rules on spawn.
cfg.equipmentJobs = {
    { modelName = "forklift", pos = vector4(-1267.2, -2294.5, 14.2, 90.0) },
    { modelName = "airtug", pos = vector4(-1336.8, -2258.1, 14.15, 150.0) },
    { modelName = "forklift", pos = vector4(526.76470947266,-3044.5681152344,6.0695805549622, 270.0) },
    { modelName = "docktug", pos = vector4(1144.24609375,-3144.9890136719,5.892333984375,269.29135131836) },
    { modelName = "tractor2", pos = vector4(1444.4307861328,1090.4835205078,114.9443359375,85.039367675781) },
    { modelName = "bulldozer", pos = vector4(94.457145690918,-384.67251586914,41.276977539062,238.11022949219) },
}

-- Out-of-fuel callouts: normal-health car, refuel interaction (no impound).
cfg.fuelRunoutSpawns = {
    vector4(2001.2, 2605.4, 54.8, 200.0),
    vector4(1011.0461425781,3625.2131347656,32.515014648438,266.45669555664),
    vector4(2005.9252929688,5158.0483398438,46.584594726562,127.55905151367),
    vector4(2379.982421875,4884.1318359375,41.630737304688,218.2677154541),
    vector4(2927.8813476562,4070.8352050781,50.81396484375,195.5905456543),
    vector4(2520.6989746094,2737.0944824219,44.276245117188,204.09449768066),
    vector4(1872.0395507812,2100.4877929688,54.79052734375,192.75592041016),
    vector4(2412.3427734375,-475.50329589844,71.438110351562,53.858268737793),
    vector4(1178.3341064453,-1025.5384521484,43.98974609375,11.338582038879),
}
cfg.fuelRunoutModels = {
    "asea",
    "dilettante",
    "blista",
    "prairie",
    "fugitive",
    "ingot",
    "premier",
    "stratum",
    "washington",
    "oracle",
    "emperor",
}

cfg.fuelMissionEngineHealth = 900.0
cfg.fuelMissionBodyHealth = 950.0

-- Insurance write-off: same impound flow as breakdown, heavier damage.
-- Mission vehicle models (spawn name strings).
cfg.breakdownVehicleModels = {
    "premier",
    "asterope",
    "ingot",
    "stratum",
    "fugitive",
    "washington",
    "oracle",
    "emperor",
    "regina",
    "stanier",
    "intruder",
    "primo",
}

--[[
  Roadside breakdown spawn points (vector4: x, y, z, heading).
  Keep spread out; player must tow to Mission Row impound (existing AA logic).
]]
cfg.breakdownSpawns = {
    vector4(268.12, -1761.89, 28.92, 320.0),
    vector4(-723.42, -912.18, 19.01, 180.0),
    vector4(1188.45, -310.12, 69.02, 120.0),
    vector4(2560.21, 428.88, 108.46, 270.0),
    vector4(-1154.33, -743.21, 19.76, 35.0),
    vector4(836.86151123047,-1933.75390625,28.959716796875,175.74803161621),
}

--[[
  Mission Row impound yard: tow jobs (breakdown / write-off / equipment) end here.
  Keep aligned with impoundCoords in client/jobs/cl_aa.lua.
]]
cfg.impoundDropoff = vector3(389.40829467773, -1622.1922607422, 29.28772354126)

-- Engine/body health caps so vehicle qualifies for AA tow (client health check < 925).
cfg.missionVehicleEngineHealth = 150.0
cfg.missionVehicleBodyHealth = 250.0

-- Progression: breakdown pay = base * (1 + payBonus) * grind mult (server). Linear to max: level 100 => +200% on base.
cfg.levels = {}
for lvl = 1, 100 do
    local payBonus = (lvl / 100) * 2.0
    local pct = math.floor(payBonus * 100 + 0.5)
    local desc = string.format("Contracts pay %d%% better", pct)
    cfg.levels[lvl] = {
        name = string.format("Level %d", lvl),
        title = "Contract Pay",
        icon = "fa-coins",
        description = desc,
        payBonus = payBonus,
    }
end

-- XP table for cmg_mechanic job levels (same shape as cfg_garbage: xp[i] = cost to reach level i+1).
cfg.xp = {}
for i = 1, 99 do
    if i == 1 then
        cfg.xp[i] = 450
    elseif i == 2 then
        cfg.xp[i] = 900
    else
        cfg.xp[i] = 900 + (i - 2) * 500
    end
end

--[[
  Job vehicle model hashes (merged from cfg/vehicles/whitelists.json + stock mechanic rigs).
  mechanicCustomTowTrucks / mechanicCustomFlatbeds: additive for breakdown / equipment / lane clear.
  mechanicCustomVehicles: optional parts_run + fuel_runout gate — if the whitelist is empty, any vehicle is fine;
  if you list spawn names here, the player must be in the driver seat of one of those models to start those contracts.
]]
local cfgGaragesForMechanic = CMG.loadModule("cfg/cfg_garages")

local function mechanicWhitelistModelHashes(spawnIds)
    local out = {}
    if type(spawnIds) ~= "table" then
        return out
    end
    for i = 1, #spawnIds do
        local id = spawnIds[i]
        if type(id) == "string" and id ~= "" then
            local h = GetHashKey(id)
            if h and h ~= 0 then
                out[h] = true
            end
        end
    end
    return out
end

cfg.mechanicTowTruckModelHashes = mechanicWhitelistModelHashes(cfgGaragesForMechanic.mechanicCustomTowTrucks)
cfg.mechanicTowTruckModelHashes[GetHashKey("tcaracaraptormec")] = true

cfg.mechanicFlatbedModelHashes = mechanicWhitelistModelHashes(cfgGaragesForMechanic.mechanicCustomFlatbeds)
cfg.mechanicFlatbedModelHashes[GetHashKey("caracaraptorfb")] = true

cfg.mechanicWorkVehicleModelHashes = mechanicWhitelistModelHashes(cfgGaragesForMechanic.mechanicCustomVehicles)

return cfg
