--[[
    LEVEL 1 BEGINNER GUIDE — Greenzones
    ========================================

    File: cmg/prod/client/core/cl_greenzones.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Greenzones feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 26
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: ba2b490138
      * Local event handlers: CMG:onClientSpawn
      * Server events sent: 4e7e11df5d, eb54cb2feb
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_vehicles, cfg/cfg_garages, data/vehicles.json

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
    Greenzone / Safe-Zone Client
    ============================

    Beginner overview:
      A greenzone is a safe area where normal combat is disabled.

      This file:
        * defines the permanent greenzones
        * draws their map radius blips
        * detects when the local player enters/leaves one
        * disables fighting/shooting while protected
        * ghosts the player so vehicles/players do not collide normally
        * supports special non-RP greenzones
        * provides createGreenzone/deleteGreenzone for temporary zones
        * applies job vehicle speed caps
        * exposes helpers other scripts use to ask "am I in a greenzone?"

    Important state:
      inGreenzone
          Local player is inside the normal safe-zone rules.

      inAlternateGreenzone
          Broader/special greenzone state used by some transfer/business logic.

      inNonRpGreenzone
          The current zone explicitly allows out-of-character conversation.

      greenzonesDisabled
          Global switch used by special game modes such as purge/arenas.

    All existing CMG/tCMG public function names are preserved.
]]

local vehicleConfig =
    CMG.loadModule("cfg/cfg_vehicles")

local garageConfig =
    CMG.loadModule("cfg/cfg_garages")


-- ============================================================
-- JOB VEHICLE MODEL SETS
-- ============================================================

local garbageVehicleModels = {
    [GetHashKey("trash")] = true
}

for _, modelName
    in pairs(
        garageConfig.garbageCustomVehicles
        or {}
    ) do

    if type(modelName) == "string"
        and modelName ~= "" then
        garbageVehicleModels[
            GetHashKey(modelName)
        ] = true
    end
end


local truckingVehicleModels = {
    [GetHashKey("hauler")] = true,
    [GetHashKey("hauler2")] = true,
    [GetHashKey("packer")] = true,
    [GetHashKey("phantom3")] = true,
    [GetHashKey("phantom4")] = true
}

for _, modelName
    in pairs(
        garageConfig.truckingCustomVehicles
        or {}
    ) do

    if type(modelName) == "string"
        and modelName ~= "" then
        truckingVehicleModels[
            GetHashKey(modelName)
        ] = true
    end
end


-- ============================================================
-- PERMANENT GREENZONES
-- ============================================================

-- "maxHeight" stops a huge 2D radius from protecting players far above it.
-- "nonRP" marks zones where OOC conversation is explicitly allowed.
-- "purgeOnly" means the zone is only active during Purge.
-- "interiorCheck" can add a custom check for interiors such as the casino.

local permanentGreenzones = {
    {
        position = vector3(
            -471.62231445312,
            -320.36367797852,
            43.397029876709
        ),
        radius = 46.0,
        colour = 2,
        maxHeight = 105.0
    },

    {
        position = vector3(
            144.26225280762,
            -1074.751953125,
            29.192342758179
        ),
        radius = 43.0,
        colour = 2,
        maxHeight = 87.0
    },

    {
        position = vector3(
            -2181.7966308594,
            5189.8286132813,
            17.64377784729
        ),
        radius = 150.0,
        colour = 2,
        maxHeight = 77.0,
        nonRP = true,
        allowIllegalTransfer = true
    },

    {
        position = vector3(
            -540.54748535156,
            -216.42681884766,
            37.64966583252
        ),
        radius = 50.0,
        colour = 2,
        maxHeight = 102.0
    },

    {
        position = vector3(
            -3704.244140625,
            -3516.8295898438,
            10.57702255249
        ),
        radius = 100.0,
        colour = 2,
        maxHeight = 150.0,
        nonRP = true
    },

    {
        position = vector3(
            967.20806884766,
            36.561210632324,
            80.994140625
        ),
        radius = 100.0,
        colour = 2,
        maxHeight = 98.1,
        interior = true,
        interiorCheck = function()
            return CMG.isInsideDiamondCasino()
        end
    },

    {
        position = vector3(
            -335.19680786133,
            -699.10406494141,
            33.036075592041
        ),
        radius = 30.0,
        colour = 2,
        maxHeight = 86.0
    },

    {
        position = vector3(
            -1671.5692138672,
            -912.63940429688,
            8.2297477722168
        ),
        radius = 50.0,
        colour = 2,
        maxHeight = 60.0
    },

    {
        position = vector3(
            -1437.4920654297,
            -2961.6879882812,
            14.313854217529
        ),
        radius = 700.0,
        colour = 2,
        maxHeight = 210.0,
        nonRP = true,
        purgeOnly = true
    },

    {
        position = vector3(
            -732.95123291016,
            5812.35546875,
            17.42693901062
        ),
        radius = 35.0,
        colour = 2,
        maxHeight = 210.0
    },

    {
        position = vector3(
            -2338.0720214844,
            274.29595947266,
            169.46034240723
        ),
        radius = 30.0,
        colour = 2,
        maxHeight = 210.0
    },

    {
        position = vector3(
            1462.8721923828,
            3561.5625,
            36.537769317627
        ),
        radius = 50.0,
        colour = 2,
        maxHeight = 76.5
    }
}


