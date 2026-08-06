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