--[[
    LEVEL 1 BEGINNER GUIDE — Me
    ================================

    File: cmg/prod/client/core/cl_me.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Me feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 561f4c4dfb
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
    /me 3D Text Display
    ===================

    Displays roleplay /me text above the player who sent it.

    Messages:
      - stay visible for 10 seconds
      - stack vertically if the same player has several messages
      - are only shown for nearby players with line-of-sight
]]

-- messagesByPed[ped] = { message1, message2, ... }
local messagesByPed = {}

-- Vertical spacing between stacked messages.
local MESSAGE_VERTICAL_SPACING = 0.1

-- The decompiled file has this set to false. If changed to true elsewhere in
-- a future version it would also echo /me messages into chat.
local alsoShowInChat = false

-- RGBA colour used for the floating /me text.
local ME_TEXT_COLOUR = {0, 168, 255, 215}

-- === HELPER FUNCTION: addFloatingMessage(messageType, message, colour, ped, durationMs) ===
local function addFloatingMessage(messageType, message, colour, ped, durationMs)
    if not messagesByPed[ped] then
        messagesByPed[ped] = {}
    end

    table.insert(messagesByPed[ped], {
        type = messageType,
        msg = message,
        color = colour
    })

    -- Remove the oldest message after its display duration expires.
    SetTimeout(durationMs, function()
        local pedMessages = messagesByPed[ped]

        if not pedMessages then
            return
        end

        table.remove(pedMessages, 1)

        if #pedMessages == 0 then
            messagesByPed[ped] = nil
        end
    end)
end

-- === HELPER FUNCTION: drawFloatingMessages() ===
local function drawFloatingMessages()
    for ped, pedMessages in pairs(messagesByPed) do
        local vehicle = GetVehiclePedIsUsing(ped)

        if vehicle == 0 then
            -- On foot: draw above the ped's normal world position.
            local pedCoords = GetEntityCoords(ped)

            for messageIndex, messageData in pairs(pedMessages) do
                local textCoords = pedCoords + vector3(
                    0.0,
                    0.0,
                    0.9 + MESSAGE_VERTICAL_SPACING * messageIndex
                )

                CMG.DrawText3D(
                    textCoords,
                    messageData.msg,
                    0.5,
                    4,
                    false,
                    messageData.color
                )
            end
        else
            -- In a vehicle: use the ped's head bone so the text stays near
            -- their head instead of the vehicle's centre.
            local headBone = GetEntityBoneIndexByName(ped, "IK_Head")
            local headCoords = GetWorldPositionOfEntityBone(ped, headBone)

            for messageIndex, messageData in pairs(pedMessages) do
                local textCoords = headCoords + vector3(
                    0.0,
                    0.0,
                    0.4 + MESSAGE_VERTICAL_SPACING * messageIndex
                )

                CMG.DrawText3D(
                    textCoords,
                    messageData.msg,
                    0.5,
                    4,
                    false,
                    messageData.color
                )
            end
        end
    end
end

CMG.createThreadOnTick(drawFloatingMessages, "ME")

-- Server sends a /me message.
-- playerServerId = person who sent the message
-- playerName     = display name used if chat echo is enabled
-- message        = actual /me text

-- === NETWORK EVENT: receives "561f4c4dfb" from server/another network source ===
RegisterNetEvent("561f4c4dfb", function(playerServerId, playerName, message)
    local playerIndex = GetPlayerFromServerId(playerServerId)

    if playerIndex == -1 then
        return
    end

    local isMe = playerIndex == PlayerId()

    if isMe then
        if alsoShowInChat then
            TriggerEvent(
                "chatMessage",
                "",
                {255, 0, 0},
                " ^6 me | " .. playerName .. "  ^6  " .. message
            )
        end

        addFloatingMessage(
            "me",
            message,
            ME_TEXT_COLOUR,
            CMG.getPlayerPed(),
            10000
        )

        return
    end

    local myPed = CMG.getPlayerPed()
    local otherPed = GetPlayerPed(playerIndex)

    local distance = #(
        GetEntityCoords(myPed) - GetEntityCoords(otherPed)
    )

    -- Only show other people's /me text when they are nearby and visible.
    if distance >= 7.01 then
        return
    end

    if HasEntityClearLosToEntity(myPed, otherPed, 17) ~= 1 then
        return
    end

    if alsoShowInChat then
        TriggerEvent(
            "chatMessage",
            "",
            {255, 0, 0},
            " ^6 me | " .. playerName .. "  ^6  " .. message
        )
    end

    addFloatingMessage(
        "me",
        message,
        ME_TEXT_COLOUR,
        otherPed,
        10000
    )
end)
