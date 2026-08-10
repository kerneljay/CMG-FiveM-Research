--[[
    Staff Warnings Menu
    ===================

    F10 / openwarnings opens the warnings UI.

    Opening:
      * asks the server for current warning data
      * hides the normal HUD
      * focuses the browser UI
      * applies screen blur

    Closing reverses those changes.

    Server events:
      6b71e3c99b(warnings, points)
        Updates this client's warning list/points.

      f394480d7d(warnings, points, permId)
        Opens the warning UI for a specific permanent player ID and fills it
        with their warning data.

    The menu also displays the local permanent ID and total playtime hours.

    Hash-looking event names are deliberately unchanged.
]]

local warnings = {}
local warningsOpen = false


local function getLocalPlaytimeHours()
    local userId =
        CMG.getClientUserId()

    local data =
        fullPlayerListData
        and fullPlayerListData[userId]

    if not data then
        return 0
    end

    return
        getMoneyStringFormatted(
            data[4] or 0
        )
end


local function openWarningsUi(
    requestServerRefresh
)
    if warningsOpen then
        return
    end

    warningsOpen = true

    if requestServerRefresh then
        TriggerServerEvent(
            "0d0b23d7d4"
        )
    end

    CMG.hideHud()

    CMG.uiSetFocus(
        true,
        true,
        false
    )

    TriggerScreenblurFadeIn(
        0.0
    )

    CMG.uiSendMessage({
        type = "APP_TOGGLE",
        app = "warnings"
    })

    CMG.uiSendMessage({
        type = "WARNINGS_INIT",
        info = {
            localUserId =
                CMG.getClientUserId(),

            localHourCount =
                getLocalPlaytimeHours()
        }
    })
end


local function closeWarningsUi()
    if not warningsOpen then
        return
    end

    warningsOpen = false

    CMG.showHud()

    CMG.uiSetFocus(
        false,
        false,
        false
    )

    TriggerScreenblurFadeOut(
        0.0
    )

    CMG.uiSendMessage({
        type = "APP_TOGGLE",
        app = ""
    })
end


local function toggleWarnings()
    if warningsOpen then
        closeWarningsUi()
    else
        openWarningsUi(true)
    end
end


RegisterCommand(
    "openwarnings",
    function()
        if CMG.isHudVehicleCursorEnabled()
            or GetEntityHealth(
                CMG.getPlayerPed()
            ) <= 102 then
            return
        end

        toggleWarnings()
    end,
    false
)


RegisterKeyMapping(
    "openwarnings",
    "Open Warnings",
    "keyboard",
    "F10"
)


CMG.uiRegisterCallback(
    "closeWarningMenu",
    function()
        closeWarningsUi()
    end
)


RegisterNetEvent(
    "6b71e3c99b",
    function(serverWarnings, points)
        warnings =
            serverWarnings or {}

        CMG.uiSendMessage({
            type = "WARNINGS_SET",
            info = {
                warnings = warnings,
                points = points
            }
        })
    end
)


RegisterNetEvent(
    "f394480d7d",
    function(
        serverWarnings,
        points,
        permanentId
    )
        if not warningsOpen then
            openWarningsUi(false)
        end

        warnings =
            serverWarnings or {}

        local info = {
            warnings = warnings,
            points = points
        }

        if permanentId ~= nil then
            info.permId =
                tostring(permanentId)
        end

        CMG.uiSendMessage({
            type = "WARNINGS_SET",
            info = info
        })
    end
)


-- NUI can hide itself independently. The old decompiled handler only clears
-- focus/blur here rather than calling CMG.showHud(), so that behaviour is kept.
CMG.uiRegisterCallback(
    "f10Hidden",
    function()
        if not warningsOpen then
            return
        end

        warningsOpen = false

        TriggerScreenblurFadeOut(
            0.0
        )

        SetNuiFocus(
            false,
            false
        )

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = ""
        })
    end
)
