--[[
    LEVEL 1 BEGINNER GUIDE — Announce
    ======================================

    File: cmg/prod/client/staff/cl_announce.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Announce feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 4
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: 6bdd89917d, 0be1483154, 3d47766955, d87daca74d
      * Local event handlers: 3d47766955
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

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        CreateThread(function()
            while secondsRemaining
                ~= -1 do

                secondsRemaining =
                    secondsRemaining - 1

                Wait(1000)
            end
        end)

        -- Rebuild the Scaleform text once per second so the countdown updates.

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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

-- === NETWORK EVENT: receives "3d47766955" from server/another network source ===
RegisterNetEvent("3d47766955")

AddEventHandler(
    "3d47766955",
    function(message)
        if message == nil then
            return
        end

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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
