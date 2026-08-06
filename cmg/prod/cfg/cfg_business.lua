---@type BusinessConfig
local cfg = {} ---@diagnostic disable-line

cfg.weekCost = 1000000
cfg.houseStorageSize = 2000
cfg.vehicleTrunkSize = 500

-- Business should also be added to lb-phone/config/config.lua under Config.Companies.Services
cfg.locations = {
    ["Burger Shot"] = {
        interiorHash = 217090,
        jobMarker = vector3(-1205.4437255859,-891.20056152344,13.995111465454),
        ownerMarker = vector3(-1190.4901123047,-899.57293701172,13.095303153992),
        inventoryPositions = {
            vector3(-1196.9719238281,-893.72210693359,13.015312690735), -- Waiter Side
            vector3(-1199.2274169922,-893.42639160156,13.015307922363), -- Chef Side
            vector3(-1203.8511962891,-892.72570800781,13.015177268982), -- Delivery Point
        },
        jobs = {
            {
                name = "Manager",
                description = "In control of all the staff and ensures the smooth operation of day to day operations.",
                paycheck = 25000,
                jobType = "manager",
                jobMetadata = {},
                isPhoneOnDuty = false,
            },
            {
                name = "Waiter",
                description = "Handles orders and delivery of items to tables.",
                paycheck = 25000,
                jobType = "waiter",
                jobMetadata = {
                    cashRegisterPositions = {
                        vector4(-1196.6109619141,-891.74505615234,13.980224609375,306.14172363281),
                        vector4(-1195.1340332031,-893.70989990234,13.980224609375,306.14172363281),
                        vector4(-1193.9340820312,-895.63513183594,13.980224609375,311.81103515625)
                    },
                    sellableItems = {
                        ["burger"] = 25000,
                        ["hotdog"] = 20000,
                        ["ecola"] = 15000,
                        ["sprunk"] = 15000,
                    }
                },
                isPhoneOnDuty = true,
            },
            {
                name = "Delivery Driver",
                description = "Delivers fresh produce and equipment to the store.",
                paycheck = 25000,
                jobType = "delivery",
                jobMetadata = {
                    vehicleSpawns = {
                        {vehicle = `mule`, position = vector4(-1164.2769775391,-891.63958740234,14.09814453125,121.88976287842)},
                        {vehicle = `mule`, position = vector4(-1166.9274902344,-888.68572998047,14.081298828125,121.88976287842)},
                        {vehicle = `mule`, position = vector4(-1221.6922607422,-891.11206054688,12.430053710938,306.14172363281)},
                        {vehicle = `mule`, position = vector4(-1214.2021484375,-885.9560546875,12.716430664062,303.30709838867)},
                        {vehicle = `mule`, position = vector4(-1249.7934570312,-863.82855224609,12.413208007812,221.10237121582)},
                    },
                    locations = {
                        {
                            name = "Sprunk Warehouse",
                            position = vector3(2673.2578125, 3519.162109375, 52.712066650391),
                            itemsPerDelivery = {
                                {id = "burger", amount = 3},
                                {id = "hotdog", amount = 3},
                                {id = "ecola", amount = 3},
                                {id = "sprunk", amount = 3},
                                {id = "energy_drink", amount = 3},
                                {id = "protein_bar", amount = 3},
                                {id = "carrot", amount = 3},
                                {id = "beer", amount = 3},
                            }
                        },
                    }
                },
                isPhoneOnDuty = false,
            },
            {
                name = "Cleaner",
                description = "Ensures the facilies are clean and pleasant for the customers",
                paycheck = 25000,
                jobType = "cleaner",
                jobMetadata = {
                    groundPoints = {
                        vector3(-1195.7160644531,-886.92987060547,13.99543094635),
                        vector3(-1193.5534667969,-885.65838623047,13.995321273804),
                        vector3(-1192.0065917969,-883.861328125,13.995332717896),
                        vector3(-1190.0548095703,-883.32116699219,13.995307922363),
                        vector3(-1189.4289550781,-881.78607177734,13.995301246643),
                        vector3(-1188.39453125,-885.24792480469,13.995306968689),
                        vector3(-1186.2484130859,-885.19299316406,13.995306968689),
                        vector3(-1184.5220947266,-885.91479492188,14.032652854919),
                        vector3(-1184.5220947266,-885.91479492188,14.032652854919),
                        vector3(-1186.7036132812,-886.73138427734,13.995311737061),
                        vector3(-1184.9576416016,-888.10729980469,13.995311737061),
                        vector3(-1184.9350585938,-889.62927246094,13.995311737061),
                        vector3(-1183.7174072266,-890.29504394531,13.995311737061),
                        vector3(-1185.3395996094,-891.42138671875,13.995311737061),
                        vector3(-1187.2110595703,-891.94476318359,13.995311737061),
                        vector3(-1187.9870605469,-893.68762207031,13.995311737061),
                        vector3(-1189.5374755859,-893.89959716797,13.995311737061),
                        vector3(-1189.3095703125,-895.04669189453,13.995311737061),
                        vector3(-1189.380859375,-896.36901855469,13.995311737061),
                        vector3(-1190.3790283203,-895.90087890625,13.995311737061),
                        vector3(-1192.4670410156,-894.31005859375,13.995311737061),
                        vector3(-1191.9185791016,-892.93438720703,13.995311737061),
                        vector3(-1193.3365478516,-891.80548095703,13.995311737061),
                        vector3(-1192.3968505859,-890.53009033203,13.99530506134),
                        vector3(-1193.8780517578,-889.58557128906,13.99530506134),
                        vector3(-1195.6192626953,-889.53326416016,13.99541759491),
                        vector3(-1197.3063964844,-888.9111328125,13.995302200317),
                        vector3(-1198.7307128906,-889.9423828125,13.995302200317),
                        vector3(-1201.1293945312,-891.20202636719,13.995303153992),
                        vector3(-1189.4367675781,-889.28234863281,13.995303153992),
                        vector3(-1191.1079101562,-888.53088378906,13.995301246643)
                    },
                    groundModels = {
                        `prop_food_bs_tray_01`,
                        `prop_food_bs_tray_02`,
                        `prop_food_bs_tray_03`,
                        `v_ilev_a_tissue`
                    },
                    surfacePoints = {
                        vector3(-1193.328125,-888.21197509766,14.859826087952),
                        vector3(-1194.1323242188,-883.92535400391,14.872159004211),
                        vector3(-1191.6605224609,-886.62164306641,14.872435569763),
                        vector3(-1191.6224365234,-882.12481689453,14.859826087952),
                        vector3(-1189.0108642578,-880.66473388672,14.943878173828),
                        vector3(-1187.4610595703,-882.79968261719,14.859825134277),
                        vector3(-1189.5607910156,-885.66448974609,14.859838485718),
                        vector3(-1187.0910644531,-889.35119628906,14.9222240448),
                        vector3(-1183.5684814453,-888.50537109375,14.859776496887),
                        vector3(-1182.2990722656,-890.75183105469,14.870820045471),
                        vector3(-1184.5593261719,-892.48303222656,14.859826087952),
                        vector3(-1188.6036376953,-891.18811035156,14.87264919281),
                        vector3(-1187.0192871094,-894.24102783203,14.859827041626)
                    },
                    toiletPoints = {
                        {
                            scrub = vector4(-1199.5780029297,-886.81317138672,13.980224609375,22.677164077759),
                            hands = vector4(-1198.9846191406,-887.84173583984,13.980224609375,306.14172363281),
                            liquidPoints = {
                                vector3(-1199.6180419922,-887.31561279297,13.995121955872),
                                vector3(-1200.1417236328,-888.47625732422,13.995121955872),
                            }
                        },
                        {
                            scrub = vector4(-1201.7406005859,-888.38244628906,13.980224609375,31.181102752686),
                            hands = vector4(-1201.1735839844,-889.27911376953,13.980224609375,300.47244262695),
                            liquidPoints = {
                                vector3(-1201.4837646484,-889.47235107422,13.99512386322),
                                vector3(-1202.5916748047,-888.82244873047,13.99512386322),
                            }
                        }
                    },
                    binPoints = {
                        vector4(-1196.9406738281,-886.82635498047,13.980224609375,124.72441101074),
                        vector4(-1190.3868408203,-896.37359619141,13.980224609375,124.72441101074),
                        vector4(-1204.193359375,-890.87469482422,13.980224609375,2.8346455097198),
                        vector4(-1191.9956054688,-897.69232177734,13.980224609375,311.81103515625),
                        vector4(-1169.6439208984,-876.89672851562,14.182373046875,294.80316162109),
                        vector4(-1161.3626708984,-891.01977539062,14.182373046875,291.96850585938)
                    },
                    binDeliveryPoint = vector3(-1180.7348632812,-905.05230712891,13.489715576172)
                },
                isPhoneOnDuty = false,
            },
        },
        items = {
            ["burger"] = {"Burger", 0.1},
            ["hotdog"] = {"Hotdog", 0.1},
            ["ecola"] = {"eCola", 0.1},
            ["sprunk"] = {"Sprunk", 0.1},
        },
        menuPositions = {
            vector3(-1192.7329101562,-894.74755859375,13.995306015015),
            vector3(-1194.0161132812,-892.93811035156,13.995306968689),
            vector3(-1195.3961181641,-890.86645507812,13.995306968689)
        },
        doorAreaName = "burgerShot",
    },
    ["Cat Cafe"] = {
        interiorHash = 226818,
        jobMarker = vector3(-586.76025390625,-1049.8322753906,22.344179153442),
        ownerMarker = vector3(-595.99389648438,-1051.0665283203,21.344200134277),
        inventoryPositions = {
            vector3(-586.24658203125,-1059.6861572266,21.344198226929), -- Waiter Side
            vector3(-588.70617675781,-1067.0803222656,21.344198226929), -- Chef Side
            vector3(-595.52264404297,-1062.7564697266,21.344190597534), -- Delivery Point
        },
        jobs = {
            {
                name = "Manager",
                description = "In control of all the staff and ensures the smooth operation of day to day operations.",
                paycheck = 25000,
                jobType = "manager",
                jobMetadata = {},
                isPhoneOnDuty = false,
            },
            {
                name = "Waiter",
                description = "Handles orders and delivery of items to tables.",
                paycheck = 25000,
                jobType = "waiter",
                jobMetadata = {
                    cashRegisterPositions = {
                        vector4(-584.70330810547,-1058.7956542969,22.337768554688,272.1259765625),
                        vector4(-584.70330810547,-1061.5911865234,22.337768554688,269.29135131836),
                    },
                    sellableItems = {
                        ["mojito"] = 25000,
                        ["daiquiri"] = 25000,
                        ["pizza"] = 30000,
                    }
                },
                isPhoneOnDuty = true,
            },
            {
                name = "Delivery Driver",
                description = "Delivers fresh produce and equipment to the store.",
                paycheck = 25000,
                jobType = "delivery",
                jobMetadata = {
                    vehicleSpawns = {
                        {vehicle = `mule`, position = vector4(-619.81976318359,-1062.5010986328,21.78173828125,277.79528808594)},
                        {vehicle = `mule`, position = vector4(-619.9384765625,-1058.7561035156,21.78173828125,269.29135131836)},
                        {vehicle = `mule`, position = vector4(-619.66156005859,-1055.1691894531,21.78173828125,266.45669555664)},
                        {vehicle = `mule`, position = vector4(-619.75384521484,-1051.6878662109,21.78173828125,272.1259765625)},
                        {vehicle = `mule`, position = vector4(-619.70111083984,-1047.771484375,21.78173828125,269.29135131836)},
                    },
                    locations = {
                        {
                            name = "Cat Cafe Supply",
                            position = vector3(2673.2578125, 3519.162109375, 52.712066650391),
                            itemsPerDelivery = {
                                {id = "mojito", amount = 3},
                                {id = "daiquiri", amount = 3},
                                {id = "pizza", amount = 5},
                                {id = "energy_drink", amount = 3},
                                {id = "protein_bar", amount = 3},
                                {id = "carrot", amount = 3},
                                {id = "beer", amount = 3},
                            }
                        },
                    }
                },
                isPhoneOnDuty = false,
            },
            {
                name = "Cleaner",
                description = "Ensures the facilies are clean and pleasant for the customers",
                paycheck = 25000,
                jobType = "cleaner",
                jobMetadata = {
                    groundPoints = {
                        vector3(-581.48461914062,-1060.6284179688,22.343675613403),
                        vector3(-583.40515136719,-1065.5562744141,22.344396591187),
                        vector3(-578.08178710938,-1066.4865722656,22.344268798828),
                        vector3(-576.88818359375,-1064.251953125,22.345748901367),
                        vector3(-576.08197021484,-1061.0629882812,22.344203948975),
                        vector3(-577.99151611328,-1060.0971679688,22.344184875488),
                        vector3(-581.50238037109,-1060.1334228516,22.344188690186),
                        vector3(-585.20794677734,-1064.6229248047,22.344186782837),
                        vector3(-584.76989746094,-1067.3538818359,22.344186782837),
                        vector3(-581.56610107422,-1068.0981445312,22.34418296814),
                        vector3(-576.02307128906,-1067.4132080078,22.344198226929),
                        vector3(-578.10150146484,-1056.2287597656,22.344194412231),
                        vector3(-579.79833984375,-1055.0968017578,22.344194412231),
                        vector3(-581.74395751953,-1053.6677246094,22.34726524353),
                        vector3(-583.955078125,-1053.3327636719,22.347269058228),
                        vector3(-586.16876220703,-1052.5264892578,22.344356536865),
                        vector3(-582.52368164062,-1050.6271972656,22.344200134277),
                        vector3(-578.43719482422,-1052.259765625,22.345880508423),
                        vector3(-579.83557128906,-1051.2062988281,22.347305297852),
                        vector3(-575.85876464844,-1052.552734375,22.339782714844),
                        vector3(-574.84783935547,-1050.8796386719,22.344192504883),
                        vector3(-572.74890136719,-1050.0091552734,22.344192504883),
                        vector3(-571.56555175781,-1054.8171386719,22.344192504883),
                        vector3(-577.36499023438,-1056.1405029297,22.347248077393),
                        vector3(-567.37866210938,-1049.8562011719,24.75758934021),
                        vector3(-567.73651123047,-1051.6984863281,24.75758934021),
                        vector3(-571.78869628906,-1050.9343261719,26.614023208618),
                        vector3(-572.14245605469,-1053.6198730469,26.614053726196),
                        vector3(-581.04321289062,-1063.0104980469,22.791404724121),
                        vector3(-583.75885009766,-1069.4255371094,22.990533828735),
                        vector3(-582.95770263672,-1049.5317382812,23.089210510254)
                    },
                    groundModels = {
                        `prop_rpemotes_soda01`,
                        `brum_cherryshake_vanilla`,
                        `bzzz_icecream_cherry`,
                        `v_ilev_a_tissue`
                    },
                    surfacePoints = {
                        vector3(-574.41790771484,-1059.8272705078,23.293302536011),
                        vector3(-574.41851806641,-1063.4543457031,23.293302536011),
                        vector3(-574.41973876953,-1067.0263671875,23.293302536011),
                        vector3(-583.11010742188,-1069.193359375,22.990528106689),
                        vector3(-579.14874267578,-1069.1254882812,22.990510940552),
                        vector3(-582.73126220703,-1049.8337402344,23.089086532593),
                        vector3(-575.27062988281,-1055.3801269531,22.790649414062),
                        vector3(-578.74151611328,-1051.1497802734,22.796617507935),
                        vector3(-579.85223388672,-1061.9506835938,22.791145324707),
                        vector3(-581.11114501953,-1063.5145263672,22.791801452637),
                        vector3(-579.5556640625,-1064.9195556641,22.792036056519),
                        vector3(-578.23400878906,-1063.4442138672,22.791891098022),
                        vector3(-586.82000732422,-1064.9801025391,23.324998855591),
                        vector3(-586.84533691406,-1066.9868164062,23.325239181519)
                    },
                    toiletPoints = {
                        {
                            scrub = vector4(-569.41979980469,-1052.017578125,22.337768554688,331.65353393555),
                            hands = vector4(-569.85491943359,-1051.4110107422,22.337768554688,76.535430908203),
                            liquidPoints = {
                                vector3(-569.46014404297,-1052.9301757812,22.344200134277),
                                vector3(-569.70324707031,-1051.4470214844,22.344200134277),
                            }
                        },
                        {
                            scrub = vector4(-569.43298339844,-1056.4747314453,22.337768554688,209.76377868652),
                            hands = vector4(-569.72308349609,-1056.9758300781,22.337768554688,93.543304443359),
                            liquidPoints = {
                                vector3(-569.3388671875,-1055.5604248047,22.344202041626),
                                vector3(-569.74896240234,-1056.9279785156,22.344202041626),
                            }
                        }
                    },
                    binPoints = {
                        vector4(-571.55603027344,-1051.0285644531,22.337768554688,280.62991333008),
                        vector4(-581.80218505859,-1050.6593017578,22.337768554688,303.30709838867),
                        vector4(-599.60437011719,-1067.1296386719,22.337768554688,87.874015808105),
                        vector4(-590.05712890625,-1068.0263671875,22.337768554688,96.377944946289),
                        vector4(-603.70550537109,-1062.7515869141,21.78173828125,201.25984191895),
                    },
                    binDeliveryPoint = vector3(-611.52526855469,-1049.1560058594,22.97802734375)
                },
                isPhoneOnDuty = false,
            },
        },
        items = {
            ["mojito"] = {"Mojito", 0.1},
            ["daiquiri"] = {"Daiquiri", 0.1},
            ["pizza"] = {"Pizza", 0.1},
        },
        menuPositions = {
            vector3(-583.31646728516,-1059.3564453125,22.344200134277),
            vector3(-583.41223144531,-1061.6921386719,22.344190597534),
        },
        doorAreaName = "catCafe",
    },
    ["Triads Restaurant"] = {
        interiorHash = 132354,
        jobMarker = vector3(-176.2469329834,305.70568847656,100.92317962646),
        ownerMarker = vector3(-177.5001373291,301.65252685547,99.92317962646),
        inventoryPositions = {
            vector3(-169.56471252441,305.06475830078,92.792184143066), -- Waiter Side
            vector3(-177.51350402832,305.93179321289,96.529999084473), -- Chef Side
            vector3(-173.4893951416,312.79840087891,97.00020202637), -- Delivery Point
        },
        jobs = {
            {
                name = "Manager",
                description = "In control of all the staff and ensures the smooth operation of day to day operations.",
                paycheck = 25000,
                jobType = "manager",
                jobMetadata = {},
                isPhoneOnDuty = false,
            },
            {
                name = "Waiter",
                description = "Handles orders and delivery of items to tables.",
                paycheck = 25000,
                jobType = "waiter",
                jobMetadata = {
                    cashRegisterPositions = {
                        vector4(-171.95603942871,295.01538085938,93.747314453125,269.29135131836),
                    },
                    sellableItems = {
                        ["noodles_box"] = 25000,
                        ["ecola"] = 15000,
                        ["sprunk"] = 15000,
                    }
                },
                isPhoneOnDuty = true,
            },
            {
                name = "Delivery Driver",
                description = "Delivers fresh produce and equipment to the store.",
                paycheck = 25000,
                jobType = "delivery",
                jobMetadata = {
                    vehicleSpawns = {
                        {vehicle = `mule`, position = vector4(-192.92308044434,306.0263671875,96.931884765625,90.708656311035)},
                        {vehicle = `mule`, position = vector4(-198.81758117676,302.58462524414,96.931884765625,0.0)},
                        {vehicle = `mule`, position = vector4(-205.47692871094,302.94067382812,96.931884765625,2.8346455097198)},
                        {vehicle = `mule`, position = vector4(-212.95384216309,303.20440673828,96.94873046875,5.6692910194397)},
                        {vehicle = `mule`, position = vector4(-212.9010925293,313.75384521484,96.931884765625,178.58267211914)},
                    },
                    locations = {
                        {
                            name = "Sprunk Warehouse",
                            position = vector3(2673.2578125, 3519.162109375, 52.712066650391),
                            itemsPerDelivery = {
                                {id = "noodles_box", amount = 5},
                                {id = "ecola", amount = 3},
                                {id = "sprunk", amount = 3},
                                {id = "energy_drink", amount = 3},
                                {id = "protein_bar", amount = 3},
                                {id = "carrot", amount = 3},
                                {id = "beer", amount = 3},
                            }
                        },
                    }
                },
                isPhoneOnDuty = false,
            },
            {
                name = "Cleaner",
                description = "Ensures the facilies are clean and pleasant for the customers",
                paycheck = 25000,
                jobType = "cleaner",
                jobMetadata = {
                    groundPoints = {
                        vector3(-164.64683532715,298.84848022461,93.762069702148),
                        vector3(-160.27711486816,299.37658691406,93.763076782227),
                        vector3(-157.55792236328,298.56207275391,93.762145996094),
                        vector3(-155.19424438477,298.43005371094,93.762359619141),
                        vector3(-155.25727844238,296.16418457031,93.762702941895),
                        vector3(-156.02062988281,293.53848266602,93.762619018555),
                        vector3(-156.71519470215,290.95819091797,93.763092041016),
                        vector3(-157.61506652832,288.83148193359,93.763450622559),
                        vector3(-160.21421813965,288.42495727539,93.763122558594),
                        vector3(-163.3009185791,288.45245361328,93.762573242188),
                        vector3(-165.33399963379,289.05447387695,93.762245178223),
                        vector3(-165.59848022461,291.19857788086,93.762191772461),
                        vector3(-163.88223266602,291.69485473633,93.762191772461),
                        vector3(-161.4213104248,291.75396728516,93.762275695801),
                        vector3(-158.90573120117,294.9963684082,93.762084960938),
                        vector3(-160.97554016113,294.82458496094,93.762084960938),
                        vector3(-165.2456817627,295.61209106445,93.762084960938),
                        vector3(-168.64189147949,295.40557861328,93.762084960938),
                        vector3(-168.13339233398,293.89801025391,93.762084960938),
                        vector3(-167.40419006348,291.744140625,93.762084960938),
                        vector3(-167.45788574219,289.57061767578,93.76212310791),
                        vector3(-169.8475189209,287.83828735352,93.76212310791),
                        vector3(-152.37245178223,289.22454833984,93.764228820801),
                        vector3(-151.83850097656,293.44677734375,93.763412475586),
                        vector3(-151.59712219238,296.09851074219,93.762901306152),
                        vector3(-152.68135070801,298.70703125,93.762336730957),
                        vector3(-167.93412780762,298.06695556641,98.892395019531),
                        vector3(-168.67001342773,292.59805297852,98.892395019531),
                        vector3(-162.4183807373,290.34725952148,98.892387390137),
                        vector3(-165.65744018555,292.29333496094,98.892387390137),
                        vector3(-154.47006225586,297.29626464844,98.898475646973)
                    },
                    groundModels = {
                        `prop_food_bs_tray_01`,
                        `prop_food_bs_tray_02`,
                        `prop_food_bs_tray_03`,
                        `v_ilev_a_tissue`
                    },
                    surfacePoints = {
                        vector3(-163.28076171875,293.95538330078,94.593505859375),
                        vector3(-160.09710693359,294.02581787109,94.59349822998),
                        vector3(-159.11390686035,295.61221313477,94.593505859375),
                        vector3(-155.4522857666,289.60552978516,94.593505859375),
                        vector3(-158.47598266602,287.70452880859,94.593589782715),
                        vector3(-161.6587677002,287.62609863281,94.593589782715),
                        vector3(-164.88084411621,287.66403198242,94.593597412109),
                        vector3(-150.91307067871,288.89260864258,94.593589782715),
                        vector3(-150.89659118652,292.03018188477,94.593597412109),
                        vector3(-150.88619995117,295.16390991211,94.593597412109),
                        vector3(-150.9231262207,298.49353027344,94.593589782715),
                        vector3(-170.18064880371,297.55120849609,99.725807189941),
                        vector3(-157.49136352539,291.49667358398,99.725074768066),
                    },
                    toiletPoints = {
                        {
                            scrub = vector4(-162.23736572266,301.02856445312,98.886474609375,96.377944946289),
                            hands = vector4(-160.3384552002,302.00439453125,98.886474609375,266.45669555664),
                            liquidPoints = {
                                vector3(-160.71537780762,301.16659545898,98.892433166504),
                                vector3(-162.21853637695,302.27301025391,98.892433166504),
                            }
                        },
                        {
                            scrub = vector4(-156.31648254395,300.98901367188,98.886474609375,260.78741455078),
                            hands = vector4(-158.17582702637,301.96484375,98.886474609375,73.700790405273),
                            liquidPoints = {
                                vector3(-156.72793579102,302.49035644531,98.892425537109),
                                vector3(-157.98014831543,300.96569824219,98.892425537109),
                            }
                        }
                    },
                    binPoints = {
                        vector4(-167.97361755371,281.82858276367,93.747314453125,170.07873535156),
                        vector4(-157.27911376953,284.66372680664,93.76416015625,345.82678222656),
                        vector4(-175.85934448242,297.28350830078,93.747314453125,314.64566040039),
                        vector4(-175.75384521484,314.10989379883,97.9765625,0.0),
                        vector4(-168.64614868164,305.72308349609,93.747314453125,2.8346455097198),
                    },
                    binDeliveryPoint = vector3(-184.5890045166,322.06155395508,98.01025390625)
                },
                isPhoneOnDuty = false,
            },
        },
        items = {
            ["noodles_box"] = {"Noodles Box", 0.2},
            ["ecola"] = {"eCola", 0.1},
            ["sprunk"] = {"Sprunk", 0.1},
        },
        menuPositions = {
            vector3(-170.38662719727,295.02487182617,93.762069702148),
        },
        doorAreaName = "triadsRestaurant",
    }
}

