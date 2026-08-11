--[[
    LEVEL 1 BEGINNER GUIDE — Gangdoors
    =======================================

    File: cmg/prod/cfg/cfg_gangdoors.lua
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

cfg.areas = {
    ["triadsRecords"] = {
        permission = "",
        locations = {
            {model = 693644064, position = vector3(-816.61291503906,-701.54144287109,28.060119628906)}, -- Reception Staff Right
            {model = 693644064, position = vector3(-816.56494140625,-695.11413574219,28.060136795044)}, -- Reception Staff Left
            {model = 75593271, position = vector3(-821.634765625,-703.10705566406,28.060119628906)}, -- Hallway Entry
            {model = 1403720845, position = vector3(-820.84790039062,-703.12951660156,28.060123443604)}, -- Hallway Entry
            {model = 75593271, position = vector3(-821.80603027344,-715.57012939453,28.060121536255)}, -- Hallway 2
            {model = 1403720845, position = vector3(-820.83941650391,-715.66284179688,28.060121536255)}, -- Hallway 2
            {model = 693644064, position = vector3(-819.57263183594,-718.73638916016,28.06014251709)}, -- Cloakroom
            {model = 693644064, position = vector3(-819.48309326172,-727.79553222656,28.060121536255)}, -- Restroom
            {model = 693644064, position = vector3(-819.49383544922,-712.61437988281,28.060119628906)}, -- Staircase
            {model = 693644064, position = vector3(-819.59722900391,-712.56713867188,32.340831756592)}, -- Upper Floor - Staircase
            {model = 693644064, position = vector3(-821.36224365234,-703.15637207031,32.340831756592)}, -- Upper Floor - CEO Office
            {model = 1403720845, position = vector3(-823.13287353516,-709.06872558594,32.340831756592)}, -- Upper Floor - Meeting Room
            {model = 75593271, position = vector3(-823.18194580078,-709.91412353516,32.340839385986)}, -- Upper Floor - Meeting Room
            {model = 693644064, position = vector3(-821.37713623047,-715.87927246094,32.340839385986)}, -- Upper Floor - Studio Entry
            {model = 390840000, position = vector3(-818.56756591797,-723.43420410156,32.340827941895)}, -- Upper Floor - Studio Inside
            {model = 693644064, position = vector3(-819.40533447266,-712.59411621094,23.779027938843)}, -- Lower Floor - Staircase
            {model = -2023754432, position = vector3(-823.07751464844,-712.50732421875,23.779026031494)}, -- Lower Floor - Storage
            {model = -2023754432, position = vector3(-821.32916259766,-715.77825927734,23.779029846191)}, -- Lower Floor - Garage Access From Interior
            {model = -2023754432, position = vector3(-818.89349365234,-720.80230712891,23.779029846191)}, -- Lower Floor - Garage Employees Room
            {model = -700626879, position = vector3(-816.30487060547,-740.26800537109,23.803022384644)}, -- Lower Floor - Garage Door
        },
        linkedToHouses = {
            "LC Records"
        }
    },
    -- ["ldnuBuilding"] = {
    --     permission = "gang.ldnu.whitelist",
    --     locations = {
    --         {model = 0xAF0E840F, position = vector3(-576.07824707031,-712.55474853516,26.732522964478), modelPosition = vector3(-576.0439, -713.1943, 25.72211)}, -- Garage Elevators
    --         {model = 0xAF0E840F, position = vector3(-576.02178955078,-711.78851318359,26.732522964478), modelPosition = vector3(-576.0439, -711.2039, 25.72211)}, -- Garage Elevators
    --         {model = 0xAF0E840F, position = vector3(-576.060546875,-712.49090576172,36.284648895264), modelPosition = vector3(-576.0697, -713.1379, 35.27304)}, -- Garage Elevators
    --         {model = 0xAF0E840F, position = vector3(-576.12164306641,-711.84655761719,36.284351348877), modelPosition = vector3(-576.0697, -711.1475, 35.27304)}, -- Garage Elevators
    --         {model = 0xEBB88010, position = vector3(-583.00799560547,-716.69891357422,129.88284301758)}, -- Roof Entrance
    --         {model = 0xEBB88010, position = vector3(-577.1533203125,-718.12219238281,129.88346862793)}, -- Roof Engine
    --         {model = 0x5AEDC60F, position = vector3(-582.98449707031,-727.25946044922,121.60450744629)}, -- Server Room
    --         {model = 0x5AEDC60F, position = vector3(-595.99737548828,-727.24536132812,121.60451507568)}, -- Arcade Room
    --         {model = 0x5AEDC60F, position = vector3(-577.92645263672,-717.91387939453,116.80475616455)}, -- Stairs First Floor
    --         {model = 0x5AEDC60F, position = vector3(-577.85626220703,-717.94885253906,121.60450744629)}, -- Stairs Second Floor
    --         {model = 0x5AEDC60F, position = vector3(-601.232421875,-713.61364746094,116.80492401123)}, -- Office First Floor
    --         {model = 0x5AEDC60F, position = vector3(-595.79327392578,-718.59753417969,116.80520629883)}, -- Office First Floor
    --         {model = 0x5AEDC60F, position = vector3(-594.53057861328,-719.90008544922,116.80497741699)}, -- Office First Floor 2
    --         {model = 0x5AEDC60F, position = vector3(-586.93121337891,-720.01226806641,116.8055267334)}, -- Office First Floor 2
    --         {model = 0x5AEDC60F, position = vector3(-580.60656738281,-709.00433349609,116.80519104004)}, -- Office First Floor 3
    --         {model = 0x5AEDC60F, position = vector3(-585.60687255859,-714.599609375,116.80529022217)}, -- Office First Floor 3
    --         {position = vector3(-582.84606933594,-716.29547119141,116.80488586426), modelPosition = vector3(-582.32189941406,-716.25543212891, 116.95509338379), model = `sf_prop_sf_door_office_r_01a`}, -- Office First Floor 3
    --         {position = vector3(-583.75531005859,-716.29956054688, 116.80487060547), modelPosition = vector3(-584.32189941406,-716.25024414062, 116.95509338379), model = `sf_prop_sf_door_office_l_01a`}, -- Office First Floor 3
    --         {model = 0xB0467BF9, position = vector3(-578.92840576172,-711.90850830078,121.60565948486)}, -- Apartment Entrance
    --         {model = 0xB0467BF9, position = vector3(-579.0537109375,-712.45196533203,121.60509490967)}, -- Apartment Entrance
    --         {position = vector3(-598.51544189453,-714.76995849609, 121.60456085205), modelPosition = vector3(-599.00280761719,-715.00823974609, 122.08004760742), model = `sf_prop_sf_door_apt_r_01a`}, -- Right Doors
    --         {model = 0xDCA17157, position = vector3(-597.57757568359,-714.91815185547,121.60478210449)}, -- Right Doors
    --         {position = vector3(-583.93005371094,-715.04351806641, 121.60462188721), modelPosition = vector3(-584.44268798828,-715.04583740234, 122.08004760742), model = `sf_prop_sf_door_apt_r_01a`}, -- Left Doors
    --         {model = 0xDCA17157, position = vector3(-583.00335693359,-715.03088378906,121.60475921631)}, -- Left Doors
    --         {position = vector3(-589.12982177734,-725.0751953125, 36.286056518555), modelPosition = vector3(-588.31268310547,-725.04351806641, 36.447383880615), model = `sf_prop_sf_door_glass_01a`},
    --         {position = vector3(-589.95556640625,-724.93023681641, 36.286071777344), modelPosition = vector3(-590.90270996094,-725.04339599609, 36.447383880615), model = `sf_prop_sf_door_glass_01a`},
    --         {position = vector3(-589.11340332031,-708.64453125, 36.284442901611), modelPosition = vector3(-588.32922363281,-708.59729003906, 36.456439971924), model = `sf_prop_sf_door_glass_01a`},
    --         {position = vector3(-590.25494384766,-708.79632568359, 36.283752441406), modelPosition = vector3(-590.91925048828,-708.60015869141, 36.447498321533), model = `sf_prop_sf_door_glass_01a`},
    --     },
    --     linkedToHouses = {
    --         "London Underworld HQ"
    --     }
    -- },
    ["lostmcWhitelist"] = {
        permission = "soa2.whitelisted",
        locations = {
            {position = vector3(818.79345703125,-2349.521484375, 30.533590316772), model = `dge_vagos_workdoor_2`},
            {position = vector3(817.54937744141,-2351.5100097656, 30.414390563965), model = `prop_door_01`},
            {position = vector3(815.92547607422,-2344.7316894531, 30.414390563965), model = `prop_ret_door_02`},
            {position = vector3(822.16510009766,-2338.251953125, 30.770160675049), model = `dge_vagos_workdoor_1`},
            {position = vector3(812.73168945313,-2326.4460449219, 30.547569274902), model = `apa_v_ilev_ss_door7`},
            {position = vector3(812.93743896484,-2323.8637695313, 30.546539306641), model = `apa_v_ilev_ss_door8`},
            {position = vector3(814.94512939453,-2321.4528808594, 30.556480407715), model = `apa_v_ilev_ss_door8`},
            {position = vector3(817.53277587891,-2321.6931152344, 30.556419372559), model = `apa_v_ilev_ss_door7`},
        },
        linkedToHouses = {
            "Warehouse Autos"
        }
    },
    ["milehighclub"] = {
        permission = "",
        locations = {
            {position = vector3(-172.39376831055,-992.75103759766, 29.646602630615), model = `v_ilev_cd_door2`},
            {position = vector3(-154.48066711426,-960.64721679688, 239.37979125977), model = `hei_heist_apart2_door`},
            {position = vector3(-160.38468933105,-963.32220458984, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-162.98199462891,-970.41900634766, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-165.51951599121,-977.39080810547, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-168.00827026367,-984.29730224609, 227.18725585938), model = `v_ilev_mp_high_frontdoor`},
            {position = vector3(-157.88548278809,-956.49133300781, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-155.34335327148,-949.54339599609, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-152.74563598633,-942.44360351563, 227.2281036377), model = `v_ilev_cf_officedoor`},
            {position = vector3(-146.6060333252,-979.77380371094, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-144.00872802734,-972.67700195313, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-141.47122192383,-965.70520019531, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-138.98243713379,-958.79870605469, 219.95037841797), model = `v_ilev_mp_high_frontdoor`},
            {position = vector3(-149.10525512695,-986.60467529297, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-151.64736938477,-993.55261230469, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-154.24510192871,-1000.65234375, 219.99122619629), model = `v_ilev_cf_officedoor`},
            {position = vector3(-151.18426513672,-972.67620849609, 238.77931213379), model = `hei_heist_apart2_door`},
            {position = vector3(-144.11264038086,-953.2470703125, 238.17930603027), model = `hei_heist_apart2_door`},
            {position = vector3(-168.50274658203,-992.29571533203, 248.77510070801), model = `apa_p_mp_door_apart_door`},
            {position = vector3(-163.56636047363,-994.25305175781, 244.97497558594), model = `apa_p_mp_door_apart_door`},
        },
        linkedToHouses = {
            "Mile High Club",
            "Mile High Club: Apartment 1",
            "Mile High Club: Apartment 2",
        }
    },
    ["jurassicjackpot"] = {
        permission = "gang.marketplace.whitelist",
        locations = {
            {position = vector3(-234.42980957031,-914.94793701172, 32.333984375), modelPosition = vector3(-233.09242248535,-915.47088623047, 32.575199127197), model = `johanni_jurassic_asset_door04`},
            {position = vector3(-231.76847839355,-910.44134521484, 32.333972930908), modelPosition = vector3(-231.27557373047,-909.14605712891, 32.574451446533), model = `johanni_jurassic_asset_door04`},
            {position = vector3(-269.01034545898,-917.33050537109, 32.322715759277), modelPosition = vector3(-267.63696289062,-917.76300048828, 32.474304199219), model = `johanni_jurassic_asset_elevator_door`},
            {position = vector3(-269.18771362305,-917.25024414062, 32.322856903076), modelPosition = vector3(-270.43353271484,-916.74633789062, 32.47428894043), model = `johanni_jurassic_asset_elevator_door`},
            {position = vector3(-271.02099609375,-917.33099365234, 52.795215606689), modelPosition = vector3(-269.93243408203,-917.73797607422, 52.94730758667), model = `johanni_jurassic_asset_elevator_door`},
            {position = vector3(-271.66064453125,-917.06048583984, 52.795543670654), modelPosition = vector3(-272.74072265625,-916.72271728516, 52.947299957275), model = `johanni_jurassic_asset_elevator_door`},
        },
        linkedToHouses = {
            "Jurassic Jackpot",
        }
    },
    ["burgerShot"] = {
        permission = "Burger Shot.permission",
        locations = {
            {position = vector3(-1179.0296630859,-891.97308349609, 13.97193145752),  modelPosition = vector3(-1179.3266601562,-891.47686767578, 14.057670593262), model = `p_bs_map_door_01_s`},
            {position = vector3(-1194.5482177734,-900.06188964844, 13.995313644409),  modelPosition = vector3(-1194.2706298828,-900.65142822266, 14.246165275574), model = `bs_cj_int_door_24`},
            {position = vector3(-1200.3559570312,-892.44262695312, 13.99530506134),  modelPosition = vector3(-1199.7276611328,-892.04083251953, 14.246165275574), model = `bs_cj_int_door_24`},
            {position = vector3(-1202.8978271484,-894.09405517578, 13.995180130005),  modelPosition = vector3(-1202.1934814453,-893.70581054688, 14.246165275574), model = `bs_cj_int_door_freezer`},
            {position = vector3(-1195.7041015625,-897.16967773438, 13.995307922363), modelPosition = vector3(-1195.2745361328,-897.93646240234, 14.246165275574), model = `bs_cj_int_door_24`},
        },
    },
    ["catCafe"] = {
        permission = "Cat Cafe.permission",
        locations = {
            {position = vector3(-587.291015625,-1052.5434570312, 22.361766815186),  modelPosition = vector3(-587.34002685547,-1051.8994140625, 22.413005828857), model = `denis3d_catcafe_doorsB`},
            {position = vector3(-589.61297607422,-1054.2786865234, 22.361553192139),  modelPosition = vector3(-590.18280029297,-1054.1479492188, 22.413005828857), model = `denis3d_catcafe_doorsA`},
            {position = vector3(-593.10278320312,-1056.0882568359, 22.361772537231),  modelPosition = vector3(-592.47381591797,-1056.0913085938, 22.413005828857), model = `denis3d_catcafe_doorsA`},
            {position = vector3(-594.33148193359,-1050.3681640625, 22.361471176147),  modelPosition = vector3(-594.41229248047,-1049.7686767578, 22.497127532959), model = `sum_p_mp_yacht_door_02`},
            {position = vector3(-572.50701904297,-1057.4688720703, 26.629207611084),  modelPosition = vector3(-571.79266357422,-1057.3884277344, 26.767965316772), model = `sum_p_mp_yacht_door_02`},
            {position = vector3(-575.06561279297,-1061.615234375, 26.631755828857),  modelPosition = vector3(-575.01086425781,-1062.3807373047, 26.767965316772), model = `sum_p_mp_yacht_door_02`},
            {position = vector3(-575.06311035156,-1064.4964599609, 26.631744384766),  modelPosition = vector3(-575.01281738281,-1063.7833251953, 26.767965316772), model = `sum_p_mp_yacht_door_02`},
            {position = vector3(-580.68774414062,-1069.6271972656, 22.501714706421),  modelPosition = vector3(-580.36108398438,-1069.6271972656, 22.489748001099), model = `denis3d_catcafe_maindoors_r`},
            {position = vector3(-581.34112548828,-1069.6271972656, 22.501714706421),  modelPosition = vector3(-581.66778564453,-1069.6271972656, 22.489748001099), model = `denis3d_catcafe_maindoors_l`},
            {position = vector3(-600.87359619141,-1055.7821044922, 22.714435577393),  modelPosition = vector3(-600.88861083984,-1055.1314697266, 22.713027954102), model = `v_ilev_rc_door3_l`},
            {position = vector3(-600.91058349609,-1059.2176513672, 23.263975143433),  modelPosition = vector3(-600.91058349609,-1059.2176513672, 21.721431732178), model = `denis3d_catcafe_garagedoors`},
        },
        linkedToHouses = {
            "Cat Cafe"
        }
    },
    ["triadsRestaurant"] = {
        permission = "Triads Restaurant.permission",
        locations = {
            {position = vector3(-171.20155334473,303.34606933594, 97.460098266602),  modelPosition = vector3(-171.34770202637,302.71099853516, 97.610069274902), model = `v_ilev_rc_door2`},
            {position = vector3(-171.32919311523,303.45248413086, 100.9231338501),  modelPosition = vector3(-171.31900024414,302.71063232422, 101.0738067627), model = `v_ilev_rc_door2`},
            {position = vector3(-170.61683654785,300.11654663086, 93.762168884277),  modelPosition = vector3(-171.24530029297,299.99859619141, 93.915061950684), model = `fluorine4305_dedrest_door45`},
            {position = vector3(-169.53211975098,299.90325927734, 93.762168884277),  modelPosition = vector3(-168.79528808594,299.99859619141, 93.915061950684), model = `fluorine4305_dedrest_door45`},
            {position = vector3(-165.58265686035,299.9089050293, 98.892295837402), modelPosition = vector3(-166.20529174805,299.95758056641, 99.044059753418), model = `fluorine4305_dedrest_door41`},
            {position = vector3(-164.77644348145,300.07815551758, 98.892295837402), modelPosition = vector3(-164.21829223633,299.95755004883, 99.044059753418), model = `fluorine4305_dedrest_door41`},
        },
        linkedToHouses = {
            "Japanese Restaurant"
        }
    },
    ["cityVigilante"] = {
        permission = "vigilante.onduty.permission",
        locations = {
            {position = vector3(387.03646850586,792.92053222656, 187.69706726074), modelPosition = vector3(387.75149536133,792.87109375, 187.84912109375), model = `sanhje_parkranger_door`, otherPermission = "vigilante.whitelisted"},
            {position = vector3(383.45626831055,799.00750732422, 187.46168518066), modelPosition = vector3(383.4079284668,798.29107666016, 187.61181640625), model = `sanhje_parkranger_celldoor`},
            {position = vector3(388.68048095703,798.97863769531, 187.67172241211), modelPosition = vector3(388.63128662109,799.68231201172, 187.82626342773), model = `sanhje_parkranger_door`, otherPermission = "vigilante.whitelisted"},
            {position = vector3(378.080078125,796.892578125, 187.46168518066), modelPosition = vector3(378.75830078125,796.83642578125, 187.6123046875), model = `sanhje_parkranger_celldoor`},
            {position = vector3(382.23065185547,796.78820800781, 187.46168518066), modelPosition = vector3(382.96160888672,796.82867431641, 187.61172485352), model = `sanhje_parkranger_celldoor`},
            {position = vector3(379.58856201172,792.79418945312, 190.48910522461), modelPosition = vector3(380.21743774414,792.78826904297, 190.64143371582), model = `sanhje_parkranger_door`},
            {position = vector3(384.36743164062,796.82135009766, 190.49018859863), modelPosition = vector3(384.38119506836,796.0927734375, 190.63963317871), model = `sanhje_parkranger_door_wood`},
        }
    },
    ["paletoVigilante"] = {
        permission = "vigilante.onduty.permission",
        locations = {
            {position = vector3(-817.17053222656,5391.7841796875, 35.880054473877), modelPosition = vector3(-817.92834472656,5391.7446289062, 36.030544281006), model = `map4all_pr_door01c`},
            {position = vector3(-818.77307128906,5393.2563476562, 35.880031585693), modelPosition = vector3(-818.74597167969,5392.619140625, 36.032325744629), model = `map4all_pr_door02c`},
            {position = vector3(-818.85083007812,5394.6010742188, 35.88005065918), modelPosition = vector3(-818.74597167969,5395.251953125, 36.032325744629), model = `map4all_pr_door02a`},
            {position = vector3(-809.99304199219,5394.5322265625, 35.879997253418), modelPosition = vector3(-810.05010986328,5395.2524414062, 36.030406951904), model = `map4all_pr_door02c`},
            {position = vector3(-810.00231933594,5393.4204101562, 35.880054473877), modelPosition = vector3(-810.05010986328,5392.6225585938, 36.030406951904), model = `map4all_pr_door02b`},
            {position = vector3(-804.64752197266,5396.5068359375, 35.87996673584), modelPosition = vector3(-803.95959472656,5396.3193359375, 36.029739379883), model = `map4all_pr_door01c`},
            {position = vector3(-800.30712890625,5396.5498046875, 35.879615783691), modelPosition = vector3(-801.05505371094,5396.3544921875, 36.029769897461), model = `map4all_pr_door02c`},
            {position = vector3(-800.337890625,5391.3041992188, 35.879299163818), modelPosition = vector3(-799.74145507812,5391.5268554688, 36.030323028564), model = `map4all_pr_door02d`},
            {position = vector3(-791.48956298828,5386.3212890625, 35.880077362061), modelPosition = vector3(-792.23083496094,5386.2778320312, 36.030265808105), model = `map4all_pr_door01b`},
            {position = vector3(-787.61566162109,5395.267578125, 35.866607666016), modelPosition = vector3(-786.59991455078,5393.5395507812, 36.031349182129), model = `map4all_pr_door02d`},
            {position = vector3(-795.37249755859,5393.2451171875, 35.865348815918), modelPosition = vector3(-795.21649169922,5392.6225585938, 36.032329559326), model = `map4all_pr_door02a`},
            {position = vector3(-795.30126953125,5394.7114257812, 35.865341186523), modelPosition = vector3(-795.21649169922,5395.2534179688, 36.030952453613), model = `map4all_pr_door02d`},
            {position = vector3(-808.005859375,5396.2993164062, 35.880058288574), modelPosition = vector3(-808.74096679688,5396.34765625, 36.030265808105), model = `map4all_pr_door01c`},
            {position = vector3(-824.40655517578,5396.486328125, 35.880088806152), modelPosition = vector3(-825.05017089844,5396.3500976562, 36.06693649292), model = `map4all_pr_door02d`},
            {position = vector3(-828.76959228516,5396.3706054688, 35.869861602783), modelPosition = vector3(-828.16754150391,5396.349609375, 36.029499053955), model = `map4all_pr_door01c`},
            {position = vector3(-828.78350830078,5391.458984375, 35.880058288574), modelPosition = vector3(-828.16943359375,5391.5258789062, 36.028732299805), model = `map4all_pr_door01c`},
            {position = vector3(-825.88439941406,5391.4565429688, 35.880058288574), modelPosition = vector3(-826.49505615234,5391.498046875, 36.029682159424), model = `map4all_pr_door02a`},
            {position = vector3(-830.77239990234,5398.28125, 35.865333557129), modelPosition = vector3(-829.88134765625,5396.998046875, 36.182556152344), model = `map4all_pr_door03a`},
            {position = vector3(-808.20043945312,5386.1342773438, 29.326229095459), modelPosition = vector3(-808.25994873047,5385.4228515625, 29.477165222168), model = `map4all_pr_door01c`},
            {position = vector3(-803.51080322266,5386.0600585938, 29.326231002808), modelPosition = vector3(-803.42858886719,5385.4194335938, 29.475955963135), model = `map4all_pr_door02b`},
            {position = vector3(-808.26379394531,5391.4296875, 29.32622718811), modelPosition = vector3(-808.25335693359,5390.7763671875, 29.477891921997), model = `map4all_pr_door01c`},
            {position = vector3(-803.24920654297,5396.1567382812, 29.326011657715), modelPosition = vector3(-803.43096923828,5396.6918945312, 29.475492477417), model = `map4all_pr_door02d`},
            {position = vector3(-808.39642333984,5396.0795898438, 29.326215744019), modelPosition = vector3(-808.27099609375,5396.693359375, 29.47559928894), model = `map4all_pr_door01c`},
            {position = vector3(-805.52178955078,5400.0224609375, 29.332723617554), modelPosition = vector3(-804.83923339844,5400.0444335938, 29.466445922852), model = `map4all_pr_door03b`},
            {position = vector3(-803.46875,5402.787109375, 29.332721710205), modelPosition = vector3(-803.46307373047,5403.4150390625, 29.470659255981), model = `map4all_pr_door03b`},
            {position = vector3(-808.35638427734,5402.1708984375, 29.331800460815), modelPosition = vector3(-808.21301269531,5401.4208984375, 29.470104217529), model = `map4all_pr_door03b`},
            {position = vector3(-816.88793945312,5400.0844726562, 29.330770492554), modelPosition = vector3(-816.14495849609,5399.9897460938, 29.469432830811), model = `map4all_pr_door03b`},
            {position = vector3(-816.80291748047,5404.955078125, 29.330570220947), modelPosition = vector3(-816.13983154297,5404.841796875, 29.469432830811), model = `map4all_pr_door03b`},
            {position = vector3(-813.31884765625,5404.9189453125, 29.330774307251), modelPosition = vector3(-812.75042724609,5404.841796875, 29.469432830811), model = `map4all_pr_door03b`},
            {position = vector3(-809.92205810547,5404.994140625, 29.328048706055), modelPosition = vector3(-809.35583496094,5404.841796875, 29.469432830811), model = `map4all_pr_door03b`},
        }
    },
    ["vinewoodCustoms"] = {
        permission = "gang.usg.whitelist",
        locations = {
            {position = vector3(114.97841644287,259.62521362305, 112.87229919434), modelPosition = vector3(114.28002929688,259.55218505859, 113.02507781982), model = `v_ilev_fib_door1`},
            {position = vector3(99.888710021973,264.98840332031, 112.88485717773), modelPosition = vector3(99.257606506348,264.99102783203, 113.02507781982), model = `v_ilev_fib_door1`},
        }
    },
    ["martinMadrazosRanch"] = {
        permission = "",
        locations = {
            {position = vector3(1396.6169433594,1146.2713623047, 114.38795471191), modelPosition = vector3(1397.2095947266,1146.1798095703, 113.39342498779), model = `gs_prop_gs_door5`, open = true},
            {position = vector3(1397.9915771484,1133.5161132812, 114.37181854248), modelPosition = vector3(1398.1333007812,1132.8583984375, 114.52289581299), model = `gs_prop_gs_door2`, hidden = true},
            {position = vector3(1402.6525878906,1152.0924072266,114.37181854248), modelPosition = vector3(1400.8167724609,1152.0998535156, 114.54232788086), model = `gs_prop_gs_door`, open = true},
            {position = vector3(1408.3677978516,1138.1003417969, 114.37998962402), modelPosition = vector3(1408.466796875,1137.2854003906, 113.39169311523), model = `gs_prop_gs_door4`, open = true},
            {position = vector3(1408.5833740234,1139.4619140625, 114.37981414795), modelPosition = vector3(1408.466796875,1140.2484130859, 113.39169311523), model = `gs_prop_gs_door3`, open = true},
            {position = vector3(1408.5942382812,1141.2639160156, 114.37993621826), modelPosition = vector3(1408.466796875,1140.5699462891, 113.39169311523), model = `gs_prop_gs_door4`, open = true},
            {position = vector3(1408.6040039062,1142.7624511719, 114.37953186035), modelPosition = vector3(1408.466796875,1143.5328369141, 113.39169311523), model = `gs_prop_gs_door3`, open = true},
            {position = vector3(1401.3719482422,1134.0179443359, 118.15332794189), modelPosition = vector3(1401.3861083984,1133.287109375, 117.17621612549), model = `gs_prop_gs_door5`},
            {position = vector3(1412.5220947266,1113.783203125,114.83715057373), modelPosition = vector3(1412.4969482422,1113.0635986328, 116.4626083374), model = `prop_ch_025c_g_door_01b`, open = true},
            {position = vector3(1402.9483642578,1113.9014892578,114.83638763428), modelPosition = vector3(1403.0167236328,1113.0869140625, 116.46831512451), model = `prop_ch_025c_g_door_01b`, open = true},
        },
        linkedToHouses = {
            "Martin Madrazo's Ranch"
        }
    },
    ["imperialManor"] = {
        permission = "gang.sixthsense.whitelist",
        locations = {
            {position = vector3(-52.208190917969,359.03912353516, 113.05746459961), modelPosition = vector3(-52.282962799072,360.02542114258, 113.71098327637), model = `prop_cm_frontdoor_l`},
            {position = vector3(-50.752712249756,358.52029418945, 113.05746459961), modelPosition = vector3(-49.806964874268,358.86700439453, 113.71098327637), model = `prop_cm_frontdoor_r`},
            {position = vector3(-46.621170043945,363.96704101562, 142.5860748291), modelPosition = vector3(-46.832832336426,364.5400390625, 141.56695556641), model = `v_ilev_tow_doorlifta`},
            {position = vector3(-45.761810302734,363.52987670898, 142.5860748291), modelPosition = vector3(-44.619075775146,363.50476074219, 141.5669708252), model = `v_ilev_tow_doorliftb`},
            {position = vector3(-54.649219512939,373.94546508789, 112.66162872314), modelPosition = vector3(-55.151165008545,374.43072509766, 112.91718292236), model = `prop_cm_alleyway_door`},
            {position = vector3(-62.740062713623,366.61352539062, 112.44769287109), modelPosition = vector3(-63.522533416748,366.53515625, 112.59951019287), model = `v_ilev_ra_door2`},
            {position = vector3(-65.718521118164,367.99984741211, 112.44770812988), modelPosition = vector3(-65.22932434082,367.32815551758, 112.59854125977), model = `v_ilev_ra_door2`},
            {position = vector3(-76.937599182129,364.45486450195, 112.44470977783), modelPosition = vector3(-76.230491638184,364.43133544922, 112.59497070312), model = `ch_prop_ch_utility_door_01b`},
            {position = vector3(-82.981018066406,384.03796386719, 113.28619384766), modelPosition = vector3(-83.700347900391,383.80911254883, 113.43333435059), model = `v_ilev_ra_door2`},
            {position = vector3(-88.668487548828,378.98770141602, 113.28330993652), modelPosition = vector3(-87.949760437012,378.31777954102, 113.65245056152), model = `prop_cm_glass_door_r`},
            {position = vector3(-89.339889526367,379.40362548828, 113.28330230713), modelPosition = vector3(-90.362190246582,379.44610595703, 113.65245056152), model = `prop_cm_glass_door_l`},
            {position = vector3(-87.220657348633,387.16802978516, 113.28335571289), modelPosition = vector3(-87.245674133301,387.93768310547, 113.43244171143), model = `v_ilev_ra_door2`},
            {position = vector3(-99.948974609375,393.15438842773, 113.13148498535), modelPosition = vector3(-99.033103942871,393.43328857422, 113.43244171143), model = `v_ilev_ra_door2`},
            {position = vector3(-103.44013977051,396.28500366211, 112.66779327393), modelPosition = vector3(-103.97069549561,397.08981323242, 112.9178314209), model = `prop_cm_alleyway_door`},
            {position = vector3(-109.63816833496,388.12789916992, 113.28322601318), modelPosition = vector3(-109.11343383789,388.15585327148, 113.43244171143), model = `v_ilev_ra_door2`},
            {position = vector3(-92.341339111328,380.50659179688, 113.28327941895), modelPosition = vector3(-91.734741210938,380.04217529297, 113.43244171143), model = `v_ilev_ra_door2`},
            {position = vector3(-98.370986938477,368.87887573242, 113.29643249512), modelPosition = vector3(-99.152572631836,368.64141845703, 113.52970123291), model = `prop_cm_arch_door_l`},
            {position = vector3(-96.80152130127,368.33258056641, 113.29643249512), modelPosition = vector3(-96.758232116699,367.52114868164, 113.52970123291), model = `prop_cm_arch_door_r`},
            {position = vector3(-94.029106140137,365.74603271484, 113.28356170654), modelPosition = vector3(-93.362983703613,365.86599731445, 113.43642425537), model = `v_ilev_ra_door2`},
            {position = vector3(-89.582656860352,359.12054443359, 112.44233703613), modelPosition = vector3(-89.464225769043,359.76934814453, 112.58367919922), model = `ch_prop_ch_utility_door_01b`},
            {position = vector3(-77.699569702148,370.22006225586, 112.46530914307), modelPosition = vector3(-77.271697998047,370.40661621094, 112.61650085449), model = `prop_cm_secret_door`},
            {position = vector3(-81.46167755127,378.7317199707, 107.87712097168), modelPosition = vector3(-81.56755065918,379.50323486328, 108.02694702148), model = `v_ilev_losttoiletdoor`},
            {position = vector3(-81.242111206055,376.96954345703, 107.8772354126), modelPosition = vector3(-80.82022857666,376.28845214844, 108.02501678467), model = `v_ilev_losttoiletdoor`},
            {position = vector3(-86.405990600586,321.9319152832, 112.4407119751), modelPosition = vector3(-86.649932861328,321.2829284668, 112.59019470215), model = `ch_prop_ch_utility_door_01b`},
            {position = vector3(-88.219314575195,317.69100952148, 136.88784790039), modelPosition = vector3(-89.157440185547,318.55349731445, 135.88366699219), model = `prop_cm_stairs_door`},
            {position = vector3(-47.341018676758,349.60858154297, 114.70832061768), modelPosition = vector3(-48.467414855957,349.39703369141, 115.33102416992), model = `prop_cm_gate_middle`},
            {position = vector3(-10.287068367004,286.45901489258, 109.4574432373), modelPosition = vector3(-10.902114868164,287.00848388672, 110.18032073975), model = `prop_cm_gate_cabins`},
            {position = vector3(-39.225444793701,379.34454345703, 113.97832489014), modelPosition = vector3(-38.705291748047,379.02404785156, 115.06680297852), model = `prop_cm_gate_back`},
            {position = vector3(-122.50261688232,377.29666137695, 112.86897277832), modelPosition = vector3(-121.89626312256,377.72283935547, 113.87329864502), model = `prop_cm_cyard_gate_l`},
            {position = vector3(-123.40298461914,375.38107299805, 112.88164520264), modelPosition = vector3(-123.40915679932,374.52172851562, 113.87329864502), model = `prop_cm_cyard_gate_r`},
            {position = vector3(-45.62308883667,363.74984741211, 142.58596801758), modelPosition = vector3(-44.516242980957,363.46215820312, 141.56669616699), model = `v_ilev_tow_doorliftb`},
            {position = vector3(-46.46989440918,364.31832885742, 142.58596801758), modelPosition = vector3(-47.410190582275,364.80709838867, 141.56694030762), model = `v_ilev_tow_doorlifta`},
            {position = vector3(-73.300743103027,304.12954711914,107.12467193604), modelPosition = vector3(-66.44563293457,301.05841064453, 106.36887359619), model = `prop_cm_gate_roll_front`, automaticGate = true},
            {position = vector3(-105.64868927002,402.01400756836,112.52339172363), modelPosition = vector3(-109.16450500488,394.33642578125, 111.74779510498), model = `prop_cm_gate_roll_side`, automaticGate = true},
        },
        linkedToHouses = {
            "Sixth Sense Manor"
        }
    },
    ["hoodCommunity"] = {
        permission = "gang.hoodcommunity.whitelist",
        locations = {
            {position = vector3(-183.89561462402,-1293.1630859375,31.296403884888), modelPosition = vector3(-173.04592895508,-1292.931640625, 30.315769195557), model = `prop_facgate_07b`},
            {position = vector3(-201.73789978027,-1335.3603515625, 34.899486541748), modelPosition = vector3(-202.85354614258,-1335.8394775391, 34.989395141602), model = `v_ilev_ph_gendoor002`},
            {position = vector3(-204.78512573242,-1330.8328857422, 23.14262008667), modelPosition = vector3(-203.65487670898,-1331.6427001953, 23.204923629761), model = `v_ilev_ct_door03`},
            {position = vector3(-201.93601989746,-1330.6441650391, 30.883712768555), modelPosition = vector3(-202.87008666992,-1330.3822021484, 31.012798309326), model = `v_ilev_ct_door03`},
            {position = vector3(-204.90301513672,-1328.4561767578, 30.890420913696), modelPosition = vector3(-203.91610717773,-1328.0876464844, 29.840511322021), model = `v_ilev_bl_doorsl_r`},
            {position = vector3(-205.56983947754,-1331.6026611328, 34.898326873779), modelPosition = vector3(-206.27113342285,-1330.7546386719, 35.052375793457), model = `v_ilev_roc_door3`},
            {position = vector3(-205.56304931641,-1341.7924804688, 34.897754669189), modelPosition = vector3(-206.28686523438,-1342.2886962891, 35.052375793457), model = `v_ilev_roc_door3`},
        }
    },
    ["fbihq"] = {
        permission = "",
        locations = {
            {position = vector3(2521.3312988281,-416.21035766602, 94.124687194824), modelPosition = vector3(2519.6428222656,-415.0862121582, 93.090446472168), model = `q_fib_maindoor_l`, open = true},
            {position = vector3(2521.2551269531,-416.12448120117, 94.12467956543), modelPosition = vector3(2522.8542480469,-418.29766845703, 93.09294128418), model = `q_fib_maindoor_r`, open = true},
            {position = vector3(2514.4921875,-357.4755859375, 94.129379272461), modelPosition = vector3(2513.9150390625,-357.5719909668, 93.991561889648), model = `q_fib2_maindoor_r`, open = true},
            {position = vector3(2515.1892089844,-356.84118652344, 94.131309509277), modelPosition = vector3(2515.7785644531,-355.76486206055, 93.991958618164), model = `q_fib2_maindoor_l`, open = true},
            {position = vector3(2508.298828125,-335.85430908203, 115.59255218506), modelPosition = vector3(2508.4270019531,-336.63302612305, 115.75997161865), model = `prop_ch3_04_door_02`, open = true},
            {position = vector3(2503.5380859375,-426.98092651367, 106.91281890869), modelPosition = vector3(2503.74609375,-426.38293457031, 107.06660461426), model = `qnx_fib_ofdoor1`, open = true},
            {position = vector3(2510.4177246094,-434.05889892578, 106.91297912598), modelPosition = vector3(2510.9580078125,-433.5954284668, 107.06660461426), model = `qnx_fib_ofdoor1`, open = true},
            {position = vector3(2505.6889648438,-431.97763061523, 106.91297912598), modelPosition = vector3(2505.9182128906,-432.77456665039, 105.91115570068), model = `v_ilev_garageliftdoor`, open = true},
            {position = vector3(2505.4382324219,-431.95489501953, 106.91297149658), modelPosition = vector3(2504.4790039062,-431.3283996582, 105.90655517578), model = `v_ilev_garageliftdoor`, open = true},
        },
        linkedToHouses = {
            "FIB HQ"
        }
    },
    ["lostMcSandy"] = {
        permission = "soa2.whitelisted",
        locations = {
        {position = vector3(2040.9348144531,5089.65234375, 42.179473876953), modelPosition = vector3(2041.3494873047,5089.1577148438, 42.174835205078), model = `grimzygrap_door4`},
        {position = vector3(2040.0925292969,5090.6552734375, 42.179473876953), modelPosition = vector3(2039.6778564453,5091.1499023438, 42.174835205078), model = `grimzygrap_door4`},
        {position = vector3(2064.1262207031,5098.0205078125, 42.1015625), modelPosition = vector3(2063.6301269531,5097.6044921875, 42.10620880127), model = `grimzygrap_door2`},
        {position = vector3(2065.1166992188,5098.8637695312, 42.1015625), modelPosition = vector3(2065.6127929688,5099.2797851562, 42.10620880127), model = `grimzygrap_door2`},
        {position = vector3(2060.6804199219,5090.4282226562, 42.097591400146), modelPosition = vector3(2061.0966796875,5089.9321289062, 42.102237701416), model = `grimzygrap_door2`},
        {position = vector3(2059.8356933594,5091.4204101562, 42.097591400146), modelPosition = vector3(2059.4194335938,5091.9165039062, 42.102237701416), model = `grimzygrap_door2`},
        {position = vector3(2059.4028320312,5087.3232421875, 42.093585968018), modelPosition = vector3(2059.8989257812,5087.7392578125, 42.098232269287), model = `grimzygrap_door2`},
        {position = vector3(2058.4106445312,5086.4765625, 42.093585968018), modelPosition = vector3(2057.9145507812,5086.060546875, 42.098232269287), model = `grimzygrap_door2`},
        {position = vector3(2049.416015625,5084.7602539062, 42.10619354248), modelPosition = vector3(2048.919921875,5084.3442382812, 42.11083984375), model = `grimzygrap_door2`},
        {position = vector3(2076.7497558594,5096.9516601562, 42.117176055908), modelPosition = vector3(2076.3334960938,5097.4477539062, 42.121822357178), model = `grimzygrap_door2`},
        {position = vector3(2077.5939941406,5095.9619140625, 42.117176055908), modelPosition = vector3(2078.0102539062,5095.4658203125, 42.121822357178), model = `grimzygrap_door2`},
        {position = vector3(2052.4748535156,5075.8989257812, 42.197612762451), modelPosition = vector3(2052.8911132812,5075.4028320312, 42.202259063721), model = `grimzygrap_door2`},
        {position = vector3(2051.6328125,5076.8876953125, 42.197612762451), modelPosition = vector3(2051.2165527344,5077.3837890625, 42.202259063721), model = `grimzygrap_door2`},
        {position = vector3(2061.2277832031,5070.72265625, 42.09806060791), modelPosition = vector3(2061.7238769531,5071.138671875, 42.10270690918), model = `grimzygrap_door2`},
        {position = vector3(2060.2353515625,5069.8779296875, 42.09806060791), modelPosition = vector3(2059.7392578125,5069.4619140625, 42.10270690918), model = `grimzygrap_door2`},
        {position = vector3(2067.9558105469,5070.7397460938, 45.538524627686), modelPosition = vector3(2068.4519042969,5071.1557617188, 45.543170928955), model = `grimzygrap_door2`},
        {position = vector3(2069.5407714844,5079.5458984375, 45.54638671875), modelPosition = vector3(2069.1259765625,5080.0400390625, 45.559108734131), model = `grimzygrap_door1`},
        {position = vector3(2070.3828125,5078.552734375, 45.54638671875), modelPosition = vector3(2070.7976074219,5078.05859375, 45.559108734131), model = `grimzygrap_door1`},
        {position = vector3(2053.78125,5088.6791992188, 45.54504776001), modelPosition = vector3(2054.1960449219,5088.1850585938, 45.557769775391), model = `grimzygrap_door1`},
        {position = vector3(2052.9392089844,5089.6748046875, 45.54504776001), modelPosition = vector3(2052.5244140625,5090.1689453125, 45.557769775391), model = `grimzygrap_door1`},
        {position = vector3(2055.6804199219,5096.0483398438, 45.538368225098), modelPosition = vector3(2055.265625,5096.54296875, 45.533729553223), model = `grimzygrap_door4`},
        {position = vector3(2056.5207519531,5095.0473632812, 45.538368225098), modelPosition = vector3(2056.935546875,5094.552734375, 45.533729553223), model = `grimzygrap_door4`},
        {position = vector3(2067.2746582031,5103.05859375, 50.814769744873), modelPosition = vector3(2067.689453125,5102.5639648438, 50.810131072998), model = `grimzygrap_door4`},
        {position = vector3(2036.2701416016,5060.6362304688,41.692295074463), modelPosition = vector3(2044.4666748047,5051.541015625, 40.676723480225), model = `grimzygrap_gate`, automaticGate = true},
        {position = vector3(2035.7210693359,5061.2861328125,41.707191467285), modelPosition = vector3(2028.0131835938,5070.4331054688, 40.677169799805), model = `grimzygrap_gate`, automaticGate = true},
        {position = vector3(2046.7684326172,5107.7841796875,41.973114013672), modelPosition = vector3(2046.7609863281,5107.7275390625, 42.40869140625), model = `grimzygrap_gard`, automaticGate = true},
        {position = vector3(2072.9045410156,5069.025390625, 42.333721160889), modelPosition = vector3(2072.4099121094,5068.6108398438, 42.329082489014), model = `grimzygrap_door4`},
        {position = vector3(2068.4587402344,5068.9750976562, 42.123058319092), modelPosition = vector3(2068.0168457031,5069.5283203125, 42.110370635986), model = `grimzygrap_secret`},
        {position = vector3(2023.9429931641,5137.9072265625, 42.361301422119), modelPosition = vector3(2024.4389648438,5138.3129882812, 42.361301422119), model = `grimzygrap_tunneldoor2`},
        {position = vector3(2022.9400634766,5137.0654296875, 42.361301422119), modelPosition = vector3(2022.4549560547,5136.6479492188, 42.361301422119), model = `grimzygrap_tunneldoor`},
        {position = vector3(2030.3116455078,5124.1635742188, 42.355934143066), modelPosition = vector3(2030.9060058594,5124.5571289062, 42.357051849365), model = `v_ilev_ph_cellgate`},
        {position = vector3(1988.6350097656,5178.6508789062, 48.107551574707), modelPosition = vector3(1987.9969482422,5178.5991210938, 48.107551574707), model = `grimzygrap_tunneldoor`},
        {position = vector3(1989.9371337891,5178.7377929688, 48.171310424805), modelPosition = vector3(1990.5770263672,5178.7690429688, 48.171310424805), model = `grimzygrap_tunneldoor2`},
        },
        linkedToHouses = {
            "Lost MC Gang House"
        }
    },
    ["diamondCasino"] = {
        permission = "casino.whitelisted",
        locations = {
            {position = vector3(943.39056396484,24.253116607666, 78.947608947754), modelPosition = vector3(943.04901123047,23.706491470337, 78.947608947754), model = `ch_prop_casino_door_01c`},
            {position = vector3(930.64672851562,33.100177764893, 81.267692565918), modelPosition = vector3(931.193359375,32.758609771729, 81.267692565918), model = `ch_prop_casino_door_01c`},
            {position = vector3(958.03021240234,25.07684135437, 81.164169311523), modelPosition = vector3(957.48358154297,25.418409347534, 81.164169311523), model = `ch_prop_casino_door_01c`},
            {position = vector3(979.69287109375,61.783351898193, 81.516548156738), modelPosition = vector3(979.31512451172,62.020004272461, 81.515937805176), model = `k4mb1_casino2_door`},
            {position = vector3(981.07788085938,60.917911529541, 81.516548156738), modelPosition = vector3(981.41009521484,60.710338592529, 81.515678405762), model = `k4mb1_casino2_door`},
            {position = vector3(968.6357421875,63.71866607666, 112.65224456787), modelPosition = vector3(968.34747314453,63.257328033447, 112.65292358398), model = `vw_prop_vw_door_sd_01a`},
        },
        linkedToHouses = {
            "Diamond Penthouse",
            "Diamond Rooftop",
            "Diamond Casino Offices",
        }
    },
    ["redstunershop"] = {
        permission = "gang.undgnd.whitelist",
        locations = {
            {position = vector3(-691.45391845703,-2436.6926269531, 17.815906524658), modelPosition = vector3(-691.77899169922,-2437.2556152344, 17.815906524658), model = `v_ilev_cd_door2`, open = true},
            {position = vector3(-688.720703125,-2431.9584960938, 17.81590461731), modelPosition = vector3(-688.39562988281,-2431.3955078125, 17.81590461731), model = `v_ilev_cd_door2`, open = true},
            {position = vector3(-673.00604248047,-2420.4445800781, 14.872323989868), modelPosition = vector3(-673.00604248047,-2420.4445800781, 13.470585823059), model = `tstudio_tuner_asset_gdoor2`, open = true},
            {position = vector3(-676.89678955078,-2457.4504394531, 13.345342636108), modelPosition = vector3(-677.39965820312,-2457.1628417969, 13.345342636108), model = `tstudio_tuner_asset_door_r`},
            {position = vector3(-675.87963867188,-2458.0361328125, 13.345329284668), modelPosition = vector3(-675.37915039062,-2458.3278808594, 13.345329284668), model = `tstudio_tuner_asset_door_l`},
            {position = vector3(-682.35852050781,-2453.8664550781, 14.983271598816), modelPosition = vector3(-682.35852050781,-2453.8664550781, 13.501996040344), model = `tstudio_tuner_asset_gdoor1`},
            {position = vector3(-689.8935546875,-2449.5161132812, 14.983271598816), modelPosition = vector3(-689.8935546875,-2449.5161132812, 13.501996040344), model = `tstudio_tuner_asset_gdoor1`},
        },
        linkedToHouses = {
            "Red's Tuner Shop"
        }
    },
    ["aldentes"] = {
        permission = "",
        locations = {
            {position = vector3(-1198.0128173828,-1389.4968261719, 4.738422870636), modelPosition = vector3(-1197.8081054688,-1389.9644775391, 4.7382807731628), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1198.3205566406,-1388.802734375, 4.7386465072632), modelPosition = vector3(-1198.49609375,-1388.4035644531, 4.7383604049683), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1198.1015625,-1390.1184082031, -100.94647216797), modelPosition = vector3(-1198.3260498047,-1389.7962646484, -100.94702148438), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1197.6678466797,-1390.7403564453, -100.94647216797), modelPosition = vector3(-1197.4453125,-1391.0594482422, -100.94696044922), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1193.2498779297,-1399.4273681641, 10.072162628174), modelPosition = vector3(-1193.5689697266,-1399.6497802734, 10.071821212769), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1192.6279296875,-1398.9936523438, 10.072162628174), modelPosition = vector3(-1192.3103027344,-1398.7719726562, 10.071897506714), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1193.2498779297,-1399.4273681641, 14.433574676514), modelPosition = vector3(-1193.560546875,-1399.6439208984, 14.433323860168), model = `johanni_tstudio_asset_elevator_door`},
            {position = vector3(-1192.6279296875,-1398.9936523438, 14.433574676514), modelPosition = vector3(-1192.3127441406,-1398.7742919922, 14.433229446411), model = `johanni_tstudio_asset_elevator_door`},
        },
        linkedToHouses = {
            "Aldentes"
        }
    },
    ["Angels of Death"] = {
        permission = "",
        locations = {
            {position = vector3(266.05258178711,2997.9936523438, 43.253200531006), modelPosition = vector3(265.40570068359,2997.9389648438, 43.267456054688), model = `apollo_ch_harm_fdoor`},
            {position = vector3(272.95965576172,2993.6281738281, 43.247753143311), modelPosition = vector3(272.3127746582,2993.5734863281, 43.262008666992), model = `apollo_ch_harm_fdoor`},
            {position = vector3(275.62286376953,2992.5183105469, 43.255386352539), modelPosition = vector3(275.56805419922,2993.1667480469, 43.269641876221), model = `apollo_ch_harm_church_d`},
            {position = vector3(275.72830200195,2991.2307128906, 43.255386352539), modelPosition = vector3(275.78311157227,2990.5822753906, 43.269641876221), model = `apollo_ch_harm_church_d`},
            {position = vector3(273.28060913086,2989.6298828125, 43.24499130249), modelPosition = vector3(272.63372802734,2989.5751953125, 43.259246826172), model = `apollo_ch_harm_fdoor`},
            {position = vector3(269.56631469727,2983.3610839844, 43.259868621826), modelPosition = vector3(270.21319580078,2983.4157714844, 43.274124145508), model = `apollo_ch_harm_fdoor`},
            {position = vector3(268.28121948242,2983.2631835938, 43.259868621826), modelPosition = vector3(267.63433837891,2983.2084960938, 43.274124145508), model = `apollo_ch_harm_fdoor`},
            {position = vector3(261.60629272461,2991.9916992188, 46.563636779785), modelPosition = vector3(260.95797729492,2991.9370117188, 46.577892303467), model = `apollo_ch_harm_church_d`},
            {position = vector3(262.90081787109,2992.1027832031, 46.563636779785), modelPosition = vector3(263.54913330078,2992.1574707031, 46.577892303467), model = `apollo_ch_harm_church_d`},
            {position = vector3(271.02444458008,2998.3881835938, 46.538890838623), modelPosition = vector3(271.67132568359,2998.4428710938, 46.553146362305), model = `apollo_ch_harm_fdoor`},
            {position = vector3(272.54443359375,2990.126953125, 46.567390441895), modelPosition = vector3(271.89376831055,2990.0751953125, 46.567390441895), model = `apollo_ch_harm_press_door1`},
            {position = vector3(273.83572387695,2990.2321777344, 46.566864013672), modelPosition = vector3(274.47979736328,2990.2834472656, 46.566864013672), model = `apollo_ch_harm_press_door`},
            {position = vector3(259.97399902344,3029.5524902344, 46.70739364624), modelPosition = vector3(259.93212890625,3030.203125, 46.70739364624), model = `apollo_ch_harm_sedoor`},
            {position = vector3(266.10583496094,3033.228515625, 46.680751800537), modelPosition = vector3(265.45516967773,3033.1867675781, 46.680751800537), model = `apollo_ch_harm_sedoor`},
            {position = vector3(293.08563232422,3038.8369140625, 50.065353393555), modelPosition = vector3(293.73629760742,3038.8786621094, 50.065353393555), model = `apollo_ch_harm_sedoor`},
            {position = vector3(291.73294067383,3041.2854003906, 43.35408782959), modelPosition = vector3(292.38360595703,3041.3271484375, 43.35408782959), model = `apollo_ch_harm_sedoor`},
            {position = vector3(293.2795715332,3037.818359375, 43.34432220459), modelPosition = vector3(293.82748413086,3037.8623046875, 43.34432220459), model = `apollo_ch_harm_cell_gate`},
            {position = vector3(289.35873413086,2989.7541503906,42.955726623535), modelPosition = vector3( 292.799, 2990.257, 41.850), model = `apollo_ch_harm_gate`},
        },
        linkedToHouses = {
            "Angels of Death"
        }
    },
    -- ["Black Lotus"] = {
    --     permission = "gang.blacklotus.whitelist",
    --     locations = {
    --         {position = vector3(-1478.0002441406,883.63110351562, 183.86056518555), modelPosition = vector3(-1478.2565917969,882.24304199219, 183.07188415527), model = `prop_lrggate_01_l`},
    --         {position = vector3(-1477.4919433594,886.3173828125, 183.80914306641), modelPosition = vector3(-1477.2287597656,887.64904785156, 183.07188415527), model = `prop_lrggate_01_r`},
    --         {position = vector3(-1516.5319824219,851.00622558594, 181.87895202637), modelPosition = vector3(-1516.1547851562,850.86676025391, 180.62225341797), model = `tor_door_main_r`},
    --         {position = vector3(-1517.2565917969,851.25347900391, 181.87376403809), modelPosition = vector3(-1517.6416015625,851.38812255859, 180.61706542969), model = `tor_door_main_l`},
    --         {position = vector3(-1502.2390136719,848.33966064453, 181.66369628906), modelPosition = vector3(-1501.6701660156,848.61572265625, 181.66421508789), model = `tor_roomdoor`},
    --         {position = vector3(-1505.8991699219,846.64324951172, 181.66610717773), modelPosition = vector3(-1505.3287353516,846.91589355469, 181.66662597656), model = `tor_roomdoor`},
    --         {position = vector3(-1499.8875732422,846.66107177734, 181.67022705078), modelPosition = vector3(-1499.6207275391,846.087890625, 181.67074584961), model = `tor_roomdoor`},
    --         {position = vector3(-1518.9691162109,840.95446777344, 181.70980834961), modelPosition = vector3(-1518.3765869141,841.22222900391, 181.70950317383), model = `tor_cabinetdoor`},
    --         {position = vector3(-1494.412109375,840.26556396484, 178.76469421387), modelPosition = vector3(-1494.6082763672,840.95104980469, 178.76580810547), model = `v_ilev_ph_cellgate`},
    --         {position = vector3(-1491.7302246094,834.65734863281, 178.77291870117), modelPosition = vector3(-1491.9333496094,835.34075927734, 178.77403259277), model = `v_ilev_ph_cellgate`},
    --         {position = vector3(-1495.5920410156,837.40026855469, 178.8395690918), modelPosition = vector3(-1495.8383789062,837.93902587891, 178.8395690918), model = `tor_stashdoor`},
    --     },
    -- },
    ["Gambling Den"] = {
        permission = "",
        locations = {
            {position = vector3(1151.4671630859,-438.43325805664, 67.372299194336), modelPosition = vector3(1151.3067626953,-439.07174682617, 67.37255859375), model = `prop_ch3_04_door_02`},
        },
        linkedToHouses = {
            "Gambling Den"
        }
    },
    ["Farm Ranch"] = {
        permission = "gang.redline.whitelist",
        locations = {
            {position = vector3(2452.7375488281,4969.8149414062, 46.971515655518), modelPosition = vector3(2453.1977539062,4969.3544921875, 46.971515655518), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2440.5673828125,4982.1708984375, 46.922527313232), modelPosition = vector3(2441.0275878906,4981.7104492188, 46.922527313232), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2442.1135253906,4982.3671875, 46.979808807373), modelPosition = vector3(2442.5737304688,4982.8276367188, 46.979808807373), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2446.2790527344,4986.5053710938, 46.974414825439), modelPosition = vector3(2446.7392578125,4986.9658203125, 46.974414825439), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2449.0603027344,4989.3012695312, 46.940368652344), modelPosition = vector3(2449.5205078125,4989.76171875, 46.940368652344), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2452.1923828125,4989.3413085938, 46.976612091064), modelPosition = vector3(2452.6525878906,4988.880859375, 46.976612091064), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2454.9758300781,4986.5561523438, 46.97403717041), modelPosition = vector3(2455.4360351562,4986.095703125, 46.97403717041), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2432.7338867188,4960.3505859375, 46.978199005127), modelPosition = vector3(2433.1940917969,4959.8901367188, 46.978199005127), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2449.8989257812,4976.3852539062, 47.555644989014), modelPosition = vector3(2449.5617675781,4976.7250976562, 46.980644226074), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2450.1296386719,4976.16015625, 47.555644989014), modelPosition = vector3(2450.466796875,4975.8203125, 46.980644226074), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2436.8156738281,4971.5004882812, 47.548515319824), modelPosition = vector3(2437.1552734375,4971.8374023438, 46.973514556885), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2436.5766601562,4971.2563476562, 47.548515319824), modelPosition = vector3(2436.2370605469,4970.9194335938, 46.973514556885), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2435.8662109375,4975.5151367188, 46.970741271973), modelPosition = vector3(2436.3264160156,4975.9755859375, 46.970741271973), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2455.1203613281,4974.859375, 51.826583862305), modelPosition = vector3(2455.5031738281,4975.2392578125, 51.826583862305), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2452.919921875,4974.4526367188, 52.308788299561), modelPosition = vector3(2453.2570800781,4974.1127929688, 51.733787536621), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2452.6801757812,4974.6875, 52.308788299561), modelPosition = vector3(2452.3430175781,4975.02734375, 51.733787536621), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2454.3579101562,4974.0908203125, 51.826583862305), modelPosition = vector3(2453.9750976562,4973.7109375, 51.826583862305), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2450.4753417969,4976.7841796875, 51.725044250488), modelPosition = vector3(2450.0151367188,4977.2446289062, 51.725044250488), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2442.6555175781,4966.5756835938, 51.834663391113), modelPosition = vector3(2442.2727050781,4966.1958007812, 51.834663391113), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2443.4169921875,4967.3427734375, 51.834663391113), modelPosition = vector3(2443.7998046875,4967.72265625, 51.834663391113), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2447.5573730469,4975.107421875, 51.73579788208), modelPosition = vector3(2447.0971679688,4975.5678710938, 51.73579788208), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2444.8342285156,4977.9360351562, 52.304580688477), modelPosition = vector3(2445.1713867188,4977.5961914062, 51.729579925537), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2444.5871582031,4978.177734375, 52.304580688477), modelPosition = vector3(2444.25,4978.517578125, 51.729579925537), model = `maarczin_houseoil_doortoilet`},
            {position = vector3(2442.587890625,4980.0678710938, 51.823585510254), modelPosition = vector3(2442.9677734375,4979.6850585938, 51.823585510254), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2441.8232421875,4980.8266601562, 51.823585510254), modelPosition = vector3(2441.443359375,4981.2094726562, 51.823585510254), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2444.466796875,4980.4892578125, 51.720363616943), modelPosition = vector3(2444.9270019531,4980.9497070312, 51.720363616943), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2451.2670898438,4984.5795898438, 51.834300994873), modelPosition = vector3(2451.6469726562,4984.1967773438, 51.834300994873), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2450.4995117188,4985.3413085938, 51.834300994873), modelPosition = vector3(2450.1196289062,4985.7241210938, 51.834300994873), model = `maarczin_houseoil_doorwindow`},
            {position = vector3(2446.9768066406,4980.3168945312, 51.728424072266), modelPosition = vector3(2447.4370117188,4979.8564453125, 51.728424072266), model = `maarczin_houseoil_doorwood_1`},
            {position = vector3(2418.3459472656,4994.37109375,46.32027053833), modelPosition = vector3(2419.085, 4992.88, 47.73531), model = `celeiroportafarm02`},
            {position = vector3(2416.8293457031,4995.8715820312,46.32027053833), modelPosition = vector3(2415.417, 4996.549, 47.73531), model = `celeiroportafarm03`},
        },
        linkedToHouses = {
            "Farm Ranch"
        }
    },
    ["Black Bunker"] = {
        permission = "",
        locations = {
            {position = vector3(3093.0925292969,5461.392578125, 23.852657318115), modelPosition = vector3(3093.6130371094,5461.6909179688, 22.607275009155), model = `lks_bbk_door_02a`},
            {position = vector3(3097.888671875,5454.3603515625, 24.179853439331), modelPosition = vector3(3098.75,5454.8569335938, 22.588800430298), model = `lks_bbk_big_door_01`},
            {position = vector3(3096.1516113281,5453.3583984375, 24.179853439331), modelPosition = vector3(3095.2915039062,5452.8627929688, 22.588809967041), model = `lks_bbk_big_door_01`},
            {position = vector3(3103.2790527344,5445.0234375, 24.179853439331), modelPosition = vector3(3104.1442871094,5445.5234375, 22.588911056519), model = `lks_bbk_big_door_01`},
            {position = vector3(3101.5419921875,5444.021484375, 24.179853439331), modelPosition = vector3(3100.6811523438,5443.525390625, 22.588821411133), model = `lks_bbk_big_door_01`},
            {position = vector3(3118.6643066406,5418.96875, 24.247753143311), modelPosition = vector3(3119.7895507812,5419.6176757812, 22.588954925537), model = `lks_bbk_big_door_02`},
            {position = vector3(3116.421875,5417.6743164062, 24.247753143311), modelPosition = vector3(3115.29296875,5417.0229492188, 22.588891983032), model = `lks_bbk_big_door_02`},
            {position = vector3(3143.1384277344,5376.5795898438, 26.79874420166), modelPosition = vector3(3144.2639160156,5377.2280273438, 25.139991760254), model = `lks_bbk_entry_door_01`},
            {position = vector3(3140.8950195312,5375.2841796875, 26.79874420166), modelPosition = vector3(3139.7658691406,5374.6328125, 25.13981628418), model = `lks_bbk_entry_door_02`},
            {position = vector3(3099.443359375,5462.74609375, 23.850868225098), modelPosition = vector3(3100.0358886719,5463.0883789062, 22.608602523804), model = `lks_bbk_door_01`},
            {position = vector3(3088.1218261719,5456.2094726562, 23.850868225098), modelPosition = vector3(3088.7158203125,5456.5522460938, 22.608625411987), model = `lks_bbk_door_01`},
            {position = vector3(3092.2556152344,5460.9116210938, 27.844688415527), modelPosition = vector3(3091.9345703125,5460.7294921875, 26.605417251587), model = `lks_bbk_door_02b`},
            {position = vector3(3096.4458007812,5463.3383789062, 28.251207351685), modelPosition = vector3(3095.8544921875,5462.99609375, 27.008829116821), model = `lks_bbk_door_01`},
            {position = vector3(3100.4167480469,5443.2216796875, 28.249380111694), modelPosition = vector3(3100.76171875,5442.6274414062, 27.007038116455), model = `lks_bbk_door_01`},
            {position = vector3(3097.0546875,5444.63671875, 32.066009521484), modelPosition = vector3(3097.6474609375,5444.9794921875, 30.823705673218), model = `lks_bbk_door_01`},
            {position = vector3(3092.78515625,5442.1713867188, 32.066009521484), modelPosition = vector3(3093.3784179688,5442.513671875, 30.82371711731), model = `lks_bbk_door_01`},
            {position = vector3(3090.6315917969,5445.904296875, 32.066009521484), modelPosition = vector3(3090.0390625,5445.5620117188, 30.82367515564), model = `lks_bbk_door_01`},
            {position = vector3(3094.900390625,5448.3686523438, 32.066009521484), modelPosition = vector3(3094.3076171875,5448.0263671875, 30.823331832886), model = `lks_bbk_door_01`},
            {position = vector3(3104.8825683594,5449.1557617188, 32.066009521484), modelPosition = vector3(3105.4753417969,5449.498046875, 30.823518753052), model = `lks_bbk_door_01`},
            {position = vector3(3109.1525878906,5451.6186523438, 32.064521789551), modelPosition = vector3(3108.5607910156,5451.2763671875, 30.822135925293), model = `lks_bbk_door_01`},
            {position = vector3(3109.30078125,5454.150390625, 32.066009521484), modelPosition = vector3(3108.9545898438,5454.74609375, 30.823581695557), model = `lks_bbk_door_01`},
            {position = vector3(3099.2907714844,5454.4848632812, 32.062660217285), modelPosition = vector3(3099.4729003906,5454.166015625, 30.823726654053), model = `lks_bbk_door_02b`},
            {position = vector3(3092.8208007812,5456.4096679688, 32.066444396973), modelPosition = vector3(3093.1062011719,5455.9189453125, 30.823587417603), model = `lks_bbk_door_toil`},
            {position = vector3(3091.5793457031,5458.5600585938, 32.066444396973), modelPosition = vector3(3091.8666992188,5458.0659179688, 30.82371711731), model = `lks_bbk_door_toil`},
            {position = vector3(3088.6430664062,5463.6528320312, 32.066444396973), modelPosition = vector3(3088.35546875,5464.1459960938, 30.823659896851), model = `lks_bbk_door_toil`},
            {position = vector3(3087.4016113281,5465.8032226562, 32.066444396973), modelPosition = vector3(3087.1140136719,5466.296875, 30.823709487915), model = `lks_bbk_door_toil`},
            {position = vector3(3092.6687011719,5465.9501953125, 32.068878173828), modelPosition = vector3(3092.3674316406,5466.4736328125, 30.823696136475), model = `lks_bbk_door_02a`},
            {position = vector3(3092.18359375,5457.4848632812, 27.850868225098), modelPosition = vector3(3092.5305175781,5456.8872070312, 26.608480453491), model = `lks_bbk_door_01`},
            {position = vector3(3092.2556152344,5460.9116210938, 19.847156524658), modelPosition = vector3(3091.3996582031,5460.4213867188, 18.607597351074), model = `lks_bbk_door_02b`},
            {position = vector3(3099.44921875,5462.7358398438, 19.851715087891), modelPosition = vector3(3100.1022949219,5463.1123046875, 18.609350204468), model = `lks_bbk_door_01`},
            {position = vector3(3101.1997070312,5458.4501953125, 19.848300933838), modelPosition = vector3(3100.8344726562,5458.2421875, 18.609260559082), model = `lks_bbk_door_02b`},
            {position = vector3(3090.1064453125,5452.0512695312, 19.853509902954), modelPosition = vector3(3089.5817871094,5451.7514648438, 18.608366012573), model = `lks_bbk_door_02a`},
            {position = vector3(3088.1176757812,5456.2124023438, 19.851715087891), modelPosition = vector3(3087.5236816406,5455.869140625, 18.609422683716), model = `lks_bbk_door_01`},
            {position = vector3(3101.5134277344,5423.5395507812, 19.851383209229), modelPosition = vector3(3100.9213867188,5423.197265625, 18.608926773071), model = `lks_bbk_door_01`},
            {position = vector3(3121.0268554688,5434.8056640625, 19.851383209229), modelPosition = vector3(3120.4338378906,5434.4633789062, 18.609088897705), model = `lks_bbk_door_01`},
            {position = vector3(3092.2556152344,5460.9116210938, 23.846153259277), modelPosition = vector3(3091.9362792969,5460.7294921875, 22.607166290283), model = `lks_bbk_door_02b`},
            {position = vector3(3105.1477050781,5438.58203125, 19.847156524658), modelPosition = vector3(3104.8288574219,5438.3999023438, 18.608547210693), model = `lks_bbk_door_02b`},
            {position = vector3(3093.0925292969,5461.392578125, 19.853660583496), modelPosition = vector3(3094.6394042969,5462.291015625, 18.608598709106), model = `lks_bbk_door_02a`},
            {position = vector3(3093.0925292969,5461.392578125, 27.850812911987), modelPosition = vector3(3094.0651855469,5461.9565429688, 26.6057472229), model = `lks_bbk_door_02a`},
        },
        linkedToHouses = {
            "Black Bunker"
        }
    },
    ["Luciano's Restaurant"] = {
        permission = "",
        locations = {
            {position = vector3(-1022.8126831055,-1363.9597167969, 9.6094341278076), modelPosition = vector3(-1022.184753418,-1364.1279296875, 9.6094341278076), model = `v_ilev_fib_door1`},
            {position = vector3(-1024.6358642578,-1370.7589111328, 9.6094341278076), modelPosition = vector3(-1025.2637939453,-1370.5906982422, 9.6094341278076), model = `v_ilev_fib_door1`},
            {position = vector3(-1028.861328125,-1367.1339111328, 9.6078672409058), modelPosition = vector3(-1028.2338867188,-1367.3020019531, 9.6078662872314), model = `v_ilev_fib_door2`},
            {position = vector3(-1036.0554199219,-1365.2066650391, 9.6094341278076), modelPosition = vector3(-1035.4274902344,-1365.3748779297, 9.6094341278076), model = `v_ilev_fib_door1`},
            {position = vector3(-1035.0531005859,-1369.5164794922, 9.6078672409058), modelPosition = vector3(-1034.7282714844,-1370.0789794922, 9.6078662872314), model = `v_ilev_fib_door2`},
        },
        linkedToHouses = {
            "Luciano's Restaurant"
        }
    },
    ["Lost MC Clubhouse"] = {
        permission = "",
        locations = {
            {position = vector3(-701.82531738281,-1171.0491943359, 10.998433113098), modelPosition = vector3(-702.23986816406,-1170.546875, 10.998433113098), model = `v_ilev_ph_gendoor004`},
            {position = vector3(-698.11676025391,-1177.6577148438, 10.988324165344), modelPosition = vector3(-698.66955566406,-1178.1173095703, 11.000617027283), model = `apollo_mc_seoul_bdoor`},
            {position = vector3(-694.28930664062,-1185.4685058594, 10.892270088196), modelPosition = vector3(-694.70452880859,-1184.9694824219, 10.906527519226), model = `apollo_mc_seoul_fdoor`},
            {position = vector3(-693.47027587891,-1186.4665527344, 10.892126083374), modelPosition = vector3(-693.05505371094,-1186.9655761719, 10.906383514404), model = `apollo_mc_seoul_fdoor`},
            {position = vector3(-685.48937988281,-1185.2041015625, 11.111152648926), modelPosition = vector3(-685.07415771484,-1185.703125, 11.125410079956), model = `apollo_mc_seoul_fdoor`},
            {position = vector3(-702.51904296875,-1155.8486328125, 10.984888076782), modelPosition = vector3(-702.00958251953,-1155.4417724609, 10.984888076782), model = `apollo_mc_seoul_gar_sedoor`},
            {position = vector3(-690.25347900391,-1170.8348388672, 10.777112007141), modelPosition = vector3(-689.75109863281,-1170.4202880859, 10.777112007141), model = `v_ilev_ph_gendoor004`},
            {position = vector3(-681.71350097656,-1174.9123535156, 10.869861602783), modelPosition = vector3(-682.17309570312,-1174.3596191406, 10.882154464722), model = `apollo_mc_seoul_bdoor`},
            {position = vector3(-670.13385009766,-1173.8177490234, 10.991347312927), modelPosition = vector3(-669.71667480469,-1174.4135742188, 10.766987800598), model = `apollo_mc_seoul_rear_gate`},
            {position = vector3(-678.30114746094,-1184.5037841797, 10.87842464447), modelPosition = vector3(-678.80487060547,-1184.9189453125, 10.87842464447), model = `apollo_mc_seoul_press_door1`},
            {position = vector3(-677.31005859375,-1183.6832275391, 10.893913269043), modelPosition = vector3(-676.81140136719,-1183.2723388672, 10.91019153595), model = `apollo_mc_seoul_press_door`},
            {position = vector3(-687.04479980469,-1177.4307861328, 6.7912745475769), modelPosition = vector3(-687.46099853516,-1176.9306640625, 6.8055319786072), model = `apollo_mc_seoul_church_d`},
            {position = vector3(-686.22381591797,-1178.4260253906, 6.7912745475769), modelPosition = vector3(-685.8076171875,-1178.9261474609, 6.8055319786072), model = `apollo_mc_seoul_church_d`},
            {position = vector3(-698.05554199219,-1180.1820068359, 6.7874298095703), modelPosition = vector3(-697.64862060547,-1180.69140625, 6.7874298095703), model = `apollo_mc_seoul_sedoor`},
            {position = vector3(-707.84442138672,-1171.2952880859, 14.640468597412), modelPosition = vector3(-708.34643554688,-1171.7081298828, 14.640468597412), model = `v_ilev_rc_door2`},
            {position = vector3(-702.76934814453,-1167.1257324219, 14.633359909058), modelPosition = vector3(-702.26696777344,-1166.7111816406, 14.633359909058), model = `v_ilev_ph_gendoor004`},
            {position = vector3(-711.23876953125,-1142.5673828125, 11.361881256104), modelPosition = vector3(-708.77978515625,-1140.5706787109, 9.4697465896606), model = `apollo_mc_seoul_gate`, automaticGate = true},
        },
        linkedToHouses = {
            "Lost MC Clubhouse"
        }
    },
    ["Vineyard Mansion"] = {
        permission = "",
        locations = {
            {position = vector3(-1886.9522705078,2051.0170898438, 141.3125), modelPosition = vector3(-1887.5340576172,2051.2338867188, 141.3125), model = `ball_prop_italy2`},
            {position = vector3(-1885.7950439453,2050.5905761719, 141.30850219727), modelPosition = vector3(-1885.2110595703,2050.3798828125, 141.30850219727), model = `ball_prop_italy2`},
            {position = vector3(-1888.4870605469,2051.59765625, 141.3115234375), modelPosition = vector3(-1887.9030761719,2051.3869628906, 141.3115234375), model = `ball_prop_italy2`},
            {position = vector3(-1889.6433105469,2052.0190429688, 141.3125), modelPosition = vector3(-1890.2250976562,2052.2358398438, 141.3125), model = `ball_prop_italy2`},
            {position = vector3(-1886.6612548828,2074.0910644531, 141.3125), modelPosition = vector3(-1887.2430419922,2074.3078613281, 141.3125), model = `ball_prop_italy2`},
            {position = vector3(-1885.5050048828,2073.6726074219, 141.30850219727), modelPosition = vector3(-1884.9210205078,2073.4619140625, 141.30850219727), model = `ball_prop_italy2`},
            {position = vector3(-1875.0322265625,2069.8510742188, 141.3125), modelPosition = vector3(-1875.6140136719,2070.0678710938, 141.3125), model = `ball_prop_italy2`},
            {position = vector3(-1873.8779296875,2069.4304199219, 141.30850219727), modelPosition = vector3(-1873.2939453125,2069.2197265625, 141.30850219727), model = `ball_prop_italy2`},
            {position = vector3(-1861.0681152344,2054.11328125, 141.35359191895), modelPosition = vector3(-1861.6889648438,2054.1159667969, 141.35359191895), model = `ball_prop_italy2`},
            {position = vector3(-1859.8347167969,2054.1123046875, 141.35350036621), modelPosition = vector3(-1859.2139892578,2054.1179199219, 141.35350036621), model = `ball_prop_italy2`},
            {position = vector3(-1871.3153076172,2056.2717285156, 141.12738037109), modelPosition = vector3(-1871.3050537109,2056.9235839844, 141.12738037109), model = `ball_prop_italy1`},
            {position = vector3(-1878.9304199219,2057.0185546875, 141.13409423828), modelPosition = vector3(-1879.1530761719,2056.4060058594, 141.13409423828), model = `ball_prop_italy1`},
            {position = vector3(-1893.3050537109,2074.7839355469, 141.30850219727), modelPosition = vector3(-1892.8330078125,2074.380859375, 141.30850219727), model = `ball_prop_italy2`},
            {position = vector3(-1894.2496337891,2075.5737304688, 141.3125), modelPosition = vector3(-1894.7299804688,2075.9670410156, 141.3125), model = `ball_prop_italy2`},
            {position = vector3(-1909.1516113281,2073.0734863281, 140.91519165039), modelPosition = vector3(-1909.6240234375,2073.4719238281, 140.91519165039), model = `ball_prop_italy3`},
            {position = vector3(-1908.2042236328,2072.2766113281, 140.91310119629), modelPosition = vector3(-1907.7320556641,2071.8779296875, 140.91310119629), model = `ball_prop_italy3`},
            {position = vector3(-1910.6811523438,2074.3676757812, 140.91310119629), modelPosition = vector3(-1910.208984375,2073.9689941406, 140.91310119629), model = `ball_prop_italy3`},
            {position = vector3(-1911.6286621094,2075.1616210938, 140.9149017334), modelPosition = vector3(-1912.1010742188,2075.5600585938, 140.9149017334), model = `ball_prop_italy3`},
            {position = vector3(-1911.4094238281,2079.2653808594, 140.91149902344), modelPosition = vector3(-1911.8100585938,2078.794921875, 140.91149902344), model = `ball_prop_italy3`},
            {position = vector3(-1910.6024169922,2080.2082519531, 140.91149902344), modelPosition = vector3(-1910.2020263672,2080.6789550781, 140.91149902344), model = `ball_prop_italy3`},
            {position = vector3(-1907.1954345703,2084.2143554688, 140.91149902344), modelPosition = vector3(-1907.5960693359,2083.7438964844, 140.91149902344), model = `ball_prop_italy3`},
            {position = vector3(-1906.3944091797,2085.15625, 140.91149902344), modelPosition = vector3(-1905.9940185547,2085.626953125, 140.91149902344), model = `ball_prop_italy3`},
            {position = vector3(-1901.4659423828,2085.3459472656, 140.91883850098), modelPosition = vector3(-1900.9938964844,2084.947265625, 140.91883850098), model = `ball_prop_italy3`},
            {position = vector3(-1899.9345703125,2084.0473632812, 140.91459655762), modelPosition = vector3(-1900.4060058594,2084.4467773438, 140.91459655762), model = `ball_prop_italy3`},
            {position = vector3(-1898.9860839844,2083.2507324219, 140.91525268555), modelPosition = vector3(-1898.5140380859,2082.8520507812, 140.91525268555), model = `ball_prop_italy3`},
            {position = vector3(-1902.4106445312,2086.1455078125, 140.91679382324), modelPosition = vector3(-1902.8820800781,2086.544921875, 140.91679382324), model = `ball_prop_italy3`},
            {position = vector3(-1883.8422851562,2060.1047363281, 145.73190307617), modelPosition = vector3(-1883.2299804688,2059.8811035156, 145.73190307617), model = `ball_prop_italy1`},
            {position = vector3(-1885.0671386719,2060.5500488281, 145.73190307617), modelPosition = vector3(-1885.6789550781,2060.7749023438, 145.73190307617), model = `ball_prop_italy1`},
            {position = vector3(-1886.5673828125,2062.9343261719, 145.73039245605), modelPosition = vector3(-1886.7761230469,2062.3168945312, 145.73039245605), model = `ball_prop_italy1`},
            {position = vector3(-1886.1326904297,2064.1599121094, 145.73190307617), modelPosition = vector3(-1885.9080810547,2064.7719726562, 145.73190307617), model = `ball_prop_italy1`},
            {position = vector3(-1883.4012451172,2065.0832519531, 145.73190307617), modelPosition = vector3(-1884.0130615234,2065.3081054688, 145.73190307617), model = `ball_prop_italy1`},
            {position = vector3(-1882.1872558594,2064.6345214844, 145.73190307617), modelPosition = vector3(-1881.5749511719,2064.4108886719, 145.73190307617), model = `ball_prop_italy1`},
            {position = vector3(-1880.6843261719,2062.1711425781, 145.72944641113), modelPosition = vector3(-1880.4650878906,2062.7849121094, 145.72944641113), model = `ball_prop_italy1`},
            {position = vector3(-1881.1276855469,2060.9567871094, 145.73313903809), modelPosition = vector3(-1881.3580322266,2060.3469238281, 145.73313903809), model = `ball_prop_italy1`},
            {position = vector3(-1876.6202392578,2067.2951660156, 145.73515319824), modelPosition = vector3(-1876.4010009766,2067.9089355469, 145.73515319824), model = `ball_prop_italy1`},
            {position = vector3(-1884.8663330078,2071.8681640625, 145.73707580566), modelPosition = vector3(-1884.6470947266,2072.4819335938, 145.73707580566), model = `ball_prop_italy1`},
            {position = vector3(-1892.9858398438,2069.8869628906, 145.0207824707), modelPosition = vector3(-1892.5667724609,2070.3862304688, 145.0207824707), model = `ball_prop_italy1`},
            {position = vector3(-1893.8195800781,2068.892578125, 145.02021789551), modelPosition = vector3(-1894.2386474609,2068.3933105469, 145.02021789551), model = `ball_prop_italy1`},
        },
        linkedToHouses = {
            "Vineyard Mansion"
        }
    },
    ["Boss Villa"] = {
        permission = "",
        locations = {
          {position = vector3(-1037.4289550781,222.84411621094, 64.785980224609), modelPosition = vector3(-1037.5108642578,223.49736022949, 64.56413269043), model = `robbbs_prop_door_r`},
            {position = vector3(-1037.4755859375,221.51899719238, 64.785949707031), modelPosition = vector3(-1037.4643554688,220.87745666504, 64.564102172852), model = `robbbs_prop_door_l`},
            {position = vector3(-1036.1196289062,225.42242431641, 64.749649047852), modelPosition = vector3(-1035.4697265625,225.42250061035, 64.749649047852), model = `v_ilev_ra_door2`},
            {position = vector3(-1043.0196533203,236.79049682617, 64.613143920898), modelPosition = vector3(-1042.3723144531,236.80142211914, 64.55313873291), model = `v_ilev_fa_dinedoor`},
            {position = vector3(-1050.2075195312,225.59399414062, 64.202842712402), modelPosition = vector3(-1050.5693359375,225.60559082031, 64.204620361328), model = `robbbs_villa_garaged_01`},
            {position = vector3(-1044.9312744141,225.5940246582, 64.200561523438), modelPosition = vector3(-1045.2930908203,225.60006713867, 64.226547241211), model = `robbbs_villa_garaged_01`},
            {position = vector3(-1044.2066650391,235.95816040039, 64.503242492676), modelPosition = vector3(-1044.2066650391,234.75378417969, 64.501777648926), model = `robbbs_portanascosta`},
            {position = vector3(-1046.4477539062,234.27601623535, 55.911624908447), modelPosition = vector3(-1047.0977783203,234.27645874023, 55.911624908447), model = `v_ilev_gtdoor`},
            {position = vector3(-1039.9659423828,219.44610595703, 52.988403320312), modelPosition = vector3(-1040.6743164062,219.52659606934, 52.989521026611), model = `v_ilev_ph_cellgate`},
            {position = vector3(-1043.1387939453,219.44610595703, 52.988403320312), modelPosition = vector3(-1043.8471679688,219.52659606934, 52.989521026611), model = `v_ilev_ph_cellgate`},
            {position = vector3(-1046.3112792969,219.44610595703, 52.988403320312), modelPosition = vector3(-1047.0196533203,219.52659606934, 52.989521026611), model = `v_ilev_ph_cellgate`},
            {position = vector3(-1049.4940185547,219.44610595703, 52.988403320312), modelPosition = vector3(-1050.2023925781,219.52659606934, 52.989521026611), model = `v_ilev_ph_cellgate`},
            {position = vector3(-1029.7536621094,225.40998840332, 64.749649047852), modelPosition = vector3(-1030.4035644531,225.40991210938, 64.749649047852), model = `v_ilev_ra_door2`},
            {position = vector3(-1028.1889648438,234.33848571777, 64.75617980957), modelPosition = vector3(-1028.8388671875,234.33840942383, 64.75617980957), model = `v_ilev_ra_door2`},
            {position = vector3(-1030.3017578125,214.13055419922, 64.749649047852), modelPosition = vector3(-1030.9516601562,214.13047790527, 64.749649047852), model = `v_ilev_ra_door2`},
            {position = vector3(-1028.4730224609,211.66033935547, 64.760047912598), modelPosition = vector3(-1028.4729003906,211.0104675293, 64.760047912598), model = `v_ilev_ra_door2`},
            {position = vector3(-1035.4119873047,228.89749145508, 68.370750427246), modelPosition = vector3(-1036.0618896484,228.89741516113, 68.370750427246), model = `v_ilev_ra_door2`},
            {position = vector3(-1043.3280029297,226.54954528809, 68.459205627441), modelPosition = vector3(-1042.7113037109,226.54873657227, 67.264404296875), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1037.5472412109,223.33633422852, 68.470825195312), modelPosition = vector3(-1037.5477294922,222.72131347656, 67.275894165039), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1034.5524902344,212.13812255859, 68.469039916992), modelPosition = vector3(-1034.5529785156,211.52355957031, 67.274085998535), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1028.5646972656,211.77006530762, 68.469039916992), modelPosition = vector3(-1028.5642089844,212.38323974609, 67.274169921875), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1028.6453857422,222.55006408691, 68.458473205566), modelPosition = vector3(-1028.6448974609,223.16233825684, 67.263595581055), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1028.6507568359,222.54594421387, 64.949668884277), modelPosition = vector3(-1028.6502685547,223.16069030762, 63.75452041626), model = `robbbs_villa_sl_door01`},
            {position = vector3(-1027.1519775391,214.0570526123, 64.784553527832), modelPosition = vector3(-1027.7993164062,214.04612731934, 64.724548339844), model = `v_ilev_fa_dinedoor`},
        },
        linkedToHouses = {
            "Boss Villa"
        }
    },
}
---@diagnostic enable: missing-fields

