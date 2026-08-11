--[[
    LEVEL 1 BEGINNER GUIDE — Atm
    =================================

    File: cmg/prod/client/core/cl_atm.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Atm feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
      * Background threads: 6
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: c80193f4f4, 0d0bba08e3, d96c9842ab, 0b6d9ff2bc, f0b274ca98, 9b400f568d, c63557b5fa, de574bb3d5
      * Local event handlers: none found by static scan
      * Server events sent: d96c9842ab, f448952ef9, ec10dc3f68, c63557b5fa, 6c81c57c72
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/atms

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
    ATM / ATM Robbery Client
    ========================

    Beginner overview:

      NORMAL ATM:
        * Walking into an ATM area opens the ATM menu.
        * Deposit / Withdraw ask for an amount.
        * Deposit All / Withdraw All do not need an amount.
        * The player must be on foot and still inside the ATM area.

      DYNAMIC ATMS:
        * Other scripts can call CMG.createAtm(id, coords).
        * CMG.deleteAtm(id) removes that marker/area again.

      ATM ROBBERY:
        * Some configured ATMs can be attacked.
        * Entering the robbery area asks the server for its cooldown state.
        * The player must be holding the exact weapon hash used by the
          original script.
        * Repeated attacks damage the ATM door.
        * Once enough hits are recorded, the server starts the next robbery
          stage.
        * A circular-progress minigame is then used to cut ATM wires.
        * Server events provide sparks, alarms, money effects and other FX.

    Hash-looking server event names are intentionally kept unchanged.
]]

local atmConfig = CMG.loadModule("cfg/atms")
if not atmConfig then
    return
end

local ATM_MARKER_PROP = "bzzz_marker_atm_green_anim"
local ATM_MARKER_DISTANCE = 20.0

-- True while the player is physically inside a normal ATM interaction area.
local nearAtm = false

-- Stops the temporary "ATM card/object in hand" helper from spawning twice.
local showingAtmHandProp = false

-- Dynamic ATMs created by other scripts:
-- dynamicAtms[id] = { area = areaId, marker = markerHandle }
local dynamicAtms = {}

-- True while the server-controlled robbery interaction owns the player.
local robberySequenceActive = false


-- ============================================================
-- ATM MENU
-- ============================================================

RMenu.Add(
    "cmgatm",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_atmui",
        "cmg_atmui"
    )
)

local atmMenu = RMenu:Get("cmgatm", "mainmenu")
atmMenu:SetSubtitle("~b~ATM")


-- === HELPER FUNCTION: openAtmMenu() ===
local function openAtmMenu()
    RageUI.CloseAll()
    RageUI.Visible(atmMenu, true)
end


-- === HELPER FUNCTION: closeAtmMenu() ===
local function closeAtmMenu()
    RageUI.CloseAll()
    RageUI.Visible(atmMenu, false)
end


-- The original client briefly attaches a small object to the player's hand.
-- It is purely visual and deletes itself after five seconds.

-- === HELPER FUNCTION: showTemporaryAtmHandProp() ===
local function showTemporaryAtmHandProp()
    if showingAtmHandProp then
        return
    end

    showingAtmHandProp = true

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        local modelHash = -121386306

        CMG.loadModel(modelHash)

        local coords = CMG.getPlayerCoords()

        CMG.requestEntitySpawn("atm_object")

        local object = CreateObject(
            modelHash,
            coords.x,
            coords.y,
            coords.z,
            true,
            false,
            false
        )

        AttachEntityToEntity(
            object,
            ped,
            GetPedBoneIndex(ped, 57005),
            0.14,
            0.04,
            -0.02,
            318.0,
            22.0,
            2.0,
            false,
            false,
            false,
            true,
            2,
            true
        )

        SetModelAsNoLongerNeeded(modelHash)

        Citizen.Wait(5000)

        DeleteEntity(object)
        showingAtmHandProp = false
    end)
end


