--[[
    LEVEL 1 BEGINNER GUIDE — Cinematicbars
    ===========================================

    File: cmg/prod/client/misc/cl_cinematicbars.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Cinematicbars feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
      * Background threads: 1
      * Always-running loops: 0
      * Commands: cinematic
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
    Cinematic Black Bars
    ====================

    /cinematic toggles black letterbox bars at the top and bottom of the
    screen.

    While enabled, normal GTA HUD components and the radar are hidden to make
    recordings/screenshots look cinematic.

    HideHUDThisFrame() is kept global because the original resource exposed
    that helper name to other client files.
]]

local cinematicBarsEnabled = false

local barOrigin = {
    x = 0.0,
    y = -0.001
}


local function drawScreenRectangle(
    x,
    y,
    width,
    height,
    red,
    green,
    blue,
    alpha
)
    DrawRect(
        x + width / 2,
        y + height / 2,
        width,
        height,
        red,
        green,
        blue,
        alpha
    )
end


-- === HELPER FUNCTION: HideHUDThisFrame() ===
function HideHUDThisFrame()
    HideHelpTextThisFrame()
    HideHudAndRadarThisFrame()

    for _, componentId in ipairs({
        1,
        2,
        3,
        4,
        6,
        7,
        8,
        9,
        11,
        12,
        13,
        15,
        18,
        19
    }) do
        HideHudComponentThisFrame(
            componentId
        )
    end
end


-- === HELPER FUNCTION: CMG.toggleBlackBars() ===
function CMG.toggleBlackBars()
    cinematicBarsEnabled =
        not cinematicBarsEnabled

    if not cinematicBarsEnabled then
        return
    end

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        while cinematicBarsEnabled do
            HideHUDThisFrame()

            -- Top black bar.
            drawScreenRectangle(
                barOrigin.x,
                barOrigin.y,
                1.0,
                0.15,
                0,
                0,
                0,
                255
            )

            -- Bottom black bar.
            drawScreenRectangle(
                barOrigin.x,
                barOrigin.y + 0.85,
                1.0,
                0.151,
                0,
                0,
                0,
                255
            )

            Wait(0)
        end
    end)
end


RegisterCommand(
    "cinematic",
    function()
        CMG.toggleBlackBars()
    end,
    false
)
