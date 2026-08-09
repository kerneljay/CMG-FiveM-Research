--[[
    Readable NPC Spawner
    ====================

    This was reconstructed from decompiled Lua.

    Beginner glossary:
      ped            = an NPC / character entity in GTA
      modelHash      = the GTA model identifier for the NPC
      position       = the centre of an NPC area
      spawnPosition  = where the NPC is initially created
      radius         = how far the NPC is allowed to wander
      scenarioName   = optional GTA scenario/animation, such as sitting or smoking

    The original script had two NPC lists:

      1. staticPeds
         Intended for NPCs that stay at a fixed position and can optionally
         play a GTA scenario.

         In the decompiled file this table is EMPTY, so this loop currently
         spawns nothing.

      2. wanderingPeds
         Contains 7 NPC definitions. These NPCs spawn at a position and then
         wander around a configured area.

    No behaviour has intentionally been added beyond what the original code did.
]]


-- ============================================================
-- STATIC NPCS
-- ============================================================

-- The original script created this table but never added any entries to it.
-- It is kept here in case other code adds entries later.
local staticPeds = {
    -- Example of the format the original code expected:
    --
    -- {
    --     modelHash = 123456789,
    --     position = vector4(100.0, 200.0, 30.0, 180.0),
    --     scenarioName = "WORLD_HUMAN_SMOKING"
    -- }
}


-- ============================================================
-- WANDERING NPCS
-- ============================================================

local wanderingPeds = {
    {
        -- Centre of the area this NPC should wander around.
        position = vector3(
            1418.1851806641,
            1074.1748046875,
            114.12604522705
        ),

        -- Where the NPC initially appears.
        spawnPosition = vector3(
            1420.8325195312,
            1077.7908935547,
            113.3405380249
        ),

        radius = 5.0,
        modelHash = -1323586730
    },

    {
        position = vector3(
            1418.1851806641,
            1074.1748046875,
            114.12604522705
        ),

        spawnPosition = vector3(
            1420.7302246094,
            1071.0461425781,
            113.33385467529
        ),

        radius = 5.0,
        modelHash = -1323586730
    },

    {
        position = vector3(
            1418.1851806641,
            1074.1748046875,
            114.12604522705
        ),

        spawnPosition = vector3(
            1417.4418945312,
            1067.5789794922,
            113.33403015137
        ),

        radius = 5.0,
        modelHash = -1323586730
    },

    {
        position = vector3(
            1418.3645019531,
            1095.5473632812,
            114.34324645996
        ),

        spawnPosition = vector3(
            1419.5729980469,
            1094.3645019531,
            113.32888793945
        ),

        radius = 5.0,
        modelHash = -50684386
    },

    {
        position = vector3(
            1418.3645019531,
            1095.5473632812,
            114.34324645996
        ),

        spawnPosition = vector3(
            1419.3063964844,
            1098.4047851562,
            113.39669036865
        ),

        radius = 5.0,
        modelHash = -50684386
    },

    {
        position = vector3(
            1418.3645019531,
            1095.5473632812,
            114.34324645996
        ),

        spawnPosition = vector3(
            1415.75390625,
            1097.5383300781,
            113.36410522461
        ),

        radius = 5.0,
        modelHash = -50684386
    },

    {
        position = vector3(
            1464.5655517578,
            1137.9475097656,
            114.32263183594
        ),

        spawnPosition = vector3(
            1464.5655517578,
            1137.9475097656,
            114.32263183594
        ),

        radius = 2.0,
        modelHash = 1886354844
    }
}


-- ============================================================
-- SPAWN STATIC NPCS
-- ============================================================

-- This currently does nothing because staticPeds is empty.
--
-- It is still kept because the original script had support for this type
-- of NPC.
for _, pedData in pairs(staticPeds) do
    CMG.createDynamicPed(
        pedData.modelHash,

        -- A static entry is expected to use vector4:
        -- X, Y, Z + W/heading.
        pedData.position.xyz,
        pedData.position.w,

        true,   -- preserved from original createDynamicPed call
        nil,
        nil,
        100.0,
        nil,

        function(ped)
            -- If this NPC has a scenario configured, start it.
            if pedData.scenarioName then
                TaskStartScenarioAtPosition(
                    ped,
                    pedData.scenarioName,
                    pedData.position.x,
                    pedData.position.y,
                    pedData.position.z,
                    pedData.position.w,
                    -1,
                    false,
                    true
                )
            end
        end
    )
end


-- ============================================================
-- SPAWN WANDERING NPCS
-- ============================================================

for _, pedData in pairs(wanderingPeds) do
    CMG.createDynamicPed(
        pedData.modelHash,
        pedData.spawnPosition,
        0.0,

        true,   -- preserved from original createDynamicPed call
        nil,
        nil,
        100.0,
        nil,

        function(ped)
            -- The dynamic-ped helper may initially freeze the NPC.
            -- The original script explicitly unfreezes it.
            FreezeEntityPosition(ped, false)

            -- Make sure the NPC can collide with the world.
            SetEntityCollision(ped, true, true)

            -- Tell the NPC to wander around its configured centre point.
            TaskWanderInArea(
                ped,

                pedData.position.x,
                pedData.position.y,
                pedData.position.z,

                pedData.radius,

                -- Movement speed.
                2.0,

                -- The original script used a random value from 5 to 10.
                math.random(5, 10) + 0.0
            )
        end
    )
end