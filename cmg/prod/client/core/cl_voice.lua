--[[
    LEVEL 1 BEGINNER GUIDE — Voice
    ===================================

    File: cmg/prod/client/core/cl_voice.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Voice feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: onPlayerDropped
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
    Voice Mute Sync
    ===============

    Keeps pma-voice's mute state in sync with player state bags.

    Beginner notes:
      state bag = FiveM key/value data attached to an entity/player.
      pma-voice = the voice-chat resource used by this server.
]]

-- Called whenever a player's "isMuted" state-bag value changes.
AddStateBagChangeHandler("isMuted", nil, function(bagName, _, isMuted)
    if GetResourceState("pma-voice") ~= "started" then
        return
    end

    -- Player state-bag names are normally formatted like "player:12".
    local playerServerId = tonumber(stringsplit(bagName, ":")[2])

    if not playerServerId then
        return
    end

    exports["pma-voice"]:mutePlayer(playerServerId, isMuted == true)
end)

-- If a player leaves, make sure pma-voice is not left thinking they are muted.

-- === NETWORK EVENT: receives "onPlayerDropped" from server/another network source ===
RegisterNetEvent("onPlayerDropped", function(playerServerId)
    if GetResourceState("pma-voice") ~= "started" then
        return
    end

    exports["pma-voice"]:mutePlayer(playerServerId, false)
end)
