--[[
    King Of The Hill (KOTH)
    =======================

    Config: cfg/cfg_koth

    Server controls which KOTH location is active.

    Runtime state:
      activeLocationIndex
        Which cfg location is currently active.

      capturingPlayerServerId
        Server ID of the player currently capturing the area, or nil.

      captureStartedAt
        Network time when that capture attempt began.

    While inside the configured radius:
      * HUD text shows who is capturing and seconds remaining
      * if nobody is capturing, it says so
      * within 2 metres, E asks the server to capture the area

    If THIS local player is the capturer and leaves the area radius, the client
    tells the server to cancel the capture.

    Hash-looking event names are deliberately unchanged.
]]

local kothConfig =
    CMG.loadModule(
        "cfg/cfg_koth"
    )

local activeLocationIndex = nil
local capturingPlayerServerId = nil
local captureStartedAt = 0

local areaHandle = nil
local radiusBlip = nil
local markerHandle = nil


local function onEnterKothArea()
    TriggerServerEvent(
        "f60854b55a"
    )
end


local function onLeaveKothArea()
    TriggerServerEvent(
        "8ef29fe4c8"
    )
end


local function kothAreaTick(areaData)
    local location =
        kothConfig.locations[
            activeLocationIndex
        ]

    if not location then
        return
    end

    if areaData.distance
        > location.radius then

        if capturingPlayerServerId
            and CMG.getLocalPlayerSrc()
                == capturingPlayerServerId then

            TriggerServerEvent(
                "2c0f07cb87"
            )
        end

        return
    end

    local capturingName = nil

    if capturingPlayerServerId then
        local playerIndex =
            GetPlayerFromServerId(
                capturingPlayerServerId
            )

        if playerIndex >= 0 then
            capturingName =
                CMG.getPlayerName(
                    playerIndex
                )
        end
    end

    if capturingName then
        local elapsed =
            GetNetworkTime()
            - captureStartedAt

        local secondsRemaining =
            math.max(
                math.floor(
                    (
                        kothConfig.captureTimeMsec
                        - elapsed
                    )
                    / 1000
                ),
                0
            )

        DrawAdvancedText(
            0.931,
            0.945,
            0.005,
            0.0028,
            0.49,
            string.format(
                "%s is capturing (%s seconds remaining)",
                capturingName,
                secondsRemaining
            ),
            255,
            23,
            141,
            255,
            7,
            0
        )
    else
        DrawAdvancedText(
            0.931,
            0.945,
            0.005,
            0.0028,
            0.49,
            "Area is not captured by anyone.",
            255,
            23,
            141,
            255,
            7,
            0
        )
    end

    if areaData.distance < 2.0 then
        drawNativeNotification(
            "Press ~INPUT_CONTEXT~ to capture the area."
        )

        if IsControlJustPressed(
            0,
            51
        ) then
            TriggerServerEvent(
                "ee55bf95bd"
            )
        end
    end
end


-- ============================================================
-- SERVER: ACTIVATE A KOTH LOCATION
-- ============================================================

RegisterNetEvent(
    "32da7fdffa",
    function(locationIndex)
        local location =
            kothConfig.locations[
                locationIndex
            ]

        if not location then
            return
        end

        areaHandle =
            CMG.createArea(
                "koth",
                location.position,
                100.0,
                100.0,
                onEnterKothArea,
                onLeaveKothArea,
                kothAreaTick
            )

        radiusBlip =
            AddBlipForRadius(
                location.position.x,
                location.position.y,
                location.position.z,
                15.0
            )

        SetBlipAlpha(
            radiusBlip,
            255
        )

        SetBlipPriority(
            radiusBlip,
            2
        )

        markerHandle =
            tCMG.addMarker(
                location.position.x,
                location.position.y,
                location.position.z,
                1.0,
                1.0,
                1.0,
                255,
                0,
                0,
                255,
                15.0,
                42
            )

        activeLocationIndex =
            locationIndex
    end
)


-- ============================================================
-- SERVER: REMOVE ACTIVE KOTH
-- ============================================================

RegisterNetEvent(
    "31cdb976ff",
    function()
        activeLocationIndex = nil
        capturingPlayerServerId = nil
        captureStartedAt = 0

        if areaHandle then
            tCMG.removeArea(
                areaHandle
            )
            areaHandle = nil
        end

        if radiusBlip then
            RemoveBlip(
                radiusBlip
            )
            radiusBlip = nil
        end

        if markerHandle then
            tCMG.removeMarker(
                markerHandle
            )
            markerHandle = nil
        end
    end
)


-- Server updates who is currently capturing and when they started.
RegisterNetEvent(
    "5fc8d085a5",
    function(
        playerServerId,
        startedAt
    )
        capturingPlayerServerId =
            playerServerId

        captureStartedAt =
            startedAt
    end
)
