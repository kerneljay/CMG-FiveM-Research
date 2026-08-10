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

    function collection.reset()
        collection.timers = {}
    end

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

local function ensureRenderThread()
    if renderThreadRunning then
        return
    end

    if not anythingNeedsRendering() then
        return
    end

    renderThreadRunning = true

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
