--[[
    On-Screen Keyboard Input Helpers
    ================================

    These helpers open GTA's built-in on-screen keyboard.

    CMG.GetRageInputText(label, defaultValue)
      Returns text or nil.

    CMG.GetRageInputInt(label, defaultValue)
      Returns tonumber(text) or nil.

    Controls are disabled while the keyboard is open so gameplay input does
    not accidentally fire behind the input box.
]]

local function getKeyboardInput(
    label,
    defaultValue
)
    AddTextEntry(
        "FMMC_MPM_NA",
        "Enter " .. label
    )

    DisplayOnscreenKeyboard(
        1,
        "FMMC_MPM_NA",
        "Enter " .. label .. " message",
        defaultValue or "",
        "",
        "",
        "",
        30
    )

    CMG.toggleTemporaryFocusDisable()

    while UpdateOnscreenKeyboard()
        == 0 do

        DisableAllControlActions(0)
        Wait(0)
    end

    CMG.toggleTemporaryFocusDisable()

    local result =
        GetOnscreenKeyboardResult()

    if result and result ~= "" then
        return result
    end

    return nil
end

function CMG.GetRageInputText(
    label,
    defaultValue
)
    return getKeyboardInput(
        label,
        defaultValue
    )
end

function CMG.GetRageInputInt(
    label,
    defaultValue
)
    local result =
        getKeyboardInput(
            label,
            defaultValue
        )

    if result then
        return tonumber(result)
    end

    return nil
end
