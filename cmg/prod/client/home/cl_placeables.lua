--[[
    Home Placeable Objects - Readable Client Script
    ===============================================

    Reconstructed from decompiled Lua.

    Beginner glossary:
      prop / object    = a piece of furniture or another GTA map object
      entity           = the actual spawned object inside the game world
      modelHash        = GTA's identifier for the object model
      position         = X/Y/Z world coordinates
      rotation         = X/Y/Z rotation of the object
      preview          = temporary placement/deletion mode before confirming
      server event     = a message sent between this client and the FiveM server

    IMPORTANT:
      Hashed event names such as "41269ceaa6" and "cd012390a5" are
      intentionally unchanged. The server probably expects those exact names.

    Stored placeable format:
      placedObjects[index] = {
          modelHash,
          position,
          rotation,
          entity,
          stateFlag
      }

    The exact purpose of stateFlag cannot be proven from this client file alone,
    so it is deliberately given a neutral name.
]]


-- ============================================================
-- CONFIGURATION / STATE
-- ============================================================

local homeCustomisationConfig =
    CMG.loadModule("cfg/cfg_homecustomisation")

-- Every home prop currently spawned on this client.
local placedObjects = {}

-- Used by the menu so opening/hovering the same placeable repeatedly
-- does not constantly restart placement preview mode.
local selectedPlaceableIndex = 0

-- Supplied by the server when it sends the current list of props.
-- Its exact meaning is not defined in this client script.
local placeableStateFlag = false


-- ============================================================
-- SPAWN ONE PLACEABLE OBJECT
-- ============================================================

local function spawnPlaceableObject(
    modelHash,
    position,
    rotation,
    stateFlag
)
    -- Some events can clear the table completely, so recreate it if needed.
    if not placedObjects then
        placedObjects = {}
    end

    -- Make sure the GTA object model is loaded into memory.
    CMG.loadModel(modelHash)

    -- Spawn a LOCAL object.
    --
    -- The three false values are preserved from the original code.
    local entity = CreateObjectNoOffset(
        modelHash,
        position.x,
        position.y,
        position.z,
        false,
        false,
        false
    )

    -- GTA no longer needs us to keep the model explicitly loaded.
    SetModelAsNoLongerNeeded(modelHash)

    -- Furniture should stay exactly where it was placed.
    FreezeEntityPosition(entity, true)

    SetEntityRotation(
        entity,
        rotation.x,
        rotation.y,
        rotation.z,
        2,
        false
    )

    -- Keep all information about this prop together.
    table.insert(
        placedObjects,
        {
            modelHash, -- [1]
            position,  -- [2]
            rotation,  -- [3]
            entity,    -- [4]
            stateFlag  -- [5]
        }
    )
end


-- ============================================================
-- DELETE LOCAL PLACEABLES
-- ============================================================

local function deleteAllLocalPlaceables()
    if not placedObjects then
        return
    end

    for _, objectData in pairs(placedObjects) do
        local entity = objectData[4]

        if entity then
            DeleteEntity(entity)
        end
    end
end


-- ============================================================
-- SERVER: REPLACE THE COMPLETE PLACEABLE LIST
-- ============================================================

-- Parameters:
--   serverObjects = table of saved placeables
--   stateFlag     = server-owned context/state value
RegisterNetEvent(
    "41269ceaa6",
    function(serverObjects, stateFlag)
        -- Remove the old locally-created furniture first.
        deleteAllLocalPlaceables()
        placedObjects = nil

        -- Recreate everything from the server's saved list.
        for _, objectData in pairs(serverObjects) do
            spawnPlaceableObject(
                objectData[1], -- model
                objectData[2], -- position
                objectData[3], -- rotation
                objectData[4]  -- saved state
            )
        end

        placeableStateFlag = stateFlag
    end
)


-- ============================================================
-- SERVER: SPAWN ONE NEW PLACEABLE
-- ============================================================

-- This event is intentionally connected directly to the same spawn helper.
RegisterNetEvent(
    "891add160c",
    spawnPlaceableObject
)


-- ============================================================
-- SERVER: CLEAR ALL PLACEABLES
-- ============================================================

RegisterNetEvent("04d1477f6f", function()
    deleteAllLocalPlaceables()
    placedObjects = nil
end)


-- ============================================================
-- SERVER: REMOVE ONE PLACEABLE BY INDEX
-- ============================================================

RegisterNetEvent("5823396a12", function(index)
    if not placedObjects or not placedObjects[index] then
        return
    end

    local entity = placedObjects[index][4]

    if entity then
        DeleteEntity(entity)
    end

    table.remove(placedObjects, index)
end)


-- ============================================================
-- FIND THE INDEX OF A SPAWNED ENTITY
-- ============================================================

function CMG.getHomePlaceableIndex(wantedEntity)
    if not placedObjects then
        return -1
    end

    for index, objectData in pairs(placedObjects) do
        if objectData[4] == wantedEntity then
            return index
        end
    end

    return -1
end


-- ============================================================
-- RETURN ALL CURRENT PLACEABLE OBJECT DATA
-- ============================================================

function CMG.getHomePlaceableObjects()
    return placedObjects
end


-- ============================================================
-- REQUEST DELETION OF A SPECIFIC ENTITY
-- ============================================================

