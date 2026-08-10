--[[
    BEGINNER GUIDE — Garbage
    ========================

    File: cmg/prod/cfg/cfg_garbage.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
-- Garbage job: truck depot + routes (each route = one stop, all bin positions in that area).
local cfg = {}

cfg.jobName = "Garbage"
cfg.maxPartySize = 4
cfg.vehicleModel = "trash"
-- RPEmotes ["gbag"] (missfbi4prepp1 / _idle_garbage_man): same prop, bone 28422, placement below.
cfg.bagPropModel = "prop_cs_street_binbag_01"
cfg.bagAttachBone = 28422
cfg.bagAttach = { 0.0, 0.04, -0.26, 0.0, 0.0, 0.0 }
-- Second bag (dual carry): SKEL_L_Hand; { x,y,z, rx,ry,rz } — rz mirrors yaw; rx tilts opening toward ground (was lying sideways “left”).
cfg.bagAttachSecondBone = 18905
cfg.bagAttachSecond = { 0.0, 0.0, -0.38, 0.0, 0.0, 180.0 }
-- Street wheelie bin; player presses E at the bin to pull a bag (client prop + server validates coords).
cfg.binPropModel = "prop_bin_08a"

-- One or more truck bays (vector4). First bay in range of the leader with no vehicle within truckSpawnClearance is used.
cfg.truckSpawns = {
    vector4(-354.8835144043,-1528.2725830078,27.695922851562,272.1259765625),
    vector4(-341.47253417969,-1516.6549072266,27.712768554688,175.74803161621),
    vector4(-327.28350830078,-1519.859375,27.527465820312,280.62991333008),
}
cfg.truckSpawnClearance = 6.0
-- Leader must be within this distance of a chosen bay to start a run.
cfg.jobStartMaxDistance = 50.0
cfg.baseReturn = vector3(-336.86242675781,-1522.6812744141,27.74719619751)

cfg.bagPickupRadius = 2.2
cfg.binInteractRadius = 1.85
cfg.truckDepositRadius = 3.8
-- Leader must be within this distance of baseReturn to press finish (use >= baseTruckCompleteRadius so valid truck parking still allows prompt while in cab).
cfg.baseCompleteRadius = 25.0
-- Job truck must be within this distance of baseReturn for the leader to finish (leader can be on foot).
cfg.baseTruckCompleteRadius = 22.0
cfg.completeRequiresTruck = true

cfg.truckDepositLocalOffset = vector3(0.0, -3.8, 0.35)
-- At least one of these door indices must be open past min ratio to deposit (trash truck: try 2/3 rear + 5 boot).
cfg.truckDepositDoorIndices = {5, 2, 3}
cfg.truckDepositDoorMinRatio = 0.12
-- After server confirms deposit: ms to wait before removing bag prop/weapon (lets throw anim read).
cfg.depositBagRemoveDelayMs = 850

-- Bin Scrounge skill: dirty cash roll on bag pickup (server uses tier 1–5% separately in sv_garbage).
cfg.dirtyBinFind = {
    minAmount = 10000,
    maxAmount = 100000,
}

--[[
  routes[r].stops[1].bags = vector3 list (bin / pickup spots).
  Derived from area configs (Loc1-Loc5): one route per area, single stop with all bins.
]]
cfg.routes = {
    {
        stops = {
            {
                bags = {
                    vector3(-1264.1295, -824.8027, 16.4228),
                    vector3(-1268.9218, -828.4391, 16.4678),
                    vector3(-1262.9154, -826.7088, 16.3759),
                    vector3(-1280.8444, -835.6925, 16.5228),
                    vector3(-1285.4049, -829.7740, 16.4085),
                    vector3(-1287.1858, -831.7243, 16.4873),
                    vector3(-1285.4664, -824.3659, 16.5010),
                    vector3(-1284.1257, -799.7050, 17.0244),
                    vector3(-1286.8530, -799.5106, 16.9855),
                    vector3(-1299.8643, -803.6442, 16.9868),
                    vector3(-1301.2631, -806.2493, 16.8710),
                    vector3(-1306.4834, -799.1320, 16.8712),
                    vector3(-1308.6213, -796.9801, 16.9670),
                    vector3(-1299.9502, -783.9673, 17.2019),
                    vector3(-1300.4698, -782.3044, 17.3265),
                    vector3(-1306.1401, -771.8212, 19.1525),
                    vector3(-1321.8707, -775.5303, 19.3169),
                    vector3(-1323.7860, -771.7714, 19.5862),
                    vector3(-1324.3123, -768.3235, 19.7779),
                    vector3(-1325.7537, -766.7503, 19.8499),
                    vector3(-1341.8351, -760.9457, 19.5926),
                    vector3(-1343.5658, -762.1649, 19.5929),
                    vector3(-1349.9286, -758.7980, 21.7893),
                    vector3(-1336.7625, -741.8473, 21.7322),
                },
            },
        },
    },
    {
        stops = {
            {
                bags = {
                    vector3(-141.0130, -1628.2512, 32.7429),
                    vector3(-139.8686, -1625.6934, 32.5593),
                    vector3(-157.2027, -1666.3431, 32.9133),
                    vector3(-168.0887, -1661.8927, 32.8475),
                    vector3(-165.6185, -1660.2441, 32.6371),
                    vector3(-164.7689, -1659.7020, 32.5976),
                    vector3(-160.7748, -1670.1317, 33.0473),
                    vector3(-161.5689, -1672.5356, 32.4357),
                    vector3(-162.1799, -1673.2296, 32.4142),
                    vector3(-143.3896, -1650.8444, 31.8917),
                    vector3(-143.0115, -1650.2867, 31.8621),
                    vector3(-143.9718, -1630.8054, 32.2703),
                    vector3(-143.3951, -1630.2285, 32.2311),
                    vector3(-121.9746, -1622.2192, 31.5635),
                    vector3(-105.3690, -1605.9321, 31.0764),
                    vector3(-100.6263, -1579.8811, 30.9737),
                    vector3(-101.7136, -1581.1531, 31.0867),
                    vector3(-201.4909, -1692.2092, 33.4758),
                    vector3(-51.6025, -1662.1720, 28.7297),
                    vector3(-228.9406, -1637.5586, 33.2081),
                },
            },
        },
    },
    {
        stops = {
            {
                bags = {
                    vector3(6.7689, -1029.3663, 28.4273),
                    vector3(8.6089, -1029.8416, 28.5827),
                    vector3(-8.3397, -1037.1144, 28.3153),
                    vector3(-18.8888, -1036.1060, 28.3074),
                    vector3(-21.1669, -1035.2896, 28.2354),
                    vector3(-33.2411, -1030.8281, 28.1780),
                    vector3(-34.6058, -1029.8757, 28.2194),
                    vector3(-2.7021, -1082.2042, 26.0842),
                    vector3(-3.4998, -1084.2516, 26.0726),
                    vector3(-36.9748, -1121.7432, 25.7391),
                    vector3(32.8413, -1009.7021, 28.8249),
                    vector3(49.2477, -1067.3300, 28.9964),
                    vector3(48.2201, -1068.9658, 28.9988),
                    vector3(18.4722, -1118.9470, 28.3204),
                },
            },
        },
    },
    {
        stops = {
            {
                bags = {
                    vector3(-44.5846, -1299.8431, 28.5477),
                    vector3(-44.6879, -1285.7317, 28.4783),
                    vector3(-49.9649, -1266.3652, 28.6041),
                    vector3(-55.8673, -1266.2020, 28.6029),
                    vector3(-78.2553, -1266.7168, 28.5990),
                    vector3(-80.6487, -1266.7460, 28.6329),
                    vector3(-86.5634, -1278.1875, 28.5839),
                    vector3(-86.5765, -1287.4929, 28.6009),
                    vector3(-86.5172, -1298.5403, 28.6985),
                    vector3(-79.9456, -1313.1327, 28.6149),
                    vector3(-70.1392, -1312.9327, 28.6746),
                    vector3(-49.1114, -1315.0305, 28.6279),
                    vector3(-86.3781, -1330.2723, 28.6724),
                    vector3(-50.6875, -1349.7390, 28.7146),
                    vector3(-38.7960, -1351.1110, 28.6975),
                    vector3(-28.0723, -1351.2426, 28.6984),
                    vector3(2.3304, -1350.6440, 28.5996),
                    vector3(2.8675, -1387.2550, 28.6466),
                    vector3(0.6603, -1387.3597, 28.6764),
                    vector3(-18.3703, -1390.7369, 28.6834),
                    vector3(-18.2433, -1388.5934, 28.7534),
                    vector3(-10.7324, -1309.4833, 28.6446),
                    vector3(-22.3615, -1294.7239, 28.7640),
                },
            },
        },
    },
    {
        stops = {
            {
                bags = {
                    vector3(156.9748, -1307.3336, 28.6055),
                    vector3(155.8380, -1309.2783, 28.5794),
                    vector3(136.7120, -1314.2502, 28.5925),
                    vector3(122.7098, -1327.0269, 28.7874),
                    vector3(120.8579, -1328.5330, 28.7608),
                    vector3(105.8675, -1316.4121, 28.5914),
                    vector3(103.8196, -1317.3258, 28.6252),
                    vector3(92.8967, -1305.7192, 28.6412),
                    vector3(91.8522, -1303.8644, 28.6015),
                    vector3(84.8366, -1291.5573, 28.6287),
                    vector3(90.0208, -1286.0284, 28.7338),
                    vector3(91.9622, -1284.7465, 28.6744),
                    vector3(97.0241, -1282.9956, 28.6372),
                    vector3(144.2933, -1259.8513, 29.1107),
                    vector3(145.5043, -1262.2484, 29.9207),
                    vector3(146.9817, -1290.1985, 28.6862),
                    vector3(145.0994, -1291.3458, 28.7399),
                    vector3(166.5458, -1293.2191, 28.7512),
                    vector3(165.6605, -1287.1000, 28.5723),
                    vector3(201.3584, -1265.9303, 28.5398),
                    vector3(184.2626, -1250.2898, 28.4887),
                    vector3(182.3322, -1249.7029, 28.4637),
                    vector3(194.1722, -1294.4348, 28.6087),
                    vector3(188.4340, -1319.9382, 28.6996),
                    vector3(166.7802, -1344.9294, 28.7385),
                    vector3(165.8455, -1346.5449, 28.6964),
                    vector3(162.8205, -1350.3926, 28.6250),
                    vector3(140.4577, -1362.9507, 28.7085),
                    vector3(138.7396, -1361.7942, 28.7295),
                },
            },
        },
    },
}

-- Progression: cmg_garbage (bag XP in cfg_xp.garbageBag.jobXP). Bag pay = base * (1 + payBonus) * grind mult (server).
-- Same pay curve / copy as cfg_mechanic (linear to max: level 100 => +200% on base).
cfg.levels = {}
for lvl = 1, 100 do
    local payBonus = (lvl / 100) * 2.0
    local desc = string.format("%d%% extra per bag.", math.floor(payBonus * 100 + 0.5))
    cfg.levels[lvl] = {
        name = string.format("Level %d", lvl),
        title = "Pay",
        icon = "fa-coins",
        description = desc,
        payBonus = payBonus,
    }
end

-- XP cost to advance from level N to N+1 (entries 1..99 → max level 100).
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

cfg.defaultJobTruckKey = "job_trash"
cfg.defaultJobTruckName = "Garbage Truck"

return cfg
