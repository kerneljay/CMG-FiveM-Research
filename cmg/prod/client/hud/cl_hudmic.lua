--[[
    Voice / Microphone HUD
    ======================

    This small bridge keeps the custom HUD in sync with pma-voice/Mumble.

    HUD fields sent:
      mic_level = current pma-voice talking mode
      isTalking = whether the local player is actively transmitting voice
      isMuted   = true when Mumble is disconnected

    Two connection flags are kept so the NUI is only updated when the mute
    state actually changes.
]]

local mumbleConnected = true
local previousConnectedState = true
local wasTalking = false

local function updateMicrophoneSetting(settingType, value)
    CMG.sendHudNuiMessage(
        "SET_MICROPHONE_SETTINGS",
        {
            type = settingType,
            value = value
        }
    )
end

AddEventHandler(
    "pma-voice:setTalkingMode",
    function(mode)
        updateMicrophoneSetting(
            "mic_level",
            mode
        )
    end
)

CreateThread(function()
    while true do
        local isTalking =
            NetworkIsPlayerTalking(
                PlayerId()
            )

        if isTalking and not wasTalking then
            wasTalking = true
            updateMicrophoneSetting(
                "isTalking",
                true
            )

        elseif not isTalking
            and wasTalking then

            wasTalking = false
            updateMicrophoneSetting(
                "isTalking",
                false
            )
        end

        Wait(0)
    end
end)

CreateThread(function()
    while true do
        local connected =
            MumbleIsConnected()

        if not connected then
            if mumbleConnected
                or previousConnectedState then

                mumbleConnected = false
                previousConnectedState = false

                updateMicrophoneSetting(
                    "isMuted",
                    true
                )
            end

        elseif not mumbleConnected
            or not previousConnectedState then

            mumbleConnected = true
            previousConnectedState = false

            updateMicrophoneSetting(
                "isMuted",
                false
            )
        end

        Wait(2000)
    end
end)
