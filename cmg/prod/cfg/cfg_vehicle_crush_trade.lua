-- Crush trade-in: locked garage vehicles; exclude lore (lore true only). Only models with global cmg_garages count <= maxCrushRatioDenominator; ratio = that count.
local cfg = {}

cfg.areaCenter = vector3(-28.920980453491, -1103.8720703125, 25.422470092773)
cfg.areaHalfExtent = 2.0
cfg.areaHeight = 2.5
cfg.serverMaxDistance = 12.0

cfg.sinkUserId = 9000
cfg.tokensPerLockslotItem = 10

-- Cash redemption: spend N lock slot tokens to get a fixed bank deposit.
cfg.cashRedeemTokenCost = 10
cfg.cashRedeemAmount = 100000000

-- Cache full-table GROUP BY counts (seconds).
cfg.globalGarageCopyCountCacheTtlSecs = 120

-- Max global copies (cmg_garages, all rows) for a model to be tradeable; ratio = that count. More copies than this = not listed.
-- Tokens per crush = floor(tokensPerLockslotItem / ratio). Example: 2 copies -> ratio 2 -> 5 tokens; 10 copies -> ratio 10 -> 1 token.
cfg.maxCrushRatioDenominator = 10

return cfg
