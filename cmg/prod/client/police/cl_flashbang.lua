--[[
    LEVEL 1 BEGINNER GUIDE — Flashbang
    =======================================

    File: cmg/prod/client/police/cl_flashbang.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Flashbang feature.

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
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 3c58e7b43c
      * Local event handlers: none found by static scan
      * Server events sent: 1d24fadaed
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
    Police Flashbang
    ================

    Flashbang weapon hash:
      -73270376

    Thrown flashbang object model:
      2113529881

    Flow:
      1. The tick notices when the local player equips the flashbang.
      2. When they throw/shoot it, a five-second local cooldown begins.
      3. After 100ms the client finds the nearby thrown flashbang object.
      4. It waits 2.5 seconds, reads the object's final coordinates and sends
         them to the server with event 1d24fadaed.
      5. The server broadcasts event 3c58e7b43c(coords).
      6. Clients within 10 metres receive the full flash/stun visual effect.

    The flash effect:
      * creates a bright particle flash
      * creates a harmless explosion effect
      * plays a post-processing stun effect
      * shakes the camera
      * makes the local ped cover their eyes for one second
      * clears the visual/camera effect after six seconds

    Hash-looking event names are deliberately unchanged.
]]

local FLASHBANG_WEAPON_HASH = -73270376
local FLASHBANG_OBJECT_MODEL = 2113529881
local FLASH_RADIUS = 10.0

local flashbangEquipped = false
local throwCooldown = false

-- Stops the same physical flashbang object being reported twice.
local handledObjects = {}


AddTextEntry(
    "WT_GNADE_FLSH",
    "Flashbang"
)


-- ============================================================
-- VISUAL FLASH PARTICLE
-- ============================================================

-- === HELPER FUNCTION: createFlashParticle(coords) ===
local function createFlashParticle(coords)
    RequestNamedPtfxAsset("core")

    while not HasNamedPtfxAssetLoaded(
        "core"
    ) do
        Citizen.Wait(0)
    end

    UseParticleFxAsset("core")

    StartParticleFxLoopedAtCoord(
        "ent_anim_paparazzi_flash",
        coords.x,
        coords.y,
        coords.z,
        0.0,
        0.0,
        0.0,
        25.0,
        false,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset("core")
end


-- ============================================================
-- APPLY FLASH EFFECT TO THIS CLIENT
-- ============================================================

-- === HELPER FUNCTION: flashLocalPlayer(coords) ===
local function flashLocalPlayer(coords)
    AddExplosion(
        coords.x,
        coords.y,
        coords.z,
        25,
        0.0,
        true,
        true,
        0.0
    )

    createFlashParticle(coords)

    AnimpostfxPlay(
        "Dont_tazeme_bro",
        0,
        true
    )

    ShakeGameplayCam(
        "HAND_SHAKE",
        7.5
    )

    local animDict =
        "anim@heists@ornate_bank@thermal_charge"

    RequestAnimDict(animDict)

    while not HasAnimDictLoaded(
        animDict
    ) do
        Citizen.Wait(0)
    end

    TaskPlayAnim(
        CMG.getPlayerPed(),
        animDict,
        "cover_eyes_intro",
        -8.0,
        -8.0,
        1000,
        50,
        8.0,
        false,
        false,
        false
    )

    RemoveAnimDict(animDict)

    Citizen.Wait(6000)

    AnimpostfxStop(
        "Dont_tazeme_bro"
    )

    StopGameplayCamShaking(
        false
    )
end


-- Server broadcasts the flash location.
RegisterNetEvent(
    "3c58e7b43c",
    function(coords)
        local distance =
            #(coords - CMG.getPlayerCoords())

        if distance <= FLASH_RADIUS then
            flashLocalPlayer(coords)
        end
    end
)


-- ============================================================
-- REPORT A THROWN FLASHBANG
-- ============================================================

-- === HELPER FUNCTION: findAndReportThrownFlashbang() ===
local function findAndReportThrownFlashbang()
    Citizen.Wait(100)

    local playerCoords =
        CMG.getPlayerCoords()

    local object =
        GetClosestObjectOfType(
            playerCoords.x,
            playerCoords.y,
            playerCoords.z,
            FLASH_RADIUS,
            FLASHBANG_OBJECT_MODEL,
            false,
            false,
            false
        )

    if object == 0
        or handledObjects[object] then
        return
    end

    handledObjects[object] = true

    -- Wait for the fuse/throw to complete before reading the location.
    Citizen.Wait(2500)

    TriggerServerEvent(
        "1d24fadaed",
        GetEntityCoords(object)
    )
end


-- ============================================================
-- WEAPON TICK
-- ============================================================

-- === HELPER FUNCTION: flashbangTick() ===
local function flashbangTick()
    local playerPed =
        CMG.getPlayerPed()

    local selectedWeapon =
        GetSelectedPedWeapon(
            playerPed
        )

    if not flashbangEquipped then
        if selectedWeapon
            == FLASHBANG_WEAPON_HASH
            and not throwCooldown then

            flashbangEquipped = true
        end

        return
    end

    if selectedWeapon
        ~= FLASHBANG_WEAPON_HASH then

        flashbangEquipped = false
        return
    end

    if IsPedShooting(playerPed)
        and not throwCooldown then

        throwCooldown = true

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        Citizen.CreateThread(
            findAndReportThrownFlashbang
        )

        SetTimeout(
            5000,
            function()
                throwCooldown = false
            end
        )

        flashbangEquipped = false
    end
end


CMG.createThreadOnTick(
    flashbangTick,
    "Flashbang"
)
