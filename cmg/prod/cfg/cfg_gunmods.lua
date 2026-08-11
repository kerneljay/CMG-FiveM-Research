--[[
    LEVEL 1 BEGINNER GUIDE — Gunmods
    =====================================

    File: cmg/prod/cfg/cfg_gunmods.lua
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

cfg.supportedWeapons = {
    "WEAPON_M4A1CMG",
	"WEAPON_AK74CMG",
	"WEAPON_BERETTACMG",
	"WEAPON_TEC9CMG",
	"WEAPON_UZICMG",
	"WEAPON_UMP45CMG",
	"WEAPON_416DCMG",
	"WEAPON_GOLDENDEAGLECMG",
	"WEAPON_FNXCMG",
	"WEAPON_MP5CMG",
	"WEAPON_PUMPMK2CMG",
	"WEAPON_SPECCARBINECMG",
	"WEAPON_GLOCKCMG",
	"WEAPON_G36CMG",
	"WEAPON_USASCMG",
	"WEAPON_AR15CMG",
	"WEAPON_FNFALCMG",
	"WEAPON_AKMCMG",
	"WEAPON_HKG3CMG",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_SIGMCX"
}

cfg.components = {
	["COMPONENT_CARBINERIFLE_CLIP_02"] = {"Extended M4 Mag",5000},
	["COMPONENT_AT_AR_FLSH"] = {"AR Flashlight",1000},
	["COMPONENT_AT_RAILCOVER_01"] = {"AR Railcover",1000},
	["COMPONENT_AT_SCOPE_SMALL"] = {"Holosight",5000},
	["COMPONENT_AT_SCOPE_MEDIUM"]  = {"ACOG Sight",5000},
	["COMPONENT_AT_SCOPE_MACRO"] = {"Red Dot Sight",5000},
	["COMPONENT_AT_AR_SUPP"] = {"Suppressor AR",10000},
	["COMPONENT_SPECIALCARBINE_CLIP_01"] = {"Extended M4 Mag 2",25000},
	["COMPONENT_ASSAULTRIFLE_CLIP_03"] = {"Extended AK Mag 3",25000},
	["COMPONENT_ASSAULTRIFLE_CLIP_02"] = {"Extended AK Mag 2",15000},
	["COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"] = {"Extended AK Mk2 Mag",15000},
	["COMPONENT_PISTOL_CLIP_02"] = {"Extended Pistol Mag",5000},
	["COMPONENT_AT_PI_FLSH"] = {"Flashlight",1000},
	["COMPONENT_AT_PI_SUPP"] = {"Suppressor",10000},
	["COMPONENT_MACHINEPISTOL_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_MACHINEPISTOL_CLIP_03"] = {"Extended Mag 2",25000},
	["COMPONENT_MICROSMG_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_AT_AR_SUPP_02"] = {"Suppressor",10000},
	["COMPONENT_COMBATPDW_CLIP_02"] = {"Extended Mag", 15000},
	["COMPONENT_AT_AR_AFGRIP"] = {"Grip",5000},
	["COMPONENT_COMBATPDW_CLIP_03"] = {"Extended Mag 2",25000},
	["COMPONENT_SMG_MK2_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_AT_SCOPE_MEDIUM_MK2"] = {"EOTech Scope",5000},
	["COMPONENT_PISTOL50_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_SPECIALCARBINE_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_COMBATPISTOL_CLIP_02"] = {"Extended Mag",15000},
	["COMPONENT_AKM_CLIP_02"] = {"AKM Extended Mag",15000},
	["COMPONENT_HKG3_CLIP_02"] = {"HKG3 Extended Mag",15000},
	["COMPONENT_G36K_CLIP_02"] = {"G36K Extended Mag",15000},
	["COMPONENT_AT_MK23_FLSH"] = {"MK23 Extended Mag",15000},
	["COMPONENT_AT_M110_SCOPE_LARGE"] = {"M110 Large Scope",15000},
	["COMPONENT_M110_CLIP_02"] = {"M110 Extended Mag",15000},
	["COMPONENT_P22_CLIP_02"] = {"P22    Extended Mag",15000},
}

cfg.shops = {
    -- {"PaletoGunMods", vector3(1541.697, 6338.308, 24.07324), "Rebel Gun Mods", vector3(1543.503, 6337.767, 24.07324)},
    -- {"MissionRowGunMods", vector3(457.8835144043,-982.82092285156,30.689329147339), "Police Gun Mods", vector3(458.9011, -982.9187, 30.67834)},
    -- {"VespucciGunMods", vector3(-1105.8123779297,-826.46459960938,13.282789230347), "Police Gun Mods", vector3(-1106.9516601563,-825.38226318359,14.282797813416)},
    -- {"SandyGunMods", vector3(1842.9694824219,3692.9372558594,34.266979217529), "Police Gun Mods", vector3(1841.8427734375,3692.5065917969,34.266933441162)},
    -- {"PaletoPdGunMods", vector3(-447.70181274414,6014.1567382813,31.716394424438), "Police Gun Mods", vector3(-446.6594543457,6012.7978515625,31.716367721558)},
}

cfg.weaponNames = {
    ["WEAPON_M4A1CMG"] = "M4A1",
	["WEAPON_AK74CMG"] = "AK74",
	["WEAPON_BERETTACMG"] = "Beretta M9",
	["WEAPON_TEC9CMG"] = "Tec9",
	["WEAPON_UZICMG"]  = "Uzi",
	["WEAPON_UMP45CMG"] = "UMP 45",
	["WEAPON_RAUDNIMP5CMG"] = "MP5-K",
	["WEAPON_416DCMG"] = "416D",
	["WEAPON_GOLDENDEAGLECMG"] = "Deagle",
	["WEAPON_FNXCMG"] = "FNX45",
	["WEAPON_MP5CMG"] = "MP5",
	["WEAPON_PUMPMK2CMG"] = "Pump Shotgun Mk2",
	["WEAPON_GLOCKCMG"] = "Glock",
	["WEAPON_G36CMG"] = "G36C",
	["WEAPON_USASCMG"] = "USAS",
	["WEAPON_SPECCARBINECMG"] = "Special Carbine Mk2",
	["WEAPON_FNFALCMG"] = "FNFal",
	["WEAPON_AR15CMG"] = "AR15",
	["WEAPON_AKMCMG"] = "AKM",
	["WEAPON_SPECIALCARBINE"] = "Special Carbine",
}

return cfg
