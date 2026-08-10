--[[
    BEGINNER GUIDE — Licenses
    =========================

    File: cmg/prod/cfg/cfg_licenses.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * Vehicle Boot Security License

]]
local cfg = {}

cfg.shopCoords = vector3(-533.28350830078,-189.46655273438,38.21964263916)

cfg.licenses = {
    --["group_id",License String,Price,Description,Illegal}
    {"goldlicense","Gold License",4000000,"",false},
    {"ganglicense","Gang License",1500000,"",false},
    {"airlicense","Pilots License",2500000,"",false},
    {"diamondlicense","Diamond License",10000000,"",false},
    {"heroinlicense","Heroin License",20000000,"",true},
    {"rebellicense","Rebel License",30000000,"",true},
    {"lsdlicense","LSD License",50000000,"",true},
    {"advrebellicense","Advanced Rebel License",15000000,"",true},
    {"vigilantelicense", "Vigilante License", 30000000, "",false},
    {"polblips","Long-Range Emergency Blips License",5000000,"",false},
    {"lockpickalert", "Vehicle Boot Security License", 50000000, "Automatically applies to all owned or rented vehicles.This notifies you if any of your vehicles are being actively lockpicked.",false},
    {"racing.license","Racing License",200000000,"Access to create races on the racing app and earn commission.",false}
}

table.sort(cfg.licenses, function(lhs, rhs)
    if lhs[3] == rhs[3] then
        return lhs[2] < rhs[2]
    else
        return lhs[3] < rhs[3]
    end
end)

return cfg