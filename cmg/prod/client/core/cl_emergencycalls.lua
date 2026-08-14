--[[
    LEVEL 1 BEGINNER GUIDE — Emergencycalls
    ============================================

    File: cmg/prod/client/core/cl_emergencycalls.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Emergencycalls feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
      * Background threads: 3
      * Always-running loops: 2
      * Commands: devfillcalls
      * Incoming network events: fbf6b45bc8, e1c61fbba4, 16fb6425b4, 1d88d0efdf
      * Local event handlers: 00e0b9aa86
      * Server events sent: 5aef5d0989, a6f59b89aa, e00697b79f
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
    Call Manager (cleaned/readable version)

    This file was reconstructed from a decompiled Lua script.
    The original used temporary names such as temporaryValue, temporaryValue2, etc.
    Those have been replaced with descriptive names and the decompiler's
    goto/label noise has been removed.

    IMPORTANT:
    - The hashed event names are intentionally unchanged because the server
      will still expect those exact event names.
    - The raw call table format is kept intact so this stays compatible with
      the original code.

    Raw call table layout:
      [1] = callerId
      [2] = callerName
      [3] = callerUserId
      [4] = coords
      [5] = callerMessage
      [6] = callType
      [7] = minutesPast
      [8] = priority
      [9] = simpleDispatchUi
]]

-- ---------------------------------------------------------------------------
-- State
-- ---------------------------------------------------------------------------

-- True while the normal emergency-call HUD should be hidden.
local emergencyCallUiHidden = false

-- True while the large Call Manager UI is open.
local callManagerOpen = false

-- Calls are stored as raw numbered tables because that is how the original
-- network data is represented.
local calls = {}

-- callerId -> vector3 location
local callCoords = {}

-- callerId -> responder list
local callResponders = {}

-- Current UI filter: "ALL", "STAFF" or "JOB".
local callMode = "ALL"

-- The call we most recently accepted.
local acceptedCallId = nil

-- Used when manually placing a call waypoint. When truthy, closing the Call
-- Manager clears that waypoint by moving it to the player's current position.
local clearWaypointOnClose = false

-- Last position/heading sent to the Call Manager UI.
local lastPlayerCoords = vector3(0.0, 0.0, 0.0)
local lastPlayerHeading = -1.0

-- Nearby emergency-service players shown on the Call Manager map.
local officers = {}

-- HUD components temporarily hidden while the Call Manager is open.
local hiddenHudDisplays = {
    "money",
    "streetnames"
}

-- Cached local server ID for the emergency-player position event.
local localServerId = nil

-- ---------------------------------------------------------------------------
-- Public state helpers
-- ---------------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.isEmergencyCallUIHidden() ===
function CMG.isEmergencyCallUIHidden()
    return emergencyCallUiHidden
end

-- === HELPER FUNCTION: CMG.isCallManagerOpen() ===
function CMG.isCallManagerOpen()
    return callManagerOpen
end

-- ---------------------------------------------------------------------------
-- Call storage helpers
-- ---------------------------------------------------------------------------

-- New calls are inserted at the front so the newest call appears first.

-- === HELPER FUNCTION: insertCall(rawCall) ===
local function insertCall(rawCall)
    table.insert(calls, 1, rawCall)
end

-- Find a call by caller ID.
-- Returns: index, rawCall

-- === HELPER FUNCTION: findCall(callerId) ===
local function findCall(callerId)
    for index, rawCall in pairs(calls) do
        if rawCall[1] == callerId then
            return index, rawCall
        end
    end

    return nil, nil
end

-- Admin calls sometimes hide the original player message and simply display
-- "Admin Ticket" instead. Other call types use the supplied message.

-- === HELPER FUNCTION: getDisplayMessage(callType, originalMessage, priority) ===
local function getDisplayMessage(callType, originalMessage, priority)
    if callType == "admin" then
        local canManageAdmins = CMG.hasClientPermission("admin.management")
        local isWhitelistedAdmin = CMG.hasClientPermission("sa.whitelisted")

        if not canManageAdmins and not isWhitelistedAdmin then
            priority = priority or 0

            if priority <= 0 then
                return "Admin Ticket"
            end
        end
    end

    return originalMessage or ""
