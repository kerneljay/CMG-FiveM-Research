--[[
    cl_anticheat.lua — readable reconstruction

    This is a hand-cleaned version of the decompiled `cl_anticheat.lua`. The
    control flow, ordering, magic numbers and (obfuscated) event names are
    preserved exactly; only names, expression folding and formatting changed.

    Server events are referenced by their obfuscated hashes. Where the purpose
    of an event is clear from its use site it is noted in a comment.

    Quirks that were kept because they are in the original are marked with
    "NOTE:".
]]

--=============================================================================
-- Constants
--=============================================================================

-- Decor key stamped onto every vehicle spawned by the script. The value is
-- derived from the entity handle so it cannot simply be copied between
-- entities: DecorGetInt(veh, AC_DECOR) must equal veh % AC_DECOR_MODULO.
local AC_DECOR = "4538025922"
local AC_DECOR_MODULO = 1926

DecorRegister(AC_DECOR, 3)

-- Vehicle models that are legitimately allowed to carry a parachute.
local PARACHUTE_ALLOWED_VEHICLES = {
    -162568007,
    -626868057,
    -1295441017,
    2048634396,
    1179345070,
    184307568,
    1281745250,
    -2048287007,
    1645180079,
    1199077562,
    1200087339,
    541935057,
    224399950,
    -1637862878,
}

--=============================================================================
-- Rogue vehicle cleanup
--
-- Every 500ms: delete locally-created vehicles that were not spawned through
-- the script, and delete networked vehicles that have fallen out of the world.
--=============================================================================

Citizen.CreateThread(function()
    while true do
        if not CMG.isPlayerInBankHeistSetup()
            and not CMG.inEvent()
            and CMG.getPlayerBucket() ~= 333
        then
            local inCayoPerico = CMG.isInCayoPerico()

            for _, vehicle in pairs(CMG.getAllVehicles()) do
                if not NetworkGetEntityIsNetworked(vehicle) then
                    -- Local vehicle: must carry the anti-cheat decor stamp.
                    if DecorGetInt(vehicle, AC_DECOR) ~= vehicle % AC_DECOR_MODULO then
                        local model = GetEntityModel(vehicle)

                        if not IsThisModelATrain(model) then
                            if CMG.isDevMode() then
                                print(string.format("[Debug] Deleting vehicle %s not spawned by script", vehicle))
                            end

                            DeleteEntity(vehicle)
                        end
                    end
                elseif not inCayoPerico then
                    -- Networked vehicle we own: delete it if it has sunk below
                    -- the world *and* is outside the normal map bounds.
                    if NetworkHasControlOfEntity(vehicle) then
                        local coords = GetEntityCoords(vehicle, true)

                        if coords.z < -50.0 then
                            local outOfBounds =
                                coords.y > 7700.0
                                or coords.y < -4000.0
                                or coords.x > 4400.0
                                or coords.x < -3600.0

                            if outOfBounds then
                                local model = GetEntityModel(vehicle)

                                if not IsThisModelABoat(model) and not IsThisModelAJetski(model) then
                                    DeleteEntity(vehicle)
                                end
                            end
                        end
                    end
                end
            end
        end

        Citizen.Wait(500)
    end
end)

--- Stamps the anti-cheat decor onto a locally spawned vehicle so the cleanup
--- thread above leaves it alone.
function CMG.initLocalVehicle(entity)
    DecorSetInt(entity, AC_DECOR, entity % AC_DECOR_MODULO)
end

--=============================================================================
-- Weapon / player defaults enforced every tick
--=============================================================================

local seeThroughReported = false

-- Globally neutered weapons.
SetWeaponDamageModifier(-1553120962, 0.0)
SetWeaponDamageModifier(133987706, 0.0)
SetWeaponDamageModifier(-1323279794, 0.0)
SetWeaponDamageModifier(-1569615261, 0.5)
SetWeaponDamageModifier(126349499, 0.0)

local function antiCheatDefaultsTick()
    local ped = CMG.getPlayerPed()
    local playerId = CMG.getPlayerId()
    local vehicle = CMG.getPlayerVehicle()

    if vehicle == 0 then
        local weapon = GetSelectedPedWeapon(ped)

        if CMG.hasNewPlayerProtection() then
            SetPlayerMeleeWeaponDamageModifier(playerId, 0.0)
            SetPlayerWeaponDamageModifier(playerId, 0.0)
        elseif weapon == 126349499 then
            SetPlayerWeaponDamageModifier(playerId, 0.0)
        else
            SetPlayerWeaponDamageModifier(playerId, 1.0)
            SetWeaponDamageModifier(weapon, 1.0)
        end

        -- Report see-through / wallhack usage once per session, unless the
        -- player is in something that legitimately enables it.
        if not seeThroughReported and GetUsingseethrough() then
            if not CMG.isPlayerInPoliceHeli()
                and not CMG.isPlayerInDrone()
                and not CMG.isPlayerUsingRobot()
                and not CMG.isUsingPoliceRobot()
            then
                TriggerServerEvent("58d77596cf")
                seeThroughReported = true
            end
        end
    end

    if not CMG.inArena() and not CMG.inArenaWarmup() then
        SetPedInfiniteAmmoClip(ped, false)

        for _, storedWeapon in pairs(CMG.getCachedWeaponStore()) do
            SetPedInfiniteAmmo(ped, false, storedWeapon.weaponHash)
        end
    end

    SetEntityInvincible(vehicle, false)

    -- Block pickups (armour / health / ammo crates etc.).
    ToggleUsePickupsForPlayer(playerId, 483577702, false)
    ToggleUsePickupsForPlayer(playerId, -1888453608, false)
    ToggleUsePickupsForPlayer(playerId, -105925489, false)
    ToggleUsePickupsForPlayer(playerId, 1426343849, false)
    Citizen.InvokeNative(-2380603657403713716, 2047, false)
    SetLocalPlayerCanCollectPortablePickups(false)

    SetPlayerHealthRechargeMultiplier(playerId, 0.0)
