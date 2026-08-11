--[[
    LEVEL 1 BEGINNER GUIDE — Halloween
    =======================================

    File: cmg/prod/client/events/cl_halloween.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Halloween feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
      * Background threads: 2
      * Always-running loops: 2
      * Commands: none found by static scan
      * Incoming network events: 69c2ae77f7, fb145a1459, c771c826dd
      * Local event handlers: none found by static scan
      * Server events sent: 89653ddee4
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
    Halloween Zombie Events
    =======================

    This file only runs its background zombie logic while CMG.isHalloween().

    Zombie table:
      zombies[networkId] = last-known vector3 position

    Server events:
      69c2ae77f7(zombiePositions)
        Replaces/updates the network-ID -> position lookup.

      fb145a1459(networkId)
        Removes one zombie from that lookup.

      c771c826dd
        Temporarily transforms THIS player into a zombie for 60 seconds.

      89653ddee4(networkId)
        Sent when a zombie gets within 1.5 metres and kills this player.

    Nearby zombies:
      * within 100m, their zombie idle animation is enforced
      * ambient AI events are blocked
      * within 30m, zombie sound is started once per ped
      * within 1.5m, this player gets the jump-scare/death sequence

    The player-zombie transformation:
      * saves current customisation
      * sets zombie model -1404353274
      * plays Halloween music / timecycle
      * applies zombie movement + damage packs
      * waits 60 seconds
      * restores original customisation

    Hash-looking event names are deliberately unchanged.
]]

local zombies = {}

-- ped handle -> true once zombie audio has been started for that entity.
local zombieSoundStarted = {}


-- ============================================================
-- SERVER ZOMBIE TABLE
-- ============================================================

RegisterNetEvent(
    "69c2ae77f7",
    function(serverZombies)
        zombies = {}

        for networkId, coords
            in pairs(serverZombies or {}) do

            zombies[networkId] =
                vector3(
                    coords.x,
                    coords.y,
                    coords.z
                )
        end
    end
)


RegisterNetEvent(
    "fb145a1459",
    function(networkId)
        zombies[networkId] =
            nil
    end
)


-- ============================================================
-- PARTICLE / JUMPSCARE HELPERS
-- ============================================================

-- === HELPER FUNCTION: playZombieAppearanceParticle() ===
local function playZombieAppearanceParticle()
    CMG.loadPtfx(
        "scr_rcbarry2"
    )

    UseParticleFxAsset(
        "scr_rcbarry2"
    )

    local coords =
        CMG.getPlayerCoords()

    StartNetworkedParticleFxNonLoopedAtCoord(
        "scr_clown_appears",
        coords.x,
        coords.y,
        coords.z,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset(
        "scr_rcbarry2"
    )
end


-- === HELPER FUNCTION: playZombieJumpScare() ===
local function playZombieJumpScare()
    DoScreenFadeOut(100)

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        transactionType =
            "zombiescream"
    })
end


-- === HELPER FUNCTION: startZombieSound(ped) ===
local function startZombieSound(ped)
    if not DoesEntityExist(ped) then
        return
    end

    while not RequestScriptAudioBank(
        "DLC_HALLOWEEN\\HALLOWEEN",
        false
    ) do
        Citizen.Wait(0)
        print(
            "infinite loading of halloween sound?"
        )
    end

    local soundId =
        GetSoundId()

    PlaySoundFromEntity(
        soundId,
        "zombie",
        ped,
        "dlc_halloween_soundset",
        false,
        0
    )
end


-- ============================================================
-- TEMPORARILY TURN THIS PLAYER INTO A ZOMBIE
-- ============================================================

