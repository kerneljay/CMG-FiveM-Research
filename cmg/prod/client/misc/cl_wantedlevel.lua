--[[
    LEVEL 1 BEGINNER GUIDE — Wantedlevel
    =========================================

    File: cmg/prod/client/misc/cl_wantedlevel.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Wantedlevel feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 1
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
--[[
    Wanted-Level / Vehicle-Reward Disabler
    ======================================

    CMG does not use GTA's normal police wanted-level system, so this file:
      * sets the maximum wanted level to 0
      * disables GTA's random vehicle rewards every frame
]]

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    SetMaxWantedLevel(0)
end)

-- === HELPER FUNCTION: disableVehicleRewards(context) ===
local function disableVehicleRewards(context)
    DisablePlayerVehicleRewards(context.playerId)
end

CMG.createThreadOnTick(
    disableVehicleRewards,
    "Disable Vehicle Rewards"
)
