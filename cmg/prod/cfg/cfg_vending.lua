--[[
    BEGINNER GUIDE — Vending
    ========================

    File: cmg/prod/cfg/cfg_vending.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * ~r~You don
      * Press {E} to buy something from the vending machine
      * Press {E} to get a coffee from the vending machine
      * Press {E} to get a water cup
      * Press {E} to buy a pack of cigarettes

]]
-- cfg/cfg_vending.lua - Vending machine config (merged from vending_source)

local cfg = {}

cfg.renderDistance = 8.0
cfg.defaultInteractionDistance = 2.0
cfg.blips = false
cfg.sounds = true

cfg.audiosVolumes = {
    buttonClicked = 1.0,
    coffeMachine = 0.5,
    snackDoorPickup = 0.2,
    snackDroppingItem = 0.1,
    waterPouring = 0.1,
    sodaBottleDropped = 0.1,
    snackSprings = 0.1,
}

cfg.translations = {
    vending_menu_helper = "Please enter the code of a product.\n%s\n~INPUT_SELECT_WEAPON~ Switch camera\n~INPUT_CELLPHONE_SELECT~ Confirm selection\n~INPUT_CELLPHONE_CANCEL~ Exit",
    selected_product_price = "%s - ~g~%s$~w~ \n",
    invalid_product = "~r~Invalid product.~w~",
    selection_not_valid = "~r~The code that you entered is not valid, please enter a valid stand code.",
    not_enough_money = "~r~You don't have enough money to buy this product.",
    already_used = "~r~The vending machine is being used by another player.",
    normal_int_vanilla = "Press {E} to buy something from the vending machine",
    coffee_int_vanilla = "Press {E} to get a coffee from the vending machine",
    water_int_vanilla = "Press {E} to get a water cup",
    cigs_int_vanilla = "Press {E} to buy a pack of cigarettes",
}

