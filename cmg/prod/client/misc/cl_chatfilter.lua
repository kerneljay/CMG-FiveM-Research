--[[
    Chat Filter Warning Overlay
    ===========================

    Event 17b65bec14(durationSeconds, message)
      Shows a large red "~r~WARNING" Scaleform message.

    The original client toggles an internal display flag each time the event
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
