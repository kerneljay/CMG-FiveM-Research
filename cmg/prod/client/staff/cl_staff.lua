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

function CMG.isStaffedOnClient()
    return staffState.staffedOn
end

function CMG.isDeveloperClient()
    return staffState.developer
end

function CMG.isStaffClient()
    return staffState.staff
end

function CMG.isAdminClient()
    return staffState.admin
end

function CMG.isSeniorAdminClient()
    return staffState.seniorAdmin
end

function CMG.isHeadAdminClient()
    return staffState.headAdmin
end

function CMG.isManagementClient()
    return staffState.management
end

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
