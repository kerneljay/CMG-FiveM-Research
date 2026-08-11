--[[
    LEVEL 1 BEGINNER GUIDE — Text
    ==================================

    File: cmg/prod/client/util/client/cl_text.lua
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
      * Named functions: 10
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
    Shared Text Drawing Helpers
    ===========================

    These are small wrappers around GTA text natives used by many CMG scripts.

    DrawAdvancedText(...)
      Draws screen text with an outline.

    DrawAdvancedTextNoOutline(...)
      Same but without the black outline.

    subtitleText(text)
      Shows GTA subtitle/help text for one frame.

    drawNativeText(text)
      Draws centred text near the bottom of the screen.

    drawNativeNotification(text, blink)
      Shows GTA's small help/notification box.

    CMG.DrawText3D(coords, text, scale, font)
      Draws text at a 3D world position if that position is visible on-screen.

    CMG.drawDebugText(format, ...)
      Adds one line to a small developer-debug list.

    TextWidth(text)
      Returns approximate width of a GTA text string.
]]

local debugLines = {}


-- ============================================================
-- ADVANCED SCREEN TEXT
-- ============================================================

local function configureAdvancedText(
    x,
    y,
    scaleX,
    scaleY,
    textScale,
    red,
    green,
    blue,
    alpha,
    font
)
    SetTextFont(
        font or 0
    )

    SetTextProportional(0)

    SetTextScale(
        scaleX or 0.0,
        textScale or scaleY or 0.35
    )

    SetTextColour(
        red or 255,
        green or 255,
        blue or 255,
        alpha or 255
    )

    SetTextCentre(false)

    SetTextDropshadow(
        0,
        0,
        0,
        0,
        255
    )

    return x, y
end


function DrawAdvancedText(
    x,
    y,
    scaleX,
    scaleY,
    textScale,
    text,
    red,
    green,
    blue,
    alpha,
    font,
    justification
)
    configureAdvancedText(
        x,
        y,
        scaleX,
        scaleY,
        textScale,
        red,
        green,
        blue,
        alpha,
        font
    )

    SetTextEdge(
        1,
        0,
        0,
        0,
        205
    )

    SetTextOutline()

    SetTextJustification(
        justification or 1
    )

    SetTextEntry("STRING")

    AddTextComponentString(
        tostring(text)
    )

    DrawText(
        x,
        y
    )
end


function DrawAdvancedTextNoOutline(
    x,
    y,
    scaleX,
    scaleY,
    textScale,
    text,
    red,
    green,
    blue,
    alpha,
    font,
    justification
)
    configureAdvancedText(
        x,
        y,
        scaleX,
        scaleY,
        textScale,
        red,
        green,
        blue,
        alpha,
        font
    )

    SetTextJustification(
        justification or 1
    )

    SetTextEntry("STRING")

    AddTextComponentString(
        tostring(text)
    )

    DrawText(
        x,
        y
    )
end


-- ============================================================
-- SUBTITLE / NATIVE HELP
-- ============================================================

-- === HELPER FUNCTION: subtitleText(text) ===
function subtitleText(text)
    SetTextEntry_2("STRING")
    AddTextComponentString(
        tostring(text)
    )
    DrawSubtitleTimed(
        1,
        true
    )
end


-- === HELPER FUNCTION: drawNativeText(text) ===
function drawNativeText(text)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.4)
    SetTextColour(
        255,
        255,
        255,
        255
    )
    SetTextDropshadow(
        0,
        0,
        0,
        0,
        255
    )
    SetTextEdge(
        1,
        0,
        0,
        0,
        255
    )
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(true)

    BeginTextCommandDisplayText(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        tostring(text)
    )

    EndTextCommandDisplayText(
        0.5,
        0.90
    )
end


function drawNativeNotification(
    text,
    blink
)
    BeginTextCommandDisplayHelp(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        tostring(text)
    )

    EndTextCommandDisplayHelp(
        0,
        false,
        blink == true,
        -1
    )
end


-- ============================================================
-- 3D WORLD TEXT
-- ============================================================

function CMG.DrawText3D(
    coords,
    text,
    scale,
    font
)
    local visible,
          screenX,
          screenY =
        World3dToScreen2d(
            coords.x,
            coords.y,
            coords.z
        )

    if not visible then
        return
    end

    SetTextScale(
        scale or 0.35,
        scale or 0.35
    )

    SetTextFont(
        font or 4
    )

    SetTextProportional(1)

    SetTextColour(
        255,
        255,
        255,
        215
    )

    SetTextCentre(true)
    SetTextOutline()

    BeginTextCommandDisplayText(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        tostring(text)
    )

    EndTextCommandDisplayText(
        screenX,
        screenY
    )
end


-- ============================================================
-- DEBUG TEXT
-- ============================================================

function CMG.drawDebugText(
    formatString,
    ...
)
    local text =
        string.format(
            formatString,
            ...
        )

    table.insert(
        debugLines,
        text
    )
end


-- === HELPER FUNCTION: drawDebugLines() ===
local function drawDebugLines()
    if #debugLines == 0 then
        return
    end

    for index, line
        in ipairs(debugLines) do

        DrawAdvancedTextNoOutline(
            0.01,
            0.02
                + (index - 1)
                    * 0.018,
            0.0,
            0.0,
            0.25,
            line,
            255,
            255,
            255,
            255,
            0,
            0
        )
    end

    debugLines = {}
end


-- Wait because this utility can be loaded before cl_thread.lua.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while not CMG.createThreadOnTick do
        Wait(0)
    end

    CMG.createThreadOnTick(
        drawDebugLines,
        "Debug Text"
    )
end)


-- ============================================================
-- TEXT WIDTH
-- ============================================================

-- === HELPER FUNCTION: TextWidth(text) ===
function TextWidth(text)
    BeginTextCommandWidth(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        tostring(text)
    )

    return
        EndTextCommandGetWidth(true)
end
