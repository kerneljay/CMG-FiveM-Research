--[[
    Diamond Casino Video Screens
    ============================

    GTA's casino wall screens are a named render target.

    Normal loop:
      * play playlist "CASINO_DIA_PL"
      * render it onto "casinoscreen_01"
      * periodically restart the playlist

    Event 33636c4bf6
      If the player is inside the Diamond Casino, request the short
      "CASINO_WIN_PL" winner playlist on the next render update.

    Event 4d7b29b4ae
      Starts/registers the casino-screen renderer.

    Leaving the casino releases the render target and stops the thread.
]]

local screenSettings = {
    VideoType = "CASINO_DIA_PL"
}

local renderTargetId = nil
local showWinnerVideo = false


local function playNormalCasinoVideo()
    SetTvChannelPlaylist(
        0,
        screenSettings.VideoType,
        true
    )

    SetTvAudioFrontend(true)
    SetTvVolume(-100.0)
    SetTvChannel(0)
end


local function playWinnerCasinoVideo()
    SetTvChannelPlaylist(
        0,
        "CASINO_WIN_PL",
        true
    )

    SetTvAudioFrontend(true)
    SetTvVolume(-100.0)

    -- Reset/reselect channel exactly like the original client.
    SetTvChannel(-1)
    SetTvChannel(0)
end


local function startCasinoScreenRenderer()
    RequestStreamedTextureDict(
        "Prop_Screen_Vinewood",
        false
    )

    while not HasStreamedTextureDictLoaded(
        "Prop_Screen_Vinewood"
    ) do
        Citizen.Wait(100)
    end

    RegisterNamedRendertarget(
        "casinoscreen_01",
        false
    )

    LinkNamedRendertarget(
        1800987616
    )

    renderTargetId =
        GetNamedRendertargetRenderId(
            "casinoscreen_01"
        )

    Citizen.CreateThread(function()
        local normalVideoStartedAt = 0

        while true do
            Citizen.Wait(0)

            if not CMG.isInsideDiamondCasino() then
                ReleaseNamedRendertarget(
                    "casinoscreen_01"
                )

                renderTargetId = nil
                showWinnerVideo = false
                break
            end

            if renderTargetId then
                local now =
                    GetGameTimer()

                if showWinnerVideo then
                    playWinnerCasinoVideo()

                    -- The original offsets the normal timer by 33.666s after
                    -- the winner clip.
                    normalVideoStartedAt =
                        GetGameTimer()
                        - 33666

                    showWinnerVideo = false

                elseif now
                    - normalVideoStartedAt
                    >= 42666 then

                    playNormalCasinoVideo()

                    normalVideoStartedAt =
                        now
                end

                SetTextRenderId(
                    renderTargetId
                )

                SetScriptGfxDrawOrder(4)

                SetScriptGfxDrawBehindPausemenu(
                    true
                )

                DrawInteractiveSprite(
                    "Prop_Screen_Vinewood",
                    "BG_Wall_Colour_4x4",
                    0.25,
                    0.5,
                    0.5,
                    1.0,
                    0.0,
                    255,
                    255,
                    255,
                    255
                )

                DrawTvChannel(
                    0.5,
                    0.5,
                    1.0,
                    1.0,
                    0.0,
                    255,
                    255,
                    255,
                    255
                )

                SetTextRenderId(
                    GetDefaultScriptRendertargetRenderId()
                )
            end
        end
    end)
end


AddEventHandler(
    "4d7b29b4ae",
    startCasinoScreenRenderer
)


AddEventHandler(
    "33636c4bf6",
    function()
        if CMG.isInsideDiamondCasino() then
            showWinnerVideo = true
        end
    end
)
