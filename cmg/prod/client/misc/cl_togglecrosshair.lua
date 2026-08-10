--[[
    Crosshair Toggle
    ================

    /togglecrosshair flips GTA's normal aiming crosshair on/off.

    HUD component 14 is GTA's reticle/crosshair. When crosshairEnabled is
    false, it is hidden every frame.
]]

local crosshairEnabled = true

RegisterCommand("togglecrosshair", function()
    crosshairEnabled = not crosshairEnabled
end, false)

local function crosshairTick()
    if not crosshairEnabled then
        HideHudComponentThisFrame(14)
    end
end

CMG.createThreadOnTick(
    crosshairTick,
    "Crosshair Disabling"
)
