--[[
    LEVEL 1 BEGINNER GUIDE — Skilltree
    =======================================

    File: cmg/prod/client/core/cl_skilltree.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Skilltree feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 14
      * Background threads: 0
      * Always-running loops: 0
      * Commands: skilltree
      * Incoming network events: e298dff343, 9ec6bde351
      * Local event handlers: none found by static scan
      * Server events sent: CMG:hackingPhoneRequestCapabilities
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_skilltree

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
    Skill Tree Client
    =================

    Beginner overview:
      * F1 (or /skilltree) opens/closes the Skill Tree UI.
      * The server sends this client's current level/XP/perks.
      * XP updates are converted into one or more UI animation "steps".
      * Buying a perk asks the server for permission, then updates the UI.
      * Several helper functions turn unlocked perks into gameplay bonuses.

    Important tables:
      skillTreeConfig
          Static definitions: categories, skills, trees and XP formulas.

      playerSkills[categoryId]
          Runtime data from the server:
            level
            xp
            skillPoints
            perksUnlocked

    Hashed server callback/event names are intentionally unchanged.
]]

local skillTreeConfig =
    CMG.loadModule("cfg/cfg_skilltree")

local playerSkills = {}

local skillTreeOpen = false


-- ============================================================
-- SEND THE CATEGORY OVERVIEW TO THE UI
-- ============================================================

-- === HELPER FUNCTION: sendSkillTreeOverview() ===
local function sendSkillTreeOverview()
    local categoriesForUi = {}

    for _, category
        in pairs(skillTreeConfig.skillCategories) do

        local playerCategory =
            playerSkills[category.id]

        -- Do not invent runtime values before the server has sent them.
        if playerCategory then
            local uiCategory =
                table.copy(category)

            uiCategory.perksMax =
                skillTreeConfig
                    .getMaxPerksInCategory(
                        category.id
                    )

            uiCategory.xpMax =
                skillTreeConfig.getLevelXP(
                    playerCategory.level
                )

            uiCategory.level =
                playerCategory.level

            uiCategory.xp =
                playerCategory.xp

            uiCategory.skillPoints =
                playerCategory.skillPoints

            uiCategory.perksUnlocked =
                playerCategory.perksUnlocked

            uiCategory.perksUsed =
                table.count(
                    playerCategory.perksUnlocked
                )

            table.insert(
                categoriesForUi,
                uiCategory
            )
        end
    end

    CMG.uiSendMessage({
        type = "SKILLTREE_MENU_SET",
        info = {
            skillCategories =
                categoriesForUi
        }
    })
end


-- ============================================================
-- OPEN / CLOSE
-- ============================================================

-- === HELPER FUNCTION: toggleSkillTree() ===
local function toggleSkillTree()
    -- Do not fight with the vehicle-HUD cursor.
    if CMG.isHudVehicleCursorEnabled() then
        return
    end

    -- A player in coma cannot OPEN the menu.
    -- If it is already open, it may still be closed.
    if not skillTreeOpen
        and tCMG.isInComa() then
        return
    end

    skillTreeOpen =
        not skillTreeOpen

    if skillTreeOpen then
        CMG.hideHud()

        CMG.uiSetFocus(
            true,
            true,
            false
        )

        TriggerScreenblurFadeIn(0.0)

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = "skilltree"
        })

        sendSkillTreeOverview()
    else
        CMG.showHud()

        CMG.uiSetFocus(
            false,
            false,
            false
        )

        TriggerScreenblurFadeOut(0.0)

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = ""
        })
    end
end

RegisterCommand(
    "skilltree",
    toggleSkillTree,
    false
)

RegisterKeyMapping(
    "skilltree",
    "Open Skill Tree",
    "KEYBOARD",
    "F1"
)


-- ============================================================
-- CATEGORY COLOURS USED BY XP POPUPS
-- ============================================================

local function getSkillCategoryColour(
    categoryId
)
    if categoryId == "civilian" then
        return "yellow"
    end

    if categoryId == "crime" then
        return "red"
    end

    if categoryId == "factions" then
        return "blue"
    end

    return "purple"
end


-- ============================================================
-- XP STEP CALCULATION
-- ============================================================

