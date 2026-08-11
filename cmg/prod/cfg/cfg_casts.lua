--[[
    LEVEL 1 BEGINNER GUIDE — Casts
    ===================================

    File: cmg/prod/cfg/cfg_casts.lua
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
-- Cast/sling/bandage definitions for NHS radial menu (Alcaline's Plaster Cast V2 props)
-- Each entry: id, label, m (male prop+attach), f (female), anim (slings only), clipset (leg casts only)

local hashMale = `mp_m_freemode_01`
local hashFemale = `mp_f_freemode_01`

local cfg = {
    hashMale = hashMale,
    hashFemale = hashFemale,
    -- id -> { label, m = { prop, bone, x,y,z, rx,ry,rz }, f = {...}, anim = { dict, name }, clipset = "..." }
    casts = {
        facl = { label = "Left Forearm Cast", m = { "alcaprop_m_cast_forearm_l", 61163, 0.07, -0.01, 0.0, 14.0, -130.0, 168.0 }, f = { "alcaprop_f_cast_forearm_l", 61163, 0.02, -0.08, 0.42, 14.0, -124.0, 166.0 } },
        facr = { label = "Right Forearm Cast", m = { "alcaprop_m_cast_forearm_r", 28252, 0.07, -0.01, 0.0, 6.0, -52.0, 178.0 }, f = { "alcaprop_f_cast_forearm_r", 28252, 0.24, 0.0, 0.01, 8.0, -56.0, 190.0 } },
        asl = { label = "Left Arm Sling", m = { "alcaprop_m_armscarf_l", 61163, 0.1, -0.03, 0.01, 282.0, -186.0, 1.0 }, f = { "alcaprop_f_armscarf_l", 61163, 0.1, -0.02, 0.01, -82.0, 174.0, -1.0 }, anim = { m = { "forearm@cast@left@m", "forearm_left_man_clip" }, f = { "forearm@cast@left@f", "left_woman_clip" } } },
        asr = { label = "Right Arm Sling", m = { "alcaprop_m_armscarf_r", 28252, 0.31, -0.01, -0.03, 655.0, 3.0, 1.0 }, f = { "alcaprop_f_armscarf_r", 28252, 0.12, 0.06, -0.06, -90.0, 368.0, 1.0 }, anim = { m = { "forearm@cast@right@m", "forecast_right_m_clip" }, f = { "forearm@cast@right@f", "right_woman_clip" } } },
        lcl = { label = "Left Leg Cast", m = { "alcaprop_m_cast_leg_l", 63931, 0.27, 0.0, -0.01, -7.0, -90.0, 176.0 }, f = { "alcaprop_m_cast_leg_l", 63931, 0.28, 0.0, -0.01, -6.0, -87.0, 179.0 }, clipset = "move_heist_lester" },
        lcr = { label = "Right Leg Cast", m = { "alcaprop_m_cast_leg_r", 36864, 0.27, -0.06, -0.47, -7.0, -90.0, 188.0 }, f = { "alcaprop_m_cast_leg_r", 36864, 0.26, -0.08, -0.47, -5.0, -89.0, 190.0 }, clipset = "move_heist_lester" },
        hb = { label = "Head Bandage", m = { "alcaprop_head_bandage", 12844, 0.19, 0.0, 0.0, 176.0, -89.0, 1.0 }, f = { "alcaprop_head_bandage", 12844, 0.19, 0.0, 0.0, 176.0, -89.0, 1.0 } },
        nb = { label = "Neck Brace", m = { "alcaprop_neckbrace", 12844, -0.09, -0.01, 0.0, 176.0, -89.0, 1.0 }, f = { "alcaprop_neckbrace", 12844, -0.09, -0.01, 0.0, 176.0, -89.0, 1.0 } },
        fal = { label = "Left Forearm Bandage", m = { "alcaprop_m_bandage_fal", 61163, 0.14, -0.01, 0.0, 0.0, -123.0, -176.0 }, f = { "alcaprop_f_bandage_fal", 61163, 0.14, 0.0, 0.0, 14.0, 237.0, 168.0 } },
        far = { label = "Right Forearm Bandage", m = { "alcaprop_m_bandage_far", 28252, 0.15, 0.0, 0.0, -5.0, -57.0, -189.0 }, f = { "alcaprop_f_bandage_far", 28252, 0.15, 0.0, 0.0, 10.0, 301.0, 190.0 } },
        al = { label = "Left Arm Bandage", m = { "alcaprop_m_bandage_al", 45509, 0.22, 0.0, 0.01, -11.0, -124.0, -170.0 }, f = { "alcaprop_f_bandage_al", 45509, 0.14, 0.02, 0.01, -9.0, 237.0, 191.0 } },
        ar = { label = "Right Arm Bandage", m = { "alcaprop_m_bandage_ar", 40269, 0.17, -0.01, -0.02, -23.0, -50.0, -208.0 }, f = { "alcaprop_f_bandage_ar", 40269, 0.15, 0.01, -0.02, -11.0, 303.0, 166.0 } },
        ll = { label = "Left Leg Bandage", m = { "alcaprop_m_bandage_ll", 63931, 0.34, 0.01, 0.0, -5.0, -96.0, -187.0 }, f = { "alcaprop_f_bandage_ll", 63931, 0.33, 0.01, -0.01, -2.0, 268.0, 166.0 } },
        lr = { label = "Right Leg Bandage", m = { "alcaprop_m_bandage_lr", 36864, 0.24, 0.0, 0.01, -5.0, -85.0, -183.0 }, f = { "alcaprop_f_bandage_lr", 36864, 0.23, 0.0, 0.01, -2.0, 274.0, 166.0 } },
        tl = { label = "Left Thigh Bandage", m = { "alcaprop_m_bandage_tl", 58271, 0.35, 0.02, 0.01, 0.0, -93.0, -199.0 }, f = { "alcaprop_f_bandage_tl", 58271, 0.34, 0.02, 0.01, 2.0, 264.0, 166.0 } },
        tr = { label = "Right Thigh Bandage", m = { "alcaprop_m_bandage_tr", 51826, 0.34, 0.0, -0.23, -1.0, -87.0, -173.0 }, f = { "alcaprop_f_bandage_tr", 51826, 0.24, 0.02, 0.0, -1.0, 274.0, 208.0 } },
        torso = { label = "Chest Bandage", m = { "alcaprop_m_bandage_torso", 57597, 0.16, 0.01, 0.0, 7.0, 91.0, -180.0 }, f = { "alcaprop_f_bandage_torso", 57597, 0.12, 0.06, 0.0, 13.0, 90.0, 177.0 } },
    },
    -- Body part categories for radial menu submenus (arm/leg bandages removed - use medic Bandage option)
    categories = {
        { id = "head", title = "Head & Neck", icon = "#injury", castIds = { "hb", "nb" } },
        { id = "arms", title = "Arms", icon = "#arm", castIds = { "facl", "facr", "asl", "asr" } },
        { id = "legs", title = "Legs", icon = "#leg", castIds = { "lcl", "lcr" } },
        { id = "torso", title = "Torso", icon = "#chest", castIds = { "torso" } },
    },
}

return cfg
