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
