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
    SendNUIMessage({
        act = "div_execjs",
        name = name,
        js = javascript
    })
end


function tCMG.removeDiv(name)
    SendNUIMessage({
        act = "remove_div",
        name = name
    })
end


function tCMG.isPaused()
    return paused
end


local function guiKeyTick()
    if IsDisabledControlJustPressed(
        ACCEPT_INPUT_GROUP,
        ACCEPT_CONTROL
    ) then

        SendNUIMessage({
            act = "event",
            event = "requestAccept"
        })
    end

    if IsDisabledControlJustPressed(
        REJECT_INPUT_GROUP,
        REJECT_CONTROL
    ) then

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
        SendNUIMessage({
            act = "pause_change",
            paused = isPaused
        })
    end
)
