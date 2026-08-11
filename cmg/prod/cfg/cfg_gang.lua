--[[
    LEVEL 1 BEGINNER GUIDE — Gang
    ==================================

    File: cmg/prod/cfg/cfg_gang.lua
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
---@type GangConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

-- Fee taken from the player when creating a new gang (CMG.tryFullPayment — wallet then bank).
cfg.gangCreateFee = 500000

-- Max full members before pub_member_slots_* perks (+5 each). Enforced on invite accept.
cfg.gangBaseMemberLimit = 30

-- When true, turf blips and info markers are created (recognised gangs). When false, turf UI still works.
cfg.turfSystemEnabled = true

cfg.turfs = {
	{
		name = "Cypress Flats",
		bounds = {
			vector3(748.44775390625,-2079.4216308594,29.28505897522),
			vector3(705.42718505859, -2413.0458984375, 31.187000274658),
			vector3(898.02734375, -2504.2880859375, 48.901988983154),
			vector3(1038.6895751953, -2470.1364746094, 29.096927642822),
			vector3(1091.6335449219, -2371.6384277344, 31.157674789429),
			vector3(1135.7182617188, -2230.1625976562, 31.371946334839),
			vector3(1125.1801757812, -2108.8676757812, 32.879390716553),
			vector3(940.44006347656,-2094.4204101562,30.497188568115),
		},
		linkedTurfs = {},
		infoMarker = vector3(897.37274169922,-2181.9584960938,30.519390106201),
	},
	{
		name = "El Burro Heights",
		bounds = {
		vector3(752.76788330078, -2038.9499511719, 29.829689025879),
		vector3(776.91491699219, -1868.9150390625, 53.898139953613),
		vector3(813.61303710938, -1724.1851806641, 29.72928237915),
		vector3(1003.1446533203, -1709.9392089844, 48.076919555664),
		vector3(1104.4377441406, -1637.8989257812, 30.400184631348),
		vector3(1157.0389404297, -1587.6374511719, 44.159236907959),
		vector3(1295.3470458984, -1555.9637451172, 49.880256652832),
		vector3(1373.3631591797, -1659.0445556641, 56.34400177002),
		vector3(1425.1921386719, -1832.5947265625, 70.600830078125),
		vector3(1408.546875, -1962.5942382812, 64.902061462402),
		vector3(1254.7080078125, -2055.921875, 44.973922729492),
		vector3(1133.0284423828,-2091.4558105469,40.651626586914),
		},
		linkedTurfs = {},
		infoMarker = vector3(1065.5126953125,-1980.7117919922,31.014797210693),
	},
	{
		name = "James Town",
		bounds = {
			vector3(520.2294921875, -1696.6982421875, 29.905994415283),
			vector3(621.56488037109, -1781.7067871094, 19.99022102356),
			vector3(537.37408447266, -2001.9647216797, 22.705726623535),
			vector3(402.90975952148, -2147.8952636719, 17.901893615723),
			vector3(231.87628173828, -2068.130859375, 18.591537475586),
			vector3(147.79962158203, -2012.142578125, 18.688436508179),
			vector3(378.64251708984, -1742.7470703125, 29.829601287842),
			vector3(514.89044189453, -1685.6909179688, 30.002317428589),
		},
		linkedTurfs = {},
		infoMarker = vector3(386.97375488281,-2052.7751464844,21.739290237427),
	},
	{
		name = "Downtown",
		bounds = {
			vector3(519.35455322266, -1505.1920166016, 29.757972717285),
			vector3(443.60070800781, -1629.8664550781, 29.793455123901),
			vector3(271.68728637695,-1826.2426757812,26.883268356323),
			vector3(80.212371826172,-1656.8558349609,29.341014862061),
			vector3(-191.38290405273,-1429.2785644531,31.496007919312),
			vector3(100.09940338135, -1358.4533691406, 29.950469970703),
			vector3(387.00875854492, -1365.7283935547, 31.227735519409),
			vector3(514.60589599609, -1472.9689941406, 29.891153335571),
		},
		linkedTurfs = {},
		infoMarker = vector3(219.76593017578,-1555.4633789062,29.295461654663),
	},
	{
		name = "Grove Street",
		bounds = {
			vector3(254.6053314209, -1857.1094970703, 27.424543380737),
			vector3(175.04048156738, -1937.5733642578, 21.509773254395),
			vector3(113.63998413086, -2002.1300048828, 22.90842628479),
			vector3(-43.519859313965, -1943.2828369141, 1.152827501297),
			vector3(-190.15245056152, -1785.9097900391, 30.351528167725),
			vector3(-273.03698730469, -1589.5657958984, 32.460762023926),
			vector3(-221.41461181641, -1453.6247558594, 31.988428115845),
			vector3(51.648826599121, -1665.5690917969, 29.907083511353),
			vector3(222.28375244141, -1828.2926025391, 27.819849014282),
		},
		linkedTurfs = {},
		infoMarker = vector3(-202.64324951172,-1635.1343994141,33.548221588135),
	},
	{
		name = "Maze Bank Arena",
		bounds = {
			vector3(-117.30101013184, -2068.7861328125, 25.783514022827),
			vector3(-271.23712158203, -2148.6008300781, 20.365369796753),
			vector3(-547.82684326172, -2083.4812011719, 28.007154464722),
			vector3(-720.21716308594, -1934.9669189453, 27.985982894897),
			vector3(-834.39324951172, -1723.0279541016, 35.309394836426),
			vector3(-684.55926513672, -1568.1361083984, 18.12109375),
			vector3(-434.01159667969, -1577.4318847656, 39.735698699951),
			vector3(-240.95164489746, -1807.3784179688, 30.26097869873),
			vector3(-141.96371459961, -2011.0795898438, 22.536737442017),
		},
		linkedTurfs = {},
		infoMarker = vector3(-278.8210144043,-1913.5826416016,29.939310073853),
	},
	{
		name = "La Mesa",
		bounds = {
			vector3(795.37548828125, -1394.5041503906, 27.866003036499),
			vector3(954.14837646484, -1221.5611572266, 43.11291885376),
			vector3(1061.1372070312, -973.24603271484, 45.196872711182),
			vector3(977.96276855469, -810.52136230469, 47.264907836914),
			vector3(715.45196533203, -641.25915527344, 36.693428039551),
			vector3(556.908203125, -572.01531982422, 45.334518432617),
			vector3(525.44281005859, -851.33465576172, 40.947734832764),
			vector3(566.99841308594, -1375.1607666016, 22.251962661743),
			vector3(770.44250488281, -1430.880859375, 27.920227050781),
		},
		linkedTurfs = {},
		infoMarker = vector3(721.49865722656,-1072.2170410156,23.062404632568),
	},
	{
		name = "Legion Square",
		bounds = {
			vector3(394.08480834961, -494.11337280273, 35.858783721924),
			vector3(298.94302368164, -848.19415283203, 29.712753295898),
			vector3(258.44952392578, -1130.5037841797, 29.987564086914),
			vector3(-110.64542388916, -1210.6594238281, 38.294708251953),
			vector3(-273.98123168945, -1198.693359375, 37.783779144287),
			vector3(-128.49478149414, -717.45111083984, 35.427909851074),
			vector3(37.830486297607, -490.30645751953, 34.687076568604),
			vector3(296.79525756836, -491.67660522461, 43.974517822266),
		},
		linkedTurfs = {},
		infoMarker = vector3(185.28004455566,-589.50128173828,43.86791229248),
	},
	{
		name = "Vespucci Canals",
		bounds = {
		vector3(-656.98980712891, -1260.7309570312, 11.169219970703),
		vector3(-807.03326416016, -1366.7481689453, 14.505437850952),
		vector3(-854.49670410156, -1270.3348388672, 5.6141781806946),
		vector3(-907.1923828125, -1420.2414550781, 17.085113525391),
		vector3(-958.53167724609, -1560.9913330078, 18.578456878662),
		vector3(-1095.3125, -1709.9204101562, 4.953113079071),
		vector3(-1285.470703125, -1566.5515136719, 5.2957096099854),
		vector3(-1425.4313964844, -1207.9011230469, 4.2082529067993),
		vector3(-1565.140625, -900.23522949219, 19.384399414062),
		vector3(-1293.7834472656, -903.57562255859, 12.008462905884),
		vector3(-1073.6872558594, -772.94165039062, 19.964466094971),
		vector3(-794.73492431641, -1059.7106933594, 12.720176696777),
		vector3(-660.95538330078, -1258.5201416016, 11.188555717468),
		},
		linkedTurfs = {},
		infoMarker = vector3(-1159.9326171875,-1130.7194824219,2.6044127941132),
	},
	{
		name = "Mirror Park",
		bounds = {
			vector3(1172.5909423828, -257.43185424805, 69.737373352051),
			vector3(1436.0384521484, -429.43243408203, 146.25224304199),
			vector3(1520.8259277344, -682.62371826172, 115.61511230469),
			vector3(1381.341796875, -863.77032470703, 103.16265869141),
			vector3(1158.9339599609, -836.62738037109, 55.38346862793),
			vector3(956.92041015625, -736.431640625, 41.241588592529),
			vector3(819.99505615234, -566.07611083984, 58.369552612305),
			vector3(1042.7434082031, -340.0934753418, 67.63988494873),
			vector3(1192.849609375, -274.02243041992, 69.734756469727),
		},
		linkedTurfs = {},
		infoMarker = vector3(1228.8549804688,-434.28179931641,67.702102661133),
	},
	{
		name = "East Vinewood",
		bounds = {
			vector3(1116.2725830078, -243.74604797363, 69.780303955078),
			vector3(882.20056152344, -399.91635131836, 32.721092224121),
			vector3(733.66741943359, -447.50540161133, 38.434459686279),
			vector3(665.0390625, -387.64059448242, 42.215831756592),
			vector3(637.32531738281, -209.71095275879, 44.78638458252),
			vector3(747.56439208984, -21.321622848511, 82.904602050781),
			vector3(977.40606689453, -128.15997314453, 74.683609008789),
			vector3(1067.7875976562, -224.6943359375, 70.327369689941),
		},
		linkedTurfs = {},
		infoMarker = vector3(964.17004394531,-198.3830871582,73.085113525391),
	},
	{
		name = "Downtown Vinewood",
		bounds = {
			vector3(772.39166259766, 184.56430053711, 82.285034179688),
			vector3(635.16955566406, -78.333572387695, 75.349594116211),
			vector3(518.12298583984, -290.48587036133, 47.311805725098),
			vector3(361.22302246094, -396.05877685547, 46.207580566406),
			vector3(185.51391601562, -312.71563720703, 44.647724151611),
			vector3(-103.05520629883, -217.02676391602, 45.396072387695),
			vector3(-19.469951629639, 116.73962402344, 83.393325805664),
			vector3(96.03165435791, 393.63711547852, 119.67325592041),
			vector3(421.99453735352, 300.57955932617, 103.68721008301),
			vector3(762.59124755859, 176.63093566895, 82.323860168457),
		},
		linkedTurfs = {},
		infoMarker = vector3(373.97375488281,54.960830688477,95.328453063965),
	},
	{
		name = "West Vinewood",
		bounds = {
			vector3(23.592336654663, 265.28219604492, 110.10947418213),
			vector3(-534.34808349609, 259.75955200195, 83.669540405273),
			vector3(-778.15893554688, 208.45793151855, 76.426971435547),
			vector3(-738.63824462891,61.691581726074,52.795356750488),
			vector3(-660.32025146484,-117.13725280762,37.720970153809),
			vector3(-572.67504882812,-288.01403808594,35.147945404053),
			vector3(-348.76257324219, -391.98699951172, 31.380163192749),
			vector3(-179.00517272949,-360.16656494141,32.902782440186),
			vector3(-123.50705718994,-212.58724975586,81.635841369629),
			vector3(-46.134952545166, 21.713340759277, 72.755241394043),
			vector3(33.06050491333, 264.37438964844, 110.21356964111),
		},
		linkedTurfs = {},
		infoMarker = vector3(-587.95477294922,115.5283203125,60.97241973877),
	},
	{
		name = "Rockford  Hills",
		bounds = {
			vector3(-543.97924804688, -376.37802124023, 35.706790924072),
			vector3(-710.41125488281, -260.85983276367, 48.335136413574),
			vector3(-798.54345703125, -54.662132263184, 40.349075317383),
			vector3(-1017.0868530273, -190.59655761719, 38.331455230713),
			vector3(-1281.6973876953,-83.860092163086,45.998508453369),
			vector3(-1439.9420166016,-106.50290679932,50.801940917969),
			vector3(-1577.9771728516, -179.11892700195, 56.178760528564),
			vector3(-1297.2420654297, -508.21719360352, 33.758899688721),
			vector3(-1090.4156494141, -750.78955078125, 19.955606460571),
			vector3(-855.24383544922, -657.78448486328, 27.88009262085),
			vector3(-643.75567626953, -650.85144042969, 32.316223144531),
			vector3(-558.36212158203, -371.4631652832, 35.683967590332),
		},
		linkedTurfs = {},
		infoMarker = vector3(-1146.0115966797,-426.44055175781,35.942607879639),
	},
	{
		name = "Richman",
		bounds = {
			vector3(-765.68072509766, 218.47993469238, 76.318893432617),
			vector3(-885.98968505859, 436.17129516602, 87.291976928711),
			vector3(-995.98297119141, 507.10968017578, 80.329772949219),
			vector3(-1246.11328125, 476.10165405273, 93.79850769043),
			vector3(-1496.6644287109, 503.68112182617, 117.72630310059),
			vector3(-1840.2707519531, 342.91485595703, 89.282875061035),
			vector3(-1920.0103759766, 199.5874786377, 84.952209472656),
			vector3(-1677.1126708984, -150.01902770996, 59.190078735352),
			vector3(-1571.0648193359, -170.62089538574, 56.142295837402),
			vector3(-1416.2933349609, -57.380023956299, 53.515678405762),
			vector3(-1218.9493408203, -60.687091827393, 45.514778137207),
			vector3(-1026.4630126953, -170.98335266113, 38.353328704834),
			vector3(-898.37872314453, -98.628631591797, 38.49621963501),
			vector3(-729.31561279297, -5.8655824661255, 38.246417999268),
			vector3(-818.52655029297, 135.4130859375, 59.815120697021),
			vector3(-756.50915527344, 226.33883666992, 76.338317871094),
		},
		linkedTurfs = {},
		infoMarker = vector3(-1376.8098144531,140.79997253418,56.278423309326),
	},
}

cfg.turfPayment = 3000000
cfg.captureDay = 6 -- Friday
cfg.captureTurfStartHour = 18
cfg.captureTurfEndHour = 22
cfg.defaultTurfColour = 43
cfg.turfMinAlpha = 20
cfg.turfMaxAlpha = 200
cfg.captureTimeMsec = 120000
cfg.blipAlpha = 120

cfg.permissions = {
    {name = "Deposit", id = "deposit", description = "Access to deposit an unlimited amount into the funds."},
	{name = "Withdraw", id = "withdraw", description = "Access to withdraw an amount from the funds."},
	{name = "Withdraw Turf", id = "withdrawturf", description = "Access to withdraw money made through turfs."},
	{name = "Invite Guest", id = "inviteguest", description = "Access to invite guests into the gang."},
	{name = "Invite Member", id = "invitemember", description = "Access to invite members into the gang"},
	{name = "Kick Guest", id = "kickguest", description = "Access to kick guests from the gang."},
	{name = "Kick Member", id = "kickmember", description = "Access to kick members from the gang."},
	{name = "Manage Permissions", id = "manageperms", description = "Access to give or remove permissions."},
	{name = "Manage Security", id = "security", description = "Access to edit security settings."},
	{name = "Add to Garage", id = "addgarage", description = "Access to add vehicles to the gang garage."},
	{name = "Remove from Garage", id = "removegarage", description = "Access to remove vehicles from the gang garage."},
	{name = "Leader", id = "leader", description = "Full control over the gang. Must be at least one."},
}

cfg.colourLookup = {
	["White"] = {hud = 0, blip = 0},
	["Red"] = {hud = 6, blip = 1},
	["Green"] = {hud = 18, blip = 2},
	["Blue"] = {hud = 9, blip = 3},
	["Yellow"] = {hud = 12, blip = 5},
	["Violet"] = {hud = 21, blip = 7},
	["Pink"] = {hud = 24, blip = 8},
	["Orange"] = {hud = 15, blip = 17},
	["LemonGreen"] = {hud = 46, blip = 24},
	["LightGray"] = {hud = 3, blip = 38},
	["DeepRed"] = {hud = 8, blip = 76},
	["MulberryPink"] = {hud = 24, blip = 61},
	["BrightPurple"] = {hud = 49, blip = 27},
	["LightBlue"] = {hud = 48, blip = 18},
	["LightPink"] = {hud = 57, blip = 34},
	["AltoGray"] = {hud = 62, blip = 62},
}

---All the gang blips and their associated texture in brackets
cfg.debugGangBlips = {
	189, -- USG (usg) -- BrightPurple
	186, -- Sneaky Grinders (sneakygrinders) -- LightPink
	187, -- MKT (marketplace) -- MulberryPink
	205, -- LOST MC (lostmc) -- LightGray
	188, -- THE HOOD (hoodcommunity) -- Blue
	206, -- BLACK LOTUS (blacklotus) -- Violet
	197, -- SIXTH SENSE (sixthsense) -- Red
	181, -- LCF (lcf) -- AltoGray
	182, -- UNDGND (underground) -- LightBlue
	184, -- REDLINE (redline) -- DeepRed
	180, -- redstuner (redstuner) -- DeepRed
}

cfg.permissionIds = {}

for _, permission in pairs(cfg.permissions) do
    cfg.permissionIds[permission.id] = true
end

-- Gang Skill Trees
cfg.gangSkillCategories = {
	{ id = "gang_public", title = "Public", description = "Available to all gangs", requireRecognised = false },
	{ id = "gang_rp",     title = "RP",     description = "Recognised gangs only",  requireRecognised = true },
}

-- Per-node `implemented`: false = perk not applied in gameplay yet (gang skill tree shows purple outline); true when wired.
-- Purchasing still works regardless; this flag is UI + documentation only until hooks exist.
cfg.gangSkills = {
	-- ===== PUBLIC TREE =====
	-- Gun Discount chain (root branch 1)
	["pub_gun_discount_1"]  = { name = "Gun Discount +1%",  description = "Reduce gun prices by 1%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_2"]  = { name = "Gun Discount +2%",  description = "Reduce gun prices by 2%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_3"]  = { name = "Gun Discount +3%",  description = "Reduce gun prices by 3%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_4"]  = { name = "Gun Discount +4%",  description = "Reduce gun prices by 4%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_5"]  = { name = "Gun Discount +5%",  description = "Reduce gun prices by 5%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_6"]  = { name = "Gun Discount +6%",  description = "Reduce gun prices by 6%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_7"]  = { name = "Gun Discount +7%",  description = "Reduce gun prices by 7%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_8"]  = { name = "Gun Discount +8%",  description = "Reduce gun prices by 8%.",       skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },
	["pub_gun_discount_10"] = { name = "Gun Discount +10%", description = "Reduce gun prices by 10%.",      skillCategory = "gang_public", cost = 1, icon = "crosshairs", implemented = true },

	-- Add more Turf commission (branches off gun discount 3/4/5)
	["pub_turf_commission_1"] = { name = "Turf Commission +1%", description = "Increase turf commission by 1%.", skillCategory = "gang_public", cost = 1, icon = "hand-holding-usd", implemented = true },
	["pub_turf_commission_2"] = { name = "Turf Commission +2%", description = "Increase turf commission by 2%.", skillCategory = "gang_public", cost = 1, icon = "hand-holding-usd", implemented = true },
	["pub_turf_commission_3"] = { name = "Turf Commission +3%", description = "Increase turf commission by 3%.", skillCategory = "gang_public", cost = 1, icon = "hand-holding-usd", implemented = true },
	["pub_turf_commission_4"] = { name = "Turf Commission +4%", description = "Increase turf commission by 4%.", skillCategory = "gang_public", cost = 1, icon = "hand-holding-usd", implemented = true },
	["pub_turf_commission_5"] = { name = "Turf Commission +5%", description = "Increase turf commission by 5%.", skillCategory = "gang_public", cost = 1, icon = "hand-holding-usd", implemented = true },

	-- Turf Payout chain (branches off turf commission 3)
	["pub_turf_payout_1"]   = { name = "Turf Payout +5%",   description = "Increase turf payout by 5%.",    skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_2"]   = { name = "Turf Payout +10%",  description = "Increase turf payout by 10%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_3"]   = { name = "Turf Payout +15%",  description = "Increase turf payout by 15%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_4"]   = { name = "Turf Payout +20%",  description = "Increase turf payout by 20%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_5"]   = { name = "Turf Payout +25%",  description = "Increase turf payout by 25%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_6"]   = { name = "Turf Payout +30%",  description = "Increase turf payout by 30%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_7"]   = { name = "Turf Payout +35%",  description = "Increase turf payout by 35%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_8"]   = { name = "Turf Payout +40%",  description = "Increase turf payout by 40%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_9"]   = { name = "Turf Payout +45%",  description = "Increase turf payout by 45%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },
	["pub_turf_payout_10"]  = { name = "Turf Payout +50%",  description = "Increase turf payout by 50%.",   skillCategory = "gang_public", cost = 1, icon = "coins", implemented = true },

	-- Capture Time chain (branches off gun discount 4)
	["pub_capture_time_1"]  = { name = "-2% Capture Time",  description = "Reduce turf capture time by 2%.",  skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },
	["pub_capture_time_2"]  = { name = "-5% Capture Time",  description = "Reduce turf capture time by 5%.",  skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },
	["pub_capture_time_3"]  = { name = "-10% Capture Time", description = "Reduce turf capture time by 10%.", skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },
	["pub_capture_time_4"]  = { name = "-15% Capture Time", description = "Reduce turf capture time by 15%.", skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },
	["pub_capture_time_5"]  = { name = "-20% Capture Time", description = "Reduce turf capture time by 20%.", skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },
	["pub_capture_time_6"]  = { name = "-30% Capture Time", description = "Reduce turf capture time by 30%.", skillCategory = "gang_public", cost = 1, icon = "clock", implemented = true },

	-- Member Slots chain (branches off gun discount 2)
	["pub_member_slots_1"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },
	["pub_member_slots_2"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },
	["pub_member_slots_3"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },
	["pub_member_slots_4"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },
	["pub_member_slots_5"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },
	["pub_member_slots_6"]  = { name = "+5 Member Slots",   description = "Increase max members by 5.",     skillCategory = "gang_public", cost = 1, icon = "users", implemented = true },

	-- See Gang Names + Name Distance chain (root branch 2)
	["pub_name_distance_1"] = { name = "Name Distance +20m", description = "See names from 20 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },
	["pub_name_distance_2"] = { name = "Name Distance +40m", description = "See names from 40 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },
	["pub_name_distance_3"] = { name = "Name Distance +50m", description = "See names from 50 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },
	["pub_name_distance_4"] = { name = "Name Distance +70m", description = "See names from 70 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },
	["pub_name_distance_5"] = { name = "Name Distance +100m", description = "See names from 100 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },
	["pub_name_distance_6"] = { name = "Name Distance +150m", description = "See names from 150 metres away.", skillCategory = "gang_public", cost = 1, icon = "binoculars", implemented = true },

	-- Deposit Fee chain (root branch 3)
	["pub_deposit_fee_1"]   = { name = "-0.2% Deposit Fee", description = "Reduce deposit fee by 0.2%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },
	["pub_deposit_fee_2"]   = { name = "-0.3% Deposit Fee", description = "Reduce deposit fee by 0.3%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },
	["pub_deposit_fee_3"]   = { name = "-0.4% Deposit Fee", description = "Reduce deposit fee by 0.4%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },
	["pub_deposit_fee_4"]   = { name = "-0.5% Deposit Fee", description = "Reduce deposit fee by 0.5%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },
	["pub_deposit_fee_5"]   = { name = "-0.6% Deposit Fee", description = "Reduce deposit fee by 0.6%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },
	["pub_deposit_fee_6"]   = { name = "-0.7% Deposit Fee", description = "Reduce deposit fee by 0.7%.",    skillCategory = "gang_public", cost = 1, icon = "percentage", implemented = true },

	-- Shared Garage (branches off final member slots node)
	["pub_shared_garage"]    = { name = "Shared Garage",     description = "Unlock a shared gang garage with 5 vehicle slots.",    skillCategory = "gang_public", cost = 1, icon = "warehouse", implemented = true },

	-- Gang Garage Slots chain (branches off shared garage)
	["pub_garage_slots_1"]   = { name = "+5 Gang Garage Slots", description = "Increase gang garage capacity by 5 (total 10).", skillCategory = "gang_public", cost = 1, icon = "warehouse", implemented = true },
	["pub_garage_slots_2"]   = { name = "+5 Gang Garage Slots", description = "Increase gang garage capacity by 5 (total 15).", skillCategory = "gang_public", cost = 1, icon = "warehouse", implemented = true },
	["pub_garage_slots_3"]   = { name = "+5 Gang Garage Slots", description = "Increase gang garage capacity by 5 (total 20).", skillCategory = "gang_public", cost = 1, icon = "warehouse", implemented = true },
	["pub_garage_slots_4"]   = { name = "+5 Gang Garage Slots", description = "Increase gang garage capacity by 5 (total 25).", skillCategory = "gang_public", cost = 1, icon = "warehouse", implemented = true },

	-- ===== RP TREE =====
	-- Street rep (main trunk)
	["rp_street_rep_5"]     = { name = "Start with +5 Street Rep",   description = "Members start with 5 extra street rep.",  skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },
	["rp_street_rep_10"]    = { name = "Start with +10 Street Rep",  description = "Members start with 10 extra street rep.", skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },
	["rp_street_rep_20"]    = { name = "Start with +20 Street Rep",  description = "Members start with 20 extra street rep.", skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },
	["rp_street_rep_30"]    = { name = "Start with +30 Street Rep",  description = "Members start with 30 extra street rep.", skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },
	["rp_street_rep_40"]    = { name = "Start with +40 Street Rep",  description = "Members start with 40 extra street rep.", skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },
	["rp_street_rep_50"]    = { name = "Start with +50 Street Rep",  description = "Members start with 50 extra street rep.", skillCategory = "gang_rp", cost = 1, icon = "star", implemented = true },

	-- Outfit slots (extra rank outfit slots beyond the default 1; used by org Crew + clock-on)
	["rp_outfit_1"]         = { name = "+1 Outfit Slot",     description = "Unlock an additional outfit slot.",   skillCategory = "gang_rp", cost = 1, icon = "tshirt", implemented = true, extraRankOutfitSlots = 1 },
	["rp_outfit_2"]         = { name = "+2 Outfit Slots",    description = "Unlock 2 additional outfit slots.",  skillCategory = "gang_rp", cost = 1, icon = "tshirt", implemented = true, extraRankOutfitSlots = 2 },
	["rp_outfit_3"]         = { name = "+3 Outfit Slots",    description = "Unlock 3 additional outfit slots.",  skillCategory = "gang_rp", cost = 1, icon = "tshirt", implemented = true, extraRankOutfitSlots = 3 },

	-- Lookouts (fake NPCs on turf: notify if opposing org sells or enters; /lookout for police)
	["rp_lookout_1"]        = { name = "Lookout",           description = "Get notified if an opposing org gang sells drugs to trapper NPCs on your turf.", skillCategory = "gang_rp", cost = 1, icon = "binoculars", implemented = true },
	["rp_lookout_2"]        = { name = "Lookout 2",         description = "Get notified when a recognised rival org member enters your street-cred turf.", skillCategory = "gang_rp", cost = 1, icon = "binoculars", implemented = true },
	["rp_lookout_3"]        = { name = "Lookout 3",         description = "/lookout sets a lookout at your position; on-duty police in the same world instance inside the radius notify your gang. /lookout clear removes it. Base radius ~75m.", skillCategory = "gang_rp", cost = 1, icon = "binoculars", implemented = true },
	["rp_lookout_4"]        = { name = "Lookout 4",         description = "Lookout 3 radius +10% of base (~82m).", skillCategory = "gang_rp", cost = 1, icon = "binoculars", implemented = true },
	["rp_lookout_5"]        = { name = "Lookout 5",         description = "Lookout 3 radius +20% of base (~90m).", skillCategory = "gang_rp", cost = 1, icon = "binoculars", implemented = true },

	-- Gang weapons discount (cfg_gunstore: _config.gangGunstore = true only)
	["rp_weapons_2"]        = { name = "2% Discount on Gang Weapons", description = "2% off weapons and ammo at gang gun stores (faction armoury).", skillCategory = "gang_rp", cost = 1, icon = "tag", implemented = true },
	["rp_weapons_3"]        = { name = "3% Discount on Gang Weapons", description = "3% off weapons and ammo at gang gun stores (faction armoury).", skillCategory = "gang_rp", cost = 1, icon = "tag", implemented = true },
	["rp_weapons_4"]        = { name = "4% Discount on Gang Weapons", description = "4% off weapons and ammo at gang gun stores (faction armoury).", skillCategory = "gang_rp", cost = 1, icon = "tag", implemented = true },
	["rp_weapons_5"]        = { name = "5% Discount on Gang Weapons", description = "5% off weapons and ammo at gang gun stores (faction armoury).", skillCategory = "gang_rp", cost = 1, icon = "tag", implemented = true },

	-- Heist setup cost reduction
	["rp_heist_5"]          = { name = "Heist Setups Cost 5% Less",  description = "Heist setup costs reduced by 5%.",  skillCategory = "gang_rp", cost = 1, icon = "dollar-sign", implemented = true },
	["rp_heist_10"]         = { name = "Heist Setups Cost 10% Less", description = "Heist setup costs reduced by 10%.", skillCategory = "gang_rp", cost = 1, icon = "dollar-sign", implemented = true },
	["rp_heist_15"]         = { name = "Heist Setups Cost 15% Less", description = "Heist setup costs reduced by 15%.", skillCategory = "gang_rp", cost = 1, icon = "dollar-sign", implemented = true },
	["rp_heist_20"]         = { name = "Heist Setups Cost 20% Less", description = "Heist setup costs reduced by 20%.", skillCategory = "gang_rp", cost = 1, icon = "dollar-sign", implemented = true },

	["rp_ragdoll"]          = { name = "Ragdoll Button",     description = "Unlock the ragdoll keybind.",     skillCategory = "gang_rp", cost = 1, icon = "running", implemented = true },
	["rp_car_theft"]        = { name = "Car Theft",         description = "Unlock the car theft ability.",   skillCategory = "gang_rp", cost = 1, icon = "car", implemented = true },

	-- Spray cans
	["rp_spray_25"]         = { name = "Reduce Price of Spray Cans by 25%", description = "Spray can prices reduced by 25% at food/convenience markets.", skillCategory = "gang_rp", cost = 1, icon = "spray-can", implemented = true },
	["rp_spray_50"]         = { name = "Reduce Price of Spray Cans by 50%", description = "Spray can prices reduced by 50% at food/convenience markets.", skillCategory = "gang_rp", cost = 1, icon = "spray-can", implemented = true },

	-- WL (whitelist) vehicles
	["rp_wl_vehicles_5"]    = { name = "Reduce Price of WL Vehicles by 5%",  description = "Whitelist vehicle prices reduced by 5% at Simeons categories with gang vehicle store.",  skillCategory = "gang_rp", cost = 1, icon = "car", implemented = true },
	["rp_wl_vehicles_7"]    = { name = "Reduce Price of WL Vehicles by 7%",  description = "Whitelist vehicle prices reduced by 7% at Simeons categories with gang vehicle store.",  skillCategory = "gang_rp", cost = 1, icon = "car", implemented = true },
	["rp_wl_vehicles_10"]   = { name = "Reduce Price of WL Vehicles by 10%", description = "Whitelist vehicle prices reduced by 10% at Simeons categories with gang vehicle store.", skillCategory = "gang_rp", cost = 1, icon = "car", implemented = true },
	["rp_wl_vehicles_15"]   = { name = "Reduce Price of WL Vehicles by 15%", description = "Whitelist vehicle prices reduced by 15% at Simeons categories with gang vehicle store.", skillCategory = "gang_rp", cost = 1, icon = "car", implemented = true },

	-- Paycheck
	["rp_paycheck_5"]       = { name = "Paycheck Increased 5%",  description = "Member paycheck increased by 5%.",  skillCategory = "gang_rp", cost = 1, icon = "money-bill-wave", implemented = true },
	["rp_paycheck_10"]      = { name = "Paycheck Increased 10%", description = "Member paycheck increased by 10%.", skillCategory = "gang_rp", cost = 1, icon = "money-bill-wave", implemented = true },
	["rp_paycheck_15"]      = { name = "Paycheck Increased 15%", description = "Member paycheck increased by 15%.", skillCategory = "gang_rp", cost = 1, icon = "money-bill-wave", implemented = true },
	["rp_paycheck_20"]      = { name = "Paycheck Increased 20%", description = "Member paycheck increased by 20%.", skillCategory = "gang_rp", cost = 1, icon = "money-bill-wave", implemented = true },
	["rp_paycheck_30"]      = { name = "Paycheck Increased 30%", description = "Member paycheck increased by 30%.", skillCategory = "gang_rp", cost = 1, icon = "money-bill-wave", implemented = true },
}

cfg.gangSkillTrees = {
	gang_public = {
		edges = {
			-- Gun Discount chain (root branch 1): 1% → 2% → 3% → 4% → 5% → 6% → 7% → 8% → 10%
			{ from = "pub_gun_discount_1",  to = "pub_gun_discount_2" },
			{ from = "pub_gun_discount_2",  to = "pub_gun_discount_3" },
			{ from = "pub_gun_discount_3",  to = "pub_gun_discount_4" },
			{ from = "pub_gun_discount_4",  to = "pub_gun_discount_5" },
			{ from = "pub_gun_discount_5",  to = "pub_gun_discount_6" },
			{ from = "pub_gun_discount_6",  to = "pub_gun_discount_7" },
			{ from = "pub_gun_discount_7",  to = "pub_gun_discount_8" },
			{ from = "pub_gun_discount_8",  to = "pub_gun_discount_10" },

			-- Gun discount branches → Turf Commission
			{ from = "pub_gun_discount_3",  to = "pub_turf_commission_1" },
			{ from = "pub_gun_discount_4",  to = "pub_turf_commission_2" },
			{ from = "pub_gun_discount_5",  to = "pub_turf_commission_3" },
			-- Turf Commission continues: 3% → 4% → 5%
			{ from = "pub_turf_commission_3", to = "pub_turf_commission_4" },
			{ from = "pub_turf_commission_4", to = "pub_turf_commission_5" },

			-- Turf Commission 3 branches → Turf Payout
			{ from = "pub_turf_commission_3", to = "pub_turf_payout_1" },
			-- Turf Payout chain: 5% → 10% → 15% → 20% → 25% → 30% → 35% → 40% → 45% → 50%
			{ from = "pub_turf_payout_1",  to = "pub_turf_payout_2" },
			{ from = "pub_turf_payout_2",  to = "pub_turf_payout_3" },
			{ from = "pub_turf_payout_3",  to = "pub_turf_payout_4" },
			{ from = "pub_turf_payout_4",  to = "pub_turf_payout_5" },
			{ from = "pub_turf_payout_5",  to = "pub_turf_payout_6" },
			{ from = "pub_turf_payout_6",  to = "pub_turf_payout_7" },
			{ from = "pub_turf_payout_7",  to = "pub_turf_payout_8" },
			{ from = "pub_turf_payout_8",  to = "pub_turf_payout_9" },
			{ from = "pub_turf_payout_9",  to = "pub_turf_payout_10" },

			-- Gun discount 4 branches → Capture Time
			{ from = "pub_gun_discount_4",  to = "pub_capture_time_1" },
			-- Capture Time chain: -2% → -5% → -10% → -15% → -20% → -30%
			{ from = "pub_capture_time_1",  to = "pub_capture_time_2" },
			{ from = "pub_capture_time_2",  to = "pub_capture_time_3" },
			{ from = "pub_capture_time_3",  to = "pub_capture_time_4" },
			{ from = "pub_capture_time_4",  to = "pub_capture_time_5" },
			{ from = "pub_capture_time_5",  to = "pub_capture_time_6" },

			-- Gun discount 2 branches → Member Slots
			{ from = "pub_gun_discount_2",  to = "pub_member_slots_1" },
			-- Member Slots chain: +5 × 6 = 30 max
			{ from = "pub_member_slots_1",  to = "pub_member_slots_2" },
			{ from = "pub_member_slots_2",  to = "pub_member_slots_3" },
			{ from = "pub_member_slots_3",  to = "pub_member_slots_4" },
			{ from = "pub_member_slots_4",  to = "pub_member_slots_5" },
			{ from = "pub_member_slots_5",  to = "pub_member_slots_6" },

			-- +30 Member Slots (final node) branches → Shared Garage
			{ from = "pub_member_slots_6",  to = "pub_shared_garage" },

			-- Shared Garage branches → Gang Garage Slots
			{ from = "pub_shared_garage",    to = "pub_garage_slots_1" },
			{ from = "pub_garage_slots_1",   to = "pub_garage_slots_2" },
			{ from = "pub_garage_slots_2",   to = "pub_garage_slots_3" },
			{ from = "pub_garage_slots_3",   to = "pub_garage_slots_4" },

			-- See Gang Names branches off Turf Commission 1
			{ from = "pub_turf_commission_1", to = "pub_name_distance_1" },
			{ from = "pub_name_distance_1", to = "pub_name_distance_2" },
			{ from = "pub_name_distance_2", to = "pub_name_distance_3" },
			{ from = "pub_name_distance_3", to = "pub_name_distance_4" },
			{ from = "pub_name_distance_4", to = "pub_name_distance_5" },
			{ from = "pub_name_distance_5", to = "pub_name_distance_6" },

			-- Deposit Fee branches off Turf Commission 2
			{ from = "pub_turf_commission_2", to = "pub_deposit_fee_1" },
			{ from = "pub_deposit_fee_1",  to = "pub_deposit_fee_2" },
			{ from = "pub_deposit_fee_2",  to = "pub_deposit_fee_3" },
			-- -0.4% branches to both -0.5% and -0.6%
			{ from = "pub_deposit_fee_3",  to = "pub_deposit_fee_4" },
			{ from = "pub_deposit_fee_3",  to = "pub_deposit_fee_5" },
			{ from = "pub_deposit_fee_5",  to = "pub_deposit_fee_6" },
		},
	},
	gang_rp = {
		edges = {
			-- Street rep trunk: +5 → +10 → +20 → +30 → +40 → +50
			{ from = "rp_street_rep_5",  to = "rp_street_rep_10" },
			{ from = "rp_street_rep_10", to = "rp_street_rep_20" },
			{ from = "rp_street_rep_20", to = "rp_street_rep_30" },
			{ from = "rp_street_rep_30", to = "rp_street_rep_40" },
			{ from = "rp_street_rep_40", to = "rp_street_rep_50" },

			-- +5 branches → +1 Outfit slot
			{ from = "rp_street_rep_5",  to = "rp_outfit_1" },

			-- +30 branches → +3 Outfit slots
			{ from = "rp_street_rep_30", to = "rp_outfit_3" },

			-- +10 branches → Lookout (sell on turf) and 2% weapons
			{ from = "rp_street_rep_10", to = "rp_lookout_1" },
			{ from = "rp_street_rep_10", to = "rp_weapons_2" },

			-- Lookout path: Lookout → +2 Outfit, Lookout 2 (connect to +20 for prereq)
			{ from = "rp_lookout_1",     to = "rp_outfit_2" },
			{ from = "rp_lookout_1",     to = "rp_lookout_2" },
			{ from = "rp_street_rep_20", to = "rp_lookout_2" },

			-- +50 branches → Lookout 3 and Paycheck 5%
			{ from = "rp_street_rep_50", to = "rp_lookout_3" },
			{ from = "rp_street_rep_50", to = "rp_paycheck_5" },

			-- Lookout 3 → Lookout 4 → Lookout 5; Lookout 4 also → Paycheck 5%
			{ from = "rp_lookout_3",     to = "rp_lookout_4" },
			{ from = "rp_lookout_4",     to = "rp_lookout_5" },
			{ from = "rp_lookout_4",     to = "rp_paycheck_5" },

			-- Paycheck chain: 5% → 10% → 15% → 20% → 30%
			{ from = "rp_paycheck_5",    to = "rp_paycheck_10" },
			{ from = "rp_paycheck_10",   to = "rp_paycheck_15" },
			{ from = "rp_paycheck_15",   to = "rp_paycheck_20" },
			{ from = "rp_paycheck_20",   to = "rp_paycheck_30" },

			-- Weapons: 2% → 3% → 4% → 5%; 2% also → Heist 5%
			{ from = "rp_weapons_2",     to = "rp_weapons_3" },
			{ from = "rp_weapons_3",     to = "rp_weapons_4" },
			{ from = "rp_weapons_4",     to = "rp_weapons_5" },
			{ from = "rp_weapons_2",     to = "rp_heist_5" },

			-- Heist: 5% → 10% → 15% → 20%; Heist 20% → Ragdoll, Car Theft
			{ from = "rp_heist_5",      to = "rp_heist_10" },
			{ from = "rp_heist_10",     to = "rp_heist_15" },
			{ from = "rp_heist_15",     to = "rp_heist_20" },
			{ from = "rp_heist_20",     to = "rp_ragdoll" },
			{ from = "rp_heist_20",     to = "rp_car_theft" },

			-- +40 branches → Spray 25%
			{ from = "rp_street_rep_40", to = "rp_spray_25" },

			-- Spray: 25% → 50%; 25% also → WL vehicles 5%
			{ from = "rp_spray_25",     to = "rp_spray_50" },
			{ from = "rp_spray_25",     to = "rp_wl_vehicles_5" },

			-- WL vehicles: 5% → 7% → 10% → 15%
			{ from = "rp_wl_vehicles_5",  to = "rp_wl_vehicles_7" },
			{ from = "rp_wl_vehicles_7",  to = "rp_wl_vehicles_10" },
			{ from = "rp_wl_vehicles_10", to = "rp_wl_vehicles_15" },
		},
	},
}

cfg.turfNameToIndex = {}

for index, turf in ipairs(cfg.turfs) do
	cfg.turfNameToIndex[turf.name] = index
end

return cfg
