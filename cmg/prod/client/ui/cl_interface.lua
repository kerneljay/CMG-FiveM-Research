--[[
    CMGUI Focus / NUI Callback Bridge
    ==================================

    This file is the shared bridge between CMG Lua and the browser UI resource
    named "cmgui".

    Main jobs:
      * track whether CMG currently wants NUI focus
      * track focus requested by OTHER resources
      * merge those requests into one effective focus state
      * register browser callbacks, retrying while cmgui is still starting
      * forward controller D-pad / A / B input to the browser UI
      * provide CMG.uiSendMessage(...)
      * provide CMG.uiRegisterCallback(...)
      * provide CMG.awaitInterfaceLoaded()

    Beginner terms:
      NUI
        FiveM's HTML/JavaScript browser interface.

      focus
        Whether keyboard/mouse/controller input is being captured by NUI.

      cursor
        Whether the browser mouse cursor should be visible.

    Important compatibility detail:
      The original resource patches the GLOBAL SetNuiFocus function. Whenever
      CMG itself calls SetNuiFocus, that patched function updates this manager's
      resource-focus table and then reapplies the effective focus.

    No invented "cmgui loaded" event is used here. The original code simply
    retries callback registration while the cmgui resource is starting.
]]

local requestedFocus = false
local cursorEnabled = false
local disableControlsWhileFocused = false

-- True while a controller is being used instead of keyboard/mouse.
local controllerMode = false

-- Special mode enabled by the server tunable "cmgui_focus".
local forcedFocusMode = false

-- resourceFocus[resourceName] = true when another resource asked for NUI focus.
local resourceFocus = {}

-- Temporarily suppresses effective focus, used while GTA's keyboard prompt is
-- open so the browser does not steal input.
local temporaryFocusDisabled = false


-- ============================================================
-- CALLBACK REGISTRATION STATE
-- ============================================================

-- Each entry:
--   {
--       [1] = callback name,
--       [2] = Lua function,
--       [3] = true after cmgui accepted the registration
--   }
local pendingCallbacks = {}

local callbackRetryThreadRunning = false


-- ============================================================
-- SAFE CMGUI MESSAGE
-- ============================================================

function CMG.uiSendMessage(message)
    if GetResourceState("cmgui") ~= "started" then
        return
    end

    exports["cmgui"]:sendMessage(
        message
    )
end


-- ============================================================
-- TRY TO REGISTER ANY UNREGISTERED CALLBACKS
-- ============================================================

local function tryRegisterCallbacks()
    if GetResourceState("cmgui") ~= "started" then
        return false
    end

    local allRegistered = true

    for _, entry
        in ipairs(pendingCallbacks) do

        if not entry[3] then
            local callbackName =
                entry[1]

            local callback =
                entry[2]

            local success =
                pcall(
                    function()
                        exports["cmgui"]:registerCallback(
                            callbackName,
                            callback
                        )
                    end
                )

            if success then
                entry[3] = true
            else
                allRegistered = false
            end
        end
    end

    return allRegistered
end


-- The original retries for at most 400 frames. That covers the case where
-- another file registers UI callbacks before the cmgui resource is fully ready.
local function startCallbackRetryThread()
    if callbackRetryThreadRunning then
        return
    end

    callbackRetryThreadRunning = true

    CreateThread(function()
        for _ = 1, 400 do
            if GetResourceState("cmgui") == "started" then
                if tryRegisterCallbacks() then
                    break
                end
            end

            Wait(0)
        end

        callbackRetryThreadRunning =
            false
    end)
end


-- ============================================================
-- EFFECTIVE FOCUS
-- ============================================================

local function applyEffectiveFocus()
    local hasExternalFocus =
        table.count(resourceFocus) > 0

    local effectiveFocus =
        hasExternalFocus
        or requestedFocus

    if temporaryFocusDisabled then
        effectiveFocus = false
    end

    -- The original uses CreateThreadNow so focus is applied outside the caller
    -- without waiting for another normal frame.
    Citizen.CreateThreadNow(function()
        if GetResourceState("cmgui") ~= "started" then
            return
        end

        pcall(
            function()
                exports["cmgui"]:setFocus(
                    effectiveFocus,

                    effectiveFocus
                        and cursorEnabled
                        or false,

                    effectiveFocus
                        and disableControlsWhileFocused
                        or false
                )
            end
        )
    end)
end


function CMG.uiSetFocus(
    focus,
    cursor,
    disableControls
)
    -- Original behaviour: uiSetFocus does nothing until cmgui is started.
    if GetResourceState("cmgui") ~= "started" then
        return
    end

    -- Optional tunable: asking to unfocus can instead leave browser focus
    -- alive in a special controller-friendly mode.
    if not focus
        and CMG.getTunableValue(
            "cmgui_focus"
        ) then

        focus = true
        disableControls = true
        forcedFocusMode = true
    else
        forcedFocusMode = false
    end

    requestedFocus =
        focus == true

    cursorEnabled =
        cursor == true

    disableControlsWhileFocused =
        disableControls == true

    applyEffectiveFocus()

    -- Force controller-mode detection to run fresh after a focus change.
    controllerMode = false
