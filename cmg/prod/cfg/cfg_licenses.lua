--[[
    LEVEL 1 BEGINNER GUIDE — Licenses
    ======================================

    File: cmg/prod/cfg/cfg_licenses.lua
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

cfg.shopCoords = vector3(-533.28350830078,-189.46655273438,38.21964263916)

cfg.licenses = {
    --["group_id",License String,Price,Description,Illegal}
    {"goldlicense","Gold License",4000000,"",false},
    {"ganglicense","Gang License",1500000,"",false},
    {"airlicense","Pilots License",2500000,"",false},
    {"diamondlicense","Diamond License",10000000,"",false},
    {"heroinlicense","Heroin License",20000000,"",true},
    {"rebellicense","Rebel License",30000000,"",true},
    {"lsdlicense","LSD License",50000000,"",true},
    {"advrebellicense","Advanced Rebel License",15000000,"",true},
    {"vigilantelicense", "Vigilante License", 30000000, "",false},
    {"polblips","Long-Range Emergency Blips License",5000000,"",false},
    {"lockpickalert", "Vehicle Boot Security License", 50000000, "Automatically applies to all owned or rented vehicles.This notifies you if any of your vehicles are being actively lockpicked.",false},
    {"racing.license","Racing License",200000000,"Access to create races on the racing app and earn commission.",false}
}

table.sort(cfg.licenses, function(lhs, rhs)
    if lhs[3] == rhs[3] then
        return lhs[2] < rhs[2]
    else
        return lhs[3] < rhs[3]
    end
end)

return cfg