-- === HELPER FUNCTION: playAtmExitAnimation() ===
local function playAtmExitAnimation()
    tCMG.playAnim(
        false,
        {
            {
                "amb@prop_human_atm@male@exit",
                "exit"
            }
        },
        false
    )
end


-- === HELPER FUNCTION: canSubmitAtmTransaction() ===
local function canSubmitAtmTransaction()
    if GetVehiclePedIsIn(
        PlayerPedId(),
        false
    ) ~= 0 then
        tCMG.notify(
            "~r~Get out your vehicle to use the ATM"
        )
        return false
    end

    if not nearAtm then
        tCMG.notify("~r~Not near ATM.")
        return false
    end

    return true
end


-- === HELPER FUNCTION: submitAtmTransaction(eventName, amount) ===
local function submitAtmTransaction(eventName, amount)
    if not canSubmitAtmTransaction() then
        return
    end

    showTemporaryAtmHandProp()
    playAtmExitAnimation()

    if amount ~= nil then
        TriggerServerEvent(eventName, amount)
    else
        TriggerServerEvent(eventName)
    end
end


RageUI.CreateWhile(
    1.0,
    atmMenu,
    nil,
    function()
        RageUI.IsVisible(
            atmMenu,
            true,
            false,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Deposit",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        local input =
                            CMG.GetRageInputText(
                                "Enter amount"
                            )

                        if not tonumber(input) then
                            tCMG.notify(
                                "~r~Invalid amount."
                            )
                            return
                        end

                        submitAtmTransaction(
                            "2898c283c7",
                            input
                        )
                    end
                )

                RageUI.ButtonWithStyle(
                    "Withdraw",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        local input =
                            CMG.GetRageInputText(
                                "Enter amount"
                            )

                        if not tonumber(input) then
                            tCMG.notify(
                                "~r~Invalid amount."
                            )
                            return
                        end

                        submitAtmTransaction(
                            "de2d3b354c",
                            input
                        )
                    end
                )

                RageUI.ButtonWithStyle(
                    "Deposit All",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            submitAtmTransaction(
                                "ae86725473"
                            )
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "Withdraw All",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            submitAtmTransaction(
                                "dabab3db32"
                            )
                        end
                    end
                )
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- NORMAL ATM AREAS
-- ============================================================

-- === HELPER FUNCTION: onEnterAtm() ===
local function onEnterAtm()
    tCMG.setCanAnim(false)
    openAtmMenu()
    nearAtm = true
end


-- === HELPER FUNCTION: onLeaveAtm() ===
local function onLeaveAtm()
    closeAtmMenu()
    tCMG.setCanAnim(true)
    nearAtm = false
end


-- === HELPER FUNCTION: emptyAtmTick() ===
local function emptyAtmTick()
    -- The original normal ATM area did not need a per-frame callback.
end


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    for atmId, coords in pairs(atmConfig.atms) do
        CMG.createArea(
            "atm_" .. atmId,
            coords,
            1.5,
            6,
            onEnterAtm,
            onLeaveAtm,
            emptyAtmTick,
            {atmId = atmId}
        )

        local blip = tCMG.addBlip(
            coords.x,
            coords.y,
            coords.z,
            108,
            4,
            "ATM",
            0.8,
            true
        )

        tCMG.addPropMarker(
            ATM_MARKER_PROP,
            coords.x,
            coords.y,
            coords.z,
            ATM_MARKER_DISTANCE
        )

        -- Robbable ATMs are coloured differently on the minimap.
        for _, robberyCoords
            in pairs(atmConfig.robberyAtms) do

            if #(coords - robberyCoords.xyz) < 5.0 then
                SetBlipColour(blip, 1)
            end
        end
    end

    for atmId, coords
        in pairs(atmConfig.casinoAtms) do

        CMG.createArea(
            "atm_casino_" .. atmId,
            coords,
            1.5,
            6,
            onEnterAtm,
            onLeaveAtm,
            emptyAtmTick,
            {atmId = atmId}
        )

        tCMG.addBlip(
            coords.x,
            coords.y,
            coords.z,
            108,
            4,
            "ATM",
            0.8,
            true
        )

        tCMG.addPropMarker(
            ATM_MARKER_PROP,
            coords.x,
            coords.y,
            coords.z,
            ATM_MARKER_DISTANCE
        )
    end

    -- Casino ATM guards/bouncers.
    for _, coords
        in pairs(atmConfig.casinoAtmPeds) do

        CMG.createDynamicPed(
            -1156746507,
            coords.xyz,
            coords.w,
            true,
            "mini@strip_club@idles@bouncer@base",
            "base",
            75.0,
            nil,
            function()
            end
        )
    end
end)


