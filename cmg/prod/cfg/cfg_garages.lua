local garages = CMG.loadJsonModule("cfg/vehicles/garages.json")
local instances = CMG.loadJsonModule("cfg/vehicles/instances.json")
local whitelists = CMG.loadJsonModule("cfg/vehicles/whitelists.json")

local cfg = {}

cfg.garages = garages

for _, instanceData in pairs(instances) do
    local vectorData = instanceData[2]
    instanceData[2] = vector3(vectorData.x, vectorData.y, vectorData.z)
end

cfg.garageInstances = instances

cfg.truckingCustomVehicles = whitelists.truckingCustomVehicles
cfg.pilotCustomVehicles = whitelists.pilotCustomVehicles
cfg.mechanicCustomTowTrucks = whitelists.mechanicCustomTowTrucks or {}
cfg.mechanicCustomFlatbeds = whitelists.mechanicCustomFlatbeds or {}
cfg.mechanicCustomVehicles = whitelists.mechanicCustomVehicles or {}
cfg.garbageCustomVehicles = whitelists.garbageCustomVehicles or {}
cfg.speedLimitedVehicles = whitelists.speedLimitedVehicles
cfg.buggyVehicles = whitelists.buggyVehicles
cfg.remoteControlledVehicles = whitelists.remoteControlledVehicles or {}

return cfg