-- Turns one XP gain into UI steps.
--
-- Example:
--   If 500 XP crosses two levels, the UI receives:
--     step 1 -> fill old level and say LEVEL UP
--     step 2 -> fill next level and say LEVEL UP
--     step 3 -> put leftover XP into current level
--
-- skillPointsBefore and remainingPerkCost are used to avoid awarding
-- pointless extra perk points when the category no longer needs them.
local function calculateXpGainSteps(
    level,
    currentXp,
    xpToAdd,
    skillPointsBefore,
    remainingPerkCost
)
    local steps = {}
    local awardedPoints = 0

    local pointsAfterAwards =
        skillPointsBefore or 0

    if xpToAdd <= 0 then
        return
            steps,
            level,
            currentXp,
            awardedPoints
    end

    while xpToAdd > 0 do
        local xpNeededForLevel =
            skillTreeConfig.getLevelXP(
                level
            )

        local xpRemaining =
            xpNeededForLevel - currentXp

        if xpToAdd >= xpRemaining then
            local awardPoint = 0

            if remainingPerkCost
                > pointsAfterAwards then
                awardPoint = 1
            end

            table.insert(
                steps,
                {
                    level = level,
                    xpFrom = currentXp,
                    xpTo = xpNeededForLevel,
                    xpMax = xpNeededForLevel,
                    note = "LEVEL UP!",
                    awardPoints = awardPoint
                }
            )

            xpToAdd =
                xpToAdd - xpRemaining

            level = level + 1
            currentXp = 0

            pointsAfterAwards =
                pointsAfterAwards + awardPoint

            awardedPoints =
                awardedPoints + awardPoint
        else
            table.insert(
                steps,
                {
                    level = level,
                    xpFrom = currentXp,
                    xpTo =
                        currentXp + xpToAdd,
                    xpMax =
                        xpNeededForLevel
                }
            )

            currentXp =
                currentXp + xpToAdd

            xpToAdd = 0
        end
    end

    return
        steps,
        level,
        currentXp,
        awardedPoints
end


-- ============================================================
-- HOW MANY POINTS ARE STILL NEEDED FOR LOCKED PERKS?
-- ============================================================

local function getRemainingPerkCost(
    categoryData,
    categoryId
)
    local unlocked =
        categoryData.perksUnlocked or {}

    local remainingCost = 0

    for skillId, skill
        in pairs(skillTreeConfig.skills or {}) do

        if skill.skillCategory == categoryId
            and not unlocked[skillId] then

            remainingCost =
                remainingCost +
                (skill.cost or 1)
        end
    end

    return remainingCost
end


-- ============================================================
-- APPLY AN XP UPDATE
-- ============================================================

local function applySkillXp(
    categoryId,
    gainedXp,
    silent
)
    local categoryData =
        playerSkills[categoryId]

    if not categoryData then
        return
    end

    local remainingPerkCost =
        getRemainingPerkCost(
            categoryData,
            categoryId
        )

    local oldSkillPoints =
        categoryData.skillPoints or 0

    local steps,
          newLevel,
          newXp,
          awardedPoints =
        calculateXpGainSteps(
            categoryData.level,
            categoryData.xp,
            gainedXp,
            oldSkillPoints,
            remainingPerkCost
        )

    local newSkillPoints =
        oldSkillPoints + awardedPoints

    categoryData.level =
        newLevel

    categoryData.xp =
        newXp

    categoryData.skillPoints =
        newSkillPoints

    if silent then
        return
    end

    if #steps > 0 then
        CMG.uiSendMessage({
            action = "XP_GAIN_STEPS",
            payload = {
                label = categoryId,
                color =
                    getSkillCategoryColour(
                        categoryId
                    ),
                gained = gainedXp,
                pointsBefore =
                    oldSkillPoints,
                pointsAfter =
                    newSkillPoints,
                steps = steps
            }
        })
    end
end


-- ============================================================
-- GAMEPLAY BONUS HELPERS
-- ============================================================

