--[[
    LEVEL 1 BEGINNER GUIDE — Casinoscreens
    ===========================================

    File: cmg/prod/client/casino/cl_casinoscreens.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinoscreens feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: 4d7b29b4ae, 33636c4bf6
      * Server events sent: none found by static scan
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


-- === HELPER FUNCTION: playNormalCasinoVideo() ===
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


-- === HELPER FUNCTION: playWinnerCasinoVideo() ===
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


-- === HELPER FUNCTION: startCasinoScreenRenderer() ===
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

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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