end

CMG.createThreadOnTick(antiCheatDefaultsTick, "AntiCheat Defaults Tick")

--=============================================================================
-- Resource whitelist
--=============================================================================

local ALLOWED_RESOURCES = {
    chat = true,
    spawnmanager = true,
    sql = true,
    prometheus = true,
    cmg = true,
    surgery = true,
    CMGMLOs = true,
    CMGVeh = true,
    CMGVehiclesEscrow = true,
    CMGTexture = true,
    CMGMap = true,
    CMGSounds = true,
    CMGFirearms = true,
    cmg_clothing_pack1 = true,
    cmg_clothing_pack2 = true,
    cmg_clothing_pack3 = true,
    cmg_clothing_pack4 = true,
    cmgpack = true,
    misc_clothing = true,
    cmgui = true,
    cmgload = true,
    CMGPrison = true,
    ["pma-voice"] = true,
    cmgescr1 = true,
    cmgescr2 = true,
    cmgescr3 = true,
    ["cfx-gabz-mapdata"] = true,
    ["cfx-gabz-records"] = true,
    ["cfx-gabz-carmeet"] = true,
    ["cfx-gabz-arcade"] = true,
    ["cfx-gabz-import"] = true,
    ["cfx-gabz-studio"] = true,
    ["cfx-gabz-hayes"] = true,
    ["cfx-gabz-catcafe"] = true,
    ["cfx-gabz-diner"] = true,
    ["cfx-gabz-vagos"] = true,
    ["cfx-gabz-weedcamp"] = true,
    loaf_lib = true,
    ["lb-phone_prop"] = true,
    ["lb-phone"] = true,
    ["lb-tablet-prop"] = true,
    ["lb-tablet"] = true,
    ["lb-picchat"] = true,
    ["lb-racing"] = true,
    ["lb-games"] = true,
    cmgbank = true,
    offshore = true,
    vigilante = true,
    trapping = true,
    hacking = true,
    gulag = true,
    ["cfx-nteam-milehigh"] = true,
    ["cfx-gabz-247"] = true,
    ["cfx-gabz-fleeca"] = true,
    ["cfx-gabz-pacificbank"] = true,
    ["map4all-parkranger"] = true,
    ["cfx-gabz-parkranger"] = true,
    ykn_gravestone_garage = true,
    ["imperial-manor"] = true,
    tstudio_jurassic_jackpot = true,
    Grapeseed_MC_Clubhouse = true,
    ["k4mb1-casino"] = true,
    ["k4mb1-casinopenthouse"] = true,
    tstudio_audioocclusion = true,
    tstudio_doortuning = true,
    tstudio_zmapdata = true,
    tstudio_redstuner = true,
    rcore_lunapark_assets = true,
    rcore_lunapark = true,
    tstudio_aldentes = true,
    holdem_props = true,
    tcp = true,
    blackjack = true,
    roulette = true,
    texasholdem = true,
    casinoutils = true,
    rcore_pool = true,
    rcore_minigolf_assets = true,
    rcore_minigolf = true,
    fiv3devs_mapdata = true,
    fiv3devs_pillbox = true,
    pvpmaps = true,
    pvpmaps2 = true,
    asylum = true,
    boxing = true,
    clubhouse_harmony = true,
    skelly = true,
    christmas2025 = true,
    halloween2025 = true,
    a19 = true,
    gdc = true,
    blackbunker = true,
    markers = true,
    exclusiveshells = true,
    garageshells = true,
    illegalshells = true,
    miscshells = true,
    startershells = true,
    drug_props = true,
    bzzz_weedpack_v2 = true,
    foodpack1 = true,
    garden = true,
    watering = true,
    lucianos = true,
    plastercasts = true,
    medicprops = true,
    emergency_pack = true,
    drugspack = true,
    vending = true,
    prison = true,
    prison_church = true,
    prison_escape = true,
    prison_tower = true,
    prison_study = true,
    prison_escape_anims = true,
    lsrecycle = true,
    fireworks_emotes = true,
    roleplay_emotes = true,
    carry_emotes = true,
    trash_emotes = true,
    vehicle_emotes = true,
    punish_emotes = true,
}

AddEventHandler("onClientResourceStart", function(resourceName)
    -- Injected resources tend to have long random names.
    if #resourceName >= 30 then
        TriggerServerEvent("d750e699a1", resourceName)
    end

    if not ALLOWED_RESOURCES[resourceName] then
        TriggerServerEvent("e744d8fa9f", resourceName)
    end
end)

--=============================================================================
-- Known cheat-menu event traps
--
-- These events are not used by the server. Anything that fires them is either
-- a menu or a framework the server does not run, so the first hit is reported
-- and every subsequent one is cancelled.
--=============================================================================

local esxSharedObjectReported = false
local suspiciousEventReported = false

AddEventHandler("esx:getSharedObject", function(callback)
    if esxSharedObjectReported == true then
        CancelEvent()
        callback(nil)
        return
    end

    TriggerServerEvent("28293849cf", "esx:getSharedObject")
    esxSharedObjectReported = true
    callback(nil)
end)

local SUSPICIOUS_EVENTS = {
    "ambulancier:selfRespawn",
    "bank:transfer",
    "esx_ambulancejob:revive",
    "esx-qalle-jail:openJailMenu",
    "esx_jailer:wysylandoo",
    "esx_society:openBossMenu",
    "esx:spawnVehicle",
    "esx_status:set",
    "HCheat:TempDisableDetection",
    "UnJP",
    "bank:transfer",
    "esx_skin:openSaveableMenu",
    "esx_society:openBossMenu",
    "esx_status:set",
    "esx_ambulancejob:revive",
    "ambulancier:selfRespawn",
    "esx-qalle-jail:openJailMenu",
    "UnJP",
    "esx_inventoryhud:openPlayerInventory",
    "HCheat:TempDisableDetection",
    "esx_policejob:handcuff",
    "esx:getSharedObject",
    "esx:teleport",
    "esx_spectate:spectate",
    "helpcode",
    "helpCode",
    "32d3e79c27",
    "7c02964cf5",
}

