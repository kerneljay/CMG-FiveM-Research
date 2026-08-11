--[[
    LEVEL 1 BEGINNER GUIDE — Timerbars
    =======================================

    File: cmg/prod/client/util/client/cl_timerbars.lua
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
      * Named functions: 15
      * Background threads: 1
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
    HUD Timer-Bar Manager
    =====================

    This is the shared system used by many minigames/jobs to draw GTA-style
    timer bars.

    Two layers exist:

      1. CMG.createTimerBars()
         Creates a temporary local collection with:
           bars.push(label, value, optional...)
           bars.draw()
           bars.reset()
           bars.rowCount()

         Minigames such as One In The Chamber use this directly.

      2. Global HUD providers + duration timers
         Other systems can register:
           CMG.registerHudTimerBarProvider(name, buildFunction)
           CMG.setHudTimerBarProviderActive(name, true/false)

         buildFunction(timerBars) adds rows each frame.

         One-off countdowns use:
           CMG.addHudDurationTimer(id, label, seconds, onExpire)
           CMG.removeHudTimer(id)
           CMG.isHudTimerActive(id)
           CMG.getHudTimerRemainingSeconds(id)

    The manager only creates its every-frame rendering thread while at least
    one duration timer or enabled provider exists.
]]

-- ============================================================
-- SIMPLE TIMER-BAR COLLECTION
-- ============================================================

-- === HELPER FUNCTION: CMG.createTimerBars() ===
function CMG.createTimerBars()
    local collection = {
        timers = {}
    }

    function collection.push(
        label,
        value,
        option3,
        option4,
        option5
    )
        table.insert(
            collection.timers,
            {
                label,
                value,
                option3,
                option4,
                option5
            }
        )
    end

    -- === HELPER FUNCTION: collection.draw() ===
    function collection.draw()
        for rowIndex, row
            in ipairs(
                collection.timers
            ) do

            DrawGTATimerBar(
                row[1],
                row[2],
                rowIndex,
                row[3],
                row[4],
                row[5]
            )
        end
    end

    -- === HELPER FUNCTION: collection.reset() ===
    function collection.reset()
        collection.timers = {}
    end

    -- === HELPER FUNCTION: collection.rowCount() ===
    function collection.rowCount()
        return
            #collection.timers
    end

    return collection
end


-- ============================================================
-- GLOBAL PROVIDERS / DURATION TIMERS
-- ============================================================

local durationTimers = {}

local providers = {}

-- Maintains deterministic provider order.
local providerOrder = {}

local renderThreadRunning =
    false


local function formatDuration(
    milliseconds
)
    local totalSeconds =
        math.max(
            0,
            math.ceil(
                milliseconds
                / 1000
            )
        )

    local minutes =
        math.floor(
            totalSeconds / 60
        )

    local seconds =
        totalSeconds % 60

    return
        string.format(
            "%d:%02d",
            minutes,
            seconds
        )
end


-- === HELPER FUNCTION: anythingNeedsRendering() ===
local function anythingNeedsRendering()
    if next(durationTimers) ~= nil then
        return true
    end

    for _, providerName
        in ipairs(providerOrder) do

        local provider =
            providers[
                providerName
            ]

        if provider
            and provider.enabled then
            return true
        end
    end

    return false
end


-- === HELPER FUNCTION: buildAndDrawGlobalBars() ===
local function buildAndDrawGlobalBars()
    local now =
        GetGameTimer()

    local timerBars =
        CMG.createTimerBars()

    local expired = {}

    -- Sort timer IDs for stable display order.
    local timerIds = {}

    for timerId
        in pairs(durationTimers) do

        table.insert(
            timerIds,
            timerId
        )
    end

    table.sort(timerIds)

    for _, timerId
        in ipairs(timerIds) do

        local timer =
            durationTimers[
                timerId
            ]

        local remaining =
            timer.endTime - now

        if remaining > 0 then
            local label =
                timer.label
                or timerId

            local colour =
                remaining < 60000
                and "~r~"
                or "~y~"

            timerBars.push(
                colour
                    .. tostring(label)
                    .. "~w~",
                formatDuration(
                    remaining
                )
            )
        else
            table.insert(
                expired,
                {
                    timerId =
                        timerId,

                    onExpire =
                        timer.onExpire
                }
            )
        end
    end

    -- Delete expired entries AFTER iterating.
    for _, data
        in ipairs(expired) do

        durationTimers[
            data.timerId
        ] = nil

        if data.onExpire then
            data.onExpire()
        end
    end

    -- Let enabled providers append their own custom rows.
    for _, providerName
        in ipairs(providerOrder) do

        local provider =
            providers[
                providerName
            ]

        if provider
            and provider.enabled then

            provider.build(
                timerBars
            )
        end
    end

    if timerBars.rowCount() > 0 then
        timerBars.draw()
    end
end


-- ============================================================
-- START RENDER THREAD WHEN NEEDED
-- ============================================================

-- === HELPER FUNCTION: ensureRenderThread() ===
local function ensureRenderThread()
    if renderThreadRunning then
        return
    end

    if not anythingNeedsRendering() then
        return
    end

    renderThreadRunning = true

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        while renderThreadRunning do
            if not anythingNeedsRendering() then
                renderThreadRunning =
                    false
                break
            end

            buildAndDrawGlobalBars()

            Wait(0)
        end
    end)
end


-- ============================================================
-- PROVIDER API
-- ============================================================

function CMG.registerHudTimerBarProvider(
    providerName,
    buildFunction
)
    if providers[
        providerName
    ] then
        return
    end

    providers[
        providerName
    ] = {
        build =
            buildFunction,
        enabled =
            false
    }

    table.insert(
        providerOrder,
        providerName
    )
end


function CMG.setHudTimerBarProviderActive(
    providerName,
    enabled
)
    local provider =
        providers[
            providerName
        ]

    if not provider then
        return
    end

    provider.enabled =
        enabled == true

    ensureRenderThread()
end


-- ============================================================
-- DURATION-TIMER API
-- ============================================================

function CMG.addHudDurationTimer(
    timerId,
    label,
    durationSeconds,
    onExpire
)
    durationSeconds =
        math.max(
            0,
            durationSeconds
                or 0
        )

    durationTimers[timerId] = {
        endTime =
            GetGameTimer()
            + durationSeconds
                * 1000,

        label = label,

        onExpire = onExpire
    }

    ensureRenderThread()
end


function CMG.removeHudTimer(
    timerId
)
    local timer =
        durationTimers[
            timerId
        ]

    if not timer then
        return
    end

    durationTimers[
        timerId
    ] = nil

    -- Preserve original behaviour: if removeHudTimer is called AFTER its end
    -- time, run its expiration callback.
    if GetGameTimer()
        >= timer.endTime
        and timer.onExpire then

        timer.onExpire()
    end
end


function CMG.isHudTimerActive(
    timerId
)
    local timer =
        durationTimers[
            timerId
        ]

    if not timer then
        return false
    end

    return
        GetGameTimer()
        < timer.endTime
end


function CMG.getHudTimerRemainingSeconds(
    timerId
)
    local timer =
        durationTimers[
            timerId
        ]

    if not timer then
        return nil
    end

    local remainingMs =
        timer.endTime
        - GetGameTimer()

    if remainingMs <= 0 then
        return nil
    end

    return
        remainingMs / 1000
end
