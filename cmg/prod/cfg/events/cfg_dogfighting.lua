--[[
    BEGINNER GUIDE — Dogfighting
    ============================

    File: cmg/prod/cfg/events/cfg_dogfighting.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type DogFightingConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.minPlayers = 5
cfg.customVehicleTimeMsec = 15000
cfg.spawnProtectionTimeMsec = 10000
cfg.respawnProtectionTimeMsec = 5000
cfg.assignTeamTimeMsec = 5000
cfg.flyInIntroTimeMsec = 5000

cfg.locations = {
    ["Dogfighting"] = {
        centerPosition = vector3(-142.71044921875,-789.98162841797,350.14469909668),
        initialRadius = 1750.0,
        maxPlayers = 100,
        spawnPositions = {},
        collectableSpawns = {
            vector3(66.386878967285,-711.28753662109,149.90078735352),
            vector3(-254.74545288086,-772.91790771484,93.010803222656),
            vector3(-408.79824829102,-1615.7628173828,186.7041015625),
            vector3(208.85147094727,-1774.201171875,172.9515838623),
            vector3(729.67144775391,-1363.388671875,226.93272399902),
            vector3(816.45587158203,-486.38064575195,325.76699829102),
            vector3(14.554417610168,208.90029907227,400.41189575195),
            vector3(-789.25476074219,31.452669143677,317.48617553711),
            vector3(-1140.1839599609,-501.22671508789,299.32293701172),
            vector3(-987.55401611328,-1309.9650878906,308.62091064453),
            vector3(115.50602722168,-995.15441894531,67.405075073242),
            vector3(381.9094543457,-631.53460693359,90.510612487793),
            vector3(864.10711669922,111.38018035889,174.65960693359),
            vector3(654.60083007812,-1565.3648681641,68.22225189209),
            vector3(-148.02760314941,-848.50762939453,294.72381591797),
            vector3(-12.284861564636,-720.61224365234,347.89538574219),
            vector3(350.67434692383,44.373966217041,136.88558959961),
            vector3(-335.72192382812,-1973.3098144531,88.92586517334),
            vector3(-862.03881835938,-511.42922973633,100.84761810303),
            vector3(197.85868835449,-906.35046386719,76.596183776855),
        }
    },
    -- ["Sandy"] = {
    --     centerPosition = vector3(1595.6166992188,3611.2084960938,350.22427368164),
    --     initialRadius = 2000.0,
    --     maxPlayers = 100,
    --     spawnPositions = {}
    -- }
}

cfg.teams = {
    {
        name = "Red",
        blipColour = 1,
        vehicleColour = 27,
        tagColour = 6,
        relationshipName = "DOGFIGHTING_RED",
        relationshipHash = `DOGFIGHTING_RED`,
    },
    {
        name = "Blue",
        blipColour = 3,
        vehicleColour = 64,
        tagColour = 9,
        relationshipName = "DOGFIGHTING_BLUE",
        relationshipHash = `DOGFIGHTING_BLUE`,
    }
}

-- Ensure missile and gun hashes are setup for each vehicle.
cfg.categories = {
    ["Modern Airplanes"] = {
        ["raiju"] = "F-160 Raiju",
        ["strikeforce"] = "B-11 Strikeforce",
    }
}

cfg.maxNumLives = 10
cfg.vehicleWeaponsList = {"Guns & Rockets", "Guns", "Rockets"}

cfg.gunHashes = {
    `VEHICLE_WEAPON_STRIKEFORCE_CANNON`,
    `VEHICLE_WEAPON_RAIJU_CANNONS`,
}

cfg.missileHashes = {
    `VEHICLE_WEAPON_STRIKEFORCE_MISSILE`,
    `VEHICLE_WEAPON_STRIKEFORCE_BARRAGE`,
    `VEHICLE_WEAPON_RAIJU_MISSILES`,
}

cfg.defaultRelationshipName = "DOGFIGHTING_DEFAULT"
cfg.defaultRelationshipHash = `DOGFIGHTING_DEFAULT`

cfg.winningPayout = 500000

cfg.collectableRespawnTime = 15000
cfg.maxCollectables = 10

for _, locationData in pairs(cfg.locations) do
    local headingInterval = 360.0 / locationData.maxPlayers
    for count = 1, locationData.maxPlayers do
        local headingDegs = count * headingInterval
        local length = locationData.initialRadius * 0.95
        local aircraftHeading = headingDegs > 180.0 and headingDegs - 180.0 or headingDegs + 180.0
        local zOffset = (count % 3) * 50.0
        local heading = math.rad(headingDegs)
        local targetPosition = vector4(locationData.centerPosition.x + length * math.sin(heading), locationData.centerPosition.y + length * math.cos(heading), locationData.centerPosition.z + zOffset, 360.0 - aircraftHeading)
        table.insert(locationData.spawnPositions, targetPosition)
    end
end

cfg.categoryNames = {}
for categoryName in pairs(cfg.categories) do
    table.insert(cfg.categoryNames, categoryName)
end
table.sort(cfg.categoryNames)

cfg.categoryVehicleNames = {}
for categoryName, categoryVehicles in pairs(cfg.categories) do
    local vehicleNames = {}
    for _, vehicleName in pairs(categoryVehicles) do
        table.insert(vehicleNames, vehicleName)
    end
    table.sort(vehicleNames)
    cfg.categoryVehicleNames[categoryName] = vehicleNames
end

cfg.numTeamsList = {}
for count = 1, #cfg.teams do
    table.insert(cfg.numTeamsList, tostring(count))
end

cfg.numLivesList = {}
for count = 1, cfg.maxNumLives do
    table.insert(cfg.numLivesList, tostring(count))
end

return cfg