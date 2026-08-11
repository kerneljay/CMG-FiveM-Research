--[[
    LEVEL 1 BEGINNER GUIDE — Debug
    ===================================

    File: cmg/prod/client/util/client/cl_debug.lua
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
      * Named functions: 3
      * Background threads: 0
      * Always-running loops: 0
      * Commands: debugmode
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
    Debug Logging
    =============

    /debugmode toggles extra CMG debug logging for this client.

    CMG.debugLog(...)
      Prints only while debug mode is enabled.

    export "debugLog"
      Lets another resource log through CMG and automatically includes the
      calling resource's name.
]]

local debugEnabled = false

-- === HELPER FUNCTION: CMG.toggleDebugMode() ===
function CMG.toggleDebugMode()
    debugEnabled = not debugEnabled

    print(
        "[CMG] debug mode "
        .. (debugEnabled and "enabled" or "disabled")
    )
end

-- === HELPER FUNCTION: CMG.debugLog(...) ===
function CMG.debugLog(...)
    if debugEnabled then
        print("[CMG DEBUG] ", ...)
    end
end

-- === HELPER FUNCTION: CMG.debugLog_export(resourceName, ...) ===
function CMG.debugLog_export(resourceName, ...)
    if debugEnabled then
        print(
            string.format(
                "[CMG DEBUG : %s]",
                resourceName
            ),
            ...
        )
    end
end

CMG.registerCommand(
    "debugmode",
    function()
        CMG.toggleDebugMode()
    end,
    false
)

-- === EXPORT: other resources can call "debugLog" ===
exports("debugLog", function(...)
    CMG.debugLog_export(
        GetInvokingResource(),
        ...
    )
end)
