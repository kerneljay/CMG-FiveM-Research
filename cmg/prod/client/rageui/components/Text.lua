--[[
    LEVEL 1 BEGINNER GUIDE — Text
    ==================================

    File: cmg/prod/client/rageui/components/Text.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: RageUI menu framework/library code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
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
    RageUI Text Rendering Helpers
    =============================

    This file is UI-framework code used by RageUI.

    MeasureStringWidth(text, font, scale)
      Returns approximate width in 1920-pixel UI coordinates.

    GetCharacterCount(text)
      Counts UTF-8 characters rather than raw bytes.

    AddText(text)
      Adds text to a GTA text command in safe chunks of roughly 100 characters.
      GTA text components have practical length limits.

    GetLineCount(...)
      Configures the text style/wrapping and asks GTA how many lines the text
      would use.

    RenderText(...)
      Uses the same settings and actually draws the text.

    Coordinates passed to these helpers are 1920x1080-style UI coordinates and
    are converted into GTA's 0.0-1.0 normalised screen space.
]]

-- ============================================================
-- WIDTH / CHARACTER HELPERS
-- ============================================================

function MeasureStringWidth(
    text,
    font,
    scale
)
    BeginTextCommandGetWidth(
        "CELL_EMAIL_BCON"
    )

    AddTextComponentSubstringPlayerName(
        text
    )

    SetTextFont(
        font or 0
    )

    SetTextScale(
        1.0,
        scale or 0
    )

    return
        EndTextCommandGetWidth(true)
        * 1920
end


-- === HELPER FUNCTION: GetCharacterCount(text) ===
function GetCharacterCount(text)
    local count = 0

    -- Match one UTF-8 codepoint at a time.
    for _ in text:gmatch(
        "[%z\1-\127\194-\244][\128-\191]*"
    ) do
        count = count + 1
    end

    return count
end


-- === HELPER FUNCTION: AddText(text) ===
function AddText(text)
    local characterCount =
        GetCharacterCount(text)

    if characterCount < 100 then
        AddTextComponentSubstringPlayerName(
            text
        )
        return
    end

    local chunkCount =
        math.ceil(
            characterCount / 100
        )

    -- The original decompile loops from 0 through chunkCount inclusive.
    -- Keep that shape so boundary behaviour remains the same.
    for chunkIndex = 0,
        chunkCount do

        local startIndex =
            chunkIndex * 100

        local endIndex =
            startIndex + 100

        AddTextComponentSubstringPlayerName(
            text:sub(
                startIndex,
                endIndex
            )
        )
    end
end


-- ============================================================
-- COMMON STYLE SETUP
-- ============================================================

local function configureText(
    text,
    x,
    y,
    font,
    scale,
    red,
    green,
    blue,
    alpha,
    alignment,
    dropShadow,
    outline,
    wrapWidth
)
    text =
        tostring(text)

    x =
        (tonumber(x) or 0)
        / 1920

    y =
        (tonumber(y) or 0)
        / 1080

    SetTextFont(
        font or 0
    )

    SetTextScale(
        1.0,
        scale or 0
    )

    SetTextColour(
        tonumber(red) or 255,
        tonumber(green) or 255,
        tonumber(blue) or 255,
        tonumber(alpha) or 255
    )

    if dropShadow then
        SetTextDropShadow()
    end

    if outline then
        SetTextOutline()
    end

    local centered =
        alignment == 1
        or alignment == "Center"
        or alignment == "Centre"

    local rightAligned =
        alignment == 2
        or alignment == "Right"

    if centered then
        SetTextCentre(true)

    elseif rightAligned then
        SetTextRightJustify(true)
    end

    local numericWrap =
        tonumber(wrapWidth)

    if numericWrap
        and numericWrap ~= 0 then

        local normalisedWidth =
            numericWrap / 1920

        if centered then
            SetTextWrap(
                x - normalisedWidth / 2,
                x + normalisedWidth / 2
            )

        elseif rightAligned then
            SetTextWrap(
                0,
                x
            )

        else
            SetTextWrap(
                x,
                x + normalisedWidth
            )
        end

    elseif rightAligned then
        SetTextWrap(
            0,
            x
        )
    end

    return text, x, y
end


-- ============================================================
-- MEASURE LINE COUNT
-- ============================================================

function GetLineCount(
    text,
    x,
    y,
    font,
    scale,
    red,
    green,
    blue,
    alpha,
    alignment,
    dropShadow,
    outline,
    wrapWidth
)
    text, x, y =
        configureText(
            text,
            x,
            y,
            font,
            scale,
            red,
            green,
            blue,
            alpha,
            alignment,
            dropShadow,
            outline,
            wrapWidth
        )

    BeginTextCommandLineCount(
        "CELL_EMAIL_BCON"
    )

    AddText(text)

    return
        EndTextCommandLineCount(
            x,
            y
        )
end


-- ============================================================
-- DRAW TEXT
-- ============================================================

function RenderText(
    text,
    x,
    y,
    font,
    scale,
    red,
    green,
    blue,
    alpha,
    alignment,
    dropShadow,
    outline,
    wrapWidth
)
    text, x, y =
        configureText(
            text,
            x,
            y,
            font,
            scale,
            red,
            green,
            blue,
            alpha,
            alignment,
            dropShadow,
            outline,
            wrapWidth
        )

    BeginTextCommandDisplayText(
        "CELL_EMAIL_BCON"
    )

    AddText(text)

    EndTextCommandDisplayText(
        x,
        y
    )
end
