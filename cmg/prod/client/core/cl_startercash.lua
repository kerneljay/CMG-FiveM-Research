--[[
    LEVEL 1 BEGINNER GUIDE — Startercash
    =========================================

    File: cmg/prod/client/core/cl_startercash.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Startercash feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 1d92d56c88
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
    Starter Cash
    ============

    Very small client helper.

    Calling GetStarterCash() tells the server that this client wants to run
    the starter-cash action. The server event hash is kept unchanged because
    the server-side resource will expect this exact event name.
]]

-- === HELPER FUNCTION: GetStarterCash() ===
function GetStarterCash()
    -- Beginner: sends the "1d92d56c88" event to the server.
    TriggerServerEvent("1d92d56c88")
end