for _, eventName in ipairs(SUSPICIOUS_EVENTS) do
    AddEventHandler(eventName, function()
        if suspiciousEventReported == true then
            CancelEvent()
            return
        end

        TriggerServerEvent("28293849cf", eventName)
        suspiciousEventReported = true
    end)
end

--=============================================================================
-- Clothing / model tampering
--=============================================================================

-- Snapshot of the customization the server last handed us. Refreshed by the
-- SetPlayerModel patch further down.
local cachedCustomization = nil
local customizationReported = false

local function reportCustomizationChange(expected, actual)
    if not customizationReported then
        TriggerServerEvent("c9c6eee377", expected, actual)
        customizationReported = true
    end
end

local function checkCustomization()
    if not cachedCustomization then
        return
    end

    local current = tCMG.getCustomization()

    if cachedCustomization.modelHash ~= current.modelHash then
        reportCustomizationChange(cachedCustomization, current)
    end

    for componentId = 0, 11 do
        -- Component 5 (bags/parachutes) legitimately changes at runtime.
        if componentId ~= 5 then
            local expected = cachedCustomization.components[componentId]
            local actual = current.components[componentId]

            if expected and actual then
                if expected.collectionName ~= actual.collectionName
                    or expected.collectionIndex ~= actual.collectionIndex
                then
                    reportCustomizationChange(cachedCustomization, current)
                end
            end
        end
    end
end

--=============================================================================
-- Damage / defense modifier polling (1s)
--=============================================================================

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerId = PlayerId()
        local ped = PlayerPedId()

        local weaponDamage = GetPlayerWeaponDamageModifier(playerId)
        local weaponDefense = GetPlayerWeaponDefenseModifier(playerId)
        local weaponDefense2 = GetPlayerWeaponDefenseModifier_2(playerId)
        local vehicleDamage = GetPlayerVehicleDamageModifier(playerId)
        local vehicleDefense = GetPlayerVehicleDefenseModifier(playerId)

        local _, currentWeapon = GetCurrentPedWeapon(ped, 0, true)
        local currentWeaponDamage = GetWeaponDamageModifier(currentWeapon)
        local meleeDamage = GetPlayerMeleeWeaponDamageModifier(PlayerId())

        if weaponDamage > 1.0 then
            TriggerServerEvent("c103fac35f", "PlayerWeaponDamageModifier", weaponDamage)
        end

        if weaponDefense > 1.0 then
            TriggerServerEvent("c103fac35f", "PlayerWeaponDefenseModifier", weaponDefense)
        end

        if weaponDefense2 > 1.0 then
            TriggerServerEvent("c103fac35f", "PlayerWeaponDefenseModifier_2", weaponDefense2)
        end

        if vehicleDamage > 1.0 then
            TriggerServerEvent("c103fac35f", "PlayerVehicleDamageModifier", vehicleDamage)
        end

        if vehicleDefense > 1.0 then
            TriggerServerEvent("c103fac35f", "PlayerVehicleDefenseModifier", vehicleDefense)
        end

        if currentWeaponDamage > 1.0 then
            TriggerServerEvent("c103fac35f", "GetWeaponDamageModifier", currentWeaponDamage)
        end

        if meleeDamage > 1.0 then
            TriggerServerEvent("c103fac35f", "GetPlayerMeleeWeaponDamageModifier", meleeDamage)
        end

        RemoveAllPickupsOfType(483577702)
        RemoveAllPickupsOfType(-1888453608)

        checkCustomization()
    end
end)

--=============================================================================
-- Movement / speed checks
--=============================================================================

--- Returns GetGroundZFor_3dCoord for the player's position.
--- NOTE: despite the name this returns (found, groundZ), not a boolean height
--- comparison — callers below use it purely for truthiness of `found`.
function CMG.isPlayerAboveGround()
    local coords = CMG.getPlayerCoords()
    local found, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, 0.0, false)

    return found, groundZ
end

local footSpeedViolations = 0
local vehicleStuckTicks = 0
local lastCheckedVehicle = 0
local lastVehicleSpeedReport = 0

local function getMaxWheelSpeed(vehicle)
    local wheelCount = GetVehicleNumberOfWheels(vehicle)
    local maxSpeed = 0.0

    for wheel = 0, wheelCount - 1 do
        local speed = GetVehicleWheelSpeed(vehicle, wheel)

        if maxSpeed < speed then
            maxSpeed = speed
        end
    end

    return maxSpeed
end

--- Deletes every CObject attached to the local ped (props used to drag the
--- player around).
local function deleteObjectsAttachedToPlayer()
    local ped = PlayerPedId()

    for _, object in pairs(GetGamePool("CObject")) do
        if GetEntityAttachedTo(object) == ped then
            DeleteEntity(object)
        end
    end
end

local lastPlayerCoords = GetEntityCoords(PlayerPedId())