end

-- Can this player see staff-ticket call types?

-- === HELPER FUNCTION: canSeeStaffCalls() ===
local function canSeeStaffCalls()
    return CMG.hasClientPermission("admin.tickets")
        or CMG.hasClientPermission("rp.tickets")
        or CMG.hasClientPermission("newplayer.tickets")
end

-- A player who asks for the STAFF filter but cannot view staff tickets is
-- silently moved onto the normal JOB filter instead.

-- === HELPER FUNCTION: normaliseCallMode(mode) ===
local function normaliseCallMode(mode)
    if mode == "STAFF" and not canSeeStaffCalls() then
        return "JOB"
    end

    return mode
end

-- Convert the compact/raw call table into an easy-to-use object for NUI.

-- === HELPER FUNCTION: callToUiObject(rawCall) ===
local function callToUiObject(rawCall)
    local coords = rawCall[4]

    return {
        callerId = rawCall[1],
        callerName = rawCall[2],
        callerUserId = rawCall[3],
        x = coords and coords.x or 0.0,
        y = coords and coords.y or 0.0,
        z = coords and coords.z or 0.0,
        callerMsg = getDisplayMessage(rawCall[6], rawCall[5], rawCall[8]),
        callType = rawCall[6],
        minutesPast = rawCall[7] or 0,
        priority = rawCall[8] or 0,
        simpleDispatchUi = rawCall[9] == true
    }
end

-- ---------------------------------------------------------------------------
-- NUI updates
-- ---------------------------------------------------------------------------

-- Send the entire current Call Manager state to the browser UI.

-- === HELPER FUNCTION: sendCallManagerState() ===
local function sendCallManagerState()
    local uiCalls = {}

    for index = 1, #calls do
        uiCalls[index] = callToUiObject(calls[index])
    end

    -- NUI object keys are strings, so convert caller IDs to strings here.
    local uiResponders = {}
    for callerId, responders in pairs(callResponders) do
        uiResponders[tostring(callerId)] = responders
    end

    local playerCoords = CMG.getPlayerCoords()
    local playerHeading = GetEntityHeading(PlayerPedId())

    CMG.uiSendMessage({
        action = "CALLMANAGER_STATE",
        payload = {
            isOpen = callManagerOpen,
            calls = uiCalls,
            responders = uiResponders,
            callMode = callMode,
            initialCallMode = callMode,
            isEmergencyService = CMG.isEmergencyService() == true,
            canSeeStaffCalls = canSeeStaffCalls(),
            localUserId = CMG.getClientUserId() or 0,
            playerCoords = {
                x = playerCoords.x,
                y = playerCoords.y,
                z = playerCoords.z
            },
            playerHeading = playerHeading,
            officers = officers
        }
    })

    lastPlayerCoords = playerCoords
    lastPlayerHeading = playerHeading
end

-- === HELPER FUNCTION: sendOfficersUpdate() ===
local function sendOfficersUpdate()
    CMG.uiSendMessage({
        action = "CALLMANAGER_OFFICERS_UPDATE",
        payload = {
            officers = officers
        }
    })
end

-- === HELPER FUNCTION: sendCallAdded(rawCall) ===
local function sendCallAdded(rawCall)
    CMG.uiSendMessage({
        action = "CALLMANAGER_CALL_ADD",
        payload = callToUiObject(rawCall)
    })
end

-- === HELPER FUNCTION: sendCallRemoved(callerId) ===
local function sendCallRemoved(callerId)
    CMG.uiSendMessage({
        action = "CALLMANAGER_CALL_REMOVE",
        payload = {
            callerId = callerId
        }
    })
end

-- === HELPER FUNCTION: sendRespondersUpdate(callerId) ===
local function sendRespondersUpdate(callerId)
    CMG.uiSendMessage({
        action = "CALLMANAGER_RESPONDERS_UPDATE",
        payload = {
            callerId = callerId,
            responders = callResponders[callerId] or {}
        }
    })
