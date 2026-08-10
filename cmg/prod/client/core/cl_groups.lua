--[[
    Client Groups / Permissions / Jobs
    ==================================

    The server sends two lookup tables to the client:
      clientGroups      = group/job names the player belongs to
      clientPermissions = permissions the player currently has

    Other client scripts then call helpers such as:
      CMG.hasClientGroup("Police")
      CMG.hasClientPermission("police.onduty.permission")
      CMG.getClientJob()
      CMG.getClientFaction()
      CMG.getClientJobGrade()
]]

local jobsConfig = CMG.loadModule("cfg/cfg_jobs")

local clientGroups = {}
local clientPermissions = {}

function CMG.hasClientGroup(groupName)
    return clientGroups[groupName] or false
end

function CMG.hasClientPermission(permissionName)
    return clientPermissions[permissionName] or false
end

-- Replace both lookup tables at once.
RegisterNetEvent("db10f68228", function(groups, permissions)
    clientGroups = groups
    clientPermissions = permissions

    -- Let other scripts know that group/permission data changed.
    TriggerEvent("b51e08118b")
end)

-- Add one group.
RegisterNetEvent("003eadf2da", function(groupName)
    clientGroups[groupName] = true
end)

-- Remove one group.
RegisterNetEvent("f1dae6cf3d", function(groupName)
    clientGroups[groupName] = nil
end)

-- Add several permissions at once.
RegisterNetEvent("9b5a446f85", function(permissions)
    for _, permissionName in pairs(permissions) do
        clientPermissions[permissionName] = true
    end

    TriggerEvent("b51e08118b")
end)

-- Remove several permissions at once.
RegisterNetEvent("989c4097ae", function(permissions)
    for _, permissionName in pairs(permissions) do
        clientPermissions[permissionName] = nil
    end

    TriggerEvent("b51e08118b")
end)

-- Finds the first client group whose cfg_jobs entry has the requested gtype.
-- Example: gtype "job" is used to work out the player's active job.
local function findGroupByType(groupType)
    for groupName in pairs(clientGroups) do
        local job = jobsConfig.jobs[groupName]
        local config = job and job._config

        if config and config.gtype == groupType then
            return groupName
        end
    end

    return nil
end

function CMG.getClientJob()
    return findGroupByType("job") or "Unemployed"
end

function CMG.getClientFaction()
    if CMG.hasClientPermission("police.onduty.permission") then
        return "Police"
    end

    if CMG.hasClientPermission("nhs.onduty.permission") then
        return "Health Service"
    end

    if CMG.hasClientPermission("prisonguard.onduty.permission") then
        return "HMP"
    end

    return nil
end

function CMG.getClientJobGrade()
    local jobName = CMG.getClientJob()

    if not jobName then
        return 0
    end

    local job = jobsConfig.jobs[jobName]

    if not job or not job._config then
        return 0
    end

    return job._config.grade or 0
end