-- ============================================================
-- DYNAMIC ATM API
-- ============================================================

-- === HELPER FUNCTION: CMG.createAtm(atmId, coords) ===
function CMG.createAtm(atmId, coords)
    local areaId =
        string.format("atm_%s", atmId)

    CMG.createArea(
        areaId,
        coords,
        1.5,
        6,
        onEnterAtm,
        onLeaveAtm,
        emptyAtmTick
    )

    local marker =
        tCMG.addPropMarker(
            ATM_MARKER_PROP,
            coords.x,
            coords.y,
            coords.z,
            ATM_MARKER_DISTANCE
        )

    dynamicAtms[atmId] = {
        area = areaId,
        marker = marker
    }
end


-- === HELPER FUNCTION: CMG.deleteAtm(atmId) ===
function CMG.deleteAtm(atmId)
    local data = dynamicAtms[atmId]

    if not data then
        return
    end

    tCMG.removeMarker(data.marker)
    tCMG.removeArea(data.area)

    dynamicAtms[atmId] = nil
end


-- ============================================================
-- ATM WIRE-CUT MINIGAME
-- ============================================================

-- atmId = which configured robbery ATM is being worked on.
-- difficultyModifier = server value that shortens the allowed timeout.
local function runAtmWireMinigame(
    atmId,
    difficultyModifier
)
    local modifier =
        math.max(
            tonumber(difficultyModifier) or 0,
            0
        )

    -- Three or four wires/rounds.
    local numberOfWires =
        math.random(3, 4)

    local timeoutReduction =
        math.floor(
            modifier / numberOfWires
        )

    local minigameSucceeded = true
    local notificationThreadDone = false

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        while not notificationThreadDone do
            drawNativeNotification(
                "Press ~INPUT_JUMP~ in the correct area to cut the wire."
            )
            Citizen.Wait(0)
        end
    end)

    for _ = 1, numberOfWires do
        -- 75% Easy, 25% Medium.
        local difficulty =
            math.random(1, 4) <= 3
            and "Easy"
            or "Medium"

        local waitingForResult = true

        CMG.minigameCircularProgressBar({
            Difficulty = difficulty,

            Timeout = math.max(
                4000,
                25000 - timeoutReduction
            ),

            onComplete = function(success)
                minigameSucceeded = success
                waitingForResult = false
            end,

            onTimeout = function()
                minigameSucceeded = false
                waitingForResult = false
            end
        })

        while waitingForResult do
            drawNativeText("Cut the wires")
            Citizen.Wait(0)
        end

        CMG.setPlayerCombatTimer(
            30,
            false
        )

        if not minigameSucceeded then
            PlaySoundFrontend(
                -1,
                "HACKING_CLICK_BAD",
                "",
                false
            )
            break
        end

        PlaySoundFrontend(
            -1,
            "HACKING_SUCCESS",
            "",
            true
        )

        Citizen.Wait(2000)

        -- Wait until any prior progress bar has actually finished.
        local waitStartedAt =
            GetGameTimer()

        while CMG.isProgressBarRunning() do
            assert(
                GetGameTimer() - waitStartedAt
                    < 5000,
                "Timed out whilst waiting for progress bar to finished"
            )

            Wait(0)
        end

        PlaySoundFrontend(
            -1,
            "HACKING_CLICK",
            "",
            true
        )

        CMG.startCircularProgressBar(
            "",
            2000,
            nil,
            function()
            end
        )

        -- Tell the server this wire stage succeeded.
        TriggerServerEvent(
            "d96c9842ab",
            atmId,
            false
        )

        Citizen.Wait(2000)
    end

    notificationThreadDone = true

    return minigameSucceeded