end

-- ---------------------------------------------------------------------------
-- Network events
-- ---------------------------------------------------------------------------

-- Receive a new dispatch/ticket call.
--
-- Parameters from the original event:
--   callerId, callerName, callerUserId, coords, message,
--   callType, minutesPast, priority, simpleDispatchUi

-- === NETWORK EVENT: receives "fbf6b45bc8" from server/another network source ===
RegisterNetEvent("fbf6b45bc8", function(
    callerId,
    callerName,
    callerUserId,
    coords,
    message,
    callType,
    minutesPast,
    priority,
    simpleDispatchUi
)
    simpleDispatchUi = simpleDispatchUi == true

    -- Only players belonging to the relevant service should receive a call.
    local allowed = false

    if callType == "admin" then
        if CMG.hasClientPermission("admin.tickets") then
            tCMG.notify("~b~Admin ticket received.")
            allowed = true
        end

    elseif callType == "met" then
        if CMG.hasClientPermission("police.onduty.permission") then
            tCMG.notify("~b~Police call received.")
            allowed = true
        end

    elseif callType == "nhs" then
        if CMG.hasClientPermission("nhs.onduty.permission") then
            tCMG.notify("~b~NHS call received.")
            allowed = true
        end

    elseif callType == "lfb" then
        if CMG.hasClientPermission("lfb.onduty.permission") then
            tCMG.notify("~b~LFB call received.")
            allowed = true
        end

    elseif callType == "hmp" then
        if CMG.hasClientPermission("prisonguard.onduty.permission") then
            tCMG.notify("~b~HMP call received.")
            allowed = true
        end

    elseif callType == "aa" then
        if CMG.hasClientPermission("aa.onduty.permission") then
            tCMG.notify("~b~Mechanic call received. (`) to open call manager!")
            allowed = true
        end

    elseif callType == "rp" then
        if CMG.hasClientPermission("admin.tickets")
            or CMG.hasClientPermission("rp.tickets") then
            tCMG.notify("~b~RP ticket received.")
            allowed = true
        end
    end

    if not allowed then
        return
    end

    PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false, false, true)

    local rawCall = {
        callerId,                 -- [1]
        callerName,               -- [2]
        callerUserId,             -- [3]
        coords,                   -- [4]
        message,                  -- [5]
        callType,                 -- [6]
        minutesPast,              -- [7]
        priority,                 -- [8]
        simpleDispatchUi          -- [9]
    }

    insertCall(rawCall)
    callCoords[callerId] = coords
    sendCallAdded(rawCall)
end)

-- Remove a call completely.

-- === NETWORK EVENT: receives "e1c61fbba4" from server/another network source ===
RegisterNetEvent("e1c61fbba4", function(callerId)
    local index = findCall(callerId)

    if index then
        table.remove(calls, index)
    end

    callCoords[callerId] = nil
    callResponders[callerId] = nil

    sendCallRemoved(callerId)
end)

-- The accepted call has ended/changed. The original code clears its route by
-- placing a waypoint on the player's own current position.

-- === NETWORK EVENT: receives "16fb6425b4" from server/another network source ===
RegisterNetEvent("16fb6425b4", function(callerId)
    if acceptedCallId ~= callerId then
        return
    end

    local playerCoords = CMG.getPlayerCoords()
    SetNewWaypoint(playerCoords.x, playerCoords.y)

    acceptedCallId = nil
end)

-- Server sends the latest list of responders for one call.

-- === NETWORK EVENT: receives "1d88d0efdf" from server/another network source ===
RegisterNetEvent("1d88d0efdf", function(callerId, responders)
    if type(responders) ~= "table" then
        responders = {}
    end

    callResponders[callerId] = responders
    sendRespondersUpdate(callerId)
end)

-- Update the nearby emergency-service players displayed inside the Call
-- Manager. The original event supplies compact player rows:
--   [1] serverId, [2] coords, [3] heading, [4] deadFlag,
--   [5] colour, [6] routingBucket

