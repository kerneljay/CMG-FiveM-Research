--[[
    LEVEL 1 BEGINNER GUIDE — Hotkeys
    =====================================

    File: cmg/prod/client/core/cl_hotkeys.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Hotkeys feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
      * Background threads: 2
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: a02d917ea8
      * Local event handlers: none found by static scan
      * Server events sent: ef297ed60b, c5274515e4, 1fccdc61f1, 42cf043256, a02d917ea8, c7887567db
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
    Modifier Hotkeys
    ================

    Most actions in this file are used while holding control 19 (normally the
    server's modifier/ALT-style key), then pressing another key.

    It also looks for a phone prop attached to a nearby player so G can slap
    the phone out of their hand.
]]

-- Ped currently holding the nearest recognised phone prop.
local nearbyPhoneOwnerPed = 0

-- Draw the "slap phone" prompt and perform the action.

-- === HELPER FUNCTION: handlePhoneSlap() ===
local function handlePhoneSlap()
    local playerPed = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(playerPed)

    -- Do not let the player slap while already unarmed.
    if currentWeapon == -1569615261 then
        return
    end

    local handBone = GetPedBoneIndex(nearbyPhoneOwnerPed, 57005)
    if handBone == -1 then
        return
    end

    local handCoords = GetWorldPositionOfEntityBone(nearbyPhoneOwnerPed, handBone)
    local distance = #(CMG.getPlayerCoords() - handCoords)

    if distance > 1.0 then
        return
    end

    CMG.DrawText3D(handCoords, "~y~Press [G] to slap phone out of hand", 0.25)

    if not IsControlJustPressed(0, 47) then
        return
    end

    local targetPlayer = NetworkGetPlayerIndexFromPed(nearbyPhoneOwnerPed)
    if targetPlayer < 0 then
        return
    end

    local targetServerId = GetPlayerServerId(targetPlayer)
    if targetServerId <= 0 then
        return
    end

    -- Temporarily put our weapon away while the slap animation plays.
    CMG.setSwitchGunEnabled(false)
    CMG.setWeapon(playerPed, -1569615261, true)
    CMG.playEmote("slap")

    -- Beginner: sends the "ef297ed60b" event to the server.
    TriggerServerEvent("ef297ed60b", targetServerId)
    notify("~y~Slapped phone out of persons hands.")

    Wait(2000)

    CMG.setWeapon(playerPed, currentWeapon, true)
    CMG.setSwitchGunEnabled(true)
end

-- Prevent several modifier hotkeys triggering repeatedly within one second.
local hotkeyCooldown = false

-- === HELPER FUNCTION: startHotkeyCooldown() ===
local function startHotkeyCooldown()
    hotkeyCooldown = true

    SetTimeout(1000, function()
        hotkeyCooldown = false
    end)
end

-- === HELPER FUNCTION: modifierHeld() ===
local function modifierHeld()
    return IsControlPressed(1, 19)
end

-- === HELPER FUNCTION: processHotkeys() ===
local function processHotkeys()
    if hotkeyCooldown then
        return
    end

    -- --------------------------------------------------------
    -- Modifier + control 90: send server action to nearest player (3m)
    -- --------------------------------------------------------
    if modifierHeld() and IsControlJustPressed(1, 90) then
        local closestPlayer = GetClosestPlayer(3)

        if closestPlayer then
            local serverId = GetPlayerServerId(closestPlayer)

            if serverId > 0 then
                -- Beginner: sends the "c5274515e4" event to the server.
                TriggerServerEvent("c5274515e4", serverId)
            end
        end

        startHotkeyCooldown()
    end

    -- --------------------------------------------------------
    -- Modifier + disabled control 185: action on player in nearby vehicle
    -- --------------------------------------------------------
    if modifierHeld() and IsDisabledControlJustPressed(1, 185) then
        local vehicle, vehiclePed = CMG.getClosestVehicleIncludingPed(5.0)

        if vehicle ~= 0 and vehiclePed ~= 0 then
            local playerIndex = NetworkGetPlayerIndexFromPed(vehiclePed)

            if playerIndex >= 0 then
                local serverId = GetPlayerServerId(playerIndex)

                if serverId > 0 then
                    -- Beginner: sends the "1fccdc61f1" event to the server.
                    TriggerServerEvent("1fccdc61f1", serverId)
                end
            end
        end

        startHotkeyCooldown()
    end

    -- --------------------------------------------------------
    -- Modifier + control 58: weapon-related server action
    -- --------------------------------------------------------
    if modifierHeld() and IsControlJustPressed(1, 58) then
        local playerPed = CMG.getPlayerPed()

        if IsPedArmed(playerPed, 7)
            and not CMG.isPurge()
            and not CMG.isPlayerInRedZone()
            and CMG.getPlayerCombatTimer() == 0
            and not CMG.hasClientPermission("police.onduty.permission")
            and not CMG.inArena()
            and not CMG.inEvent() then

            local weaponHash = GetSelectedPedWeapon(playerPed)

            if weaponHash ~= -1569615261 then
                local weaponGroup = GetWeapontypeGroup(weaponHash)

                -- Original excludes these three weapon groups.
                if weaponGroup ~= -1609580060
                    and weaponGroup ~= -728555052
                    and weaponGroup ~= 1548507267 then
                    -- Beginner: sends the "42cf043256" event to the server.
                    TriggerServerEvent("42cf043256")
                end
            end

            startHotkeyCooldown()
        end
    end

    -- --------------------------------------------------------
    -- Modifier + W (control 32): whistle/animation + recall active pet
    -- --------------------------------------------------------
    if modifierHeld() and IsControlJustPressed(1, 32) then
        local playerPed = CMG.getPlayerPed()

        if not IsPauseMenuActive()
            and not IsPedInAnyVehicle(playerPed, true)
            and not IsPedSwimming(playerPed)
            and not IsPedSwimmingUnderWater(playerPed)
            and not IsPedShooting(playerPed)
            and not IsPedDiving(playerPed)
            and not IsPedFalling(playerPed)
            and GetEntityHealth(playerPed) > 105
            and not CMG.isHandcuffed()
            and not CMG.isInRadioChannel()
            and tCMG.canAnim() then

            tCMG.playAnim(
                true,
                {{"rcmnigel1c", "hailing_whistle_waive_a"}},
                false
            )

            CMG.setActivePetFollowsPlayer()
        end
    end

    -- --------------------------------------------------------
    -- Modifier + control 29: server action on nearest player (4m)
    -- --------------------------------------------------------
    if modifierHeld() and IsControlJustPressed(1, 29) then
        local playerPed = CMG.getPlayerPed()

        if not IsPedInAnyVehicle(playerPed, false) then
            local closestPlayer = GetClosestPlayer(4)

            if closestPlayer and closestPlayer >= 0 then
                local serverId = GetPlayerServerId(closestPlayer)

                if serverId > 0 then
                    -- Beginner: sends the "a02d917ea8" event to the server.
                    TriggerServerEvent("a02d917ea8", serverId)
                end
            end
        end
    end

    -- Phone slap is independent of the modifier key once a phone holder has
    -- been found by the background scanner.
    if nearbyPhoneOwnerPed ~= 0 and CMG.getPlayerVehicle() == 0 then
        handlePhoneSlap()
    end
end

CMG.createThreadOnTick(processHotkeys, "Hotkeys")

-- Every second, find the nearest phone prop attached to another player.
-- Model hash 108397254 is the phone object used by this resource.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        local closestDistance = 10.0
        nearbyPhoneOwnerPed = 0

        local myPed = PlayerPedId()

        for _, object in pairs(GetGamePool("CObject")) do
            if GetEntityModel(object) == 108397254 then
                local attachedEntity = GetEntityAttachedTo(object)

                if DoesEntityExist(attachedEntity)
                    and IsEntityAPed(attachedEntity)
                    and IsPedAPlayer(attachedEntity) then

                    local distance = #(
                        CMG.getPlayerCoords() - GetEntityCoords(attachedEntity, true)
                    )

                    if distance < closestDistance and attachedEntity ~= myPed then
                        nearbyPhoneOwnerPed = attachedEntity
                        closestDistance = distance
                    end
                end
            end
        end

        Wait(1000)
    end
end)

local HEADBAG_PROGRESS_MS = 5000

-- Server tells this client to begin a 5-second "headbag" action.

-- === NETWORK EVENT: receives "a02d917ea8" from server/another network source ===
RegisterNetEvent("a02d917ea8", function(targetServerId)

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        CMG.startCircularProgressBar(
            "",
            HEADBAG_PROGRESS_MS,
            nil,
            function()
                -- Empty completion callback in original.
            end
        )
    end)

    local startedAt = GetGameTimer()

    while GetGameTimer() - startedAt <= HEADBAG_PROGRESS_MS do
        if tCMG.isInComa() or CMG.getPlayerCombatTimer() ~= 0 then
            notify("~r~You can not headbag someone whilst in a coma or have a combat timer.")
            CMG.stopCircularProgressBar()
            return
        end

        Wait(0)
    end

    -- Beginner: sends the "c7887567db" event to the server.
    TriggerServerEvent("c7887567db", targetServerId)
end)
