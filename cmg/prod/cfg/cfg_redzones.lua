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