-- === EVENT HANDLER: runs when "00e0b9aa86" fires ===
AddEventHandler("00e0b9aa86", function(playerRows, _, category)
    if category ~= "emergency" or type(playerRows) ~= "table" then
        return
    end

    if not localServerId then
        localServerId = GetPlayerServerId(PlayerId())
    end

    local localBucket = CMG.getPlayerBucket()
    local newOfficers = {}

    for _, row in ipairs(playerRows) do
        local serverId = row[1]
        local coords = row[2]
        local heading = row[3]
        local deadFlag = row[4]
        local colour = row[5]
        local bucket = row[6]

        if serverId and coords
            and serverId ~= localServerId
            and bucket == localBucket then
            newOfficers[#newOfficers + 1] = {
                serverId = serverId,
                x = coords.x,
                y = coords.y,
                z = coords.z,
                heading = heading or 0.0,
                colour = colour or 3,
                dead = deadFlag == 1
            }
        end
    end

    officers = newOfficers

    if callManagerOpen then
        sendOfficersUpdate()
    end
end)

-- ---------------------------------------------------------------------------
-- Call actions
-- ---------------------------------------------------------------------------

-- NHS calls also get a temporary map blip for 5 minutes when accepted.

-- === HELPER FUNCTION: addTemporaryNhsBlip(callType, coords) ===
local function addTemporaryNhsBlip(callType, coords)
    if callType ~= "nhs" or not coords then
        return
    end

    local blip = tCMG.addBlip(
        coords.x,
        coords.y,
        coords.z,
        480,
        2,
        nil,
        1.0,
        false
    )

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        Citizen.Wait(300000) -- 5 minutes
        tCMG.removeBlip(blip)
    end)
end

-- Does the local player have any permission that gives access to the Call
-- Manager at all?

-- === HELPER FUNCTION: canUseCallManager() ===
local function canUseCallManager()
    return CMG.hasClientPermission("newplayer.tickets")
        or CMG.hasClientPermission("rp.tickets")
        or CMG.hasClientPermission("admin.tickets")
        or CMG.hasClientPermission("police.onduty.permission")
        or CMG.hasClientPermission("nhs.onduty.permission")
        or CMG.hasClientPermission("lfb.onduty.permission")
        or CMG.hasClientPermission("prisonguard.onduty.permission")
        or CMG.hasClientPermission("aa.onduty.permission")
end

-- === HELPER FUNCTION: showHiddenHudDisplays() ===
local function showHiddenHudDisplays()
    for _, displayName in pairs(hiddenHudDisplays) do
        CMG.showDisplay(displayName, "callmanager")
    end

    CMG.setHudCallManagerNotificationsOnlyMode(false)
end

-- === HELPER FUNCTION: hideHudDisplaysForCallManager() ===
local function hideHudDisplaysForCallManager()
    for _, displayName in pairs(hiddenHudDisplays) do
        CMG.hideDisplay(displayName, "callmanager")
    end

    CMG.setHudCallManagerNotificationsOnlyMode(true)
end

-- Open the Call Manager UI.

-- === HELPER FUNCTION: openCallManager(initialMode) ===
local function openCallManager(initialMode)
    if callManagerOpen or not canUseCallManager() then
        return
    end

    callManagerOpen = true
    emergencyCallUiHidden = true

    local emergencyService = CMG.isEmergencyService()

    if emergencyService
        and (initialMode == "STAFF" or initialMode == "JOB" or initialMode == "ALL") then
        callMode = normaliseCallMode(initialMode)
    elseif not emergencyService then
        callMode = "ALL"
    end

    hideHudDisplaysForCallManager()
    sendCallManagerState()

    CMG.uiSendMessage({
        action = "CALLMANAGER_SET_OPEN",
        payload = {
            isOpen = true
        }
    })

    CMG.uiSetFocus(true, true, true)

    -- Tell the server the Call Manager was opened.
    -- Beginner: sends the "5aef5d0989" event to the server.
    TriggerServerEvent("5aef5d0989")
end

-- Close the Call Manager UI.

