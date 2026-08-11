--[[
    LEVEL 1 BEGINNER GUIDE — Thread
    ====================================

    File: cmg/prod/client/util/client/cl_thread.lua
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
      * Named functions: 4
      * Background threads: 3
      * Always-running loops: 3
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
    CMG Per-Frame Tick Scheduler
    ============================

    Lots of CMG client files need a function to run once every game frame.
    Instead of creating hundreds of separate `while true do Wait(0)` threads,
    they register callbacks here:

        CMG.createThreadOnTick(myFunction, "Readable Debug Name")

    This file owns ONE main loop and calls every registered callback each frame.

    The callback receives a shared context table containing:
      context.playerPed
      context.playerCoords
      context.playerId
      context.vehicle
      context.weapon

    Development diagnostics:
      * callback taking >= 250 ms -> "SLOW" warning
      * callback yielding asynchronously -> error warning
      * callback running synchronously for >= 3000 ms -> watchdog warning,
        repeated at most every 5000 ms

    createThreadOnTick(callback, name, runFirst)
      runFirst=true inserts it at the start of the callback list.

    deleteThreadOnTick(callback)
      Removes that exact function from the scheduler.
]]

local tickCallbacks = {}
local tickDebugNames = {}

-- Shared context passed to every callback.
local tickContext = {}

local devDiagnosticsEnabled = false

local WATCHDOG_CHECK_INTERVAL_MS = 250
local WATCHDOG_HANG_THRESHOLD_MS = 3000
local WATCHDOG_PRINT_INTERVAL_MS = 5000
local SLOW_CALLBACK_THRESHOLD_MS = 250

local lastFullLoopAt = 0

-- Debug info about the callback currently executing.
local currentCallbackName = nil
local currentCallbackStartedAt = 0
local lastWatchdogPrintAt = 0


-- ============================================================
-- ENABLE EXTRA DEV DIAGNOSTICS
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    devDiagnosticsEnabled =
        CMG.isDevMode()
end)


-- ============================================================
-- MAIN EVERY-FRAME LOOP
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    lastFullLoopAt =
        GetGameTimer()

    while true do
        local frameBeforeCallbacks = 0

        if devDiagnosticsEnabled then
            frameBeforeCallbacks =
                GetFrameCount()
        end

        -- Refresh common player data once for every callback in this frame.
        tickContext.playerPed =
            CMG.getPlayerPed()

        tickContext.playerCoords =
            CMG.getPlayerCoords()

        tickContext.playerId =
            CMG.getPlayerId()

        tickContext.vehicle =
            CMG.getPlayerVehicle()

        tickContext.weapon =
            GetSelectedPedWeapon(
                tickContext.playerPed
            )

        for index = 1,
            #tickCallbacks do

            local callback =
                tickCallbacks[index]

            currentCallbackName =
                tickDebugNames[index]

            currentCallbackStartedAt =
                GetGameTimer()

            local callbackStart =
                currentCallbackStartedAt

            -- pcall prevents one broken tick callback from killing this central
            -- scheduler and therefore breaking every other tick.
            local success, errorMessage =
                pcall(
                    callback,
                    tickContext
                )

            local elapsedMs =
                GetGameTimer()
                - callbackStart

            currentCallbackName = nil

            if not success then
                print(errorMessage)

            elseif devDiagnosticsEnabled then
                if elapsedMs
                    >= SLOW_CALLBACK_THRESHOLD_MS then

                    local info =
                        debug.getinfo(
                            callback,
                            "S"
                        )

                    print(
                        string.format(
                            "CMG.createThreadOnTick SLOW: %q took %d ms (%s:%s)",
                            tickDebugNames[
                                index
                            ],
                            elapsedMs,
                            info.short_src,
                            tostring(
                                info.linedefined
                            )
                        )
                    )
                end

                -- Tick callbacks are expected to be synchronous. If one yields
                -- to another frame, the frame counter changes during pcall.
                local frameAfterCallback =
                    GetFrameCount()

                local framesTaken =
                    frameAfterCallback
                    - frameBeforeCallbacks

                if framesTaken > 0 then
                    local info =
                        debug.getinfo(
                            callback
                        )

                    print(
                        "CMG.createThreadOnTick ERROR: "
                        .. info.short_src
                        .. ":"
                        .. info.linedefined
                        .. " was called asyncronously! (took "
                        .. framesTaken
                        .. " frames)"
                    )

                    frameBeforeCallbacks =
                        frameAfterCallback
                end
            end
        end

        lastFullLoopAt =
            GetGameTimer()

        Wait(0)
    end
end)


-- ============================================================
-- WATCHDOG
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        Wait(
            WATCHDOG_CHECK_INTERVAL_MS
        )

        if currentCallbackName ~= nil then
            local now =
                GetGameTimer()

            local runningFor =
                now
                - currentCallbackStartedAt

            if runningFor
                >= WATCHDOG_HANG_THRESHOLD_MS
                and now - lastWatchdogPrintAt
                    >= WATCHDOG_PRINT_INTERVAL_MS then

                lastWatchdogPrintAt =
                    now

                print(
                    string.format(
                        "CMG.createThreadOnTick WATCHDOG: callback %q has run synchronously for ~%d ms without returning (possible hang).",
                        currentCallbackName,
                        runningFor
                    )
                )
            end
        end
    end
end)


-- ============================================================
-- DEBUG GETTERS
-- ============================================================

-- === HELPER FUNCTION: CMG.getThreadOnTickExecutingDebugName() ===
function CMG.getThreadOnTickExecutingDebugName()
    return currentCallbackName
end


-- === HELPER FUNCTION: CMG.getThreadOnTickMsSinceFullLoopCompleted() ===
function CMG.getThreadOnTickMsSinceFullLoopCompleted()
    return
        GetGameTimer()
        - lastFullLoopAt
end


-- ============================================================
-- REGISTER / REMOVE CALLBACKS
-- ============================================================

function CMG.createThreadOnTick(
    callback,
    debugName,
    runFirst
)
    assert(
        type(callback) == "function"
    )

    assert(
        type(debugName) == "string"
    )

    if runFirst then
        table.insert(
            tickCallbacks,
            1,
            callback
        )

        table.insert(
            tickDebugNames,
            1,
            debugName
        )
    else
        table.insert(
            tickCallbacks,
            callback
        )

        table.insert(
            tickDebugNames,
            debugName
        )
    end
end


function CMG.deleteThreadOnTick(
    callback
)
    local index =
        table.find(
            tickCallbacks,
            callback
        )

    if index then
        table.remove(
            tickCallbacks,
            index
        )

        -- The original decompile only visibly removed the callback array.
        -- Remove the matching name as well so indexes stay aligned and debug
        -- output remains meaningful.
        table.remove(
            tickDebugNames,
            index
        )
    end
end
