--[[
    Discord Rich Presence
    =====================

    Adds a clickable "Join CMG" button to FiveM's Discord Rich Presence.
    Clicking it connects to the configured FiveM server.
]]

Citizen.CreateThread(function()
    -- Some FiveM builds/resources may not expose this native.
    if SetDiscordRichPresenceAction then
        SetDiscordRichPresenceAction(
            0,
            "Join CMG",
            "fivem://connect/s1.cmg.city"
        )
    end
end)
