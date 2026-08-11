--[[
    LEVEL 1 BEGINNER GUIDE — Deathandjoinmsgs
    ==============================================

    File: cmg/prod/client/core/cl_deathandjoinmsgs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Deathandjoinmsgs feature.

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
      * Commands: togglekillfeed
      * Incoming network events: 4c1a6c17f7
      * Local event handlers: CMG:onDisplayVisiblityChange
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
    Kill Feed / Death Messages
    ==========================

    This file controls the on-screen kill feed.

    Main jobs:
      - /togglekillfeed shows or hides the kill feed.
      - When the display visibility changes, the UI is told to enable/disable.
      - When the server sends a kill, it is added for 10 seconds then removed.
]]

-- === COMMAND /togglekillfeed: runs when that command is entered ===
RegisterCommand("togglekillfeed", function()
    if CMG.isDisplayVisible("killfeed", "user") then
        CMG.hideDisplay("killfeed", "user")
    else
        CMG.showDisplay("killfeed", "user")
    end
end, false)

-- === EVENT HANDLER: runs when "CMG:onDisplayVisiblityChange" fires ===
AddEventHandler("CMG:onDisplayVisiblityChange", function(displayName, isVisible)
    if displayName ~= "killfeed" then
        return
    end

    CMG.uiSendMessage({
        type = isVisible and "KILLFEED_ENABLE" or "KILLFEED_DISABLE"
    })
end)

-- Server sends one kill-feed entry.
--
-- killerName / victimName = names shown in the feed
-- weapon                 = weapon information/icon used by the UI
-- suicide                = whether victim killed themselves
-- range                  = distance of the kill
-- victimGroup/killerGroup= group information used by the UI
-- wasHeadshot            = headshot flag
-- victimUserId/killerUserId are used to decide if this kill involved us

-- === NETWORK EVENT: receives "4c1a6c17f7" from server/another network source ===
RegisterNetEvent("4c1a6c17f7", function(
    killerName,
    victimName,
    weapon,
    suicide,
    range,
    victimGroup,
    killerGroup,
    wasHeadshot,
    victimUserId,
    killerUserId
)
    -- Do not add kill-feed entries over the loading screen or while hidden.
    if GetIsLoadingScreenActive() or not CMG.isDisplayVisible("killfeed") then
        return
    end

    local category = "other"
    local myUserId = CMG.getClientUserId()

    if victimUserId == myUserId or killerUserId == myUserId then
        category = "self"
    end

    -- Every row needs a unique ID so the same row can be removed later.
    local killUuid = CMG.generateUUID("kill", 10, "alphabet")

    CMG.uiSendMessage({
        type = "KILLFEED_ADD_KILL",
        info = {
            type = "addKill",
            victim = victimName,
            killer = killerName,
            weapon = weapon,
            suicide = suicide,
            victimGroup = victimGroup,
            killerGroup = killerGroup,
            range = range,
            uuid = killUuid,
            category = category,
            wasHeadshot = wasHeadshot
        }
    })

    Citizen.Wait(10000)

    CMG.uiSendMessage({
        type = "KILLFEED_REMOVE_KILL",
        info = {
            uuid = killUuid
        }
    })
end)