local function speedCheckTick()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local distanceMoved = #(lastPlayerCoords - coords)

    lastPlayerCoords = coords

    -- On foot: moving far in a single tick with no legitimate explanation.
    if distanceMoved > 0.4 then
        if not IsPedFalling(ped)
            and not CMG.hasClientPermission("admin.tickets")
            and not IsPedInParachuteFreeFall(ped)
            and not CMG.isCarrying()
            and not CMG.isPiggyBackActive()
            and not CMG.takeHostageInProgress()
            and GetPedParachuteState(ped) <= 0
            and not IsPedRagdoll(ped)
            and not IsPedRunning(ped)
            and not CMG.isPlayerRappeling()
            and not CMG.isPlayerAboveGround()
            and not CMG.isPlayerHidingInBoot()
            and not CMG.isSpectatingEvent()
            and not CMG.isInBattleGroundsPlaneIntro()
            and not CMG.isCurrentEmoteAttachingPed()
            and not IsPedInAnyVehicle(ped, true)
        then
            footSpeedViolations = footSpeedViolations + 1

            if footSpeedViolations > 100 then
                TriggerServerEvent("14c26e54a6", false)
                footSpeedViolations = 0
            end
        end
    end

    -- In a vehicle: covering ground while the wheels are barely turning.
    local vehicle, isDriver = CMG.getPlayerVehicle()

    if DoesEntityExist(vehicle) and isDriver then
        if distanceMoved > 0.2
            and not CMG.hasClientPermission("admin.tickets")
            and not CMG.isInBattleGroundsPlaneIntro()
            and not CMG.inEvent()
        then
            if lastCheckedVehicle ~= vehicle then
                vehicleStuckTicks = 0
                lastCheckedVehicle = vehicle
            end

            local wheelSpeed = getMaxWheelSpeed(vehicle)
            local entitySpeed = GetEntitySpeed(vehicle)

            if wheelSpeed < 5.0 and entitySpeed < 2.5 then
                vehicleStuckTicks = vehicleStuckTicks + 1
                deleteObjectsAttachedToPlayer()

                if vehicleStuckTicks > 100 and GetGameTimer() - lastVehicleSpeedReport > 4000 then
                    TriggerServerEvent("14c26e54a6", true)
                    vehicleStuckTicks = 0
                    lastVehicleSpeedReport = GetGameTimer()
                end
            end
        end
    end
end

CMG.createThreadOnTick(speedCheckTick, "AntiCheat Speed Check Tick")

--=============================================================================
-- Label + decor scanning
--
-- Cheat menus register their own GTA text labels and decorators; both are
-- easy to fingerprint.
--=============================================================================

local LABELS_TO_CHECK = {
    "notification_buffer",
    "text_buffer",
    "preview_text_buffer",
}

-- Decorator name -> decor type, all belonging to other (non-CMG) frameworks.
local TRACKED_DECORS = {
    businessDriveSpeedBoost = 2,
    CMGVehAC = 3,
    lastSpeed = 1,
    hasHeadbag = 2,
    lootbucket = 3,
    towedByAA = 2,
    HosePitch = 1,
    cinematicMode = 2,
    subwoofer = 2,
    has_stretcher_inside = 2,
    inside_ambulance_netid = 3,
    isFlagged = 2,
    InitedELS = 2,
    vRP_owner = 3,
    cmg_uuid = 3,
    lootid = 3,
    lsAudioId = 3,
    biometricLock = 2,
    smokeType = 3,
    smokeActive = 2,
}

local decorReportedEntities = {}
local foundDecors = {}

local function checkEntityDecors(entity)
    if decorReportedEntities[entity] then
        return
    end

    for decorName in pairs(TRACKED_DECORS) do
        if DecorExistOn(entity, decorName) then
            table.insert(foundDecors, decorName)
        end
    end

    if #foundDecors > 0 then
        TriggerServerEvent("778408e37d", entity, foundDecors)
        decorReportedEntities[entity] = true
        table.clear(foundDecors)
    end
end

Citizen.CreateThread(function()
    for decorName, decorType in pairs(TRACKED_DECORS) do
        DecorRegister(decorName, decorType)
    end

    while true do
        for _, label in pairs(LABELS_TO_CHECK) do
            if GetLabelText(label) ~= "NULL" then
                TriggerServerEvent("931db808c1", label)
            end
        end

        checkEntityDecors(PlayerPedId())

        local vehicle, isDriver = CMG.getPlayerVehicle()

        if vehicle ~= 0 and isDriver then
            checkEntityDecors(vehicle)
        end

        Wait(10000)
    end
end)

--=============================================================================
-- Blacklisted weapon possession
--=============================================================================

Citizen.CreateThread(function()
    while true do
        if HasPedGotWeapon(PlayerPedId(), -2093086099, false) then
            TriggerServerEvent("3f71c3e3da")
            return
        end

        Wait(1000)
    end
end)

--=============================================================================
-- Health tracking / god mode
--
-- `lastKnownHealth` mirrors what the script *believes* health should be. Every
-- legitimate way of changing it is patched to update the mirror, so any
-- unexplained increase is a health hack.
--=============================================================================

local lastKnownHealth = 200
local lastHealthReport = 0

CMG.patchFunction("SetPlayerModel", SetPlayerModel, function(original, playerId, model)
    if playerId == PlayerId() then
        lastKnownHealth = 200
    end

    original(playerId, model)
end)

CMG.patchFunction("SetEntityHealth", SetEntityHealth, function(original, entity, health)
    if entity == PlayerPedId() then
        lastKnownHealth = math.min(math.max(health, 0), 200)
    end

    original(entity, health)
end)

CMG.patchFunction("NetworkResurrectLocalPlayer", NetworkResurrectLocalPlayer,
    function(original, x, y, z, heading, unk, changeTime)
        lastKnownHealth = 200
        original(x, y, z, heading, unk, changeTime)
    end)

CMG.patchFunction("ResurrectPed", ResurrectPed, function(original, ped)
    if ped == PlayerPedId() then
        lastKnownHealth = 200
    end

    original(ped)
end)

local function syncHealthBaseline()
    local ped = PlayerPedId()

    if not IsEntityDead(ped) and not CMG.isQuittingGame() then
        local health = GetEntityHealth(ped)

        if health - lastKnownHealth > 2 then
            if GetGameTimer() - lastHealthReport > 30000 then
                TriggerServerEvent("f4ad66ccb9", health, lastKnownHealth)
                lastHealthReport = GetGameTimer()
            end
        end

        lastKnownHealth = health
    end
end

--=============================================================================
-- Camera creation tracking (free-cam / spectate detection)
--
-- Every camera the script itself creates is recorded. If a camera we do not
-- know about has been rendering for more than a few frames, it was created by
-- something else.
--=============================================================================

local knownCameras = {}
local lastReportedCamera = -1
local lastCameraFrame = 0

