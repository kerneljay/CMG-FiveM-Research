--[[
    LEVEL 1 BEGINNER GUIDE — Weathervoter
    ==========================================

    File: cmg/prod/client/misc/cl_weathervoter.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Weathervoter feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 14
      * Background threads: 2
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: d119eeb42f, 6e6fb36867
      * Local event handlers: none found by static scan
      * Server events sent: 1dc4f2e900
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
    Time / Weather Controller
    =========================

    This client keeps GTA's local clock and weather in sync with CMG.

    Default weather:
      Halloween -> HALLOWEEN
      Christmas -> XMAS
      otherwise -> EXTRASUNNY

    Public helpers:
      CMG.getCurrentTime()
      CMG.getCurrentWeather()
      CMG.setTime(hour, minute, second)
      CMG.overrideTime(hour, minute, second)
      CMG.cancelOverrideTimeWeather()
      CMG.setWeather(weatherName, smoothTransition)
      CMG.setTimeFrozen(frozen)
      CMG.startTimelapse(minutesToAdvance, durationSeconds)
      CMG.stopTimelapse()
      CMG.isTimelapseRunning()

    Network events:
      d119eeb42f(hour, minute, second) -> normal server time update
      6e6fb36867(weather, smooth)       -> normal server weather update

    Normal server updates are ignored while the player is inside an event.
]]

-- === HELPER FUNCTION: getDefaultWeather() ===
local function getDefaultWeather()
    if CMG.isHalloween() then
        return "HALLOWEEN"
    end

    if CMG.isChristmas() then
        return "XMAS"
    end

    return "EXTRASUNNY"
end


local currentWeather =
    getDefaultWeather()

local currentTime = {
    h = 12,
    m = 0,
    s = 0
}

local timeOverridden = false
local previousWeather =
    currentWeather

-- -1 means no weather transition is currently running.
local weatherTransitionStartedAt = -1

local timeFrozen = false

local timelapseRunning = false


-- ============================================================
-- BASIC GETTERS
-- ============================================================

-- === HELPER FUNCTION: CMG.getCurrentTime() ===
function CMG.getCurrentTime()
    return
        currentTime.h,
        currentTime.m,
        currentTime.s
end


-- === HELPER FUNCTION: CMG.getCurrentWeather() ===
function CMG.getCurrentWeather()
    return currentWeather
end


-- ============================================================
-- APPLY WEATHER
-- ============================================================

-- === HELPER FUNCTION: applyCurrentWeather() ===
local function applyCurrentWeather()
    if weatherTransitionStartedAt == -1 then
        ClearOverrideWeather()
        ClearWeatherTypePersist()

        SetWeatherTypePersist(
            currentWeather
        )

        SetWeatherTypeNow(
            currentWeather
        )

        SetWeatherTypeNowPersist(
            currentWeather
        )

        local snow =
            currentWeather == "XMAS"

        SetForceVehicleTrails(snow)
        SetForcePedFootstepsTracks(snow)

        return
    end

    local transitionProgress =
        (
            GetGameTimer()
            - weatherTransitionStartedAt
        )
        / 60000.0

    if transitionProgress >= 1.0 then
        weatherTransitionStartedAt =
            -1
        return
    end

    SetWeatherTypeTransition(
        GetHashKey(previousWeather),
        GetHashKey(currentWeather),
        transitionProgress
    )
end


-- ============================================================
-- TIME / WEATHER API
-- ============================================================

function CMG.setTime(
    hour,
    minute,
    second
)
    currentTime = {
        h = hour,
        m = minute,
        s = second
    }
end


function CMG.overrideTime(
    hour,
    minute,
    second
)
    currentTime.h = hour
    currentTime.m = minute
    currentTime.s = second

    timeOverridden = true
end


-- === HELPER FUNCTION: CMG.cancelOverrideTimeWeather() ===
function CMG.cancelOverrideTimeWeather()
    timeOverridden = false

    TriggerServerEvent(
        "1dc4f2e900"
    )
end


