--[[
    LEVEL 1 BEGINNER GUIDE — Compass
    =====================================

    File: cmg/prod/client/core/cl_compass.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Compass feature.

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
      * Commands: showcompass
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
    Compass HUD
    ===========

    Draws the horizontal compass at the top of the screen.

    It supports:
      - N / NE / E / SE / S / SW / W / NW labels
      - small and large heading tick marks
      - a numeric heading readout
      - temporary compass pings/icons
      - /showcompass to let the user hide/show it
]]

-- Position of the compass on screen.
local compassPosition = {
    x = 0.375,
    y = 0.035,
    centered = true
}

local compassWidth = 0.25
local visibleDegrees = 180
local useCameraHeading = true
local degreesPerTick = 9.0

-- Small tick marks.
local minorTickColour = {r = 255, g = 255, b = 255, a = 255}
local minorTickSize = {w = 0.001, h = 0.003}

-- Main/cardinal labels.
local cardinalTextScale = 0.15
local cardinalTextYOffset = 0.01
local cardinalTextColour = {255, 255, 255, 255}
local drawCardinalTicks = true
local cardinalTickSize = {w = 0.001, h = 0.012}
local cardinalTickColour = {r = 0, g = 168, b = 255, a = 255}

-- Inter-cardinal labels (NE, SE, SW, NW).
local drawIntercardinalLabels = true
local intercardinalTextScale = 0.2
local intercardinalTextYOffset = 0.01
local intercardinalTextColour = {255, 255, 255, 255}
local drawIntercardinalTicks = true
local intercardinalTickSize = {w = 0.001, h = 0.006}
local intercardinalTickColour = {r = 255, g = 255, b = 255, a = 255}

-- Numeric heading indicator.
local headingTextScale = 0.2
local headingYOffset = 0.03
local headingTextColour = {255, 255, 255, 255}
local headingIndicatorSize = {w = 0.0015, h = 0.018}
local headingIndicatorColour = {r = 0, g = 168, b = 255, a = 255}

-- Angles temporarily added by CMG.addCompassPing().
local compassPings = {}

-- === HELPER FUNCTION: headingToDirection(heading) ===
local function headingToDirection(heading)
    heading = heading % 360.0

    if heading < 22.5 or heading >= 337.5 then return "N " end
    if heading < 67.5 then return "NE" end
    if heading < 112.5 then return "E" end
    if heading < 157.5 then return "SE" end
    if heading < 202.5 then return "S" end
    if heading < 247.5 then return "SW" end
    if heading < 292.5 then return "W" end
    return "NW"
end

-- The original helper rounds a number to a requested decimal place.

-- === HELPER FUNCTION: roundNumber(value, decimalPlaces) ===
local function roundNumber(value, decimalPlaces)
    local multiplier = 10 ^ (decimalPlaces or 0)
    return math.floor(value + 0.5 * multiplier)
end

-- === COMMAND /showcompass: runs when that command is entered ===
RegisterCommand("showcompass", function()
    if CMG.isDisplayVisible("compass", "user") then
        CMG.hideDisplay("compass", "user")
    else
        CMG.showDisplay("compass", "user")
    end
end, false)

local screenWidth = nil
local screenHeight = nil
local screenAspect = nil

