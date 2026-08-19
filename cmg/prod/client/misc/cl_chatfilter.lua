--[[
    LEVEL 1 BEGINNER GUIDE — Chatfilter
    ========================================

    File: cmg/prod/client/misc/cl_chatfilter.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Chatfilter feature.

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
      * Incoming network events: 17b65bec14
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
    Chat Filter Warning Overlay
    ===========================

    Event 17b65bec14(durationSeconds, message)
      Shows a large red "~r~WARNING" Scaleform message.

    The original client toggles an internal display stateFlag each time the event
    fires and keeps a tiny call counter capped at 2. That behaviour is
    preserved because the server may intentionally fire the event twice.
]]

local warningVisible = false
local warningCallCount = 0

RegisterNetEvent(
    "17b65bec14",
    function(durationSeconds, message)
        warningVisible = not warningVisible

        Citizen.Wait(10)

        warningCallCount =
            math.min(
                warningCallCount + 1,
                2
            )

        local startedAt = GetGameTimer()

        local scaleform =
            RequestScaleformMovie(
                "mp_big_message_freemode"
            )

        while not HasScaleformMovieLoaded(
            scaleform
        ) do
            Citizen.Wait(0)
        end

        while
            GetGameTimer() - startedAt
            < durationSeconds * 1000
        do
            -- Preserve the original "second call can keep drawing" rule.
            if not warningVisible
                and warningCallCount ~= 2 then
                break
            end

            BeginScaleformMovieMethod(
                scaleform,
                "SHOW_SHARD_WASTED_MP_MESSAGE"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                "~r~WARNING"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                message
            )

            ScaleformMovieMethodAddParamInt(5)

            EndScaleformMovieMethod()

            DrawScaleformMovieFullscreen(
                scaleform,
                255,
                255,
                255,
                255,
                0
            )

            Citizen.Wait(0)
        end
    end
)
