--[[
    LEVEL 1 BEGINNER GUIDE — Smallarms
    =======================================

    File: cmg/prod/cfg/cfg_smallarms.lua
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
---@class (strict) smallArmsConfig
---@field locations table<string, smallArmsConfigLocation>
---@field pedModels Hash[]
---@field vehicleModels Hash[]
---@field pistolZone smallArmsPistolZoneConfig

---@class (strict) smallArmsPistolZoneConfig
---@field radius number
---@field height number

---@class (strict) smallArmsConfigLocation
---@field numToPick integer
---@field pistolZone boolean?
---@field positions smallArmsConfigPosition[]

---@class (strict) smallArmsConfigPosition
---@field van vector4?
---@field ped vector4?
---@field shop vector3
---@field pistolZone boolean?

---@type smallArmsConfig
local cfg = {} ---@diagnostic disable-line missing-fields

cfg.locations = {
    ["Any"] = {
        numToPick = 0,
        positions = {
            -- City Locations
            {
                van = vector4(-683.09008789063,-877.71429443359,24.309204101563,272.1259765625),
                ped = vector4(-683.24835205078,-879.19122314453,24.494506835938,184.25196838379),
                shop = vector3(-683.23107910156,-879.66931152344,24.499055862427)
            },
            {
                van = vector4(1198.9714355469,-1273.1604003906,35.025634765625,221.10237121582),
                ped = vector4(1199.7495117188,-1271.9077148438,35.2109375,311.81103515625),
                shop = vector3(1200.0999755859,-1271.5975341797,35.226734161377)
            },
            {
                van = vector4(1741.2263183594,-1633.4110107422,112.28210449219,150.23622131348),
                ped = vector4(1740.0791015625,-1632.4747314453,112.45056152344,59.52755355835),
                shop = vector3(1739.6254882813,-1632.2114257813,112.45796203613)
            },
            {
                van = vector4(-125.56483459473,-2662.5363769531,5.80810546875,0.0),
                ped = vector4(-124.14065551758,-2662.8264160156,5.993408203125,272.1259765625),
                shop = vector3(-123.59321594238,-2662.7971191406,6.0012731552124)
            },
            {
                van = vector4(1098.8308105469,-1981.5428466797,30.813232421875,235.27558898926),
                ped = vector4(1095.1120605469,-1978.9978027344,30.99853515625,65.196853637695),
                shop = vector3(1094.6517333984,-1978.6862792969,31.014646530151)
            },
            {
                van = vector4(879.40222167969,-2172.4877929688,30.324584960938,266.45669555664),
                ped = vector4(879.13848876953,-2173.8857421875,30.509887695313,167.24407958984),
                shop = vector3(879.09362792969,-2174.3825683594,30.51939201355)
            },
            {
                van = vector4(-469.54284667969,-1672.4439697266,18.8330078125,8.5039367675781),
                ped = vector4(-468.92306518555,-1676.1625976563,19.052001953125,198.42520141602),
                shop = vector3(-468.89129638672,-1676.8442382813,19.058664321899)
            },
            {
                van = vector4(-377.65713500977,180.17143249512,79.694458007813,272.1259765625),
                ped = vector4(-378.0791015625,181.83296203613,80.031494140625,0.0),
                shop = vector3(-378.07720947266,182.28266906738,80.079803466797)
            },
            {
                van = vector4(1240.3516845703,-438.23736572266,67.545776367188,161.57479858398),
                ped = vector4(1239.0725097656,-437.45935058594,67.731079101563,65.196853637695),
                shop = vector3(1238.5043945313,-437.23092651367,67.744041442871)
            },
            {
                van = vector4(1059.3099365234,-794.65057373047,58.076171875,42.519683837891),
                ped = vector4(1060.6944580078,-793.56921386719,58.261596679688,320.31497192383),
                shop = vector3(1061.2136230469,-793.07214355469,58.262729644775)
            },
            {
                van = vector4(157.97802734375,-1691.0769042969,29.24609375,235.27558898926),
                ped = vector4(156.77803039551,-1691.9868164063,29.448364257813,147.40158081055),
                shop = vector3(156.41160583496,-1692.474609375,29.449148178101)
            },
            {
                van = vector4(730.69451904297,-1290.9494628906,26.09521484375,272.1259765625),
                ped = vector4(727.25274658203,-1291.4110107422,26.280639648438,82.204727172852),
                shop = vector3(726.68408203125,-1291.1898193359,26.284212112427)
            },
            {
                van = vector4(-1069.8330078125,-1671.876953125,4.2747802734375,221.10237121582),
                ped = vector4(-1071.9692382813,-1669.0812988281,4.4263916015625,34.015747070313),
                shop = vector3(-1072.3631591797,-1668.5819091797,4.4438118934631)
            },
            {
                van = vector4(-1262.6241455078,-822.65936279297,16.895263671875,243.77952575684),
                ped = vector4(-1265.6702880859,-821.01098632813,17.097412109375,65.196853637695),
                shop = vector3(-1265.9949951172,-820.83819580078,17.099149703979)
            },
            {
                van = vector4(856.25933837891,-2119.8857421875,30.442504882813,130.39370727539),
                ped = vector4(858.94946289063,-2117.7758789063,30.644653320313,311.81103515625),
                shop = vector3(859.38287353516,-2117.455078125,30.653623580933)
            },
            {
                van = vector4(-1430.5582275391,-665.68353271484,26.617553710938,42.519683837891),
                ped = vector4(-1428.10546875,-668.32086181641,26.7861328125,226.77166748047),
                shop = vector3(-1427.7866210938,-668.62512207031,26.777456283569)
            },
            {
                van = vector4(596.17584228516,-2242.4306640625,5.7237548828125,263.6220703125),
                ped = vector4(595.68792724609,-2240.5187988281,5.9091796875,8.5039367675781),
                shop = vector3(595.79083251953,-2239.9536132813,5.9182720184326)
            },
            {
                van = vector4(-759.61315917969,373.85934448242,87.681274414063,0.0),
                ped = vector4(-759.52087402344,370.18023681641,87.86669921875,172.91339111328),
                shop = vector3(-759.50366210938,369.75704956055,87.871673583984)
            },
            {
                van = vector4(674.75604248047,251.01098632813,93.629272460938,59.52755355835),
                ped = vector4(676.0615234375,252.40879821777,93.781005859375,334.48818969727),
                shop = vector3(676.22784423828,252.70283508301,93.791023254395)
            },
            {
                van = vector4(220.41758728027,-2247.2570800781,5.6058349609375,269.29135131836),
                ped = vector4(219.96923828125,-2245.1472167969,5.892333984375,2.8346455097198),
                shop = vector3(219.9934387207,-2244.6174316406,5.9292192459106)
            },
            {
                van = vector4(276.10549926758,-3075.9296875,5.6226806640625,133.22833251953),
                ped = vector4(277.91207885742,-3076.7209472656,5.841796875,226.77166748047),
                shop = vector3(278.34942626953,-3077.1760253906,5.7745971679688)
            },
            {
                van = vector4(504.15823364258,-1494.6329345703,29.094482421875,272.1259765625),
                ped = vector4(504.40878295898,-1496.1494140625,29.279907226563,181.41732788086),
                shop = vector3(504.42620849609,-1496.6057128906,29.288303375244)
            },
            {
                van = vector4(1505.736328125,-2146.8791503906,76.880615234375,90.708656311035),
                ped = vector4(1509.1647949219,-2146.6945800781,77.099609375,269.29135131836),
                shop = vector3(1509.716796875,-2146.6940917969,77.118324279785)
            },
            -- Sandy Locations
            {
                van = vector4(8.2549457550049,3701.89453125,39.406616210938,104.88188934326),
                ped = vector4(12.000000953674,3703.0021972656,39.642456054688,283.4645690918),
                shop = vector3(12.432423591614,3703.142578125,39.659206390381)
            },
            {
                van = vector4(1523.7626953125,3767.3669433594,33.84619140625,42.519683837891),
                ped = vector4(1526.0307617188,3764.8220214844,34.04833984375,221.10237121582),
                shop = vector3(1526.4683837891,3764.2429199219,34.051155090332)
            },
            {
                van = vector4(895.51647949219,3604.2856445313,32.632934570313,82.204727172852),
                ped = vector4(899.31427001953,3603.9296875,32.801513671875,277.79528808594),
                shop = vector3(899.87939453125,3603.990234375,32.814262390137)
            },
            {
                van = vector4(1965.4813232422,3833.9736328125,31.807373046875,59.52755355835),
                ped = vector4(1966.4307861328,3835.4636230469,31.99267578125,331.65353393555),
                shop = vector3(1966.7622070313,3835.9467773438,32.006908416748)
            },
            {
                van = vector4(2011.2395019531,4970.1362304688,41.378051757813,116.22047424316),
                ped = vector4(2014.5362548828,4971.876953125,41.462280273438,300.47244262695),
                shop = vector3(2014.8992919922,4972.0771484375,41.462734222412)
            },
        }
    },
    ["Perm"] = {
        numToPick = 2,
        pistolZone = true,
        positions = {
            {
                shop = vector3(-1500.4978027344,-216.72758483887,48.889373779297)
            },
            {
                shop = vector3(334.12594604492,-1987.4694824219,25.207740783691)
            }
        }
    }
}

cfg.pedModels = {
    `g_m_y_lost_02`,
    `a_m_y_latino_01`,
    `mp_m_exarmy_01`,
    `g_m_m_chicold_01`,
    `a_m_m_socenlat_01`,
    `csb_ramp_hic`,
    `a_m_m_rurmeth_01`,
    `s_m_y_devinsec_01`,
    `csb_cletus`,
    `csb_customer`,
    `a_m_m_skidrow_01`,
    `s_m_y_dealer_01`,
    `a_m_o_soucent_02`,
    `a_m_m_og_boss_01`,
}

cfg.vehicleModels = {
    `gburrito2`,
}

cfg.pistolZone = {
    radius = 140.0,
    height = 500.0,
}

return cfg
