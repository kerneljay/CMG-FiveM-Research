--[[
    LEVEL 1 BEGINNER GUIDE — Gui
    =================================

    File: cmg/prod/client/gui.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared client GUI helpers.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: b9028016de
      * Server events sent: none found by static scan
      * NUI callbacks: request
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
    Legacy GUI / Request Bridge
    ===========================

    This file connects old tCMG GUI helpers to the browser NUI.

    tCMG.request(id, text, time)
      Shows an accept/reject request in NUI and plays a warning sound.

    NUI callback "request"
      Sends the player's accept/reject response back through
      CMGclient.requestResult.

    Other helpers:
      tCMG.announce(background, content)
      tCMG.setDiv(name, css, content)
      tCMG.setDivCss(name, css)
      tCMG.setDivContent(name, content)
      tCMG.divExecuteJS(name, js)
      tCMG.removeDiv(name)
      tCMG.isPaused()

    Event b9028016de is fired when GTA's pause-menu state changes.
]]

local ACCEPT_INPUT_GROUP = 1
local ACCEPT_CONTROL = 83

local REJECT_INPUT_GROUP = 1
local REJECT_CONTROL = 84

local paused = false


function tCMG.request(
    requestId,
    text,
    time
)
    local acceptKey =
        CMG.getLocalKeyNameFromButton(
            GetControlInstructionalButton(
                ACCEPT_INPUT_GROUP,
                ACCEPT_CONTROL,
                true
            )
        )

    local rejectKey =
        CMG.getLocalKeyNameFromButton(
            GetControlInstructionalButton(
                REJECT_INPUT_GROUP,
                REJECT_CONTROL,
                true
            )
        )

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "request",
        id = requestId,
        text = tostring(text),
        time = time,
        acceptKey = acceptKey,
        rejectKey = rejectKey
    })

    tCMG.playSound(
        "HUD_MINI_GAME_SOUNDSET",
        "5_SEC_WARNING"
    )
end


RegisterNUICallback(
    "request",
    function(data)
        if data.act == "response" then
            CMGclient.requestResult({
                data.id,
                data.ok
            })
        end
    end
)


function tCMG.announce(
    background,
    content
)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "announce",
        background = background,
        content = content
    })
end


function tCMG.setDiv(
    name,
    css,
    content
)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "set_div",
        name = name,
        css = css,
        content = content
    })
end


function tCMG.setDivCss(
    name,
    css
)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "set_div_css",
        name = name,
        css = css
    })
end


function tCMG.setDivContent(
    name,
    content
)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "set_div_content",
        name = name,
        content = content
    })
end


function tCMG.divExecuteJS(
    name,
    javascript
)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "div_execjs",
        name = name,
        js = javascript
    })
end


-- === HELPER FUNCTION: tCMG.removeDiv(name) ===
function tCMG.removeDiv(name)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        act = "remove_div",
        name = name
    })
end


-- === HELPER FUNCTION: tCMG.isPaused() ===
function tCMG.isPaused()
    return paused
end


-- === HELPER FUNCTION: guiKeyTick() ===
local function guiKeyTick()
    if IsDisabledControlJustPressed(
        ACCEPT_INPUT_GROUP,
        ACCEPT_CONTROL
    ) then

        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            act = "event",
            event = "requestAccept"
        })
    end

    if IsDisabledControlJustPressed(
        REJECT_INPUT_GROUP,
        REJECT_CONTROL
    ) then

        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            act = "event",
            event = "requestDeny"
        })
    end

    local pauseNow =
        IsPauseMenuActive()

    if pauseNow ~= paused then
        paused = pauseNow

        TriggerEvent(
            "b9028016de",
            paused
        )
    end
end


CMG.createThreadOnTick(
    guiKeyTick,
    "GUI Key Check"
)


AddEventHandler(
    "b9028016de",
    function(isPaused)
        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            act = "pause_change",
            paused = isPaused
        })
    end
)
