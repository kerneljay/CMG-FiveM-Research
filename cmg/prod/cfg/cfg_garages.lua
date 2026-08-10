--[[
    BEGINNER GUIDE — Garages
    ========================

    File: cmg/prod/cfg/cfg_garages.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Config/data used:
      * cfg/vehicles/garages.json
      * cfg/vehicles/instances.json
      * cfg/vehicles/whitelists.json

]]
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