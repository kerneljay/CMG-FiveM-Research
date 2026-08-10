--[[
    Minimap Behaviour
    =================

    This file:
      * loads GTA's "minimap" Scaleform
      * configures its health/armour display
      * lets keyboard players toggle radar zoom with control 20
      * makes sure the large map is closed unless the call manager is using it

    LastGameTimer is intentionally kept global because the original resource
    wrote to that global name.
]]

local zoomedIn = false
local minimapScaleform = 0

local function minimapTick()
    if minimapScaleform ~= 0 then
        BeginScaleformMovieMethod(
            minimapScaleform,
            "SETUP_HEALTH_ARMOUR"
        )

        ScaleformMovieMethodAddParamInt(3)
        EndScaleformMovieMethod()
    end

    -- Control 20 is the original key used by this script.
    if IsControlJustPressed(0, 20)
        and CMG.isUsingKeyboard(2) then

        if not zoomedIn then
            SetRadarZoom(1350)
            LastGameTimer = GetGameTimer()
            zoomedIn = true
        else
            SetRadarZoom(1050)
            LastGameTimer = 0
            zoomedIn = false
        end
    end
end

CMG.createThreadOnTick(
    minimapTick,
    "Minimap"
)

CreateThread(function()
    minimapScaleform =
        RequestScaleformMovie("minimap")

    while true do
        if not CMG.isCallManagerOpen() then
            SetBigmapActive(
                false,
                false
            )
        end

        Wait(1000)
    end
end)