-- === HELPER FUNCTION: closeCallManager() ===
local function closeCallManager()
    if not callManagerOpen then
        return
    end

    callManagerOpen = false
    emergencyCallUiHidden = false

    showHiddenHudDisplays()

    CMG.uiSendMessage({
        action = "CALLMANAGER_SET_OPEN",
        payload = {
            isOpen = false
        }
    })

    CMG.uiSetFocus(false, false, false)

    -- The original script clears a manually-created call waypoint when the UI
    -- closes by setting a waypoint to the player's own current location.
    if clearWaypointOnClose then
        local playerCoords = CMG.getPlayerCoords()
        SetNewWaypoint(playerCoords.x, playerCoords.y)
        clearWaypointOnClose = false
    end
end

-- Other job menus can call this helper directly.

-- === HELPER FUNCTION: CMG.openCallManagerFromJobMenu() ===
function CMG.openCallManagerFromJobMenu()
    openCallManager("JOB")
end

-- Accept a call and route the player to it.

-- === HELPER FUNCTION: acceptCall(callerId) ===
local function acceptCall(callerId)
    if not callerId then
        return
    end

    local _, rawCall = findCall(callerId)
    if not rawCall then
        return
    end

    local callType = rawCall[6]
    local coords = callCoords[callerId]

    -- Tell the server that this call has been accepted.
    -- Beginner: sends the "a6f59b89aa" event to the server.
    TriggerServerEvent("a6f59b89aa", callerId)

    acceptedCallId = callerId
    addTemporaryNhsBlip(callType, coords)

    if coords then
        clearWaypointOnClose = false
        SetNewWaypoint(coords.x, coords.y)
    end

    closeCallManager()
end

-- "Deny" in the NUI means remove the call locally. Admin/RP tickets are not
-- removable here in the original script, so those are ignored.

-- === HELPER FUNCTION: denyCall(callerId) ===
local function denyCall(callerId)
    local index, rawCall = findCall(callerId)
    if not rawCall then
        return
    end

    local callType = rawCall[6]
    if callType == "admin" or callType == "rp" then
        return
    end

    if index then
        table.remove(calls, index)
    end

    callCoords[callerId] = nil
    callResponders[callerId] = nil
    sendCallRemoved(callerId)
end

-- Place a GPS waypoint on a call without accepting it.

-- === HELPER FUNCTION: setCallWaypoint(callerId) ===
local function setCallWaypoint(callerId)
    local coords = callCoords[callerId]
    if not coords then
        return
    end

    local _, rawCall = findCall(callerId)
    local callType = rawCall and rawCall[6] or nil

    -- The decompiled expression was:
    --     (callType == "nhs") or callType
    -- which is truthy for every normal non-nil call type.
    clearWaypointOnClose = (callType == "nhs") or callType

    SetNewWaypoint(coords.x, coords.y)
end

-- ---------------------------------------------------------------------------
-- NUI callbacks
-- ---------------------------------------------------------------------------

CMG.uiRegisterCallback("callmanagerClose", function()
    closeCallManager()
    return { ok = true }
end)

CMG.uiRegisterCallback("callmanagerAccept", function(data)
    local callerId = data and data.callerId or nil

    if type(callerId) == "number" then
        acceptCall(callerId)
    end

    return { ok = true }
end)

CMG.uiRegisterCallback("callmanagerDeny", function(data)
    local callerId = data and data.callerId or nil

    if type(callerId) == "number" then
        denyCall(callerId)
    end

    return { ok = true }
end)

CMG.uiRegisterCallback("callmanagerWaypoint", function(data)
    local callerId = data and data.callerId or nil

    if type(callerId) == "number" then
        setCallWaypoint(callerId)
    end

    return { ok = true }
end)

CMG.uiRegisterCallback("callmanagerSetFilter", function(data)
    local requestedMode = data and data.callMode or nil

    if requestedMode == "ALL"
        or requestedMode == "STAFF"
        or requestedMode == "JOB" then
        callMode = normaliseCallMode(requestedMode)
    end

    return { ok = true }
end)