-- A simpler list used by the old distance/query API.
local simpleGreenzones = {
    {
        position = permanentGreenzones[1].position,
        radius = 46.0
    },
    {
        position = permanentGreenzones[2].position,
        radius = 43.0
    },
    {
        position = permanentGreenzones[3].position,
        radius = 150.0,
        allowIllegalTransfer = true
    },
    {
        position = permanentGreenzones[4].position,
        radius = 50.0
    },
    {
        position = permanentGreenzones[7].position,
        radius = 30.0
    },
    {
        position = permanentGreenzones[8].position,
        radius = 50.0
    },
    {
        position = permanentGreenzones[9].position,
        radius = 700.0,
        purgeOnly = true
    },
    {
        position = permanentGreenzones[10].position,
        radius = 35.0
    },
    {
        position = permanentGreenzones[11].position,
        radius = 30.0
    },
    {
        position = permanentGreenzones[12].position,
        radius = 50.0
    }
}


-- ============================================================
-- RUNTIME STATE
-- ============================================================

local inGreenzone = false
local inAlternateGreenzone = false
local inNonRpGreenzone = false
local protectionActive = false
local justLeftGreenzone = false

local greenzonesDisabled = false

local currentZonePosition =
    vector3(0.0, 0.0, 0.0)

local currentZoneRadius = 0.0
local currentZoneIsInterior = false

local inCityZone = false

-- Temporary zones created by other scripts.
local dynamicGreenzones = {}

-- Radius blips for the permanent zones.
local permanentBlips = {}


-- ============================================================
-- BASIC QUERY HELPERS
-- ============================================================

-- === HELPER FUNCTION: arenaBlocksGreenzone() ===
local function arenaBlocksGreenzone()
    return
        CMG.inArena()
        or CMG.inArenaWarmup()
        or CMG.inArenaMapPreview()
        or CMG.isArenaSpectating()
end


-- === HELPER FUNCTION: horizontalDistance(a, b) ===
local function horizontalDistance(a, b)
    return #(
        vector2(a.x, a.y) -
        vector2(b.x, b.y)
    )
end


-- === HELPER FUNCTION: zoneIsCurrentlyEnabled(zone) ===
local function zoneIsCurrentlyEnabled(zone)
    if zone.purgeOnly then
        return CMG.isPurge()
    end

    if CMG.isPurge() then
        -- Normal greenzones are hidden/disabled during purge in the
        -- original client.
        return false
    end

    return true
end


-- === HELPER FUNCTION: isInsideZone(position, zone) ===
local function isInsideZone(position, zone)
    if not zoneIsCurrentlyEnabled(zone) then
        return false
    end

    if zone.maxHeight
        and position.z > zone.maxHeight then
        return false
    end

    if zone.interiorCheck
        and not zone.interiorCheck() then
        return false
    end

    return
        horizontalDistance(
            position,
            zone.position
        ) <= zone.radius