cfg.items = {
    coffee = { price = 2000 },
    water = { price = 0, ignoreGive = true },
    chips_cheese = { label = "Chips: Big Cheese", model = "mxc_vend_prop_item_chips1", price = 2000 },
    chips_paprika = { label = "Chips: Paprika", model = "mxc_vend_prop_item_chips2", price = 2000 },
    chips_ribs = { label = "Chips: Sticky Ribs", model = "mxc_vend_prop_item_chips3", price = 2000 },
    chips_salt = { label = "Chips: Salt & Sauce", model = "mxc_vend_prop_item_chips4", price = 2000 },
    chips_supersalt = { label = "Chips: Super Salt", model = "mxc_vend_prop_item_chips5", price = 2000 },
    chips_habanero = { label = "Chips: Habanero", model = "mxc_vend_prop_item_chips6", price = 2000 },
    chocolate_meteorite = { label = "Chocolate: Meteorite", model = "mxc_vend_prop_item_chocolate1", price = 2000 },
    chocolate_captain = { label = "Chocolate: Captain's Log", model = "mxc_vend_prop_item_chocolate2", price = 2000 },
    condom = { label = "Condom: Soth Lags", model = "mxc_vend_prop_item_preservatives", price = 100, zoffset = -0.02 },
    candy_zebra = { label = "Candy: Zebrabar", model = "mxc_vend_prop_item_candybar1", price = 2000 },
    candy_psqs = { label = "Candy: P's & Q's", model = "mxc_vend_prop_item_candybar2", price = 2000 },
    medicine_laxmax = { label = "Medicine: Lax to the Max", model = "mxc_vend_prop_item_medical1", price = 2000 },
    medicine_alcopatch = { label = "Medicine: AlcoPatch", model = "mxc_vend_prop_item_medical2", price = 2000 },
    medicine_mollis = { label = "Medicine: Mollis", model = "mxc_vend_prop_item_medical3", price = 2000 },
    medicine_betta = { label = "Medicine: Betta", model = "mxc_vend_prop_item_medical4", price = 2000 },
    gum_peppermint = { label = "Gum: Peppermint", model = "mxc_vend_prop_item_gum1", price = 2000 },
    gum_cinnamon = { label = "Gum: Cinnamon", model = "mxc_vend_prop_item_gum2", price = 2000 },
    gum_spearmint = { label = "Gum: Spearmint", model = "mxc_vend_prop_item_gum3", price = 2000 },
    bottle_cola = { label = "Cola", model = "mxc_vend_prop_item_bottle1", price = 2000 },
    bottle_junk = { label = "Junk", model = "mxc_vend_prop_item_bottle2", price = 2000 },
    bottle_orang = { label = "Orang Tang", model = "mxc_vend_prop_item_bottle3", price = 2000 },
    bottle_tonic = { label = "Tonic", model = "mxc_vend_prop_item_bottle4", price = 2000 },
    bottle_water = { label = "Water", model = "mxc_vend_prop_item_bottle5", price = 2000 },
    bottle_sprunk = { label = "Sprunk", model = "mxc_vend_prop_item_bottle6", price = 2000 },
    can_cola = { label = "Cola Can", model = "mxc_vend_prop_item_cansoda1", price = 2000 },
    can_orang = { label = "Orang Tang Can", model = "mxc_vend_prop_item_cansoda2", price = 2000 },
    can_junk = { label = "Junk Can", model = "mxc_vend_prop_item_cansoda3", price = 2000 },
    can_sprunk = { label = "Sprunk Can", model = "mxc_vend_prop_item_cansoda4", price = 2000 },
    can_logger = { label = "Logger Can", model = "mxc_vend_prop_item_canbeer1", price = 2000 },
    can_blarneys = { label = "Blarneys Can", model = "mxc_vend_prop_item_canbeer2", price = 2000 },
    can_hoplivion = { label = "Hoplivion Can", model = "mxc_vend_prop_item_canbeer3", price = 2000 },
    can_cerbeza = { label = "Cerbeza Can", model = "mxc_vend_prop_item_canbeer4", price = 2000 },
    cigs_redwood = { label = "Cigarettes: Redwood", model = "v_ret_ml_cigs", price = 2000 },
    cigs_redwood2 = { label = "Cigarettes: Redwood2", model = "v_ret_ml_cigs2", price = 2000 },
    cigs_debonaireb = { label = "Cigarettes: Debonaire Blue", model = "v_ret_ml_cigs3", price = 2000 },
    cigs_debonaireg = { label = "Cigarettes: Debonaire Green", model = "v_ret_ml_cigs4", price = 2000 },
    cigs_cardiaque = { label = "Cigarettes: Cardiaque", model = "v_ret_ml_cigs5", price = 2000 },
    cigs_69brand = { label = "Cigarettes: 69Brand", model = "v_ret_ml_cigs6", price = 2000 },
    cigs_cok = { label = "Cigarettes: CoK", model = "mxc_vend_prop_item_cigs1", price = 2000 },
    cigs_estancia = { label = "Cigars: Estancia", model = "prop_cigar_pack_01", price = 2000 },
    -- svapo (parent: snack)
    svapo_evape_box = { label = "E-Vape Box", model = "mxc_smoking_prop_evapebox", price = 2000 },
    svapo_evape2_box = { label = "E-Vape 2 Box", model = "mxc_smoking_prop_evape2box", price = 2000 },
    svapo_smoke_box = { label = "Smoke Box", model = "mxc_smoking_prop_smokebox", price = 2000 },
    svapo_vaporglow_box = { label = "Vaporglow Box", model = "mxc_smoking_prop_vaporglowbox", price = 2000 },
    svapo_sumo_box = { label = "Sumo Box", model = "mxc_smoking_prop_sumobox", price = 2000 },
    svapo_smoke1a = { label = "Smoke 1", model = "mxc_smoking_prop_smoke_1a", price = 2000 },
    svapo_smoke1b = { label = "Smoke 1", model = "mxc_smoking_prop_smoke_1b", price = 2000 },
    svapo_smoke1c = { label = "Smoke 1", model = "mxc_smoking_prop_smoke_1c", price = 2000 },
    svapo_smoke1d = { label = "Smoke 1", model = "mxc_smoking_prop_smoke_1d", price = 2000 },
    svapo_evape1a = { label = "E-Vape 1", model = "mxc_smoking_prop_evape_1a", price = 2000 },
    svapo_evape1b = { label = "E-Vape 1", model = "mxc_smoking_prop_evape_1b", price = 2000 },
    svapo_evape1c = { label = "E-Vape 1", model = "mxc_smoking_prop_evape_1c", price = 2000 },
    svapo_evape1d = { label = "E-Vape 1", model = "mxc_smoking_prop_evape_1d", price = 2000 },
    svapo_vaporglow1a = { label = "Vaporglow 2", model = "mxc_smoking_prop_vaporglow_1a", price = 2000 },
    svapo_vaporglow1b = { label = "Vaporglow 1", model = "mxc_smoking_prop_vaporglow_1b", price = 2000 },
    svapo_vaporglow1c = { label = "Vaporglow 1", model = "mxc_smoking_prop_vaporglow_1c", price = 2000 },
    svapo_vaporglow1d = { label = "Vaporglow 1", model = "mxc_smoking_prop_vaporglow_1d", price = 2000 },
}

