--[[
    LEVEL 1 BEGINNER GUIDE — Minimap
    =====================================

    File: cmg/prod/client/ui/cl_minimap.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Minimap feature.

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
      * Always-running loops: 1
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
    Minimap Behaviour
    =================

    This file:
      * loads GTA's "minimap" Scaleform
      * configures its health/armour display
      * lets keyboard players toggle radar zoom with control 20
      * makes sure the large map is closed unless the call manager is using it

    LastGameTimer is intentionally kept global because the original resource
    wrote to that global name.
]]

local zoomedIn = false
local minimapScaleform = 0

-- === HELPER FUNCTION: minimapTick() ===
local function minimapTick()
    if minimapScaleform ~= 0 then
        BeginScaleformMovieMethod(
            minimapScaleform,
            "SETUP_HEALTH_ARMOUR"
        )

        ScaleformMovieMethodAddParamInt(3)
        EndScaleformMovieMethod()
    end

    -- Control 20 is the original key used by this script.
    if IsControlJustPressed(0, 20)
        and CMG.isUsingKeyboard(2) then

        if not zoomedIn then
            SetRadarZoom(1350)
            LastGameTimer = GetGameTimer()
            zoomedIn = true
        else
            SetRadarZoom(1050)
            LastGameTimer = 0
            zoomedIn = false
        end
    end
end

CMG.createThreadOnTick(
    minimapTick,
    "Minimap"
)

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    minimapScaleform =
        RequestScaleformMovie("minimap")

    while true do
        if not CMG.isCallManagerOpen() then
            SetBigmapActive(
                false,
                false
            )
        end

        Wait(1000)
    end
end)
