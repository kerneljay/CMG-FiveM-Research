--[[
    Purge Leaderboard / HUD
    =======================

    During Purge:
      * the HUD timer-bar area says "F6 TO OPEN LEADERBOARD"
      * it also shows this client's kill count
      * F6 toggles a small custom "CMG PURGE / TOP 10" leaderboard panel

    Leaderboard data format:
      leaderboard[index] = {
          playerName,
          killCount
      }

    The original file initialises slot 12 as {"test", 0}; this is kept because
    later event 59d2ea80fc specifically increments leaderboard[12][2].

    Server events:
      5156c63289(leaderboard)
        Replaces the whole leaderboard table.

      59d2ea80fc
        Increments the local kill-counter entry at index 12.

      499112c90f
        Requested when the F6 panel is opened.

    Hash-looking event names are deliberately unchanged.
]]

local leaderboardOpen = false

local leaderboard = {
    [12] = {
        "test",
        0
    }
}

local ROW_HEIGHT = 0.033
local rowIndex = 0
local FIRST_ROW_Y = 0.306


-- ============================================================
-- HUD TIMER BAR
-- ============================================================

CMG.registerHudTimerBarProvider(
    "purgeMenu",
    function(timerBars)
        if not CMG.isPurge() then
            return
        end

        timerBars.push(
            "~r~F6 TO OPEN LEADERBOARD",
            ""
        )

        local localEntry =
            leaderboard[12]

        if localEntry
            and localEntry[2] then

            timerBars.push(
                "~r~KILLS",
                tostring(
                    localEntry[2]
                )
            )
        else
            timerBars.push(
                "~r~KILLS",
                "0"
            )
        end
    end
)


-- ============================================================
-- CUSTOM F6 LEADERBOARD
-- ============================================================

local function purgeMenuTick()
    if not CMG.isPurge() then
        CMG.setHudTimerBarProviderActive(
            "purgeMenu",
            false
        )

        return
    end

    CMG.setHudTimerBarProviderActive(
        "purgeMenu",
        true
    )

    -- Control 167 = F6.
    if IsControlJustPressed(
        0,
        167
    ) then
        leaderboardOpen =
            not leaderboardOpen

        if leaderboardOpen then
            TriggerServerEvent(
                "499112c90f"
            )
        end
    end

    if not leaderboardOpen then
        return
    end

    if CMG.isNewPlayer() then
        drawNativeNotification(
            "Press ~INPUT_SELECT_CHARACTER_FRANKLIN~ to toggle the purge menu."
        )
    end

    -- Header.
    DrawRect(
        0.5,
        0.222,
        0.223,
        0.075,
        255,
        0,
        0,
        255
    )

    DrawAdvancedText(
        0.595,
        0.213,
        0.005,
        0.0028,
        1.0,
        "CMG PURGE",
        255,
        255,
        255,
        255,
        1,
        0
    )

    DrawAdvancedText(
        0.595,
        0.275,
        0.005,
        0.0028,
        0.4,
        "TOP 10",
        0,
        255,
        50,
        255,
        6,
        0
    )

    DrawRect(
        0.5,
        0.272,
        0.223,
        0.026,
        0,
        0,
        0,
        222
    )

    rowIndex = 0

    for _, entry
        in pairs(leaderboard) do

        local text =
            tostring(entry[1])
            .. "  -  "
            .. tostring(entry[2])

        DrawAdvancedText(
            0.595,
            FIRST_ROW_Y
                + rowIndex
                    * ROW_HEIGHT,
            0.005,
            0.0028,
            0.4,
            text,
            255,
            255,
            255,
            255,
            6,
            0
        )

        DrawRect(
            0.5,
            0.301
                + ROW_HEIGHT
                    * rowIndex,
            0.223,
            0.033,
            0,
            0,
            0,
            120
        )

        rowIndex =
            rowIndex + 1
    end

    rowIndex = 0
end


CMG.createThreadOnTick(
    purgeMenuTick,
    "Purge Menu Controls"
)


-- ============================================================
-- SERVER UPDATES
-- ============================================================

RegisterNetEvent("5156c63289")
AddEventHandler(
    "5156c63289",
    function(serverLeaderboard)
        leaderboard =
            serverLeaderboard or {}
    end
)


RegisterNetEvent("59d2ea80fc")
AddEventHandler(
    "59d2ea80fc",
    function()
        if leaderboard[12]
            and leaderboard[12][2] then

            leaderboard[12][2] =
                leaderboard[12][2] + 1
        else
            leaderboard[12] = {
                "test",
                1
            }
        end
    end
)
