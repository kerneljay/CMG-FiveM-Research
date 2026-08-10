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
