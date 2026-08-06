---@type BloodMoneyConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.randomPayouts = {
    250000,
    500000,
}

cfg.startTime = {
    hour = 17,
    minute = 0,
}

cfg.durationMsec = 600000

return cfg