end


-- ============================================================
-- ROBBERY POSITION HELPER
-- ============================================================

-- Finds a point roughly 0.65m in front of a robbery ATM.

-- === HELPER FUNCTION: getAtmFrontPosition(atmCoords) ===
local function getAtmFrontPosition(atmCoords)
    local pitch =
        math.rad(-0.8738472)

    local heading =
        math.rad(atmCoords.w)

    local direction =
        vector3(
            -math.sin(heading)
                * math.abs(math.cos(pitch)),

            math.cos(heading)
                * math.abs(math.cos(pitch)),

            math.sin(pitch)
        )

    return
        atmCoords.xyz +
        direction * 0.65
end


-- ============================================================
-- ROBBERY VISUAL / AUDIO EVENTS
-- ============================================================

-- Electrical spark + money-rain effect for 15 seconds.

-- === NETWORK EVENT: receives "c80193f4f4" from server/another network source ===
RegisterNetEvent("c80193f4f4", function(atmId)
    local atmCoords =
        atmConfig.robberyAtms[atmId]

    if not atmCoords then
        return
    end

    local front =
        getAtmFrontPosition(atmCoords)

    CMG.loadPtfx("core")

    StartParticleFxNonLoopedAtCoord(
        "ent_sht_electrical_box",
        front.x,
        front.y,
        front.z - 0.5,
        atmCoords.w,
        0.0,
        0.0,
        2.0,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset("core")

    CMG.loadPtfx(
        "scr_xs_celebration"
    )

    local moneyFx =
        StartParticleFxLoopedAtCoord(
            "scr_xs_money_rain",
            front.x,
            front.y,
            front.z - 0.2,
            atmCoords.w + 90.0,
            0.0,
            0.0,
            1.0,
            false,
            false,
            false,
            false
        )

    RemoveNamedPtfxAsset(
        "scr_xs_celebration"
    )

    Citizen.Wait(15000)

    StopParticleFxLooped(
        moneyFx,
        false
    )
end)


-- Plays repeated pickup/beep sounds for 15 seconds.

-- === NETWORK EVENT: receives "0d0bba08e3" from server/another network source ===
RegisterNetEvent("0d0bba08e3", function()
    local startedAt = GetGameTimer()
    local lastSoundAt = 0

    while GetGameTimer() - startedAt <= 15000 do
        local now = GetGameTimer()

        if now - lastSoundAt
            >= math.random(150, 650) then

            PlaySoundFrontend(
                -1,
                "Bus_Schedule_Pickup",
                "DLC_PRISON_BREAK_HEIST_SOUNDS",
                false
            )

            lastSoundAt = now
        end

        Citizen.Wait(0)
    end
end)


-- Single electrical-destruction particle.

-- === NETWORK EVENT: receives "d96c9842ab" from server/another network source ===
RegisterNetEvent("d96c9842ab", function(atmId)
    local atmCoords =
        atmConfig.robberyAtms[atmId]

    if not atmCoords then
        return
    end

    local front =
        getAtmFrontPosition(atmCoords)

    CMG.loadPtfx("core")

    StartParticleFxNonLoopedAtCoord(
        "ent_dst_electrical",
        front.x,
        front.y,
        front.z - 0.5,
        atmCoords.w,
        0.0,
        0.0,
        2.0,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset("core")
end)


-- Smoothly updates framework value/event "dba3e00154" over ten seconds.
RegisterNetEvent(
    "0b6d9ff2bc",
    function(startValue, amountToAdd)
        CMG.setPlayerCombatTimer(
            60,
            false
        )

        local startedAt =
            GetGameTimer()

        while true do
            local elapsed =
                GetGameTimer() - startedAt

            if elapsed >= 10000 then
                TriggerEvent(
                    "dba3e00154",
                    startValue + amountToAdd
                )
                break
            end

            local progress =
                elapsed / 10000

            TriggerEvent(
                "dba3e00154",
                startValue +
                    math.floor(
                        amountToAdd * progress
                    )
            )

            Citizen.Wait(0)
        end
    end
)


-- Small burst/explosion-style particle at an ATM.

-- === NETWORK EVENT: receives "f0b274ca98" from server/another network source ===
RegisterNetEvent("f0b274ca98", function(atmId)
    local atmCoords =
        atmConfig.robberyAtms[atmId]

    if not atmCoords then
        return
    end

    CMG.loadPtfx(
        "veh_xs_vehicle_mods"
    )

    for _ = 1, 10 do
        UseParticleFxAsset(
            "veh_xs_vehicle_mods"
        )

        StartParticleFxNonLoopedAtCoord(
            "exp_xs_mine_tar",
            atmCoords.x,
            atmCoords.y,
            atmCoords.z - 0.5,
            0.0,
            0.0,
            0.0,
            1.0,
            false,
            false,
            false
        )

        Citizen.Wait(50)
    end

    RemoveNamedPtfxAsset(
        "veh_xs_vehicle_mods"
    )
end)


-- One-minute burglar alarm.

-- === NETWORK EVENT: receives "9b400f568d" from server/another network source ===
RegisterNetEvent("9b400f568d", function(atmId)
    local atmCoords =
        atmConfig.robberyAtms[atmId]

    if not atmCoords then
        return
    end

    while not RequestScriptAudioBank(
        "Alarms",
        false
    ) do
        Citizen.Wait(0)
    end

    local soundId = GetSoundId()

    PlaySoundFromCoord(
        soundId,
        "Burglar_Bell",
        atmCoords.x,
        atmCoords.y,
        atmCoords.z,
        "Generic_Alarms",
        false,
        0.05,
        false
    )

    Citizen.Wait(60000)

    StopSound(soundId)
    ReleaseSoundId(soundId)
end)


-- ============================================================
-- ROBBERY DOOR / SMASHING STATE
-- ============================================================

local requiredDoorHits = 0
local currentDoorHits = 0
local smashAnimationBusy = false

-- Network time when this robbery ATM was most recently robbed.
local lastRobbedNetworkTime = 0

-- Same event handler earlier in the file uses this as a general "robbery
-- sequence owns the player" lock.
-- robberySequenceActive is declared near the top.


-- === HELPER FUNCTION: onEnterRobberyAtm(areaData) ===
local function onEnterRobberyAtm(areaData)
    requiredDoorHits =
        math.random(6, 12)

    lastRobbedNetworkTime = 0

    TriggerServerEvent(
        "f448952ef9",
        areaData.robberyId
    )
end


-- === HELPER FUNCTION: onLeaveRobberyAtm(areaData) ===
local function onLeaveRobberyAtm(areaData)
    if robberySequenceActive then
        TriggerServerEvent(
            "ec10dc3f68",
            areaData.robberyId
        )
    end

    currentDoorHits = 0
end


-- === HELPER FUNCTION: playRandomSmashSound() ===
local function playRandomSmashSound()
    RequestScriptAudioBank(
        "NIGEL_02_CRASH_A",
        true
    )

    RequestScriptAudioBank(
        "NIGEL_02_CRASH_B",
        true
    )

    Citizen.Wait(500)

    local coords = CMG.getPlayerCoords()

    local soundName =
        math.random(1, 10) >= 8
        and "WINDOW_CRASH"
        or "WALL_CRASH"

    PlaySoundFromCoord(
        -1,
        soundName,
        coords.x,
        coords.y,
        coords.z,
        "NIGEL_02_SOUNDSET",
        false,
        0,
        false
    )

    Citizen.Wait(1500)

    ReleaseNamedScriptAudioBank(
        "NIGEL_02_CRASH_B"
    )

    ReleaseNamedScriptAudioBank(
        "NIGEL_02_CRASH_A"
    )
end


local smashParticleChoices = {
    {
        "des_vaultdoor",
        "ent_ray_pro1_concrete_impacts"
    },
    {
        "des_fib_glass",
        "ent_ray_fbi2_window_break"
    }
}


-- === HELPER FUNCTION: playRandomSmashParticles() ===
local function playRandomSmashParticles()
    local fx =
        smashParticleChoices[
            math.random(
                1,
                #smashParticleChoices
            )
        ]

    CMG.loadPtfx(fx[1])

    Citizen.Wait(500)

    UseParticleFxAsset(fx[1])

    local coords = CMG.getPlayerCoords()

    local forward =
        GetEntityForwardVector(
            PlayerPedId()
        )

    local effectCoords =
        coords + forward * 1.0

    StartParticleFxNonLoopedAtCoord(
        fx[2],
        effectCoords.x,
        effectCoords.y,
        effectCoords.z,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset(fx[1])
end


local function waitForScriptTask(
    ped,
    taskHash
)
    while GetScriptTaskStatus(
        ped,
        taskHash
    ) ~= 7 do
        Citizen.Wait(0)
    end
end


local function beginDoorSmash(
    robberyId,
    atmCoords
)
    if smashAnimationBusy then
        return
    end

    smashAnimationBusy = true

    local ped = PlayerPedId()

    ClearPedTasks(ped)

    TaskGoStraightToCoord(
        ped,
        atmCoords.x,
        atmCoords.y,
        atmCoords.z,
        1.0,
        3000,
        atmCoords.w,
        0.35
    )

    waitForScriptTask(
        ped,
        2106541073
    )

    CMG.loadAnimDict(
        "melee@small_wpn@streamed_core"
    )

    ped = PlayerPedId()

    TaskPlayAnim(
        ped,
        "melee@small_wpn@streamed_core",
        "ground_attack_on_spot",
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
        "melee@small_wpn@streamed_core"
    )

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(
        playRandomSmashSound
    )

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(
        playRandomSmashParticles
    )

    Citizen.Wait(2000)

    ClearPedTasks(ped)

    currentDoorHits =
        currentDoorHits + 1

    if currentDoorHits >= requiredDoorHits then
        TriggerServerEvent(
            "c63557b5fa",
            robberyId
        )
    end

    TaskPedSlideToCoord(
        ped,
        atmCoords.x,
        atmCoords.y,
        atmCoords.z,
        atmCoords.w,
        2000
    )

    waitForScriptTask(
        ped,
        1045468327
    )

    smashAnimationBusy = false
end


-- === HELPER FUNCTION: robberyAtmTick(areaData) ===
local function robberyAtmTick(areaData)
    if robberySequenceActive then
        return
    end

    local ped = PlayerPedId()

    local _, weaponHash =
        GetCurrentPedWeapon(
            ped,
            0,
            false
        )

    -- Exact weapon required by the original script.
    if weaponHash ~= -2067956739 then
        return
    end

    -- Fifteen-minute local cooldown display.
    if lastRobbedNetworkTime > 0 then
        local remainingMs =
            lastRobbedNetworkTime +
            900000 -
            GetNetworkTime()

        if remainingMs > 0 then
            drawNativeNotification(
                "This ATM has been robbed recently. You can rob it in " ..
                formatTimeString(
                    formatTime(
                        remainingMs / 1000
                    )
                ),
                true
            )
        end

        return
    end

    drawNativeNotification(
        "Hit the ATM with ~INPUT_ATTACK~ to begin breaking the door."
    )

    if currentDoorHits > 0 then
        local percentage =
            math.floor(
                currentDoorHits /
                requiredDoorHits *
                100
            )

        percentage =
            math.min(percentage, 100)

        subtitleText(
            "~r~ATM door damage " ..
            tostring(percentage) ..
            "%"
        )
    end

    if RageUI.Visible(atmMenu) then
        RageUI.Visible(
            atmMenu,
            false
        )
    end

    DisableControlAction(
        0,
        24,
        true
    )

    if IsDisabledControlJustPressed(
        0,
        24
    ) then
        local robberyId =
            areaData.robberyId

        local atmCoords =
            atmConfig.robberyAtms[
                robberyId
            ]

        if atmCoords then
            Citizen.CreateThreadNow(
                function()
                    beginDoorSmash(
                        robberyId,
                        atmCoords
                    )
                end
            )
        end
    end
end


-- ============================================================
-- SERVER: START THE WIRE-CUT STAGE
-- ============================================================

RegisterNetEvent(
    "c63557b5fa",
    function(atmId, difficultyModifier)
        robberySequenceActive = true

        local ped = PlayerPedId()
        local atmCoords =
            atmConfig.robberyAtms[atmId]

        if not atmCoords then
            robberySequenceActive = false
            return
        end

        tCMG.setCanAnim(false)

        CMG.setPlayerCombatTimer(
            30,
            false
        )

        -- Put normal weapon away.
        CMG.setWeapon(
            ped,
            -1569615261,
            true
        )

        ClearPedTasksImmediately(ped)

        Citizen.Wait(1000)

        TaskGoStraightToCoord(
            ped,
            atmCoords.x,
            atmCoords.y,
            atmCoords.z,
            1.0,
            5000,
            atmCoords.w,
            0.1
        )

        waitForScriptTask(
            ped,
            2106541073
        )

        CMG.loadClipSet(
            "move_ped_crouched"
        )

        SetPedCanPlayAmbientAnims(
            ped,
            false
        )

        SetPedCanPlayAmbientBaseAnims(
            ped,
            false
        )

        SetPedMovementClipset(
            ped,
            "move_ped_crouched",
            0.35
        )

        SetPedStrafeClipset(
            ped,
            "move_ped_crouched_strafing"
        )

        RemoveClipSet(
            "move_ped_crouched"
        )

        CMG.loadAnimDict(
            "mini@repair"
        )

        TaskPlayAnim(
            ped,
            "mini@repair",
            "fixing_a_ped",
            8.0,
            -8.0,
            -1,
            17,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            "mini@repair"
        )

        local success =
            runAtmWireMinigame(
                atmId,
                difficultyModifier
            )

        TriggerServerEvent(
            "6c81c57c72",
            atmId,
            success
        )

        StopAnimTask(
            ped,
            "mini@repair",
            "fixing_a_ped",
            1.0
        )

        ResetPedStrafeClipset(ped)

        ResetPedMovementClipset(
            ped,
            0.0
        )

        SetPedCanPlayAmbientAnims(
            ped,
            true
        )

        SetPedCanPlayAmbientBaseAnims(
            ped,
            true
        )

        tCMG.setCanAnim(true)

        robberySequenceActive = false
    end
)


-- ============================================================
-- ROBBERY AREAS / COOLDOWN UPDATE
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    for robberyId, coords
        in pairs(atmConfig.robberyAtms) do

        CMG.createArea(
            "atmrobbery_" .. robberyId,
            coords.xyz,
            1.5,
            6,
            onEnterRobberyAtm,
            onLeaveRobberyAtm,
            robberyAtmTick,
            {robberyId = robberyId}
        )
    end
end)


-- Server sends the network timestamp of the last robbery.

-- === NETWORK EVENT: receives "de574bb3d5" from server/another network source ===
RegisterNetEvent("de574bb3d5", function(networkTime)
    lastRobbedNetworkTime =
        networkTime
end)
