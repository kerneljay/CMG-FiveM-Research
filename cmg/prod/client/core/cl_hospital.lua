--[[
    LEVEL 1 BEGINNER GUIDE — Hospital
    ======================================

    File: cmg/prod/client/core/cl_hospital.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Hospital feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 5
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:onClientSpawn
      * Server events sent: a5747e8851, d864a7ba56
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
    Hospital / Prison Bed Healing
    =============================

    This file has two healing systems:

      1. Public hospital heal points
         Stand on a blue marker and press E. Normal heal points have a
         30-second cooldown and cannot be used while in combat or a vehicle.

      2. Prison hospital beds
         Prisoners can lie on configured beds. Staying in the bed for
         60 seconds restores health.
]]

-- Start 30 seconds in the past so the player can heal immediately after load.
local lastHospitalHealTime = GetGameTimer() - 30000
local HOSPITAL_HEAL_COOLDOWN_MS = 30000
local PRISON_BED_HEAL_TIME_MS = 60000

local hospitalLocations = {
    sandy = vector3(1833.0328369141, 3682.8110351563, 33.270057678223),
    paleto = vector3(-251.9546661377, 6334.146484375, 31.427177429199),
    mountzenah = vector3(-436.04296875, -326.27416992188, 33.910766601562),
    vipisland = vector3(-2158.7416992188, 5235.0043945312, 17.791783828735),
    mpstrainingrounds = vector3(-1963.4949951172, 3028.5361328125, 31.820279846191),
    pillbox = vector3(310.47421264648, -566.21301269531, 42.396602630615)
}

-- The decompiler produced many extra nil entries here because it treated
-- vector3 as if it returned multiple values. Each real entry is simply:
--   {bedObjectModelHash, interactionPosition}
local prisonBeds = {
    {2117668672, vector3(1777.61, 2559.03, 45.36013)},
    {2117668672, vector3(1777.61, 2561.433, 45.36013)},
    {2117668672, vector3(1777.61, 2563.435, 45.36013)},
    {2117668672, vector3(1781.709, 2565.437, 45.36013)},
    {2117668672, vector3(1781.709, 2563.435, 45.36013)},
    {2117668672, vector3(1781.709, 2561.433, 45.36013)}
}

local usingPrisonBed = false
local currentPrisonBed = nil
local prisonBedStartedAt = 0

-- ============================================================
-- PRISON BED SYSTEM
-- ============================================================

-- === HELPER FUNCTION: startUsingPrisonBed(bed) ===
local function startUsingPrisonBed(bed)
    if not globalInPrison or usingPrisonBed then
        return
    end

    local position = bed[2]

    CMG.DrawText3D(
        position,
        "Press [E] to lay on the bed",
        0.45,
        4
    )

    if not IsControlJustPressed(0, 51) then
        return
    end

    usingPrisonBed = true
    prisonBedStartedAt = GetGameTimer()

    local playerPed = PlayerPedId()

    SetEntityCoordsNoOffset(
        playerPed,
        position.x,
        position.y,
        position.z + 1.0,
        true,
        false,
        false
    )

    local bedObject = GetClosestObjectOfType(
        position.x,
        position.y,
        position.z,
        1.5,
        bed[1],
        false,
        false,
        false
    )

    if bedObject ~= 0 then
        SetEntityHeading(
            playerPed,
            GetEntityHeading(bedObject) + 180.0
        )
    end

    CMG.loadAnimDict("lying@on_grass")

    TaskPlayAnim(
        playerPed,
        "lying@on_grass",
        "base",
        8.0,
        8.0,
        -1,
        1,
        0.0,
        false,
        false,
        false
    )

    RemoveAnimDict("lying@on_grass")

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        Citizen.Wait(0)

        currentPrisonBed = bed

        CMG.startCircularProgressBar(
            "",
            PRISON_BED_HEAL_TIME_MS,
            nil,
            function()
                -- Original callback was empty; healing is controlled by the
                -- tick below so it can verify the player is still lying down.
            end
        )
    end)
end

