--[[
    Blood Money Red-Zone HUD
    ========================

    Config:
      cfg/cfg_bloodmoney
      cfg/cfg_redzones

    The server starts this display with event 3aba363f0a:
      redZoneIndex
      startNetworkTime

    While active, the client ONLY draws the Blood Money 3D Scaleform when the
    local player is still inside that same red zone.

    The Scaleform shows:
      * time remaining
      * title "Blood Money"
      * number of visible active players

    It is rendered at the configured red-zone `bloodMoney` world position and
    rotated to face the local player.

    If the player's combat timer is between 1 and 25 seconds, it is refreshed
    to 30 seconds while this display is active.

    Event 4f69347c6e stops the display.

    Hash-looking event names are deliberately unchanged.
]]

local bloodMoneyConfig =
    CMG.loadModule(
        "cfg/cfg_bloodmoney"
    )

local redZoneConfig =
    CMG.loadModule(
        "cfg/cfg_redzones"
    )

local activeRedZoneIndex = nil
local startedAtNetworkTime = 0


-- ============================================================
-- SMALL HELPERS
-- ============================================================

local function calculateFacingRotation(
    playerCoords,
    targetCoords
)
    local difference =
        playerCoords
        - targetCoords

    local rotationZ = 0.0

    if difference.x > 0.0 then
        rotationZ =
            270.0
            - math.atan(
                difference.y
                / difference.x
            )
            * (180.0 / math.pi)

    elseif difference.x < 0.0 then
        rotationZ =
            math.atan(
                difference.y
                / -difference.x
            )
            * (180.0 / math.pi)
            + 90.0
    end

    return rotationZ
end


local function formatRemainingTime(
    totalSeconds
)
    local seconds =
        totalSeconds % 60

    local minutes =
        math.floor(
            totalSeconds / 60
        )

    -- string.rpad is a framework helper used by the original client.
    return string.format(
        "Time Left: %s:%s",
        string.rpad(
            tostring(minutes),
            2,
            "0"
        ),
        string.rpad(
            tostring(seconds),
            2,
            "0"
        )
    )
end


local function countVisiblePlayers()
    local count = 0

    for _, playerIndex
        in pairs(
            GetActivePlayers()
        ) do

        local ped =
            GetPlayerPed(
                playerIndex
            )

        if ped ~= 0
            and IsEntityVisible(ped) then

            count =
                count + 1
        end
    end

    return count
end


-- ============================================================
-- BLOOD MONEY TICK
-- ============================================================

local function bloodMoneyTick()
    local inRedZone,
          currentRedZoneIndex =
        CMG.isPlayerInRedZone()

    if not inRedZone
        or currentRedZoneIndex
            ~= activeRedZoneIndex then
        return
    end

    local combatTimer =
        CMG.getPlayerCombatTimer()

    if combatTimer > 0
        and combatTimer <= 25 then

        CMG.setPlayerCombatTimer(
            30,
            false
        )
    end

    local redZone =
        redZoneConfig.locations[
            activeRedZoneIndex
        ]

    assert(redZone)

    local playerCoords =
        CMG.getPlayerCoords()

    local rotationZ =
        calculateFacingRotation(
            playerCoords,
            redZone.bloodMoney
        )

    local remainingSeconds =
        math.floor(
            (
                startedAtNetworkTime
                + bloodMoneyConfig.durationMsec
                - GetNetworkTime()
            )
            / 1000.0
        )

    if remainingSeconds <= 0 then
        return
    end

    local timeText =
        formatRemainingTime(
            remainingSeconds
        )

    local visiblePlayerCount =
        countVisiblePlayers()

    local scaleform =
        Scaleform(
            "mp_mission_name_freemode"
        )

    scaleform.RunFunction(
        "SET_MISSION_INFO",
        {
            timeText,
            "Blood Money",
            "",
            "",
            "",
            "",
            visiblePlayerCount,
            "0",
            "",
            ""
        }
    )

    scaleform.Render3D(
        redZone.bloodMoney,
        vector3(
            0.0,
            0.0,
            rotationZ
        ),
        vector2(
            6.0,
            6.0
        )
    )
end


-- ============================================================
-- SERVER START / STOP
-- ============================================================

RegisterNetEvent(
    "3aba363f0a",
    function(
        redZoneIndex,
        networkStartTime
    )
        activeRedZoneIndex =
            redZoneIndex

        startedAtNetworkTime =
            networkStartTime

        CMG.createThreadOnTick(
            bloodMoneyTick,
            "Blood Money"
        )
    end
)


RegisterNetEvent(
    "4f69347c6e",
    function()
        activeRedZoneIndex = nil

        CMG.deleteThreadOnTick(
            bloodMoneyTick
        )
    end
)
