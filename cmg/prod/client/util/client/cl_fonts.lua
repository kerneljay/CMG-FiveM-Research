--[[
    LEVEL 1 BEGINNER GUIDE — Fonts
    ===================================

    File: cmg/prod/client/util/client/cl_fonts.lua
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
      * Named functions: 1
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
    Custom Font Loader
    ==================

    FiveM fonts are loaded in two steps:
      1. RegisterFontFile("file-name")
      2. RegisterFontId("font-face-name")

    CMG.getFontId(name) returns the registered ID, or 0 if it is unknown.
]]

local fontFiles = {
    "akrobat",
    "Montserrat-Light"
}

local fontIds = {
    ["Akrobat-Black"] = 0,
    ["Akrobat-Bold"] = 0,
    ["Akrobat-ExtraBold"] = 0,
    ["Akrobat-ExtraLight"] = 0,
    ["Akrobat-Light"] = 0,
    ["Akrobat-Regular"] = 0,
    ["Akrobat-SemiBold"] = 0,
    ["Akrobat-Thin"] = 0,
    ["Montserrat-Light"] = 0
}

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    for _, fontFile in pairs(fontFiles) do
        RegisterFontFile(fontFile)
    end

    for fontName in pairs(fontIds) do
        fontIds[fontName] = RegisterFontId(fontName)
    end
end)

-- === HELPER FUNCTION: CMG.getFontId(fontName) ===
function CMG.getFontId(fontName)
    return fontIds[fontName] or 0
end
