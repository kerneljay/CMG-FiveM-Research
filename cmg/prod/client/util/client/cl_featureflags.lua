--[[
    LEVEL 1 BEGINNER GUIDE — Featureflags
    ==========================================

    File: cmg/prod/client/util/client/cl_featureflags.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

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
      * Incoming network events: 2f89bbe50c, 220ec18765
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
    Server Tunables / Feature Flags
    ===============================

    A "tunable" is a server-controlled value which can be changed without
    hard-coding the value in this client.

    CMG.getTunableValue(name)
      Returns the latest value received for that tunable.

    Event 2f89bbe50c
      Updates one value.

    Event 220ec18765
      Replaces/populates many values at once.

    Event 1a027a264a is fired locally after a value changes so other client
    scripts can react.
]]

local tunables = {}

-- === HELPER FUNCTION: CMG.getTunableValue(name) ===
function CMG.getTunableValue(name)
    local tunable = tunables[name]
    return tunable and tunable.value or nil
end

-- === NETWORK EVENT: receives "2f89bbe50c" from server/another network source ===
RegisterNetEvent("2f89bbe50c", function(name, value)
    tunables[name] = tunables[name] or {}
    tunables[name].value = value

    TriggerEvent("1a027a264a", name, value)
end)

-- === NETWORK EVENT: receives "220ec18765" from server/another network source ===
RegisterNetEvent("220ec18765", function(serverTunables)
    for _, entry in pairs(serverTunables) do
        local name = entry[1]
        local value = entry[2]

        tunables[name] = {
            value = value
        }

        TriggerEvent("1a027a264a", name, value)
    end
end)
