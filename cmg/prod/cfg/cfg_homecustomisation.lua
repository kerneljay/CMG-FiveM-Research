--[[
    BEGINNER GUIDE — Homecustomisation
    ==================================

    File: cmg/prod/cfg/cfg_homecustomisation.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
local cfg = {}

cfg.placeables = {
    -- Plants
    {"Pot Plant 1", `v_corp_potplant1`, 5000},
    {"Pot Plant 2", `v_res_fa_plant01`, 5000},
    {"Tongue Plant", `v_res_mplanttongue`, 5000},
    {"Rubber Plant", `v_res_rubberplant`, 5000},
    {"Spike Plant", `v_res_tre_plant`, 5000},
    {"Dead Plant", `v_ret_gc_plant1`, 5000},
    {"Jewel Plant 1", `p_int_jewel_plant_01`, 5000},
    {"Jewel Plant 2", `p_int_jewel_plant_02`, 5000},
    {"Bush Plant", `prop_plant_int_02b`, 5000},
    -- Flowers
    {"Flower 1", `v_res_fh_flowersa`, 2500},
    {"Flower 2", `v_res_mflowers`, 2500},
    {"Flower 3", `v_ret_flowers`, 2500},
    {"Flower 4", `v_ret_j_flowerdisp`, 2500},
    {"Flower 5", `v_ret_j_flowerdisp_white`, 2500},
    {"Flower 6", `v_ret_ps_flowers_01`, 2500},
    {"Flower 7", `v_ret_ps_flowers_02`, 2500},
    {"Flower 8", `apa_mp_h_acc_vase_flowers_01`, 2500},
    {"Flower 9", `apa_mp_h_acc_vase_flowers_02`, 2500},
    {"Flower 10", `apa_mp_h_acc_vase_flowers_04`, 2500},
    -- Drugs
    {"Drug Box 1", `prop_drug_package`, 7500},
    {"Drug Box 2", `hei_prop_hei_drug_pack_01a`, 7500},
    {"Drug Package 1", `prop_drug_package_02`, 7500},
    {"Drug Package 2", `hei_prop_hei_drug_pack_02`, 7500},
    {"Needle", `v_61_bed1_mesh_drugstuff`, 7500},
    {"Medical Bottle", `prop_drug_bottle`, 7500},
    {"Bunsen Burner", `prop_drug_burner`, 7500},
    {"Drug Pile 1", `ex_office_swag_drugbag2`, 7500},
    {"Drug Pile 2", `ex_office_swag_drugbags`, 7500},
    {"Pills Bottle", `ng_proc_drug01a002`, 7500},
    -- Money
    {"Money Bag 1", `prop_money_bag_01`, 15000},
    {"Money Bag 2", `ch_prop_ch_moneybag_01a`, 15000},
    {"Money Counter", `bkr_prop_money_counter`, 15000},
    {"Money Stack 1", `bkr_prop_money_sorted_01`, 15000},
    {"Money Stack 2", `h4_prop_h4_cash_bon_01a`, 15000},
    {"Packed Money", `bkr_prop_moneypack_01a`, 15000},
    {"Money Container", `h4_prop_h4_cash_bag_01a`, 15000},
    {"Gold Bars", `h4_prop_h4_gold_stack_01a`, 15000},
    {"Scrunched Money", `bkr_prop_scrunched_moneypage`, 15000},
    {"Poker Bucket", `bkr_prop_money_pokerbucket`, 15000},
    -- Chairs
    {"Corporate Chair", `v_corp_bk_chair1`, 10000},
    {"Sofa Chair", `v_corp_bk_chair2`, 10000},
    {"Lazy Chair", `v_corp_lazychair`, 10000},
    {"Office Chair", `v_corp_offchairfd`, 10000},
    {"Side Chair", `v_corp_sidechair`, 10000},
    {"Broken Chair", `v_corp_sidechairfd`, 10000},
    {"Hairdressers Chair", `v_ilev_hd_chair`, 10000},
    {"Plastic Chair", `v_ilev_chair02_ped`, 10000},
    {"Arm Chair", `v_res_d_armchair`, 10000},
    {"High Chair", `v_res_d_highchair`, 10000},
    -- TVs
    {"PC Monitor", `prop_monitor_01b`, 250000},
    {"Flat TV 1", `prop_tv_flat_01`, 250000},
    {"Flat TV 2", `sm_prop_smug_tv_flat_01`, 250000},
    {"Flat TV 3", `prop_tv_flat_02b`, 250000},
    {"Flat TV 4", `prop_tv_flat_03b`, 250000},
    {"TV Unit", `apa_mp_h_str_avunits_04`, 250000},
    {"Plasma TV", `i_ilev_mm_screen2_vl`, 250000},
    {"Box TV 1", `prop_tv_02`, 250000},
    {"Box TV 2", `prop_tv_03`, 250000},
    -- CCTVs
    {"Fixed Camera 1", `prop_cs_cctv`, 50000},
    {"Fixed Camera 2", `p_cctv_s`, 50000},
    {"Fixed Camera 3", `prop_cctv_cam_01a`, 50000},
    {"Fixed Camera 4", `prop_cctv_cam_01b`, 50000},
    {"Fixed Camera 5", `prop_cctv_cam_02a`, 50000},
    {"Fixed Camera 6", `prop_cctv_cam_03a`, 50000},
    {"Rotatable Camera 1", `prop_cctv_cam_04a`, 50000},
    {"Rotatable Camera 2", `prop_cctv_cam_04b`, 50000},
    {"Rotatable Camera 3", `prop_cctv_cam_04c`, 50000},
    {"Rotatable Camera 4", `prop_cctv_cam_07a`, 50000},
    -- Bathroom
    {"Toilet 1", `prop_ld_toilet_01`, 10000},
    {"Toilet 2", `prop_toilet_02`, 10000},
    {"Shampoo", `prop_toilet_shamp_02`, 2500},
    {"Soap 1", `prop_toilet_soap_03`, 2500},
    {"Soap 2", `prop_toilet_soap_04`, 2500},
    {"Toilet Roll 1", `prop_toilet_roll_02`, 5000},
    {"Toilet Roll 2", `prop_toilet_roll_05`, 5000},
    {"Toilet Brush", `prop_toilet_brush_01`, 5000},
    -- Kitchen
    {"Food Plate 1", `prop_cs_plate_01`, 2500},
    {"Food Plate 2", `prop_plate_02`, 2500},
    {"Food Plate 3", `prop_plate_03`, 2500},
    {"Empty Plate 1", `v_ret_fh_plate1`, 2500},
    {"Empty Plate 2", `v_res_mplatelrg`, 2500},
    {"Plate Warmer", `prop_plate_warmer`, 5000},
    {"Kitchen Stool", `v_ilev_fh_kitchenstool`, 10000},
    {"Fork", `prop_cs_fork`, 2500},
    {"Knife", `prop_cs_bowie_knife`, 2500},
    {"Knife Block", `v_res_mknifeblock`, 2500},
    -- Bedroom
    {"Cushion", `v_ilev_m_sofacushion`, 5000},
    {"Sock 1", `prop_rolled_sock_02`, 2500},
    {"Sock 2", `prop_rolled_sock_01`, 2500},
    {"Bed 1", `v_res_msonbed_s`, 10000},
    {"Bed 2", `p_mbbed_s`, 10000},
    {"Lewze's Fortress of Dreams", `p_v_res_tt_bed_s`, 10000},
    {"Bed 4", `p_lestersbed_s`, 10000},
    {"Bedside Book", `v_ilev_mp_bedsidebook`, 2500},
    {"Book 1", `prop_cs_book_01`, 2500},
    {"Book 2", `prop_cs_stock_book`, 2500},
    {"Lamp 1", `hei_prop_hei_bnk_lamp_01`, 5000},
    {"Lamp 2", `v_ilev_fh_lampa_on`, 5000},
}

cfg.tvScriptRenderTargetTextures = {
    [`prop_monitor_01b`] = "script_rt_cmgtv2",
    [`prop_tv_flat_01`] = "script_rt_cmgtv5",
    [`sm_prop_smug_tv_flat_01`] = "script_rt_cmgtv8",
    [`prop_tv_flat_02b`] = "script_rt_cmgtv6",
    [`prop_tv_flat_03b`] = "script_rt_cmgtv7",
    [`apa_mp_h_str_avunits_04`] = "script_rt_cmgtv1",
    [`v_ilev_mm_screen2`] = "script_rt_cmgtv9",
    [`prop_tv_02`] = "script_rt_cmgtv3",
    [`prop_tv_03`] = "script_rt_cmgtv4",
    --[`prop_cs_tv_stand`] = "script_rt_cmgtv4"
}

cfg.cctvLookup = {
    [`prop_cs_cctv`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 180.0)
    },
    [`p_cctv_s`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 180.0)
    },
    [`prop_cctv_cam_01a`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 210.0)
    },
    [`prop_cctv_cam_01b`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 150.0)
    },
    [`prop_cctv_cam_02a`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 210.0)
    },
    [`prop_cctv_cam_03a`] = {
        type = "fixed",
        rotation = vector3(0.0, 0.0, 120.0)
    },
    [`prop_cctv_cam_04a`] = {
        type = "circular",
        offset = vector3(0.0, 0.0, 0.8)
    },
    [`prop_cctv_cam_04b`] = {
        type = "circular",
        offset = vector3(0.0, 0.0, 0.8)
    },
    [`prop_cctv_cam_04c`] = {
        type = "circular",
    },
    [`prop_cctv_cam_07a`] = {
        type = "circular",
    }
}

return cfg