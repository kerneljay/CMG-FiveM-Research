--[[
    Small Client Commands / Text Overrides
    ======================================

    This file contains a handful of simple chat commands plus a vehicle
    interior-light toggle.
]]

Citizen.CreateThread(function()
    -- Change a few GTA/FiveM menu labels.
    AddTextEntry("FE_THDR_GTAO", "CMG British RP - discord.gg/CMG")
    AddTextEntry("PM_PANE_CFX", "CMG")
    AddTextEntry("MO_GFX_DX10", "DirectX 10 (Broken, use DirectX 11 instead)")
    AddTextEntry("MO_GFX_DX101", "DirectX 10.1 (Broken, use DirectX 11 instead)")
end)

RegisterCommand("discord", function()
    TriggerEvent("chatMessage", "^1https://discord.gg/CMG")
end, false)

-- Sends an RP message to the server.
-- FiveM gives commands both an args table and the raw command string, so this
-- accepts either form.
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
        TriggerServerEvent("cmg:sendRpMessage", message)
    end
end, false)

RegisterCommand("ts", function()
    TriggerEvent("chatMessage", "^1ts.cmgstudios.net")
end, false)

RegisterCommand("website", function()
    TriggerEvent("chatMessage", "^1www.cmgstudios.net")
end, false)

RegisterCommand("register", function()
    TriggerEvent(
        "chatMessage",
        "^1There is no need to /register on this server, to change your appearance go to a clothes store!"
    )
end, false)

RegisterCommand("interiorlights", function()
    local vehicle = GetVehiclePedIsIn(CMG.getPlayerPed(), false)

    -- The original script simply passes this vehicle handle to the natives.
    -- If the player is not in a vehicle GTA will return 0.
    SetVehicleInteriorlight(
        vehicle,
        not IsVehicleInteriorLightOn(vehicle)
    )
end, false)