end


-- ============================================================
-- REGISTER A UI CALLBACK
-- ============================================================

function CMG.uiRegisterCallback(
    callbackName,
    callback
)
    assert(
        type(callbackName) == "string",
        "UI callback name must be a string"
    )

    assert(
        type(callback) == "function",
        "UI callback must be a function"
    )

    Citizen.CreateThreadNow(function()
        table.insert(
            pendingCallbacks,
            {
                callbackName,
                callback,
                false
            }
        )

        startCallbackRetryThread()
    end)
end


-- ============================================================
-- RESOURCE START / STOP
-- ============================================================

AddEventHandler(
    "onClientResourceStart",
    function(resourceName)
        if resourceName == "cmgui" then
            Wait(0)

            startCallbackRetryThread()

            CMG.uiSetFocus(
                false,
                false,
                false
            )

        elseif resourceName
            == GetCurrentResourceName() then

            Wait(0)

            startCallbackRetryThread()
        end
    end
)


AddEventHandler(
    "onClientResourceStop",
    function(resourceName)
        if resourceName ~= "cmgui" then
            return
        end

        -- cmgui forgot all callbacks because it stopped. Mark every local
        -- callback as needing registration again next time it starts.
        for _, entry
            in ipairs(pendingCallbacks) do

            entry[3] = false
        end
    end
)


function CMG.awaitInterfaceLoaded()
    while GetResourceState("cmgui")
        ~= "started" do

        startCallbackRetryThread()

        Wait(0)
    end

    startCallbackRetryThread()
end


-- ============================================================
-- OTHER RESOURCES REQUESTING NUI FOCUS
-- ============================================================

RegisterNetEvent(
    "CMG:resourceFocusUpdated"
)

AddEventHandler(
    "CMG:resourceFocusUpdated",
    function(hasFocus)
        local invokingResource =
            GetInvokingResource()

        if not invokingResource then
            return
        end

        if hasFocus then
            resourceFocus[
                invokingResource
            ] = true
        else
            resourceFocus[
                invokingResource
            ] = nil
        end

        applyEffectiveFocus()
    end
)


-- ============================================================
-- PATCH GLOBAL SetNuiFocus
-- ============================================================

-- CMG.patchFunction(name, originalFunction, wrapper)
-- gives the wrapper the original function as its first argument.
CMG.patchFunction(
    "SetNuiFocus",
    SetNuiFocus,

    function(
        originalSetNuiFocus,
        focus,
        cursor
    )
        originalSetNuiFocus(
            focus,
            cursor
        )

        -- The patched global belongs to the CMG resource itself.
        resourceFocus.cmg =
            focus
            and true
            or nil

        applyEffectiveFocus()
    end
)


-- ============================================================
-- TEMPORARILY SUPPRESS FOCUS
-- ============================================================

function CMG.toggleTemporaryFocusDisable()
    temporaryFocusDisabled =
        not temporaryFocusDisabled

    CMG.debugLog(
        "Temporary UI focus disable:",
        temporaryFocusDisabled
    )

    applyEffectiveFocus()
end


-- ============================================================
-- CONTROLLER INPUT FOR NUI
-- ============================================================

local controllerInputs = {
    {
        control = 188,
        inputName = "up"
    },
    {
        control = 190,
        inputName = "right"
    },
    {
        control = 187,
        inputName = "down"
    },
    {
        control = 189,
        inputName = "left"
    },
    {
        control = 201,
        inputName = "accept"
    },
    {
        control = 202,
        inputName = "cancel"
    }
}


local function controllerUiTick()
    if not requestedFocus then
        return
    end

    local usingKeyboard =
        CMG.isUsingKeyboard(0)

    if usingKeyboard
        and controllerMode then

        controllerMode = false

        CMG.uiSendMessage({
            type =
                "controllerToggle",
            enabled =
                false
        })

    elseif not usingKeyboard
        and not controllerMode then

        controllerMode = true

        CMG.uiSendMessage({
            type =
                "controllerToggle",
            enabled =
                true
        })
    end

    if not controllerMode
        or forcedFocusMode then
        return
    end

    -- When the caller did NOT already request all gameplay controls disabled,
    -- the original code disables them itself while controller-NUI navigation
    -- is active.
    if not disableControlsWhileFocused then
        DisableAllControlActions(0)
    end

    for _, input
        in ipairs(controllerInputs) do

        if IsDisabledControlJustPressed(
            0,
            input.control
        ) then

            CMG.uiSendMessage({
                type =
                    "controllerInput",

                input =
                    input.inputName
            })
        end
    end
end


CMG.createThreadOnTick(
    controllerUiTick,
    "CMG UI Controller"
)