end


-- === HELPER FUNCTION: CMG.isPositionInGreenzone(position) ===
function CMG.isPositionInGreenzone(position)
    for _, zone in ipairs(simpleGreenzones) do
        if zoneIsCurrentlyEnabled(zone)
            and horizontalDistance(
                position,
                zone.position
            ) <= zone.radius then
            return true
        end
    end

    for _, zone in pairs(dynamicGreenzones) do
        if horizontalDistance(
            position,
            zone.position
        ) <= zone.radius then
            return true
        end
    end

    return false
end


-- === HELPER FUNCTION: CMG.areGreenzonesDisabled() ===
function CMG.areGreenzonesDisabled()
    return greenzonesDisabled
end


-- === HELPER FUNCTION: CMG.setGreenzonesDisabled(disabled) ===
function CMG.setGreenzonesDisabled(disabled)
    greenzonesDisabled =
        disabled == true

    if greenzonesDisabled then
        SetLocalPlayerAsGhost(false)
    end
end


-- ============================================================
-- MAP BLIPS
-- ============================================================

-- === HELPER FUNCTION: removePermanentGreenzoneBlips() ===
local function removePermanentGreenzoneBlips()
    for _, blip in ipairs(permanentBlips) do
        if DoesBlipExist(blip) then
            RemoveBlip(blip)
        end
    end

    permanentBlips = {}
end


-- === HELPER FUNCTION: CMG.initGreenzones() ===
function CMG.initGreenzones()
    removePermanentGreenzoneBlips()

    for _, zone in ipairs(permanentGreenzones) do
        if zoneIsCurrentlyEnabled(zone) then
            local blip =
                AddBlipForRadius(
                    zone.position.x,
                    zone.position.y,
                    zone.position.z,
                    zone.radius
                )

            SetBlipColour(
                blip,
                zone.colour or 2
            )

            SetBlipAlpha(
                blip,
                zone.purgeOnly
                    and 255
                    or 180
            )

            table.insert(
                permanentBlips,
                blip
            )
        end
    end
end


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    CMG.initGreenzones()
end)