local sharedBusinessEffectItems = {
    ["energy_drink"] = {"Energy Drink", 0.1},
    ["protein_bar"] = {"Protein Bar", 0.1},
    ["carrot"] = {"Carrot", 0.1},
    ["beer"] = {"Beer", 0.1},
}
local sharedBusinessSellablePrices = {
    ["energy_drink"] = 20000,
    ["protein_bar"] = 25000,
    ["carrot"] = 25000,
    ["beer"] = 20000,
}
for _, locationInfo in pairs(cfg.locations) do
    for itemId, itemDef in pairs(sharedBusinessEffectItems) do
        locationInfo.items[itemId] = itemDef
    end
    for _, jobInfo in pairs(locationInfo.jobs) do
        if jobInfo.jobType == "waiter" and jobInfo.jobMetadata.sellableItems then
            for itemId, price in pairs(sharedBusinessSellablePrices) do
                jobInfo.jobMetadata.sellableItems[itemId] = price
            end
        end
    end
end

-- Unused: businesses now use cfg_food pre-made items
cfg.drinksMachine = {}
cfg.hotDrinksMachine = {}
cfg.milkshakeMachine = {}
cfg.icecreamMachine = {}
cfg.cupcakesMachine = {}
cfg.riceStation = {}
cfg.chineseCookingStation = {}

