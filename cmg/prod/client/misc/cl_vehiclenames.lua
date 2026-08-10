--[[
    Vehicle Display Names
    =====================

    GTA normally knows vehicles by internal model names. This file walks every
    configured garage vehicle and registers its friendly display name with GTA.

    Example:
        model:  "adder"
        name:   "Truffade Adder"

    AddTextEntryByHash lets the game UI use that friendly name.
]]

local garageConfig = CMG.loadModule("cfg/cfg_garages")

for _, garage in pairs(garageConfig.garages) do
    for modelName, vehicleData in pairs(garage) do
        if modelName ~= "_config" and vehicleData.name then
            AddTextEntryByHash(
                GetHashKey(modelName),
                vehicleData.name
            )
        end
    end
end
