--[[
    LEVEL 1 BEGINNER GUIDE — Commands
    ======================================

    File: cmg/prod/client/core/cl_commands.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Commands feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 1
      * Always-running loops: 0
      * Commands: discord, rp, ts, website, register, interiorlights
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: cmg:sendRpMessage
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
    Small Client Commands / Text Overrides
    ======================================

    This file contains a handful of simple chat commands plus a vehicle
    interior-light toggle.
]]

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    -- Change a few GTA/FiveM menu labels.
    AddTextEntry("FE_THDR_GTAO", "CMG British RP - discord.gg/CMG")
    AddTextEntry("PM_PANE_CFX", "CMG")
    AddTextEntry("MO_GFX_DX10", "DirectX 10 (Broken, use DirectX 11 instead)")
    AddTextEntry("MO_GFX_DX101", "DirectX 10.1 (Broken, use DirectX 11 instead)")
end)

-- === COMMAND /discord: runs when that command is entered ===
RegisterCommand("discord", function()
    TriggerEvent("chatMessage", "^1https://discord.gg/CMG")
end, false)

-- Sends an RP message to the server.
-- FiveM gives commands both an args table and the raw command string, so this
-- accepts either form.

-- === COMMAND /rp: runs when that command is entered ===
RegisterCommand("rp", function(_, args, rawCommand)
    local message = nil

    if rawCommand and rawCommand ~= "" then
        -- Remove the leading "rp" command name and surrounding spaces.
        message = rawCommand:gsub("^%s*rp%s*", "", 1)
    end

    if not message or message == "" then
        if type(args) == "table" then
            message = table.concat(args, " ")
        else
            message = ""
        end
    end

    if message ~= "" then
        -- Beginner: sends the "cmg:sendRpMessage" event to the server.
        TriggerServerEvent("cmg:sendRpMessage", message)
    end
end, false)

-- === COMMAND /ts: runs when that command is entered ===
RegisterCommand("ts", function()
    TriggerEvent("chatMessage", "^1ts.cmgstudios.net")
end, false)

-- === COMMAND /website: runs when that command is entered ===
RegisterCommand("website", function()
    TriggerEvent("chatMessage", "^1www.cmgstudios.net")
end, false)

-- === COMMAND /register: runs when that command is entered ===
RegisterCommand("register", function()
    TriggerEvent(
        "chatMessage",
        "^1There is no need to /register on this server, to change your appearance go to a clothes store!"
    )
end, false)

-- === COMMAND /interiorlights: runs when that command is entered ===
RegisterCommand("interiorlights", function()
    local vehicle = GetVehiclePedIsIn(CMG.getPlayerPed(), false)

    -- The original script simply passes this vehicle handle to the natives.
    -- If the player is not in a vehicle GTA will return 0.
    SetVehicleInteriorlight(
        vehicle,
        not IsVehicleInteriorLightOn(vehicle)
    )
end, false)