CMG.patchFunction("CreateCam", CreateCam, function(original, camName, active)
    local cam = original(camName, active)

    lastCameraFrame = GetFrameCount()
    knownCameras[cam] = true

    return cam
end)

CMG.patchFunction("CreateCamWithParams", CreateCamWithParams,
    function(original, camName, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder)
        local cam = original(camName, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder)

        lastCameraFrame = GetFrameCount()
        knownCameras[cam] = true

        return cam
    end)

CMG.patchFunction("CreateCamera", CreateCamera, function(original, camHash, active)
    local cam = original(camHash, active)

    lastCameraFrame = GetFrameCount()
    knownCameras[cam] = true

    return cam
end)

CMG.patchFunction("CreateCameraWithParams", CreateCameraWithParams,
    function(original, camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder)
        local cam = original(camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, active, rotationOrder)

        lastCameraFrame = GetFrameCount()
        knownCameras[cam] = true

        return cam
    end)

CMG.patchFunction("SetCamParams", SetCamParams,
    function(original, cam, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9, p10, rotationOrder)
        original(cam, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9, p10, rotationOrder)

        lastCameraFrame = GetFrameCount()

        -- Whatever ends up rendering next frame was set up by us.
        Citizen.CreateThread(function()
            Citizen.Wait(0)

            local rendering = GetRenderingCam()

            if rendering ~= -1 then
                knownCameras[rendering] = true
            end
        end)
    end)

-- Escape hatches for other scripts that create cameras through their own means.
AddEventHandler("CMG:hookA", function(cam)
    lastCameraFrame = GetFrameCount()
    knownCameras[cam] = true
end)

AddEventHandler("CMG:hookB", function()
    lastCameraFrame = GetFrameCount()

    Citizen.CreateThread(function()
        Citizen.Wait(0)

        local rendering = GetRenderingCam()

        if rendering ~= -1 then
            knownCameras[rendering] = true
        end
    end)
end)

local function checkRenderingCamera()
    if CMG.isInsideDiamondCasino() then
        return
    end

    local cam = GetRenderingCam()

    -- The phone creates cameras outside of the patched natives.
    if CMG.isPhoneOpen() and cam ~= -1 then
        knownCameras[cam] = true
        lastCameraFrame = GetFrameCount()
    end

    if cam ~= -1 and not knownCameras[cam] then
        if GetFrameCount() - lastCameraFrame > 3 and lastReportedCamera ~= cam then
            TriggerServerEvent("8950382fbc", cam)
            lastReportedCamera = cam
        end
    end
end

--=============================================================================
-- Shot timing / triggerbot input recording
--
-- Two circular buffers record when the player actually shot and when the
-- attack control was actually pressed. The server replays shots back to us
-- (event "8abfbe8340") and we confirm the input existed locally.
--=============================================================================

local SHOT_TIMING_IGNORED_WEAPONS = {
    WEAPON_HARRYPOTTERWAND = true,
    [763451856] = true,
    WEAPON_L104A1 = true,
    WEAPON_PAINTBALL = true,
    WEAPON_PLASMAP = true,
}

local shotTimestamps = CMG.createCircularBuffer(100, 0)
local attackInputTimestamps = CMG.createCircularBuffer(500, 0)
local attackWasPressed = false
local lastArmedAttackTime = 0

local function recordShootingInput()
    local ped = PlayerPedId()

    if IsPedShooting(ped) then
        shotTimestamps.put(GetNetworkTime())
    end

    if IsControlPressed(0, 24) then
        if IsPedArmed(ped, 6) then
            lastArmedAttackTime = GetGameTimer()
        end

        attackInputTimestamps.put(GetNetworkTime())
        attackWasPressed = true
    elseif attackWasPressed then
        -- Record the release edge as well.
        attackInputTimestamps.put(GetNetworkTime())
        attackWasPressed = false
    elseif GetGameTimer() - lastArmedAttackTime < 500 then
        -- Ped config flag 78 = still in the firing animation.
        if GetPedConfigFlag(ped, 78, false) then
            attackInputTimestamps.put(GetNetworkTime())
        else
            lastArmedAttackTime = 0
        end
    end
end

RegisterNetEvent("8abfbe8340", function(shotTime, serverTime, weaponHash, latency)
    if GetNetworkTime() - serverTime > 5000 or SHOT_TIMING_IGNORED_WEAPONS[weaponHash] then
        return
    end

    -- Two frames of jitter, plus the reported latency, plus 50ms slack.
    local tolerance = math.floor(GetFrameTime() * 1000.0) * 2 + math.floor(latency) + 50

    local matchedShot = false

    for _, timestamp in shotTimestamps.iterator() do
        if tolerance >= math.abs(timestamp - shotTime) then
            matchedShot = true
            break
        end
    end

    if not matchedShot then
        TriggerServerEvent("fee5e0be83", weaponHash, shotTime, shotTimestamps.get(), "Native", latency)
        return
    end

    local matchedInput = false

    for _, timestamp in attackInputTimestamps.iterator() do
        if tolerance >= math.abs(timestamp - shotTime) then
            matchedInput = true
            break
        end
    end

    if not matchedInput then
        TriggerServerEvent("fee5e0be83", weaponHash, shotTime, attackInputTimestamps.get(), "Control", latency)
        return
    end
end)

local function healthCheckTick()
    syncHealthBaseline()

    -- NOTE: camera detection is disabled in the original (constant false).
    local cameraDetectionEnabled = false

    if cameraDetectionEnabled then
        checkRenderingCamera()
    end

    recordShootingInput()
end

CMG.createThreadOnTick(healthCheckTick, "AntiCheat Health Check Tick")

--=============================================================================
-- Active god-mode probe
--
-- Repeatedly shaves 2 HP off the player and checks whether it stuck. 100
-- consecutive failures means health is being forced.
--=============================================================================

