--[[
    New-Job Instruction Popups
    ==========================

    Event e3a2b4bde0(jobName) is sent when a player needs a quick explanation
    of where/how to start a civilian job.

    CMG.initializeInstructionalJobScaleform(title, message)
      Shows a GTA big-message card for 10 seconds.

    Most jobs also set a waypoint to their starting location.

    Supported job names:
      AA
      Farmer
      Royal Mail
      Bus Driver
      Deliveroo
      Scuba Diver
      Pilot
      G4S Driver
      Fisherman
      Trucking
      Taco Seller
      Garbage
]]

-- ============================================================
-- 10-SECOND INSTRUCTION CARD
-- ============================================================

function CMG.initializeInstructionalJobScaleform(
    title,
    message
)
    Citizen.CreateThread(function()
        local scaleform =
            RequestScaleformMovie(
                "mp_big_message_freemode"
            )

        while not HasScaleformMovieLoaded(
            scaleform
        ) do
            Citizen.Wait(0)
        end

        BeginScaleformMovieMethod(
            scaleform,
            "SHOW_SHARD_WASTED_MP_MESSAGE"
        )

        ScaleformMovieMethodAddParamTextureNameString(
            title
        )

        ScaleformMovieMethodAddParamTextureNameString(
            message
        )

        ScaleformMovieMethodAddParamInt(5)

        EndScaleformMovieMethod()

        local visible = true

        SetTimeout(
            10000,
            function()
                visible = false
            end
        )

        while visible do
            DrawScaleformMovie(
                scaleform,
                0.5,
                0.35,
                1.0,
                1.0,
                0,
                0,
                0,
                0,
                0
            )

            Wait(0)
        end
    end)
end


-- ============================================================
-- COMMON JOB MESSAGE
-- ============================================================

local function showJobInstruction(
    title,
    message,
    waypointX,
    waypointY
)
    PlaySound(
        -1,
        "CHECKPOINT_BEHIND",
        "HUD_MINI_GAME_SOUNDSET",
        false,
        0,
        true
    )

    CMG.initializeInstructionalJobScaleform(
        title,
        message
    )

    if waypointX and waypointY then
        SetNewWaypoint(
            waypointX,
            waypointY
        )
    end
end


-- ============================================================
-- FIND NEAREST NORMAL/VIP GARAGE FOR AA
-- ============================================================

local garageConfig =
    CMG.loadModule(
        "cfg/cfg_garages"
    )

local mechanicGarageTypes = {
    ["Standard Garage"] = true,
    ["VIP Cars"] = true
}


local function getNearestMechanicGarage()
    if not garageConfig.garageInstances then
        return nil, nil
    end

    local playerCoords =
        GetEntityCoords(
            CMG.getPlayerPed(),
            true
        )

    local bestSquaredDistance = nil
    local bestX = nil
    local bestY = nil

    for _, instance
        in pairs(
            garageConfig.garageInstances
        ) do

        local garageType =
            instance[1]

        local coords =
            instance[2]

        if mechanicGarageTypes[
            garageType
        ]
            and coords
            and coords.x then

            local deltaX =
                playerCoords.x
                - coords.x

            local deltaY =
                playerCoords.y
                - coords.y

            local squaredDistance =
                deltaX * deltaX
                + deltaY * deltaY

            if not bestSquaredDistance
                or squaredDistance
                    < bestSquaredDistance then

                bestSquaredDistance =
                    squaredDistance

                bestX = coords.x
                bestY = coords.y
            end
        end
    end

    return bestX, bestY
end


-- ============================================================
-- JOB-SPECIFIC HELPERS
-- ============================================================

local function showMechanicInstructions()
    PlaySound(
        -1,
        "CHECKPOINT_BEHIND",
        "HUD_MINI_GAME_SOUNDSET",
        false,
        0,
        true
    )

    CMG.initializeInstructionalJobScaleform(
        "Mechanic",
        "Press F6 to get started"
    )

    local x, y =
        getNearestMechanicGarage()

    if x and y then
        SetNewWaypoint(x, y)
    end
end


local instructions = {
    ["Royal Mail"] = function()
        showJobInstruction(
            "Postal Service",
            "I have set a waypoint to the Postal Service garage where you can start your shift.",
            -19.447393417358,
            -705.32580566406
        )
    end,

    ["Bus Driver"] = function()
        showJobInstruction(
            "Bus Driving",
            "I have set a waypoint to the Bus garage where you can start your shift.",
            429.52169799804,
            -587.45068359375
        )
    end,

    Deliveroo = function()
        showJobInstruction(
            "Food Delivery",
            "I have set a waypoint to the restaurant where you can start your shift.",
            -1174.4127197266,
            -872.98626708984
        )
    end,

    ["Scuba Diver"] = function()
        showJobInstruction(
            "Scuba Diving",
            "I have set a waypoint to the Scuba Diving shop where you'll start your first job.",
            -2195.6926269531,
            -394.82040405273
        )
    end,

    Pilot = function()
        showJobInstruction(
            "Pilot",
            "I have set a waypoint to the Airport where your career will take off from.",
            -981.72332763672,
            -2956.2905273438
        )
    end,

    ["G4S Driver"] = function()
        showJobInstruction(
            "Cash Driver",
            "I have set a waypoint to the Cash Driver depot where you'll start your first job.",
            -710.4659,
            269.6835
        )
    end,

    Fisherman = function()
        showJobInstruction(
            "Fisherman",
            "I have set a waypoint to the bait shop where you'll need to buy some bait. After that you can make your way to one of the fishing locations on the map!",
            492.91830444336,
            -3384.94140625
        )
    end,

    Trucking = function()
        showJobInstruction(
            "Trucking",
            "I have set a waypoint to the garage where you'll start your first job.",
            862.86767578125,
            -3195.6655273438
        )
    end,

    ["Taco Seller"] = function()
        showJobInstruction(
            "Taco Seller",
            "Buy a Taco truck at Simeons then type /taco to start selling!",
            -47.174137115479,
            -1109.6021728516
        )
    end,

    Garbage = function()
        showJobInstruction(
            "Garbage",
            "Press F6 to get started",
            -355.2,
            -1518.4
        )
    end
}


-- ============================================================
-- SERVER TELLS US WHICH JOB TO EXPLAIN
-- ============================================================

RegisterNetEvent(
    "e3a2b4bde0",
    function(jobName)
        if jobName == "AA" then
            showMechanicInstructions()
            return
        end

        if jobName == "Farmer" then
            CMG.displayFarmerInstructions()
            return
        end

        local handler =
            instructions[jobName]

        if handler then
            handler()
        end
    end
)
