-- Config for NHS-forced medical equipment (crutches, casts, wheelchair, etc.)
-- Each type can be forced onto a player for a duration; timer bar shows remaining time.

local cfg = {}

-- equipmentType -> { label, defaultDurationSeconds }
cfg.types = {
    crutches = {
        label = "Crutches",
        defaultDurationSeconds = 600, -- 10 minutes
    },
    wheelchair = {
        label = "Wheelchair",
        defaultDurationSeconds = 300, -- 5 minutes
    },
    -- Single merged timer for all casts (shows soonest expiry)
    casts = {
        label = "Casts",
        defaultDurationSeconds = 600, -- 10 minutes
    },
}

return cfg
