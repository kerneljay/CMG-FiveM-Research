--[[
    LEVEL 1 BEGINNER GUIDE — Trapper
    =====================================

    File: cmg/prod/cfg/cfg_trapper.lua
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
      * Named functions: 12
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 020ba07cfc
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_xp, cfg/cfg_jobs

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
local cfgXP = CMG.loadModule("cfg/cfg_xp")

cfg.jobName = "Trapper"
cfg.jobStart = vector3(2186.240234375,5569.9921875,53.898342132568)
cfg.blipId = 51
cfg.blipColour = 1

cfg.purchaseWarehouse = vector3(2187.6591796875,5581.205078125,53.898323059082)
cfg.paletoSupermarket = vector3(159.80165100098,6634.4619140625,31.642822265625)

cfg.plantGrowthDurationMs = 5 * 60 * 1000 -- 5 minutes
cfg.plantStages = {
    {prop=`plt_bucket_c`, time= 0},
    {prop=`plt_weed_small_a`, time= 50 * 1000},
    {prop=`plt_weed_small_b`, time= 100 * 1000},
    {prop=`plt_weed_med_b`, time= 200 * 1000},
    {prop=`plt_weed_lrg_a`, time= 5 * 60 * 1000}
}
cfg.hydrationDrainDurationMs = 3 * 60 * 1000 -- 3 minutes

cfg.shelfMaxWeight = 50.0
cfg.shelfSlots = 6
cfg.placeMinDistance = 0.8
-- Placement (drug den interior): surface normal must be mostly up; shell-only floor; clearance probes.
cfg.placeMinFloorDot = 0.85
-- Horizontal rays: only used to block getting too close to other trapper-placed props (not shell walls — those false-positive when near a wall).
cfg.placePlacedPropRayClearanceM = 0.18
-- Upward ray only: block when this close to ceiling/shell above (penetration), not “near” a wall.
cfg.placeShellCeilingPenetrationM = 0.10
cfg.placeShellProbeLengthM = 0.75
-- ShapeTest flags: -1 hits map + entities (used for overlap / shell probes). Narrower flags miss shell collision.
cfg.placeShapeTestFlags = -1
cfg.placeMaxDistanceFromPlayer = 18.0

-- Prop placement preview: degrees added per mouse-wheel rotate step (modifier key = faster, see cl_trapper placeItem).
cfg.placeItemRotationSpeedDeg = 3.0
cfg.placeItemRotationSpeedFastDeg = 8.0

-- Client interaction cylinder for placed props (shelf, plants, workbench, etc.): when "Press [E]" ontick runs.
cfg.itemInteractAreaRadius = 1.4
-- Plant pots (soil, seed, water, hose, harvest): tighter "Press [E]" range than other placed props.
cfg.plantPotInteractAreaRadius = 1.2
cfg.itemInteractAreaHeight = 6

-- Charged to the player who accepts a warehouse key invite (owner sending the invite pays nothing).
cfg.keyInviteAcceptFee = 500000

cfg.tutorial = {
    {
        id = "buy_drug_den",
        title = "Purchase Drug Den",
        description = "To start trapping you'll need a base of operations to cook and store your drugs, head to the warehouse seller and purchase your first drug den",
        current = 0,
        required = 1,
        locationMarker = cfg.purchaseWarehouse,
        checkpoints = {},
        ignoreAreaCheck = true -- complete only on actual purchase (CMG:onPurchaseWarehouse), not by standing at marker
    },
    {
        id = "go_to_drug_den",
        title = "Moving in day",
        description = "You've got the keys! Head to your first drug den",
        current = 0,
        required = 1,
        -- locationMarker set at runtime via CMG.setNextStepLocationMarker() when player purchases/gets warehouse
        checkpoints = {},
        ignoreAreaCheck = true
    },
    {
        id = "go_to_supermarket",
        title = "Supplies",
        description = "Now that you're in your drug den, we'll need some supplies head to the Paleto supermarket",
        current = 0,
        required = 1,
        locationMarker = cfg.paletoSupermarket,
        checkpoints = {}
    },
 {
        id = "order_water_can",
        title = "Purchase Equipment",
        description = "Purchase 4x Watering Can",
        current = 0,
        required = 4,
        checkpoints = {}
    },
    {
        id = "order_soil_bag",
        title = "Purchase Equipment",
        description = "Purchase 2x bags of soil",
        current = 0,
        required = 2,
        checkpoints = {}
    },
    {
        id = "order_plant_pot_empty",
        title = "Purchase Equipment",
        description = "Purchase 2x plant pots",
        current = 0,
        required = 2,
        checkpoints = {}
    },
    {
        id = "order_shelf",
        title = "Purchase Equipment",
        description = "Purchase 1x shelf",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "order_weed_workbench",
        title = "Purchase Equipment",
        description = "Purchase 1x weed workbench",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "order_shears",
        title = "Purchase Equipment",
        description = "Purchase 1x pairs of shears",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "order_weed_bag_empty",
        title = "Purchase Equipment",
        description = "Purchase 5x empty weed bags",
        current = 0,
        required = 5,
        checkpoints = {}
    },
    {
        id = "go_back_to_drug_den",
        title = "Home Sweet Home",
        description = "Head back to your drug den",
        current = 0,
        required = 1,
        -- locationMarker set at runtime via CMG.setNextStepLocationMarker() when returning to drug den
        checkpoints = {},
        ignoreAreaCheck = true -- complete on entering warehouse (same as go_to_drug_den), not only map marker radius
    },
    {
        id = "download_trapnet_app",
        title = "Download and open the TrapNet App",
        description = "To manage your trapping business you'll need to download the TrapNet app on your phone",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "order_weed_seed",
        title = "Order Supplies",
        description = "Using the TrapNet app, order 2x Cannabis seeds",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "pickup_supplies",
        title = "Pickup Supplies",
        description = "Your contact will be arriving soon, pickup your supplies.",
        current = 0,
        required = 1,
        checkpoints = {},
    },
    {
        id = "place_shelf",
        title = "Place Shelf",
        description = "Place the shelf down in your drug den. Use your hotbar to select the item, scroll to rotate and E to place",
        current = 0,
        required = 1,
        checkpoints = {},
    },
    {
        id = "put_supplies_on_shelf",
        title = "Store Supplies",
        description = "Store your supplies on the shelf to keep them safe",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "place_plant_pot_empty",
        title = "Start Growing",
        description = "With everything set up, it's time to start growing, place down your two empty pots",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "fill_soil",
        title = "Fill with Soil",
        description = "Fill your pots with soil",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "put_seed",
        title = "Place Seed",
        description = "Place your seeds into the soil",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "use_watering_can",
        title = "Use Watering Can",
        description = "Water your plants using the watering can, if hydration reaches 0 your plants will stop growing, keep an eye on it!",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "harvest_weed",
        title = "Harvest Weed",
        description = "Harvest your fully grown cannabis plants using your shears",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "process_bud",
        title = "Process Bud",
        description = "Place down your weed workbench, put the bud in your hands and process your harvested cannabis buds",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "bag_processed_bud",
        title = "Bag your cannabis",
        description = "At the workbench, put the processed cannabis bud in your hand and interact with the workbench to fill your bags",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "find_a_buyer",
        title = "Find a Buyer",
        description = "Open the TrapNet app and find a buyer for your product",
        current = 0,
        required = 1,
        checkpoints = {}
    },
    {
        id = "make_the_deal",
        title = "Make the Deal",
        description = "Meet your buyer at the agreed location and sell them your product",
        current = 0,
        required = 1,
        checkpoints = {}
    },
}

cfg.warehouseLocations = {
    ["house_small"] = {
        vector3(2159.99609375, 4789.7236328125, 41.838562011719),
        vector3(2158.8186035156, 4782.2719726562, 41.851982116699),
        vector3(2035.9027099609, 4732.6538085938, 41.632736206055),
        vector3(1205.0047607422, -1382.3039550781, 35.226905822754),
        vector3(374.72692871094, -1991.4891357422, 24.234928131104),
        vector3(385.39547729492, -1995.2906494141, 24.234962463379),
        vector3(404.27563476562, -2018.0825195312, 23.413503646851),
        vector3(396.78353881836, -2033.9534912109, 23.413375854492),
        vector3(392.19424438477, -2043.9779052734, 23.344326019287),
        vector3(378.15557861328, -2066.4331054688, 21.754621505737),
        vector3(370.83920288086, -2074.7412109375, 21.754619598389),
        vector3(364.24008178711, -2045.6278076172, 22.354280471802),
        vector3(334.1672668457, -2092.6481933594, 18.244089126587),
        vector3(320.92047119141, -2100.2338867188, 18.244077682495),
        vector3(303.14117431641, -2079.955078125, 17.643810272217),
        vector3(286.65829467773, -2052.6821289062, 19.654626846313),
        vector3(291.1572265625, -2047.33984375, 19.651136398315),
        vector3(-212.87908935547, -1668.4259033203, 34.463321685791),
        vector3(-224.34295654297, -1649.0570068359, 34.858108520508),
        vector3(-222.53294372559, -1617.400390625, 34.869285583496),
        vector3(-222.79487609863, -1601.1243896484, 34.878364562988),
        vector3(-191.80319213867, -1559.7758789062, 34.954418182373),
        vector3(-167.68704223633, -1535.0227050781, 35.101615905762),
        vector3(-138.08894348145, -1470.5020751953, 36.992069244385),
        vector3(-1463.2672119141, -661.78930664062, 33.381423950195),
        vector3(488.24420166016, 221.09646606445, 104.74375915527),
        vector3(490.32089233398, 228.18258666992, 104.74446105957),
        vector3(482.60858154297, 206.66979980469, 104.7448348999),
        vector3(520.10510253906, 193.10394287109, 104.74479675293),
        vector3(527.71783447266, 213.67041015625, 104.7444152832),
        vector3(1384.9367675781, 3659.7758789062, 34.926097869873),
        vector3(1435.7192382812, 3657.384765625, 34.34888458252),
        vector3(1501.2188720703, 3694.7587890625, 35.213005065918),
        vector3(1541.3214111328, 3721.2512207031, 34.842697143555),
        vector3(1642.7156982422, 3727.5166015625, 35.067096710205),
        vector3(1700.3344726562, 3867.12890625, 34.898128509521),
        vector3(1807.6260986328, 3851.3530273438, 34.354396820068),
        vector3(1832.2576904297, 3868.3400878906, 34.297481536865),
        vector3(1862.2370605469, 3857.2492675781, 36.271236419678),
        vector3(1916.3890380859, 3908.9814453125, 33.441638946533),
        vector3(-411.47186279297, 152.72843933105, 73.744071960449),
        vector3(-410.27154541016, 159.47244262695, 77.740188598633),
        vector3(-396.03607177734, 146.54104614258, 65.72639465332),
        vector3(-385.31338500977, 159.56861877441, 77.740058898926),
        vector3(132.1505279541, 6638.30859375, 31.789306640625),
        vector3(136.79127502441, 6643.060546875, 31.734600067139),
        vector3(119.05947875977, 6640.0947265625, 31.868892669678),
        vector3(-172.26040649414, 6393.6665039062, 31.490421295166),
        vector3(-182.4359588623, 6389.2333984375, 31.490398406982),
    },
    ["house_medium"] = {
        vector3(1966.7885742188, 4634.5341796875, 41.139823913574),
        vector3(1795.0424804688, 4603.3515625, 37.682762145996),
        vector3(2905.7697753906, 4406.9912109375, 50.287921905518),
        vector3(1185.6950683594, -1394.9415283203, 35.139316558838),
        vector3(1450.4445800781, -1720.8508300781, 68.700691223145),
        vector3(1561.1536865234, -1693.3072509766, 89.213493347168),
        vector3(1392.4691162109, -2205.9899902344, 61.46297454834),
        vector3(1384.2513427734, -2080.009765625, 52.424716949463),
        vector3(1569.8492431641, -2129.8015136719, 78.330093383789),
        vector3(1129.1369628906, -2248.8369140625, 31.28782081604),
        vector3(1092.7622070312, -2251.9221191406, 31.233896255493),
        vector3(1108.99609375, -2336.3356933594, 31.297937393188),
        vector3(-82.870086669922, -1399.212890625, 29.479387283325),
        vector3(-39.110454559326, -1388.2822265625, 30.491704940796),
        vector3(-1043.0634765625, -924.31500244141, 3.1541635990143),
        vector3(-1061.2696533203, -943.45037841797, 2.1867818832397),
        vector3(-1010.9317016602, -909.45953369141, 2.1305351257324),
        vector3(-1041.7009277344, -1025.6295166016, 2.7487442493439),
        vector3(-978.37841796875, -1107.8944091797, 2.1503093242645),
        vector3(-960.25213623047, -1109.4183349609, 2.150313615799),
        vector3(-942.68237304688, -1076.1940917969, 2.5452108383179),
        vector3(-1064.0555419922, -1159.8933105469, 2.3451800346375),
        vector3(1214.2371826172, -1643.8587646484, 48.645992279053),
        vector3(1192.8433837891, -1622.7763671875, 45.221446990967),
        vector3(1230.7845458984, -1591.1534423828, 53.76602935791),
        vector3(970.88366699219, -700.86828613281, 58.481945037842),
        vector3(963.62725830078, -596.05194091797, 59.902759552002),
        vector3(976.26251220703, -580.17907714844, 59.805843353271),
        vector3(965.61004638672, -542.45465087891, 59.359199523926),
        vector3(988.09393310547, -526.46636962891, 60.469039916992),
        vector3(-248.33003234863, 6370.6303710938, 31.84543800354),
        vector3(-189.65060424805, 6411.3994140625, 31.912433624268),
        vector3(2418.6328125, 4020.6662597656, 36.834201812744),
        vector3(2566.8059082031, 4273.9995117188, 41.989040374756),
    },
    ["house_large"] = {
        vector3(2243.2145996094, 5154.0415039062, 57.887100219727),
        vector3(1162.0930175781, -1410.4156494141, 34.884880065918),
        vector3(1146.1614990234, -1402.8173828125, 34.806427001953),
        vector3(1441.0362548828, -1669.189453125, 66.645317077637),
        vector3(1714.6431884766, -1598.1026611328, 113.81475830078),
        vector3(1694.0889892578, -1596.4022216797, 113.81653594971),
        vector3(961.79351806641, -2503.3996582031, 28.452276229858),
        vector3(861.20770263672, -2535.7746582031, 28.446750640869),
        vector3(-47.951503753662, -1385.6129150391, 29.491521835327),
        vector3(51.458484649658, -1317.5104980469, 29.28893661499),
        vector3(-1404.9371337891, 561.33996582031, 125.40560150146),
        vector3(-885.10675048828, 699.41723632812, 151.27085876465),
        vector3(-908.91033935547, 694.57556152344, 151.4331817627),
        vector3(-931.65551757812, 691.48736572266, 153.46672058105),
        vector3(-669.43957519531, 638.3232421875, 149.52914428711),
        vector3(-435.88696289062, 542.28735351562, 122.06504058838),
        vector3(-297.80258178711, 380.25579833984, 112.09545135498),
        vector3(-3200.2761230469, 1232.5516357422, 10.048334121704),
        vector3(-2992.8874511719, 707.18902587891, 28.496580123901),
        vector3(-2977.6887207031, 609.31842041016, 20.243915557861),
        vector3(-3049.9763183594, 474.46838378906, 6.7796301841736),
        vector3(-3110.6469726562, 335.45077514648, 7.4933390617371),
        vector3(-3105.7282714844, 286.61767578125, 8.9721031188965),
    },
    ["warehouse_small"] = {
        vector3(1673.6024169922, 4957.6459960938, 42.341655731201),
        vector3(2519.9645996094, 2614.0158691406, 37.94507598877),
        vector3(1398.0968017578, -1536.4440917969, 57.881267547607),
        vector3(1404.0554199219, -1529.9274902344, 58.295421600342),
        vector3(1423.1529541016, -1502.275390625, 60.910228729248),
        vector3(1193.2436523438, -1766.7701416016, 39.460350036621),
        vector3(1210.5697021484, -1772.1428222656, 39.938091278076),
        vector3(1741.0789794922, -1606.8092041016, 116.19493865967),
        vector3(1743.8311767578, -1623.2828369141, 116.1949005127),
        vector3(1743.8055419922, -1623.0422363281, 112.55321502686),
        vector3(1741.0404052734, -1606.7376708984, 112.58098602295),
        vector3(1521.9885253906, -2114.1376953125, 76.746963500977),
        vector3(1698.3298339844, -1537.607421875, 113.94679260254),
        vector3(1701.6900634766, -1525.8612060547, 113.94677734375),
        vector3(1706.0317382812, -1514.9328613281, 113.94677734375),
        vector3(1709.6383056641, -1503.4805908203, 113.94677734375),
        vector3(1714.0808105469, -1492.2728271484, 113.94677734375),
        vector3(1717.9931640625, -1480.9019775391, 113.94677734375),
        vector3(1743.1705322266, -1489.4118652344, 113.94682312012),
        vector3(1739.6317138672, -1501.0406494141, 113.94677734375),
        vector3(1735.4241943359, -1512.2380371094, 113.94677734375),
        vector3(1731.4587402344, -1523.6658935547, 113.94676971436),
        vector3(1727.6427001953, -1534.8603515625, 113.94676971436),
        vector3(1723.1405029297, -1547.1584472656, 113.94676971436),
        vector3(1080.5477294922, -2412.8024902344, 30.170547485352),
        vector3(1062.9207763672, -2407.5329589844, 29.982576370239),
        vector3(1059.9483642578, -2407.2326660156, 29.970024108887),
        vector3(1051.6192626953, -2399.6276855469, 30.022171020508),
        vector3(1018.8605957031, -2515.7856445312, 28.301959991455),
        vector3(1018.491027832, -2520.6059570312, 28.301973342896),
        vector3(1018.0903320312, -2525.185546875, 28.301977157593),
        vector3(925.09136962891, -2493.3505859375, 29.571134567261),
        vector3(917.61456298828, -2492.6435546875, 29.571157455444),
        vector3(910.22930908203, -2492.0324707031, 29.571134567261),
        vector3(902.92309570312, -2491.5173339844, 29.57078742981),
        vector3(895.56042480469, -2490.7495117188, 29.570789337158),
        vector3(923.0458984375, -2436.0363769531, 28.454347610474),
        vector3(930.87677001953, -2436.66796875, 28.454071044922),
        vector3(938.42266845703, -2437.2841796875, 28.453868865967),
        vector3(945.93719482422, -2437.7861328125, 28.453107833862),
        vector3(953.61505126953, -2438.4851074219, 28.453281402588),
        vector3(877.61743164062, -2038.3218994141, 30.504064559937),
        vector3(878.36505126953, -2030.9149169922, 30.515331268311),
        vector3(931.61370849609, -1546.8934326172, 30.852277755737),
        vector3(-77.923843383789, -1389.5865478516, 29.320753097534),
        vector3(-71.632247924805, -1423.5678710938, 29.613555908203),
        vector3(-41.551544189453, -1070.6088867188, 27.546506881714),
        vector3(-26.981649398804, -1075.8399658203, 27.546514511108),
        vector3(2531.2983398438, 4114.4594726562, 38.755004882812),
        vector3(2523.7775878906, 4099.2724609375, 38.624324798584),
    },
    ["warehouse_medium"] = {
        vector3(2555.3972167969, 4651.3295898438, 34.076759338379),
        vector3(2570.4814453125, 4667.7412109375, 34.076766967773),
        vector3(2589.6604003906, 4678.3955078125, 34.076766967773),
        vector3(2567.4372558594, 4652.3837890625, 34.07682800293),
        vector3(1961.5042724609, 5184.9340820312, 47.974040985107),
        vector3(2932.6469726562, 4618.4243164062, 48.717189788818),
        vector3(2910.9494628906, 4492.6806640625, 48.108299255371),
        vector3(2903.2785644531, 4502.451171875, 48.093212127686),
        vector3(2890.921875, 4503.7797851562, 48.09020614624),
        vector3(2881.8623046875, 4511.767578125, 48.004463195801),
        vector3(2923.78125, 4486.6572265625, 48.056434631348),
        vector3(2927.7524414062, 4475.1176757812, 48.052886962891),
        vector3(2856.3552246094, 4458.6787109375, 48.500682830811),
        vector3(2855.8012695312, 4446.5502929688, 48.535800933838),
        vector3(2872.931640625, 4422.5537109375, 48.758613586426),
        vector3(2905.7736816406, 4348.3295898438, 50.296928405762),
        vector3(2461.5295410156, 1575.673828125, 33.112606048584),
        vector3(1066.3303222656, -2388.4128417969, 30.502546310425),
        vector3(1079.2911376953, -2389.6091308594, 30.575038909912),
        vector3(1085.8214111328, -2403.6938476562, 30.489568710327),
        vector3(1086.6309814453, -2396.2390136719, 30.583881378174),
        vector3(1006.1995849609, -2447.5190429688, 28.517505645752),
        vector3(1014.8134155273, -2448.2963867188, 28.517673492432),
        vector3(1008.9181518555, -2531.2399902344, 28.301961898804),
        vector3(802.01135253906, -2503.0375976562, 22.230222702026),
        vector3(801.04986572266, -2511.7827148438, 22.225595474243),
        vector3(800.06854248047, -2520.9008789062, 22.1689453125),
        vector3(876.48522949219, -2410.9287109375, 27.938926696777),
        vector3(877.13732910156, -2402.9584960938, 27.939300537109),
        vector3(877.50451660156, -2395.0622558594, 27.942445755005),
        vector3(864.86291503906, -2429.8479003906, 28.137630462646),
        vector3(870.20874023438, -2366.9206542969, 30.346500396729),
        vector3(825.74444580078, -2377.9829101562, 29.124338150024),
        vector3(819.39184570312, -2399.5837402344, 23.658655166626),
        vector3(867.27606201172, -2043.3665771484, 30.961709976196),
        vector3(867.63208007812, -2038.3723144531, 30.961793899536),
        vector3(867.92517089844, -2033.4538574219, 30.961917877197),
        vector3(927.29125976562, -1563.9659423828, 31.116691589355),
        vector3(926.88916015625, -1556.6458740234, 31.056123733521),
        vector3(906.67138671875, -1514.0565185547, 30.414361953735),
        vector3(-128.81004333496, -1415.8054199219, 31.300275802612),
        vector3(-153.29319763184, -1417.896484375, 30.905778884888),
        vector3(-149.77355957031, -1423.4031982422, 30.909135818481),
        vector3(-24.120121002197, -1415.8994140625, 29.313014984131),
        vector3(-36.451995849609, -1415.2156982422, 29.311735153198),
        vector3(-53.173839569092, -1314.6877441406, 29.214250564575),
        vector3(51.557922363281, 6485.9477539062, 31.428117752075),
        vector3(3.339079618454, 6446.4775390625, 31.425273895264),
        vector3(-7.2805542945862, 6432.48046875, 31.912298202515),
        vector3(2.5955994129181, 6425.4609375, 31.430017471313),
        vector3(-34.692821502686, 6424.017578125, 31.431245803833),
        vector3(-41.883563995361, 6417.01953125, 31.49045753479),
        vector3(-246.64796447754, 6068.2216796875, 32.34451675415),
        vector3(-354.09637451172, 6066.6298828125, 31.498470306396),
    },
    ["warehouse_large"] = {
        vector3(2335.7895507812, 4859.6123046875, 41.808208465576),
        vector3(2309.9875488281, 4885.115234375, 41.808212280273),
        vector3(1695.6491699219, 4785.1059570312, 42.002555847168),
        vector3(1710.0955810547, 4728.3149414062, 42.148803710938),
        vector3(1722.3714599609, 4734.9213867188, 42.135345458984),
        vector3(1192.0157470703, -1268.330078125, 35.165836334229),
        vector3(1192.22265625, -1248.7808837891, 40.317520141602),
        vector3(1220.6313476562, -1270.2517089844, 35.359062194824),
        vector3(1213.7203369141, -1238.5906982422, 36.325801849365),
        vector3(1158.7576904297, -1310.8114013672, 34.853054046631),
        vector3(1164.3381347656, -1311.3785400391, 34.844825744629),
        vector3(1130.1131591797, -1303.9337158203, 34.74068069458),
        vector3(1165.71875, -1347.3067626953, 35.744506835938),
        vector3(1159.1611328125, -1374.4985351562, 34.714721679688),
        vector3(1586.2030029297, -1691.8251953125, 88.124778747559),
        vector3(1738.474609375, -1669.3000488281, 112.58829498291),
        vector3(1734.9468994141, -1646.8093261719, 112.59981536865),
        vector3(1084.1059570312, -2300.4606933594, 30.233293533325),
        vector3(1085.0648193359, -2289.2729492188, 30.228105545044),
        vector3(1090.1336669922, -2233.1711425781, 31.304004669189),
        vector3(1090.7913818359, -2224.8244628906, 31.304000854492),
        vector3(1078.0114746094, -2333.9106445312, 30.269817352295),
        vector3(1070.1137695312, -2372.0427246094, 30.575176239014),
        vector3(1049.3292236328, -2428.0095214844, 30.304529190063),
        vector3(1024.5181884766, -2398.2885742188, 30.121351242065),
        vector3(991.19323730469, -2395.1994628906, 30.529193878174),
        vector3(853.57672119141, -2433.2338867188, 28.057863235474),
        vector3(843.19989013672, -2427.7846679688, 27.968641281128),
        vector3(844.75408935547, -2364.8776855469, 30.346492767334),
        vector3(859.33483886719, -2366.1247558594, 30.346530914307),
        vector3(859.98223876953, -2273.6953125, 30.552213668823),
        vector3(820.70147705078, -2114.8100585938, 29.38210105896),
        vector3(812.60620117188, -2114.1579589844, 29.379095077515),
        vector3(812.10302734375, -2017.4010009766, 29.268690109253),
        vector3(810.50054931641, -2035.5408935547, 29.272789001465),
        vector3(922.86633300781, -1515.2250976562, 31.23511505127),
        vector3(-104.791015625, -1408.4953613281, 29.664194107056),
        vector3(36.691745758057, -1283.6768798828, 29.293655395508),
        vector3(-7.5025911331177, -1289.9505615234, 29.327529907227),
        vector3(-52.262241363525, 6395.8564453125, 31.490379333496),
        vector3(-113.00551605225, 6208.3041992188, 32.385971069336),
        vector3(-162.05615234375, 6189.2333984375, 31.43544960022),
    }
}
cfg.warehouses = {
    ["k4_garage3_shell"] = {
        name = "Garage I",
        minLevel = 0,
        image = "k4_garage3_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(-3.510986, -0.003479, -1.649826),
        doorHeading = 270.377472,
        price = 1000000,
    },
    ["k4_garage2_shell"] = {
        name = "Garage II",
        minLevel = 0,
        image = "k4_garage2_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(-3.271851, 0.126160, -1.649902),
        doorHeading = 93.403976,
        price = 2000000
    },
    ["k4_house2_shell"] = {
        name = "Flat I",
        minLevel = 0,
        image = "k4_house2_shell",
        locationSize = "house_small",
        doorOffset = vector3(-6.991943, -2.018494, -1.241798),
        doorHeading = 98.936058,
        price = 5000000
    },
    ["k4_garage5_shell"] = {
        name = "Garage III",
        minLevel = 2,
        image = "k4_garage5_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(6.003662, 2.887207, -1.495010),
        doorHeading = 171.946854,
        price = 5000000
    },
    ["k4_basement1_shell"] = {
        name = "Basement I",
        minLevel = 7,
        image = "k4_basement1_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(-4.980713, -4.382812, 0.607620),
        doorHeading = 11.366665,
        price = 7000000
    },
    ["k4_garage4_shell"] = {
        name = "Garage IV",
        minLevel = 31,
        image = "k4_garage4_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(8.501587, 1.624268, -1.745056),
        doorHeading = 77.594101,
        price = 25000000
    },
    ["k4_labempty4_shell"] = {
        name = "Warehouse I",
        minLevel = 12,
        image = "k4_labempty4_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(10.344482, 1.921326, -2.863632),
        doorHeading = 89.159668,
        price = 10000000
    },
    ["k4_warehouse4_shell"] = {
        name = "Warehouse II",
        minLevel = 21,
        image = "k4_warehouse4_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(8.279297, -3.178223, -1.484230),
        doorHeading = 81.232292,
        price = 15000000
    },
    ["k4_garage6_shell"] = {
        name = "Garage V",
        minLevel = 38,
        image = "k4_garage6_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(13.238770, 1.601807, -1.744949),
        doorHeading = 90.391853,
        price = 30000000
    },
    ["k4_labempty_shell"] = {
        name = "Warehouse III",
        minLevel = 26,
        image = "k4_labempty_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(-6.391479, 8.283142, -1.953674),
        doorHeading = 177.786133,
        price = 20000000
    },
    ["k4_bunker_shell"] = {
        name = "Bunker I",
        minLevel = 42,
        image = "k4_bunker_shell",
        locationSize = "warehouse_small",
        doorOffset = vector3(0.009888, -6.417969, 1.697632),
        doorHeading = 356.576172,
        price = 35000000
    },
    ["k4_house12_shell"] = {
        name = "House I",
        minLevel = 17,
        image = "k4_house12_shell",
        locationSize = "house_large",
        doorOffset = vector3(-3.160522, 3.983521, -1.572403),
        doorHeading = 266.476746,
        price = 10000000
    },
    ["k4_labempty2_shell"] = {
        name = "Warehouse IV",
        minLevel = 64,
        image = "k4_labempty2_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(17.352295, 11.779663, -3.087570),
        doorHeading = 82.231941,
        price = 60000000
    },
    ["k4_warehouse5_shell"] = {
        name = "Warehouse V",
        minLevel = 46,
        image = "k4_warehouse5_shell",
        locationSize = "warehouse_large",
        doorOffset = vector3(12.545776, -7.477356, -3.067719),
        doorHeading = 83.497070,
        price = 40000000
    },
    ["k4_biker2_shell"] = {
        name = "Warehouse VI",
        minLevel = 69,
        image = "k4_biker2_shell",
        locationSize = "warehouse_large",
        doorOffset = vector3(-10.555054, 3.103271, 0.008011),
        doorHeading = 174.284729,
        price = 75000000
    },
    ["k4_garage7_shell"] = {
        name = "Garage VI",
        minLevel = 79,
        image = "k4_garage7_shell",
        locationSize = "warehouse_medium",
        doorOffset = vector3(11.618774, -14.224121, -1.994766),
        doorHeading = 78.553322,
        price = 150000000
    },
    ["k4_house11_shell"] = {
        name = "House II",
        minLevel = 59,
        image = "k4_house11_shell",
        locationSize = "house_large",
        doorOffset = vector3(8.629150, 2.622559, 2.521866),
        doorHeading = 77.844505,
        price = 50000000
    },
    ["k4_warehouse2_shell"] = {
        name = "Warehouse VII",
        minLevel = 52,
        image = "k4_warehouse2_shell",
        locationSize = "warehouse_large",
        doorOffset = vector3(-12.201782, 5.795471, -3.054092),
        doorHeading = 262.212433,
        price = 45000000
    },
    ["k4_manor2_shell"] = {
        name = "House III",
        minLevel = 83,
        image = "k4_manor2_shell",
        locationSize = "house_large",
        doorOffset = vector3(7.016602, -8.569336, -5.965591),
        doorHeading = 12.928394,
        price = 200000000
    },
    ["k4_vwmansion2a_shell"] = {
        name = "House IV",
        minLevel = 100,
        image = "k4_vwmansion2a_shell",
        locationSize = "house_large",
        doorOffset = vector3(-10.634033, 6.154968, 3.619492),
        doorHeading = 287.063507,
        price = 500000000
    },
    ["k4_vwmansion2b_shell"] = {
        name = "House V",
        minLevel = 93,
        image = "k4_vwmansion2b_shell",
        locationSize = "house_large",
        doorOffset = vector3(-10.785278, 6.128601, 3.619293),
        doorHeading = 278.821167,
        price = 400000000
    },
    ["k4_stashhouse1_shell"] = {
        name = "Warehouse VIII",
        minLevel = 72,
        image = "k4_stashhouse1_shell",
        locationSize = "warehouse_large",
        doorOffset = vector3(20.694214, -0.358032, -3.064743),
        doorHeading = 91.944450,
        price = 100000000
    },
    ["k4_garage1_shell"] = {
        name = "Warehouse IX",
        minLevel = 88,
        image = "k4_garage1_shell",
        locationSize = "warehouse_large",
        doorOffset = vector3(-0.367065, 14.142578, 2.467789),
        doorHeading = 174.584427,
        price = 300000000
    }
}

local fxHandles = {}

-- === HELPER FUNCTION: createDirtPfx(bagObj) ===
local function createDirtPfx(bagObj)
    local asset = "cut_michael1"
    local name  = "cs_mich1_pick_dirt_trail"

    RequestNamedPtfxAsset(asset)
    while not HasNamedPtfxAssetLoaded(asset) do Wait(0) end

    for _ = 1, 80 do
        if not DoesEntityExist(bagObj) then break end

        UseParticleFxAssetNextCall(asset)

        local ox = (math.random() - 0.5) * 0.02
        local oy = (math.random() - 0.5) * 0.02
        local oz = 0.5 + (math.random() - 0.5) * 0.1
        local sc = 1.0 + math.random() * 0.2

        local h = StartNetworkedParticleFxLoopedOnEntity(
            name, bagObj,
            ox, 0.0 + oy, oz,
            -285.0, -430.0, 0.0,
            sc,
            false, false, false
        )

        if h and h ~= 0 then
            fxHandles[#fxHandles+1] = h
        end
        Wait(50)
    end
end

-- === HELPER FUNCTION: faceEntity(ped, targetEntity, rotationOffset) ===
local function faceEntity(ped, targetEntity, rotationOffset)
    local p = GetEntityCoords(ped)
    local t = GetEntityCoords(targetEntity)

    local dx = t.x - p.x
    local dy = t.y - p.y

---@diagnostic disable-next-line: deprecated
    local heading = math.deg(math.atan2(dy, dx)) - 90.0

    -- normalize 0..360
    heading = (heading + 360.0) % 360.0
    heading = heading + (rotationOffset or 0)

    SetEntityHeading(ped, heading)
end

-- === HELPER FUNCTION: getHeadingToEntity(ped, targetEntity, rotationOffset) ===
local function getHeadingToEntity(ped, targetEntity, rotationOffset)
    local p = GetEntityCoords(ped)
    local t = GetEntityCoords(targetEntity)

    local dx = t.x - p.x
    local dy = t.y - p.y

---@diagnostic disable-next-line: deprecated
    local heading = math.deg(math.atan2(dy, dx)) - 90.0

    heading = (heading + 360.0) % 360.0

    heading = heading + (rotationOffset or 0)
    return heading
end

-- === HELPER FUNCTION: getClosestStandPosToPed(targetObject, ped, dist) ===
local function getClosestStandPosToPed(targetObject, ped, dist)
    dist = dist or 0.85
    local t = GetEntityCoords(targetObject)
    local p = GetEntityCoords(ped)

    local dir = (p - t)
    local len = #(dir)
    if len < 0.001 then
        return t
    end

    dir = dir / len
    return t + (dir * dist) -- point dist away from target, towards the ped
end

-- === HELPER FUNCTION: approachEntity(ped, targetObject, dist, timeoutMs, speed, headingOffset, stoppingRange) ===
local function approachEntity(ped, targetObject, dist, timeoutMs, speed, headingOffset, stoppingRange)
    dist = dist or 0.85
    timeoutMs = timeoutMs or 2200
    speed = speed or 1.0
    headingOffset = headingOffset or 0.0
    stoppingRange = stoppingRange or 0.2

    local standPos = getClosestStandPosToPed(targetObject, ped, dist)
    local heading = getHeadingToEntity(ped, targetObject, headingOffset)

    TaskGoStraightToCoord(ped, standPos.x, standPos.y, standPos.z, speed, timeoutMs, heading, stoppingRange)

    local start = GetGameTimer()
    while #(GetEntityCoords(ped) - standPos) > (dist + 0.15) do
        if (GetGameTimer() - start) > timeoutMs then break end
        Wait(0)
        standPos = getClosestStandPosToPed(targetObject, ped, dist)
    end

    local arrived = (#(GetEntityCoords(ped) - standPos) <= (dist + 0.15))
    if arrived then
        faceEntity(ped, targetObject, headingOffset)
    end

    return arrived
end

-- === HELPER FUNCTION: useSoilBag(targetObject) ===
local function useSoilBag(targetObject)
    local playerPed = PlayerPedId()

    if not approachEntity(playerPed, targetObject, 0.85, 2200, 1.0, -60.0, 0.2) then
        notify("~r~Entity was too far")
        return
    end

    local bagHash = CMG.loadModel(`4bit_prop_soil`)
    if not bagHash then
        return
    end

    local pedCoords = GetEntityCoords(playerPed)
    CMG.requestEntitySpawn("trapper_soil", pedCoords)
    local bagObj = CreateObject(bagHash, pedCoords.x, pedCoords.y, pedCoords.z, true, true, false)
    SetEntityAsMissionEntity(bagObj, true, true)

    AttachEntityToEntity(
        bagObj,
        playerPed,
        GetPedBoneIndex(playerPed, 57005),
        0.0050, 0.0700, -0.0700, -285.0000, -175.0000, 890.0000,
        true, true, false, true, 1, true
    )

    local dict = "timetable@gardener@filling_can"
    local anim = "gar_ig_5_filling_can"

    CMG.loadAnimDict(dict)

    local fx = nil
    local fxStarted = false

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        createDirtPfx(bagObj)
    end)

    local loops = 5
    local loopMs = 800

    FreezeEntityPosition(playerPed, true)
    SetEntityCollision(playerPed, false, false)
    SetPedCanRagdoll(playerPed, false)

    for _ = 1, loops do
        TaskPlayAnim(playerPed, dict, anim, 2.0, 8.0, loopMs, 1, 0, false, false, false) -- flag 1: normal
        Wait(loopMs)
        StopAnimTask(playerPed, dict, anim, 0.1)
        Wait(0)
    end

    ClearPedSecondaryTask(playerPed)
    ClearPedTasks(playerPed)

    SetPedCanRagdoll(playerPed, true)
    SetEntityCollision(playerPed, true, true)
    FreezeEntityPosition(playerPed, false)


    if fxStarted and fx and fx ~= 0 then
        StopParticleFxLooped(fx, false)
    end

    ClearPedSecondaryTask(playerPed)
    ClearPedTasksImmediately(playerPed)

    if DoesEntityExist(bagObj) then
        DeleteEntity(bagObj)
    end

    SetModelAsNoLongerNeeded(bagHash)
    for _, h in ipairs(fxHandles) do
        StopParticleFxLooped(h, false)
    end
    fxHandles = {}
end

-- === HELPER FUNCTION: plantSeedAnim(targetObject) ===
local function plantSeedAnim(targetObject)
    local dict = "anim@heists@narcotics@trash"
    local anim = "pickup"

    local playerPed = PlayerPedId()
    if not approachEntity(playerPed, targetObject, 0.85, 2200, 1.0, 0.0, 0.2) then
        notify("~r~Entity was too far")
        return
    end

    CMG.loadAnimDict(dict)
    TaskPlayAnim(playerPed, dict, anim, 2.0, 8.0, 1400, 1, 0, false, false, false)
end

-- === HELPER FUNCTION: useWateringCan(targetObject) ===
local function useWateringCan(targetObject)
    local playerPed = PlayerPedId()
    if not approachEntity(playerPed, targetObject, 0.85, 2200, 1.0, -20.0, 0.2) then
        notify("~r~Entity was too far")
        return
    end

    local canHash = CMG.loadModel(`prop_wateringcan002`)
    if not canHash then return end

    local playerPosition = CMG.getPlayerCoords()
    CMG.requestEntitySpawn("trapper_watercan", playerPosition)

    local canObj = CreateObject(canHash, playerPosition.x, playerPosition.y, playerPosition.z, true, true, false)
    SetEntityAsMissionEntity(canObj, true, true)

    AttachEntityToEntity(
        canObj,
        playerPed,
        GetPedBoneIndex(playerPed, 57005),
        0.27, 0.0, -0.23,
        -75.0, 41.0, 36.0,
        true, true, false, true, 1, true
    )

    local dict = "bz@watercan@animation"
    local anim = "bz_watercan"
    CMG.loadAnimDict(dict)

    local animMs = 4000
    TaskPlayAnim(playerPed, dict, anim, 2.0, 2.0, animMs, 16, 0, false, false, false)
    Wait(animMs)

    ClearPedSecondaryTask(playerPed)

    if DoesEntityExist(canObj) then
        DeleteEntity(canObj)
    end
    SetModelAsNoLongerNeeded(canHash)
end

-- === HELPER FUNCTION: useHoseWatering(targetObject) ===
local function useHoseWatering(targetObject)
    local waterMs = 4000

    local asset = "core"
    local effectName = "ent_sht_water"
    RequestNamedPtfxAsset(asset)
    while not HasNamedPtfxAssetLoaded(asset) do Wait(0) end

    local pos = GetEntityCoords(targetObject)
    UseParticleFxAssetNextCall(asset)
    local fxHandle = StartParticleFxLoopedAtCoord(
        effectName,
        pos.x, pos.y, pos.z + 0.4,
        0.0, 0.0, 0.0,
        0.5,
        false, false, false, false
    )

    Wait(waterMs)

    if fxHandle and DoesParticleFxLoopedExist(fxHandle) then
        StopParticleFxLooped(fxHandle, false)
    end
end

-- === HELPER FUNCTION: harvestPlant(targetObject, placedItemId, delay) ===
local function harvestPlant(targetObject, placedItemId, delay)
    local ped = PlayerPedId()

    if not approachEntity(ped, targetObject, 0.85, 2200, 1.0, 0.0, 0.2) then
        notify("~r~Entity was too far")
        tCMG.setCanAnim(true)
        -- Beginner: sends the "020ba07cfc" event to the server.
        TriggerServerEvent("020ba07cfc", placedItemId)
        return
    end

    local dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@'
    local anim = 'weed_crouch_checkingleaves_idle_01_inspector'
    CMG.loadAnimDict(dict)
    local animMs = delay
    TaskPlayAnim(ped, dict, anim, 3.0, 3.0, animMs, 0, 0, false, false, false)
    SetTimeout(animMs, function()
        tCMG.setCanAnim(true)
        CMG.addJobTutorialProgress("harvest_weed", 1)
        -- Beginner: sends the "020ba07cfc" event to the server.
        TriggerServerEvent("020ba07cfc", placedItemId)
    end)
end

local genericBoxOffsets = {
    {
        {offset=vector3(-0.875, 0.010, 0.955), rot=vector3(0.0, 0.0, 0.0)},
    },
    {
        {offset=vector3(0.055, 0.010, 0.955), rot=vector3(0.0, 0.0, 0.0)}
    },
    {
        { offset=vector3(0.875, 0.010, 0.955), rot=vector3(0.0, 0.0, 0.0)}
    },
    {
        {offset=vector3(-0.875, 0.010, 0.080), rot=vector3(0.0, 0.0, 0.0)},
    },
    {
        {offset=vector3(0.055, 0.010, 0.080), rot=vector3(0.0, 0.0, 0.0)}
    },
    {
        {offset=vector3(0.875, 0.010, 0.080), rot=vector3(0.0, 0.0, 0.0) }
    },
}

-- First-person weed workbench: offsets relative to weed workbench chair (Y-forward after chair heading + 180°).
cfg.weedWorkbenchFp = {
    maxUnprocessedBudsVisible = 12,
    maxProcessedBudsVisible = 12,
    leavesPerBud = 10,
    lerpBudTrayToTableMs = 750,
    lerpBudTableToProcessedMs = 700,
    unprocessedTrayOffset = vector3(-0.6735, 1.0873, 0.8800),
    unprocessedTrayHeadingAdd = -8.0150,
    processedTrayOffset = vector3(0.5752, 0.9026, 0.8800),
    processedTrayHeadingAdd = -7.9590,
    tableBudOffset =  vector3(-0.0588, 0.8600, 0.9800),
    fpCamOffset = vector3(0.1618, -0.0242, 1.7987),
    fpCamPitch = -43.19093,
    fpCamRoll = -0.00000,
    fpCamYaw = -120.64316,
    fpCamLookAtZOffset = 0.42,
    fpFov = 52.00,
    fpTrayModel = "ch_prop_ch_tray_01a",
    trayBudSlotLocals = {
        vector3(-0.12, 0.08, 0.02),
        vector3(0.0, 0.08, 0.02),
        vector3(0.12, 0.08, 0.02),
        vector3(-0.12, -0.02, 0.02),
        vector3(0.0, -0.02, 0.02),
        vector3(0.12, -0.02, 0.02),
        vector3(-0.12, -0.12, 0.02),
        vector3(0.0, -0.12, 0.02),
        vector3(0.12, -0.12, 0.02),
        vector3(-0.06, 0.18, 0.02),
        vector3(0.06, 0.18, 0.02),
        vector3(0.0, -0.22, 0.02),
    },
    leafAttachLocal = {
        { pos = vector3(0.04, 0.02, 0.06), rot = vector3(0.0, 0.0, 20.0) },
        { pos = vector3(-0.05, 0.03, 0.05), rot = vector3(0.0, 0.0, -35.0) },
        { pos = vector3(0.02, -0.04, 0.07), rot = vector3(10.0, 0.0, 80.0) },
        { pos = vector3(-0.03, -0.02, 0.06), rot = vector3(-5.0, 0.0, -70.0) },
        { pos = vector3(0.06, -0.01, 0.05), rot = vector3(0.0, 15.0, 140.0) },
        { pos = vector3(-0.06, 0.0, 0.065), rot = vector3(0.0, -12.0, -110.0) },
        { pos = vector3(0.0, 0.055, 0.055), rot = vector3(-8.0, 5.0, 45.0) },
        { pos = vector3(0.055, 0.04, 0.055), rot = vector3(12.0, 0.0, 155.0) },
        { pos = vector3(-0.02, -0.055, 0.06), rot = vector3(6.0, -10.0, -95.0) },
        { pos = vector3(0.03, 0.045, 0.045), rot = vector3(-10.0, 12.0, 200.0) },
    },
    rayPickMaxDist = 14.0,
    rayPickRadius = 0.22,
    -- Bagging (processed bud + empty bag → weed bag); left tray: buds in grid, empty-bag stack at top (+Y).
    maxProcessedBudsBaggingVisible = 12,
    maxEmptyBagsVisible = 10,
    baggingEmptyBagSlotLocals = {
        vector3(0.0, 0.24, 0.020),
        vector3(0.0, 0.24, 0.048),
        vector3(0.0, 0.24, 0.076),
        vector3(0.0, 0.24, 0.104),
        vector3(0.0, 0.24, 0.132),
        vector3(0.0, 0.24, 0.160),
        vector3(0.0, 0.24, 0.188),
        vector3(0.0, 0.24, 0.216),
        vector3(0.0, 0.24, 0.244),
        vector3(0.0, 0.24, 0.272),
    },
    baggingCombineOffset = vector3(-0.0588, 0.8600, 0.9800),
    lerpBaggingToCenterMs = 550,
    lerpBaggingCombineMs = 400,
    lerpBaggingToProcessedTrayMs = 700,
}

local trapperWaterCookXpHydrationMaxExclusive = 0.66

-- === HELPER FUNCTION: tryGrantTrapperCookXpForWateringPlant(user_id, plant) ===
local function tryGrantTrapperCookXpForWateringPlant(user_id, plant)
    if not plant then
        return
    end

    if CMG.isTrapperPlantFullyGrown(plant) then
        return
    end

    local preHydration = 0.0
    if plant.lastWateredAt then
        local nowMs = os.time() * 1000
        local elapsedSinceWaterMs = nowMs - plant.lastWateredAt * 1000
        preHydration = math.max(0.0, math.min(1.0, 1.0 - (elapsedSinceWaterMs / cfg.hydrationDrainDurationMs)))
    end

    if preHydration >= trapperWaterCookXpHydrationMaxExclusive then
        return
    end

    local waterJobXp, waterBoosted = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.water.jobXP)
    CMG.increaseXP("cmg_trapper_cook", user_id, waterJobXp, waterBoosted)
    local waterSkillXp = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.water.skillXP)
    CMG.addSkillXP(user_id, "trapper", waterSkillXp, true)
end

cfg.items = {
    ["plant_pot_empty"] = {
        name = "Empty Plant Pot",
        model = `plt_bucket_a`,
        weight = 1.0,
        placeable = true,
        interact = {
            ["soil_bag"] = {
                label = "Fill with Soil",
                server_use = function(_source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouseId = CMG.getPlayerWarehouseId(user_id)
                    local playersInWarehouse = CMG.getPlayersInWarehouseId(playerWarehouseId)

                    for _, targetUserId in pairs(playersInWarehouse) do
                        local targetSrc = CMG.getUserSource(targetUserId)
                        local newItemId = "plant_pot_soil"
                        local interactItemId = "soil_bag"
                        local performAnimation = targetUserId == user_id and true or false
                        TriggerClientEvent("770e1455bc", targetSrc, placedItemId, newItemId, interactItemId, performAnimation)
                        CMG.updateItemInTrappingWarehouse(playerWarehouseId, placedItemId, newItemId)
                    end
                end,
                client_use = function(targetObject, placedItemId)
                    useSoilBag(targetObject)
                    tCMG.setCanAnim(true)
                    CMG.addJobTutorialProgress("fill_soil", 1)
                    -- Beginner: sends the "020ba07cfc" event to the server.
                    TriggerServerEvent("020ba07cfc", placedItemId)
                end,
            }
        },
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {
                    offset=vector3(-0.935, -0.020, 0.951),
                    rot=vector3(0.0, 0.0, 0.0)
                },
            },
            {
                {
                    offset=vector3(0.035, -0.020, 0.951),
                    rot=vector3(0.0, 0.0, 0.0)
                }
            },
            {
                {
                    offset=vector3(0.995, -0.020, 0.951),
                    rot=vector3(0.0, 0.0, 0.0)
                }
            },
            {
                {
                    offset=vector3(-0.935, -0.020, 0.061),
                    rot=vector3(0.0, 0.0, 0.0)
                }
            },
            {
                {
                    offset=vector3(0.035, -0.020, 0.061),
                    rot=vector3(0.0, 0.0, 0.0)
                }
            },
            {
                {
                    offset=vector3(0.995, -0.020, 0.061),
                    rot=vector3(0.0, 0.0, 0.0)
                }
            }
        }
    },
    ["plant_pot_soil"] = {
        name = "Plant Pot with Soil",
        model = `plt_bucket_c`,
        weight = 3.0,
        placeable = true,
        pickupItemId = "plant_pot_empty",
        interact = {
            ["weed_seed"] = {
                label = "Plant Seed",
                server_use = function(_source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouseId = CMG.getPlayerWarehouseId(user_id)
                    local playersInWarehouse = CMG.getPlayersInWarehouseId(playerWarehouseId)

                    CMG.startGrowingPlant(placedItemId, playerWarehouseId, user_id)

                    --TODO: Save System
                    for _, targetUserId in pairs(playersInWarehouse) do
                        local targetSrc = CMG.getUserSource(targetUserId)
                        local newItemId = "plant_pot_seeded"
                        local interactItemId = "weed_seed"
                        local performAnimation = targetUserId == user_id and true or false
                        TriggerClientEvent("770e1455bc", targetSrc, placedItemId, newItemId, interactItemId, performAnimation)
                        CMG.updateItemInTrappingWarehouse(playerWarehouseId, placedItemId, newItemId)
                        TriggerClientEvent("c8a4567418", targetSrc, placedItemId, CMG.getPlant(placedItemId))
                    end

                    local plantJobXp, plantBoosted = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.plant.jobXP)
                    CMG.increaseXP("cmg_trapper_cook", user_id, plantJobXp, plantBoosted)
                    local plantSkillXp = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.plant.skillXP)
                    CMG.addSkillXP(user_id, "trapper", plantSkillXp, true)
                end,
                client_all = function(plant)
                    plant.startedAt = GetGameTimer()
                    plant.durationMs = cfg.plantGrowthDurationMs
                    plant.totalPausedMs = 0
                end,
                client_use = function(targetObject, placedItemId)
                    plantSeedAnim(targetObject)
                    tCMG.setCanAnim(true)
                    CMG.addJobTutorialProgress("put_seed", 1)
                    -- Beginner: sends the "020ba07cfc" event to the server.
                    TriggerServerEvent("020ba07cfc", placedItemId)
                end,
            }
        }
    },
    ["plant_pot_seeded"] = {
        name = "Plant Pot with Seed",
        model = `plt_bucket_d`,
        weight = 3.0,
        placeable = false,
        drawUI = true,
        interact = {
            ["water_can"] = {
                label = "Water",
                server_use = function(_source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouse = CMG.getPlayerWarehouseId(user_id)
                    local playersInWarehouse = CMG.getPlayersInWarehouseId(playerWarehouse)

                    for _, targetUserId in pairs(playersInWarehouse) do
                        local targetSrc = CMG.getUserSource(targetUserId)
                        local performAnimation = (targetUserId == user_id)
                        TriggerClientEvent("75f86594c8", targetSrc, "water_can", placedItemId, performAnimation)
                    end

                    local plant = CMG.getPlant(placedItemId)
                    if plant then
                        tryGrantTrapperCookXpForWateringPlant(user_id, plant)
                        local nowS = os.time()
                        plant.lastWateredAt = nowS

                        if plant.pausedAt then
                            plant.totalPausedMs = (plant.totalPausedMs or 0) + math.max(0, (nowS - plant.pausedAt) * 1000)
                            plant.pausedAt = nil
                        end
                        CMG.syncTrapperPlantWarehouseObject(placedItemId)
                    end
                end,
                client_all = function(plant)
                    plant.hydration = 1.0
                end,
                client_use = function(targetObject, placedItemId)
                    useWateringCan(targetObject)
                    tCMG.setCanAnim(true)
                    CMG.addJobTutorialProgress("use_watering_can", 1)
                    -- Beginner: sends the "020ba07cfc" event to the server.
                    TriggerServerEvent("020ba07cfc", placedItemId)
                end,
            },
            ["shears"] = {
                label = "Harvest Plant",
                delay = 4000,
                server_use = function(_source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouse = CMG.getPlayerWarehouseId(user_id)
                    local playersInWarehouse = CMG.getPlayersInWarehouseId(playerWarehouse)

                    CMG.clearPlantState(playerWarehouse, placedItemId)

                    for _, targetUserId in pairs(playersInWarehouse) do
                        local targetSrc = CMG.getUserSource(targetUserId)
                        local performAnimation = (targetUserId == user_id)

                        local newItemId = "plant_pot_soil"
                        TriggerClientEvent("770e1455bc", targetSrc, placedItemId, newItemId, "shears", performAnimation)
                        CMG.updateItemInTrappingWarehouse(playerWarehouse, placedItemId, newItemId)
                    end

                    local cookLevel = select(1, CMG.getLevelSync("cmg_trapper_cook", user_id))
                    if not cookLevel then cookLevel = 0 end
                    local purity = math.min(100, math.max(1, cookLevel))
                    CMG.giveInventoryItem(user_id, "weed_bud_" .. purity, 1)

                    local harvestJobXp, harvestBoosted = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.harvest.jobXP)
                    CMG.increaseXP("cmg_trapper_cook", user_id, harvestJobXp, harvestBoosted)
                    local harvestSkillXp = CMG.applyAllUserXPBoosts(user_id, cfgXP.trapperCook.harvest.skillXP)
                    CMG.addSkillXP(user_id, "trapper", harvestSkillXp, true)

                end,
                client_use = function(targetObject, placedItemId, delay)
                    harvestPlant(targetObject, placedItemId, delay)
                end
            },
            ["garden_hose"] = {
                label = "Water",
                server_use = function(_source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouse = CMG.getPlayerWarehouseId(user_id)
                    local playersInWarehouse = CMG.getPlayersInWarehouseId(playerWarehouse)

                    for _, targetUserId in pairs(playersInWarehouse) do
                        local targetSrc = CMG.getUserSource(targetUserId)
                        local performAnimation = (targetUserId == user_id)
                        TriggerClientEvent("75f86594c8", targetSrc, "garden_hose", placedItemId, performAnimation)
                    end

                    local plant = CMG.getPlant(placedItemId)
                    if plant then
                        tryGrantTrapperCookXpForWateringPlant(user_id, plant)
                        local nowS = os.time()
                        plant.lastWateredAt = nowS

                        if plant.pausedAt then
                            plant.totalPausedMs = (plant.totalPausedMs or 0) + math.max(0, (nowS - plant.pausedAt) * 1000)
                            plant.pausedAt = nil
                        end
                        CMG.syncTrapperPlantWarehouseObject(placedItemId)
                    end
                end,
                client_all = function(plant)
                    plant.hydration = 1.0
                end,
                client_use = function(targetObject, placedItemId)
                    useHoseWatering(targetObject)
                    tCMG.setCanAnim(true)
                    CMG.addJobTutorialProgress("use_watering_can", 1)
                    -- Beginner: sends the "020ba07cfc" event to the server.
                    TriggerServerEvent("020ba07cfc", placedItemId)
                end,
            },
        }
    },
    ["soil_bag"] = {
        name = "Bag of Soil",
        model = `4bit_prop_soil`,
        weight = 1.0,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1, -0.280, 1.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 1.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 1.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 1.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 1.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0, -0.280, 1.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 1.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 1.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 1.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 1.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(1, -0.280, 1.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 1.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 1.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 1.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 1.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1, -0.280, 0.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 0.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 0.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 0.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(-1, -0.280, 0.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0, -0.280, 0.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 0.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 0.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 0.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(0, -0.280, 0.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(1, -0.280, 0.050), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 0.200), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 0.350), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 0.500), rot=vector3(-90.0, 0.0, 0.0)},
                {offset=vector3(1, -0.280, 0.650), rot=vector3(-90.0, 0.0, 0.0)},
            },
        }
    },
    ["water_can"] = {
        name = "Watering Can",
        model = `prop_wateringcan002`,
        shelfModel = `prop_wateringcan`,
        weight = 1.0,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-0.930, 0.255, 1.010), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.930, 0.015, 1.010), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.930, -0.225, 1.010), rot=vector3(0.0, 0.0, 0.0)}
            },
            {
                {offset=vector3(0.055, 0.255, 1.010), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, 0.015, 1.010), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.225, 1.010), rot=vector3(0.0, 0.0, 0.0),}
            },
            {
                {offset=vector3(0.930, 0.225, 1.010), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.930, 0.015, 1.010), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.930, -0.225, 1.010), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.930, 0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.930, 0.015, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.930, -0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.055, 0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.015, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.930, 0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.930, 0.015, 0.145),rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.930, -0.225, 0.145),rot=vector3(0.0, 0.0, 0.0)},
            }
        },
    },
    ["shears"] = {
        name = "Shears",
        model = `4bit_anim_scissors`,
        weight = 1.0,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1.110, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.980), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.980), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.980), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1.110, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.095), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.095), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.095), rot=vector3(0.0, 0.0, 0.0)},
            },
        }
    },
    ["weed_seed"] = {
        name = "Cannabis Seed",
        model = `p_weed_bottle_s`,
        weight = 0.1,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1.110, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 1.035), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 1.035), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 1.035), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1.110, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.150), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.150), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.150), rot=vector3(0.0, 0.0, 0.0)},
            },
        }
    },
    ["weed_workbench"] = {
        name = "Weed Workbench",
        model = `bkr_prop_weed_chair_01a`,
        flipHeading = true,
        weight = 5.0,
        models = {
            [`bkr_prop_weed_table_01b`] = {
                offset = vector3(-0.04737, 0.99657, 0.04045),
                headingOffset = -8.24,
                ignoreParentFlip = true
            }
        },
        placeable = true,
        interact = {
            ["weed_bud"] = {
                label = "Process Cannabis Bud",
                server_use = function(source, user_id, _itemIdOnFloor, placedItemId)
                    local hasAny = false
                    for p = 100, 1, -1 do
                        if CMG.getInventoryItemAmount(user_id, "weed_bud_" .. p) >= 1 then
                            hasAny = true
                            break
                        end
                    end
                    if not hasAny then
                        notify(source, "~r~You need a cannabis bud to process.")
                        TriggerClientEvent("acc4e317a4", source)
                        return
                    end

                    TriggerClientEvent("75f86594c8", source, "weed_bud", placedItemId, true)
                end,
                client_all = function(_plant)
                end,
                client_use = function(_targetObject, _placedItemId)
                    CMG.processWeedBud()
                end,
            },
            ["weed_processed_bud"] = {
                label = "Bag processed cannabis",
                server_use = function(source, user_id, _itemIdOnFloor, placedItemId)
                    local hasProc = false
                    for p = 100, 1, -1 do
                        if CMG.getInventoryItemAmount(user_id, "weed_processed_bud_" .. p) >= 1 then
                            hasProc = true
                            break
                        end
                    end
                    if not hasProc then
                        notify(source, "~r~You need processed cannabis bud to bag.")
                        TriggerClientEvent("acc4e317a4", source)
                        return
                    end
                    if CMG.getInventoryItemAmount(user_id, "weed_bag_empty") < 1 then
                        notify(source, "~r~You need an empty weed bag.")
                        TriggerClientEvent("acc4e317a4", source)
                        return
                    end
                    TriggerClientEvent("75f86594c8", source, "weed_processed_bud", placedItemId, true)
                end,
                client_all = function(_plant)
                end,
                client_use = function(_targetObject, _placedItemId)
                    CMG.processWeedBag()
                end,
            },
        },
        canPlaceInShelf = true,
        shelfModel = `prop_hat_box_05`,
        shelfOffsets= genericBoxOffsets,
    },
    ["garden_hose"] = {
        name = "Garden Hose",
        model = `prop_hose_1`,
        weight = 5.0,
        placeable = true,
        interact = {
            ["no_item_needed"] = {
                label = "Use Hose",
            },
        },
    },
    ["weed_bud_1"] = {
        name = "Cannabis Bud (1% Purity)",
        weight = 1.0,
        placeable = false,
        model = `bkr_prop_weed_bud_01b`,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1.110, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1.110, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
        }
    },
    ["weed_bag_empty"] = {
        name = "Empty Weed Bag",
        model = `bkr_prop_weed_bag_01a`,
        weight = 0.1,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1.110, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1.110, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
        }
    },
    ["weed_processed_bud_1"] = {
        name = "Processed cannabis bud (1% purity)",
        weight = 1.0,
        placeable = false,
        model = `bkr_prop_weed_bud_pruned_01a`,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-0.200, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
        },
    },
    ["weed_bag_1"] = {
        name = "Bag of Cannabis (1% Purity)",
        model = `sf_prop_sf_bag_weed_open_01b`,
        weight = 1.0,
        placeable = false,
        canPlaceInShelf = true,
        shelfOffsets = {
            {
                {offset=vector3(-1.110, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.955), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.955), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.955), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-1.110, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-1.110, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-1.110, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.885, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.885, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.885, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(-0.655, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.655, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.655, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(-0.200, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(-0.200, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(-0.200, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.055, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.055, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.055, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.280, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.280, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.280, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
            {
                {offset=vector3(0.700, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.700, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.700, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(0.925, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(0.925, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(0.925, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},

                {offset=vector3(1.150, 0.160, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, 0.040, 0.070), rot=vector3(0.0, 0.0, 0.0),},
                {offset=vector3(1.150, -0.065, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.180, 0.070), rot=vector3(0.0, 0.0, 0.0)},
                {offset=vector3(1.150, -0.300, 0.070), rot=vector3(0.0, 0.0, 0.0)},
            },
        }
    },
    ["shelf"] = {
        name = "Shelving Unit",
        model = `prop_shelves_02`,
        weight = 5.0,
        placeable = true,
        interact = {
            ["no_item_needed"] = {
                label = "Access Shelf",
                server_use = function(source, user_id, _itemIdOnFloor, placedItemId)
                    local playerWarehouseId = CMG.getPlayerWarehouseId(user_id)
                    if not playerWarehouseId then
                        notify(source, "~r~Unable to access the shelf.")
                        return
                    end

                    local chestName = "warehouse_".. playerWarehouseId .. "_shelf_" .. placedItemId
                    local position = CMG.getWarehouseObjectPosition(playerWarehouseId, placedItemId)
                    if not position then
                        return
                    end
                    CMG.openChest(source, chestName, cfg.shelfMaxWeight, nil, false, "Shelf", {
                        position = vector3(position.x, position.y, position.z),
                        radius = 5.0,
                    })
                end,
                client_all = function(_plant)
                end,
                client_use = function(_targetObject, _placedItemId)
                    --TODO this doesn't get called?
                end,
            },
        },
        canPlaceInShelf = true,
        shelfModel = `prop_hat_box_05`,
        shelfOffsets= genericBoxOffsets,
    }
}

-- Purity 1–100: cook level = purity % (level 1 = 1%, level 100 = 100%)
for p = 2, 100 do
    cfg.items["weed_bag_" .. p] = {
        name = "Bag of Cannabis (" .. p .. "% Purity)",
        model = cfg.items["weed_bag_1"].model,
        weight = cfg.items["weed_bag_1"].weight,
        placeable = cfg.items["weed_bag_1"].placeable,
        canPlaceInShelf = cfg.items["weed_bag_1"].canPlaceInShelf,
        shelfOffsets = cfg.items["weed_bag_1"].shelfOffsets,
    }
end

for p = 2, 100 do
    cfg.items["weed_bud_" .. p] = {
        name = "Cannabis Bud (" .. p .. "% Purity)",
        model = cfg.items["weed_bud_1"].model,
        weight = cfg.items["weed_bud_1"].weight,
        placeable = cfg.items["weed_bud_1"].placeable,
        canPlaceInShelf = cfg.items["weed_bud_1"].canPlaceInShelf,
        shelfOffsets = cfg.items["weed_bud_1"].shelfOffsets,
    }
end

for p = 2, 100 do
    cfg.items["weed_processed_bud_" .. p] = {
        name = "Processed cannabis bud (" .. p .. "% purity)",
        model = cfg.items["weed_processed_bud_1"].model,
        weight = cfg.items["weed_processed_bud_1"].weight,
        placeable = cfg.items["weed_processed_bud_1"].placeable,
        canPlaceInShelf = cfg.items["weed_processed_bud_1"].canPlaceInShelf,
        shelfOffsets = cfg.items["weed_processed_bud_1"].shelfOffsets,
    }
end

-- All weed_bag_X / weed_bud_X (any purity) share one shelf slot each; other items one slot per item id.

-- === HELPER FUNCTION: cfg.getShelfSlotKey(itemId) ===
function cfg.getShelfSlotKey(itemId)
    if itemId and itemId:match("^weed_bag_%d+$") then
        return "weed_bag"
    end
    if itemId and itemId:match("^weed_bud_%d+$") then
        return "weed_bud"
    end
    if itemId and itemId:match("^weed_processed_bud_%d+$") then
        return "weed_processed_bud"
    end
    if itemId == "weed_bag_empty" then
        return "weed_bag_empty"
    end
    return itemId
end

cfg.drugs = {
    {
        id = "cannabis",
        name = "Cannabis",
        minCookLevel = 0,
        -- equipment = {
        --     { id = "workbench", label = "Workbench", unitPrice = 500 },
        -- },
        ingredients = {
            { id = "weed_seed", label = "Cannabis Seed", unitPrice = 200 },
        },
    },
}

cfg.legalSupplies = {
    { id = "plant_pot_empty", label = "Empty Plant Pot", unitPrice = 1000 },
    { id = "soil_bag", label = "Bag of Soil", unitPrice = 50 },
    { id = "water_can", label = "Watering Can", unitPrice = 50 },
    { id = "shears", label = "Shears", unitPrice = 25000 },
    { id = "weed_bag_empty", label = "Empty Weed Bag", unitPrice = 50 },
    { id = "shelf", label = "Shelving Unit", unitPrice = 100000 },
    { id = "weed_workbench", label = "Weed Workbench", unitPrice = 100000 },
    { id = "garden_hose", label = "Garden Hose", unitPrice = 1000000 },
}

local cfgJobsForEarnings = CMG.loadModule("cfg/cfg_jobs")
local weedNpc = cfgJobsForEarnings.earnings.trapper.weed
cfg.sellableItems = {}
do
    local weedBagModel = `sf_prop_sf_bag_weed_open_01b`
    for p = 1, weedNpc.purityUpTo do
        local price = math.floor(0.5 + weedNpc.basePrice + p * weedNpc.moneyPerPurityLevel)
        cfg.sellableItems[#cfg.sellableItems + 1] = { id = "weed_bag_" .. p, model = weedBagModel, price = price }
    end
end

cfg.trapNetSellCooldownMinutes = 30
-- Max weed bags sold per NPC deal (total across all purities, not per tier).
cfg.trapNetMaxItemsPerNpcSale = 10

-- TrapNet buyers grouped by turf (15 turfs × 3 slots). Everyone has the first buyer per turf (15 NPCs).
-- Each `trapper_customers_1`..`_6` unlocks 5 more buyers in `trapNetCustomerGrowthUnlockOrder` (default: all
-- 2nd slots turf-by-turf, then all 3rd) for 30 extra → 45 total. Override order with cfg.trapNetCustomerGrowthUnlockOrder.
cfg.trapNetTurfBuyerIds = {
    { "deano", "gaz", "renz" },
    { "kells", "taz", "macca" },
    { "reece", "jords", "niko" },
    { "shugz", "dazza", "cee" },
    { "ash", "kayo", "mills" },
    { "tez", "rico", "maz" },
    { "antz", "dev", "lenny" },
    { "jase", "tiny", "kruz" },
    { "sonny", "chez", "rocco" },
    { "shaq", "lewis", "marnz" },
    { "ty", "kieran", "deno" },
    { "mo", "sav", "iggy" },
    { "caz", "nate", "jugg" },
    { "ellis", "mikes", "raz" },
    { "kane", "jax", "smokes" },
}

cfg.NPCs = {
    ["deano"] = {name = "Deano", model = `a_m_y_hipster_01`, location = vector4(-1578.2109375,253.4109954834,58.986083984375,53.858268737793)},
    ["gaz"] = {name = "Gaz", model = `a_m_y_stwhi_01`, location = vector4(-926.62414550781,139.83297729492,58.160400390625,155.90550231934)},
    ["renz"] = {name = "Renz", model = `a_m_y_latino_01`, location = vector4(-1554.8308105469,52.575828552246,58.0087890625,172.91339111328)},

    ["kells"] = {name = "Kells", model = `g_m_y_mexgang_01`, location = vector4(-1353.3231201172,-153.08570861816,48.303344726562,342.99212646484)},
    ["taz"] = {name = "Taz", model = `g_m_y_ballaeast_01`, location = vector4(-1222.5230712891,-214.41758728027,39.440307617188,62.362205505371)},
    ["macca"] = {name = "Macca", model = `g_m_y_famca_01`, location = vector4(-1248.1977539062,-399.82415771484,37.283569335938,28.34645652771)},

    ["reece"] = {name = "Reece", model = `g_m_y_lost_01`, location = vector4(-1277.0900878906,-1096.2725830078,7.2740478515625,306.14172363281)},
    ["jords"] = {name = "Jords", model = `a_m_y_business_02`, location = vector4(-1112.1362304688,-1163.4725341797,2.134765625,308.97637939453)},
    ["niko"] = {name = "Niko", model = `a_m_y_hipster_02`, location = vector4(-853.81976318359,-1119.5208740234,7.054931640625,36.850395202637)},

    ["shugz"] = {name = "Shugz", model = `a_m_m_soucent_01`, location = vector4(-268.39120483398,-1935.6263427734,29.93701171875,320.31497192383)},
    ["dazza"] = {name = "Dazza", model = `a_m_y_soucent_02`, location = vector4(-513.50769042969,-1748.8879394531,19.20361328125,240.94488525391)},
    ["cee"] = {name = "Cee", model = `g_m_y_ballasout_01`, location = vector4(-701.85491943359,-1760.5714111328,28.420532226562,184.25196838379)},

    ["ash"] = {name = "Ash", model = `a_m_y_downtown_01`, location = vector4(-200.43955993652,-1683.8637695312,34.587524414062,291.96850585938)},
    ["kayo"] = {name = "Kayo", model = `a_m_y_smartcaspat_01`, location = vector4(-158.18901062012,-1607.5911865234,34.216796875,337.32284545898)},
    ["mills"] = {name = "Mills", model = `a_m_y_beachvesp_01`, location = vector4(10.14066028595,-1663.7802734375,29.296752929688,331.65353393555)},

    ["tez"] = {name = "Tez", model = `g_m_m_mexboss_01`, location = vector4(230.28132629395,-1982.4527587891,20.619018554688,331.65353393555)},
    ["rico"] = {name = "Rico", model = `g_m_m_armboss_01`, location = vector4(305.36703491211,-2041.3450927734,20.180908203125,48.188972473145)},
    ["maz"] = {name = "Maz", model = `g_m_y_salvagoon_01`, location = vector4(388.36483764648,-2006.6768798828,23.668823242188,260.78741455078)},

    ["antz"] = {name = "Antz", model = `g_m_y_salvaboss_01`, location = vector4(347.63076782227,-1676.7164306641,32.531860351562,232.44094848633)},
    ["dev"] = {name = "Dev", model = `a_m_y_runner_01`, location = vector4(429.57363891602,-1514.5450439453,29.279907226562,212.59841918945)},
    ["lenny"] = {name = "Lenny", model = `a_m_y_genstreet_01`, location = vector4(326.12307739258,-1461.8901367188,29.953857421875,323.14959716797)},

    ["jase"] = {name = "Jase", model = `a_m_y_genstreet_02`, location = vector4(946.68133544922,-2373.3625488281,30.493041992188,357.16534423828)},
    ["tiny"] = {name = "Tiny", model = `g_m_y_strpunk_01`, location = vector4(978.67254638672,-2255.736328125,30.526733398438,0.0)},
    ["kruz"] = {name = "Kruz", model = `g_m_y_strpunk_02`, location = vector4(858.84393310547,-2152.4702148438,30.543579101562,260.78741455078)},

    ["sonny"] = {name = "Sonny", model = `a_m_y_methhead_01`, location = vector4(863.98681640625,-1983.3099365234,30.189697265625,189.92126464844)},
    ["chez"] = {name = "Chez", model = `g_m_y_korean_01`, location = vector4(935.96044921875,-1902.6065673828,31.1669921875,274.96063232422)},
    ["rocco"] = {name = "Rocco", model = `g_m_y_korean_02`, location = vector4(1021.8725585938,-1815.3494873047,33.340698242188,87.874015808105)},

    ["shaq"] = {name = "Shaq", model = `a_m_y_stbla_01`, location = vector4(749.03735351562,-1252.4176025391,26.331176757812,192.75592041016)},
    ["lewis"] = {name = "Lewis", model = `a_m_y_skater_01`, location = vector4(896.05712890625,-1046.1098632812,32.969970703125,181.41732788086)},
    ["marnz"] = {name = "Marnz", model = `a_m_y_skater_02`, location = vector4(726.52746582031,-748.77362060547,25.724487304688,93.543304443359)},

    ["ty"] = {name = "Ty", model = `a_m_m_eastsa_01`, location = vector4(1130.2418212891,-554.05712890625,56.863037109375,121.88976287842)},
    ["kieran"] = {name = "Kieran", model = `a_m_m_bevhills_02`, location = vector4(1356.3956298828,-595.10766601562,74.336303710938,337.32284545898)},
    ["deno"] = {name = "Deno", model = `a_m_y_vinewood_01`, location = vector4(900.69891357422,-571.9912109375,57.334838867188,153.07086181641)},

    ["mo"] = {name = "Mo", model = `a_m_y_vinewood_02`, location = vector4(865.54284667969,-206.63735961914,70.848388671875,144.56690979004)},
    ["sav"] = {name = "Sav", model = `a_m_y_ktown_01`, location = vector4(815.30108642578,-280.0087890625,66.450561523438,11.338582038879)},
    ["iggy"] = {name = "Iggy", model = `a_m_y_ktown_02`, location = vector4(818.17584228516,-94.70768737793,80.587524414062,59.52755355835)},

    ["caz"] = {name = "Caz", model = `a_m_y_hasjew_01`, location = vector4(30.580223083496,-1016.4000244141,29.431518554688,257.95275878906)},
    ["nate"] = {name = "Nate", model = `a_m_y_mexthug_01`, location = vector4(69.547256469727,-876.51428222656,30.425659179688,348.6614074707)},
    ["jugg"] = {name = "Jugg", model = `a_m_o_soucent_01`, location = vector4(117.86373901367,-725.96044921875,47.0732421875,70.866142272949)},

    ["ellis"] = {name = "Ellis", model = `a_m_o_genstreet_01`, location = vector4(303.40219116211,74.070327758789,94.353881835938,164.4094543457)},
    ["mikes"] = {name = "Mikes", model = `a_m_y_golfer_01`, location = vector4(552.17144775391,122.22857666016,98.027099609375,348.6614074707)},
    ["raz"] = {name = "Raz", model = `a_m_y_juggalo_01`, location = vector4(204.48791503906,293.1164855957,105.60949707031,167.24407958984)},

    ["kane"] = {name = "Kane", model = `a_m_m_hillbilly_01`, location = vector4(-324.80438232422,107.59121704102,67.276245117188,272.1259765625)},
    ["jax"] = {name = "Jax", model = `a_m_m_salton_01`, location = vector4(-560.88793945312,177.50769042969,69.146484375,189.92126464844)},
    ["smokes"] = {name = "Smokes", model = `a_m_m_tramp_01`, location = vector4(-415.87252807617,-200.09669494629,36.306274414062,121.88976287842)},
}

-- https://bzzz.tebex.io/package/5485466
-- - Growing Table
-- - Drying Rack
-- - Trimming Bench
-- - Packaging Station

-- Cocaine
-- https://bzzz.tebex.io/package/6038969
-- https://bzzz.tebex.io/package/4990678
-- - Processing Bench
-- - Mixing Drum
-- - Refinement Station
-- - Packaging Station

-- Mushrooms
-- https://bzzz.tebex.io/package/5028671
-- - Cultivation Bench
-- - Climate Control Chamber
-- - Drying Rack
-- - Packaging Station

-- Opium Poppy
-- https://bzzz.tebex.io/package/6145145
-- - Processing Bench
-- - Extraction Table
-- - Drying Station
-- - Packaging Station

-- Fentanyl
-- - Production Bench
-- - Climate Control Chamber
-- - Sterile Storage Unit
-- - Drying Chamber
-- - Packaging Station

-- plant pot "prop_plant_pot_01"
-- soil "4bit_prop_soil"
-- seed "plt_weed_small_a"
-- water "prop_ld_flow_bottle"
-- scissors "4bit_anim_scissors"
-- bud "dl_bud_green_01"
-- empty bag "dl_bag_weed_empty_01"
-- bagged weed "dl_bag_weed_01"

--HASH PROPS
--growing plants
-- "plt_weed_med_b",
-- "plt_weed_small_a",
-- "plt_weed_small_b",
-- "plt_weed_small_c",

--bags of weed
-- "dl_bag_weed_01",
-- "dl_bag_weed_02",
-- "dl_bag_weed_03",
-- "dl_bag_weed_04",
-- "dl_bag_weed_empty_01",

--buds
-- "dl_bud_green_01",
-- "dl_bud_green_02",
-- "dl_weetbud_green_01",
-- "dl_weetbud_green_02",

--block of weed/hash
--"dl_prop_weed_block_01",

--soil bag
--"4bit_prop_soil",

--scissors
--"4bit_anim_scissors",

--STEPS
-- empty pot: "prop_plant_pot_01",
-- soil - "4bit_prop_soil"

-- https://mpworx.tebex.io/category/electronics-1
-- https://www.youtube.com/watch?v=OnUS0zLZgn4&list=PLTAuDAe95g4cAvCLNx09BfKHyET6up6Gg

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