Citizen.CreateThread(function()
    Wait(10000)

    local strikes = 0

    while true do
        if strikes >= 100 then
            if not tCMG.isInComa() then
                TriggerServerEvent("825a34ce28")
                Citizen.Wait(5000)
            end
        end

        if not CMG.isStaffedOnClient() then
            -- NOTE: the original only waits in the `isStaffedOnClient` branch
            -- and in the `ped == 0` branch, so this path can spin hot while
            -- spawn/new-player protection is active.
            if not CMG.hasSpawnProtection() then
                if not CMG.hasNewPlayerProtection() then
                    if CMG.getTunableValue("detect_god_mode") then
                        local ped = PlayerPedId()
                        local health = GetEntityHealth(ped)

                        if ped ~= 0 then
                            if not IsEntityDead(ped) then
                                syncHealthBaseline()
                                SetEntityHealth(ped, health - 2)
                                Citizen.Wait(50)

                                if DoesEntityExist(ped) then
                                    if GetEntityHealth(ped) > health - 2 then
                                        strikes = strikes + 1
                                    elseif strikes > 0 then
                                        strikes = strikes - 1
                                    end

                                    -- Give the 2 HP back.
                                    syncHealthBaseline()
                                    SetEntityHealth(ped, GetEntityHealth(ped) + 2)
                                end
                            end
                        else
                            Citizen.Wait(0)
                        end
                    end
                end
            end
        else
            Citizen.Wait(1000)
        end
    end
end)

--=============================================================================
-- Infinite ammo detection
--
-- If the clip is still full immediately after firing the same weapon twice in
-- a row, ammo is not being consumed.
--=============================================================================

local INFINITE_AMMO_IGNORED_WEAPONS = {
    [-1569615261] = true,
    [883325847] = true,
    [126349499] = true,
}

local lastAmmoWeapon = 0
local ammoCheckEnabled = true

local function infiniteAmmoTick()
    if CMG.isAimTraining() or CMG.inArena() or CMG.inArenaWarmup() then
        return
    end

    local ped = CMG.getPlayerPed()
    local weapon = GetSelectedPedWeapon(ped)

    if ammoCheckEnabled and IsPedShooting(ped) then
        if not INFINITE_AMMO_IGNORED_WEAPONS[weapon] and not GetCurrentPedVehicleWeapon(ped) then
            local _, ammoInClip = GetAmmoInClip(ped, weapon, 0)
            local maxAmmoInClip = GetMaxAmmoInClip(ped, weapon, false)

            if ammoInClip == maxAmmoInClip and lastAmmoWeapon == weapon then
                -- Cam view mode 4 = first person; excluded to avoid false hits.
                if GetFollowPedCamViewMode() ~= 4 then
                    TriggerServerEvent("0604fef3b6")

                    ammoCheckEnabled = false
                    SetTimeout(60000, function()
                        ammoCheckEnabled = true
                    end)
                end
            end
        end
    end

    lastAmmoWeapon = weapon
end

CMG.createThreadOnTick(infiniteAmmoTick, "AntiCheat Infinite Ammo Tick")

--=============================================================================
-- Teleport detection
--
-- Every legitimate way of moving the player is patched to register the
-- destination. A large position delta with no matching registration, and with
-- a velocity that does not explain it, is a teleport.
--=============================================================================

local ORIGIN = vector3(0.0, 0.0, 0.0)

local trackedPed = 0
local lastPedCoords = nil
local trackedVehicle = 0
local lastVehicleChangeTime = 0

local lastTeleportCoords = vector3(0.0, 0.0, 0.0)
local lastTeleportTime = 0
local lastTeleportReport = 0

--- Records an authorised teleport. Returns true if it was a long-distance
--- jump (the caller then forces a streaming reload).
local function registerTeleport(x, y, z)
    if type(x) == "vector3" then
        lastTeleportCoords = x
    else
        lastTeleportCoords = vector3(x, y, z)
    end

    lastTeleportTime = GetGameTimer()

    return #(CMG.getPlayerCoords() - lastTeleportCoords) > 50.0
end

CMG.patchFunction("SetEntityCoords", SetEntityCoords,
    function(original, entity, x, y, z, xAxis, yAxis, zAxis, clearArea)
        local longJump = false

        if entity == trackedPed or entity == trackedVehicle then
            longJump = registerTeleport(x, y, z)
        end

        original(entity, x, y, z, xAxis, yAxis, zAxis, clearArea)

        if longJump then
            CMG.forceNearbyAreasReload()
        end
    end)

CMG.patchFunction("SetEntityCoordsNoOffset", SetEntityCoordsNoOffset,
    function(original, entity, x, y, z, xAxis, yAxis, zAxis)
        local longJump = false

        if entity == trackedPed or entity == trackedVehicle then
            longJump = registerTeleport(x, y, z)
        end

        original(entity, x, y, z, xAxis, yAxis, zAxis)

        if longJump then
            CMG.forceNearbyAreasReload()
        end
    end)

CMG.patchFunction("NetworkResurrectLocalPlayer", NetworkResurrectLocalPlayer,
    function(original, x, y, z, heading, unk, changeTime)
        registerTeleport(x, y, z)
        original(x, y, z, heading, unk, changeTime)
    end)

CMG.patchFunction("StartPlayerTeleport", StartPlayerTeleport,
    function(original, playerId, x, y, z, heading, p5, findCollisionLand, p7)
        registerTeleport(x, y, z)
        original(playerId, x, y, z, heading, p5, findCollisionLand, p7)
    end)

--- True if any component of `vec` exceeds `limit` in magnitude.
local function exceedsAxisLimit(vec, limit)
    if limit < math.abs(vec.x) or limit < math.abs(vec.y) or limit < math.abs(vec.z) then
        return true
    end

    return false
end