-- === HELPER FUNCTION: CMG.getPilotingFuelCapacityPercent() ===
function CMG.getPilotingFuelCapacityPercent()
    local bonuses = {
        5,
        10,
        15,
        20,
        30,
        40,
        50
    }

    for level = 7, 1, -1 do
        if CMG.hasClientSkill(
            "piloting_fuel_capacity_" ..
            level
        ) then
            return bonuses[level]
        end
    end

    return 0
end


-- === HELPER FUNCTION: CMG.getMechanicFuelUsageReductionPercent() ===
function CMG.getMechanicFuelUsageReductionPercent()
    for level = 5, 1, -1 do
        if CMG.hasClientSkill(
            "mechanic_fuel_usage_" ..
            level
        ) then
            return level * 10
        end
    end

    return 0
end


-- === HELPER FUNCTION: CMG.getMechanicRepairStationSpeedPercentClient() ===
function CMG.getMechanicRepairStationSpeedPercentClient()
    for level = 5, 1, -1 do
        if CMG.hasClientSkill(
            "mechanic_repair_stations_speed_" ..
            level
        ) then
            return level * 10
        end
    end

    return 0
end


-- === HELPER FUNCTION: CMG.getMoneyLaunderingBurnerPhoneDiscountPercentClient() ===
function CMG.getMoneyLaunderingBurnerPhoneDiscountPercentClient()
    for level = 5, 1, -1 do
        if CMG.hasClientSkill(
            "money_laundering_burner_phone_discount_" ..
            level
        ) then
            return 5 * level
        end
    end

    return 0
end


-- === HELPER FUNCTION: CMG.getTrapperSupplyDiscountPercentClient() ===
function CMG.getTrapperSupplyDiscountPercentClient()
    for level = 4, 1, -1 do
        if CMG.hasClientSkill(
            "trapper_supplies_discount_" ..
            level
        ) then
            return level * 5
        end
    end

    return 0
end

exports(
    "getTrapperSupplyDiscountPercentClient",
    CMG.getTrapperSupplyDiscountPercentClient
)


-- === HELPER FUNCTION: CMG.getTruckingMaxSpeedBonusMph() ===
function CMG.getTruckingMaxSpeedBonusMph()
    local bonuses = {
        2,
        5,
        7,
        10,
        12,
        15,
        20
    }

    for level = 7, 1, -1 do
        if CMG.hasClientSkill(
            "trucking_max_speed_" ..
            level
        ) then
            return bonuses[level]
        end
    end

    return 0
end


-- === HELPER FUNCTION: CMG.getGarbageMaxSpeedBonusMph() ===
function CMG.getGarbageMaxSpeedBonusMph()
    local bonuses = {
        2,
        5,
        7,
        10,
        12,
        15,
        20
    }

    for level = 7, 1, -1 do
        if CMG.hasClientSkill(
            "garbage_max_speed_" ..
            level
        ) then
            return bonuses[level]
        end
    end

    return 0
end


-- Does this client have a specific unlocked perk anywhere?

-- === HELPER FUNCTION: CMG.hasClientSkill(skillId) ===
function CMG.hasClientSkill(skillId)
    if not skillId or skillId == "" then
        return false
    end

    for _, categoryData
        in pairs(playerSkills) do

        if categoryData.perksUnlocked
            and categoryData
                .perksUnlocked[skillId] then
            return true
        end
    end

    return false
end


-- ============================================================
-- SERVER DATA / XP EVENTS
-- ============================================================

-- Replace all client skill-tree runtime data.
RegisterNetEvent(
    "e298dff343",
    function(serverSkillData)
        playerSkills =
            serverSkillData or {}
    end
)

-- Apply XP to one category.
RegisterNetEvent(
    "9ec6bde351",
    function(
        categoryId,
        gainedXp,
        silent
    )
        applySkillXp(
            categoryId,
            gainedXp,
            silent
        )
    end
)


-- ============================================================
-- NUI CALLBACK: CLOSE
-- ============================================================

CMG.uiRegisterCallback(
    "skilltreeClose",
    function()
        toggleSkillTree()
    end
)


-- ============================================================
-- NUI CALLBACK: BUY A PERK
-- ============================================================

