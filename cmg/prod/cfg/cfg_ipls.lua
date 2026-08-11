--[[
    LEVEL 1 BEGINNER GUIDE — Ipls
    ==================================

    File: cmg/prod/cfg/cfg_ipls.lua
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
---@type IplsConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.alwaysLoadedIplNames = {
    "Carwash_with_spinners",
	"v_tunnel_hole",
	"bkr_bi_hw1_13_int",
	"apa_v_mp_h_08_a",
	"apa_v_mp_h_08_c",
	"apa_v_mp_h_08_b",
	"ex_sm_15_office_02b",
	"ex_dt1_02_office_01a",
	"FruitBB",
	"sc1_01_newbill",
	"hw1_02_newbill",
	"hw1_emissive_newbill",
	"sc1_14_newbill",
	"dt1_17_newbill",
	"v_tunnel_hole",
	"CanyonRvrShallow",
	"bh1_47_joshhse_unburnt",
	"bh1_47_joshhse_unburnt_lod",
	"cs3_05_water_grp1",
	"cs3_05_water_grp1_lod",
	"cs3_05_water_grp2",
	"cs3_05_water_grp2_lod",
	"canyonriver01",
	"canyonriver01_lod",
	"cs5_roads_ronoilgraffiti",
	"gr_case0_bunkerclosed",
	"gr_case1_bunkerclosed",
	"gr_case2_bunkerclosed",
	"gr_case3_bunkerclosed",
	"gr_case4_bunkerclosed",
	"gr_case5_bunkerclosed",
	"gr_case6_bunkerclosed",
	"gr_case7_bunkerclosed",
	"gr_case9_bunkerclosed",
	"gr_case10_bunkerclosed",
	"gr_case11_bunkerclosed",
	"xm_hatch_closed",
	"xm_hatches_terrain",
	"xm_hatches_terrain_lod",
}

cfg.nearbyLocations = {
	{
		position = vector3(-813.35260009766,175.23222351074,76.740821838379),
        radius = 100.0,
		iplNames = {},
		entitySetNames = {
			{
				request = {
					"V_Michael_bed_tidy",
					"V_Michael_M_items",
					"V_Michael_D_items",
					"V_Michael_S_items",
					"V_Michael_L_Items",
				}
			}
		}
	},
    {
		position = vector3(1985.48132, 3828.76757, 32.5),
        radius = 100.0,
		iplNames = {
			"TrevorsTrailerTrash",
		}
	},
	{
		position = vector3(-47.16170, -1115.3327, 26.5),
        radius = 200.0,
		iplNames = {
			"shr_int"
		}
	},
	{
		position = vector3(-637.20159, -239.16250, 38.1),
        radius = 100.0,
		iplNames = {
			"post_hiest_unload"
		}
	},
	{
		position = vector3(-585.8247, -282.72, 35.45475),
        radius = 100.0,
		iplNames = {
			"refit_unload"
		}
	},
	{
		position = vector3(2.69689322, -667.0166, 16.1306286),
        radius = 150.0,
		iplNames = {
			"FINBANK"
		}
	},
	{
		position = vector3(-146.3837, 6161.5, 30.2062),
        radius = 400.0,
		iplNames = {
			"CS1_02_cf_onmission1",
			"CS1_02_cf_onmission2",
			"CS1_02_cf_onmission3",
			"CS1_02_cf_onmission4"
		}
	},
	{
		position = vector3(2447.9, 4973.4, 47.7),
        radius = 1000.0,
		iplNames = {
			"farm",
			"farmint",
			"farm_lod",
			"farm_props",
			"des_farmhouse",
		}
	},
	{
		position = vector3(716.84, -962.05, 31.59),
        radius = 100.0,
		iplNames = {
			"id2_14_during_door",
			"id2_14_during1",
		}
	},
	{
		position = vector3(-1047.9, -233.0, 39.0),
        radius = 200.0,
		iplNames = {
			"facelobby",
		}
	},
	{
		position = vector3(-248.49159240722656, -2010.509033203125, 34.57429885864258),
        radius = 500.0,
		iplNames = {
			"sp1_10_real_interior",
			"sp1_10_real_interior_lod",
		}
	},
	{
		position = vector3(970.27453, -1826.56982, 31.11477),
        radius = 100.0,
		iplNames = {
			"bkr_bi_id1_23_door"
		}
	},
	{
		position = vector3(-282.46380000, 2835.84500000, 55.91446000),
        radius = 50.0,
		iplNames = {
			"lr_cs6_08_grave_closed"
		}
	},
	{
		position = vector3(49.49379000, 3744.47200000, 46.38629000),
        radius = 100.0,
		iplNames = {
			"methtrailer_grp1"
		}
	},
	{
		position = vector3(984.1552, -95.3662, 74.50),
        radius = 100.0,
		iplNames = {
			"bkr_bi_hw1_13_int"
		}
	},
	-- {
	-- 	position = vector3(297.47875976562,-583.86920166016,43.132404327393),
    --     radius = 100.0,
	-- 	iplNames = {
	-- 		"rc12b_default"
	-- 	}
	-- },
	{
		position = vector3(3082.3117, -4717.1191, 15.2622),
        radius = 2500.0,
		iplNames = {
			"hei_carrier",
			"hei_carrier_distantlights",
			"hei_Carrier_int1",
			"hei_Carrier_int2",
			"hei_Carrier_int3",
			"hei_Carrier_int4",
			"hei_Carrier_int5",
			"hei_Carrier_int6",
			"hei_carrier_lodlights",
			"hei_carrier_slod",
		}
	},
	{
		position = vector3(-2043.974,-1031.582, 11.981),
        radius = 1000.0,
		iplNames = {
			"hei_yacht_heist",
			"hei_yacht_heist_bar",
			"hei_yacht_heist_bar_lod",
			"hei_yacht_heist_bedrm",
			"hei_yacht_heist_bedrm_lod",
			"hei_yacht_heist_bridge",
			"hei_yacht_heist_bridge_lod",
			"hei_yacht_heist_enginrm",
			"hei_yacht_heist_enginrm_lod",
			"hei_yacht_heist_lod",
			"hei_yacht_heist_lounge",
			"hei_yacht_heist_lounge_lod",
			"hei_yacht_heist_slod",
		}
	},
	{
		position = vector3(743.26500000,-816.71220000,21.66042000),
		radius = 100.0,
		iplNames = {},
		entitySetNames = {
			{
				type = "int_arcade",
				request = {
					"entity_set_arcade_set_ceiling_flat",
					"entity_set_screens",
					"entity_set_big_screen",
					"entity_set_constant_geometry",
					"entity_set_ret_light_no_neon",
					"ch_chint02_00_dropped_ceiling",
					"entity_set_hip_light_no_neon",
					"arcade_bar",
					"entity_set_arcade_set_streetx4",
					"entity_set_arcade_set_ceiling_mirror",
					"entity_set_arcade_set_trophy_claw",
					"entity_set_arcade_set_trophy_monkey",
					"entity_set_arcade_set_trophy_patriot",
					"entity_set_arcade_set_trophy_retro",
					"entity_set_arcade_set_trophy_brawler",
					"entity_set_arcade_set_trophy_racer",
					"entity_set_arcade_set_trophy_love",
					"entity_set_arcade_set_trophy_cabs",
					"entity_set_arcade_set_trophy_gunner",
					"entity_set_arcade_set_trophy_teller",
					"entity_set_arcade_set_trophy_king",
					"entity_set_arcade_set_trophy_strife",
					"entity_set_plushie_01",
					"entity_set_plushie_02",
					"entity_set_plushie_03",
					"entity_set_plushie_04",
					"entity_set_plushie_05",
					"entity_set_plushie_06",
					"entity_set_plushie_07",
					"entity_set_plushie_08",
					"entity_set_plushie_09",
					"entity_set_mural_neon_option_01",
					"entity_set_mural_option_01",
					"entity_set_floor_option_07",
				},
				remove = {
					"entity_set_arcade_set_ceiling_beams",
					"entity_set_arcade_set_derelict_carpet",
					"entity_set_arcade_set_derelict",
					"entity_set_arcade_set_derelict",
					"entity_set_arcade_set_derelict_clean_up",
					"entity_set_arcade_set_derelict_clean_up",
					"entity_set_mural_neon_option_02",
					"entity_set_mural_neon_option_03",
					"entity_set_mural_neon_option_04",
					"entity_set_mural_neon_option_05",
					"entity_set_mural_neon_option_06",
					"entity_set_mural_neon_option_07",
					"entity_set_mural_neon_option_08",
					"entity_set_mural_option_02",
					"entity_set_mural_option_03",
					"entity_set_mural_option_04",
					"entity_set_mural_option_05",
					"entity_set_mural_option_06",
					"entity_set_mural_option_07",
					"entity_set_mural_option_08",
					"entity_set_floor_option_01",
					"entity_set_floor_option_02",
					"entity_set_floor_option_03",
					"entity_set_floor_option_04",
					"entity_set_floor_option_05",
					"entity_set_floor_option_06",
					"entity_set_floor_option_08",
				}
			}
		}
	},
	{
		position = vector3(743.26500000,-816.71220000,21.66042000),
		radius = 100.0,
		entitySetNames = {
			{
				type = "int_plan",
				request = {
					"set_plan_casino",
					"set_plan_computer",
					"set_plan_keypad",
					"set_plan_hacker",
					"set_plan_mechanic",
					"set_plan_weapons",
					"set_plan_vault",
					"set_plan_setup",
					"set_plan_bed",
					"set_plan_garage",
					"set_plan_scribbles",
					"set_plan_arcade_x4",
					"set_plan_plans",
					"set_plan_plastic_explosives",
					"set_plan_cockroaches",
					"set_plan_electric_drill",
					"set_plan_vault_drill",
					"set_plan_vault_laser",
					"set_plan_stealth_outfits",
					"set_plan_hacking_device",
					"set_plan_gruppe_sechs_outfits",
					"set_plan_fireman_helmet",
					"set_plan_drone_parts",
					"set_plan_vault_keycard_01a",
					"set_plan_swipe_card_01b",
					"set_plan_swipe_card_01a",
					"set_plan_vault_drill_alt",
					"set_plan_vault_laser_alt",
				},
				remove = {
					"set_plan_wall",
					"set_plan_pre_setup",
					"set_plan_no_bed",
				}
			}
		}
	},
	{
		position = vector3(1163.842,-3195.7,-39.008),
		radius = 50.0,
		entitySetNames = {
			{
				request = {
					"chair01",
					"chair02",
					"chair03",
					"chair04",
					"chair05",
					"chair06",
					"chair07",
					"clutter",
					"equipment_upgrade",
					"interior_upgrade",
					"production",
					"security_high",
					"set_up",
				}
			}
		}
	},
	{
		position = vector3(1121.897, -3195.338, -40.4025),
		radius = 50.0,
		entitySetNames = {
			{
				request = {
					"counterfeit_cashpile10d",
					"counterfeit_cashpile20d",
					"counterfeit_cashpile100d",
					"counterfeit_security",
					"counterfeit_upgrade_equip",
					"money_cutter",
					"special_chairs",
					"dryera_on",
					"dryera_open",
					"dryerb_on",
					"dryerb_open",
					"dryerc_on",
					"dryerc_open",
					"dryerd_on",
					"dryerd_open",
				}
			}
		}
	},
	{
		position = vector3(1093.6, -3196.6, -38.99841),
		radius = 50.0,
		entitySetNames = {
			{
				request = {
					"security_high",
					"equipment_basic",
					"equipment_upgrade",
					"production_upgrade",
					"table_equipment_upgrade",
					"coke_press_upgrade",
					"coke_cut_01",
					"coke_cut_02",
					"coke_cut_03",
					"coke_cut_04",
					"coke_cut_05",
				}
			}
		}
	},
	{
		position = vector3(1009.5, -3196.6, -38.99682),
		radius = 50.0,
		entitySetNames = {
			{
				request = {
					"meth_lab_security_high",
					"meth_lab_upgrade",
				}
			}
		}
	},
	{
		position = vector3(1051.491, -3196.536, -39.14842),
		radius = 50.0,
		entitySetNames = {
			{
				request = {
					"weed_drying",
					"weed_production",
					"weed_upgrade_equip",
					"weed_growtha_stage3",
					"weed_growthc_stage1",
					"weed_growthd_stage1",
					"weed_growthe_stage2",
					"weed_growthf_stage2",
					"weed_growthg_stage1",
					"weed_growthh_stage3",
					"weed_growthi_stage2",
					"weed_hosea",
					"weed_hoseb",
					"weed_hosec",
					"weed_hosed",
					"weed_hosee",
					"weed_hosef",
					"weed_hoseg",
					"weed_hoseh",
					"weed_hosei",
					"light_growtha_stage23_upgrade",
					"light_growthb_stage23_upgrade",
					"light_growthc_stage23_upgrade",
					"light_growthc_stage23_upgrade",
					"light_growthd_stage23_upgrade",
					"light_growthe_stage23_upgrade",
					"light_growthf_stage23_upgrade",
					"light_growthg_stage23_upgrade",
					"light_growthh_stage23_upgrade",
					"light_growthi_stage23_upgrade",
					"weed_security_upgrade",
					"weed_chairs",
				}
			}
		}
	},
	{
		position = vector3(889.67889404297,-2102.9304199219,30.761777877808),
		radius = 100.0,
		iplNames = {
			"lafa2k_bkr_biker_dlc_int_02",
		},
		entitySetNames = {
			{
				request = {
					"walls_01",
					"lower_walls_default",
					"furnishings_02",
					"mural_03",
					"decorative_02",
					"gun_locker",
					"mod_booth",
					"meth_small",
					"meth_medium",
					"meth_large",
					"cash_small",
					"cash_medium",
					"cash_large",
					"weed_small",
					"weed_medium",
					"weed_large",
					"coke_small",
					"coke_medium",
					"coke_large",
					"counterfeit_small",
					"counterfeit_medium",
					"counterfeit_large",
					"id_small",
					"id_medium",
					"id_large",
				}
			}
		}
	},
	{
		position = vector3(404.67630004883,4822.9716796875,-59.006755828857),
		radius = 200.0,
		entitySetNames = {
			{
				colour = 1,
				request = {
					"set_int_02_decal_01",
					"set_int_02_lounge1",
					"set_int_02_cannon",
					"set_int_02_clutter1",
					"set_int_02_crewemblem",
					"set_int_02_shell",
					"set_int_02_security",
					"set_int_02_sleep",
					"set_int_02_trophy1",
					"set_int_02_paramedic_complete",
					"set_Int_02_outfit_paramedic",
					"set_Int_02_outfit_serverfarm",
				},
			}
		}
	},
	{
		position = vector3(-247.246368, -919.344238, 40.5292854),
		radius = 500.0,
		iplNames = {
			"johanni_jurassic_jackpot_milo",
		},
		entitySetNames = {
			{
				request = {
					"casino_table_yes",
				}
			}
		}
	},
	{
		position = vector3(-1191.25867, -1402.93933, 7.4126153),
		radius = 250.0,
		iplNames = {
			"johanni_aldentes_milo_",
		},
		entitySetNames = {
			{
				request = {
					"r8_casino_yes",
				}
			}
		}
	},
{ -- Smugglers Run Hanga
    position = vector3(-1266.0, -3014.0, -47.0),
    radius = 200.0,
    entitySetNames = {
        {
            colour = 1,
            request = {
                "set_lighting_hangar_a",
                "set_tint_shell",
                "set_bedroom_tint",
                "set_crane_tint",
                "set_modarea",
                "set_lighting_tint_props",
                "set_floor_1",
                "set_floor_decal_1",
                "set_bedroom_modern",
                "set_office_modern",
                "set_bedroom_blinds_open",
                "set_lighting_wall_tint01",
            },
        }
    }
}

}

return cfg