-- === HELPER FUNCTION: drawCompass() ===
local function drawCompass()
    if not CMG.isDisplayVisible("compass") then
        return
    end

    -- How much screen-space one degree takes.
    local pixelsPerDegree = compassWidth / visibleDegrees

    local heading

    if useCameraHeading then
        local cameraRotation = GetGameplayCamRot(0)
        local cameraHeading = (cameraRotation.z + 360.0) % 360.0
        heading = 360.0 - cameraHeading
    else
        heading = 360.0 - GetEntityHeading(CMG.getPlayerPed())
    end

    -- Start half of the visible compass width before our current heading.
    local displayedHeading = heading - (visibleDegrees / 2)

    -- Snap to the next tick so marks stay evenly spaced.
    local offsetToTick = degreesPerTick - (displayedHeading % degreesPerTick)
    local screenX = compassPosition.x + offsetToTick * pixelsPerDegree
    displayedHeading = displayedHeading + offsetToTick

    local hasPings = #compassPings ~= 0

    if hasPings then
        screenWidth, screenHeight = GetActiveScreenResolution()
        screenAspect = screenWidth / screenHeight
    end

    while screenX < compassPosition.x + compassWidth do
        local normalisedHeading = displayedHeading

        if normalisedHeading < 0.0 then
            normalisedHeading = 360.0 + normalisedHeading
        elseif normalisedHeading > 360.0 then
            normalisedHeading = normalisedHeading - 360.0
        end

        -- Draw compass pings that are close to this heading tick.
        if hasPings then
            for _, pingHeading in pairs(compassPings) do
                if math.abs(normalisedHeading - pingHeading) < degreesPerTick / 2.0 then
                    DrawSprite(
                        "cmg_gang",
                        "ping_thick",
                        screenX,
                        compassPosition.y - 0.0175,
                        (0.03 / screenAspect) * 0.75,
                        0.0225,
                        0,
                        255,
                        255,
                        255,
                        255
                    )
                end
            end
        end

        -- 90 degree marks: N/E/S/W.
        if displayedHeading % 90.0 == 0 then
            if drawCardinalTicks then
                DrawRect(
                    screenX,
                    compassPosition.y,
                    cardinalTickSize.w,
                    cardinalTickSize.h,
                    cardinalTickColour.r,
                    cardinalTickColour.g,
                    cardinalTickColour.b,
                    cardinalTickColour.a
                )
            end

            CMG.DrawText(
                screenX,
                compassPosition.y + cardinalTextYOffset,
                headingToDirection(displayedHeading),
                cardinalTextScale,
                0,
                0,
                cardinalTextColour,
                true
            )

        -- 45 degree marks: NE/SE/SW/NW.
        elseif displayedHeading % 45.0 == 0 then
            if drawIntercardinalLabels then
                if drawIntercardinalTicks then
                    DrawRect(
                        screenX,
                        compassPosition.y,
                        intercardinalTickSize.w,
                        intercardinalTickSize.h,
                        intercardinalTickColour.r,
                        intercardinalTickColour.g,
                        intercardinalTickColour.b,
                        intercardinalTickColour.a
                    )
                end

                CMG.DrawText(
                    screenX,
                    compassPosition.y + intercardinalTextYOffset,
                    headingToDirection(displayedHeading),
                    intercardinalTextScale,
                    0,
                    0,
                    intercardinalTextColour,
                    true
                )
            end
        else
            -- Ordinary little compass tick.
            DrawRect(
                screenX,
                compassPosition.y,
                minorTickSize.w,
                minorTickSize.h,
                minorTickColour.r,
                minorTickColour.g,
                minorTickColour.b,
                minorTickColour.a
            )
        end

        displayedHeading = displayedHeading + degreesPerTick
        screenX = screenX + pixelsPerDegree * degreesPerTick
    end

    -- Current numeric heading centred above the compass.
    CMG.DrawText(
        compassPosition.x + compassWidth / 2,
        compassPosition.y - headingYOffset,
        tostring(roundNumber(heading)),
        headingTextScale,
        0,
        0,
        headingTextColour,
        true
    )

    DrawRect(
        compassPosition.x + compassWidth / 2,
        compassPosition.y,
        headingIndicatorSize.w,
        headingIndicatorSize.h,
        headingIndicatorColour.r,
        headingIndicatorColour.g,
        headingIndicatorColour.b,
        headingIndicatorColour.a
    )

    -- Pings last only for this draw pass; callers add them again when needed.
    if hasPings then
        table.wipe(compassPings)
    end
end

CMG.createThreadOnTick(drawCompass, "Compass")

-- === HELPER FUNCTION: CMG.addCompassPing(heading) ===
function CMG.addCompassPing(heading)
    table.insert(compassPings, heading)
end
