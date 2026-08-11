--[[
    LEVEL 1 BEGINNER GUIDE — Passthebomb
    =========================================

    File: cmg/prod/cfg/events/cfg_passthebomb.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: server event/minigame gameplay, specifically the Passthebomb feature.

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

cfg.minPlayers = 4

cfg.vehicleCategories = {
    ["Main"] = {
        ["Dominator"] = {
            model = `dominator7`,
            level = 10
        },
        ["Toros"] = {
            model = `toros`,
            level = 50
        },
        ["Tailgater"] = {
            model = `tailgater2`,
            level = 40
        },
        ["Coquette"] = {
            model = `coquette4`,
            level = 60
        },
        ["Vstr"] = {
            model = `vstr`,
            level = 20
        },
        ["Jester"] = {
            model = `jester4`,
            level = 5
        },
        ["Comet"] = {
            model = `comet6`,
            level = 0
        },
        ["Growler"] = {
            model = `growler`,
            level = 0
        },
        ["Tigon"] = {
            model = `tigon`,
            level = 70
        },
        ["Komoda"] = {
            model = `Komoda`,
            level = 30
        }
    }
}

cfg.locations = {
    ["Cyclone"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/K3l1t8v63EKhym0s-DnpoQ.json")),
        spawnpoints = {
            vector4(-1336.000488, -3116.390137, 31.716171, 352.849731),
            vector4(-1351.890015, -3114.969971, 31.139999, 349.760010),
            vector4(-1318.989990, -3113.719971, 31.150000, 16.190001),
            vector4(-1368.109985, -3107.649902, 31.139999, 332.399994),
            vector4(-1301.729980, -3106.489990, 31.120001, 21.790001),
            vector4(-1288.791992, -3098.293457, 31.524750, 60.031471),
            vector4(-1383.815186, -3097.655762, 31.456001, 319.872192),
            vector4(-1277.758667, -3085.561035, 31.495649, 60.096714),
            vector4(-1396.780029, -3082.800049, 31.139999, 305.640015),
            vector4(-1273.209961, -3076.939941, 31.150000, 59.290001),
            vector4(-1402.878418, -3071.258301, 31.504593, 290.208374),
            vector4(-1267.229980, -3060.620117, 31.139999, 74.480003),
            vector4(-1405.800049, -3060.120117, 31.150000, 273.820007),
            vector4(-1265.257324, -3049.816162, 31.424099, 107.872688),
            vector4(-1407.854614, -3043.954346, 31.736004, 290.194031),
            vector4(-1265.056763, -3036.376465, 31.636326, 125.014641),
            vector4(-1405.689941, -3028.959961, 31.150000, 257.070007),
            vector4(-1268.689941, -3022.629883, 31.110001, 102.410004),
            vector4(-1402.721313, -3017.450928, 31.515409, 242.239227),
            vector4(-1379.890015, -3001.489990, 31.110001, 124.290001),
            vector4(-1275.932861, -3006.638672, 31.458897, 129.600464),
            vector4(-1396.739990, -3006.810059, 31.150000, 230.119995),
            vector4(-1285.291992, -2994.292725, 31.472425, 123.060669),
            vector4(-1383.338501, -2991.461670, 31.465900, 242.383560),
            vector4(-1295.792725, -2985.792725, 31.475912, 161.552353),
            vector4(-1369.780029, -2981.780029, 31.139999, 200.880005),
            vector4(-1309.719971, -2978.889893, 31.120001, 156.919998),
            vector4(-1321.160034, -2975.899902, 31.120001, 162.330002),
            vector4(-1353.250000, -2975.820068, 31.129999, 189.860001),
            vector4(-1330.643433, -2973.340576, 31.495453, 178.490158),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1406.18, -3044.24, 70.37), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1338.0, -2974.02, 70.19), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1266.0, -3042.55, 70.34), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1336.78, -3115.19, 70.22), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1406.18, -3044.24, 70.37), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1338.0, -2974.02, 70.19), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1266.0, -3042.55, 70.34), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1336.78, -3115.19, 70.22), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-1336.19, -3045.03, 37.51), respawn = 60000 },
            { pos = vector3(-1338.77, -3045.54, 14.41), respawn = 60000 }
        },
        scenes = {
            {
                pos = vector3(-1481.41, -3041.72, 126.72),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 0
            },
            {
                pos = vector3(-1338.7, -2901.36, 120.36),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            },
            {
                pos = vector3(-1209.47, -3043.25, 112.4),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            },
            {
                pos = vector3(-1334.94, -3168.78, 116.84),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            }
        }
    },
    ["Block Fort"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fT2GoJKzQEumZ7Dt8zPP9g.json")),
        spawnpoints = {
            vector4(-966.372986, -995.595093, 592.203003, 120.610054),
            vector4(-951.304077, -1000.548096, 592.226624, 207.656143),
            vector4(-961.796814, -979.502747, 592.205566, 29.632845),
            vector4(-949.001038, -984.843628, 592.202942, 300.135223),
            vector4(-967.649414, -1037.947998, 606.686279, 173.681656),
            vector4(-1004.635254, -974.258423, 606.625610, 75.154465),
            vector4(-910.361938, -1005.848145, 606.721619, 252.936096),
            vector4(-945.775513, -939.887573, 606.674622, 352.479401),
            vector4(-1008.087402, -1041.071167, 599.414673, 298.500793),
            vector4(-1029.538818, -1007.479065, 599.418030, 298.654572),
            vector4(-969.059998, -1074.439941, 606.690002, 346.760010),
            vector4(-1037.001343, -1035.236206, 592.172485, 307.410980),
            vector4(-1037.310059, -956.929993, 606.630005, 256.040009),
            vector4(-904.341492, -937.760437, 599.398621, 135.515808),
            vector4(-884.427185, -969.965515, 599.483948, 130.919418),
            vector4(-929.665649, -1078.180542, 599.318481, 27.290005),
            vector4(-1018.846619, -919.849854, 599.392334, 212.038254),
            vector4(-899.302979, -1059.016479, 599.467590, 27.124144),
            vector4(-944.840027, -907.059998, 606.669983, 164.449997),
            vector4(-877.070007, -1022.260010, 606.719971, 68.860001),
            vector4(-987.060425, -901.309753, 599.398682, 212.132965),
            vector4(-879.440002, -945.869995, 592.219971, 118.779999),
            vector4(-903.148132, -1085.636230, 592.228516, 28.177275),
            vector4(-974.707397, -1105.831543, 599.416626, 358.854401),
            vector4(-1011.049988, -894.760010, 592.179993, 207.000000),
            vector4(-1067.312134, -946.207886, 599.386597, 253.116745),
            vector4(-937.749695, -873.678467, 599.416626, 167.618774),
            vector4(-847.197510, -1034.727661, 599.469604, 68.953606),
            vector4(-982.419983, -1134.050049, 592.229980, 343.660004),
            vector4(-1094.380005, -938.640015, 592.179993, 251.039993),
            vector4(-930.119995, -846.650024, 592.169983, 159.360001),
            vector4(-819.280029, -1042.060059, 592.219971, 69.019997),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-983.26, -943.14, 606.62), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-918.52, -967.79, 606.63), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-930.46, -1036.85, 606.7), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-994.97, -1012.25, 606.68), range = 5.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-956.63, -989.01, 592.19), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-877.96, -945.85, 591.79), respawn = 60000 },
            { pos = vector3(-1034.61, -1033.85, 591.74), respawn = 60000 }
        },
        bounds = {
            { vector3(-1104.69, -1270.52, 669.08), vector3(-211.4, -707.39, 541.24) }
        },
        scenes = {
            {
                pos = vector3(-769.43, -1050.66, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 0
            },
            {
                pos = vector3(-991.81, -1177.44, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            },
            {
                pos = vector3(-1129.71, -921.61, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            },
            {
                pos = vector3(-919.37, -810.07, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            }
        }
    },
    ["Arena"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/sp-NQSL6Y0KS5nmCywnn5w.json")),
        spawnpoints = {
            vector4(-2525.657959, -923.004517, 196.125397, 170.716995),
            vector4(-2525.989990, -873.940002, 196.139999, 145.690002),
            vector4(-2474.879883, -911.890015, 196.130005, 158.330002),
            vector4(-2572.923340, -947.540344, 196.125381, 212.399734),
            vector4(-2562.583496, -883.979309, 196.137558, 194.239807),
            vector4(-2485.088379, -871.358276, 196.135986, 171.844528),
            vector4(-2590.699951, -886.109985, 196.139999, 235.380005),
            vector4(-2537.689941, -997.179993, 196.130005, 190.490005),
            vector4(-2499.139893, -1001.657166, 196.125381, 192.044678),
            vector4(-2570.853516, -1017.724670, 196.134109, 192.061737),
            vector4(-2629.179932, -947.520020, 196.130005, 220.639999),
            vector4(-2642.722168, -890.436096, 196.137573, 204.786057),
            vector4(-2501.830078, -1096.550049, 180.740005, 328.149994),
            vector4(-2527.520020, -1101.489990, 180.740005, 50.410000),
            vector4(-2492.629883, -1108.469971, 180.740005, 284.769989),
            vector4(-2531.189941, -1118.910034, 180.740005, 99.599998),
            vector4(-2495.830078, -1125.969971, 180.740005, 229.919998),
            vector4(-2522.030029, -1131.180054, 180.740005, 149.460007),
            vector4(-2444.615967, -1220.878906, 196.146805, 13.902308),
            vector4(-2485.469971, -1233.550049, 196.139999, 11.230000),
            vector4(-2520.593018, -1237.803223, 196.136383, 5.156028),
            vector4(-2447.043701, -1282.110962, 196.124725, 30.593378),
            vector4(-2501.071533, -1301.302612, 196.136124, 352.031433),
            vector4(-2392.669922, -1282.189941, 196.139999, 43.639999),
            vector4(-2549.229980, -1316.189941, 196.139999, 339.279999),
            vector4(-2463.533691, -1335.275146, 196.137695, 28.315533),
            vector4(-2432.919922, -1341.630005, 196.149994, 55.849998),
            vector4(-2539.094238, -1353.107910, 196.119965, 358.493652),
            vector4(-2383.832275, -1330.536133, 196.147629, 29.387819),
            vector4(-2487.629883, -1353.660034, 196.149994, 324.959991),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2504.58, -1112.0, 219.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2517.019, -1114.99, 219.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2574.27, -829.38, 233.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2449.27, -1398.48, 233.41), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2524.9, -1055.03, 207.21), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2498.96, -1172.82, 207.02), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2574.27, -829.38, 233.41), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2449.27, -1398.48, 233.41), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-2476.6, -1105.99, 180.32), respawn = 60000 },
            { pos = vector3(-2547.23, -1121.61, 180.32), respawn = 60000 }
        },
        bounds = {
            { vector3(-2701.42, -1582.32, 382.92), vector3(-2351.8, -644.88, 138.53) }
        },
        scenes = {
            {
                pos = vector3(-2645.35, -982.83, 293.29),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 0
            },
            {
                pos = vector3(-2435.81, -940.16, 293.29),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            },
            {
                pos = vector3(-2374.23, -1247.98, 664.37),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            },
            {
                pos = vector3(-2580.74, -1296.71, 664.37),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            }
        }
    },
    ["Football"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fxVvFGgC4k28AJkBEOw_HA.json")),
        spawnpoints = {
            vector4(-1342.764038, -3094.862793, 524.720886, 1.152281),
            vector4(-1341.797363, -3056.369873, 524.725708, 187.662399),
            vector4(-1343.221924, -3136.417480, 524.715088, 2.834646),
            vector4(-1387.872559, -3093.626465, 524.715088, 269.291351),
            vector4(-1297.252686, -3095.076904, 524.715088, 90.708656),
            vector4(-1297.785278, -3114.271484, 524.720215, 91.384583),
            vector4(-1320.840942, -3140.576904, 524.718872, 351.812317),
            vector4(-1388.953369, -3116.548340, 524.894653, 265.789764),
            vector4(-1353.397217, -3044.192871, 524.733765, 91.807327),
            vector4(-1330.625732, -3044.480957, 524.733032, 270.533478),
            vector4(-1295.941650, -3070.965332, 524.720215, 75.288940),
            vector4(-1372.671387, -3138.148438, 524.639343, 351.560242),
            vector4(-1387.669922, -3066.569336, 524.796631, 265.789764),
            vector4(-1298.386841, -3137.670410, 524.715088, 42.519684),
            vector4(-1341.534546, -3032.966797, 524.725098, 4.123153),
            vector4(-1389.257202, -3136.879150, 524.715088, 314.645660),
            vector4(-1296.659302, -3045.164795, 524.731934, 87.874016),
            vector4(-1387.279175, -3043.582520, 524.731934, 269.291351),
            vector4(-1295.838745, -3024.396973, 524.602661, 91.036728),
            vector4(-1387.466797, -3018.614502, 524.725281, 265.789764),
            vector4(-1341.186279, -2991.862793, 524.720215, 182.932007),
            vector4(-1296.092285, -2995.120850, 524.715088, 87.874016),
            vector4(-1386.501099, -2993.696777, 524.715088, 272.125977),
            vector4(-1294.771606, -2974.428223, 524.681274, 91.036728),
            vector4(-1387.986938, -2968.623535, 524.720154, 259.848633),
            vector4(-1340.202148, -2952.342773, 524.715088, 172.913391),
            vector4(-1365.968018, -2948.967285, 524.720886, 203.667084),
            vector4(-1310.005371, -2950.013916, 524.704773, 199.866440),
            vector4(-1385.683472, -2951.208740, 524.715088, 223.937012),
            vector4(-1294.206543, -2951.683594, 524.715088, 133.228333),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1339.85, -2955.53, 542.25), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1343.85, -3133.91, 542.03), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1341.94, -3044.28, 524.73), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1339.85, -2955.53, 542.25), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1343.85, -3133.91, 542.03), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1341.94, -3044.28, 524.73), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-1340.57, -2968.31, 524.71), respawn = 60000 },
            { pos = vector3(-1342.98, -3120.58, 524.71), respawn = 60000 }
        },
        bounds = {
            { vector3(-1599.16, -3356.57, 500.18), vector3(-1069.02, -2756.58, 637.62) }
        },
        scenes = {
            {
                pos = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                pointAt = vector3(-1304.3077392578, -3096.4086914062, 533.94873046875),
                transitionTime = 0
            },
            {
                pos = vector3(-1304.3077392578, -3096.4086914062, 533.94873046875),
                pointAt = vector3(-1356.6988525391, -2999.6044921875, 532.4658203125),
                transitionTime = 10000
            },
            {
                pos = vector3(-1356.6988525391, -2999.6044921875, 532.4658203125),
                pointAt = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                transitionTime = 10000
            },
            {
                pos = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                pointAt = vector3(-1342.5098876953, -3132.8571777344, 528.62426757812),
                transitionTime = 10000
            }
        }
    },
    ["Rainbow"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/dWmY-NwsG0CitBnrvoIPxw.json")),
        spawnpoints = {
            vector4(2452.915283, 7368.114746, 780.013489, 180.738129),
            vector4(2452.804688, 7342.026855, 779.937256, 195.752777),
            vector4(2463.300537, 7342.149414, 780.118835, 195.885330),
            vector4(2441.310303, 7341.888672, 779.901550, 195.610138),
            vector4(2471.800537, 7342.113281, 780.043396, 195.995453),
            vector4(2431.315918, 7342.069824, 779.989685, 195.469009),
            vector4(2423.318115, 7342.034668, 780.014526, 205.662720),
            vector4(2484.294434, 7342.174316, 779.886597, 196.127228),
            vector4(2540.953857, 7331.947266, 806.359619, 87.874016),
            vector4(2364.619873, 7332.593262, 806.915771, 272.125977),
            vector4(2364.633057, 7309.094727, 806.915771, 269.291351),
            vector4(2540.835205, 7307.947266, 806.359619, 90.708656),
            vector4(2364.448242, 7286.505371, 806.898926, 280.629913),
            vector4(2540.611084, 7284.698730, 806.376465, 87.874016),
            vector4(2364.501221, 7263.125488, 806.898926, 272.125977),
            vector4(2540.742920, 7261.371582, 806.376465, 85.039368),
            vector4(2364.633057, 7239.375977, 806.915771, 269.291351),
            vector4(2540.808838, 7238.729492, 806.359619, 90.708656),
            vector4(2364.474609, 7216.035156, 806.898926, 272.125977),
            vector4(2540.980225, 7213.226562, 806.359619, 87.874016),
            vector4(2364.487793, 7192.971191, 806.898926, 272.125977),
            vector4(2540.808838, 7191.310059, 806.359619, 90.708656),
            vector4(2364.764893, 7169.340820, 806.915771, 272.125977),
            vector4(2541.006592, 7167.085938, 806.359619, 90.708656),
            vector4(2364.817627, 7145.446289, 806.915771, 274.960632),
            vector4(2540.571533, 7143.099121, 806.376465, 90.708656),
            vector4(2443.626465, 7112.231445, 780.013245, 20.693605),
            vector4(2456.616455, 7112.084473, 779.900024, 20.530354),
            vector4(2434.132568, 7112.377930, 780.012573, 20.922329),
            vector4(2469.599365, 7112.007812, 780.028381, 20.342550),
            vector4(2422.636719, 7112.383301, 780.101501, 21.096046),
            vector4(2481.862793, 7111.955566, 780.014526, 18.887745),
            vector4(2364.303223, 7122.316406, 806.898926, 272.125977),
            vector4(2540.822021, 7121.274902, 806.359619, 90.708656),
            vector4(2452.578857, 7084.662598, 780.013550, 5.934897),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2453.1560058594, 7200.791015625, 798.10327148438), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2452.8000488281, 7252.7338867188, 798.10327148438), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2683.6352539062, 7227.244140625, 869.84985351562), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2223.2438964844, 7226.59765625, 869.34423828125), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2453.1560058594, 7200.791015625, 798.10327148438), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2452.8000488281, 7252.7338867188, 798.10327148438), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2683.6352539062, 7227.244140625, 869.84985351562), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2223.2438964844, 7226.59765625, 869.34423828125), range = 15.0 }
        },
        boxes = {
            { pos = vector3(2452.4438476562, 7109.89453125, 780.00659179688), respawn = 60000 },
            { pos = vector3(2452.8791503906, 7344.2504882812, 780.00659179688), respawn = 60000 },
            { pos = vector3(2452.8264160156, 7253.2353515625, 780.00659179688), respawn = 60000 },
            { pos = vector3(2453.0373535156, 7201.6088867188, 780.00659179688), respawn = 60000 }
        },
        bounds = {
            { vector3(1998.965, 7433.926, 700.5185), vector3(2907.662, 7076.217, 1031.371) }
        },
        scenes = {
            {
                pos = vector3(2326.0087890625,7318.826171875,849.27612304688),
                pointAt = vector3(2513.9208984375,7233.8505859375,814.51513671875),
                transitionTime = 0
            },
            {
                pos = vector3(2513.9208984375,7233.8505859375,814.51513671875),
                pointAt = vector3(2250.1186523438,7211.1430664062,890.20434570312),
                transitionTime = 10000
            },
            {
                pos = vector3(2250.1186523438,7211.1430664062,890.20434570312),
                pointAt = vector3(2541.1384277344,7160.3471679688,937.33325195312),
                transitionTime = 10000
            },
            {
                pos = vector3(2541.1384277344,7160.3471679688,937.33325195312),
                pointAt = vector3(2326.0087890625,7318.826171875,849.27612304688),
                transitionTime = 10000
            }
        }
    },
    ["Canopy"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fxVvFGgC4k28AJkBEOw_HA.json")),
        spawnpoints = {
            vector4(-1454.512085, -2988.382812, 679.612244, 326.152649),
            vector4(-1462.595337, -3008.554199, 679.611206, 162.098053),
            vector4(-1421.538452, -3012.065918, 678.115723, 246.614166),
            vector4(-1408.325317, -2989.833008, 678.115723, 235.275589),
            vector4(-1427.604370, -3038.531982, 678.082031, 266.456696),
            vector4(-1386.567017, -2970.936279, 678.115723, 212.598419),
            vector4(-1425.019775, -3066.527588, 678.098877, 283.464569),
            vector4(-1381.042725, -2947.555420, 679.604919, 207.554840),
            vector4(-1387.295776, -2930.155029, 679.563660, 206.891998),
            vector4(-1359.639526, -2960.123047, 678.149414, 192.755920),
            vector4(-1437.840088, -3088.023682, 679.600281, 293.044800),
            vector4(-1456.475342, -3096.335205, 679.550476, 292.833557),
            vector4(-1413.415405, -3092.373535, 678.115723, 297.637787),
            vector4(-1331.406616, -2959.015381, 678.132568, 170.078735),
            vector4(-1394.109863, -3112.958252, 678.115723, 323.149597),
            vector4(-1304.175781, -2967.164795, 678.098877, 153.070862),
            vector4(-1368.316528, -3126.395508, 678.098877, 342.992126),
            vector4(-1296.864380, -2925.035156, 679.613098, 85.765175),
            vector4(-1280.624146, -2983.978027, 678.115723, 141.732285),
            vector4(-1283.612305, -2932.216064, 679.612244, 244.450256),
            vector4(-1340.650513, -3130.615479, 678.115723, 0.000000),
            vector4(-1386.491455, -3163.083740, 679.613098, 75.998352),
            vector4(-1264.259277, -3007.424072, 678.082031, 113.385826),
            vector4(-1373.210083, -3166.763916, 679.612488, 247.758469),
            vector4(-1313.248291, -3125.723145, 678.115723, 17.007874),
            vector4(-1256.426392, -3035.564941, 678.065186, 93.543304),
            vector4(-1288.378052, -3111.995605, 678.115723, 36.850395),
            vector4(-1245.865479, -2997.716553, 679.599243, 115.626587),
            vector4(-1257.942871, -3063.797852, 678.115723, 73.700790),
            vector4(-1268.967041, -3090.316406, 678.115723, 53.858269),
            vector4(-1306.963745, -3143.375488, 679.608276, 16.780701),
            vector4(-1227.943970, -2990.214355, 679.625916, 127.092575),
            vector4(-1299.257324, -3166.631104, 679.565247, 16.449564),
            vector4(-1222.684082, -3090.292969, 679.604065, 343.042786),
            vector4(-1226.238403, -3098.178955, 679.612854, 156.293396),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1231.0153808594,-2991.9165039062,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1386.5670166016,-2931.3098144531,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1453.6087646484,-3094.8000488281,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1301.6702880859,-3160.5759277344,679.5986328125), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1231.0153808594,-2991.9165039062,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1386.5670166016,-2931.3098144531,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1453.6087646484,-3094.8000488281,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1301.6702880859,-3160.5759277344,679.5986328125), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-1353.2043457031,-3016.4438476562,665.2255859375), respawn = 60000 },
            { pos = vector3(-1332.0395507812,-3072.9099121094,665.158203125), respawn = 60000 },
            { pos = vector3(-1368.8703613281,-3057.1516113281,665.12451171875), respawn = 60000 },
            { pos = vector3(-1314.1186523438,-3031.6220703125,665.27612304688), respawn = 60000 }
        },
        bounds = {
            { vector3(-1207.416, -2902.855, 657.3636), vector3(-1475.204, -3182.44, 780.4369) }
        },
        scenes = {
            {
                pos = vector3(-1399.5560302734,-2923.2790527344,727.77221679688),
                pointAt = vector3(-1235.9604492188,-2985.0856933594,687.58544921875),
                transitionTime = 0
            },
            {
                pos = vector3(-1235.9604492188,-2985.0856933594,687.58544921875),
                pointAt = vector3(-1451.0900878906,-3098.4526367188,687.56860351562),
                transitionTime = 10000
            },
            {
                pos = vector3(-1451.0900878906,-3098.4526367188,687.56860351562),
                pointAt = vector3(-1279.4637451172,-3097.4768066406,743.8974609375),
                transitionTime = 10000
            },
            {
                pos = vector3(-1279.4637451172,-3097.4768066406,743.8974609375),
                pointAt = vector3(-1399.5560302734,-2923.2790527344,727.77221679688),
                transitionTime = 10000
            }
        }
    },
    ["Creeper"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/bQYigRdQX0OxTZo3ZIAuFg.json")),
        spawnpoints = {
            vector4(-350.66372680664,310.82638549805,623.28637695312,192.75592041016+1),
            vector4(-332.42636108398,315.67913818359,623.28637695312,189.92126464844+1),
            vector4(-200.41317749023,-479.40658569336,623.26953125,8.5039367675781+1),
            vector4(-254.99340820312,-443.63076782227,623.23583984375,280.62991333008+1),
            vector4(-162.75164794922,-434.10989379883,623.26953125,96.377944946289+1),
            vector4(-235.66152954102,-488.9274597168,623.48876953125,8.5039367675781+1),
            vector4(-325.83294677734,316.06155395508,623.28637695312,189.92126464844+1),
            vector4(-304.15383911133,319.75384521484,623.28637695312,192.75592041016+1),
            vector4(-296.88790893555,320.92749023438,623.18530273438,192.75592041016+1),
            vector4(-289.88571166992,321.982421875,623.18530273438,192.75592041016+1),
            vector4(-318.25054931641,317.93408203125,623.28637695312,192.75592041016+1),
            vector4(-264.06594848633,237.63955688477,623.28637695312,99.212593078613+1),
            vector4(-257.44616699219,190.95825195312,623.18530273438,99.212593078613+1),
            vector4(-210.68571472168,-480.54064941406,623.32006835938,8.5039367675781+1),
            vector4(-222.42196655273,-484.82638549805,623.28637695312,8.5039367675781+1),
            vector4(-352.54943847656,215.53846740723,623.28637695312,280.62991333008+1),
            vector4(-344.9274597168,157.70111083984,623.28637695312,280.62991333008+1),
            vector4(-259.22637939453,-411.32305908203,623.26953125,280.62991333008+1),
            vector4(-311.48571777344,318.76483154297,623.26953125,192.75592041016+1),
            vector4(-173.92086791992,-380.72967529297,624.6513671875,96.377944946289+1),
            vector4(-172.27252197266,-479.82858276367,623.26953125,8.5039367675781+1),
            vector4(-179.89450073242,-480.77801513672,623.30322265625,8.5039367675781+1),
            vector4(-193.72747802734,-479.30108642578,623.30322265625,8.5039367675781+1),
            vector4(-252.68571472168,-465.982421875,623.26953125,274.96063232422+1),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-298.54943847656,27.112091064453,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-259.21319580078,-58.971424102783,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-265.88571166992,-111.81098937988,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-227.1692199707,-198.38241577148,623.69091796875), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-261.54724121094,32.716487884521,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-273.56042480469,-61.767028808594,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-251.90768432617,-110.14944458008,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-263.06372070312,-203.93406677246,623.67407226562), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-264.01318359375,-76.338455200195,623.69091796875), respawn = 60000 },
            { pos = vector3(-261.0989074707,-95.709892272949,623.69091796875), respawn = 60000 }
        },
        bounds = {
            { vector3(-133.8246, -544.8019, 601.619), vector3(-409.2521, 386.2829, 702.9837) }
        },
        scenes = {
            {
                pos = vector3(-236.61099243164,-474.29010009766,650.41455078125),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 0
            },
            {
                pos = vector3(-245.49890136719,-373.1340637207,658.43505859375),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 10000
            },
            {
                pos = vector3(-302.10989379883,20.400001525879,644.24755859375),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 10000
            },
            {
                pos = vector3(-399.40219116211,213.90330505371,679.0087890625),
                pointAt = vector3(-204.40878295898,-461.30108642578,634.1376953125),
                transitionTime = 10000
            }
        }
    },
    ["Target Abyss"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/5p4j2wmBCk2XateztGnVww.json")),
        spawnpoints = {
            vector4(252.535522, 6053.853027, 385.829651, 57.921867),
            vector4(269.923035, 6084.762695, 385.878174, 57.829357),
            vector4(220.676987, 6095.284668, 386.241302, 57.071972),
            vector4(289.424255, 6105.004883, 385.935028, 57.698162),
            vector4(253.747299, 6118.145996, 386.132904, 57.351723),
            vector4(204.042511, 6133.425781, 386.397369, 57.003284),
            vector4(236.414108, 6168.275879, 386.433624, 56.776321),
            vector4(149.069443, 6158.868652, 386.946259, 22.084938),
            vector4(200.022629, 6196.404785, 386.871063, 41.622086),
            vector4(13.898902, 6298.654785, 356.301025, 42.519684),
            vector4(26.874727, 6312.145020, 356.334717, 51.023624),
            vector4(45.112091, 6330.250488, 356.334717, 45.354328),
            vector4(58.430771, 6343.542969, 356.301025, 48.188972),
            vector4(-26.749523, 6323.458984, 356.283752, 71.230804),
            vector4(25.424599, 6375.134766, 356.293304, 2.892170),
            vector4(-20.066467, 6400.949707, 356.308716, 274.413483),
            vector4(-93.929672, 6348.013184, 356.284180, 317.480316),
            vector4(-45.442135, 6405.208008, 356.301880, 189.176468),
            vector4(9.797803, 6451.463867, 356.284180, 144.566910),
            vector4(-148.338455, 6356.057129, 356.284180, 45.354328),
            vector4(1.542857, 6505.477051, 356.284180, 53.858269),
            vector4(-48.780960, 6475.968750, 356.283508, 154.537964),
            vector4(-89.748566, 6454.459961, 356.257141, 228.617706),
            vector4(-27.568714, 6532.892090, 356.264252, 188.401245),
            vector4(-205.186813, 6411.705566, 356.267334, 226.771667),
            vector4(-54.764832, 6561.639648, 356.284180, 226.771667),
            vector4(-157.136810, 6510.215332, 356.300690, 228.248611),
            vector4(-213.850555, 6465.652832, 356.267334, 317.480316),
            vector4(-108.830765, 6569.973633, 356.284180, 133.228333),
            vector4(-146.808487, 6563.566406, 356.259460, 224.175980),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-94.905494689941,6511.2397460938,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-154.24615478516,6451.7670898438,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-108.15823364258,6405.5078125,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-49.186813354492,6465.2177734375,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(66.105499267578,6291.0200195312,356.30102539062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-279.01977539062,6635.7890625,356.30102539062), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1.0021934509277,6360.8569335938,336.94067382812), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(36.013191223145,6449.3012695312,337.46301269531), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-94.628570556641,6319.806640625,337.1259765625), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-89.65714263916,6390.8305664062,336.82275390625), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-29.736261367798,6449.6440429688,337.27770996094), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(11.736264228821,6526.4306640625,337.24389648438), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-55.147247314453,6502.2329101562,336.95751953125), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-142.54945373535,6417.455078125,336.18237304688), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-164.69010925293,6344.7954101562,336.55310058594), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-37.529670715332,6574.3911132812,336.97436523438), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-216.63296508789,6391.9780273438,337.34509277344), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-173.24835205078,6465.2045898438,337.31140136719), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-108.97581481934,6530.7163085938,336.68786621094), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-109.66152954102,6602.4790039062,336.53625488281), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-242.69010925293,6464.1889648438,337.59777832031), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-199.34504699707,6558.6196289062,336.38464355469), range = 25.0 }
        },
        boxes = {
            { pos = vector3(-242.67692565918,6599.1826171875,356.3515625), respawn = 60000 },
            { pos = vector3(35.696704864502,6321.2836914062,356.33471679688), respawn = 60000 }
        },
        bounds = {
            { vector3(-575.1422, 5993.301, 353.8809), vector3(397.5003, 6950.718, 478.4523) }
        },
        scenes = {
            {
                pos = vector3(218.83515930176,6244.2856445312,431.93994140625),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 0
            },
            {
                pos = vector3(-24.263732910156,6491.0639648438,363.78247070312),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            },
            {
                pos = vector3(-240.69889831543,6585.2705078125,419.16772460938),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            },
            {
                pos = vector3(-410.22857666016,6305.4462890625,528.2197265625),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            }
        }
    },
    ["Water Pool"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/KSTCyZCPQUaLq1plMssHbA.json")),
        spawnpoints = {
            vector4(-1437.443848, -1865.200317, 5.690702, 128.781677),
            vector4(-1473.032959, -1902.764893, 5.690063, 68.031494),
            vector4(-1478.380859, -1817.110229, 5.695915, 83.370094),
            vector4(-1519.353394, -1901.480835, 5.707717, 83.389725),
            vector4(-1473.296753, -1770.065918, 5.690063, 104.881889),
            vector4(-1557.982422, -1974.303345, 5.690063, 28.346457),
            vector4(-1486.852783, -1697.512085, 5.706909, 136.062988),
            vector4(-1558.958252, -1703.195557, 5.690063, 153.070862),
            vector4(-1626.493530, -1764.680786, 5.693543, 317.968719),
            vector4(-1601.993774, -1718.551392, 5.677300, 189.223785),
            vector4(-1627.003418, -1994.003662, 5.694915, 5.832709),
            vector4(-1590.936279, -2036.584595, 5.706909, 11.338582),
            vector4(-1660.839600, -2012.070312, 5.690063, 351.496063),
            vector4(-1706.912354, -1906.113403, 5.695872, 325.637268),
            vector4(-1592.188965, -1636.654907, 5.690063, 161.574799),
            vector4(-1727.151978, -1841.228516, 5.697225, 325.343292),
            vector4(-1671.768433, -2044.966553, 5.634339, 331.648010),
            vector4(-1717.933472, -1763.166504, 5.653643, 189.324203),
            vector4(-1661.854980, -1662.356079, 5.690063, 201.259842),
            vector4(-1661.973633, -1662.356079, 5.690063, 187.086609),
            vector4(-1738.417236, -2003.688599, 5.690444, 331.546875),
            vector4(-1775.578003, -1945.925293, 5.690063, 311.811035),
            vector4(-1732.462280, -1684.425537, 5.691341, 231.539352),
            vector4(-1793.498901, -1839.336304, 5.690063, 272.125977),
            vector4(-1776.698853, -1728.580200, 5.690063, 229.606293),
            vector4(-1776.778076, -1728.567017, 5.690063, 243.779526),
            vector4(-1808.172607, -1958.727173, 5.707944, 332.130768),
            vector4(-1832.782471, -1898.334106, 5.706909, 286.299194),
            vector4(-1832.835205, -1897.661499, 5.706909, 289.133850),
            vector4(-1832.637329, -1776.210938, 5.706909, 246.614166),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1643.9604492188,-1850.1494140625,9.043212890625), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1644.9362792969,-1824.3692626953,9.09375), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1621.9252929688,-1836.3824462891,9.043212890625), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1643.9604492188,-1850.1494140625,9.043212890625), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1644.9362792969,-1824.3692626953,9.09375), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1621.9252929688,-1836.3824462891,9.043212890625), range = 15.0 },
        },
        boxes = {
            { pos = vector3(-1663.7670898438,-1792.24609375,5.6900634765625), respawn = 120000 },
            { pos = vector3(-1585.0812988281,-1836.9494628906,5.6900634765625), respawn = 120000 },
            { pos = vector3(-1662.158203125,-1882.2857666016,5.6900634765625), respawn = 120000 },
        },
        bounds = {
            { vector3(-1921.023, -2117.201, -6.581688), vector3(-1317.925, -1529.205, 65.74789) }
        },
        scenes = {
            {
                pos = vector3(-1334.7956542969,-1842.3824462891,105.32312011719),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 0
            },
            {
                pos = vector3(-1559.0373535156,-1966.4439697266,24.983154296875),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            },
            {
                pos = vector3(-1801.5296630859,-1917.0856933594,32.076904296875),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            },
            {
                pos = vector3(-1761.9692382812,-1634.2416992188,60.485717773438),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            }
        }
    },
    ["Football Hub"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/tMPO7CZUyU6xXRYtcwfk5w.json")),
        spawnpoints = {
            vector4(3446.835205, 5162.755859, 233.398560, 218.267715),
            vector4(3430.096436, 5187.707031, 196.524414, 159.148422),
            vector4(3471.107666, 5163.882324, 196.318024, 70.865303),
            vector4(3389.868164, 5193.705566, 233.398560, 150.236221),
            vector4(3394.035156, 5230.694336, 233.398560, 223.937012),
            vector4(3383.064209, 5202.088867, 196.480423, 241.829376),
            vector4(3460.219727, 5113.173828, 233.398560, 110.551186),
            vector4(3364.882324, 5175.650879, 233.411392, 234.942352),
            vector4(3454.999023, 5111.367676, 196.337891, 70.823662),
            vector4(3366.431641, 5161.513672, 196.474838, 241.874451),
            vector4(3356.228516, 5142.988770, 233.398560, 198.425201),
            vector4(3353.100586, 5130.340332, 196.401199, 241.946747),
            vector4(3437.139160, 5064.699707, 196.479950, 70.800201),
            vector4(3437.709961, 5055.349609, 233.398560, 96.377945),
            vector4(3337.124023, 5089.369629, 196.485245, 241.980652),
            vector4(3331.265869, 5079.652832, 233.398560, 218.267715),
            vector4(3423.932373, 5033.236328, 196.481384, 65.732635),
            vector4(3398.986328, 5027.061523, 233.408615, 197.291901),
            vector4(3348.145020, 5041.767090, 233.398560, 110.551186),
            vector4(3418.021973, 5001.415527, 233.398560, 51.023624),
            vector4(3321.401611, 5050.498535, 196.389709, 242.028580),
            vector4(3410.799805, 4997.789062, 196.353271, 70.771187),
            vector4(3311.195557, 5024.426270, 233.398560, 195.590546),
            vector4(3309.175293, 5016.890137, 196.448975, 242.102264),
            vector4(3398.074219, 4957.730469, 233.410400, 127.368637),
            vector4(3365.657227, 4955.644043, 233.398560, 340.157471),
            vector4(3298.383301, 4989.167480, 196.410553, 242.173523),
            vector4(3384.401855, 4946.265625, 196.460403, 340.177399),
            vector4(3290.637451, 4962.989258, 233.398560, 280.629913),
            vector4(3284.085449, 4951.913086, 196.483810, 242.227188),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3324.7912597656,4917.3759765625,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3378.7648925781,5055.9428710938,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3430.2197265625,5187.5341796875,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3310.8791503906,4881.138671875,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3324.7912597656,4917.3364257812,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3370.6550292969,5035.6220703125,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3391.3186035156,5088.9228515625,236.12817382812), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3425.6572265625,5177.4462890625,236.19555664062), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3317.8154296875,4898.966796875,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3348.8439941406,4978.0747070312,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3362.7297363281,5015.7758789062,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3379.9384765625,5059.0815429688,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3396.8835449219,5103.4946289062,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3438.421875,5211.2836914062,236.19555664062), range = 15.0 },
        },
        boxes = {
            { pos = vector3(3311.1296386719,4880.3735351562,236.19555664062), respawn = 60000 },
            { pos = vector3(3358.6682128906,4994.3603515625,196.48059082031), respawn = 60000 }
        },
        bounds = {
            { vector3(3552.24, 5267.837, 190.9137), vector3(3171.393, 4793.695, 400.3567) }
        },
        scenes = {
            {
                pos = vector3(3365.2087402344,5229.7846679688,278.40441894531),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 0
            },
            {
                pos = vector3(3459.0725097656,5082.2109375,239.0263671875),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            },
            {
                pos = vector3(3418.5759277344,4907.8813476562,308.17797851562),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            },
            {
                pos = vector3(3277.2922363281,4870.8393554688,240.59338378906),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            }
        }
    },
    ["Mounds"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/QHmFVXPtnkmHvBW6gMEMyg.json")),
        spawnpoints = {
            vector4(491.38021850586,-1609.3055419922,265.85131835938,323.14959716797),
            vector4(452.017578125,-1669.2263183594,265.85131835938,136.06298828125),
            vector4(494.76922607422,-1739.8681640625,250.93920898438,121.88976287842),
            vector4(312.21099853516,-1777.3319091797,250.92236328125,73.700790405273),
            vector4(359.03735351562,-1678.5230712891,243.01977539062,351.49606323242),
            vector4(269.60440063477,-1671.7054443359,243.01977539062,0.0),
            vector4(174.13186645508,-1682.4923095703,243.01977539062,5.6692910194397),
            vector4(139.58242797852,-1731.4681396484,258.23510742188,249.44882202148),
            vector4(118.41758728027,-1767.7318115234,265.46374511719,306.14172363281),
            vector4(29.208793640137,-1718.123046875,265.41320800781,19.842519760132),
            vector4(-38.610988616943,-1579.7934570312,276.71936035156,306.14172363281),
            vector4(-55.832962036133,-1496.5318603516,276.71936035156,204.09449768066),
            vector4(-42.263736724854,-1444.9846191406,276.71936035156,325.98425292969),
            vector4(35.81538772583,-1455.8901367188,262.90258789062,255.11810302734),
            vector4(145.95166015625,-1504.8923339844,267.064453125,0.0),
            vector4(165.32307434082,-1599.9428710938,267.064453125,195.5905456543),
            vector4(306.35604858398,-1630.7208251953,230.146484375,53.858268737793),
            vector4(260.28131103516,-1559.3275146484,230.146484375,252.28346252441),
            vector4(364.8132019043,-1567.3978271484,243.03662109375,0.0),
            vector4(408.25054931641,-1510.0219726562,243.03662109375,48.188972473145),
            vector4(349.84616088867,-1452.7912597656,251.51208496094,5.6692910194397),
            vector4(291.0725402832,-1477.7274169922,249.69226074219,110.55118560791),
            vector4(141.03297424316,-1458.0395507812,243.05346679688,221.10237121582),
            vector4(229.97802734375,-1419.0856933594,235.48791503906,243.77952575684),
            vector4(152.42637634277,-1373.4989013672,238.68933105469,79.370079040527),
            vector4(154.94505310059,-1579.859375,267.064453125,280.62991333008),
            vector4(146.65054321289,-1406.2945556641,259.01025390625,257.95275878906),
            vector4(258.67254638672,-1674.2241210938,243.01977539062,238.11022949219),
            vector4(289.34506225586,-1589.4593505859,244.21606445312,325.98425292969),
            vector4(283.35824584961,-1598.123046875,244.24987792969,147.40158081055)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(174.25054931641,-1624.9846191406,267.064453125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(155.88131713867,-1288.5626220703,257.07250976562), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(388.48352050781,-1421.1296386719,230.88793945312), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(381.48132324219,-1771.3319091797,250.80444335938), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(50.004398345947,-1569.3626708984,243.0703125), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(174.25054931641,-1624.9846191406,267.064453125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(155.88131713867,-1288.5626220703,257.07250976562), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(388.48352050781,-1421.1296386719,230.88793945312), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(381.48132324219,-1771.3319091797,250.80444335938), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(50.004398345947,-1569.3626708984,243.0703125), range = 15.0 },
        },
        boxes = {
            { pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), respawn = 60000 },
            { pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), respawn = 60000 },
            { pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), respawn = 60000 },
            { pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), respawn = 60000 },
            { pos = vector3(174.25054931641,-1624.9846191406,267.064453125), respawn = 60000 },
            { pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), respawn = 60000 }
        },
        bounds = {
            { vector3(638.1794, -1240.661, 159.0924), vector3(-121.7662, -1824.227, 285.7914) }
        },
        scenes = {
            {
                pos = vector3(-71.525268554688,-1687.9516601562,369.88208007812),
                pointAt = vector3(285.20440673828,-1595.5516357422,244.24987792969),
                transitionTime = 0
            },
            {
                pos = vector3(221.90769958496,-1734.3297119141,271.15893554688),
                pointAt = vector3(285.20440673828,-1595.5516357422,244.24987792969),
                transitionTime = 10000
            },
            {
                pos = vector3(282.09231567383,-1483.9252929688,279.88720703125),
                pointAt = vector3(521.8681640625,-1523.3538818359,277.17431640625),
                transitionTime = 10000
            },
            {
                pos = vector3(450.54064941406,-1274.1098632812,357.46362304688),
                pointAt = vector3(521.8681640625,-1523.3538818359,277.17431640625),
                transitionTime = 10000
            }
        }
    }
}

cfg.handlings = {
    [`dominator7`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`toros`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`tailgater2`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`coquette4`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`vstr`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`jester4`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`comet6`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`growler`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`tigon`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`komoda`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    }
}

return cfg