-- === HELPER FUNCTION: updatePrisonBed() ===
local function updatePrisonBed()
    if not usingPrisonBed or not currentPrisonBed then
        return
    end

    local playerPed = PlayerPedId()

    -- If the player stopped the lying animation, move them beside the bed and
    -- cancel the progress bar.
    if not IsEntityPlayingAnim(playerPed, "lying@on_grass", "base", 3) then
        local position = currentPrisonBed[2]

        local bedObject = GetClosestObjectOfType(
            position.x,
            position.y,
            position.z,
            1.5,
            currentPrisonBed[1],
            false,
            false,
            false
        )

        if bedObject ~= 0 then
            local exitCoords = GetOffsetFromEntityInWorldCoords(
                bedObject,
                1.0,
                0.0,
                0.0
            )

            SetEntityCoordsNoOffset(
                playerPed,
                exitCoords.x,
                exitCoords.y,
                exitCoords.z + 0.5,
                true,
                false,
                false
            )
        end

        CMG.stopCircularProgressBar()

        usingPrisonBed = false
        currentPrisonBed = nil
        prisonBedStartedAt = 0
        return
    end

    -- Stay on the bed for one minute to get healed.
    if prisonBedStartedAt > 0
        and GetGameTimer() - prisonBedStartedAt > PRISON_BED_HEAL_TIME_MS then

        SetEntityHealth(playerPed, 200)
        tCMG.notify("~g~Healed, free of charge by the NHS.")

        -- Prevent this from repeatedly healing every frame while still lying.
        prisonBedStartedAt = 0
    end
end

-- ============================================================
-- PUBLIC HOSPITAL HEAL POINTS
-- ============================================================

-- === HELPER FUNCTION: showHospitalPrompt() ===
local function showHospitalPrompt()
    drawNativeNotification("Press ~INPUT_PICKUP~ to recieve medical attention.")
end

-- === HELPER FUNCTION: leaveHospitalArea() ===
local function leaveHospitalArea()
    -- Empty in the original script.
end

-- === HELPER FUNCTION: tryUseHospital(hospitalData) ===
local function tryUseHospital(hospitalData)
    if not IsControlJustPressed(1, 51) then
        return
    end

    local hospitalName = hospitalData.hospitalName

    -- VIP island heal point is Platinum-only.
    if hospitalName == "vipisland" and not CMG.isPlatClub() then
        notify("~y~You need to be a subscriber of CMG Platinum to use this location.")
        notify("~y~Available @ store.cmgstudios.net")
        return
    end

    -- Training-ground heal point only works in the training bucket.
    if hospitalName == "mpstrainingrounds"
        and CMG.getPlayerBucket() ~= CMG.getTrainingGroundsBucket() then
        notify("~r~You must be in training grounds to use this heal point.")
        return
    end

    local playerPed = CMG.getPlayerPed()

    -- Decompiled flow: a player in coma is rejected unless the framework's
    -- isCarrying() condition is true. This unusual condition is preserved.
    if tCMG.isInComa() and not CMG.isCarrying() then
        tCMG.notify("~r~You are bleeding out, call a doctor ASAP!")
        return
    end

    if CMG.getPlayerVehicle() ~= 0 then
        tCMG.notify("~r~You can not heal whilst in a vehicle.")
        return
    end

    if CMG.getPlayerCombatTimer() ~= 0 then
        tCMG.notify("~r~You can not heal whilst in combat.")
        return
    end

    if GetGameTimer() <= lastHospitalHealTime + HOSPITAL_HEAL_COOLDOWN_MS then
        tCMG.notify("~r~Healing cooldown, come back later.")
        return
    end

    -- Different server event depending on whether this is a coma/revive heal
    -- or an ordinary health refill.
    if tCMG.isInComa() then
        -- Beginner: sends the "a5747e8851" event to the server.
        TriggerServerEvent("a5747e8851")
    else
        -- Beginner: sends the "d864a7ba56" event to the server.
        TriggerServerEvent("d864a7ba56")
    end

    SetEntityHealth(playerPed, 200)
    tCMG.notify("~g~Healed, free of charge by the NHS.")

    lastHospitalHealTime = GetGameTimer()
end

-- ============================================================
-- CREATE AREAS ON FIRST SPAWN
-- ============================================================

-- === EVENT HANDLER: runs when "CMG:onClientSpawn" fires ===
AddEventHandler("CMG:onClientSpawn", function(_, firstSpawn)
    if not firstSpawn then
        return
    end

    for hospitalName, position in pairs(hospitalLocations) do
        tCMG.addMarker(
            position.x,
            position.y,
            position.z,
            1.0,
            1.0,
            1.0,
            0,
            0,
            255,
            100,
            50,
            27,
            false,
            false,
            true
        )

        CMG.createArea(
            hospitalName .. "_hospital",
            position,
            2.0,
            6,
            showHospitalPrompt,
            leaveHospitalArea,
            tryUseHospital,
            {hospitalName = hospitalName}
        )
    end

    for index, bed in pairs(prisonBeds) do
        CMG.createArea(
            "hospitalBed_" .. tostring(index),
            bed[2],
            1.25,
            5.0,
            function()
                -- Empty enter callback in the original.
            end,
            function()
                -- Empty leave callback in the original.
            end,
            startUsingPrisonBed,
            bed
        )
    end

    CMG.createThreadOnTick(updatePrisonBed, "Hospital Bed")
end)
