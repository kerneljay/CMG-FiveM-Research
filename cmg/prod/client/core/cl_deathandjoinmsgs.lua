--[[
    Kill Feed / Death Messages
    ==========================

    This file controls the on-screen kill feed.

    Main jobs:
      - /togglekillfeed shows or hides the kill feed.
      - When the display visibility changes, the UI is told to enable/disable.
      - When the server sends a kill, it is added for 10 seconds then removed.
]]

RegisterCommand("togglekillfeed", function()
    if CMG.isDisplayVisible("killfeed", "user") then
        CMG.hideDisplay("killfeed", "user")
    else
        CMG.showDisplay("killfeed", "user")
    end
end, false)

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
