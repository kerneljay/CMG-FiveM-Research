--[[
    BEGINNER GUIDE — Customraces
    ============================

    File: cmg/prod/cfg/cfg_customraces.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
---@type CustomRaceConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.startAreaRadius = 150.0
cfg.delayBetweenEventsMsec = 200

---@param players CustomRacePlayerData[]
function cfg.sortPlayers(players)
    table.sort(players, function(lhs, rhs)
        if lhs.finishGameTime and rhs.finishGameTime then
            return lhs.finishGameTime < rhs.finishGameTime
        elseif lhs.finishGameTime then
            return true
        elseif lhs.checkpointIndex ==  rhs.checkpointIndex then
            return lhs.checkpointIndex < rhs.checkpointIndex
        end
        return lhs.distanceToNextCheckpoint < rhs.distanceToNextCheckpoint
    end)
end

return cfg