--[[
    Global / Staff Announcement Display
    ====================================

    This client has three announcement styles:

      1. Server-restart countdown
         Event 0be1483154(seconds, scheduled)
         Displays a large "Scheduled Server Restart" or "Unscheduled Server
         Restart" message and counts down once per second.

         Event 6bdd89917d tells the currently-running restart display to stop.

      2. CMG announcement
         Event 3d47766955(message)
         Shows a yellow "CMG Announcement" Scaleform for six seconds.

      3. Small announcement
         Event d87daca74d(title, message, colour, duration)
         Routes into CMG.announceMpSmallMsg(...).

         Titles in the exact format LOOKOUT1 ... LOOKOUT5 are normalised to
         "LOOKOUT" and can be filtered by gang-lookout alert settings.

    Hash-looking event names are deliberately unchanged.
]]

local cancelRestartDisplay = false


-- ============================================================
-- STOP ACTIVE RESTART DISPLAY
-- ============================================================

RegisterNetEvent(
    "6bdd89917d",
    function()
        cancelRestartDisplay =
            true
    end
)


-- ============================================================
-- SERVER-RESTART COUNTDOWN
-- ============================================================

RegisterNetEvent(
    "0be1483154",
    function(seconds, scheduled)
        if seconds == nil then
            return
        end

        local secondsRemaining =
            math.floor(seconds)

        local activeScaleform =
            nil

        -- Countdown timer.
        CreateThread(function()
            while secondsRemaining
                ~= -1 do

                secondsRemaining =
                    secondsRemaining - 1

                Wait(1000)
            end
        end)

        -- Rebuild the Scaleform text once per second so the countdown updates.
        CreateThread(function()
            while secondsRemaining
                ~= -1 do

                activeScaleform =
                    RequestScaleformMovie(
                        "MIDSIZED_MESSAGE"
                    )

                while not HasScaleformMovieLoaded(
                    activeScaleform
                ) do
                    Wait(0)
                end

                BeginScaleformMovieMethod(
                    activeScaleform,
                    "SHOW_SHARD_MIDSIZED_MESSAGE"
                )

                ScaleformMovieMethodAddParamTextureNameString(
                    scheduled
                    and "~r~Scheduled Server Restart"
                    or "~r~Unscheduled Server Restart"
                )

                if secondsRemaining ~= 0 then
                    ScaleformMovieMethodAddParamTextureNameString(
                        "In ~r~"
                        .. tostring(
                            secondsRemaining
                        )
                        .. "~s~ seconds!"
                    )
                else
                    ScaleformMovieMethodAddParamTextureNameString(
                        "~r~Restarting"
                    )
                end

                EndScaleformMovieMethod()

                Wait(1000)

                if cancelRestartDisplay then
                    cancelRestartDisplay =
                        false
                    return
                end
            end
        end)

        -- Draw the most recently-built scaleform every frame.
        CreateThread(function()
            Wait(200)

            while true do
                if activeScaleform then
                    DrawScaleformMovieFullscreen(
                        activeScaleform,
                        255,
                        255,
                        255,
                        255,
                        0
                    )
                end

                if cancelRestartDisplay then
                    return
                end

                Wait(0)
            end
        end)
    end
)


-- ============================================================
-- SIX-SECOND CMG ANNOUNCEMENT
-- ============================================================

RegisterNetEvent("3d47766955")

AddEventHandler(
    "3d47766955",
    function(message)
        if message == nil then
            return
        end

        CreateThread(function()
            local startedAt =
                GetGameTimer()

            local scaleform =
                RequestScaleformMovie(
                    "MIDSIZED_MESSAGE"
                )

            while not HasScaleformMovieLoaded(
                scaleform
            ) do
                Wait(0)
            end

            BeginScaleformMovieMethod(
                scaleform,
                "SHOW_SHARD_MIDSIZED_MESSAGE"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                "~y~CMG Announcement"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                message
            )

            ScaleformMovieMethodAddParamInt(
                5
            )

            ScaleformMovieMethodAddParamBool(
                true
            )

            ScaleformMovieMethodAddParamBool(
                false
            )

            EndScaleformMovieMethod()

            while startedAt + 6000
                > GetGameTimer() do

                DrawScaleformMovieFullscreen(
                    scaleform,
                    255,
                    255,
                    255,
                    255,
                    0
                )

                Wait(0)
            end
        end)
    end
)


-- ============================================================
-- LOOKOUT TITLE PARSER
-- ============================================================

local function getLookoutNumber(
    title
)
    if not title
        or #title ~= 8 then
        return nil
    end

    if title:sub(1, 7)
        ~= "LOOKOUT" then
        return nil
    end

    local lookoutNumber =
        tonumber(
            title:sub(8, 8)
        )

    if not lookoutNumber
        or lookoutNumber < 1
        or lookoutNumber > 5 then
        return nil
    end

    return lookoutNumber
end


-- ============================================================
-- NETWORKED SMALL ANNOUNCEMENT
-- ============================================================

RegisterNetEvent(
    "d87daca74d",
    function(
        title,
        message,
        colour,
        duration
    )
        local lookoutNumber =
            getLookoutNumber(
                title
            )

        if lookoutNumber
            and CMG.isGangLookoutAlertDisabled(
                lookoutNumber
            ) then
            return
        end

        if lookoutNumber then
            title = "LOOKOUT"
        end

        CMG.announceMpSmallMsg(
            title,
            message,
            colour,
            duration
        )
    end
)


-- ============================================================
-- DRAW A SMALL MIDSIZED_MESSAGE SCALEFORM
-- ============================================================

function CMG.announceMpSmallMsg(
    title,
    message,
    colour,
    duration
)
    local scaleform =
        Scaleform(
            "MIDSIZED_MESSAGE"
        )

    scaleform.RunFunction(
        "SHOW_SHARD_MIDSIZED_MESSAGE",
        {
            title,
            message,
            colour,
            false,
            false
        }
    )

    PlaySoundFrontend(
        -1,
        "CHECKPOINT_NORMAL",
        "HUD_MINI_GAME_SOUNDSET",
        true
    )

    local finished = false

    SetTimeout(
        duration,
        function()
            finished = true
        end
    )

    while not finished do
        scaleform.Render2D()
        Wait(0)
    end
end