RegisterNetEvent(
    "c771c826dd",
    function()
        local originalCustomisation =
            tCMG.getCustomization()

        PlaySoundFrontend(
            -1,
            "Survival_Failed",
            "DLC_VW_AS_Sounds",
            true
        )

        tCMG.setCustomization({
            modelhash =
                -1404353274
        })

        playZombieAppearanceParticle()

        SetTimecycleModifier(
            "BeastIntro01"
        )

        SetTimecycleModifierStrength(
            0.5
        )

        PrepareMusicEvent(
            "HALLOWEEN_START_MUSIC"
        )

        TriggerMusicEvent(
            "HALLOWEEN_START_MUSIC"
        )

        local movementSet =
            "anim_group_move_ballistic"

        RequestAnimSet(
            movementSet
        )

        while not HasAnimSetLoaded(
            movementSet
        ) do
            Wait(0)
        end

        SetPedMovementClipset(
            PlayerPedId(),
            movementSet,
            0
        )

        RemoveAnimSet(
            movementSet
        )

        for _, damagePack in ipairs({
            "BigHitByVehicle",
            "SCR_Dumpster",
            "SCR_Torture"
        }) do
            ApplyPedDamagePack(
                PlayerPedId(),
                damagePack,
                0.0,
                9.0
            )
        end

        Wait(60000)

        TriggerMusicEvent(
            "BST_STOP"
        )

        ClearTimecycleModifier()

        tCMG.setCustomization(
            originalCustomisation
        )
    end
)


-- ============================================================
-- ZOMBIE ANIMATION / KILL DISTANCE
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    if not CMG.isHalloween() then
        return
    end

    while true do
        local playerCoords =
            CMG.getPlayerCoords()

        for networkId, zombieCoords
            in pairs(zombies) do

            local distance =
                #(
                    playerCoords
                    - zombieCoords
                )

            if networkId ~= 0
                and NetworkDoesNetworkIdExist(
                    networkId
                )
                and distance < 100.0 then

                local zombiePed =
                    CMG.getObjectId(
                        networkId,
                        "zombie"
                    )

                if zombiePed
                    and DoesEntityExist(
                        zombiePed
                    ) then

                    local animDict =
                        "special_ped@zombie@base"

                    if not IsEntityPlayingAnim(
                        zombiePed,
                        animDict,
                        "base",
                        3
                    ) then

                        CMG.loadAnimDict(
                            animDict
                        )

                        TaskPlayAnim(
                            zombiePed,
                            animDict,
                            "base",
                            8.0,
                            8.0,
                            -1,
                            1,
                            1.0,
                            false,
                            false,
                            false
                        )

                        RemoveAnimDict(
                            animDict
                        )
                    end

                    SetBlockingOfNonTemporaryEvents(
                        zombiePed,
                        true
                    )
                end
            end

            if distance < 1.5 then
                CMG.setIgnoreDeathSound(
                    true
                )

                playZombieJumpScare()

                SetEntityHealth(
                    PlayerPedId(),
                    0
                )

                TriggerServerEvent(
                    "89653ddee4",
                    networkId
                )

                Wait(100)

                DoScreenFadeIn(6000)

                Wait(6000)

                CMG.setIgnoreDeathSound(
                    false
                )
            end
        end

        Wait(250)
    end
end)


-- ============================================================
-- START ZOMBIE SOUND WHEN ONE GETS WITHIN 30M
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    if not CMG.isHalloween() then
        return
    end

    while true do
        local playerCoords =
            CMG.getPlayerCoords()

        for networkId, zombieCoords
            in pairs(zombies) do

            local distance =
                #(
                    playerCoords
                    - zombieCoords
                )

            if NetworkDoesNetworkIdExist(
                networkId
            ) then

                local zombiePed =
                    CMG.getObjectId(
                        networkId,
                        "zombie nearby"
                    )

                if distance < 30.0
                    and zombiePed
                    and not zombieSoundStarted[
                        zombiePed
                    ] then

                    startZombieSound(
                        zombiePed
                    )

                    zombieSoundStarted[
                        zombiePed
                    ] = true
                end
            end
        end

        Wait(250)
    end
end)
