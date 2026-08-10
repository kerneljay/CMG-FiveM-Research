--[[
    Basic GTA HUD Cleanup
    =====================

    CMG draws its own HUD, so every frame this hides two parts of GTA's
    default HUD:
      3 = cash/money component
      4 = MP cash component
]]

local function hideDefaultCashHud()
    HideHudComponentThisFrame(3)
    HideHudComponentThisFrame(4)
end

CMG.createThreadOnTick(
    hideDefaultCashHud,
    "Street Names"
)
