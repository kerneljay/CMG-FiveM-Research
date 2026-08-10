--[[
    BEGINNER GUIDE — Vehicle Crush Trade
    ====================================

    File: cmg/prod/cfg/cfg_vehicle_crush_trade.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
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