local existingPositions = {}

for _, areaInfo in pairs(cfg.areas) do
    local totalX = 0.0
    local totalY = 0.0
    local totalZ = 0.0
    for _, doorInfo in pairs(areaInfo.locations) do
        totalX = totalX + doorInfo.position.x
        totalY = totalY + doorInfo.position.y
        totalZ = totalZ + doorInfo.position.z
    end
    local numLocations = #areaInfo.locations
    local centerX = totalX / numLocations
    local centerY = totalY / numLocations
    local centerZ = totalZ / numLocations
    areaInfo.centerLocation = vector3(centerX, centerY, centerZ)
    local maxDistance = 0.0
    local locationLookup = {}
    for _, doorInfo in pairs(areaInfo.locations) do
        for _, existingPosition in pairs(existingPositions) do
            assert(#(existingPosition - doorInfo.position) > 0.1, "Duplicate door at position " .. tostring(existingPosition))
        end
        local distance = #(areaInfo.centerLocation - doorInfo.position)
        if distance > maxDistance then
            maxDistance = distance
        end
        local name = CMG.generateUUID("gangdoor", 20, "alphanumeric")
        locationLookup[name] = doorInfo
        table.insert(existingPositions, doorInfo.position)
    end
    areaInfo.locations = locationLookup
    areaInfo.eventRadius = maxDistance + 25.0
end

return cfg

-- Helper to find gates that don't show with door editor
--[[
    local model = `apollo_ch_harm_gate`
    local p = GetEntityCoords(PlayerPedId())
    -- search a generous radius around you; tweak as needed
    local obj = GetClosestObjectOfType(p.x, p.y, p.z, 300.0, model, false, false, false)

    if obj ~= 0 then
        local pos = GetEntityCoords(obj)
        print(("gate at: %.3f, %.3f, %.3f"):format(pos.x, pos.y, pos.z))
    else
        print("no runtime object found (may be DoorSystem or baked static)")
    end
]]--
