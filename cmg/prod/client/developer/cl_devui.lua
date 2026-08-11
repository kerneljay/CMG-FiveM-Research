--[[
    LEVEL 1 BEGINNER GUIDE — Devui
    ===================================

    File: cmg/prod/client/developer/cl_devui.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: developer/admin testing utilities, specifically the Devui feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: moneyUILoaded
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
    CMG SCREEN UI DEBUG
    Beginner-Friendly Rewrite
    =================================================================

    WHAT THIS FILE DOES
    -------------------
    This is a developer-only screen/debug utility.

    When "Screen Debug" is enabled in the developer menu it:

      1. Moves the minimap slightly upward.
      2. Draws a black debug strip at the bottom of the screen.
      3. Shows:
           - player coordinates
           - camera coordinates
           - camera FOV
           - FPS
           - frame time in milliseconds
           - game timer
           - frame count
           - streaming request count
           - player speed
           - object count
           - vehicle count
           - ped count
           - active player count
      4. Tells the NUI whether debug mode is enabled.
      5. Patches DrawScaleformMovieFullscreen so fullscreen scaleforms are
         resized/moved upward while the debug strip is visible.

    There are NO server events in this file.

    The original decompile used names such as workValue, workValue3 and workValue2.
    Those were temporary decompiler register names, not meaningful names from
    the original developer.
]]

---------------------------------------------------------------------
-- 1. DEBUG MENU STATE
---------------------------------------------------------------------

-- CMG.registerDevMenuState() returns a state table managed by the framework.
local ScreenDebug =
    CMG.registerDevMenuState(
        "Screen UI",
        {
            enabled = false,
        }
    )

---------------------------------------------------------------------
-- 2. DEVELOPER MENU CHECKBOX
---------------------------------------------------------------------

CMG.registerDevMenuItems(
    "Displays",
    function()
        RageUI.Checkbox(
            "Screen Debug",

            "Whether to draw basic debug information at the bottom of the screen.",

            ScreenDebug.enabled,

            {},

            function(
                _hovered,
                _active,
                _selected,
                checked
            )
                ScreenDebug.enabled =
                    checked == true
            end
        )
    end
)

---------------------------------------------------------------------
-- 3. CACHED DEBUG STATISTICS
---------------------------------------------------------------------
--
-- Some values are expensive enough that the original only refreshes them
-- every 250 ms instead of calculating them every frame.
---------------------------------------------------------------------

local DebugStats = {
    frameTimeMs = 0.0,

    pedCount = 0,
    vehicleCount = 0,
    objectCount = 0,
    playerCount = 0,

    lastUpdateAt = 0,
}

-- Text scale used for every line in the debug overlay.
local DEBUG_TEXT_SCALE = 0.25

-- Used to detect when the checkbox changes.
local lastDebugEnabledState = false

---------------------------------------------------------------------
-- 4. TELL OTHER CODE WHETHER DEBUG UI IS BEING DRAWN
---------------------------------------------------------------------
--
-- Other CMG code can call:
--
--     local drawing, height = CMG.isDrawingDebugUI()
--
-- This helps other HUD elements avoid overlapping the debug strip.
---------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.isDrawingDebugUI() ===
function CMG.isDrawingDebugUI()
    if ScreenDebug.enabled then
        -- CMG.getTextHeight() can return more than one value.
        -- Preserve all of those return values like the source did.
        local height, extraA, extraB =
            CMG.getTextHeight(
                DEBUG_TEXT_SCALE,
                1
            )

        return
            true,
            height,
            extraA,
            extraB
    end

    return false, 0.0
end

---------------------------------------------------------------------
-- 5. NUI LOADED CALLBACK
---------------------------------------------------------------------
--
-- When the money/HUD NUI announces that it has loaded, immediately tell it
-- whether debug mode is currently enabled.
---------------------------------------------------------------------

RegisterNUICallback(
    "moneyUILoaded",
    function()
        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            toggleDebugUI = true,
            debugEnabled =
                ScreenDebug.enabled,
        })
    end
)

---------------------------------------------------------------------
-- 6. MOVE THE MINIMAP WHEN DEBUG MODE CHANGES
---------------------------------------------------------------------