cfg.placeVendings = {
    -- prop_vend_snak_01 = { vec4(373.45056152344, -1043.7230224609, 28.296752929688, 107.71653747559) },
    -- mxc_vend_prop_svapo_01 = { vec4(-497.4405, 277.5, 82.3123, 353.80) },
}

cfg.overrideExhibition = {
    { name = "snack", coords = vec3(459.8792, -992.0368, 23.9149), radius = 2.0, exhibition = { a1 = "chips_ribs", a2 = "chips_paprika", a3 = "chips_paprika", a4 = "chips_paprika", b1 = "chips_paprika", b2 = "chips_paprika", b3 = "chips_paprika", b4 = "chips_ribs", c1 = "chips_paprika", c2 = "chips_paprika", c3 = "chips_paprika", c4 = "chips_paprika", d1 = "chips_paprika", d2 = "chips_paprika", d3 = "chips_paprika", d4 = "chips_paprika", e1 = "chips_paprika", e2 = "chips_paprika", e3 = "chips_paprika", e4 = "chips_paprika" } },
}

-- Vendings data (functions attached by client)
cfg.vendings = {
    snack = {
        type = "display_stand",
        models = { `prop_vend_snak_01` },
        interaction = { vanilla = { notify = "normal_int_vanilla", distance = 0.35 } },
        blip = { sprite = 772, color = 0, size = 0.5 },
        exhibition = { a1 = "chips_cheese", a2 = "chips_paprika", a3 = "chips_ribs", a4 = "chips_salt", b1 = "chips_supersalt", b2 = "chips_habanero", b3 = "chips_cheese", b4 = "chips_paprika", c1 = "chocolate_meteorite", c2 = "chocolate_captain", c3 = "condom", c4 = "candy_zebra", d1 = "candy_psqs", d2 = "gum_peppermint", d3 = "gum_cinnamon", d4 = "gum_spearmint", e1 = "medicine_laxmax", e2 = "medicine_alcopatch", e3 = "medicine_mollis", e4 = "medicine_betta" },
        stands = { a1 = "Snak_Springs_A1", a2 = "Snak_Springs_A2", a3 = "Snak_Springs_A3", a4 = "Snak_Springs_A4", b1 = "Snak_Springs_B1", b2 = "Snak_Springs_B2", b3 = "Snak_Springs_B3", b4 = "Snak_Springs_B4", c1 = "Snak_Springs_C1", c2 = "Snak_Springs_C2", c3 = "Snak_Springs_C3", c4 = "Snak_Springs_C4", d1 = "Snak_Springs_D1", d2 = "Snak_Springs_D2", d3 = "Snak_Springs_D3", d4 = "Snak_Springs_D4", e1 = "Snak_Springs_E1", e2 = "Snak_Springs_E2", e3 = "Snak_Springs_E3", e4 = "Snak_Springs_E4" },
        slots = { [1] = vec4(0.01, -0.19, 0.03, -9.5), [2] = vec4(0.01, -0.08, 0.03, -9.5), [3] = vec4(0.01, -0.01, 0.03, -9.5) },
        views = { products = { offset = vec3(0.0, -1.2, 0.25), fov = 65 }, code = { offset = vec3(0.4, -0.8, 0.5), fov = 35 } },
        inputs = { ["a"] = 34, ["b"] = 29, ["c"] = 26, ["d"] = 30, ["e"] = 38, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164 },
    },
    --Cola
    soda = {
        type = "display_stand",
        sodaArm = "mxc_vend_prop_soda_shelf",
        models = { `prop_vend_soda_01` },
        interaction = { vanilla = { notify = "normal_int_vanilla", distance = 1.0 } },
        blip = { sprite = 827, color = 1, size = 0.5 },
        exhibition = { a1 = "can_cola", a2 = "can_cola", a3 = "can_cola", a4 = "can_cola", a5 = "can_cola", a6 = "can_cola", b1 = "can_cola", b2 = "can_cola", b3 = "can_cola", b4 = "can_cola", b5 = "can_cola", b6 = "can_cola", c1 = "can_cola", c2 = "can_cola", c3 = "can_cola", c4 = "can_cola", c5 = "can_cola", c6 = "can_cola", d1 = "can_cola", d2 = "can_cola", d3 = "can_cola", d4 = "can_cola", d5 = "can_cola", d6 = "can_cola" },
        stands = { a1 = "Soda_Door_A1_r", a2 = "Soda_Door_A2_r", a3 = "Soda_Door_A3_r", a4 = "Soda_Door_A4_r", a5 = "Soda_Door_A5_r", a6 = "Soda_Door_A6_r", b1 = "Soda_Door_B1_r", b2 = "Soda_Door_B2_r", b3 = "Soda_Door_B3_r", b4 = "Soda_Door_B4_r", b5 = "Soda_Door_B5_r", b6 = "Soda_Door_B6_r", c1 = "Soda_Door_C1_r", c2 = "Soda_Door_C2_r", c3 = "Soda_Door_C3_r", c4 = "Soda_Door_C4_r", c5 = "Soda_Door_C5_r", c6 = "Soda_Door_C6_r", d1 = "Soda_Door_D1_r", d2 = "Soda_Door_D2_r", d3 = "Soda_Door_D3_r", d4 = "Soda_Door_D4_r", d5 = "Soda_Door_D5_r", d6 = "Soda_Door_D6_r" },
        slots = { [1] = vec4(-0.056054, 0.01949, 0.066228, 5.78169), [2] = vec4(-0.056054, 0.102003, 0.071228, 5.78169), [3] = vec4(-0.056054, 0.183451, 0.077228, 5.78169) },
        views = { products = { offset = vec3(0.0, -1.2, 0.25), fov = 65 }, code = { offset = vec3(0.4, -0.8, 0.5), fov = 35 } },
        inputs = { ["a"] = 34, ["b"] = 29, ["c"] = 26, ["d"] = 30, ["e"] = 38, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164 },
    },
    --Sprunk
    soda_2 = {
        parent = "soda",
        type = "display_stand",
        sodaArm = "mxc_vend_prop_soda_shelf2",
        models = { `prop_vend_soda_02` },
        interaction = { vanilla = { notify = "normal_int_vanilla", distance = 1.0 } },
        blip = { sprite = 827, color = 2, size = 0.5 },
        exhibition = { a1 = "can_sprunk", a2 = "can_sprunk", a3 = "can_sprunk", a4 = "can_sprunk", a5 = "can_sprunk", a6 = "can_sprunk", b1 = "can_sprunk", b2 = "can_sprunk", b3 = "can_sprunk", b4 = "can_sprunk", b5 = "can_sprunk", b6 = "can_sprunk", c1 = "can_sprunk", c2 = "can_sprunk", c3 = "can_sprunk", c4 = "can_sprunk", c5 = "can_sprunk", c6 = "can_sprunk", d1 = "can_sprunk", d2 = "can_sprunk", d3 = "can_sprunk", d4 = "can_sprunk", d5 = "can_sprunk", d6 = "can_sprunk" },
        stands = { a1 = "Soda_Door_A1_r", a2 = "Soda_Door_A2_r", a3 = "Soda_Door_A3_r", a4 = "Soda_Door_A4_r", a5 = "Soda_Door_A5_r", a6 = "Soda_Door_A6_r", b1 = "Soda_Door_B1_r", b2 = "Soda_Door_B2_r", b3 = "Soda_Door_B3_r", b4 = "Soda_Door_B4_r", b5 = "Soda_Door_B5_r", b6 = "Soda_Door_B6_r", c1 = "Soda_Door_C1_r", c2 = "Soda_Door_C2_r", c3 = "Soda_Door_C3_r", c4 = "Soda_Door_C4_r", c5 = "Soda_Door_C5_r", c6 = "Soda_Door_C6_r", d1 = "Soda_Door_D1_r", d2 = "Soda_Door_D2_r", d3 = "Soda_Door_D3_r", d4 = "Soda_Door_D4_r", d5 = "Soda_Door_D5_r", d6 = "Soda_Door_D6_r" },
        slots = { [1] = vec4(-0.056054, 0.01949, 0.066228, 5.78169), [2] = vec4(-0.056054, 0.102003, 0.071228, 5.78169), [3] = vec4(-0.056054, 0.183451, 0.077228, 5.78169) },
        views = { products = { offset = vec3(0.0, -1.2, 0.25), fov = 65 }, code = { offset = vec3(0.4, -0.8, 0.5), fov = 35 } },
        inputs = { ["a"] = 34, ["b"] = 29, ["c"] = 26, ["d"] = 30, ["e"] = 38, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164 },
    },
    coffee = {
        type = "item",
        item = "coffee",
        models = { `prop_vend_coffe_01` },
        interaction = { vanilla = { notify = "coffee_int_vanilla", distance = 1.1 } },
        blip = { sprite = 89, color = 31, size = 0.5 },
    },
    water = {
        type = "item",
        item = "water",
        models = { `prop_watercooler` },
        interaction = { vanilla = { notify = "water_int_vanilla", distance = 1.2 } },
        blip = { sprite = 499, color = 3, size = 0.5 },
    },
    cigarettes = {
        type = "display_stand",
        models = { `prop_vend_fags_01` },
        interaction = { vanilla = { notify = "cigs_int_vanilla", distance = 0.4 } },
        blip = { sprite = 205, color = 22, size = 0.5 },
        exhibition = { a1 = "cigs_redwood", a2 = "cigs_redwood2", a3 = "cigs_estancia", a4 = "cigs_69brand", a5 = "cigs_debonaireb", a6 = "cigs_debonaireg", b1 = "cigs_cardiaque", b2 = "cigs_cok" },
        startAnimXOffset = { a1 = -0.65, a2 = -0.60, a3 = -0.55, a4 = -0.50, a5 = -0.45, a6 = -0.40, b1 = -0.35, b2 = -0.3 },
        views = { products = { offset = vec3(0.0, -0.6, 0.33), fov = 35 }, code = { offset = vec3(0.18, -0.6, 0.32), fov = 25 } },
        inputs = { ["a"] = 34, ["b"] = 29, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159 },
    },
    svapo = {
        parent = "snack",
        models = { `mxc_vend_prop_svapo_01` },
        blip = { sprite = 772, color = 0, size = 0.5 },
        exhibition = { a1 = "svapo_evape_box", a2 = "svapo_evape2_box", a3 = "svapo_smoke_box", a4 = "svapo_vaporglow_box", b1 = "svapo_smoke1a", b2 = "svapo_smoke1b", b3 = "svapo_smoke1c", b4 = "svapo_smoke1d", c1 = "svapo_evape1a", c2 = "svapo_evape1b", c3 = "svapo_evape1c", c4 = "svapo_evape1d", d1 = "svapo_vaporglow1a", d2 = "svapo_vaporglow1b", d3 = "svapo_vaporglow1c", d4 = "svapo_vaporglow1d", e1 = "svapo_sumo_box", e2 = "svapo_sumo_box", e3 = "svapo_sumo_box", e4 = "svapo_sumo_box" },
    },
}

return cfg
