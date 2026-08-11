--[[
    LEVEL 1 BEGINNER GUIDE — Staff
    ===================================

    File: cmg/prod/client/staff/cl_staff.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Staff feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 11
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: onResourceStop
      * Server events sent: 7c24fb009f
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
    Client Staff State + Developer Delete Gun
    =========================================

    Server events update this client's staff/developer state:
      64353bb02f(isStaffedOn)
      f6e26d1fda(isDeveloper)
      b9124a9fdb(isStaff)
      a9fc319e2d(isAdmin)
      c822c4495a(isSeniorAdmin)
      7065357e4b(isHeadAdmin)
      2082b4ff11(isManagement)
      f6656a0625(isFounder)

    Public getters:
      CMG.isStaffedOnClient()
      CMG.isDeveloperClient()
      CMG.isStaffClient()
      CMG.isAdminClient()
      CMG.isSeniorAdminClient()
      CMG.isHeadAdminClient()
      CMG.isManagementClient()
      CMG.isFounderClient()

    Staff delete gun:
      * only active while staffed-on
      * Delete key toggles delete-gun mode
      * while active, the entity being aimed at gets a red outline
      * left click asks the server to delete the targeted network entity

    Hash-looking events are deliberately unchanged.
]]

local staffState = {
    staffedOn = false,
    developer = false,
    staff = false,
    admin = false,
    seniorAdmin = false,
    headAdmin = false,
    management = false,
    founder = false
}


-- ============================================================
-- STATE GETTERS
-- ============================================================

-- === HELPER FUNCTION: CMG.isStaffedOnClient() ===
function CMG.isStaffedOnClient()
    return staffState.staffedOn
end

-- === HELPER FUNCTION: CMG.isDeveloperClient() ===
function CMG.isDeveloperClient()
    return staffState.developer
end

-- === HELPER FUNCTION: CMG.isStaffClient() ===
function CMG.isStaffClient()
    return staffState.staff
end

-- === HELPER FUNCTION: CMG.isAdminClient() ===
function CMG.isAdminClient()
    return staffState.admin
end

-- === HELPER FUNCTION: CMG.isSeniorAdminClient() ===
function CMG.isSeniorAdminClient()
    return staffState.seniorAdmin
end

-- === HELPER FUNCTION: CMG.isHeadAdminClient() ===
function CMG.isHeadAdminClient()
    return staffState.headAdmin
end

-- === HELPER FUNCTION: CMG.isManagementClient() ===
function CMG.isManagementClient()
    return staffState.management
end

-- === HELPER FUNCTION: CMG.isFounderClient() ===
function CMG.isFounderClient()
    return staffState.founder
end


-- ============================================================
-- SERVER STATE EVENTS
-- ============================================================

local stateEvents = {
    ["64353bb02f"] = "staffedOn",
    ["f6e26d1fda"] = "developer",
    ["b9124a9fdb"] = "staff",
    ["a9fc319e2d"] = "admin",
    ["c822c4495a"] = "seniorAdmin",
    ["7065357e4b"] = "headAdmin",
    ["2082b4ff11"] = "management",
    ["f6656a0625"] = "founder"
}

for eventName, fieldName
    in pairs(stateEvents) do

    RegisterNetEvent(
        eventName,
        function(value)
            staffState[fieldName] =
                value == true
        end
    )
end


-- ============================================================
-- DELETE GUN
-- ============================================================

local deleteGunEnabled = false
local outlinedEntity = 0


-- === HELPER FUNCTION: clearDeleteGunOutline() ===
local function clearDeleteGunOutline()
    if outlinedEntity ~= 0
        and DoesEntityExist(
            outlinedEntity
        ) then

        SetEntityDrawOutline(
            outlinedEntity,
            false
        )
    end

    outlinedEntity = 0
end


-- === HELPER FUNCTION: getAimedEntity() ===
local function getAimedEntity()
    local aiming, entity =
        GetEntityPlayerIsFreeAimingAt(
            PlayerId()
        )

    if aiming
        and entity
        and entity ~= 0 then
        return entity
    end

    return 0
end


-- === HELPER FUNCTION: deleteGunTick() ===
local function deleteGunTick()
    if not staffState.staffedOn then
        if deleteGunEnabled then
            deleteGunEnabled = false
            clearDeleteGunOutline()
        end
        return
    end

    -- INPUT_FRONTEND_DELETE / Delete.
    if IsControlJustPressed(
        0,
        214
    ) then
        deleteGunEnabled =
            not deleteGunEnabled

        if not deleteGunEnabled then
            clearDeleteGunOutline()

            notify(
                "~r~Delete gun disabled"
            )
        else
            notify(
                "~g~Delete gun enabled"
            )
        end
    end

    if not deleteGunEnabled then
        return
    end

    DisableControlAction(
        0,
        24,
        true
    )

    local entity =
        getAimedEntity()

    if entity ~= outlinedEntity then
        clearDeleteGunOutline()

        if entity ~= 0 then
            outlinedEntity = entity

            SetEntityDrawOutlineColor(
                255,
                0,
                0,
                255
            )

            SetEntityDrawOutline(
                entity,
                true
            )
        end
    end

    if entity ~= 0
        and IsDisabledControlJustPressed(
            0,
            24
        ) then

        local networkId =
            NetworkGetNetworkIdFromEntity(
                entity
            )

        if networkId ~= 0 then
            TriggerServerEvent(
                "7c24fb009f",
                networkId
            )
        end
    end
end


CMG.createThreadOnTick(
    deleteGunTick,
    "Staff Delete Gun"
)


AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName
            == GetCurrentResourceName() then

            clearDeleteGunOutline()
        end
    end
)