local function teleportCheck()
    local ped = PlayerPedId()

    if ped == nil or ped == 0 then
        return
    end

    trackedPed = ped

    local now = GetGameTimer()
    local vehicle = GetVehiclePedIsUsing(ped)

    if trackedVehicle ~= vehicle then
        lastVehicleChangeTime = now
    end

    trackedVehicle = vehicle

    local isPassenger = false

    if vehicle ~= 0 then
        isPassenger = GetPedInVehicleSeat(vehicle, -1) ~= ped
    end

    local previousCoords = lastPedCoords
    lastPedCoords = GetEntityCoords(ped, true)

    if not previousCoords then
        return
    end

    local moved = #(previousCoords - lastPedCoords)

    -- Anything short, or any state where the player is being moved by
    -- something else, is fine.
    if moved < 50.0
        or isPassenger
        or CMG.isCarrying()
        or CMG.isPiggyBackActive()
        or CMG.isPlayerHidingInBoot()
        or GetEntityAttachedTo(ped) ~= 0
    then
        return
    end

    -- Recently entered/left a vehicle, or recently authorised a teleport.
    if now - lastVehicleChangeTime < 2000 or now - lastTeleportTime < 5000 then
        return
    end

    -- Close to the last authorised teleport target, or near the world origin
    -- (where entities get parked while loading).
    if #(lastPedCoords - lastTeleportCoords) < 15.0
        or #(lastPedCoords - ORIGIN) < 50.0
        or #(previousCoords - ORIGIN) < 50.0
    then
        return
    end

    local horizontalMoved = #(previousCoords.xy - lastPedCoords.xy)

    -- Coming back up from deep underground (interior placement).
    if previousCoords.z < -180.0 and horizontalMoved < 2500.0 then
        return
    end

    -- The -50z "limbo" plane used by several interiors.
    if lastPedCoords.z >= -52.0 and lastPedCoords.z <= -48.0 and horizontalMoved < 10.0 then
        return
    end

    -- Compare reported velocity against the velocity the movement implies.
    local velocity = GetEntityVelocity(ped)
    local impliedVelocity = (lastPedCoords - previousCoords) / GetFrameTime()

    if exceedsAxisLimit(velocity - impliedVelocity, 100.0) then
        if now - lastTeleportReport > 5000 then
            TriggerServerEvent("5b43d997e4", previousCoords, lastPedCoords)
            lastTeleportReport = now
        end
    end
end

-- Server-authorised teleport: suppress the check for the next 5 seconds.
RegisterNetEvent("3409ae98a5", function()
    lastTeleportTime = GetGameTimer()
end)

--=============================================================================
-- Vehicle health tampering
--=============================================================================

local lastBodyHealth = 0
local lastEngineHealth = 0
local lastPetrolTankHealth = 0
local lastVehicleEntityHealth = 0
local lastVehicleFixTime = 0
local lastHealthCheckVehicle = 0
local lastVehicleHealthReport = 0

CMG.patchFunction("SetVehicleFixed", SetVehicleFixed, function(original, vehicle)
    if vehicle == lastHealthCheckVehicle then
        lastVehicleFixTime = GetGameTimer()
    end

    original(vehicle)
end)

-- Server grants a repair window.
RegisterNetEvent("49e649276d", function()
    lastVehicleFixTime = GetGameTimer() + 5000
end)

CMG.patchFunction("SetVehicleBodyHealth", SetVehicleBodyHealth, function(original, vehicle, health)
    if vehicle == lastHealthCheckVehicle then
        lastBodyHealth = math.floor(health)
    end

    original(vehicle, health)
end)

CMG.patchFunction("SetVehicleEngineHealth", SetVehicleEngineHealth, function(original, vehicle, health)
    if vehicle == lastHealthCheckVehicle then
        lastEngineHealth = math.floor(health)
    end

    original(vehicle, health)
end)

CMG.patchFunction("SetVehiclePetrolTankHealth", SetVehiclePetrolTankHealth, function(original, vehicle, health)
    if vehicle == lastHealthCheckVehicle then
        lastPetrolTankHealth = math.floor(health)
    end

    original(vehicle, health)
end)

CMG.patchFunction("SetEntityHealth", SetEntityHealth, function(original, entity, health)
    if entity == lastHealthCheckVehicle then
        -- NOTE: the original writes the engine-health mirror here, not the
        -- entity-health one.
        lastEngineHealth = math.floor(health)
    end

    original(entity, health)
end)

--- Returns { {seatIndex, serverId}, ... } for every player in the vehicle.
local function getVehiclePlayerOccupants(vehicle)
    local occupants = {}
    local model = GetEntityModel(vehicle)
    local lastSeat = GetVehicleModelNumberOfSeats(model) - 1

    for seat = 0, lastSeat do
        local ped = GetPedInVehicleSeat(vehicle, seat)

        if ped ~= 0 and IsPedAPlayer(ped) then
            local playerIndex = NetworkGetPlayerIndexFromPed(ped)

            if playerIndex ~= -1 then
                table.insert(occupants, { seat, GetPlayerServerId(playerIndex) })
            end
        end
    end

    return occupants
end

--- True when a health value went *up* by an amount that cannot be explained
--- by normal gameplay (i.e. an unauthorised repair).
local function isSuspiciousHealthChange(current, previous)
    if current == 0 or (current < 0 and previous < 0) then
        return false
    end

    local delta = math.abs(previous - current)

    if delta <= 4 then
        return false
    end

    -- Small changes are only interesting when jumping to a full 1000.
    if delta <= 50 and current ~= 1000 then
        return false
    end

    return previous < current
end

