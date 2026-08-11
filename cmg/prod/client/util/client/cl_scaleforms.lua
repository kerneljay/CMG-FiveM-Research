--[[
    LEVEL 1 BEGINNER GUIDE — Scaleforms
    ========================================

    File: cmg/prod/client/util/client/cl_scaleforms.lua
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
--[[
    Scaleform Wrapper
    =================

    GTA "Scaleforms" are Rockstar's built-in Flash-like UI movies.

    Scaleform(movieName) waits for the movie to load and returns an easy object:

      scaleform.Handle
        Raw GTA scaleform handle.

      scaleform.RunFunction(methodName, parameters)
        Calls a scaleform method.

      scaleform.Render2D(position)
        Draw at a screen position when position is supplied, otherwise draw
        fullscreen.

      scaleform.Render3D(position, rotation, scale)
        Draw the scaleform in the 3D world.

    Strings are added as text parameters, numbers as integer parameters and
    booleans as boolean parameters. A function parameter is simply executed;
    this lets callers manually add unusual Scaleform parameter types.
]]

-- === HELPER FUNCTION: Scaleform(movieName) ===
function Scaleform(movieName)
    local wrapper = {}

    local handle =
        RequestScaleformMovie(
            movieName
        )

    while not HasScaleformMovieLoaded(
        handle
    ) do
        Citizen.Wait(0)
    end


    function wrapper.RunFunction(
        methodName,
        parameters
    )
        BeginScaleformMovieMethod(
            handle,
            methodName
        )

        for _, value
            in ipairs(parameters) do

            local valueType =
                type(value)

            if valueType == "string" then
                BeginTextCommandScaleformString(
                    "STRING"
                )

                AddTextComponentSubstringPlayerName(
                    value
                )

                EndTextCommandScaleformString()

            elseif valueType == "number" then
                -- Lua has one normal numeric type, so the original
                -- decompiler's unreachable `type(value) == "float"` branch
                -- is intentionally represented as the integer parameter path.
                ScaleformMovieMethodAddParamInt(
                    value
                )

            elseif valueType == "boolean" then
                ScaleformMovieMethodAddParamBool(
                    value
                )

            elseif valueType == "function" then
                value()
            end
        end

        EndScaleformMovieMethod()
    end


    -- === HELPER FUNCTION: wrapper.Render2D(position) ===
    function wrapper.Render2D(position)
        if position then
            DrawScaleformMovie(
                handle,
                position.x,
                position.y,
                0.8,
                0.8,
                255,
                255,
                255,
                255,
                0
            )
        else
            DrawScaleformMovieFullscreen(
                handle,
                255,
                255,
                255,
                255,
                0
            )
        end
    end


    function wrapper.Render3D(
        position,
        rotation,
        scale
    )
        DrawScaleformMovie_3dSolid(
            handle,
            position.x,
            position.y,
            position.z,
            rotation.x,
            rotation.y,
            rotation.z,
            2.0,
            2.0,
            1.0,
            scale.x,
            scale.x,
            scale.x,
            2
        )
    end


    wrapper.Handle = handle

    return wrapper
end
