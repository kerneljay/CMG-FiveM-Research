--[[
    Cinematic Black Bars
    ====================

    /cinematic toggles black letterbox bars at the top and bottom of the
    screen.

    While enabled, normal GTA HUD components and the radar are hidden to make
    recordings/screenshots look cinematic.

    HideHUDThisFrame() is kept global because the original resource exposed
    that helper name to other client files.
]]

local cinematicBarsEnabled = false

local barOrigin = {
    x = 0.0,
    y = -0.001
}


local function drawScreenRectangle(
    x,
    y,
    width,
    height,
    red,
    green,
    blue,
    alpha
)
    DrawRect(
        x + width / 2,
        y + height / 2,
        width,
        height,
        red,
        green,
        blue,
        alpha
    )
end


function HideHUDThisFrame()
    HideHelpTextThisFrame()
    HideHudAndRadarThisFrame()

    for _, componentId in ipairs({
        1,
        2,
        3,
        4,
        6,
        7,
        8,
        9,
        11,
        12,
        13,
        15,
        18,
        19
    }) do
        HideHudComponentThisFrame(
            componentId
        )
    end
end


function CMG.toggleBlackBars()
    cinematicBarsEnabled =
        not cinematicBarsEnabled

    if not cinematicBarsEnabled then
        return
    end

    CreateThread(function()
        while cinematicBarsEnabled do
            HideHUDThisFrame()

            -- Top black bar.
            drawScreenRectangle(
                barOrigin.x,
                barOrigin.y,
                1.0,
                0.15,
                0,
                0,
                0,
                255
            )

            -- Bottom black bar.
            drawScreenRectangle(
                barOrigin.x,
                barOrigin.y + 0.85,
                1.0,
                0.151,
                0,
                0,
                0,
                255
            )

            Wait(0)
        end
    end)
end


RegisterCommand(
    "cinematic",
    function()
        CMG.toggleBlackBars()
    end,
    false
)