-- === HELPER FUNCTION: applyDebugLayoutIfChanged() ===
local function applyDebugLayoutIfChanged()
    -------------------------------------------------------------
    -- Nothing to do if the checkbox has not changed.
    -------------------------------------------------------------

    if lastDebugEnabledState
        == ScreenDebug.enabled
    then
        return
    end

    lastDebugEnabledState =
        ScreenDebug.enabled

    -------------------------------------------------------------
    -- Run the minimap refresh asynchronously just like the source.
    -------------------------------------------------------------

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(
        function()
            local debugHeight =
                CMG.getTextHeight(
                    DEBUG_TEXT_SCALE,
                    1
                )

            if not ScreenDebug.enabled then
                debugHeight = 0.0
            end

            -----------------------------------------------------
            -- MAIN MINIMAP
            -----------------------------------------------------

            SetMinimapComponentPosition(
                "minimap",
                "L",
                "B",

                -0.0045,
                0.002 - debugHeight,

                0.15,
                0.188888
            )

            -----------------------------------------------------
            -- MINIMAP MASK
            -----------------------------------------------------

            SetMinimapComponentPosition(
                "minimap_mask",
                "L",
                "B",

                0.02,
                0.032 - debugHeight,

                0.111,
                0.159
            )

            -----------------------------------------------------
            -- MINIMAP BLUR / BACKGROUND
            -----------------------------------------------------

            SetMinimapComponentPosition(
                "minimap_blur",
                "L",
                "B",

                -0.03,
                0.022 - debugHeight,

                0.266,
                0.237
            )

            -----------------------------------------------------
            -- GTA often needs the big map toggled once for minimap
            -- component-position changes to visibly refresh.
            -----------------------------------------------------

            SetRadarBigmapEnabled(
                true,
                false
            )

            Wait(0)

            SetRadarBigmapEnabled(
                false,
                false
            )

            Wait(0)

            -----------------------------------------------------
            -- Tell the rest of the CMG HUD that the minimap anchor moved.
            -----------------------------------------------------

            CMG.refreshCachedMinimapAnchor()

            -----------------------------------------------------
            -- Update NUI.
            -----------------------------------------------------

            -- Beginner: sends a Lua table to the HTML/JavaScript UI.
            SendNUIMessage({
                toggleDebugUI = true,
                debugEnabled =
                    ScreenDebug.enabled,
            })
        end
    )
end

---------------------------------------------------------------------
-- 7. REFRESH EXPENSIVE DEBUG STATISTICS
---------------------------------------------------------------------

-- === HELPER FUNCTION: updateCachedDebugStats() ===
local function updateCachedDebugStats()
    local now =
        GetGameTimer()

    -------------------------------------------------------------
    -- Only update these every 250 milliseconds.
    -------------------------------------------------------------

    if now - DebugStats.lastUpdateAt
        <= 250
    then
        return
    end

    -------------------------------------------------------------
    -- GetFrameTime() is seconds per frame.
    --
    -- Example:
    --     0.0167 seconds ~= 16.7 ms ~= 60 FPS
    -------------------------------------------------------------

    DebugStats.frameTimeMs =
        GetFrameTime()
        * 1000.0

    DebugStats.pedCount =
        #GetGamePool("CPed")

    DebugStats.vehicleCount =
        #CMG.getAllVehicles()

    DebugStats.objectCount =
        #GetGamePool("CObject")

    DebugStats.playerCount =
        #GetActivePlayers()

    DebugStats.lastUpdateAt =
        now
end

---------------------------------------------------------------------
-- 8. SAFE FPS CALCULATION
---------------------------------------------------------------------

-- === HELPER FUNCTION: getCurrentFps() ===
local function getCurrentFps()
    if DebugStats.frameTimeMs
        <= 0.0
    then
        return 0.0
    end

    return
        1000.0
        / DebugStats.frameTimeMs
end

---------------------------------------------------------------------
-- 9. DRAW ONE DEBUG TEXT ITEM
---------------------------------------------------------------------

local function drawDebugText(
    x,
    y,
    text
)
    CMG.DrawText(
        x,
        y,
        text,
        DEBUG_TEXT_SCALE
    )
end

---------------------------------------------------------------------
-- 10. MAIN DEBUG OVERLAY
---------------------------------------------------------------------

