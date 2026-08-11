--[[
    LEVEL 1 BEGINNER GUIDE — Trains
    ====================================

    File: cmg/prod/client/misc/cl_trains.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Trains feature.

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
      * Incoming network events: 63a81df20f, cb633fe9c7
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
    Random Train Control
    ====================

    Event 63a81df20f
      Enables random trains on GTA train tracks 0 and 3.

    Event cb633fe9c7
      Disables those tracks again and changes the spawn frequency.

    The event hashes are kept unchanged because the server probably triggers
    them directly.
]]

-- === NETWORK EVENT: receives "63a81df20f" from server/another network source ===
RegisterNetEvent("63a81df20f", function()
    SwitchTrainTrack(0, true)
    SwitchTrainTrack(3, true)

    -- Ten minutes.
    SetTrainTrackSpawnFrequency(
        0,
        600000
    )

    SetRandomTrains(true)

    print("Starting trains")
end)

-- === NETWORK EVENT: receives "cb633fe9c7" from server/another network source ===
RegisterNetEvent("cb633fe9c7", function()
    SwitchTrainTrack(0, false)
    SwitchTrainTrack(3, false)

    -- Two minutes.
    SetTrainTrackSpawnFrequency(
        0,
        120000
    )

    print("Disabling trains")
end)
