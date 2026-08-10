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
RegisterNetEvent("onPlayerDropped", function(playerServerId)
    if GetResourceState("pma-voice") ~= "started" then
        return
    end

    exports["pma-voice"]:mutePlayer(playerServerId, false)
end)