-- === HELPER FUNCTION: drawScreenDebug() ===
local function drawScreenDebug()
    -------------------------------------------------------------
    -- Apply minimap/NUI changes if the checkbox was toggled.
    -------------------------------------------------------------

    applyDebugLayoutIfChanged()

    if not ScreenDebug.enabled then
        return
    end

    -------------------------------------------------------------
    -- Refresh cached counts.
    -------------------------------------------------------------

    updateCachedDebugStats()

    -------------------------------------------------------------
    -- Work out how tall the black strip is.
    -------------------------------------------------------------

    local debugHeight =
        CMG.getTextHeight(
            DEBUG_TEXT_SCALE,
            1
        )

    -------------------------------------------------------------
    -- PLAYER COORDINATES
    -------------------------------------------------------------

    local playerCoords =
        CMG.getPlayerCoords()

    drawDebugText(
        0.0,
        1.0 - debugHeight,

        string.format(
            "P:(%s, %s, %s)",

            math.round(
                playerCoords.x,
                1
            ),

            math.round(
                playerCoords.y,
                1
            ),

            math.round(
                playerCoords.z,
                1
            )
        )
    )

    -------------------------------------------------------------
    -- CAMERA COORDINATES
    -------------------------------------------------------------

    local cameraCoords =
        GetFinalRenderedCamCoord()

    drawDebugText(
        0.09,
        1.0 - debugHeight,

        string.format(
            "C:(%s, %s, %s)",

            math.round(
                cameraCoords.x,
                1
            ),

            math.round(
                cameraCoords.y,
                1
            ),

            math.round(
                cameraCoords.z,
                1
            )
        )
    )

    -------------------------------------------------------------
    -- CAMERA FIELD OF VIEW
    -------------------------------------------------------------

    drawDebugText(
        0.18,
        1.0 - debugHeight,

        string.format(
            "FOV: %s",

            math.round(
                GetFinalRenderedCamFov(),
                1
            )
        )
    )

    -------------------------------------------------------------
    -- FPS
    -------------------------------------------------------------

    drawDebugText(
        0.22,
        1.0 - debugHeight,

        string.format(
            "FPS: %s",

            math.round(
                getCurrentFps(),
                1
            )
        )
    )

    -------------------------------------------------------------
    -- FRAME TIME
    -------------------------------------------------------------

    drawDebugText(
        0.26,
        1.0 - debugHeight,

        string.format(
            "(%sms)",

            math.round(
                DebugStats.frameTimeMs,
                1
            )
        )
    )

    -------------------------------------------------------------
    -- GAME TIMER
    -------------------------------------------------------------

    local currentGameTimer =
        GetGameTimer()

    drawDebugText(
        0.295,
        1.0 - debugHeight,

        string.format(
            "T:%s",
            currentGameTimer
        )
    )

    -------------------------------------------------------------
    -- FRAME NUMBER
    -------------------------------------------------------------

    drawDebugText(
        0.34,
        1.0 - debugHeight,

        string.format(
            "F:%s",
            GetFrameCount()
        )
    )

    -------------------------------------------------------------
    -- ACTIVE STREAMING REQUESTS
    -------------------------------------------------------------

    drawDebugText(
        0.385,
        1.0 - debugHeight,

        string.format(
            "REQ: %s",
            GetNumberOfStreamingRequests()
        )
    )

    -------------------------------------------------------------
    -- PLAYER SPEED IN MPH
    -------------------------------------------------------------

    local playerSpeedMetresPerSecond =
        GetEntitySpeed(
            -- Beginner: Get the local player's ped/entity.
            PlayerPedId()
        )

    local playerSpeedMph =
        playerSpeedMetresPerSecond
        * 2.236

    drawDebugText(
        0.425,
        1.0 - debugHeight,

        string.format(
            "PS: %smph",

            math.round(
                playerSpeedMph,
                1
            )
        )
    )

    -------------------------------------------------------------
    -- ENTITY COUNTS ON THE RIGHT SIDE
    -------------------------------------------------------------

    drawDebugText(
        0.96,
        1.0 - debugHeight,

        string.format(
            "OBJ: %s",
            DebugStats.objectCount
        )
    )

    drawDebugText(
        0.925,
        1.0 - debugHeight,

        string.format(
            "VEH: %s",
            DebugStats.vehicleCount
        )
    )

    drawDebugText(
        0.89,
        1.0 - debugHeight,

        string.format(
            "PED: %s",
            DebugStats.pedCount
        )
    )

    drawDebugText(
        0.855,
        1.0 - debugHeight,

        string.format(
            "PLR: %s",
            DebugStats.playerCount
        )
    )

    -------------------------------------------------------------
    -- BLACK BACKGROUND STRIP
    --
    -- These exact values are preserved from the source.
    -------------------------------------------------------------

    DrawRect(
        0.5,

        1.0
            - (
                debugHeight / 2.0
            ),

        1.0,
        debugHeight,

        0,
        0,
        0,
        255
    )
