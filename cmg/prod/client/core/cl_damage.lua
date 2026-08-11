--[[
    LEVEL 1 BEGINNER GUIDE — Damage
    ====================================

    File: cmg/prod/client/core/cl_damage.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Damage feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 2
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: 9204cb8453
      * Local event handlers: 3b69022dfc, 04311f0e28, 81a637c0d3, 71e40f05bd, gameEventTriggered, entityDamaged
      * Server events sent: c17d6a6309
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
    Damage / Hitmarker Handling
    ===========================

    This file listens to GTA's network-damage events and translates the raw
    values into easier events for the rest of the CMG client/server code.

    It also handles the visual/audio hitmarker shown when the server confirms
    that you hit somebody.
]]

-- These two feature flags are toggled by other client events.
local nuiHitmarkersEnabled = false
local vipHitmarkerSoundEnabled = false

-- === EVENT HANDLER: runs when "3b69022dfc" fires ===
AddEventHandler("3b69022dfc", function()
    nuiHitmarkersEnabled = true
end)

-- === EVENT HANDLER: runs when "04311f0e28" fires ===
AddEventHandler("04311f0e28", function()
    nuiHitmarkersEnabled = false
end)

-- === EVENT HANDLER: runs when "81a637c0d3" fires ===
AddEventHandler("81a637c0d3", function()
    vipHitmarkerSoundEnabled = true
end)

-- === EVENT HANDLER: runs when "71e40f05bd" fires ===
AddEventHandler("71e40f05bd", function()
    vipHitmarkerSoundEnabled = false
end)

-- FiveM forwards raw game events here.

-- === EVENT HANDLER: runs when "gameEventTriggered" fires ===
AddEventHandler("gameEventTriggered", function(eventName, eventData)
    GameEventTriggered(eventName, eventData)
end)

-- === HELPER FUNCTION: toNumber(value) ===
local function toNumber(value)
    return tonumber(value)
end

-- Raw CEventNetworkEntityDamage stores one damage value as integer bits.
-- Repacking those bits as a float recovers the original damage number.

-- === HELPER FUNCTION: intBitsToFloat(value) ===
local function intBitsToFloat(value)
    local integerValue = tonumber(value) or 0
    local packed = string.pack("i4", integerValue)
    return string.unpack("f", packed)
end

-- === HELPER FUNCTION: toBoolean(value) ===
local function toBoolean(value)
    return tonumber(value) == 1
end

-- Weapon groups that the original script treats specially for event 91ac1508c7.
local trackedWeaponGroups = {
    [416676503] = true,
    [3337201093] = true,
    [860033945] = true,
    [970310034] = true,
    [1159398588] = true,
    [3082541095] = true,
    [2725924767] = true
}

-- === HELPER FUNCTION: handleNetworkEntityDamage(rawData) ===
local function handleNetworkEntityDamage(rawData)
    local victim = toNumber(rawData[1])
    local attacker = toNumber(rawData[2])
    local damage = intBitsToFloat(rawData[3])
    local isFatal = toBoolean(rawData[6])
    local weaponHash = toNumber(rawData[7])
    local extraDamageFlag = toBoolean(rawData[11])

    local playerPed = PlayerPedId()

    -- If another ped was fatally damaged by our player, notify the local
    -- framework event used by the rest of the resource.
    if isFatal and attacker == playerPed and IsEntityAPed(victim) and victim ~= playerPed then
        TriggerEvent("2244097108", victim)
    end

    -- If WE were damaged, report the attacker and damage details to the server.
    if victim == playerPed then
        local attackerServerId = CMG.getPedServerId(attacker)

        if attackerServerId and damage > 0.0 then
            local attackerDistance = #(
                GetEntityCoords(attacker, true) - CMG.getPlayerCoords()
            )

            TriggerServerEvent(
                "c17d6a6309",
                attackerServerId,
                damage,
                weaponHash,
                isFatal,
                extraDamageFlag,
                attackerDistance
            )
        end

        -- Non-fatal hits from selected weapon groups trigger another local
        -- effect/handler. The exact purpose lives in a different file.
        if weaponHash and weaponHash ~= 0 and damage > 0.0 and not isFatal then
            if trackedWeaponGroups[GetWeapontypeGroup(weaponHash)] then
                TriggerEvent("91ac1508c7", weaponHash)
            end
        end
    end