-- ============================================================
-- CITY-ZONE AREA
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        local cityPosition,
              cityRadius =
            CMG.getCityPositionAndRadius()

        CMG.createArea(
            "cityzone",
            cityPosition,
            cityRadius,
            cityRadius,
            function()
                inCityZone = true
                TriggerEvent(
                    "e4697f6833"
                )
            end,
            function()
                inCityZone = false
                TriggerEvent(
                    "71b989b7cd"
                )
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- ENTER / LEAVE NOTIFICATIONS
-- ============================================================

-- === HELPER FUNCTION: notifyEnteredGreenzone() ===
local function notifyEnteredGreenzone()
    TriggerEvent(
        "371eab1d3a",
        {
            text =
                "You have entered the greenzone",
            height = "200px",
            width = "auto",
            colour = "#FFF",
            background = "#32CD32",
            pos = "bottom-right",
            icon = "success"
        },
        5000
    )

    TriggerServerEvent(
        "4e7e11df5d"
    )
end


-- === HELPER FUNCTION: notifyLeftGreenzone() ===
local function notifyLeftGreenzone()
    TriggerEvent(
        "371eab1d3a",
        {
            text =
                "You have left the greenzone",
            height = "60px",
            width = "auto",
            colour = "#FFF",
            background = "#ff0000",
            pos = "bottom-right",
            icon = "bad"
        },
        5000
    )

    TriggerServerEvent(
        "eb54cb2feb"
    )
end


-- ============================================================
-- FIND CURRENT ZONE
-- ============================================================

-- === HELPER FUNCTION: findCurrentGreenzone(position) ===
local function findCurrentGreenzone(position)
    for _, zone in ipairs(permanentGreenzones) do
        if isInsideZone(position, zone) then
            return zone
        end
    end

    for _, zone in pairs(dynamicGreenzones) do
        if horizontalDistance(
            position,
            zone.position
        ) <= zone.radius then
            return zone
        end
    end

    return nil
end


-- ============================================================
-- PROTECTION RULES
-- ============================================================

local blockedControls = {
    24,  -- attack
    25,  -- aim
    37,  -- weapon wheel
    45,  -- reload
    69,
    70,
    92,
    106,
    140,
    141,
    142,
    143,
    257,
    263,
    264
}


-- === HELPER FUNCTION: applyGreenzoneProtection() ===
local function applyGreenzoneProtection()
    local ped = PlayerPedId()

    for _, control in ipairs(blockedControls) do
        DisableControlAction(
            0,
            control,
            true
        )
    end

    DisablePlayerFiring(
        PlayerId(),
        true
    )

    SetEntityInvincible(
        ped,
        true
    )

    SetEntityProofs(
        ped,
        true,  -- bullet
        true,  -- fire
        true,  -- explosion
        true,  -- collision
        true,  -- melee
        true,  -- steam
        true,  -- p7
        true   -- drown
    )

    if not greenzonesDisabled
        and not CMG.isInRace() then
        SetLocalPlayerAsGhost(true)
    end

    protectionActive = true
end


-- === HELPER FUNCTION: clearGreenzoneProtection() ===
local function clearGreenzoneProtection()
    local ped = PlayerPedId()

    SetEntityInvincible(
        ped,
        false
    )

    SetEntityProofs(
        ped,
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    )

    SetLocalPlayerAsGhost(false)

    ResetEntityAlpha(ped)

    protectionActive = false
end


-- ============================================================
-- JOB SPEED CAPS
-- ============================================================

local lastSpeedCappedVehicle = 0
local showSpeedCapNotification = true


-- === HELPER FUNCTION: notifySpeedCap(vehicle, targetSpeed) ===
local function notifySpeedCap(vehicle, targetSpeed)
    if GetPedInVehicleSeat(
        vehicle,
        -1
    ) ~= PlayerPedId() then
        return
    end

    if lastSpeedCappedVehicle ~= vehicle then
        lastSpeedCappedVehicle = vehicle
        showSpeedCapNotification = true
    end

    -- If the car naturally fell well below the target speed, allow the
    -- informational message to show again next time it gets capped.
    if GetEntitySpeed(vehicle)
        < targetSpeed * 0.85 then
        showSpeedCapNotification = true
    end

    if targetSpeed > 1.0
        and showSpeedCapNotification then

        notify({
            message =
                "Speed capped due to job",
            type = "info",
            title = "",
            duration = 5000,
            sound = ""
        })

        showSpeedCapNotification = false
    end
end


-- === HELPER FUNCTION: getJobVehicleSpeedCap(vehicle) ===
local function getJobVehicleSpeedCap(vehicle)
    if not vehicle or vehicle == 0 then
        return nil
    end

    local model =
        GetEntityModel(vehicle)

    -- AA on-duty mechanics have the original 125 preset cap.
    if CMG.hasClientPermission(
        "aa.onduty.permission"
    ) then
        return
            vehicleConfig.maxSpeeds["125"]
    end

    local group =
        CMG.getPlayerGroup
        and CMG.getPlayerGroup()
        or ""

    if group == "Trucking"
        and truckingVehicleModels[model] then

        return
            vehicleConfig.maxSpeeds["150"]
            + CMG.getTruckingMaxSpeedBonusMph()
                * 0.44704
    end

    if group == "Garbage"
        and garbageVehicleModels[model] then

        return
            vehicleConfig.maxSpeeds["50"]
            + CMG.getGarbageMaxSpeedBonusMph()
                * 0.44704
    end

    -- The original framework marks some drivers/entities with this decorator
    -- to use its 275 speed preset. Keep the exact decorator key unchanged.
    local driver =
        GetPedInVehicleSeat(
            vehicle,
            -1
        )

    if driver ~= 0
        and DecorExistOn(
            driver,
            "adf4399051"
        )
        and DecorGetBool(
            driver,
            "adf4399051"
        ) then

        return
            vehicleConfig.maxSpeeds["275"]
    end

    return nil
end


-- === HELPER FUNCTION: applyJobSpeedCap() ===
local function applyJobSpeedCap()
    local ped = PlayerPedId()
    local vehicle =
        GetVehiclePedIsIn(
            ped,
            false
        )

    if vehicle == 0
        or GetPedInVehicleSeat(
            vehicle,
            -1
        ) ~= ped then
        return
    end

    local targetSpeed =
        getJobVehicleSpeedCap(
            vehicle
        )

    if not targetSpeed
        or targetSpeed <= 0 then
        return
    end

    SetVehicleAutoRepairDisabled(
        vehicle,
        true
    )

    SetEntityMaxSpeed(
        vehicle,
        targetSpeed
    )

    notifySpeedCap(
        vehicle,
        targetSpeed
    )
end


-- ============================================================
-- MAIN GREENZONE TICK
-- ============================================================

local wasInGreenzone = false
local wasInNonRpZone = false


-- === HELPER FUNCTION: greenzoneTick() ===
local function greenzoneTick()
    applyJobSpeedCap()

    if arenaBlocksGreenzone()
        or greenzonesDisabled then

        inGreenzone = false
        inAlternateGreenzone = false
        inNonRpGreenzone = false

        if protectionActive then
            clearGreenzoneProtection()
        end

        return
    end

    local playerCoords =
        CMG.getPlayerCoords()

    local zone =
        findCurrentGreenzone(
            playerCoords
        )

    inGreenzone =
        zone ~= nil

    -- Kept separately because older framework code asks for this alternate
    -- flag through tCMG.isInGreenzone(true). In normal zones it follows the
    -- same value.
    inAlternateGreenzone =
        zone ~= nil

    inNonRpGreenzone =
        zone
        and zone.nonRP == true
        or false

    if zone then
        currentZonePosition =
            zone.position

        currentZoneRadius =
            zone.radius

        currentZoneIsInterior =
            zone.interior == true

        applyGreenzoneProtection()

        -- Fade nearby entities slightly so the player can visually tell
        -- they are ghosted/protected.
        local vehicle =
            GetVehiclePedIsIn(
                PlayerPedId(),
                false
            )

        if vehicle ~= 0 then
            SetEntityAlpha(
                vehicle,
                200,
                false
            )
        end
    elseif protectionActive then
        clearGreenzoneProtection()
    end

    -- Only send enter/leave notifications on transitions.
    if inGreenzone
        and not wasInGreenzone then
        notifyEnteredGreenzone()
        justLeftGreenzone = false
    elseif not inGreenzone
        and wasInGreenzone then
        notifyLeftGreenzone()
        justLeftGreenzone = true
    end

    if inNonRpGreenzone
        and not wasInNonRpZone then
        notify(
            "You have entered a non-RP greenzone, you may talk out of character here"
        )
    end

    wasInGreenzone =
        inGreenzone

    wasInNonRpZone =
        inNonRpGreenzone
end

CMG.createThreadOnTick(
    greenzoneTick,
    "Greenzone"
)


-- ============================================================
-- DYNAMIC GREENZONE API
-- ============================================================

function CMG.createGreenzone(
    name,
    position,
    radius,
    noVehicleZone
)
    -- Replace an existing zone with the same name.
    if dynamicGreenzones[name] then
        CMG.deleteGreenzone(name)
    end

    local blip =
        AddBlipForRadius(
            position.x,
            position.y,
            position.z,
            radius
        )

    SetBlipColour(blip, 2)
    SetBlipAlpha(blip, 180)

    if noVehicleZone
        and CMG.createNoVehicleZone then
        CMG.createNoVehicleZone(
            name,
            position,
            radius
        )
    end

    dynamicGreenzones[name] = {
        name = name,
        blip = blip,
        position = position,
        radius = radius,
        maxHeight =
            position.z + radius,
        nonRP = false,
        noVehicleZone =
            noVehicleZone == true
    }
end


-- === HELPER FUNCTION: CMG.deleteGreenzone(name) ===
function CMG.deleteGreenzone(name)
    local zone =
        dynamicGreenzones[name]

    if not zone then
        return
    end

    if zone.blip
        and DoesBlipExist(zone.blip) then
        RemoveBlip(zone.blip)
    end

    if zone.noVehicleZone
        and CMG.deleteNoVehicleZone then
        CMG.deleteNoVehicleZone(name)
    end

    dynamicGreenzones[name] = nil
end


-- ============================================================
-- FRAMEWORK QUERY API
-- ============================================================

function tCMG.isInGreenzone(
    includeAlternateState
)
    if arenaBlocksGreenzone() then
        return false
    end

    if includeAlternateState then
        return inAlternateGreenzone
    end

    return inGreenzone
end


function tCMG.isInGreenzoneWithDistance(
    includeAlternateState
)
    local coords =
        CMG.getPlayerCoords()

    local nearestOutsideDistance =
        math.huge

    local allowIllegalTransfer =
        false

    for _, zone in ipairs(simpleGreenzones) do
        if zoneIsCurrentlyEnabled(zone) then
            local distanceFromCenter =
                horizontalDistance(
                    coords,
                    zone.position
                )

            local outsideDistance =
                math.max(
                    distanceFromCenter -
                    zone.radius,
                    0.0
                )

            if outsideDistance
                < nearestOutsideDistance then

                nearestOutsideDistance =
                    outsideDistance

                allowIllegalTransfer =
                    zone.allowIllegalTransfer
                    == true
            end
        end
    end

    if nearestOutsideDistance
        == math.huge then
        nearestOutsideDistance = 0.0
    end

    return
        tCMG.isInGreenzone(
            includeAlternateState
        ),
        nearestOutsideDistance,
        allowIllegalTransfer
end


-- ============================================================
-- VEHICLE-TYPE SPEED DATA
-- ============================================================

local targetSpeedByVehicleType = {
    offroader = 200,
    semioffroader = 210,
    suv = 215,
    sport = 225
}


function CMG.getTargetSpeedFromVehicleType(
    vehicleType
)
    return
        targetSpeedByVehicleType[
            vehicleType
        ]
end


local vehicleTypeByModel = {}

do
    local vehicleJson =
        CMG.loadJsonModule(
            "data/vehicles.json"
        )
        or {}

    for modelName, data in pairs(vehicleJson) do
        local vehicleType =
            data.type
            or data.vehicleType
            or data.category

        if vehicleType then
            local modelHash =
                GetHashKey(modelName)

            vehicleTypeByModel[
                modelHash
            ] = vehicleType

            local target =
                CMG.getTargetSpeedFromVehicleType(
                    vehicleType
                )

            if target
                and vehicleConfig.maxSpeeds[
                    tostring(target)
                ]
                and not vehicleConfig
                    .vehicleMaxSpeeds[
                        modelHash
                    ] then

                vehicleConfig
                    .vehicleMaxSpeeds[
                        modelHash
                    ] =
                    vehicleConfig.maxSpeeds[
                        tostring(target)
                    ]
            end
        end
    end
end


function CMG.getVehicleTypeFromModel(
    modelHash
)
    return
        vehicleTypeByModel[
            modelHash
        ]
end


-- ============================================================
-- VESPUCCI TEMPORARY GREENZONE
-- ============================================================

RegisterNetEvent(
    "ba2b490138",
    function(enabled)
        local name =
            "Vespucci Greenzone"

        if enabled then
            CMG.createGreenzone(
                name,
                vector3(
                    -1079.5734863281,
                    -843.14739990234,
                    4.884133338928
                ),
                45.0,
                false
            )
        else
            CMG.deleteGreenzone(
                name
            )
        end
    end
)


-- ============================================================
-- SIMPLE CITY / GREENZONE HELPERS
-- ============================================================

-- === HELPER FUNCTION: CMG.isInCityZone() ===
function CMG.isInCityZone()
    -- This is exactly how the original helper decided it:
    -- anything south of Y=600 counts as the city.
    return
        CMG.getPlayerCoords().y
        < 600.0
end


-- === HELPER FUNCTION: CMG.isInGreenzone() ===
function CMG.isInGreenzone()
    if arenaBlocksGreenzone() then
        return false
    end

    return inGreenzone
end