end

---------------------------------------------------------------------
-- 11. REGISTER THE PER-FRAME DEV THREAD
---------------------------------------------------------------------

CMG.registerDevMenuThread(
    "Screen UI",
    drawScreenDebug
)

---------------------------------------------------------------------
-- 12. DRAW A "FULLSCREEN" SCALEFORM ABOVE THE DEBUG STRIP
---------------------------------------------------------------------
--
-- Normally:
--
--     DrawScaleformMovieFullscreen(...)
--
-- fills the entire screen.
--
-- When the debug bar exists at the bottom, the source instead calls
-- DrawScaleformMovie() and gives the scaleform slightly less height.
---------------------------------------------------------------------

local function drawScaleformAboveDebugBar(
    scaleformHandle,
    red,
    green,
    blue,
    alpha,
    unknown
)
    local debugHeight =
        CMG.getTextHeight(
            DEBUG_TEXT_SCALE,
            1
        )

    DrawScaleformMovie(
        scaleformHandle,

        -- Centre X stays unchanged.
        0.5,

        -- Move centre upward by half of the missing height.
        0.5
            - (
                debugHeight / 2.0
            ),

        -- Full width.
        1.0,

        -- Remove the debug-strip height from the scaleform.
        1.0 - debugHeight,

        red,
        green,
        blue,
        alpha,
        unknown
    )
end

---------------------------------------------------------------------
-- 13. PATCH DrawScaleformMovieFullscreen
---------------------------------------------------------------------
--
-- CMG.patchFunction appears to call our wrapper like this:
--
--     wrapper(
--         originalFunction,
--         originalArgument1,
--         originalArgument2,
--         ...
--     )
--
-- So:
--
--     originalDrawFullscreen
--
-- below is the original GTA native.
---------------------------------------------------------------------

CMG.patchFunction(
    "origDrawScaleformMovieFullscreen",

    DrawScaleformMovieFullscreen,

    function(
        originalDrawFullscreen,
        scaleformHandle,
        red,
        green,
        blue,
        alpha,
        unknown
    )
        ---------------------------------------------------------
        -- DEBUG ENABLED:
        -- draw a resized scaleform that stops above the debug bar.
        ---------------------------------------------------------

        if ScreenDebug.enabled then
            drawScaleformAboveDebugBar(
                scaleformHandle,
                red,
                green,
                blue,
                alpha,
                unknown
            )

            return
        end

        ---------------------------------------------------------
        -- DEBUG DISABLED:
        -- behave exactly like the original fullscreen native.
        ---------------------------------------------------------

        originalDrawFullscreen(
            scaleformHandle,
            red,
            green,
            blue,
            alpha,
            unknown
        )
    end
)

---------------------------------------------------------------------
-- 14. BEGINNER WALKTHROUGH
---------------------------------------------------------------------
--
-- If you are learning the script, read it in this order:
--
--   1. ScreenDebug
--      Stores whether the debug overlay is enabled.
--
--   2. Developer checkbox
--      Lets a developer turn it on/off.
--
--   3. applyDebugLayoutIfChanged()
--      Moves the minimap and tells NUI about the new state.
--
--   4. updateCachedDebugStats()
--      Counts peds, vehicles, objects and players every 250 ms.
--
--   5. drawScreenDebug()
--      Draws all the text along the bottom of the screen.
--
--   6. CMG.patchFunction(...)
--      Changes fullscreen scaleforms while debug mode is enabled so they
--      leave room for the debug strip.
--
-- That's the entire system.
---------------------------------------------------------------------
