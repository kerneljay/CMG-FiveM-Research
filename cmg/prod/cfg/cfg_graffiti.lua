--[[
    LEVEL 1 BEGINNER GUIDE — Graffiti
    ======================================

    File: cmg/prod/cfg/cfg_graffiti.lua
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
---@type GraffitiConfig
local cfg = {} ---@diagnostic disable-line: missing-fields

cfg.sprayForwardOffset = 0.035
cfg.maxSurfaceDistance = 2.5

cfg.sprayScaleMin = 60
cfg.sprayScaleMax = 150

cfg.minTextLength = 1
cfg.maxTextLength = 10

cfg.sprayGraffitiTimeMsec = 20000
cfg.removeGraffitiTimeMsec = 10000

cfg.disallowedMaterials = {
    [1913209870] = true,
    [-1595148316] = true,
    [510490462] = true,
    [909950165] = true,
    [-1907520769] = true,
    [-1136057692] = true,
    [509508168] = true,
    [1288448767] = true,
    [-786060715] = true,
    [-1931024423] = true,
    [-1937569590] = true,
    [-878560889] = true,
    [1619704960] = true,
    [1550304810] = true,
    [951832588] = true,
    [2128369009] = true,
    [-356706482] = true,
    [1925605558] = true,
    [-1885547121] = true,
    [-1942898710] = true,
    [312396330] = true,
    [1635937914] = true,
    [-273490167] = true,
    [1109728704] = true,
    [223086562] = true,
    [1584636462] = true,
    [-461750719] = true,
    [1333033863] = true,
    [-1286696947] = true,
    [-1833527165] = true,
    [581794674] = true,
    [-913351839] = true,
    [-2041329971] = true,
    [-309121453] = true,
    [-1915425863] = true,
    [1429989756] = true,
    [673696729] = true,
    [244521486] = true,
    [435688960] = true,
    [-634481305] = true,
    [-1634184340] = true,
}

cfg.fonts = {
    ["graffiti1"] = {
        displayName = "Next Custom",
        allowed = "^[A-Z0-9\\-.]+$",
        forceUppercase = true,
        allowedInverse = "[^A-Z0-9\\-.]+",
        scaleMultiplier = 0.35,
    },
    ["graffiti2"] = {
        displayName = "Dripping Marker",
        allowed = "^[A-Za-z0-9\\-.$+-*/=%\"'#@&();:,<>!_~]+$",
        forceUppercase = false,
        allowedInverse = "[^A-Za-z0-9\\-.$+-*/=%\"'#@&();:,<>!_~]+",
        scaleMultiplier = 1.0,
    },
    ["graffiti3"] = {
        displayName = "Docallisme",
        allowed = "^[A-Z]+$",
        forceUppercase = true,
        allowedInverse = "[^A-Z]+",
        scaleMultiplier = 0.45,
    },
    ["graffiti5"] = {
        displayName = "Sister Spray",
        allowed = "^[A-Z0-9]+$",
        forceUppercase = true,
        allowedInverse = "[^A-Z0-9]+",
        scaleMultiplier = 0.3,
    },
}

cfg.gangTextureDictionaryName = "cmg_graffiti"

cfg.colours = {
    ["White"] = "ffffff",
    ["Red (1)"] = "c81912",
    ["Red (2)"] = "f64b3c",
    ["Pink (1)"] = "f76a8c",
    ["Pink (2)"] = "fde2e2",
    ["Blue (1)"] = "005082",
    ["Blue (2)"] = "00a8cc",
    ["Yellow (1)"] = "ffd31d",
    ["Yellow (2)"] = "f5fcc1",
    ["Green (1)"] = "2b580c",
    ["Green (2)"] = "639a67",
    ["Orange (1)"] = "ea6227",
    ["Orange (2)"] = "ffa41b",
    ["Brown (1)"] = "442727",
    ["Brown (2)"] = "9c5518",
    ["Purple (1)"] = "844685",
    ["Purple (2)"] = "be79df",
    ["Grey (1)"] = "cccccc",
    ["Grey (2)"] = "323232",
    ["Grey Black"] = "000000",
}

cfg.coloursRGB = {
    ["ffffff"] = { r = 255, g = 255, b = 255 },
    ["c81912"] = { r = 200, g = 25,  b = 18 },
    ["f64b3c"] = { r = 246, g = 75,  b = 60 },
    ["f76a8c"] = { r = 247, g = 106, b = 140 },
    ["fde2e2"] = { r = 253, g = 226, b = 226 },
    ["005082"] = { r = 0,   g = 80,  b = 130 },
    ["00a8cc"] = { r = 0,   g = 168, b = 204 },
    ["ffd31d"] = { r = 255, g = 211, b = 29 },
    ["f5fcc1"] = { r = 245, g = 252, b = 193 },
    ["2b580c"] = { r = 43,  g = 88,  b = 12 },
    ["639a67"] = { r = 99,  g = 154, b = 103 },
    ["ea6227"] = { r = 234, g = 98,  b = 39 },
    ["ffa41b"] = { r = 255, g = 164, b = 27 },
    ["442727"] = { r = 68,  g = 39,  b = 39 },
    ["9c5518"] = { r = 156, g = 85,  b = 24 },
    ["844685"] = { r = 132, g = 70,  b = 133 },
    ["be79df"] = { r = 190, g = 121, b = 223 },
    ["cccccc"] = { r = 204, g = 204, b = 204 },
    ["323232"] = { r = 50,  g = 50,  b = 50 },
    ["000000"] = { r = 0,   g = 0,   b = 0 },
}

cfg.fontDisplayNames = {}
cfg.fontDisplayNamesIndexToKey = {}

for _, font in pairs(cfg.fonts) do
    table.insert(cfg.fontDisplayNames, font.displayName)
end
table.sort(cfg.fontDisplayNames)

for _, displayName in pairs(cfg.fontDisplayNames) do
    for fontKey, font in pairs(cfg.fonts) do
        if font.displayName == displayName then
            table.insert(cfg.fontDisplayNamesIndexToKey, fontKey)
            break
        end
    end
end
assert(#cfg.fontDisplayNames == #cfg.fontDisplayNamesIndexToKey)

cfg.coloursList = {}

for colourName in pairs(cfg.colours) do
    table.insert(cfg.coloursList, colourName)
end
table.sort(cfg.coloursList)

cfg.sprayScales = {}
cfg.sprayScalesText = {}

for scale = cfg.sprayScaleMin, cfg.sprayScaleMax, 5 do
    table.insert(cfg.sprayScales, scale)
    table.insert(cfg.sprayScalesText, tostring(scale))
end

return cfg