local function vehicleHealthCheck()
    local vehicle, isDriver = CMG.getPlayerVehicle()

    local tracking =
        vehicle ~= 0
        and DoesEntityExist(vehicle)
        and isDriver
        and NetworkGetEntityIsNetworked(vehicle)
        -- Task 165 = entering/exiting the vehicle.
        and not GetIsTaskActive(PlayerPedId(), 165)
        -- Attached to another vehicle (towed / on a trailer).
        and GetEntityType(GetEntityAttachedTo(vehicle)) ~= 2
        and not CMG.inEvent()
        and not CMG.isLbRacingActive()

    if not tracking then
        lastHealthCheckVehicle = 0
        lastBodyHealth = 1000
        lastEngineHealth = 1000
        lastPetrolTankHealth = 1000
        lastVehicleEntityHealth = 1000
        return
    end

    local bodyHealth = math.floor(GetVehicleBodyHealth(vehicle))
    local engineHealth = math.floor(GetVehicleEngineHealth(vehicle))
    local petrolTankHealth = math.floor(GetVehiclePetrolTankHealth(vehicle))
    local entityHealth = math.floor(GetEntityHealth(vehicle))

    if isSuspiciousHealthChange(bodyHealth, lastBodyHealth)
        or isSuspiciousHealthChange(engineHealth, lastEngineHealth)
        or isSuspiciousHealthChange(petrolTankHealth, lastPetrolTankHealth)
        or isSuspiciousHealthChange(entityHealth, lastVehicleEntityHealth)
    then
        local now = GetGameTimer()

        if now - lastVehicleFixTime > 1000
            and vehicle == lastHealthCheckVehicle
            and now - lastVehicleHealthReport > 5000
        then
            -- Ignore while the player is in the "just revived" health band.
            if GetEntityHealth(PlayerPedId()) > 102 then
                if now - CMG.getLastSpawnedGarageVehicleTime() > 5000 then
                    local occupants = getVehiclePlayerOccupants(vehicle)
                    local vehicleId = CMG.getVehicleIdFromModel(GetEntityModel(vehicle)) or "N/A"

                    TriggerServerEvent("c1490664ed",
                        bodyHealth, lastBodyHealth,
                        engineHealth, lastEngineHealth,
                        petrolTankHealth, lastPetrolTankHealth,
                        entityHealth, lastVehicleEntityHealth,
                        occupants, vehicleId)

                    lastVehicleHealthReport = now
                end
            end
        end
    end

    lastBodyHealth = bodyHealth
    lastEngineHealth = engineHealth
    lastPetrolTankHealth = petrolTankHealth
    lastVehicleEntityHealth = entityHealth
    lastHealthCheckVehicle = vehicle
end

local function teleportAndVehicleTick()
    teleportCheck()
    vehicleHealthCheck()
end

-- Only start once the player has fully spawned, plus a minute of grace.
AddEventHandler("CMG:onClientSpawn", function(_, isFirstSpawn)
    if isFirstSpawn then
        Citizen.Wait(60000)
        CMG.createThreadOnTick(teleportAndVehicleTick, "AntiCheat Teleport Tick")
    end
end)

--=============================================================================
-- Unauthorised vehicle parachutes
--=============================================================================

Citizen.CreateThread(function()
    while true do
        local vehicle = CMG.getPlayerVehicle()

        if GetVehicleHasParachute(vehicle) then
            local model = GetEntityModel(vehicle)

            if not table.has(PARACHUTE_ALLOWED_VEHICLES, model) then
                TriggerServerEvent("8ca67c4052", CMG.getVehicleIdFromModel(model))
            end
        end

        Wait(1000)
    end
end)

--=============================================================================
-- Server-mediated entity spawning
--=============================================================================

local entitySpawnRequestId = 0
local entitySpawnResponses = {}

function CMG.requestEntitySpawn(spawnType, ...)
    local requestId = entitySpawnRequestId
    entitySpawnRequestId = entitySpawnRequestId + 1

    TriggerServerEvent("0624c04072", requestId, spawnType, ...)

    local startedAt = GetGameTimer()

    while not entitySpawnResponses[requestId] do
        if GetGameTimer() - startedAt > 2500 then
            error("Failed to spawn entity.")
        end

        Citizen.Wait(0)
    end

    entitySpawnResponses[requestId] = nil
end

RegisterNetEvent("0624c04072", function(requestId)
    entitySpawnResponses[requestId] = true
end)

Wait(0)

--=============================================================================
-- Keypress capture / triggerbot detection
--
-- The NUI layer reports raw key presses with high-resolution timestamps.
-- `performanceCounterOffset` converts those into game-timer space.
--=============================================================================

-- Entries are { keyName, timestamp, holdDurationMs }.
local keyPressBuffer = CMG.createCircularBuffer(100, { "", 0, 0 })

local performanceCounterOffset = 0
local lastTriggerbotReport = 0
local recentPressesVersion = 0

-- NOTE: never assigned anywhere else, so the flagged-press collection below is
-- effectively dead in the original.
local flaggedPressAnchor = 0
local FLAGGED_PRESS_WINDOW = 5000
local flaggedPresses = {}

CMG.uiRegisterCallback("sendRecentPresses", function(data)
    if performanceCounterOffset == 0 then
        return
    end

    for _, press in pairs(data.recentPresses) do
        local keyName, rawTimestamp, holdDuration = press[1], press[2], press[3]
        local timestamp = rawTimestamp + performanceCounterOffset

        keyPressBuffer.put(keyName, timestamp, holdDuration)

        if flaggedPressAnchor ~= 0 and math.abs(timestamp - flaggedPressAnchor) < FLAGGED_PRESS_WINDOW then
            table.insert(flaggedPresses, { keyName, timestamp, holdDuration })
        end
    end

    recentPressesVersion = recentPressesVersion + 1
end)

-- Keys the game itself consumes; anything else pressed during gameplay is
-- worth logging.
local CAPTURED_KEYS = {
    LCONTROL = true,
    RCONTROL = true,
    LSHIFT = true,
    RSHIFT = true,
    W = true,
    A = true,
    S = true,
    D = true,
    SPACE = true,
    B0 = true,
    B1 = true,
    B2 = true,
    N = true,
    C = true,
    R = true,
    Q = true,
    Z = true,
    X = true,
    TAB = true,
    F = true,
}

function CMG.isKeyboardKeyCaptured(key)
    return not CAPTURED_KEYS[key]
end

-- Second handler for the shot-replay event: looks for machine-like click
-- cadence (triggerbot) and for keys the game never uses.
RegisterNetEvent("8abfbe8340", ... (2 KB left)