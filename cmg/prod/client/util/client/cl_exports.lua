--[[
    Common Client Exports + Prompt Bridge
    =====================================

    This file contains small public helpers used by other CMG resources.

    Prompt system:
      CMG.clientPrompt(title, defaultText, inputType, callback)
        Opens the browser prompt and calls the supplied client callback.

      tCMG.prompt(title, defaultText)
        Opens the same prompt for the older server/RPC interface.

      Only one prompt callback is active at a time. A new prompt waits until
      the old one has finished.

    Other public helpers/exports:
      playSound(transactionType)
      CMG.copyToClipboard(value)
      CMG.openURL(url)
      isOnFactionDuty
      getClientFaction
      getClientJob
      getClientJobGrade
      getUserId
      notify
      hasClientPermission
      canPerformSurgery

    Event bcde297e37(text) copies a trimmed non-empty string to clipboard.
]]

local activePromptCallback = nil


-- ============================================================
-- PROMPT SYSTEM
-- ============================================================

local function openPrompt(
    title,
    defaultText,
    promptType,
    callback
)
    callback =
        callback
        or function()
        end

    -- Do not overwrite an existing caller's callback.
    while activePromptCallback do
        Wait(0)
    end

    CMG.uiSendMessage({
        action = "togglePrompt",
        data = {
            visible = true
        }
    })

    CMG.uiSendMessage({
        type = "SET_PROMPT_DATA",
        info = {
            title = title,
            defaultText = defaultText,
            type = promptType
        }
    })

    CMG.uiSetFocus(
        true,
        false,
        false
    )

    activePromptCallback =
        callback
end


function CMG.clientPrompt(
    title,
    defaultText,
    callback
)
    openPrompt(
        title,
        defaultText,
        "client",
        callback
    )
end


function tCMG.prompt(
    title,
    defaultText
)
    openPrompt(
        title,
        defaultText,
        "server",
        nil
    )
end


CMG.uiRegisterCallback(
    "promptResult",
    function(data)
        CMG.uiSendMessage({
            action = "togglePrompt",
            data = {
                visible = false
            }
        })

        CMG.uiSetFocus(
            false,
            false,
            false
        )

        -- Server/RPC prompts send their result back to CMGclient.
        if data.type ~= "client" then
            CMGclient.promptResult({
                data.result
            })
        end

        if activePromptCallback then
            local callback =
                activePromptCallback

            -- Clear before running user code so that callback is allowed to
            -- immediately open another prompt.
            activePromptCallback =
                nil

            Citizen.CreateThreadNow(
                function()
                    callback(
                        data.result
                    )
                end
            )
        end
    end
)


-- ============================================================
-- SMALL NUI / CLIPBOARD HELPERS
-- ============================================================

exports(
    "playSound",
    function(transactionType)
        SendNUIMessage({
            transactionType =
                transactionType
        })
    end
)


function CMG.copyToClipboard(value)
    SendNUIMessage({
        act = "copy_clipboard",
        text = tostring(value)
    })
end


RegisterNetEvent(
    "bcde297e37",
    function(text)
        if type(text)
            ~= "string" then
            return
        end

        local trimmed =
            text:match(
                "^%s*(.-)%s*$"
            )

        if not trimmed
            or trimmed == "" then
            return
        end

        CMG.copyToClipboard(
            trimmed
        )
    end
)


function CMG.openURL(url)
    SendNUIMessage({
        type = "open_url",
        url = url
    })
end


-- ============================================================
-- EXPORTED FRAMEWORK QUERIES
-- ============================================================

exports(
    "isOnFactionDuty",
    function()
        return
            CMG.hasClientPermission(
                "police.onduty.permission"
            )
            or CMG.hasClientPermission(
                "nhs.onduty.permission"
            )
    end
)


exports(
    "getClientFaction",
    function()
        return
            CMG.getClientFaction()
    end
)


exports(
    "getClientJob",
    function()
        return
            CMG.getClientJob()
    end
)


exports(
    "getClientJobGrade",
    function()
        return
            CMG.getClientJobGrade()
    end
)


exports(
    "getUserId",
    function()
        return
            CMG.getClientUserId()
    end
)


exports(
    "notify",
    function(message)
        return notify(message)
    end
)


exports(
    "hasClientPermission",
    function(permission)
        return
            CMG.hasClientPermission(
                permission
            )
    end
)


exports(
    "canPerformSurgery",
    function()
        return
            CMG.hasClientPermission(
                "doctor.permission"
            )
            or CMG.hasClientPermission(
                "nhs.surgeon.whitelisted"
            )
    end
)
