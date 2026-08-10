--[[
    BEGINNER GUIDE — Aimtraining
    ============================

    File: cmg/prod/cfg/cfg_aimtraining.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type AimTrainingConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.slowRespawnDelay = 1000
cfg.fastRespawnDelay = 250
cfg.fakeEntityHealth = 1000
cfg.maxNumTargets = 5

cfg.locations = {
    ["Legion"] = {
        enterPosition = vector3(7.2621970176697,-1099.0505371094,29.797033309937),
        leavePosition = vector3(7.8495473861694,-1097.5510253906,29.796998977661),
        targetForwardHeading = 158.74015808105,
        zones = {
            ["Far"] = {
                max = vector3(28.594299316406,-1073.7788085938,28.797031402588),
                min = vector3(13.661182403564,-1078.9704589844,28.797031402588),
            },
            ["Med"] = {
                max = vector3(24.851917266846,-1083.947265625,28.797027587891),
                min = vector3(10.551784515381,-1087.5083007812,28.797008514404),
            },
            ["Close"] = {
                max = vector3(21.696472167969,-1090.6156005859,28.797002792358),
                min = vector3(9.5180139541626,-1092.3532714844,28.797021865845)
            }
        }
    }
}

cfg.lockedDoors = {
    {position = vector3(6.8178901672363,-1098.2094726562, 29.946853637695), modelHash = `v_ilev_gc_door01`},
}

cfg.runAnim = {
    dict = "move_m@multiplayer",
    clip = "run",
}

cfg.sideAnim = {
    dict = "move_m@generic",
    clip = "walk",
}

cfg.rollAnims = {
    dict = "move_strafe@roll",
    clips = {
        "combatroll_fwd_p1_45",
        "combatroll_fwd_p1_-45",
        "combatroll_fwd_p1_90"
    }
}

cfg.numTargetsList = {}
for count = 1, cfg.maxNumTargets do
    table.insert(cfg.numTargetsList, tostring(count))
end

cfg.movementsList = {"Idle", "Running", "Side To Side", "Rolling", "Random"}
cfg.distanceList = {"Close", "Med", "Far", "Random"}

cfg.movementSpeedValues = {1.0, 1.25, 1.5, 1.75, 2.0, 2.25, 2.5, 2.75, 3.0}

cfg.movementSpeedList = {}
for _, value in pairs(cfg.movementSpeedValues) do
    table.insert(cfg.movementSpeedList, string.format("%sx", value))
end

cfg.defaultSettings = {
    headshotsOnly = false,
    numTargetsCount = 1,
    movementsIndex = 1,
    distanceIndex = 2,
    movementSpeedIndex = 1,
    fastRespawns = false,
}

---@param settings AimTrainingSettings
local function assertSettingsAreValid(settings)
    assert(settings.numTargetsCount >= 1 and settings.numTargetsCount <= cfg.maxNumTargets)
    assert(settings.movementsIndex >= 1 and settings.movementsIndex <= #cfg.movementsList)
    assert(settings.distanceIndex >= 1 and settings.distanceIndex <= #cfg.distanceList)
    assert(settings.movementSpeedIndex >= 1 and settings.movementSpeedIndex <= #cfg.movementSpeedList)
end

assertSettingsAreValid(cfg.defaultSettings)

cfg.challenges = {
    ["Reaction Times V1"] = {
        description = "Test your reaction times. Targets will appear and you must shoot them before they disappear.",
        numTargets = 100,
        targetDurationMsec = 3000,
        timeToCompleteMsec = 90000,
        settings = {
            headshotsOnly = false,
            numTargetsCount = 5,
            movementsIndex = 1,
            distanceIndex = 4,
            movementSpeedIndex = 1,
            fastRespawns = true,
        }
    },
    ["Running Headshots V1"] = {
        description = "Test your headshot accuracy against running players. Targets will appear and you must shoot them in the head before they disappear.",
        numTargets = 100,
        targetDurationMsec = 8000,
        timeToCompleteMsec = 240000,
        settings = {
            headshotsOnly = true,
            numTargetsCount = 5,
            movementsIndex = 2,
            distanceIndex = 4,
            movementSpeedIndex = 9,
            fastRespawns = true,
        }
    },
    ["Rolling Headshots V1"] = {
        description = "Test your headshot accuracy against rolling players. Targets will appear and you must shoot them in the head before they disappear.",
        numTargets = 50,
        targetDurationMsec = 8000,
        timeToCompleteMsec = 120000,
        settings = {
            headshotsOnly = true,
            numTargetsCount = 5,
            movementsIndex = 4,
            distanceIndex = 4,
            movementSpeedIndex = 7,
            fastRespawns = true,
        }
    }
}

for _, challengeData in pairs(cfg.challenges) do
    local maximumTimeMsec = (challengeData.numTargets * challengeData.targetDurationMsec) / challengeData.settings.numTargetsCount
    assert(challengeData.timeToCompleteMsec <= maximumTimeMsec * 1.5)

    assertSettingsAreValid(challengeData.settings)
end

cfg.availableWeapons = {
    "WEAPON_ROOK",
    "WEAPON_MOSINCMG",
    "WEAPON_SPAR16",
    "WEAPON_UMP45CMG",
}

cfg.statsBoardModel = `v_ilev_mm_screen2`
cfg.statsBoardLocations = {
    vector4(13.635166168213,-1106.1625976562,29.785400390625,161.99212646484),
}

return cfg