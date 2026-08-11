--[[
    LEVEL 1 BEGINNER GUIDE — Rectangle
    =======================================

    File: cmg/prod/client/rageui/components/Rectangle.lua
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
      * Named functions: 1
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
    RageUI Rectangle Renderer
    =========================

    RageUI layouts use 1920x1080 pixel-style coordinates, but GTA's DrawRect
    native expects normalised values from 0.0 to 1.0.

    RenderRectangle converts the pixel coordinates, applies default white
    colour values, then draws the rectangle.
]]

function RenderRectangle(
    x,
    y,
    width,
    height,
    red,
    green,
    blue,
    alpha
)
    x = (tonumber(x) or 0) / 1920
    y = (tonumber(y) or 0) / 1080
    width = (tonumber(width) or 0) / 1920
    height = (tonumber(height) or 0) / 1080

    DrawRect(
        x + width * 0.5,
        y + height * 0.5,
        width,
        height,
        tonumber(red) or 255,
        tonumber(green) or 255,
        tonumber(blue) or 255,
        tonumber(alpha) or 255
    )
end
