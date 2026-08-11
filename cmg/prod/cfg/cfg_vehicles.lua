--[[
    LEVEL 1 BEGINNER GUIDE — Vehicles
    ======================================

    File: cmg/prod/cfg/cfg_vehicles.lua
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
      * Modules/config loaded: cfg/cfg_garages

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cfgGarages = CMG.loadModule("cfg/cfg_garages")

---@type VehicleConfig
local cfg = {} ---@diagnostic disable-line

cfg.defaultVehicleChestWeight = 30

cfg.whitelisted = {
    ["vwpolo"] = { -- Robbster Founder Lock
        maxSpeed = "1000",
        skipGitChecks = true,
    },
    ["steftt"] = { -- Despawned Founder Lock
        maxSpeed = "1000",
        blockRenting = true,
        skipGitChecks = true,
    },
    ["onlyfans"] = { -- Reece Founder Lock
        maxSpeed = "1000",
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["mkl1016"] = { -- Despawned & KWP Founder Lock
        maxSpeed = "1000",
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["hycadeevo"] = { -- Krustayyy Founder Lock
        maxSpeed = "1000",
        cantRent = false,
        skipGitChecks = true,
    },
    ["demonhawkk"] = { -- BigSteve Founder Lock
        maxSpeed = "1000",
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["lloydzurus"] = { -- Lloydz Founder Lock
        maxSpeed = "1000",
        skipGitChecks = true,
    },
    ["italianstallion"] = { -- Ryans Founder Lock
        blockRenting = true,
        skipGitChecks = true,
    },
    ["rmodlegoporsche"] = { -- Robbster Founder Lock
        skipGitChecks = true,
    },
    ["pdgt4"] = { -- Robbster Founder Lock
        maxSpeed = "1000",
        skipGitChecks = true,
    },
    ["lloydzlego"] = { -- Lloydz Founder Lock
        maxSpeed = "1000",
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["lloydzlego2"] = { -- Lloydz Founder Lock
        maxSpeed = "1000",
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["4x4q5"] = { -- Kimber Founder Lock
        maxSpeed = "1000",
        blockRenting = true,
        skipGitChecks = true,
    },
    ["rmodf40"] = { -- AshRJ Founder Lock
        maxSpeed = "300",
        blockRenting = true,
        skipGitChecks = true,
    },
    ["stefrs3"] = { -- Despawned Founder Lock
        maxSpeed = "250",
    },
    ["vanzf40"] = { -- Geordie Reece Founder Lock
        blockRenting = true,
    },
    ["mudslapper"] = { -- Arthur Developer Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["lukasvolvo"] = { -- Lukas Developer Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["lukasm4"] = { -- Lukas Developer Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["rsq8"] = { -- Ted Developer Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["oppressor2"] = { -- Thomas Developer Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["headneek"] = { -- Bob Management Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["xeona"] = { -- Xeona Management Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["sheepshagger"] = { -- Joey Management Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["vnts"] = { -- Ryan Management Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["lola"] = { -- Trauma Management Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["335brm"] = { -- Cragio Management Lock
        skipGitChecks = true,
    },
    ["mclarengt"] = { -- Harra Management Lock
        skipGitChecks = true,
    },
    ["fxxk"] = { -- Wiggy Management Lock
        skipGitChecks = true,
    },
    ["voiture"] = { -- Wiggy & Sus & JakeEXE Management Lock
        skipGitChecks = true,
    },
    ["chebs"] = { -- Ashy Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["pdtaycan"] = { -- Rolex Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["ted"] = { -- Ted Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["toplip"] = { -- Andy Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["devevo"] = { -- Deviation Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["scotland"] = { -- Kyle Management Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["ashysb"] = { -- Ashy Special Auth
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["rs7r"] = { -- Robbster & Despawned & Bob Special Auth
        skipGitChecks = true,
    },
    ["minimanztuktuk"] = { -- Minimanz Special Auth
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["rmodskyline34"] = { -- KWP Special Auth
        skipGitChecks = true,
    },
    ["gtr50"] = { -- KWP Special Auth
        skipGitChecks = true,
    },
    ["venatusc"] = { -- Rob Gang Lock Special Auth
        blockSelling = true,
        blockRenting = true,
    },
    ["gle63c"] = { -- Charity Special Auth
        skipGitChecks = true,
    },
    ["pizzaplanet"] = { -- Andy Special Auth
        blockSelling = true,
        blockRenting = true,
    },
    ["mvisiongt"] = { -- Craigo Special Auth
        blockSelling = true,
        blockRenting = true,
    },
    ["airtug"] = { -- Pilot Job
        skipGitChecks = true,
    },
    ["cmgtanker"] = { -- Pilot Job
        skipGitChecks = true,
    },
    ["policerobot"] = { -- Police Script
        skipGitChecks = true,
    },
    ["surprise"] = { -- Staff Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["vip"] = { -- VIP Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["ct1"] = { -- CTSFO Lock
        blockSelling = true,
        blockRenting = true,
        skipGitChecks = true,
    },
    ["soabobber"] = { -- SOA Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["soavan"] = { -- SOA Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["soatowtruck"] = { -- SOA Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["nmule"] = { -- CMG Trader Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["ldnujag"] = { -- LDNU Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["cardev"] = { -- Car Dev Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["marketplaceescalade"] = { -- Marketplace Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["sixthsenseinsurgent"] = { -- Sixth Sense Gang Lock
        blockSelling = true,
        blockRenting = true,
    },
    ["tcaracaraptormec"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["caracaraptorfb"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["cougarmec"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["22transmec"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["caracaraptormec"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["mavmec"] = { -- Mechanic job
        blockSelling = true,
        blockRenting = true,
    },
    ["gxuhshel"] = { -- NHS job
        blockSelling = true,
        blockRenting = true,
    },
    ["casaru"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["casdrn"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["casint"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["casrpu"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["gcarmels"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["komaru"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["komint"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["komrpu"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rebaru"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rebdsu"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rebint"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rebrpu"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["revels"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rhiaru"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rhiint"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["rhirpu"] = { -- MET Police job
        blockSelling = true,
        blockRenting = true,
    },
    ["gxcivhel"] = { -- Vigilante Heli
        blockSelling = true,
        blockRenting = true,
    },
    ["rome"] = { -- Founder lock
        maxSpeed = "300"
    },
    ["sabreautos"] = { -- Sabre lock
        blockSelling = true,
        blockRenting = true,
    },
}

cfg.highPoly = {
    ["defender110"] = true,
    ["cayennecoupegts"] = true,
    ["911targa"] = true,
    ["21bentayga"] = true,
    ["oyclc500"] = true,
    ["rsqr8"] = true,
    ["gle63road"] = true,
    ["c63"] = true,
    ["nissan"] = true,
    ["PXXA765LT"] = true,
    ["audiRSQ8"] = true,
    ["mflyingspur"] = true,
    ["manscont"] = true,
    ["gle800przemo"] = true,
    ["daytona"] = true,
    ["fwrs4"] = true,
    ["walds2020"] = true,
    ["metrotrain"] = true,
    ["cullinanblackbadge"] = true,
    ["lambo"] = true,
    ["lblx24"] = true,
    ["guardian"] = true,
    ["bmwx7"] = true,
    ["jrjpatrol"] = true,
    ["bentayga"] = true,
    ["lexusrcf"] = true,
    ["blocktrophy"] = true,
    ["sclkuz"] = true,
    ["rs52021przemo"] = true,
    ["2021m5"] = true,
    ["xxxxx"] = true,
    ["rrcn"] = true,
    ["e46"] = true,
    ["surge"] = true,
    ["rolls2021"] = true,
    ["x5m"] = true,
    ["barney"] = true,
    ["phantom"] = true,
    ["legoprime"] = true,
    ["rs3crzyx"] = true,

    -- 800k
    ["rs6abt20"] = true,
    ["jeepg"] = true,
    ["2ncs21rs8"] = true,
    ["passat"] = true,
    ["ghostrr"] = true,
    ["tsgr20"] = true,
    ["brick"] = true,
    ["sdsbuggy"] = true,
    ["gletc"] = true,
    ["v60hr"] = true,
    ["rrcnbb"] = true,
    ["LP700R"] = true,
    ["vwhr"] = true,
    ["audi"] = true,
    ["M4C"] = true,
    ["f800"] = true,
    ["g6"] = true,
    ["mromaprzemo"] = true,
    ["rrsport2023"] = true,
    ["sq7"] = true,
    ["gol"] = true,
    ["tickytocky"] = true,
    ["pjp"] = true,
    ["812venuum"] = true,
    ["rsq8mansh"] = true,
    ["golf75ap"] = true,
    ["bmwmhx6"] = true,
    ["rs6c8"] = true,
    ["golf"] = true,
    ["roma20"] = true,
    ["rsq8mans"] = true,
    ["rrst"] = true,
    ["bmwx6mham"] = true,
    ["sophlou"] = true,
    ["ff80"] = true,
    ["BMW"] = true,
    ["hellion"] = true,
    ["swift2021"] = true,
    ["lphr"] = true,
    ["m_spear"] = true,
    ["ranger"] = true,
    ["fd2"] = true,

    --22/06/2026 check
    ["onlyfans"] = true, --2.4mil
    ["19msctntgt"] = true, --998k
}

cfg.maxSpeeds = {
    ["30"] = 13.0,
    ["50"] = 22.3,
	["100"] = 44.6,
    ["125"] = 55.88,
    ["150"] = 66.9,
    ["175"] = 78.05,
    ["200"] = 89.41,
    ["210"] = 93.87,
    ["215"] = 96.11,
    ["225"] = 100.584,
    ["250"] = 111.5,
    ["275"] = 122.9,
    ["300"] = 44.6 * 3,
	["1000"] = 11001.5
}

cfg.vehicleMaxSpeeds = {}
cfg.remoteControlledModels = {}
cfg.buggyVehicles = {}

-- Speed cap raised to 300 only while the driver has the ha group.
cfg.haGroupMaxSpeedVehicles = {}
for _, vehicleId in pairs({
    "sheepshagger",
    "headneek",
    "xeona",
}) do
    cfg.haGroupMaxSpeedVehicles[GetHashKey(vehicleId)] = true
end

for vehicleId, whitelistData in pairs(cfg.whitelisted) do
    if whitelistData.maxSpeed and cfg.maxSpeeds[whitelistData.maxSpeed] then
        cfg.vehicleMaxSpeeds[GetHashKey(vehicleId)] = whitelistData.maxSpeed
    end
    if whitelistData.isRemoteControlled then
        cfg.remoteControlledModels[GetHashKey(vehicleId)] = true
    end
end

for vehicleId, maxSpeedStr in pairs(cfgGarages.speedLimitedVehicles) do
    if vehicleId and maxSpeedStr and cfg.maxSpeeds[maxSpeedStr] then
        if cfg.maxSpeeds[maxSpeedStr] <= cfg.maxSpeeds["250"] then
            cfg.vehicleMaxSpeeds[GetHashKey(vehicleId)] = maxSpeedStr
        end
    end
end

for _, vehicleId in pairs(cfgGarages.buggyVehicles) do
    cfg.buggyVehicles[GetHashKey(vehicleId)] = true
end

for _, vehicleId in pairs(cfgGarages.remoteControlledVehicles) do
    cfg.remoteControlledModels[GetHashKey(vehicleId)] = true
end

-- Garbage job truck: base cap for greenzone speed skill (matches other work trucks unless whitelisted elsewhere).
if cfg.maxSpeeds["125"] and not cfg.vehicleMaxSpeeds[GetHashKey("trash")] then
    cfg.vehicleMaxSpeeds[GetHashKey("trash")] = "125"
end

return cfg
