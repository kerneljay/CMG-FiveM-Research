--[[
    RageUI Visual Notifications
    ===========================

    This file provides three small notification styles:

      RageUI.Popup(options)
        Normal GTA feed notification.

      RageUI.PopupChar(options)
        Feed notification with a character/picture icon.

      RageUI.Text(options)
        Temporary subtitle-style text.

    Common options:
      message = required text
      colors  = optional GTA feed background-colour ID
      sound = {
          audio_name = "...",
          audio_ref  = "..."
      }

    PopupChar additionally accepts:
      picture
      sender
      title
      iconTypes
      request_stream_texture_dics

    Network event "RageUI:Popup" simply forwards its options to RageUI.Popup.
]]

local function playOptionalSound(
    sound
)
    if sound == nil then
        return
    end

    if sound.audio_name == nil then
        error(
            "Missing arguments, audio_name"
        )
    end

    if sound.audio_ref == nil then
        error(
            "Missing arguments, audio_ref"
        )
    end

    PlaySoundFrontend(
        -1,
        sound.audio_name,
        sound.audio_ref,
        true
    )
end


-- ============================================================
-- BASIC FEED POPUP
-- ============================================================

function RageUI.Popup(options)
    ClearPrints()

    ThefeedSetNextPostBackgroundColor(
        options.colors or 140
    )

    BeginTextCommandThefeedPost(
        "STRING"
    )

    if options.message == nil then
        error(
            "Missing arguments, message"
        )
    end

    AddTextComponentSubstringPlayerName(
        tostring(
            options.message
        )
    )

    EndTextCommandThefeedPostTicker(
        false,
        true
    )

    playOptionalSound(
        options.sound
    )
end


RegisterNetEvent(
    "RageUI:Popup",
    function(options)
        RageUI.Popup(options)
    end
)


-- ============================================================
-- CHARACTER / PICTURE POPUP
-- ============================================================

function RageUI.PopupChar(options)
    ThefeedSetNextPostBackgroundColor(
        options.colors or 140
    )

    BeginTextCommandThefeedPost(
        "STRING"
    )

    if options.message == nil then
        error(
            "Missing arguments, message"
        )
    end

    AddTextComponentSubstringPlayerName(
        tostring(
            options.message
        )
    )

    if options.request_stream_texture_dics
        ~= nil then

        RequestStreamedTextureDict(
            options.request_stream_texture_dics,
            false
        )
    end

    -- Rockstar only supports a known set of notification icon types here.
    -- Unsupported values are replaced with icon type 4.
    local iconType =
        options.iconTypes

    local supportedIconTypes = {
        [1] = true,
        [2] = true,
        [3] = true,
        [7] = true,
        [8] = true,
        [9] = true
    }

    if not supportedIconTypes[
        iconType
    ] then
        iconType = 4
    end

    local picture =
        options.picture
        and tostring(
            options.picture
        )
        or "CHAR_ALL_PLAYERS_CONF"

    EndTextCommandThefeedPostMessagetext(
        picture,
        picture,
        true,
        iconType,
        options.sender,
        options.title
    )

    playOptionalSound(
        options.sound
    )

    EndTextCommandThefeedPostTicker(
        false,
        true
    )
end


-- ============================================================
-- SUBTITLE / PRINT TEXT
-- ============================================================

function RageUI.Text(options)
    ClearPrints()

    BeginTextCommandPrint(
        "STRING"
    )

    if options.message == nil then
        error(
            "Missing arguments, message"
        )
    end

    AddTextComponentSubstringPlayerName(
        tostring(
            options.message
        )
    )

    EndTextCommandPrint(
        tonumber(
            options.time_display
        )
        or 6000,
        true
    )

    playOptionalSound(
        options.sound
    )
end
