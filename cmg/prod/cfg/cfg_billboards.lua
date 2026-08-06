---@type BillboardsConfig
local cfg = {} ---@diagnostic disable-line

cfg.rentDurations = {
	"1 week",
	"2 weeks",
	"3 weeks",
	"4 weeks"
}

cfg.defaultWeekPrice = 500000

---@diagnostic disable: missing-fields
cfg.locations = {
	["East Border"] = {
		min = vector3(1352.960571, 679.138306, 92.346725),
		max = vector3(1362.024780, 670.050110, 98.016281),
		price = cfg.defaultWeekPrice,
	},
	["Diamond Mine Road"] = {
		min = vector3(1640.746948, 1326.027466, 97.743484),
		max = vector3(1652.820801, 1321.619385, 103.426559),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 1"] = {
		min = vector3(2343.816162, 3847.570312, 43.615059),
		max = vector3(2341.940186, 3859.937256, 49.448479),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 2"] = {
		min = vector3(1852.600952, 3593.723389, 45.914398),
		max = vector3(1845.158081, 3606.645508, 51.684570),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 3"] = {
		min = vector3(1532.939331, 3438.519287, 48.841030),
		max = vector3(1541.729248, 3427.086182, 55.514069),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 4"] = {
		min = vector3(1485.854248, 3451.872803, 47.266766),
		max = vector3(1493.962769, 3439.941895, 53.968349),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 5"] = {
		min = vector3(1357.355347, 3485.177490, 45.980225),
		max = vector3(1361.640991, 3470.918945, 51.822887),
		price = cfg.defaultWeekPrice,
	},
	["East Joshua 6"] = {
		min = vector3(2611.139648, 4313.256348, 55.149239),
		max = vector3(2620.882324, 4304.780273, 60.899323),
		price = cfg.defaultWeekPrice,
	},
	["Los Santos 1"] = {
		min = vector3(2489.146484, 2883.056641, 57.125847),
		max = vector3(2475.979736, 2887.648438, 63.367062),
		price = cfg.defaultWeekPrice,
	},
	["Los Santos 2"] = {
		min = vector3(2608.468750, 3042.839355, 58.282532),
		max = vector3(2600.086182, 3052.563477, 63.969460),
		price = cfg.defaultWeekPrice,
	},
	["Los Santos 3"] = {
		min = vector3(2723.880127, 3178.479248, 61.352234),
		max = vector3(2714.785156, 3189.024658, 67.602028),
		price = cfg.defaultWeekPrice,
	},
	["Paleto Petrol"] = {
		min = vector3(196.508896, 6639.250977, 38.773926),
		max = vector3(187.228058, 6641.916016, 42.372791),
		price = cfg.defaultWeekPrice,
	},
	["Paleto Construction 1"] = {
		min = vector3(130.082169, 6541.116699, 33.999672),
		max = vector3(130.082169, 6532.684570, 39.362305),
		price = cfg.defaultWeekPrice,
	},
	["Paleto Construction 2"] = {
		min = vector3(77.144112, 6477.520996, 34.013500),
		max = vector3(68.704971, 6477.520996, 39.354160),
		price = cfg.defaultWeekPrice,
	},
	["Paleto Construction 3"] = {
		min = vector3(35.922939, 6558.563965, 34.010632),
		max = vector3(42.354362, 6563.961426, 39.360455),
		price = cfg.defaultWeekPrice,
	},
	["Paleto North"] = {
		min = vector3(-350.374603, 6066.146973, 39.412880),
		max = vector3(-347.973724, 6056.184082, 44.481045),
		price = cfg.defaultWeekPrice,
	},
	["Paleto North 2"] = {
		min = vector3(-305.171051, 6030.649414, 42.140648),
		max = vector3(-310.962036, 6043.874023, 48.879623),
		price = cfg.defaultWeekPrice,
	},
	["Paleto North 3"] = {
		min = vector3(-31.666332, 6396.367188, 41.459209),
		max = vector3(-27.522007, 6386.969238, 46.515865),
		price = cfg.defaultWeekPrice,
	},
	["Paleto North 4"] = {
		min = vector3(76.765457, 6407.847656, 41.996746),
		max = vector3(66.476608, 6418.000488, 48.741081),
		price = cfg.defaultWeekPrice,
	},
	["Airport 1"] = {
		min = vector3(-966.024902, -2766.426514, 22.410601),
		max = vector3(-959.605591, -2755.306396, 28.110847),
		price = cfg.defaultWeekPrice,
	},
	["Airport 2"] = {
		min = vector3(-1121.130371, -2659.542480, 26.818878),
		max = vector3(-1109.987183, -2665.976807, 32.552292),
		price = cfg.defaultWeekPrice,
	},
	["Airport 3"] = {
		min = vector3(-818.817810, -2611.426514, 24.592394),
		max = vector3(-826.266479, -2598.524170, 30.449902),
		price = cfg.defaultWeekPrice,
	},
	["Airport 4"] = {
		min = vector3(-771.120728, -2524.317627, 24.599873),
		max = vector3(-778.566406, -2511.421387, 30.443035),
		price = cfg.defaultWeekPrice,
	},
	["Airport 5"] = {
		min = vector3(-716.639648, -2430.885010, 31.611021),
		max = vector3(-730.619080, -2421.103027, 37.279270),
		price = cfg.defaultWeekPrice,
	},
	["Maze Bank Arena 1"] = {
		min = vector3(-432.546082, -1805.874878, 38.430031),
		max = vector3(-421.986877, -1819.280640, 44.119522),
		price = cfg.defaultWeekPrice,
	},
	["Maze Bank Arena 2"] = {
		min = vector3(-424.192474, -1821.383545, 38.391449),
		max = vector3(-436.971619, -1809.976685, 44.122070),
		price = cfg.defaultWeekPrice,
	},
	["Maze Bank Arena 3"] = {
		min = vector3(-292.001068, -1795.309937, 40.196480),
		max = vector3(-290.207733, -1812.323853, 45.946053),
		price = cfg.defaultWeekPrice,
	},
	["Maze Bank Arena 4"] = {
		min = vector3(-293.197662, -1812.924805, 40.203312),
		max = vector3(-297.919220, -1796.486084, 45.953091),
		price = cfg.defaultWeekPrice,
	},
}
---@diagnostic enable: missing-fields