CMG.uiRegisterCallback(
    "skilltreeBuyNode",
    function(data, reply)
        local success,
              remainingPoints =
            CMG.TriggerServerCallback(
                "d25f6f2387",
                data.skillCategory,
                data.nodeId
            )

        if not success then
            if reply then
                reply({ok = false})
            end

            return
        end

        local categoryData =
            playerSkills[
                data.skillCategory
            ]

        if categoryData then
            categoryData.skillPoints =
                remainingPoints

            categoryData.perksUnlocked =
                categoryData.perksUnlocked
                or {}

            categoryData
                .perksUnlocked[
                    data.nodeId
                ] = true
        end

        CMG.uiSendMessage({
            action = "SKILLTREE_UPDATE_TREE",
            payload = {
                points = remainingPoints,
                nodes = {
                    {
                        id = data.nodeId,
                        unlocked = true
                    }
                }
            }
        })

        -- Hacking perks alter the hacking-phone capabilities.
        if type(data.nodeId) == "string"
            and data.nodeId:sub(1, 8)
                == "hacking_" then

            TriggerServerEvent(
                "CMG:hackingPhoneRequestCapabilities"
            )
        end

        if reply then
            reply({ok = true})
        end
    end
)


-- The UI can select a node locally without extra client work.
CMG.uiRegisterCallback(
    "skilltreeSelectNode",
    function(_, reply)
        if reply then
            reply({ok = true})
        end
    end
)


-- ============================================================
-- NUI CALLBACK: OPEN ONE CATEGORY'S TREE
-- ============================================================

CMG.uiRegisterCallback(
    "skilltreeSelectSkillCategory",
    function(data, reply)
        local categoryId =
            data and data.skillCategory

        if not categoryId then
            if reply then
                reply({
                    ok = false,
                    error =
                        "missing specialization"
                })
            end
            return
        end

        -- Find the category definition.
        local categoryDefinition = nil

        for _, category
            in pairs(
                skillTreeConfig.skillCategories
            ) do

            if category.id == categoryId then
                categoryDefinition =
                    category
                break
            end
        end

        if not categoryDefinition then
            if reply then
                reply({
                    ok = false,
                    error = "unknown category"
                })
            end
            return
        end

        local treeDefinition =
            skillTreeConfig.skillTrees
            and skillTreeConfig
                .skillTrees[categoryId]

        local nodes = {}
        local edges = {}
        local firstNodeId = nil

        local runtimeCategory =
            playerSkills[categoryId]

        local unlocked =
            runtimeCategory
            and runtimeCategory.perksUnlocked
            or {}

        local points =
            runtimeCategory
            and runtimeCategory.skillPoints
            or 0

        -- Convert config skills into the simpler object shape the NUI wants.
        for skillId, skill
            in pairs(
                skillTreeConfig.skills
                or {}
            ) do

            if skill.skillCategory
                == categoryId then

                local isUnlocked =
                    unlocked[skillId] == true

                if not firstNodeId then
                    firstNodeId =
                        skillId
                end

                table.insert(
                    nodes,
                    {
                        id = skillId,
                        title =
                            skill.name
                            or skillId,
                        desc =
                            skill.description,
                        cost =
                            skill.cost or 1,
                        unlocked =
                            isUnlocked,
                        icon =
                            skill.icon
                            or "bolt",
                        implemented =
                            skill.implemented
                            ~= false
                    }
                )
            end
        end

        table.sort(
            nodes,
            function(a, b)
                return a.id < b.id
            end
        )

        if treeDefinition
            and treeDefinition.edges then

            for _, edge
                in ipairs(
                    treeDefinition.edges
                ) do

                table.insert(
                    edges,
                    {
                        from = edge.from,
                        to = edge.to
                    }
                )
            end
        end

        CMG.uiSendMessage({
            action = "SKILLTREE_OPEN_TREE",
            payload = {
                skillType =
                    categoryDefinition
                        .skillType
                    or "civilian",

                skillCategory =
                    categoryId,

                skillCategoryTitle =
                    categoryDefinition.title
                    or categoryId,

                points = points,

                selectedNodeId =
                    firstNodeId,

                nodes = nodes,
                edges = edges
            }
        })

        if reply then
            reply({ok = true})
        end
    end
)