CMG.uiRegisterCallback("callmanagerRespond", function(data)
    local callerId = data and data.callerId or nil

    if type(callerId) ~= "number" then
        return { ok = false }
    end

    local isResponding = data.isResponding == true

    -- Tell the server whether this player is responding to the call.
    -- Beginner: sends the "e00697b79f" event to the server.
    TriggerServerEvent("e00697b79f", callerId, isResponding)

    if isResponding then
        setCallWaypoint(callerId)
    end

    return { ok = true }
end)

-- ---------------------------------------------------------------------------
-- Controls / key handling
-- ---------------------------------------------------------------------------

-- Prevent normal game camera/weapon controls from fighting with the NUI while
-- the Call Manager has focus.

-- === HELPER FUNCTION: disableControlsWhileOpen() ===
local function disableControlsWhileOpen()
    DisableControlAction(0, 1, true)
    DisableControlAction(0, 2, true)
    DisableControlAction(0, 106, true)

    DisableControlAction(1, 1, true)
    DisableControlAction(1, 2, true)
    DisableControlAction(1, 106, true)

    DisableControlAction(0, 12, true)
    DisableControlAction(0, 13, true)
    DisableControlAction(0, 14, true)
    DisableControlAction(0, 15, true)
    DisableControlAction(0, 16, true)
    DisableControlAction(0, 17, true)
    DisableControlAction(0, 37, true)
end

