--[[
    LEVEL 1 BEGINNER GUIDE — Afk
    =================================

    File: cmg/prod/client/misc/cl_afk.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Afk feature.

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
      * Background threads: 2
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 2729884a22, b2bd09d434, 5fee351479
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
    AFK / Idle Detection
    ====================

    The player has a 15-minute idle timer (900 seconds).

    "Activity" in the original client means either:
      * the gameplay camera rotation changed
      * another scripted camera is active
      * control 249 is held

    If the camera/input remains unchanged:
      * at 7m30s remaining -> red notification
      * at 3m45s remaining -> large Scaleform warning
      * organisation/emergency-service players also send server log/status
        updates around the 5/10/15 minute idle marks
      * at zero -> this client becomes AFK and tells the server

    Moving again resets the full 900-second timer and clears AFK.

    Developer mode disables this AFK system.

    CMG.isClientAFK() lets other scripts query the state.
]]

local AFK_TIMEOUT_SECONDS = 900

local showPlayerWarnings = true
local idleCountdownStarted = false
local secondsRemaining = AFK_TIMEOUT_SECONDS

local organisationWarningSent = false
local isAfk = false

local lastCameraRotation = nil


-- ============================================================
-- LARGE RED AFK WARNING
-- ============================================================

-- === HELPER FUNCTION: showAfkScaleformWarning() ===
local function showAfkScaleformWarning()

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        local scaleform =
            RequestScaleformMovie(
                "mp_big_message_freemode"
            )

        while not HasScaleformMovieLoaded(
            scaleform
        ) do
            Citizen.Wait(0)
        end

        while idleCountdownStarted do
            Citizen.Wait(0)

            BeginScaleformMovieMethod(
                scaleform,
                "SHOW_SHARD_WASTED_MP_MESSAGE"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                "~r~WARNING"
            )

            ScaleformMovieMethodAddParamTextureNameString(
                string.format(
                    "You will be set to AFK in %s seconds",
                    secondsRemaining
                )
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
        end
    end)
end


-- ============================================================
-- AFK MONITOR
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    DisableIdleCamera(true)

    if CMG.isDevMode() then
        return false
    end

    while true do
        local ped =
            CMG.getPlayerPed()

        if ped then
            local cameraRotation =
                GetGameplayCamRot(2)

            local clockedOnOrganisation =
                CMG.isEmergencyService()
                or CMG.isClientClockedOnOrganisation()

            -- Scripted camera or control 249 counts as activity.
            local specialActivity =
                GetRenderingCam() ~= -1
                or IsControlPressed(
                    0,
                    249
                )

            local cameraUnchanged =
                lastCameraRotation
                == cameraRotation

            if cameraUnchanged
                and not specialActivity then

                if secondsRemaining > 0 then
                    -- Organisation status updates preserved exactly from the
                    -- old timer values.
                    if clockedOnOrganisation
                        and secondsRemaining < 600
                        and not organisationWarningSent then

                        organisationWarningSent = true

                        TriggerServerEvent(
                            "2729884a22",
                            "5 minutes"
                        )
                    end

                    if secondsRemaining == 302 then
                        organisationWarningSent = false
                    end

                    if secondsRemaining == 301
                        and not organisationWarningSent
                        and clockedOnOrganisation then

                        TriggerServerEvent(
                            "2729884a22",
                            "10 minutes"
                        )

                        organisationWarningSent = true
                    end

                    if showPlayerWarnings
                        and secondsRemaining
                            == math.ceil(
                                AFK_TIMEOUT_SECONDS / 4
                            ) then

                        showAfkScaleformWarning()
                    end

                    if showPlayerWarnings
                        and secondsRemaining
                            == math.ceil(
                                AFK_TIMEOUT_SECONDS / 2
                            ) then

                        tCMG.notify(
                            string.format(
                                "~r~You will be set to AFK in: %s seconds",
                                secondsRemaining
                            )
                        )
                    end

                    secondsRemaining =
                        secondsRemaining - 1

                    idleCountdownStarted =
                        true

                elseif not isAfk then
                    if clockedOnOrganisation then
                        TriggerServerEvent(
                            "2729884a22",
                            "15 minutes - Player set to AFK"
                        )

                        TriggerServerEvent(
                            "b2bd09d434"
                        )
                    end

                    isAfk = true
                end

            else
                -- The player moved/used a relevant input: reset everything.
                if organisationWarningSent
                    and clockedOnOrganisation then

                    TriggerServerEvent(
                        "2729884a22",
                        "No longer AFK - player moved again"
                    )

                    organisationWarningSent =
                        false
                end

                if isAfk then
                    TriggerServerEvent(
                        "5fee351479"
                    )
                end

                idleCountdownStarted = false
                secondsRemaining =
                    AFK_TIMEOUT_SECONDS
                isAfk = false
            end

            lastCameraRotation =
                cameraRotation
        end

        Wait(1000)
    end
end)


-- === HELPER FUNCTION: CMG.isClientAFK() ===
function CMG.isClientAFK()
    return isAfk
end
