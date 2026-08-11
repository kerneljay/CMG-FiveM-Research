--[[
    LEVEL 1 BEGINNER GUIDE — Barbershop
    ========================================

    File: cmg/prod/client/core/cl_barbershop.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Barbershop feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:onClientSpawn
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
    Barbershop Locations
    ====================

    Creates interaction areas and map/world markers for barber shops.
    When you stand in one, the script displays a haircut prompt.
    Pressing the interaction key triggers the existing haircut event.
]]

local barbershopLocations = {
    vector3(-815.59008789063, -182.16806030273, 37.568920135498),
    vector3(139.21583557129, -1708.9689941406, 29.301620483398),
    vector3(-1281.9802246094, -1119.6861572266, 7.0001249313354),
    vector3(1934.115234375, 3730.7399902344, 32.854434967041),
    vector3(1211.0759277344, -475.00064086914, 66.218032836914),
    vector3(-34.97777557373, -150.9037322998, 57.086517333984),
    vector3(-280.37301635742, 6227.017578125, 31.705526351929)
}

-- === HELPER FUNCTION: showBarbershopPrompt() ===
local function showBarbershopPrompt()
    drawNativeNotification("Press ~INPUT_PICKUP~ to get a haircut.")

    -- Same UI/select sound used by the original script.
    PlaySound(-1, "SELECT", "HUD_MINI_GAME_SOUNDSET", false, 0, true)
end

-- === HELPER FUNCTION: onLeaveBarbershop() ===
local function onLeaveBarbershop()
    -- The original callback was empty.
end

-- === HELPER FUNCTION: handleBarbershopInput() ===
local function handleBarbershopInput()
    -- Control 51 is the framework's interaction key here.
    if IsControlJustPressed(1, 51) then
        TriggerEvent("b0ae230dba")
    end
end

-- === EVENT HANDLER: runs when "CMG:onClientSpawn" fires ===
AddEventHandler("CMG:onClientSpawn", function(_, firstSpawn)
    -- Only create these areas on the initial client spawn.
    if not firstSpawn then
        return
    end

    for index, position in pairs(barbershopLocations) do
        CMG.createArea(
            "barbershop_" .. index,
            position,
            1.5,
            6,
            showBarbershopPrompt,
            onLeaveBarbershop,
            handleBarbershopInput
        )

        tCMG.addMarker(
            position.x,
            position.y,
            position.z - 0.2,
            0.5,
            0.5,
            0.5,
            0,
            50,
            255,
            170,
            50,
            20,
            false,
            false,
            true
        )
    end
end)
