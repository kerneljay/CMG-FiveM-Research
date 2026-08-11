--[[
    LEVEL 1 BEGINNER GUIDE — Blips Markers
    ===========================================

    File: cmg/prod/cfg/blips_markers.lua
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

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
    {1220.8751220704,-2993.9060058594,4.0611268,431,2,"Trader",nil,false},
    {-595.85900878906,2087.6652832032,131.37634277344,85, 73,"Gold Mine",nil,false},
    {2711.3342285156,1519.6458740234,24.500577926636,365,28,"Gold Processing",nil,false},
    {-753.74310302734,-1510.6815185547,5.0141487121582, 94 ,2,"Parachuting",nil,false},
    {1468.5318603516,6328.529296875,18.894895553589,310, 1,"Rebel Area",nil,true},
    --{-1685.0177001953,-291.78036499023,51.891048431396,305,1,"Church",nil,false},
    {921.90509033203,50.044414520264,80.898361206055,617,32,"Casino",nil,false},
    {-33.803,-1102.322,25.422,326,0,"Showroom",nil,false},
    {-47.275672912598,-1290.0,29.599639892578,311,0,"Boxing",nil,false},
    {-930.60235595703,-807.04138183594,15.897052764893,376,0,"Skatepark",nil,false},
    {-1214.0251464844,-190.93727111816,39.32536315918,680,27,"Crastenburg Casino",nil, false},
    {-921.79943847656,-1341.5697021484,1.6051656007767,410,2,"Boat Shop",nil,false},
    {3933.1376953125,4881.34765625,14.921411514282,765,1,"Asylum Island",nil,false}
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {

}

return cfg
