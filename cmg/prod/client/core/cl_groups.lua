--[[
    LEVEL 1 BEGINNER GUIDE — Groups
    ====================================

    File: cmg/prod/client/core/cl_groups.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Groups feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: db10f68228, 003eadf2da, f1dae6cf3d, 9b5a446f85, 989c4097ae
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_jobs

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

-- === HELPER FUNCTION: CMG.hasClientGroup(groupName) ===
function CMG.hasClientGroup(groupName)
    return clientGroups[groupName] or false
end

-- === HELPER FUNCTION: CMG.hasClientPermission(permissionName) ===
function CMG.hasClientPermission(permissionName)
    return clientPermissions[permissionName] or false
end

-- Replace both lookup tables at once.

-- === NETWORK EVENT: receives "db10f68228" from server/another network source ===
RegisterNetEvent("db10f68228", function(groups, permissions)
    clientGroups = groups
    clientPermissions = permissions

    -- Let other scripts know that group/permission data changed.
    TriggerEvent("b51e08118b")
end)

-- Add one group.

-- === NETWORK EVENT: receives "003eadf2da" from server/another network source ===
RegisterNetEvent("003eadf2da", function(groupName)
    clientGroups[groupName] = true
end)

-- Remove one group.

-- === NETWORK EVENT: receives "f1dae6cf3d" from server/another network source ===
RegisterNetEvent("f1dae6cf3d", function(groupName)
    clientGroups[groupName] = nil
end)

-- Add several permissions at once.

-- === NETWORK EVENT: receives "9b5a446f85" from server/another network source ===
RegisterNetEvent("9b5a446f85", function(permissions)
    for _, permissionName in pairs(permissions) do
        clientPermissions[permissionName] = true
    end

    TriggerEvent("b51e08118b")
end)

-- Remove several permissions at once.

-- === NETWORK EVENT: receives "989c4097ae" from server/another network source ===
RegisterNetEvent("989c4097ae", function(permissions)
    for _, permissionName in pairs(permissions) do
        clientPermissions[permissionName] = nil
    end

    TriggerEvent("b51e08118b")
end)

-- Finds the first client group whose cfg_jobs entry has the requested gtype.
-- Example: gtype "job" is used to work out the player's active job.

-- === HELPER FUNCTION: findGroupByType(groupType) ===
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

-- === HELPER FUNCTION: CMG.getClientJob() ===
function CMG.getClientJob()
    return findGroupByType("job") or "Unemployed"
end

-- === HELPER FUNCTION: CMG.getClientFaction() ===
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

-- === HELPER FUNCTION: CMG.getClientJobGrade() ===
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
