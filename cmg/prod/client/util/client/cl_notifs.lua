--[[
    Notification Helper
    ===================

    sendNotification(options, durationMs) shows an HTML/NUI notification and
    hides it after the requested duration.

    Common options:
      options.pos  = "top-left", "bottom-left", "top-right" or "bottom-right"
      options.icon = "success" or "bad"

    The exported function and hashed network event both use the same helper.
]]

local screenPositions = {
    ["top-left"] = {top = 10, right = 1450},
    ["bottom-left"] = {top = 1000, right = 1450},
    ["top-right"] = {top = 10, right = 10},
    ["bottom-right"] = {top = 1000, right = 10}
}

local notificationIcons = {
    success = "fas fa-check",
    bad = "fas fa-times"
}

local function sendNotification(options, durationMs)
    durationMs = durationMs or 15000

    SendNUIMessage({
        show = true,
        options = options,
        pos = screenPositions[options.pos],
        icon = notificationIcons[options.icon] or "",
        delaySeconds = durationMs / 1000
    })

    Citizen.Wait(durationMs)

    SendNUIMessage({
        show = false,
        options = options
    })
end

exports("sendNotification", sendNotification)

RegisterNetEvent("371eab1d3a", function(options, durationMs)
    sendNotification(options, durationMs)
end)
