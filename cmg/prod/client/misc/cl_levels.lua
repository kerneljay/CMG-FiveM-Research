--[[
    LEVEL 1 BEGINNER GUIDE — Levels
    ====================================

    File: cmg/prod/client/misc/cl_levels.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Levels feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
      * Background threads: 0
      * Always-running loops: 0
      * Commands: level
      * Incoming network events: 7d0acdab9a, d896db57d4
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
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
    Legacy Job Level / XP System
    ============================

    This is separate from the newer Skill Tree system.

    The server supplies:
      jobDefinitions[jobId]
        name
        xp_table[level] = total XP required to finish that level

      playerLevels[jobId]
        xp
        level
        name

    Public helper:
      CMG.getClientJobLevel(jobId)
        Returns at least level 1.

    Server events:
      7d0acdab9a(jobDefinitions, savedPlayerLevels)
        Builds this client's runtime XP/level table.

      d896db57d(jobId, gainedXp, modifiers, extraArg)
        Calls AddPlayerXP(...).

    /level opens a simple RageUI overview for known displayed jobs.

    The XP animation sent to NUI uses action "XP_GAIN_STEPS".
]]

local jobDefinitions = {}
local playerLevels = {}


-- ============================================================
-- PUBLIC LEVEL LOOKUP
-- ============================================================

-- === HELPER FUNCTION: CMG.getClientJobLevel(jobId) ===
function CMG.getClientJobLevel(jobId)
    local data =
        playerLevels[jobId]

    local level =
        data
        and tonumber(data.level)

    if level then
        return
            math.max(
                1,
                math.floor(level)
            )
    end

    return 1
end


-- ============================================================
-- INITIAL SERVER DATA
-- ============================================================

RegisterNetEvent(
    "7d0acdab9a",
    function(
        serverJobDefinitions,
        savedPlayerLevels
    )
        jobDefinitions =
            serverJobDefinitions
            or {}

        playerLevels = {}

        for jobId, definition
            in pairs(jobDefinitions) do

            local saved =
                savedPlayerLevels[
                    jobId
                ]

            local xp = 0
            local level = 1

            if saved then
                xp =
                    saved.xp

                level =
                    math.max(
                        1,
                        saved.level or 1
                    )
            end

            playerLevels[jobId] = {
                type = jobId,
                xp = xp,
                level = level,
                name =
                    definition.name
            }
        end
    end
)


-- ============================================================
-- XP STEP CALCULATION
-- ============================================================

local function calculateXpSteps(
    xpTable,
    level,
    currentXp,
    xpToAdd
)
    local steps = {}
    local levelsGained = 0

    while xpToAdd > 0 do
        local levelMaximum =
            xpTable[level]

        if not levelMaximum then
            break
        end

        local xpRemaining =
            levelMaximum
            - currentXp

        if xpToAdd >= xpRemaining then
            table.insert(
                steps,
                {
                    level = level,
                    xpFrom =
                        currentXp,
                    xpTo =
                        levelMaximum,
                    xpMax =
                        levelMaximum,
                    note =
                        "LEVEL UP!",
                    awardPoints = 1
                }
            )

            xpToAdd =
                xpToAdd
                - xpRemaining

            level =
                level + 1

            currentXp = 0

            levelsGained =
                levelsGained + 1
        else
            table.insert(
                steps,
                {
                    level = level,
                    xpFrom =
                        currentXp,
                    xpTo =
                        currentXp
                        + xpToAdd,
                    xpMax =
                        levelMaximum
                }
            )

            currentXp =
                currentXp
                + xpToAdd

            xpToAdd = 0
        end
    end

    return
        steps,
        level,
        currentXp,
        levelsGained
end


-- ============================================================
-- APPLY XP
-- ============================================================

function AddPlayerXP(
    jobId,
    gainedXp,
    modifiers,
    _
)
    local message =
        string.format(
            "~g~XP increased by %s!",
            gainedXp
        )

    if modifiers
        and table.count(
            modifiers
        ) > 0 then

        message =
            message
            .. "\n\nYour Active Modifiers:"

        for modifierName,
            modifierXp
            in pairs(modifiers) do

            message =
                message
                .. "\n"
                .. string.format(
                    "%s (+%s XP)",
                    modifierName,
                    modifierXp
                )
        end
    end

    notify(message)

    local definition =
        jobDefinitions[jobId]

    local runtime =
        playerLevels[jobId]

    if not definition
        or not runtime then
        return
    end

    local xpTable =
        definition.xp_table

    if not xpTable
        or #xpTable == 0 then
        return
    end

    local oldLevel =
        runtime.level

    local oldXp =
        runtime.xp

    local steps,
          newLevel,
          newXp,
          levelsGained =
        calculateXpSteps(
            xpTable,
            oldLevel,
            oldXp,
            gainedXp
        )

    if #steps > 0 then
        CMG.uiSendMessage({
            action =
                "XP_GAIN_STEPS",

            payload = {
                label =
                    runtime.name,
                color = "yellow",
                gained =
                    gainedXp,
                pointsBefore =
                    oldLevel,
                pointsAfter =
                    oldLevel
                    + levelsGained,
                steps = steps
            }
        })
    end

    runtime.xp =
        newXp

    runtime.level =
        newLevel
end


RegisterNetEvent(
    "d896db57d4",
    function(...)
        AddPlayerXP(...)
    end
)


-- ============================================================
-- /LEVEL MENU
-- ============================================================

local displayedJobs = {
    cmg_pilot =
        "Pilot Job",

    cmg_trucking =
        "Trucking Job"
}


RMenu.Add(
    "levels",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "~b~CMG Level System",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_settingsui",
        "cmg_settingsui"
    )
)

local levelMenu =
    RMenu:Get(
        "levels",
        "mainmenu"
    )


RageUI.CreateWhile(
    1.0,
    levelMenu,
    nil,
    function()
        RageUI.IsVisible(
            levelMenu,
            true,
            true,
            true,
            function()
                for jobId, runtime
                    in pairs(
                        playerLevels
                    ) do

                    local displayName =
                        displayedJobs[
                            jobId
                        ]

                    if displayName then
                        local xpTable =
                            jobDefinitions[
                                jobId
                            ].xp_table

                        local nextLevelXp =
                            xpTable[
                                runtime.level
                            ]

                        RageUI.ButtonWithStyle(
                            displayName,
                            "Current XP: "
                                .. tostring(
                                    runtime.xp
                                )
                                .. "\nNext Level XP: "
                                .. tostring(
                                    nextLevelXp
                                ),
                            {
                                RightLabel =
                                    "Level "
                                    .. tostring(
                                        runtime.level
                                    )
                            },
                            true,
                            function()
                            end
                        )
                    end
                end
            end
        )
    end
)


RegisterCommand(
    "level",
    function()
        RageUI.Visible(
            levelMenu,
            true
        )
    end,
    false
)
