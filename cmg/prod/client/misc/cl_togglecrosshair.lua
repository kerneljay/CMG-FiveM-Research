--[[
    LEVEL 1 BEGINNER GUIDE — Togglecrosshair
    =============================================

    File: cmg/prod/client/misc/cl_togglecrosshair.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Togglecrosshair feature.

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
      * Commands: togglecrosshair
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
    Crosshair Toggle
    ================

    /togglecrosshair flips GTA's normal aiming crosshair on/off.

    HUD component 14 is GTA's reticle/crosshair. When crosshairEnabled is
    false, it is hidden every frame.
]]

local crosshairEnabled = true

-- === COMMAND /togglecrosshair: runs when that command is entered ===
RegisterCommand("togglecrosshair", function()
    crosshairEnabled = not crosshairEnabled
end, false)

-- === HELPER FUNCTION: crosshairTick() ===
local function crosshairTick()
    if not crosshairEnabled then
        HideHudComponentThisFrame(14)
    end
end

CMG.createThreadOnTick(
    crosshairTick,
    "Crosshair Disabling"
)