cfg.numRenderTargets = 10

cfg.allowedUrls = {
	"https://cdn.cmgstudios.net/",
}

cfg.allowedExtensions = {
	".jpeg",
	".jpg",
	".png",
}

cfg.renderWidth = 800
cfg.renderHeight = 600

cfg.placeholderImageURL = "https://cdn.cmgstudios.net/content/upld/images/Svhy9hnPgWi1DAx.jpg"
cfg.purchaseDelaySecs = 60

cfg.pedModel = `a_f_y_business_02`
cfg.pedLocation = vector4(-578.90112304688,-219.77142333984,38.210205078125,48.188972473145)
cfg.buyMarker = vector3(-580.88439941406,-218.14123535156,37.224736938477)

cfg.minLodDistance = 50.0
cfg.maxLodDistance = 150.0
cfg.lodDistanceOffset = 0.3

for _, locationData in pairs(cfg.locations) do
	locationData.widthDifference = #(locationData.min.xy - locationData.max.xy)
	locationData.heightDifference = locationData.max.z - locationData.min.z
	locationData.heading = math.deg(math.atan(locationData.min.x - locationData.max.x, locationData.min.y - locationData.max.y))
	locationData.centerPosition = locationData.max + (locationData.min - locationData.max) / 2.0
	local cameraHeadingOutwards = math.rad(locationData.heading + 90.0)
	local distanceFromCenter = locationData.widthDifference * 2.0
	local forwardX = math.sin(cameraHeadingOutwards)
	local forwardY = math.cos(cameraHeadingOutwards)
	locationData.forward = vector2(forwardX, forwardY)
	locationData.cameraPosition = vector3(locationData.centerPosition.x + distanceFromCenter * forwardX, locationData.centerPosition.y + distanceFromCenter * forwardY, locationData.centerPosition.z)
end

return cfg