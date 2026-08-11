--[[
    LEVEL 1 BEGINNER GUIDE — Simeons
    =====================================

    File: cmg/prod/cfg/cfg_simeons.lua
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

--- Maps `levelName` on a vehicle entry to a CMG level type id (`CMG.defineLevelType`, e.g. `cmg_mechanic`).
--- You may also set `levelName` to the id directly and omit unknown keys here.
cfg.simeonsLevelNameToType = {
    mechanic_level = "cmg_mechanic",
    health_service_level = "cmg_health_service",
}

--- Optional vehicle fields (same row table as name/price):
--- `skillRequired` — skill node id; must be unlocked (`CMG.isSkillUnlocked` / `CMG.hasClientSkill`) to buy/preview-select as enabled.
--- `skillHint` — short label for menu subtitle / server notify (e.g. "Vigilante Helicopter").

cfg.simeonsCategories = {
    ["Compacts"] = {
        ["_config"] = {permissionTable = {}},
        ["kanjoep4"]    = {"Dinka Kanjo EP4", 5000},
        ["clubr"]       = {"BF Club R", 15000},
        ["blitz"]       = {"Benefactor Blitz", 30000},
        ["rhinesed"]    = {"Ubermacht Rhinehart Sedan", 20000},
        ["sen5tour"]    = {"Ubermacht Sentinel GTS Touring", 250000},
        ["straza"]      = {"Karin Straza", 10000},
    },
    ["Sports"] = {
        ["_config"] = {permissionTable = {}},
        ["tailgatersr"] = {"Obey Tailgater SR", 65000},
        ["str"]         = {"Benefactor Schneider STR", 50000},
        ["strwag"]      = {"Benefactor Schneider STR Wagon", 70000},
        --["dawn"]        = {"Maibatsu Dawn", 35000},
        ["rt3000varis"] = {"Dinka RT3000 Var", 50000},
    },
    ["Drift"] = {
        ["_config"] = {permissionTable = {}},
        ["driftfr36"]     = {"Fathom FR36 (Drift)", 100000},
        ["driftremus"]    = {"Annis Remus (Drift)", 200000},
        ["driftyosemite"] = {"Declasse Drift Yosemite", 500000},
        ["driftfuto"]     = {"Karin Futo GTX (Drift)", 1000000},
        ["driftzr350"]    = {"Annis ZR-350 (Drift)", 200000},
        ["drifteuros"]    = {"Annis Euros (Drift)", 500000},
        ["driftjester"]   = {"Dinka Jester RR (Drift)", 1000000},
        ["drifttampa"]    = {"Declasse Drift Tampa", 1500000},
    },
    ["SUVs"] = {
        ["_config"] = {permissionTable = {}},

        ["shenron"]   = {"Emperor Shenron", 75000},
        ["taurion"]     = {"BF Taurion", 20000},
        ["xlsstr"]    = {"Benefactor XLS STR", 100000},
        ["manscav"]   = {"Cavalcade Mansory", 150000},
        --["reblabete"] = {"Rebla Bete Noire", 95000}, --CRASHES
    },
    ["Supers"] = {
        ["_config"] = {permissionTable = {}},
        ["entity2gt"] = {"Entity XRR GT2", 1100000},
        ["emerusdwn"] = {"Emerus Darwin Pro", 780000},
        ["1016t20"]   = {"Progen T20 1016", 825000},
        ["thraxk"]    = {"Truffade Thrax Keyvany", 900000},
        ["sultlong"]    = {"Karin Sultan Estate", 25000},
    },
    ["Motorcycles"] = {
        ["_config"] = {permissionTable = {}},

        ["doubleh2"] = {"Double T H2", 150000},
        ["bativ4"]   = {"Bati Panigale V4", 100000},
        ["talarichez"] = {"Manchez X3 MX", 60000},
    },
    ["Vans"] = {
        ["_config"] = {permissionTable = {}},
        ["trager"]   = {"BF Trager Civ", 600000},
        ["carrion"]  = {"BF Carrion", 600000},
        --["torosute"] = {"Toros Ute", 300000}, --CRASHES
    },
    ["Trucks"] = {
        ["_config"] = {permissionTable = {}},
        ["hauler"] = {"Hauler", 200000},
        ["hauler2"] = {"Hauler Custom", 200000},
        ["packer"] = {"Packer", 200000},
        ["phantom3"] = {"Phantom Custom", 200000},
        ["phantom4"] = {"Phantom XMAS", 200000},
        ["trash"] = {"Trashmaster", 200000},
    },

    ["Police Service Vehicles"] = {
        ["_config"] = {permissionTable={"police.onduty.permission"}},
        ["casaru"] = {"Castigator ARU Marked", 0},
        ["casdrn"] = {"Castigator Drone Support Marked", 0},
        ["casint"] = {"Castigator Interceptor Marked", 0},
        ["casrpu"] = {"Castigator RPU Marked", 0},
        ["gcarmels"] = {"Marked Armed Response Van", 0},
        ["komaru"] = {"Komoda ARU Marked", 0},
        ["komint"] = {"Komoda Interceptor Marked", 0},
        ["komrpu"] = {"Komoda RPU Marked", 0},
        ["rebaru"] = {"Rebla ARU Marked", 0},
        ["rebdsu"] = {"Rebla DSU Marked", 0},
        ["rebint"] = {"Rebla Interceptor Marked", 0},
        ["rebrpu"] = {"Rebla RPU Marked", 0},
        ["revels"] = {"Obey Revenant Marked", 0},
        ["rhiaru"] = {"Rhinehart Armed Response Marked", 0},
        ["rhiint"] = {"Rhinehart Interceptor Marked", 0},
        ["rhirpu"] = {"Rhinehart RPU Marked", 0},
    },

    ["Police Service Boats"] = {
        ["_config"] = {permissionTable={"police.onduty.permission"}},
        ["polboat"] = {"MET Boat",0},
    },

    ["Border Force Vehicles"] = {
        ["_config"] = {permissionTable={"borderforce.onduty.permission"}},
    },

    ["Health Service Vehicles"] = {
        ["_config"] = {permissionTable={"nhs.onduty.permission"}},
        ["amb"] = {"Marked Ambulance Van", 0},
        ["blineuhs"] = {"Bravado Blackline Ambulance", 0, levelName = "health_service_level", levelRequired = 10},
        ["casamb"] = {"Castigator NHS Marked", 0, levelName = "health_service_level", levelRequired = 20},
        ["rhiuhs"] = {"Rhinehart Ambulance", 0, levelName = "health_service_level", levelRequired = 30},
        ["komamb"] = {"Komoda Marked", 0, levelName = "health_service_level", levelRequired = 40},
        ["revuhs"] = {"Obey Revenant NHS Marked", 0, levelName = "health_service_level", levelRequired = 50},
        ["paramb"] = {"Paragon Ambulance", 0, levelName = "health_service_level", levelRequired = 60},
        ["redfr"] = {"Rebla NHS Marked", 0, levelName = "health_service_level", levelRequired = 70},
    },
    ["Fire Service Garage"] = {
        ["_config"] = {permissionTable={"lfb.onduty.permission"}},

    },
    ["Fire Service Helicopters"] = {
        ["_config"] = {permissionTable={"lfb.onduty.permission"}},
        ["gxfirehel"] = {"Fire Service Helicopter", 0},
    },
    ["Police Helicopters"] = {
        ["_config"] = {permissionTable={"police.onduty.permission"}},
        ["gxpdhel"] = {"Police Helicopter", 0},
        ["polbuzz2"] = {"Police Buzzard", 0},
    },
    ["Mechanics"] = {
        ["_config"] = {permissionTable={"aa.onduty.permission"}},
        ["tcaracaraptormec"] = {"Mechanic Tow Truck", 0},
        ["caracaraptorfb"] = {"Mechanic Flat Bed", 100000},
        ["cougarmec"] = {"Mechanic Motorbike", 200000, levelName = "mechanic_level", levelRequired = 25},
        ["22transmec"] = {"Mechanic Vapid Van", 1000000, levelName = "mechanic_level", levelRequired = 50},
        ["caracaraptormec"] = {"Mechanic Vapid Pickup", 2000000, levelName = "mechanic_level", levelRequired = 75},
        ["mavmec"] = {"Mechanic Helicopter", 5000000, levelName = "mechanic_level", levelRequired = 100},
    },
    ["Health Service Helicopters"] = {
        ["_config"] = {permissionTable={"nhs.onduty.permission"}},
        ["gxuhshel"] = {"Health Service Helicopter", 0, levelName = "health_service_level", levelRequired = 100},
    },
    ["Vigilante Helicopters"] = {
        ["_config"] = {permissionTable = {"vigilante.onduty.permission"}},
        ["gxcivhel"] = {"GX Civil Helicopter", 5000000, skillRequired = "vigilante_unlock_helicopter", skillHint = "Vigilante Helicopter"},
    },
    ["Rebel Garage"] = {
        ["_config"] = {permissionTable={"rebellicense.whitelisted"}},
    },
    ["Diamond Casino"] = {
        ["_config"] = {permissionTable={"casino.whitelisted"}},

    },
    ["Lost MC Gang Vehicles"] = {
        ["_config"] = {permissionTable={"soa2.whitelisted"}, gangVehicleStore = true},
        ["soabobber"] = {"Lost MC Bobber",2000000},
        ["soavan"] = {"Lost MC Van",5000000},
        ["diablo"] = {"The Lost Bike",5000000},
    },
    ["Marketplace Vehicles"] = {
        ["_config"] = {permissionTable={"gang.marketplace.whitelist"}, gangVehicleStore = true},
        ["marketplaceescalade"] = {"Marketplace Escalade",5000000},
    },
    ["Sixth Sense Vehicles"] = {
        ["_config"] = {permissionTable={"gang.sixthsense.whitelist"}, gangVehicleStore = true},
        ["sixthsenseinsurgent"] = {"Sixth Sense Insurgent",5000000},
    },
    ["Prison Service Vehicles"] = {
        ["_config"] = {permissionTable={"prisonguard.onduty.permission"}},
        ["rbgator"] = {"HMPS Cart",0},
        ["hmpsvan"] = {"HMPS Van",0},
        ["prisontruck"] = {"HMPS Prison Truck",0},
        ["polrange"] = {"HMPS Gallivanter",0},
        ["hmptransportbike"] = {"HMPS Transport Bike",0},
        ["outhw"] = {"Declasse Outlaw HMP", 0},
    },
    ["Prison Service Helicopters"] = {
        ["_config"] = {permissionTable={"prisonguard.onduty.permission"}},
        ["gxhmphel"] = {"Prison Service Helicopter", 0, skillRequired = "prison_service_unlock_hmp_helicopter", skillHint = "HMP Helicopter"},
    },
    ["Boats"] = {
        ["_config"] = {permissionTable={}},
        ["dinghy"] = {"Dinghy (30kg)",200000},
        ["dinghy2"] = {"Dinghy 2 (40kg)",400000},
        ["dinghy3"] = {"Dinghy 3 (50kg)",600000},
        ["dinghy4"] = {"Dinghy 4 (60kg)",800000},
        ["jetmax"] = {"Jetmax (90kg)",1800000},
        ["marquis"] = {"Marquis (200kg)",4000000},
        ["seashark"] = {"Seashark",50000},
        ["seashark2"] = {"Seashark 2",60000},
        ["seashark3"] = {"Seashark 3",70000},
        ["speeder2"] = {"Speeder 2(125kg)",2500000},
        ["suntrap"] = {"Suntrap(70kg)",1400000},
        ["toro"] = {"Toro (100kg)",2000000},
        ["toro2"] = {"Toro 2 (125kg)",2500000},
        ["tropic"] = {"Tropic (80kg)",1600000},
        ["tug"] = {"Tug (300kg)",6000000},
    },
}

cfg.simeonsInstances = {
    --[name] = {posVector,blipId,blipColour,markerId,markerColourTable,permissionsTable,categorys}
    ["Simeons"] = {
        posVector=vector3(-34.001579284668,-1101.8000488281,26.422435760498),
        previewVector=vector3(-45.621112823486,-1097.4005126953,26.422435760498),
        blipid=67,
        blipcolor=1,
        markerId=29,
        markerColourTable={0,200,0},
        permissionsTable={},
        categorys={
            "Compacts",
            "SUVs",
            "Sports",
            "Drift",
            "Supers",
            "Vans",
            "Motorcycles",
            "Police Service Vehicles",
            "Border Force Vehicles",
            "Health Service Helicopters",
            "Rebel Garage",
            "Police Helicopters",
            "Vigilante Helicopters",
            "Mechanics",
            "Fire Service Garage",
            "Fire Service Helicopters",
            "Health Service Vehicles",
            "Police Service Boats",
            "Diamond Casino",
            "Lost MC Gang Vehicles",
            -- "LDNU Vehicles",
            "Marketplace Vehicles",
            "Sixth Sense Vehicles",
            "Prison Service Vehicles",
            "Prison Service Helicopters",
        }
    },
    ["BoatStore"] = {
        posVector=vector3(-921.70056152344,-1341.4268798828,1.6051675081253),
        previewVector=vector3(-899.60400390625,-1363.0682373047,0.0),
        blipid=410,
        blipcolor=1,
        markerId=29,
        markerColourTable={0,200,0},
        permissionsTable={},
        categorys={
            "Boats",
        }
    },
    ["Legal Trucks"] = {
        posVector=vector3(895.5809, -3187.351, 5.898145),
        previewVector=vector3(895.5809, -3187.351, 5.898145),
        blipid=477,
        blipcolor=1,
        markerId=29,
        markerColourTable={0,200,0},
        permissionsTable={},
        categorys={
            "Trucks",
        }
    },
    ["Illegal Trucks"] = {
        posVector=vector3(213.6047, -3119.031, 5.790276),
        previewVector=vector3(213.6047, -3119.031, 5.790276),
        blipid=477,
        blipcolor=1,
        markerId=29,
        markerColourTable={0,200,0},
        permissionsTable={},
        categorys={
            "Trucks",
        }
    },
}

local unusedCategories = {}
for categoryName in pairs(cfg.simeonsCategories) do
    unusedCategories[categoryName] = true
end

for _, instanceData in pairs(cfg.simeonsInstances) do
    for _, categoryName in pairs(instanceData.categorys) do
        unusedCategories[categoryName] = nil
    end
end

assert(table.count(unusedCategories) == 0, string.format("Config defines categories %s but are not referenced in any instance.", json.encode(unusedCategories)))

return cfg