cfg.sellableItemToEffect = {
    -- Burger Shot (cfg_food)
    ["burger"] = {type = "health", amount = 25, animType = "food"},
    ["hotdog"] = {type = "health", amount = 25, animType = "food"},
    ["ecola"] = {type = "sprint", duration = 30, animType = "drink"},
    ["sprunk"] = {type = "sprint", duration = 20, animType = "drink"},
    -- Cat Cafe (cfg_food) — mojito/daiquiri: thirst only (cfg_food), no business effect
    ["pizza"] = {type = "health", amount = 25, animType = "food"},
    -- Triads (cfg_food)
    ["noodles_box"] = {type = "health", amount = 25, animType = "food"},
    -- All businesses
    ["energy_drink"] = {type = "sprint", duration = 40, animType = "edrink"},
    ["protein_bar"] = {type = "storage", amount = 20, duration = 300, animType = "egobar"},
    ["carrot"] = {type = "night_vision", duration = 60, animType = "carrot"},
    ["beer"] = {type = "punch", duration = 60, animType = "beer2"},
}

for businessName, locationInfo in pairs(cfg.locations) do
    for _, jobInfo in pairs(locationInfo.jobs) do
        jobInfo.group = businessName .. " " .. jobInfo.name
    end
end

for businessName, locationInfo in pairs(cfg.locations) do
    for _, jobInfo in pairs(locationInfo.jobs) do
        if jobInfo.jobType == "waiter" then
            for localItemId in pairs(jobInfo.jobMetadata.sellableItems) do
                assert(locationInfo.items[localItemId], string.format("Sellable item %s in business %s does not exist", localItemId, businessName))
            end
        elseif jobInfo.jobType == "delivery" then
            for _, deliveryLocationInfo in pairs(jobInfo.jobMetadata.locations) do
                for _, deliveryItemInfo in pairs(deliveryLocationInfo.itemsPerDelivery) do
                    assert(locationInfo.items[deliveryItemInfo.id], string.format("Delivery item %s in business %s does not exist", deliveryItemInfo.id, businessName))
                end
            end
        end
    end
end

return cfg