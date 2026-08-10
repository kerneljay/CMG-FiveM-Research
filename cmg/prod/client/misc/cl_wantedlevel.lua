--[[
    Wanted-Level / Vehicle-Reward Disabler
    ======================================

    CMG does not use GTA's normal police wanted-level system, so this file:
      * sets the maximum wanted level to 0
      * disables GTA's random vehicle rewards every frame
]]

CreateThread(function()
    SetMaxWantedLevel(0)
end)

local function disableVehicleRewards(context)
    DisablePlayerVehicleRewards(context.playerId)
end

CMG.createThreadOnTick(
    disableVehicleRewards,
    "Disable Vehicle Rewards"
)