-- === HELPER FUNCTION: callManagerTick() ===
local function callManagerTick()
    if not canUseCallManager() then
        return
    end

    if callManagerOpen then
        disableControlsWhileOpen()

        -- Control 200 = pause/back (normally Escape).
        local closePressed = IsControlJustReleased(0, 200)
            or IsDisabledControlJustReleased(0, 200)

        if closePressed then
            closeCallManager()
        end

        return
    end

    -- Control 243 is the ` / ~ key in GTA/FiveM.
    local openPressed = IsControlJustPressed(0, 243)
        or IsDisabledControlJustPressed(0, 243)

    if openPressed then
        openCallManager()
    end
end

CMG.createThreadOnTick(callManagerTick, "Call Manager")

-- ---------------------------------------------------------------------------
-- Background updates
-- ---------------------------------------------------------------------------

-- While the UI is open, update the player's position/heading on its map.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        if callManagerOpen then
            local playerCoords = CMG.getPlayerCoords()
            local playerHeading = GetEntityHeading(PlayerPedId())

            local dx = playerCoords.x - lastPlayerCoords.x
            local dy = playerCoords.y - lastPlayerCoords.y
            local dz = playerCoords.z - lastPlayerCoords.z

            local movedMoreThanOneMetre = (dx * dx + dy * dy + dz * dz) > 1.0
            local turnedMoreThanTwoDegrees = math.abs(
                (playerHeading or 0.0) - (lastPlayerHeading or 0.0)
            ) > 2.0

            if movedMoreThanOneMetre or turnedMoreThanTwoDegrees then
                lastPlayerCoords = playerCoords
                lastPlayerHeading = playerHeading

                CMG.uiSendMessage({
                    action = "CALLMANAGER_PLAYER_COORDS",
                    payload = {
                        x = playerCoords.x,
                        y = playerCoords.y,
                        z = playerCoords.z,
                        heading = playerHeading
                    }
                })
            end

            Wait(500)
        else
            Wait(1500)
        end
    end
end)

-- Every minute, increase each call's "minutesPast" counter.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        local minuteUpdates = {}
        local changed = false

        for _, rawCall in pairs(calls) do
            rawCall[7] = (rawCall[7] or 0) + 1
            minuteUpdates[tostring(rawCall[1])] = rawCall[7]
            changed = true
        end

        if changed and callManagerOpen then
            CMG.uiSendMessage({
                action = "CALLMANAGER_TICK_MINUTES",
                payload = {
                    updates = minuteUpdates
                }
            })
        end

        Wait(60000)
    end
end)

-- ---------------------------------------------------------------------------
-- Developer test data
-- ---------------------------------------------------------------------------

local devTestCalls = {
    {
        callerName = "John Smith",
        callerMsg = "Shots fired near Legion Square",
        callType = "met",
        minutesPast = 18,
        priority = 2,
        offset = { x = 120.0, y = 80.0 }
    },
    {
        callerName = "Jane Doe",
        callerMsg = "Unconscious civilian, need ambulance",
        callType = "nhs",
        minutesPast = 7,
        priority = 1,
        offset = { x = -90.0, y = 140.0 }
    },
    {
        callerName = "Admin Ticket",
        callerMsg = "Player stuck under map",
        callType = "admin",
        minutesPast = 32,
        priority = 0,
        offset = { x = 40.0, y = -110.0 }
    },
    {
        callerName = "RP Ticket",
        callerMsg = "Rule break report at MRPD",
        callType = "rp",
        minutesPast = 4,
        priority = 0,
        offset = { x = -160.0, y = -40.0 }
    },
    {
        callerName = "Broken Down",
        callerMsg = "/mechanic Engine failure on Del Perro Fwy",
        callType = "aa",
        minutesPast = 11,
        priority = 0,
        offset = { x = 210.0, y = -70.0 }
    },
    {
        callerName = "Structure Fire",
        callerMsg = "Smoke visible from apartment block",
        callType = "lfb",
        minutesPast = 2,
        priority = 2,
        offset = { x = -30.0, y = 190.0 }
    },
    {
        callerName = "Prison Incident",
        callerMsg = "Fight in yard, officers needed",
        callType = "hmp",
        minutesPast = 25,
        priority = 1,
        offset = { x = 75.0, y = -180.0 }
    },
    {
        callerName = "Dispatch",
        callerMsg = "Vehicle pursuit heading north",
        callType = "met",
        minutesPast = 0,
        priority = 3,
        offset = { x = 0.0, y = 220.0 },
        simpleDispatchUi = true
    }
}

-- === HELPER FUNCTION: clearDevCalls() ===
local function clearDevCalls()
    -- Walk backwards because items are being removed from the table.
    for index = #calls, 1, -1 do
        local callerId = calls[index][1]

        callCoords[callerId] = nil
        callResponders[callerId] = nil
        table.remove(calls, index)
    end

    sendCallManagerState()
end

-- === HELPER FUNCTION: addDevCall(callerId, data, coords) ===
local function addDevCall(callerId, data, coords)
    local rawCall = {
        callerId,
        data.callerName,
        90000 + callerId,
        coords,
        data.callerMsg,
        data.callType,
        data.minutesPast or 0,
        data.priority or 0,
        data.simpleDispatchUi == true
    }

    insertCall(rawCall)
    callCoords[callerId] = coords

    if data.responders then
        callResponders[callerId] = data.responders
    end

    sendCallAdded(rawCall)

    if data.responders then
        sendRespondersUpdate(callerId)
    end
end

-- === COMMAND /devfillcalls: runs when that command is entered ===
RegisterCommand("devfillcalls", function(_, args)
    local userId = CMG.getClientUserId()

    if not userId or not CMG.isDeveloper(userId) then
        tCMG.notify("~r~Developer only.")
        return
    end

    local subCommand = args[1] and string.lower(args[1]) or nil

    if subCommand == "clear" then
        clearDevCalls()
        tCMG.notify("~g~Call manager dev data cleared.")
        return
    end

    clearDevCalls()

    local playerCoords = CMG.getPlayerCoords()
    local baseId = math.floor(GetGameTimer())

    for index, data in ipairs(devTestCalls) do
        local offset = data.offset or { x = 0.0, y = 0.0 }
        local coords = vector3(
            playerCoords.x + offset.x,
            playerCoords.y + offset.y,
            playerCoords.z
        )

        local callerId = baseId + index
        addDevCall(callerId, data, coords)
    end

    -- Add some fake responders to the second test call.
    local responderCallId = baseId + 2
    callResponders[responderCallId] = {
        {
            userId = userId,
            name = "You (dev)"
        },
        {
            userId = 12345,
            name = "Officer Dev"
        }
    }

    sendRespondersUpdate(responderCallId)

    tCMG.notify("~g~Call manager filled with dev test calls. Press ` to open.")
end, false)