end

-- === HELPER FUNCTION: GameEventTriggered(eventName, eventData) ===
function GameEventTriggered(eventName, eventData)
    if eventName == "CEventNetworkEntityDamage" then
        handleNetworkEntityDamage(eventData)
    end
end

-- Keeps track of health so the same entityDamaged state does not repeatedly
-- fire the helper event without its health changing.
local lastKnownHealth = {}

-- === EVENT HANDLER: runs when "entityDamaged" fires ===
AddEventHandler("entityDamaged", function(firstEntity, secondEntity)
    local playerPed = PlayerPedId()

    -- Case 1: another ped damaged our player.
    if secondEntity == playerPed and firstEntity ~= playerPed then
        if IsEntityAPed(firstEntity) and not IsEntityDead(firstEntity) then
            local health = GetEntityHealth(firstEntity)

            if health > 105 and lastKnownHealth[firstEntity] ~= health then
                lastKnownHealth[firstEntity] = health
                Citizen.Wait(0)
                TriggerEvent("2286c4bb78", firstEntity)
            end
        end

    -- Case 2: our player damaged another ped.
    elseif firstEntity == playerPed and secondEntity ~= playerPed then
        if IsEntityAPed(secondEntity) and not IsEntityDead(playerPed) then
            local health = GetEntityHealth(playerPed)

            if health > 105 and lastKnownHealth[playerPed] ~= health then
                lastKnownHealth[playerPed] = health
                Citizen.Wait(0)
                TriggerEvent("1e1208e937", secondEntity)
            end
        end
    end
end)

-- Load the hitmarker sound bank and sprite texture once at startup.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    RequestScriptAudioBank("DLC_HITMARKERS\\HITMARKERS_ONE", false)

    while not RequestScriptAudioBank("DLC_HITMARKERS\\HITMARKERS_ONE", false) do
        Wait(0)
    end

    if not HasStreamedTextureDictLoaded("hitmarker") then
        RequestStreamedTextureDict("hitmarker", false)

        while not HasStreamedTextureDictLoaded("hitmarker") do
            Wait(0)
        end
    end
end)

-- Milliseconds left to draw the centre-screen sprite.
local hitmarkerTimeRemaining = 0

-- Server confirms a hit.
-- isHeadshot controls the NUI headshot/bodyshot animation.

-- === NETWORK EVENT: receives "9204cb8453" from server/another network source ===
RegisterNetEvent("9204cb8453", function(isHeadshot)
    -- VIP sound mode only plays for Plus/Platinum members.
    if vipHitmarkerSoundEnabled and (CMG.isPlusClub() or CMG.isPlatClub()) then
        PlaySoundFrontend(-1, "hitmarker", "hitmarkers", false)
        hitmarkerTimeRemaining = 500
        return
    end

    if nuiHitmarkersEnabled then
        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            transactionType = isHeadshot and "headshot" or "bodyshot"
        })
    end
end)

-- === HELPER FUNCTION: drawHitmarker() ===
local function drawHitmarker()
    if hitmarkerTimeRemaining >= 0 then
        DrawSprite(
            "hitmarker",
            "hitmarker",
            0.5,
            0.5,
            0.0125,
            0.02,
            0.0,
            255,
            255,
            255,
            255
        )

        -- Hide GTA's normal reticle while the custom marker is displayed.
        HideHudComponentThisFrame(14)
    end
end

CMG.createThreadOnTick(drawHitmarker, "Hit Markers")

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        if hitmarkerTimeRemaining >= 0 then
            hitmarkerTimeRemaining = hitmarkerTimeRemaining - 100
        end

        Wait(100)
    end
end)
