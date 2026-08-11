--[[
    LEVEL 1 BEGINNER GUIDE — Redzones
    ======================================

    File: cmg/prod/cfg/cfg_redzones.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: configuration/data used by other scripts.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
---@type RedzoneConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.locations = {
    ["Rebel"] = {type = "radius", pos = vector3(1468.5318603516,6328.529296875,18.894895553589), radius = 100.0, createBlip = false, bloodMoney = vector3(1474.2127685547,6357.3735351562,23.722877502441)}, -- Rebel Redzone
	["Heroin"] = {type = "radius", pos = vector3(3545.048828125,3724.0776367188,36.64262008667), radius = 170.0, bloodMoney = vector3(3444.6259765625,3769.9230957031,30.52970123291)}, --H
	["LargeArms"] = {type = "radius", pos = vector3(-1118.4926757813,4926.1889648438,218.35691833496), radius = 170.0, bloodMoney = vector3(-1118.4926757813,4926.1889648438,218.35691833496)}, --LargeArms
    ["LSDNorth"] = {type = "radius", pos = vector3(1317.0300292969,4309.8359375,38.005485534668), radius = 106.0, bloodMoney = vector3(1317.0300292969,4309.8359375,38.005485534668)}, -- LSD North
	["LSDSouth"] = {type = "radius", pos = vector3(2539.0964355469,-376.51586914063,92.986785888672), radius = 120.0, bloodMoney = vector3(2539.0964355469,-376.51586914063,92.986785888672)}, -- LSD South
    --["PaletoRig"] = {type = "radius", pos = vector3(-1709.9019775391,8879.8876953125,30.726497650146), radius = 75.0}, -- Paleto Oil Rig
	--["BlackMarket"] = {type = "radius", pos = vector3(-409.95700073242,1180.3845214844,325.60946655273), radius = 172.0}, -- Black Market
}

return cfg