function CMG.setWeather(
    weatherName,
    smoothTransition
)
    previousWeather =
        currentWeather

    currentWeather =
        weatherName

    if smoothTransition
        and currentWeather
            ~= previousWeather then

        weatherTransitionStartedAt =
            GetGameTimer()
    else
        weatherTransitionStartedAt =
            -1
    end
end


-- === HELPER FUNCTION: CMG.setTimeFrozen(frozen) ===
function CMG.setTimeFrozen(frozen)
    timeFrozen =
        frozen == true
end


-- ============================================================
-- APPLY CLOCK / WEATHER EVERY FRAME
-- ============================================================

-- === HELPER FUNCTION: timeWeatherTick() ===
local function timeWeatherTick()
    NetworkOverrideClockTime(
        currentTime.h,
        currentTime.m,
        currentTime.s
    )

    applyCurrentWeather()
end


CMG.createThreadOnTick(
    timeWeatherTick,
    "Time And Weather"
)


-- ============================================================
-- NORMAL SERVER SYNCHRONISATION
-- ============================================================

RegisterNetEvent(
    "d119eeb42f",
    function(hour, minute, second)
        if not CMG.inEvent() then
            CMG.setTime(
                hour,
                minute,
                second
            )
        end
    end
)


RegisterNetEvent(
    "6e6fb36867",
    function(weatherName, smoothTransition)
        if not CMG.inEvent() then
            CMG.setWeather(
                weatherName,
                smoothTransition
            )
        end
    end
)


-- ============================================================
-- ADVANCE NORMAL TIME
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    SetWeatherOwnedByNetwork(false)

    while true do
        Wait(1000)

        if not timeFrozen then
            currentTime.s =
                currentTime.s + 10

            if currentTime.s >= 60 then
                currentTime.s = 0
                currentTime.m =
                    currentTime.m + 1
            end

            if currentTime.m >= 60 then
                currentTime.m = 0
                currentTime.h =
                    currentTime.h + 1
            end

            if currentTime.h >= 24 then
                currentTime.h = 0
            end

            if not timeOverridden then
                CMG.setTime(
                    currentTime.h,
                    currentTime.m,
                    currentTime.s
                )
            end
        end
    end
end)


-- ============================================================
-- TIMELAPSE
-- ============================================================

local function runTimelapse(
    minutesToAdvance,
    durationMs
)
    if timelapseRunning then
        return
    end

    timelapseRunning = true
    timeOverridden = false

    local startedAt =
        GetGameTimer()

    local startingMinutes =
        currentTime.h * 60
        + currentTime.m
        + currentTime.s / 60.0

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        while timelapseRunning do
            local progress =
                (
                    GetGameTimer()
                    - startedAt
                )
                / durationMs

            progress =
                math.min(
                    progress,
                    1.0
                )

            -- Smoothstep easing: x²(3 - 2x).
            local eased =
                progress
                * progress
                * (
                    3.0
                    - 2.0 * progress
                )

            local totalMinutes =
                (
                    startingMinutes
                    + minutesToAdvance
                        * eased
                )
                % 1440

            currentTime.h =
                math.floor(
                    totalMinutes / 60
                )

            currentTime.m =
                math.floor(
                    totalMinutes % 60
                )

            currentTime.s =
                math.floor(
                    (
                        totalMinutes
                        - math.floor(
                            totalMinutes
                        )
                    )
                    * 60
                )

            if progress >= 1.0 then
                timelapseRunning =
                    false
                break
            end

            Wait(0)
        end
    end)
end


function CMG.startTimelapse(
    minutesToAdvance,
    durationSeconds
)
    runTimelapse(
        minutesToAdvance,
        math.floor(
            durationSeconds
            * 1000
        )
    )
end


-- === HELPER FUNCTION: CMG.stopTimelapse() ===
function CMG.stopTimelapse()
    timelapseRunning = false
end


-- === HELPER FUNCTION: CMG.isTimelapseRunning() ===
function CMG.isTimelapseRunning()
    return timelapseRunning
end