local function requestPlaceableDeletion(entity)
    local index = CMG.getHomePlaceableIndex(entity)

    if index <= 0 then
        return
    end

    TriggerServerEvent(
        "5823396a12",
        index,
        GetEntityCoords(entity, true),
        placeableStateFlag
    )
end


-- ============================================================
-- DELETE THE CLOSEST PROP
-- ============================================================

local function deleteClosestPlaceable()
    if not placedObjects then
        return
    end

    local playerCoords = CMG.getPlayerCoords()

    local closestEntity = 0
    local closestDistance = 5.0

    -- Search through every spawned home prop.
    for _, objectData in pairs(placedObjects) do
        local entity = objectData[4]

        if entity then
            local objectCoords =
                GetEntityCoords(entity, true)

            local distance =
                #(playerCoords - objectCoords)

            if distance < closestDistance then
                closestDistance = distance
                closestEntity = entity
            end
        end
    end

    if closestEntity ~= 0 then
        requestPlaceableDeletion(closestEntity)
    end
end


-- ============================================================
-- ENTER DELETE-PREVIEW MODE
-- ============================================================

local function enterDeletionPreview()
    local entities = {}

    if placedObjects then
        for _, objectData in pairs(placedObjects) do
            table.insert(
                entities,
                objectData[4]
            )
        end
    end

    -- CMG's preview helper handles mouse selection.
    -- When the user chooses an entity, request its deletion.
    CMG.enterHomeDeletionPreview(
        entities,
        function(selectedEntity)
            requestPlaceableDeletion(
                selectedEntity
            )
        end
    )
end


-- ============================================================
-- START PLACING A NEW PROP
-- ============================================================

local function startPlaceablePreview(
    placeableIndex,
    placeableConfig
)
    -- Config layout used by the original script:
    --   [1] = display name
    --   [2] = model
    --   [3] = price

    local model = placeableConfig[2]

    CMG.enterHomePlacementPreview(
        model,

        function(position, rotation)
            -- Ask the server to buy/save/place this object.
            TriggerServerEvent(
                "cd012390a5",
                placeableIndex,
                position,
                rotation
            )
        end
    )
end


-- ============================================================
-- HOME CUSTOMISATION MENU
-- ============================================================

CMG.registerHomeCustomisationButtons(
    "Placeable Objects",

    function()
        -- ----------------------------------------------------
        -- ENTER DELETE MODE
        -- ----------------------------------------------------

        RageUI.ButtonWithStyle(
            "~r~Enter Delete Mode",
            "",
            {
                RightLabel = "→→→"
            },
            true,

            function(_, _, selected)
                if selected then
                    enterDeletionPreview()
                end
            end
        )


        -- ----------------------------------------------------
        -- DELETE CLOSEST PROP
        --
        -- Only shown while deletion preview is active.
        -- ----------------------------------------------------

        if CMG.inHomeDeletionPreview() then
            RageUI.ButtonWithStyle(
                "~r~Delete Closest Prop",
                "For those props that refuse to be selected (no confirmation). Use the mouse buttons to select and delete instead.",
                {
                    RightLabel = "→→→"
                },
                true,

                function(_, _, selected)
                    if selected then
                        deleteClosestPlaceable()
                    end
                end
            )
        end


        -- ----------------------------------------------------
        -- RESTORE BROKEN PLACEABLE PROPS
        -- ----------------------------------------------------

        if not placeableStateFlag then
            RageUI.ButtonWithStyle(
                "~r~Restore Placeable Props",
                "Used to restore broken props after a robbery or raid.",
                {
                    RightLabel = "→→→"
                },
                true,

                function(_, _, selected)
                    if selected then
                        TriggerServerEvent(
                            "aa0e6fb69e"
                        )
                    end
                end
            )


            -- ------------------------------------------------
            -- AVAILABLE PLACEABLE OBJECTS
            -- ------------------------------------------------

            for index, placeableConfig in pairs(
                homeCustomisationConfig.placeables
            ) do
                local displayName =
                    placeableConfig[1]

                local price =
                    placeableConfig[3]

                RageUI.ButtonWithStyle(
                    displayName,
                    "",
                    {
                        RightLabel =
                            "£" ..
                            getMoneyStringFormatted(price)
                    },
                    true,

                    function(_, active, _)
                        -- RageUI calls this while the button is active/hovered.
                        --
                        -- Only restart the preview when moving to a
                        -- DIFFERENT placeable in the list.
                        if active
                            and selectedPlaceableIndex ~= index then

                            selectedPlaceableIndex = index

                            startPlaceablePreview(
                                index,
                                placeableConfig
                            )
                        end
                    end
                )
            end
        end
    end
)


-- ============================================================
-- RESOURCE CLEANUP
-- ============================================================

-- If this resource stops/restarts, delete all locally-created props.
-- Otherwise they could remain floating around until the client reloads.
AddEventHandler(
    "onResourceStop",

    function(resourceName)
        if GetCurrentResourceName() ~= resourceName then
            return
        end

        deleteAllLocalPlaceables()
    end
)


-- ============================================================
-- SERVER: UPDATE ONE PROP'S STATE FLAG
-- ============================================================

RegisterNetEvent(
    "bb2ff71d8f",

    function(index, newStateFlag)
        if not placedObjects
            or not placedObjects[index] then
            return
        end

        placedObjects[index][5] =
            newStateFlag
    end
)
