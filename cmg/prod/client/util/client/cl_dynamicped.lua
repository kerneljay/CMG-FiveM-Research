--[[
    LEVEL 1 BEGINNER GUIDE — Dynamicped
    ========================================

    File: cmg/prod/client/util/client/cl_dynamicped.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: onResourceStop
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
    Dynamic Ped Spawner
    ===================

    CMG.createDynamicPed(...) is used all over the resource for shopkeepers,
    guards and ambient NPCs.

    The clever part is DISTANCE STREAMING:
      Calling createDynamicPed normally does NOT immediately spawn the ped.
      It saves a small definition in `dynamicPeds`.

      A background thread checks the player's distance every second:
        close enough -> spawn the ped
        too far away -> delete the ped

    Function arguments:
      modelHash
      position
      heading
      isStatic
      animDict
      animName
      spawnDistance
      internalEntryId   -- normally nil; used by this file when spawning
      callback(ped)     -- optional function called after creation

    If isStatic is true, the ped is:
      * invulnerable
      * non-hostile
      * blocked from ambient AI events
      * frozen
      * non-colliding
      * resistant to ragdoll/evasive behaviour

    This keeps distant NPCs from wasting client resources.
]]

local dynamicPeds = {}
local nextDynamicPedId = 1


-- ============================================================
-- CREATE OR REGISTER A DYNAMIC PED
-- ============================================================

function CMG.createDynamicPed(
    modelHash,
    position,
    heading,
    isStatic,
    animDict,
    animName,
    spawnDistance,
    internalEntryId,
    callback
)
    local ped = 0

    -- Normal calls register a definition for the streaming thread.
    if not internalEntryId then
        local entryId =
            nextDynamicPedId

        dynamicPeds[entryId] = {
            entity = 0,
            modelHash = modelHash,
            position = position,
            heading = heading,
            static = isStatic,
            animDict = animDict,
            animName = animName,
            minDistance = spawnDistance,
            distanceToPlayer = 0.0,
            cb = callback,
            created = false
        }

        nextDynamicPedId =
            nextDynamicPedId + 1

        return ped
    end

    -- Internal calls actually spawn an already-registered entry.
    local loadedModel =
        CMG.loadModel(
            modelHash
        )

    modelHash =
        loadedModel or modelHash

    if not loadedModel then
        modelHash = 0
    end

    if not modelHash
        or modelHash == 0 then

        print(
            "failed to spawn dynamic ped, invalid model"
        )

        return
    end

    ped =
        CreatePed(
            26,
            modelHash,
            position.x,
            position.y,
            position.z,
            heading,
            false,
            false
        )

    dynamicPeds[
        internalEntryId
    ].entity = ped

    SetModelAsNoLongerNeeded(
        modelHash
    )

    if isStatic then
        SetEntityCanBeDamaged(
            ped,
            false
        )

        SetPedAsEnemy(
            ped,
            false
        )

        SetEntityHeading(
            ped,
            heading
        )

        SetBlockingOfNonTemporaryEvents(
            ped,
            true
        )

        SetPedResetFlag(
            ped,
            249,
            true
        )

        SetPedConfigFlag(
            ped,
            185,
            true
        )

        SetPedConfigFlag(
            ped,
            108,
            true
        )

        SetPedCanEvasiveDive(
            ped,
            false
        )

        SetPedCanRagdollFromPlayerImpact(
            ped,
            false
        )

        SetPedConfigFlag(
            ped,
            208,
            true
        )

        SetEntityCollision(
            ped,
            false,
            false
        )

        FreezeEntityPosition(
            ped,
            true
        )

        SetEntityCoordsNoOffset(
            ped,
            position.x,
            position.y,
            position.z,
            false,
            false,
            false
        )
    end

    if animDict and animName then
        CMG.loadAnimDict(
            animDict
        )

        TaskPlayAnim(
            ped,
            animDict,
            animName,
            8.0,
            0.0,
            -1,
            1,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            animDict
        )
    end

    if type(callback) == "function"
        and ped ~= 0 then

        callback(ped)
    end

    return ped
end


-- ============================================================
-- DISTANCE STREAMING
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    Wait(5000)

    while true do
        local playerCoords =
            GetEntityCoords(
                PlayerPedId()
            )

        for entryId, entry
            in pairs(dynamicPeds) do

            entry.distanceToPlayer =
                #(entry.position - playerCoords)

            if entry.distanceToPlayer
                <= entry.minDistance then

                if not entry.created then
                    CMG.createDynamicPed(
                        entry.modelHash,
                        entry.position,
                        entry.heading,
                        entry.static,
                        entry.animDict,
                        entry.animName,
                        entry.minDistance,
                        entryId,
                        entry.cb
                    )

                    entry.created = true
                end

            elseif entry.created then
                if DoesEntityExist(
                    entry.entity
                ) then

                    DeleteEntity(
                        entry.entity
                    )

                    entry.created =
                        false
                end
            end
        end

        Citizen.Wait(1000)
    end
end)


-- ============================================================
-- RESOURCE CLEANUP
-- ============================================================

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if GetCurrentResourceName()
            ~= resourceName then
            return
        end

        for _, entry
            in pairs(dynamicPeds) do

            if DoesEntityExist(
                entry.entity
            ) then

                DeleteEntity(
                    entry.entity
                )
            end
        end
    end
)
