--[[
    LEVEL 1 BEGINNER GUIDE — Farming
    =====================================

    File: cmg/prod/cfg/cfg_farming.lua
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
local glm = require("glm")

local cfg = {}

cfg.harvestReward = 30000
cfg.plantReward = 30000
cfg.growTimeMilliseconds = 900000

cfg.fields = {
    {
        name = "Field A",
        position = vector3(5209.44140625,-5173.001953125,12.104031562805),
        aabbMin = vector3(5191.2045898438,-5196.1982421875,0.0),
        aabbMax = vector3(5227.4448242188,-5134.4892578125,50.0),
        rotation = 0.0,
        sizeMultiplier = 0.8
    },
    {
        name = "Field B",
        position = vector3(5294.3232421875,-5244.4028320312,31.741134643555),
        aabbMin = vector3(5265.1201171875,-5251.7866210938,0.0),
        aabbMax = vector3(5314.0673828125,-5231.783203125,50.0),
        rotation = 315.0,
        sizeMultiplier = 1.0
    },
    {
        name = "Field C",
        position = vector3(5310.0815429688,-5209.7377929688,32.014339447021),
        aabbMin = vector3(5280.3139648438,-5230.9428710938,0.0),
        aabbMax = vector3(5340.4072265625,-5194.3725585938,50.0),
        rotation = 315.0,
        sizeMultiplier = 1.2
    },
    {
        name = "Field D",
        position = vector3(5346.7739257812,-5173.6108398438,29.412797927856),
        aabbMin = vector3(5317.9477539062,-5200.4614257812,0.0),
        aabbMax = vector3(5382.4311523438,-5140.0698242188,50.0),
        rotation = 315.0,
        sizeMultiplier = 1.8
    },
    {
        name = "Field E",
        position = vector3(5376.0639648438,-5249.0043945312,33.55419921875),
        aabbMin = vector3(5344.5283203125,-5293.8671875,0.0),
        aabbMax = vector3(5434.0668945312,-5200.8344726562,50.0),
        rotation = 320.0,
        sizeMultiplier = 1.8
    },
    {
        name = "Field F",
        position = vector3(5309.828125,-5289.7602539062,33.907917022705),
        aabbMin = vector3(5292.59921875,-5320.8618164062,0.0),
        aabbMax = vector3(5325.4194335938,-5260.1127929688,50.0),
        rotation = 315.0,
        sizeMultiplier = 1.0
    },
    {
        name = "Field G",
        position = vector3(5352.4638671875,-5329.580078125,37.809177398682),
        aabbMin = vector3(5317.9921875,-5352.4624023438,0.0),
        aabbMax = vector3(5385.55078125,-5298.2607421875,50.0),
        rotation = 315.0,
        sizeMultiplier = 1.4
    }
}

cfg.fieldObjects = {
    `h4_prop_weed_01_plant`,
    `h4_prop_weed_01_row`,
    `h4_prop_bush_cocaplant_01_row`,
    `h4_prop_bush_cocaplant_01`
}

cfg.menuPosition = vector3(5160.93359375,-5118.2690429688,2.6704576015472)
cfg.npcPosition = vector4(5159.5122070312,-5118.263671875,2.5728759765625,277.79528808594)

cfg.tractorSpawnPositions = {
    vector4(5154.5009765625,-5134.9711914062,2.3033447265625,189.92126464844),
    vector4(5154.474609375,-5126.4921875,2.2696533203125,257.95275878906),
    vector4(5181.560546875,-5132.38671875,3.3143310546875,68.031494140625),
    vector4(5134.298828125,-5132.5185546875,2.117919921875,178.58267211914),
    vector4(5134.45703125,-5117.26171875,2.10107421875,5.6692910194397)
}

cfg.trailerSpawnPositions = {
    vector4(5169.2836914062,-5093.6967773438,2.859375,226.77166748047),
    vector4(5147.7231445312,-5148.2109375,2.218994140625,269.29135131836),
    vector4(5144.0571289062,-5106.6328125,2.16845703125,269.29135131836),
    vector4(5161.015625,-5179.9516601562,2.0,357.16534423828),
    vector4(5161.384765625,-5160.580078125,2.3370361328125,357.16534423828)
}

cfg.rakeModel = `raketrailer`
cfg.grainModel = `graintrailer`

cfg.archetypeDefs = {
    {
        flags = 537067520,
        bbMin = vector3(-0.581897, -0.558093, -0.020029),
        bbMax = vector3(0.744448, 0.428549, 1.881386),
        bsCentre = vector3(0.08127546, -0.06477201, 0.9306785),
        bsRadius = 1.259765,
        name = "h4_prop_weed_01_plant",
        textureDictionary = "h4_prop_weed_01_plant",
        physicsDictionary = nil,
        assetName = "h4_prop_weed_01_plant",
        assetType = "ASSET_TYPE_DRAWABLE",
        lodDist = 200.0,
        hdTextureDist = 25.0,
        specialAttribute = 0
    },
    {
        flags = 537067520,
        bbMin = vector3(-0.545977, -0.741369, -0.079084),
        bbMax = vector3(5.205393, 0.695536, 2.2461),
        bsCentre = vector3(2.329708, -0.0229164958, 1.0835079),
        bsRadius = 3.183922,
        name = "h4_prop_weed_01_row",
        textureDictionary = "h4_prop_weed_01_row",
        physicsDictionary = nil,
        assetName = "h4_prop_weed_01_row",
        assetType = "ASSET_TYPE_DRAWABLE",
        lodDist = 200.0,
        hdTextureDist = 25.0,
        specialAttribute = 0
    },
    {
        flags = 537001984,
        bbMin = vector3(-0.693606, -0.596551, -0.00091),
        bbMax = vector3(0.633044, 0.600381, 1.408674),
        bsCentre = vector3(-0.0302810073, 0.00191503763, 0.703882039),
        bsRadius = 1.137934,
        name = "h4_prop_bush_cocaplant_01",
        textureDictionary = "h4_prop_bush_cocaplant_01",
        physicsDictionary = nil,
        assetName = "h4_prop_bush_cocaplant_01",
        assetType = "ASSET_TYPE_DRAWABLE",
        lodDist = 100.0,
        hdTextureDist = 8.0,
        specialAttribute = 13
    },
    {
        flags = 537067520,
        bbMin = vector3(-0.746, -5.730772, -0.000903),
        bbMax = vector3(0.740791, 0.600381, 1.70851),
        bsCentre = vector3(-0.00260448456, -2.56519556, 0.8538035),
        bsRadius = 3.362147,
        name = "h4_prop_bush_cocaplant_01_row",
        textureDictionary = "h4_prop_bush_cocaplant_01_row",
        physicsDictionary = nil,
        assetName = "h4_prop_bush_cocaplant_01_row",
        assetType = "ASSET_TYPE_DRAWABLE",
        lodDist = 140.0,
        hdTextureDist = 25.0,
        specialAttribute = 13
    },
}

for index, fieldInfo in pairs(cfg.fields) do
    fieldInfo.index = index
    if fieldInfo.rotation then
        fieldInfo.polygons = glm.polygon.new({
            vector3(fieldInfo.aabbMin.x, fieldInfo.aabbMin.y, fieldInfo.aabbMin.z),
            vector3(fieldInfo.aabbMax.x, fieldInfo.aabbMin.y, fieldInfo.aabbMin.z),
            vector3(fieldInfo.aabbMax.x, fieldInfo.aabbMax.y, fieldInfo.aabbMin.z),
            vector3(fieldInfo.aabbMin.x, fieldInfo.aabbMax.y, fieldInfo.aabbMin.z),
        })
        fieldInfo.aabbCenter = (fieldInfo.aabbMax + fieldInfo.aabbMin) / 2.0
        for polygonIndex = 1, 4 do
            local rotationAboutOrigin = glm.rotate(glm.mat4(1.0), glm.radians(fieldInfo.rotation), vector3(0.0, 0.0, 1.0))
            local translationToOrigin = glm.translate(rotationAboutOrigin, fieldInfo.aabbCenter - fieldInfo.polygons[polygonIndex])
            fieldInfo.polygons[polygonIndex] = translationToOrigin[4].xyz
        end
    end
end

return cfg
