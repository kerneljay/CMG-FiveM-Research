--[[
    LEVEL 1 BEGINNER GUIDE — Mouse
    ===================================

    File: cmg/prod/client/util/client/cl_mouse.lua
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
      * Named functions: 9
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
    Mouse / GUI Cursor Helpers
    ==========================

    This utility keeps track of GTA's mouse cursor and provides simple
    rectangle-hit-test helpers used by old CMG user interfaces.

    State:
      cursorEnabled
        The old client uses numeric value 1 to mean the mouse cursor should be
        active and tracked.

      cursorX / cursorY
        Current normalised cursor coordinates from 0.0 to 1.0.

      inGui
        True while a CMG GUI wants normal combat/weapon controls disabled.

    Global helper names such as CursorInZone, CursorInArea, CursorInAreaRect and
    GetArea are deliberately preserved because old client scripts may call
    them directly.
]]

local cursorEnabled = 0
local cursorX = 0.0
local cursorY = 0.0

local inGui = false

-- This flag was always false inside the decompiled file. It controls whether
-- camera-look controls 1 and 2 are additionally disabled while in a GUI.
local allowCameraLookInGui = false


-- ============================================================
-- PUBLIC CURSOR STATE
-- ============================================================

-- === HELPER FUNCTION: CMG.setInGUI(enabled) ===
function CMG.setInGUI(enabled)
    inGui = enabled
end


-- === HELPER FUNCTION: CMG.setCursor(enabledValue) ===
function CMG.setCursor(enabledValue)
    cursorEnabled = enabledValue
end


-- ============================================================
-- HIT-TEST HELPERS
-- ============================================================

function CursorInZone(
    minX,
    minY,
    maxX,
    maxY
)
    if cursorEnabled ~= 1 then
        return false
    end

    return
        minX < cursorX
        and maxX > cursorX
        and minY < cursorY
        and maxY > cursorY
end


function CursorInArea(
    minX,
    maxX,
    minY,
    maxY
)
    return
        minX < cursorX
        and maxX > cursorX
        and minY < cursorY
        and maxY > cursorY
end


function CursorInAreaRect(
    centreX,
    centreY,
    width,
    height
)
    local halfWidth =
        width / 2.0

    local halfHeight =
        height / 2.0

    return CursorInArea(
        centreX - halfWidth,
        centreX + halfWidth,
        centreY - halfHeight,
        centreY + halfHeight
    )
end


function GetArea(
    centreX,
    centreY,
    width,
    height
)
    local halfWidth =
        width / 2

    local halfHeight =
        height / 2

    return
        centreX - halfWidth,
        centreX + halfWidth,
        centreY - halfHeight,
        centreY + halfHeight
end


-- ============================================================
-- CURSOR POSITION TICK
-- ============================================================

-- === HELPER FUNCTION: mouseControlsTick() ===
local function mouseControlsTick()
    if cursorEnabled ~= 1 then
        return
    end

    cursorX =
        GetControlNormal(
            2,
            239
        )

    cursorY =
        GetControlNormal(
            2,
            240
        )

    SetMouseCursorActiveThisFrame()
end

CMG.createThreadOnTick(
    mouseControlsTick,
    "Mouse Controls"
)


-- ============================================================
-- DISABLE NORMAL GAMEPLAY CONTROLS WHILE USING UI
-- ============================================================

-- === HELPER FUNCTION: CMG.disableStandardControlsForUI() ===
function CMG.disableStandardControlsForUI()
    -- Aim / attack / melee / weapon selection.
    for _, control in ipairs({
        25,
        106,
        24,
        140,
        141,
        142,
        257,
        263,
        264,

        -- Weapon-wheel / scrolling-related controls used by the old UI.
        12,
        14,
        15,
        16,
        17
    }) do
        DisableControlAction(
            0,
            control,
            true
        )
    end
end


-- === HELPER FUNCTION: guiControlsTick() ===
local function guiControlsTick()
    if not inGui then
        return
    end

    if not allowCameraLookInGui then
        DisableControlAction(
            0,
            1,
            true
        )

        DisableControlAction(
            0,
            2,
            true
        )
    end

    CMG.disableStandardControlsForUI()
end


-- Some utility files load before cl_thread.lua. Wait for the shared thread
-- helper to exist before registering this tick.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while not CMG.createThreadOnTick do
        Wait(0)
    end

    CMG.createThreadOnTick(
        guiControlsTick,
        "GUI Controls"
    )
end)
