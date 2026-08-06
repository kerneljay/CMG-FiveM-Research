---@type CasinoSlotConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.locations = {
    ["Diamond Casino"] = {
        centerPosition = vector3(0.0, 0.0, 0.0),
        eventRadius = 0.0,
        requiredBucketId = 0,
        machines = {
            {
                type = "KnifeAfterDark",
                position = vector3(952.217529, 54.740784, 79.988983),
                chairPosition = vector3(951.539062, 55.164719, 79.987999),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(952.314087, 54.816055, 81.094749),
                    vector3(952.250549, 54.714287, 81.095055),
                    vector3(952.186951, 54.612522, 81.095352),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(952.571533, 51.886127, 79.996994),
                chairPosition = vector3(952.147583, 51.207691, 79.999001),
                heading = 327.99996948242,
                rotation = vector3(-0.143511, -0.070537, -32.000095),
                reelPositions = {
                    vector3(952.496277, 51.982685, 81.102745),
                    vector3(952.598022, 51.919094, 81.102898),
                    vector3(952.699829, 51.855507, 81.103043),
                },
            },
            {
                type = "Evacuator",
                position = vector3(952.613708, 55.374779, 79.987106),
                chairPosition = vector3(951.935242, 55.798714, 79.986122),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(952.710266, 55.450050, 81.092873),
                    vector3(952.646729, 55.348282, 81.093178),
                    vector3(952.583130, 55.246517, 81.093475),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(953.170837, 51.511631, 79.995941),
                chairPosition = vector3(952.746887, 50.833195, 79.997841),
                heading = 328.0,
                rotation = vector3(-0.135868, 0.084326, -31.999813),
                reelPositions = {
                    vector3(953.095581, 51.608189, 81.102013),
                    vector3(953.197327, 51.544598, 81.101837),
                    vector3(953.299133, 51.481010, 81.101662),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(953.017029, 56.020168, 79.985199),
                chairPosition = vector3(952.338562, 56.444103, 79.984215),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(953.113586, 56.095440, 81.090965),
                    vector3(953.050049, 55.993671, 81.091270),
                    vector3(952.986450, 55.891907, 81.091568),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(953.416199, 56.658928, 79.983315),
                chairPosition = vector3(952.737732, 57.082863, 79.982330),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(953.512756, 56.734200, 81.089081),
                    vector3(953.449219, 56.632431, 81.089386),
                    vector3(953.385620, 56.530666, 81.089684),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(953.769287, 51.137688, 79.994911),
                chairPosition = vector3(953.345337, 50.459251, 79.996811),
                heading = 328.0,
                rotation = vector3(-0.135868, 0.084326, -31.999813),
                reelPositions = {
                    vector3(953.694031, 51.234245, 81.100983),
                    vector3(953.795776, 51.170654, 81.100807),
                    vector3(953.897583, 51.107067, 81.100632),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(953.819458, 57.304287, 79.981407),
                chairPosition = vector3(953.140991, 57.728222, 79.980423),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(953.916016, 57.379559, 81.087173),
                    vector3(953.852478, 57.277790, 81.087479),
                    vector3(953.788879, 57.176025, 81.087776),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(954.226318, 57.955360, 79.979485),
                chairPosition = vector3(953.547852, 58.379295, 79.979485),
                heading = 238.0,
                rotation = vector3(0.000000, -0.000000, -122.000000),
                reelPositions = {
                    vector3(954.322876, 58.030632, 81.085487),
                    vector3(954.259338, 57.928864, 81.085487),
                    vector3(954.195740, 57.827099, 81.085487),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(956.020264, 52.280151, 79.979485),
                chairPosition = vector3(956.705994, 51.868122, 79.978500),
                heading = 58.99995803833,
                rotation = vector3(0.070537, -0.143512, 59.000057),
                reelPositions = {
                    vector3(955.925049, 52.203209, 81.085251),
                    vector3(955.986816, 52.306072, 81.085556),
                    vector3(956.048645, 52.408932, 81.085854),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(956.415649, 52.938099, 79.981407),
                chairPosition = vector3(957.101379, 52.526070, 79.980423),
                heading = 58.99995803833,
                rotation = vector3(0.070537, -0.143512, 59.000057),
                reelPositions = {
                    vector3(956.320435, 52.861156, 81.087173),
                    vector3(956.382202, 52.964020, 81.087479),
                    vector3(956.444031, 53.066879, 81.087776),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(956.807800, 53.590446, 79.983315),
                chairPosition = vector3(957.493530, 53.178417, 79.982330),
                heading = 58.99995803833,
                rotation = vector3(0.070537, -0.143512, 59.000057),
                reelPositions = {
                    vector3(956.712585, 53.513504, 81.089081),
                    vector3(956.774353, 53.616367, 81.089386),
                    vector3(956.836182, 53.719227, 81.089684),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(956.853882, 58.805462, 79.996994),
                chairPosition = vector3(957.277832, 59.483898, 79.994987),
                heading = 147.99995422363,
                rotation = vector3(0.143511, 0.070537, 147.999893),
                reelPositions = {
                    vector3(956.929138, 58.708904, 81.103249),
                    vector3(956.827393, 58.772495, 81.103096),
                    vector3(956.725586, 58.836082, 81.102951),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(957.195496, 54.236031, 79.985199),
                chairPosition = vector3(957.881226, 53.824001, 79.984215),
                heading = 58.99995803833,
                rotation = vector3(0.070537, -0.143512, 59.000057),
                reelPositions = {
                    vector3(957.100281, 54.159088, 81.090965),
                    vector3(957.162048, 54.261951, 81.091270),
                    vector3(957.223877, 54.364811, 81.091568),
                },
            },
            {
                type = "Evacuator",
                position = vector3(957.587769, 54.888565, 79.987106),
                chairPosition = vector3(958.273499, 54.476536, 79.986122),
                heading = 58.99995803833,
                rotation = vector3(0.070537, -0.143512, 59.000057),
                reelPositions = {
                    vector3(957.492554, 54.811623, 81.092873),
                    vector3(957.554321, 54.914486, 81.093178),
                    vector3(957.616150, 55.017345, 81.093475),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(957.460999, 58.426075, 79.996994),
                chairPosition = vector3(957.884949, 59.104515, 79.996994),
                heading = 147.99998474121,
                rotation = vector3(0.000000, -0.000000, 147.999985),
                reelPositions = {
                    vector3(957.536255, 58.329517, 81.102997),
                    vector3(957.434509, 58.393108, 81.102997),
                    vector3(957.332703, 58.456696, 81.102997),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(957.973083, 55.529278, 79.988983),
                chairPosition = vector3(958.651550, 55.105343, 79.988983),
                heading = 57.999996185303,
                rotation = vector3(0.000000, 0.000000, 57.999996),
                reelPositions = {
                    vector3(957.876526, 55.454006, 81.094986),
                    vector3(957.940063, 55.555775, 81.094986),
                    vector3(958.003662, 55.657539, 81.094986),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(958.075012, 58.042412, 79.996994),
                chairPosition = vector3(958.498962, 58.720852, 79.996994),
                heading = 147.99998474121,
                rotation = vector3(0.000000, -0.000000, 147.999985),
                reelPositions = {
                    vector3(958.150269, 57.945854, 81.102997),
                    vector3(958.048523, 58.009445, 81.102997),
                    vector3(957.946716, 58.073032, 81.102997),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(962.255615, 36.105045, 79.993683),
                chairPosition = vector3(962.679565, 36.783485, 79.992699),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(962.330872, 36.008488, 81.099449),
                    vector3(962.229126, 36.072079, 81.099754),
                    vector3(962.127319, 36.135666, 81.100052),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(962.814331, 35.755898, 79.992035),
                chairPosition = vector3(963.238281, 36.434338, 79.991051),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(962.889587, 35.659340, 81.097801),
                    vector3(962.787842, 35.722931, 81.098106),
                    vector3(962.686035, 35.786518, 81.098404),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(963.372131, 35.407356, 79.990387),
                chairPosition = vector3(963.796082, 36.085796, 79.989403),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(963.447388, 35.310799, 81.096153),
                    vector3(963.345642, 35.374390, 81.096458),
                    vector3(963.243835, 35.437977, 81.096756),
                },
            },
            {
                type = "Evacuator",
                position = vector3(963.934692, 35.055840, 79.988724),
                chairPosition = vector3(964.358643, 35.734280, 79.987740),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(964.009949, 34.959282, 81.094490),
                    vector3(963.908203, 35.022873, 81.094795),
                    vector3(963.806396, 35.086460, 81.095093),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(964.497253, 34.704327, 79.987061),
                chairPosition = vector3(964.921204, 35.382767, 79.986076),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(964.572510, 34.607769, 81.092827),
                    vector3(964.470764, 34.671360, 81.093132),
                    vector3(964.368958, 34.734947, 81.093430),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(965.056213, 34.355034, 79.985413),
                chairPosition = vector3(965.480164, 35.033474, 79.984428),
                heading = 148.0,
                rotation = vector3(0.070537, -0.143511, 148.000076),
                reelPositions = {
                    vector3(965.131470, 34.258476, 81.091179),
                    vector3(965.029724, 34.322067, 81.091484),
                    vector3(964.927917, 34.385654, 81.091782),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(966.369385, 37.846661, 79.990387),
                chairPosition = vector3(965.690918, 38.270596, 79.989403),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(966.465942, 37.921932, 81.096153),
                    vector3(966.402405, 37.820164, 81.096458),
                    vector3(966.338806, 37.718399, 81.096756),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(966.720825, 38.409149, 79.988724),
                chairPosition = vector3(966.042358, 38.833084, 79.987740),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(966.817383, 38.484421, 81.094490),
                    vector3(966.753845, 38.382652, 81.094795),
                    vector3(966.690247, 38.280888, 81.095093),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(966.809631, 37.571621, 79.990158),
                chairPosition = vector3(967.488098, 37.147686, 79.991142),
                heading = 57.999977111816,
                rotation = vector3(-0.070537, 0.143511, 58.000084),
                reelPositions = {
                    vector3(966.713074, 37.496349, 81.096397),
                    vector3(966.776611, 37.598118, 81.096092),
                    vector3(966.840210, 37.699883, 81.095795),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(967.072693, 38.971836, 79.987061),
                chairPosition = vector3(966.394226, 39.395771, 79.986076),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(967.169250, 39.047108, 81.092827),
                    vector3(967.105713, 38.945339, 81.093132),
                    vector3(967.042114, 38.843575, 81.093430),
                },
            },
            {
                type = "Evacuator",
                position = vector3(967.160156, 38.134762, 79.989227),
                chairPosition = vector3(967.838623, 37.710831, 79.989227),
                heading = 58.000202178955,
                rotation = vector3(0.000000, 0.000000, 58.000202),
                reelPositions = {
                    vector3(967.063599, 38.059490, 81.095230),
                    vector3(967.127136, 38.161259, 81.095230),
                    vector3(967.190735, 38.263023, 81.095230),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(967.508301, 38.699203, 79.987862),
                chairPosition = vector3(968.186768, 38.275269, 79.987862),
                heading = 57.999977111816,
                rotation = vector3(0.000000, 0.000000, 57.999977),
                reelPositions = {
                    vector3(967.411743, 38.623932, 81.093864),
                    vector3(967.475281, 38.725700, 81.093864),
                    vector3(967.538879, 38.827465, 81.093864),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(967.211243, 57.055077, 79.997025),
                chairPosition = vector3(966.532776, 57.479012, 79.996040),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(967.307800, 57.130348, 81.102791),
                    vector3(967.244263, 57.028580, 81.103096),
                    vector3(967.180664, 56.926815, 81.103394),
                },
            },
            {
                type = "Evacuator",
                position = vector3(967.562683, 57.617565, 79.995361),
                chairPosition = vector3(966.884216, 58.041500, 79.994377),
                heading = 237.99996948242,
                rotation = vector3(0.070537, -0.143511, -121.999901),
                reelPositions = {
                    vector3(967.659241, 57.692837, 81.101128),
                    vector3(967.595703, 57.591068, 81.101433),
                    vector3(967.532104, 57.489304, 81.101730),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(967.651489, 56.780041, 79.996796),
                chairPosition = vector3(968.329956, 56.356106, 79.996796),
                heading = 57.999996185303,
                rotation = vector3(0.000000, 0.000000, 57.999996),
                reelPositions = {
                    vector3(967.554932, 56.704769, 81.102798),
                    vector3(967.618469, 56.806538, 81.102798),
                    vector3(967.682068, 56.908302, 81.102798),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(967.914551, 58.180248, 79.993698),
                chairPosition = vector3(967.236084, 58.604179, 79.991798),
                heading = 238.00021362305,
                rotation = vector3(0.135868, -0.084326, -121.999779),
                reelPositions = {
                    vector3(968.011108, 58.255520, 81.099632),
                    vector3(967.947571, 58.153751, 81.099808),
                    vector3(967.883972, 58.051987, 81.099983),
                },
            },
            {
                type = "Evacuator",
                position = vector3(968.001892, 57.343266, 79.995865),
                chairPosition = vector3(968.680359, 56.919334, 79.997765),
                heading = 58.000213623047,
                rotation = vector3(-0.135868, 0.084326, 58.000221),
                reelPositions = {
                    vector3(967.905334, 57.267994, 81.101936),
                    vector3(967.968872, 57.369762, 81.101761),
                    vector3(968.032471, 57.471527, 81.101585),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(968.350159, 57.907612, 79.994499),
                chairPosition = vector3(969.028625, 57.483681, 79.996399),
                heading = 58.000213623047,
                rotation = vector3(-0.135868, 0.084326, 58.000221),
                reelPositions = {
                    vector3(968.253601, 57.832340, 81.100571),
                    vector3(968.317139, 57.934109, 81.100395),
                    vector3(968.380737, 58.035873, 81.100220),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(972.938416, 35.461330, 79.994438),
                chairPosition = vector3(972.207581, 35.135941, 79.994438),
                heading = 294.0,
                rotation = vector3(-0.000000, -0.000000, -65.999985),
                reelPositions = {
                    vector3(972.930054, 35.583469, 81.100441),
                    vector3(972.978821, 35.473846, 81.100441),
                    vector3(973.027649, 35.364220, 81.100441),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(973.005066, 36.257156, 79.994438),
                chairPosition = vector3(972.349731, 36.716019, 79.994438),
                heading = 235.0,
                rotation = vector3(0.000000, -0.000000, -125.000008),
                reelPositions = {
                    vector3(973.105469, 36.327271, 81.100441),
                    vector3(973.036621, 36.228970, 81.100441),
                    vector3(972.967773, 36.130672, 81.100441),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(973.564880, 34.982811, 79.994438),
                chairPosition = vector3(973.371338, 34.206573, 79.994438),
                heading = 345.99996948242,
                rotation = vector3(-0.000000, -0.000000, -14.000032),
                reelPositions = {
                    vector3(973.463440, 35.051384, 81.100441),
                    vector3(973.579834, 35.022354, 81.100441),
                    vector3(973.696289, 34.993324, 81.100441),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(973.738770, 36.577297, 79.994438),
                chairPosition = vector3(973.863892, 37.367447, 79.994438),
                heading = 170.99998474121,
                rotation = vector3(0.000000, -0.000000, 170.999985),
                reelPositions = {
                    vector3(973.845764, 36.517826, 81.100441),
                    vector3(973.727234, 36.536598, 81.100441),
                    vector3(973.608704, 36.555370, 81.100441),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(974.310303, 35.296810, 79.994438),
                chairPosition = vector3(974.988770, 34.872875, 79.994438),
                heading = 57.999996185303,
                rotation = vector3(0.000000, 0.000000, 57.999996),
                reelPositions = {
                    vector3(974.213745, 35.221539, 81.100441),
                    vector3(974.277283, 35.323307, 81.100441),
                    vector3(974.340881, 35.425072, 81.100441),
                },
            },
            {
                type = "Evacuator",
                position = vector3(974.364807, 36.082489, 79.994438),
                chairPosition = vector3(975.071167, 36.458065, 79.994438),
                heading = 117.99999237061,
                rotation = vector3(0.000000, -0.000000, 117.999992),
                reelPositions = {
                    vector3(974.381714, 35.961231, 81.100441),
                    vector3(974.325378, 36.067184, 81.100441),
                    vector3(974.269043, 36.173138, 81.100441),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(978.090210, 26.445480, 79.996368),
                chairPosition = vector3(977.777649, 27.181885, 79.996635),
                heading = 202.9998626709,
                rotation = vector3(-0.019004, -0.158775, -157.000107),
                reelPositions = {
                    vector3(978.212463, 26.451752, 81.102036),
                    vector3(978.102051, 26.404865, 81.102371),
                    vector3(977.991577, 26.357977, 81.102699),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(978.710876, 26.818045, 79.994408),
                chairPosition = vector3(978.599548, 27.610260, 79.994087),
                heading = 187.99984741211,
                rotation = vector3(0.022737, -0.158284, -172.000061),
                reelPositions = {
                    vector3(978.830627, 26.792458, 81.100105),
                    vector3(978.711792, 26.775757, 81.100441),
                    vector3(978.592957, 26.759056, 81.100769),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(978.867188, 36.068512, 79.994438),
                chairPosition = vector3(978.203979, 35.621159, 79.994438),
                heading = 304.00006103516,
                rotation = vector3(-0.000000, -0.000000, -55.999954),
                reelPositions = {
                    vector3(978.837646, 36.187340, 81.100441),
                    vector3(978.904785, 36.087852, 81.100441),
                    vector3(978.971863, 35.988369, 81.100441),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(978.933777, 36.864388, 79.994438),
                chairPosition = vector3(978.320923, 37.378616, 79.994438),
                heading = 229.99998474121,
                rotation = vector3(0.000000, -0.000000, -130.000015),
                reelPositions = {
                    vector3(979.039856, 36.925488, 81.100441),
                    vector3(978.962708, 36.833561, 81.100441),
                    vector3(978.885620, 36.741634, 81.100441),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(979.425415, 27.013876, 79.992340),
                chairPosition = vector3(979.509033, 27.809494, 79.991501),
                heading = 173.9998626709,
                rotation = vector3(0.060355, -0.148081, 174.000000),
                reelPositions = {
                    vector3(979.535400, 26.960087, 81.098091),
                    vector3(979.416077, 26.972630, 81.098404),
                    vector3(979.296692, 26.985174, 81.098709),
                },
            },
            {
                type = "Evacuator",
                position = vector3(979.493652, 35.590004, 79.994438),
                chairPosition = vector3(979.233215, 34.833588, 79.994438),
                heading = 340.99990844727,
                rotation = vector3(-0.000000, -0.000000, -19.000084),
                reelPositions = {
                    vector3(979.398560, 35.667156, 81.100441),
                    vector3(979.512024, 35.628086, 81.100441),
                    vector3(979.625488, 35.589020, 81.100441),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(979.211060, 46.183235, 79.994438),
                chairPosition = vector3(978.486023, 45.845139, 79.994438),
                heading = 295.00003051758,
                rotation = vector3(-0.000000, -0.000000, -64.999969),
                reelPositions = {
                    vector3(979.200562, 46.305210, 81.100441),
                    vector3(979.251282, 46.196453, 81.100441),
                    vector3(979.302002, 46.087696, 81.100441),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(979.667542, 37.184486, 79.994438),
                chairPosition = vector3(979.792664, 37.974636, 79.994438),
                heading = 170.99998474121,
                rotation = vector3(0.000000, -0.000000, 170.999985),
                reelPositions = {
                    vector3(979.774536, 37.125015, 81.100441),
                    vector3(979.656006, 37.143787, 81.100441),
                    vector3(979.537476, 37.162560, 81.100441),
                },
            },
            {
                type = "Evacuator",
                position = vector3(979.278076, 46.978271, 79.994438),
                chairPosition = vector3(978.585266, 47.378273, 79.994438),
                heading = 240.0,
                rotation = vector3(0.000000, -0.000000, -120.000000),
                reelPositions = {
                    vector3(979.371948, 47.056866, 81.100441),
                    vector3(979.311951, 46.952942, 81.100441),
                    vector3(979.251953, 46.849018, 81.100441),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(980.159485, 27.025547, 79.990364),
                chairPosition = vector3(980.446167, 27.772409, 79.989014),
                heading = 158.9998626709,
                rotation = vector3(0.096624, -0.127415, 159.000031),
                reelPositions = {
                    vector3(980.251770, 26.945124, 81.096176),
                    vector3(980.139771, 26.988127, 81.096443),
                    vector3(980.027710, 27.031132, 81.096710),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(980.239075, 35.904007, 79.994438),
                chairPosition = vector3(980.833618, 35.368702, 79.993263),
                heading = 47.999855041504,
                rotation = vector3(0.084325, 0.135868, 47.999809),
                reelPositions = {
                    vector3(980.130920, 35.846649, 81.100777),
                    vector3(980.211243, 35.935825, 81.100487),
                    vector3(980.291504, 36.025002, 81.100204),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(979.837891, 45.703926, 79.994438),
                chairPosition = vector3(979.712769, 44.913776, 79.994438),
                heading = 350.99996948242,
                rotation = vector3(-0.000000, -0.000000, -9.000023),
                reelPositions = {
                    vector3(979.730896, 45.763397, 81.100441),
                    vector3(979.849426, 45.744625, 81.100441),
                    vector3(979.967957, 45.725853, 81.100441),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(980.293579, 36.689678, 79.994438),
                chairPosition = vector3(981.035339, 36.989365, 79.994438),
                heading = 111.99998474121,
                rotation = vector3(0.000000, -0.000000, 111.999985),
                reelPositions = {
                    vector3(980.297729, 36.567322, 81.100441),
                    vector3(980.252747, 36.678581, 81.100441),
                    vector3(980.207825, 36.789845, 81.100441),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(980.011780, 47.298409, 79.994438),
                chairPosition = vector3(980.205322, 48.074646, 79.994438),
                heading = 166.0,
                rotation = vector3(0.000000, -0.000000, 166.000000),
                reelPositions = {
                    vector3(980.113220, 47.229836, 81.100441),
                    vector3(979.996826, 47.258865, 81.100441),
                    vector3(979.880371, 47.287895, 81.100441),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(980.853577, 26.852007, 79.988640),
                chairPosition = vector3(981.153259, 27.593754, 79.987259),
                heading = 157.99983215332,
                rotation = vector3(0.098833, -0.125710, 158.000000),
                reelPositions = {
                    vector3(980.944458, 26.769985, 81.094460),
                    vector3(980.833191, 26.814938, 81.094719),
                    vector3(980.721924, 26.859890, 81.094986),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(980.507385, 46.065594, 79.994438),
                chairPosition = vector3(981.170593, 45.618240, 79.994438),
                heading = 55.999992370605,
                rotation = vector3(0.000000, 0.000000, 55.999992),
                reelPositions = {
                    vector3(980.408264, 45.993740, 81.100441),
                    vector3(980.475403, 46.093227, 81.100441),
                    vector3(980.542480, 46.192711, 81.100441),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(980.637817, 46.803604, 79.994438),
                chairPosition = vector3(981.420349, 46.969933, 79.994438),
                heading = 101.99999237061,
                rotation = vector3(0.000000, -0.000000, 101.999992),
                reelPositions = {
                    vector3(980.620667, 46.682384, 81.100441),
                    vector3(980.595703, 46.799763, 81.100441),
                    vector3(980.570740, 46.917141, 81.100441),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(982.199158, 41.373840, 79.994438),
                chairPosition = vector3(981.468323, 41.048450, 79.994438),
                heading = 294.0,
                rotation = vector3(-0.000000, -0.000000, -65.999985),
                reelPositions = {
                    vector3(982.190796, 41.495979, 81.100441),
                    vector3(982.239563, 41.386356, 81.100441),
                    vector3(982.288391, 41.276730, 81.100441),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(982.265808, 42.169674, 79.994438),
                chairPosition = vector3(981.514038, 42.443291, 79.994438),
                heading = 250.00001525879,
                rotation = vector3(0.000000, -0.000000, -109.999985),
                reelPositions = {
                    vector3(982.344604, 42.263374, 81.100441),
                    vector3(982.303589, 42.150608, 81.100441),
                    vector3(982.262573, 42.037846, 81.100441),
                },
            },
            {
                type = "Evacuator",
                position = vector3(982.825623, 40.895329, 79.994438),
                chairPosition = vector3(982.632080, 40.119091, 79.994438),
                heading = 345.99996948242,
                rotation = vector3(-0.000000, -0.000000, -14.000032),
                reelPositions = {
                    vector3(982.724182, 40.963902, 81.100441),
                    vector3(982.840576, 40.934872, 81.100441),
                    vector3(982.957031, 40.905842, 81.100441),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(982.999512, 42.489822, 79.994438),
                chairPosition = vector3(983.259949, 43.246239, 79.994438),
                heading = 161.0,
                rotation = vector3(0.000000, -0.000000, 161.000000),
                reelPositions = {
                    vector3(983.094604, 42.412670, 81.100441),
                    vector3(982.981140, 42.451740, 81.100441),
                    vector3(982.867676, 42.490807, 81.100441),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(983.571045, 41.209335, 79.994438),
                chairPosition = vector3(984.249512, 40.785400, 79.994438),
                heading = 57.999996185303,
                rotation = vector3(0.000000, 0.000000, 57.999996),
                reelPositions = {
                    vector3(983.474487, 41.134064, 81.100441),
                    vector3(983.538025, 41.235832, 81.100441),
                    vector3(983.601624, 41.337597, 81.100441),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(983.625549, 41.995010, 79.994438),
                chairPosition = vector3(984.304016, 42.418945, 79.994438),
                heading = 121.99998474121,
                rotation = vector3(0.000000, -0.000000, 121.999985),
                reelPositions = {
                    vector3(983.650818, 41.875229, 81.100441),
                    vector3(983.587280, 41.976997, 81.100441),
                    vector3(983.523682, 42.078762, 81.100441),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(985.385315, 34.866543, 79.970268),
                chairPosition = vector3(984.620300, 35.100441, 79.972137),
                heading = 252.9998626709,
                rotation = vector3(-0.133845, -0.087501, -107.000191),
                reelPositions = {
                    vector3(985.459106, 34.964237, 81.075996),
                    vector3(985.424011, 34.849483, 81.076180),
                    vector3(985.388916, 34.734726, 81.076363),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(985.454651, 34.135567, 79.970657),
                chairPosition = vector3(984.654785, 34.149532, 79.972794),
                heading = 268.99984741211,
                rotation = vector3(-0.152778, -0.047219, -91.000153),
                reelPositions = {
                    vector3(985.498657, 34.249817, 81.076454),
                    vector3(985.496582, 34.129833, 81.076553),
                    vector3(985.494446, 34.009853, 81.076653),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(985.507019, 35.593266, 79.969376),
                chairPosition = vector3(984.828613, 36.017200, 79.970863),
                heading = 237.99989318848,
                rotation = vector3(-0.106637, -0.119161, -122.000160),
                reelPositions = {
                    vector3(985.603577, 35.668537, 81.075066),
                    vector3(985.540039, 35.566769, 81.075310),
                    vector3(985.476440, 35.465004, 81.075562),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(985.812927, 36.257877, 79.968033),
                chairPosition = vector3(985.267334, 36.842960, 79.969040),
                heading = 222.99984741211,
                rotation = vector3(-0.072163, -0.142700, -137.000168),
                reelPositions = {
                    vector3(985.925659, 36.305592, 81.073692),
                    vector3(985.837891, 36.223751, 81.073997),
                    vector3(985.750122, 36.141911, 81.074295),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(986.269348, 36.831924, 79.966370),
                chairPosition = vector3(985.893799, 37.538284, 79.966827),
                heading = 207.9998626709,
                rotation = vector3(-0.032771, -0.156515, -152.000122),
                reelPositions = {
                    vector3(986.390625, 36.848831, 81.072037),
                    vector3(986.284668, 36.792496, 81.072365),
                    vector3(986.178711, 36.736156, 81.072693),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(986.862671, 37.245937, 79.964462),
                chairPosition = vector3(986.696350, 38.028454, 79.964302),
                heading = 191.9998626709,
                rotation = vector3(0.011641, -0.159485, -168.000061),
                reelPositions = {
                    vector3(986.983887, 37.228767, 81.070152),
                    vector3(986.866516, 37.203815, 81.070488),
                    vector3(986.749146, 37.178867, 81.070824),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(987.530518, 37.512577, 79.962471),
                chairPosition = vector3(987.488647, 38.311478, 79.960419),
                heading = 182.99998474121,
                rotation = vector3(0.147006, 0.062929, -177.000183),
                reelPositions = {
                    vector3(987.647583, 37.476654, 81.068710),
                    vector3(987.527710, 37.470371, 81.068573),
                    vector3(987.407898, 37.464092, 81.068443),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(988.967896, 43.153545, 79.990364),
                chairPosition = vector3(988.182617, 43.306190, 79.989014),
                heading = 259.0,
                rotation = vector3(0.096625, -0.127415, -100.999962),
                reelPositions = {
                    vector3(989.031067, 43.258419, 81.096176),
                    vector3(989.008118, 43.140621, 81.096443),
                    vector3(988.985229, 43.022827, 81.096710),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(989.018372, 43.866661, 79.988640),
                chairPosition = vector3(988.253357, 44.100559, 79.990829),
                heading = 253.00001525879,
                rotation = vector3(-0.156877, -0.030990, -107.000046),
                reelPositions = {
                    vector3(989.092163, 43.964355, 81.094467),
                    vector3(989.057068, 43.849602, 81.094528),
                    vector3(989.021973, 43.734844, 81.094597),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(989.106995, 42.432472, 79.992340),
                chairPosition = vector3(988.308960, 42.376667, 79.991501),
                heading = 274.0,
                rotation = vector3(0.060354, -0.148082, -86.000000),
                reelPositions = {
                    vector3(989.140869, 42.550121, 81.098091),
                    vector3(989.149231, 42.430412, 81.098404),
                    vector3(989.157593, 42.310707, 81.098709),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(989.423828, 41.762829, 79.994408),
                chairPosition = vector3(988.662964, 41.515617, 79.994087),
                heading = 288.0,
                rotation = vector3(0.022738, -0.158284, -72.000053),
                reelPositions = {
                    vector3(989.428223, 41.885178, 81.100105),
                    vector3(989.465271, 41.771049, 81.100441),
                    vector3(989.502380, 41.656925, 81.100769),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(989.898621, 41.216156, 79.996368),
                chairPosition = vector3(989.227661, 40.780445, 79.996635),
                heading = 303.0,
                rotation = vector3(-0.019005, -0.158776, -57.000118),
                reelPositions = {
                    vector3(989.871216, 41.335476, 81.102036),
                    vector3(989.936584, 41.234837, 81.102371),
                    vector3(990.001892, 41.134197, 81.102699),
                },
            },

        }
    },
    ["Imperial Manor"] = {
        centerPosition = vector3(0.0, 0.0, 0.0),
        eventRadius = 0.0,
        requiredBucketId = 0,
        machines = {
            {
                type = "KnifeAfterDark",
                position = vector3(-89.126656, 374.990112, 112.282303),
                chairPosition = vector3(-89.851700, 375.328217, 112.282303),
                heading = 245.00001525879,
                rotation = vector3(0.000000, -0.000000, -114.999985),
                reelPositions = {
                    vector3(-89.039993, 375.076569, 113.388306),
                    vector3(-89.090706, 374.967834, 113.388306),
                    vector3(-89.141418, 374.859070, 113.388306),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(-88.759109, 375.778320, 112.282303),
                chairPosition = vector3(-89.484154, 376.116425, 112.282303),
                heading = 245.00001525879,
                rotation = vector3(0.000000, -0.000000, -114.999985),
                reelPositions = {
                    vector3(-88.672447, 375.864777, 113.388306),
                    vector3(-88.723160, 375.756042, 113.388306),
                    vector3(-88.773872, 375.647278, 113.388306),
                },
            },
            {
                type = "Evacuator",
                position = vector3(-88.376221, 376.599426, 112.282303),
                chairPosition = vector3(-89.101265, 376.937531, 112.282303),
                heading = 245.00001525879,
                rotation = vector3(0.000000, -0.000000, -114.999985),
                reelPositions = {
                    vector3(-88.289558, 376.685883, 113.388306),
                    vector3(-88.340271, 376.577148, 113.388306),
                    vector3(-88.390984, 376.468384, 113.388306),
                },
            },
        }
    },
    ["Jurassic Jackpot"] = {
        centerPosition = vector3(0.0, 0.0, 0.0),
        eventRadius = 0.0,
        requiredBucketId = 0,
        machines = {
            {
                type = "DeityOfTheSun",
                position = vector3(-255.069016, -900.799133, 31.313972),
                chairPosition = vector3(-255.342499, -901.550964, 31.313972),
                heading = 340.0100402832,
                rotation = vector3(-0.000000, -0.000000, -19.989973),
                reelPositions = {
                    vector3(-255.162735, -900.720337, 32.419971),
                    vector3(-255.049957, -900.761353, 32.419971),
                    vector3(-254.937195, -900.802368, 32.419971),
                },
            },
            {
                type = "Evacuator",
                position = vector3(-251.964737, -901.928345, 31.313972),
                chairPosition = vector3(-252.238220, -902.680176, 31.313972),
                heading = 340.01000976562,
                rotation = vector3(-0.000000, -0.000000, -19.989983),
                reelPositions = {
                    vector3(-252.058456, -901.849548, 32.419971),
                    vector3(-251.945679, -901.890564, 32.419971),
                    vector3(-251.832916, -901.931580, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-242.695724, -905.300171, 31.313972),
                chairPosition = vector3(-242.969208, -906.052002, 31.313972),
                heading = 340.01000976562,
                rotation = vector3(-0.000000, -0.000000, -19.989983),
                reelPositions = {
                    vector3(-242.789444, -905.221375, 32.419971),
                    vector3(-242.676666, -905.262390, 32.419971),
                    vector3(-242.563904, -905.303406, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-239.540649, -906.447876, 31.313972),
                chairPosition = vector3(-239.814133, -907.199707, 31.313972),
                heading = 340.01000976562,
                rotation = vector3(-0.000000, -0.000000, -19.989983),
                reelPositions = {
                    vector3(-239.634369, -906.369080, 32.419971),
                    vector3(-239.521591, -906.410095, 32.419971),
                    vector3(-239.408829, -906.451111, 32.419971),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(-236.537918, -907.540222, 31.313972),
                chairPosition = vector3(-236.811401, -908.292053, 31.313972),
                heading = 340.01000976562,
                rotation = vector3(-0.000000, -0.000000, -19.989983),
                reelPositions = {
                    vector3(-236.631638, -907.461426, 32.419971),
                    vector3(-236.518860, -907.502441, 32.419971),
                    vector3(-236.406097, -907.543457, 32.419971),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(-259.008820, -902.798096, 31.313972),
                chairPosition = vector3(-258.257019, -903.071594, 31.313972),
                heading = 70.010009765625,
                rotation = vector3(0.000000, 0.000000, 70.010010),
                reelPositions = {
                    vector3(-259.087585, -902.891846, 32.419971),
                    vector3(-259.046570, -902.779053, 32.419971),
                    vector3(-259.005554, -902.666260, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-234.115189, -909.862732, 31.313972),
                chairPosition = vector3(-234.866989, -909.589233, 31.313972),
                heading = 250.01008605957,
                rotation = vector3(0.000000, -0.000000, -109.989914),
                reelPositions = {
                    vector3(-234.036407, -909.768982, 32.419971),
                    vector3(-234.077423, -909.881775, 32.419971),
                    vector3(-234.118439, -909.994568, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-235.224136, -912.911194, 31.313972),
                chairPosition = vector3(-235.975937, -912.637695, 31.313972),
                heading = 250.01008605957,
                rotation = vector3(0.000000, -0.000000, -109.989914),
                reelPositions = {
                    vector3(-235.145355, -912.817444, 32.419971),
                    vector3(-235.186371, -912.930237, 32.419971),
                    vector3(-235.227386, -913.043030, 32.419971),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(-231.295105, -919.842712, 31.313972),
                chairPosition = vector3(-232.046906, -919.569214, 31.313972),
                heading = 250.01008605957,
                rotation = vector3(0.000000, -0.000000, -109.989914),
                reelPositions = {
                    vector3(-231.216324, -919.748962, 32.419971),
                    vector3(-231.257339, -919.861755, 32.419971),
                    vector3(-231.298355, -919.974548, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-232.405212, -922.894409, 31.313972),
                chairPosition = vector3(-233.157013, -922.620911, 31.313972),
                heading = 250.01008605957,
                rotation = vector3(0.000000, -0.000000, -109.989914),
                reelPositions = {
                    vector3(-232.326431, -922.800659, 32.419971),
                    vector3(-232.367447, -922.913452, 32.419971),
                    vector3(-232.408463, -923.026245, 32.419971),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(-264.751465, -921.504700, 31.313972),
                chairPosition = vector3(-264.477966, -920.752869, 31.313972),
                heading = 160.01000976562,
                rotation = vector3(0.000000, -0.000000, 160.010010),
                reelPositions = {
                    vector3(-264.657745, -921.583496, 32.419971),
                    vector3(-264.770508, -921.542480, 32.419971),
                    vector3(-264.883270, -921.501465, 32.419971),
                },
            },
            {
                type = "Evacuator",
                position = vector3(-261.647186, -922.633972, 31.313972),
                chairPosition = vector3(-261.373688, -921.882141, 31.313972),
                heading = 160.0100402832,
                rotation = vector3(0.000000, -0.000000, 160.010040),
                reelPositions = {
                    vector3(-261.553467, -922.712769, 32.419971),
                    vector3(-261.666229, -922.671753, 32.419971),
                    vector3(-261.778992, -922.630737, 32.419971),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(-258.552856, -923.759583, 31.313972),
                chairPosition = vector3(-258.279358, -923.007751, 31.313972),
                heading = 160.01000976562,
                rotation = vector3(0.000000, -0.000000, 160.010010),
                reelPositions = {
                    vector3(-258.459137, -923.838379, 32.419971),
                    vector3(-258.571899, -923.797363, 32.419971),
                    vector3(-258.684662, -923.756348, 32.419971),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(-255.311279, -924.938782, 31.313972),
                chairPosition = vector3(-255.037796, -924.186951, 31.313972),
                heading = 160.0100402832,
                rotation = vector3(0.000000, -0.000000, 160.010040),
                reelPositions = {
                    vector3(-255.217560, -925.017578, 32.419971),
                    vector3(-255.330338, -924.976562, 32.419971),
                    vector3(-255.443100, -924.935547, 32.419971),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-249.223114, -927.153503, 31.313972),
                chairPosition = vector3(-248.949631, -926.401672, 31.313972),
                heading = 160.0100402832,
                rotation = vector3(0.000000, -0.000000, 160.010040),
                reelPositions = {
                    vector3(-249.129395, -927.232300, 32.419971),
                    vector3(-249.242172, -927.191284, 32.419971),
                    vector3(-249.354935, -927.150269, 32.419971),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(-246.220383, -928.245789, 31.313972),
                chairPosition = vector3(-245.946899, -927.493958, 31.313972),
                heading = 160.01002502441,
                rotation = vector3(0.000000, -0.000000, 160.010025),
                reelPositions = {
                    vector3(-246.126663, -928.324585, 32.419971),
                    vector3(-246.239441, -928.283569, 32.419971),
                    vector3(-246.352203, -928.242554, 32.419971),
                },
            },
        }
    },
    ["Aldentes"] = {
        centerPosition = vector3(0.0, 0.0, 0.0),
        eventRadius = 0.0,
        requiredBucketId = 0,
        machines = {
            {
                type = "ImpotentRage",
                position = vector3(-1180.525391, -1405.292603, 13.027805),
                chairPosition = vector3(-1181.181641, -1405.750122, 13.027805),
                heading = 304.8828125,
                rotation = vector3(-0.000000, -0.000000, -55.117195),
                reelPositions = {
                    vector3(-1180.556763, -1405.174194, 14.133805),
                    vector3(-1180.488159, -1405.272705, 14.133805),
                    vector3(-1180.419434, -1405.371094, 14.133805),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(-1179.622681, -1406.516235, 13.027807),
                chairPosition = vector3(-1180.278931, -1406.973755, 13.027807),
                heading = 304.8828125,
                rotation = vector3(0.000000, -0.000005, -55.117195),
                reelPositions = {
                    vector3(-1179.654053, -1406.397827, 14.133807),
                    vector3(-1179.585449, -1406.496338, 14.133807),
                    vector3(-1179.516724, -1406.594727, 14.133807),
                },
            },
            {
                type = "Evacuator",
                position = vector3(-1182.859009, -1406.564453, 13.027805),
                chairPosition = vector3(-1182.401489, -1407.220703, 13.027805),
                heading = 34.882846832275,
                rotation = vector3(0.000000, 0.000000, 34.882847),
                reelPositions = {
                    vector3(-1182.977417, -1406.595825, 14.133805),
                    vector3(-1182.878906, -1406.527222, 14.133805),
                    vector3(-1182.780518, -1406.458496, 14.133805),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(-1183.875854, -1407.273438, 13.027805),
                chairPosition = vector3(-1183.418335, -1407.929688, 13.027805),
                heading = 34.882823944092,
                rotation = vector3(0.000000, 0.000000, 34.882824),
                reelPositions = {
                    vector3(-1183.994263, -1407.304810, 14.133805),
                    vector3(-1183.895752, -1407.236206, 14.133805),
                    vector3(-1183.797363, -1407.167480, 14.133805),
                },
            },
        },
    },
    ["Sabre HQ"] = {
        centerPosition = vector3(0.0, 0.0, 0.0),
        eventRadius = 0.0,
        requiredBucketId = 0,
        machines = {
            {
                type = "ImpotentRage",
                position = vector3(-2991.473389, 63.251472, 15.224717),
                chairPosition = vector3(-2991.070068, 63.942406, 15.224717),
                heading = 149.73077392578,
                rotation = vector3(0.000000, -0.000000, 149.730774),
                reelPositions = {
                    vector3(-2991.395264, 63.157230, 16.330717),
                    vector3(-2991.499023, 63.217720, 16.330717),
                    vector3(-2991.602539, 63.278206, 16.330717),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(-2992.232666, 63.391552, 15.224717),
                chairPosition = vector3(-2992.367920, 64.180038, 15.224717),
                heading = 189.73078918457,
                rotation = vector3(0.000000, -0.000000, -170.269211),
                reelPositions = {
                    vector3(-2992.112305, 63.369591, 16.330717),
                    vector3(-2992.230469, 63.349308, 16.330717),
                    vector3(-2992.348877, 63.329029, 16.330717),
                },
            },
            {
                type = "KnifeAfterDark",
                position = vector3(-2992.579834, 61.526508, 15.224717),
                chairPosition = vector3(-2992.983154, 60.835575, 15.224717),
                heading = 329.73077392578,
                rotation = vector3(-0.000000, -0.000000, -30.269215),
                reelPositions = {
                    vector3(-2992.657959, 61.620750, 16.330717),
                    vector3(-2992.554199, 61.560261, 16.330717),
                    vector3(-2992.450684, 61.499775, 16.330717),
                },
            },
            {
                type = "Evacuator",
                position = vector3(-2992.886230, 62.941505, 15.224717),
                chairPosition = vector3(-2993.577148, 63.344757, 15.224717),
                heading = 239.73077392578,
                rotation = vector3(0.000000, -0.000000, -120.269218),
                reelPositions = {
                    vector3(-2992.791992, 63.019657, 16.330717),
                    vector3(-2992.852295, 62.916016, 16.330717),
                    vector3(-2992.912842, 62.812374, 16.330717),
                },
            },
            {
                type = "TheDiamond",
                position = vector3(-2993.026367, 62.179733, 15.224717),
                chairPosition = vector3(-2993.814941, 62.044518, 15.224717),
                heading = 279.73077392578,
                rotation = vector3(-0.000000, -0.000000, -80.269234),
                reelPositions = {
                    vector3(-2993.004395, 62.300179, 16.330717),
                    vector3(-2992.984131, 62.181904, 16.330717),
                    vector3(-2992.963623, 62.063629, 16.330717),
                },
            },
            {
                type = "ImpotentRage",
                position = vector3(-3005.741943, 71.035759, 15.224717),
                chairPosition = vector3(-3004.953369, 71.170975, 15.224717),
                heading = 99.730781555176,
                rotation = vector3(0.000000, -0.000000, 99.730782),
                reelPositions = {
                    vector3(-3005.763916, 70.915321, 16.330717),
                    vector3(-3005.784180, 71.033592, 16.330717),
                    vector3(-3005.804688, 71.151863, 16.330717),
                },
            },
            {
                type = "AngelAndTheKnight",
                position = vector3(-3005.881836, 70.273682, 15.224717),
                chairPosition = vector3(-3005.190918, 69.870430, 15.224717),
                heading = 59.730781555176,
                rotation = vector3(0.000000, 0.000000, 59.730782),
                reelPositions = {
                    vector3(-3005.976074, 70.195534, 16.330717),
                    vector3(-3005.915771, 70.299171, 16.330717),
                    vector3(-3005.855225, 70.402809, 16.330717),
                },
            },
            {
                type = "RepublicanSpaceRangers",
                position = vector3(-3006.188477, 71.688683, 15.224717),
                chairPosition = vector3(-3005.785156, 72.379616, 15.224717),
                heading = 149.73077392578,
                rotation = vector3(0.000000, -0.000000, 149.730774),
                reelPositions = {
                    vector3(-3006.110352, 71.594437, 16.330717),
                    vector3(-3006.214111, 71.654922, 16.330717),
                    vector3(-3006.317627, 71.715416, 16.330717),
                },
            },
            {
                type = "FameOrShame",
                position = vector3(-3006.535400, 69.823891, 15.224717),
                chairPosition = vector3(-3006.400146, 69.035400, 15.224717),
                heading = 9.730767250061,
                rotation = vector3(0.000000, 0.000000, 9.730767),
                reelPositions = {
                    vector3(-3006.655762, 69.845848, 16.330717),
                    vector3(-3006.537598, 69.866135, 16.330717),
                    vector3(-3006.419189, 69.886414, 16.330717),
                },
            },
            {
                type = "DeityOfTheSun",
                position = vector3(-3007.294434, 69.963890, 15.224717),
                chairPosition = vector3(-3007.697754, 69.272957, 15.224717),
                heading = 329.73077392578,
                rotation = vector3(-0.000000, -0.000000, -30.269215),
                reelPositions = {
                    vector3(-3007.372559, 70.058136, 16.330717),
                    vector3(-3007.268799, 69.997650, 16.330717),
                    vector3(-3007.165283, 69.937157, 16.330717),
                },
            },

        },
    }
}

cfg.machineTypes = {
    ["AngelAndTheKnight"] = {
        model = `vw_prop_casino_slot_01a`,
        soundName = "dlc_vw_casino_slot_machine_ak_npc_sounds",
        textureName = "CasinoUI_Slots_Angel",
        name = "Angel And The Knight",
        reelA = `vw_prop_casino_slot_01a_reels`,
        reelB = `vw_prop_casino_slot_01b_reels`,
        scriptRenderTarget = "01a",
        minBet = 100000,
        betRanges = {},
    },
    ["ImpotentRage"] = {
        model = `vw_prop_casino_slot_02a`,
        soundName = "dlc_vw_casino_slot_machine_ir_npc_sounds",
        textureName = "CasinoUI_Slots_Impotent",
        name = "Impotent Rage",
        reelA = `vw_prop_casino_slot_02a_reels`,
        reelB = `vw_prop_casino_slot_02b_reels`,
        scriptRenderTarget = "02a",
        theme = 2,
        minBet = 25000,
        betRanges = {},
    },
    ["RepublicanSpaceRangers"] = {
        model = `vw_prop_casino_slot_03a`,
        soundName = "dlc_vw_casino_slot_machine_rsr_npc_sounds",
        textureName = "CasinoUI_Slots_Ranger",
        name = "Republican Space Rangers",
        reelA = `vw_prop_casino_slot_03a_reels`,
        reelB = `vw_prop_casino_slot_03b_reels`,
        scriptRenderTarget = "03a",
        minBet = 25000,
        betRanges = {},
    },
    ["FameOrShame"] = {
        model = `vw_prop_casino_slot_04a`,
        soundName = "dlc_vw_casino_slot_machine_fs_npc_sounds",
        textureName = "CasinoUI_Slots_Fame",
        name = "Fame Or Shame",
        reelA = `vw_prop_casino_slot_04a_reels`,
        reelB = `vw_prop_casino_slot_04b_reels`,
        scriptRenderTarget = "04a",
        minBet = 5000,
        betRanges = {},
    },
    ["DeityOfTheSun"] = {
        model = `vw_prop_casino_slot_05a`,
        soundName = "dlc_vw_casino_slot_machine_ds_npc_sounds",
        textureName = "CasinoUI_Slots_Deity",
        name = "Deity Of The Sun",
        reelA = `vw_prop_casino_slot_05a_reels`,
        reelB = `vw_prop_casino_slot_05b_reels`,
        scriptRenderTarget = "05a",
        theme = 5,
        minBet = 500000,
        betRanges = {},
    },
    ["KnifeAfterDark"] = {
        model = `vw_prop_casino_slot_06a`,
        soundName = "dlc_vw_casino_slot_machine_kd_npc_sounds",
        textureName = "CasinoUI_Slots_Knife",
        name = "Twilight Knife",
        reelA = `vw_prop_casino_slot_06a_reels`,
        reelB = `vw_prop_casino_slot_06b_reels`,
        scriptRenderTarget = "06a",
        theme = 6,
        minBet = 100000,
        betRanges = {},
    },
    ["TheDiamond"] = {
        model = `vw_prop_casino_slot_07a`,
        soundName = "dlc_vw_casino_slot_machine_td_npc_sounds",
        textureName = "CasinoUI_Slots_Diamond",
        name = "Diamond Miner",
        reelA = `vw_prop_casino_slot_07a_reels`,
        reelB = `vw_prop_casino_slot_07b_reels`,
        scriptRenderTarget = "07a",
        theme = 7,
        minBet = 500000,
        betRanges = {},
    },
    ["Evacuator"] = {
        model = `vw_prop_casino_slot_08a`,
        soundName = "dlc_vw_casino_slot_machine_hz_npc_sounds",
        textureName = "CasinoUI_Slots_Evacuator",
        name = "Evacuator",
        reelA = `vw_prop_casino_slot_08a_reels`,
        reelB = `vw_prop_casino_slot_08b_reels`,
        scriptRenderTarget = "08a",
        theme = 8,
        minBet = 5000,
        betRanges = {},
    },
}

for _, locationConfig in pairs(cfg.locations) do
    for _, machineConfig in pairs(locationConfig.machines) do
        assert(cfg.machineTypes[machineConfig.type])
    end
end

for _, machineTypeInfo in pairs(cfg.machineTypes) do
    table.insert(machineTypeInfo.betRanges, machineTypeInfo.minBet)
    local step = machineTypeInfo.minBet * 5
    for multiplier = 1, 4 do
        table.insert(machineTypeInfo.betRanges, machineTypeInfo.minBet + (step * multiplier))
    end
end

cfg.defaultAnimDict = "anim_casino_a@amb@casino@games@slots@male"

cfg.idleAnims = {
    "base_idle_a",
    "base_idle_b",
    "base_idle_c",
    "base_idle_d",
    "base_idle_e",
    "base_idle_f"
}

cfg.enterAnims = {
    "enter_left",
    "enter_right",
    "enter_left_short",
    "enter_right_short"
}

cfg.exitAnims = {
    "exit_left",
    "exit_right"
}

cfg.slotMessages = {
    "Daring today?",
    "You will lose money!",
    "You have coins?"
}

cfg.pullLeverAnims = {
    {"press_spin_a"},
    {"press_spin_b"},
    {"pull_spin_a", "pull_spin_a_SLOTMACHINE"},
    {"pull_spin_b", "pull_spin_b_SLOTMACHINE"}
}

cfg.replicatedSounds = {
    "place_bet",
    "place_max_bet",
    "welcome_stinger"
}

for _, locationConfig in pairs(cfg.locations) do
    local totalX = 0.0
    local totalY = 0.0
    local totalZ = 0.0
    for _, machineConfig in pairs(locationConfig.machines) do
        totalX = totalX + machineConfig.position.x
        totalY = totalY + machineConfig.position.y
        totalZ = totalZ + machineConfig.position.z
    end
    local numLocations = #locationConfig.machines
    local centerX = totalX / numLocations
    local centerY = totalY / numLocations
    local centerZ = totalZ / numLocations
    locationConfig.centerPosition = vector3(centerX, centerY, centerZ)
    local maxDistance = 0.0
    for _, machineConfig in pairs(locationConfig.machines) do
        local distance = #(locationConfig.centerPosition - machineConfig.position)
        if distance > maxDistance then
            maxDistance = distance
        end
    end
    locationConfig.eventRadius = maxDistance + 50.0
end

return cfg