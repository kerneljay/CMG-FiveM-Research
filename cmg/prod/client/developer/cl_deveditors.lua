--[[
    LEVEL 1 BEGINNER GUIDE — Deveditors
    ========================================

    File: cmg/prod/client/developer/cl_deveditors.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: developer/admin testing utilities, specifically the Deveditors feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 2b9c7299fb
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
--[[
    READABLE VERSION OF THE DECOMPILED DEVELOPER EDITOR SCRIPT
    ----------------------------------------------------------

    This is a FiveM client-side developer utility.

    Main features:
      1. Edit lists of vector3 / vector4 coordinates.
      2. Place a grid of vehicles between three points.
      3. Edit a 3D bounding box with a free camera.
      4. Spawn and manually position a debug object.
      5. Preview props attached to the player.

    Beginner notes:
      - "vector3(x, y, z)" is a 3D position.
      - "vector4(x, y, z, heading)" is a position plus direction.
      - A "blip" is a marker on the GTA map.
      - A "ped" is a player/NPC character.
      - A "native" is a built-in GTA/FiveM function.
      - RageUI is the menu library used by the developer menu.

    The strange temporaryValue / temporaryValue2 decompiler variable names have been removed.
    The CMG function names and server event hash used by the original script
    are intentionally kept so this can still fit into the same resource.
]]

-- ============================================================================
-- COORDINATE LIST EDITOR
-- ============================================================================

-- The coordinate list currently being edited.
-- It will contain either vector3 values or vector4 values.
local editedCoords = nil

-- Map blips created for editedCoords.
local coordBlips = {}

---Remove old coordinate blips, then recreate them for the current list.

-- === HELPER FUNCTION: refreshCoordinateBlips() ===
local function refreshCoordinateBlips()
    for _, blip in pairs(coordBlips) do
        RemoveBlip(blip)
    end

    table.clear(coordBlips)

    if not editedCoords then
        return
    end

    for _, coords in pairs(editedCoords) do
        local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
        table.insert(coordBlips, blip)
    end
end

---Turn pasted vector3/vector4 text into actual FiveM vectors.
---@param text string
---@param vectorSize number 3 for vector3, 4 for vector4

-- === HELPER FUNCTION: loadCoordinateList(text, vectorSize) ===
local function loadCoordinateList(text, vectorSize)
    -- Accept text such as:
    -- vector3(100.0, 200.0, 30.0)
    -- vector4(100.0, 200.0, 30.0, 90.0)
    local cleanedText = tostring(text or "")
        :gsub("vector4%(", "")
        :gsub("vector3%(", "")
        :gsub("%)", "")
        :gsub(" ", "")

    local newCoords = {}

    -- Read one line at a time.
    for line in cleanedText:gmatch("[^\r\n]+") do
        local parts = stringsplit(line, ",")

        if vectorSize == 3 then
            table.insert(newCoords, vector3(
                tonumber(parts[1]) or 0.0,
                tonumber(parts[2]) or 0.0,
                tonumber(parts[3]) or 0.0
            ))
        elseif vectorSize == 4 then
            table.insert(newCoords, vector4(
                tonumber(parts[1]) or 0.0,
                tonumber(parts[2]) or 0.0,
                tonumber(parts[3]) or 0.0,
                tonumber(parts[4]) or 0.0
            ))
        end
    end

    if #newCoords > 0 then
        editedCoords = newCoords
    else
        editedCoords = nil
    end

    refreshCoordinateBlips()
end


-- ============================================================================
-- VEHICLE GRID POSITION SAVER
-- ============================================================================

-- NPC model placed in the driver's seat of each test vehicle.
local GRID_DRIVER_MODEL = 1641152947

---Wait until the user presses Y (control 246).

-- === HELPER FUNCTION: waitForGridPoint(message) ===
local function waitForGridPoint(message)
    tCMG.notify(message)

    while not IsControlJustPressed(0, 246) do
        Wait(0)
    end
end

---Build a rectangular grid of vehicles from three points picked by the player.
---
---Point 1 = grid origin.
---Point 2 = one direction/edge of the grid.
---Point 3 = the other direction/edge of the grid.
---
---The resulting positions are printed as vector4 values in the client console.
---@param vehicleModel string|number
---@param rowCount number|string
---@param columnCount number|string

-- === HELPER FUNCTION: CMG.gridPositionSaver(vehicleModel, rowCount, columnCount) ===
function CMG.gridPositionSaver(vehicleModel, rowCount, columnCount)
    rowCount = tonumber(rowCount) or 1
    columnCount = tonumber(columnCount) or 1

    if rowCount <= 0 or columnCount <= 0 then
        tCMG.notify("~r~Rows and columns must be greater than 0.")
        return
    end

    waitForGridPoint("pick 1st coord, press Y when done")
    local firstPoint = GetEntityCoords(PlayerPedId())
    local gridHeading = GetEntityHeading(PlayerPedId())

    Wait(250)

    waitForGridPoint("pick 2nd coord, press Y when done")
    local secondPoint = GetEntityCoords(PlayerPedId())

    Wait(250)

    waitForGridPoint("pick 3rd coord, press Y when done")
    local thirdPoint = GetEntityCoords(PlayerPedId())

    local generatedPositions = {}

    -- These vectors describe the two directions of the grid.
    local towardSecondPoint = secondPoint - firstPoint
    local towardThirdPoint = thirdPoint - firstPoint

    CMG.loadModel(GRID_DRIVER_MODEL)

    -- The original decompiled code loops over columns first, then rows.
    for column = 0, columnCount - 1 do
        for row = 0, rowCount - 1 do
            local rowOffset = vector3(
                (towardThirdPoint.x / rowCount) * row,
                (towardThirdPoint.y / rowCount) * row,
                (towardThirdPoint.z / rowCount) * row
            )

            local columnOffset = vector3(
                (towardSecondPoint.x / columnCount) * column,
                (towardSecondPoint.y / columnCount) * column,
                (towardSecondPoint.z / columnCount) * column
            )

            local position = firstPoint + rowOffset + columnOffset

            -- Spawn a local test vehicle.
            local vehicle = CMG.spawnVehicle(
                vehicleModel,
                position.x,
                position.y,
                position.z,
                gridHeading,
                false, -- do not warp player into vehicle
                false,
                false
            )

            if vehicle and vehicle ~= 0 then
                -- Put a local NPC in the driver seat, just like the original.
                CreatePedInsideVehicle(
                    vehicle,
                    0,
                    GRID_DRIVER_MODEL,
                    -1,
                    false,
                    false
                )
            end

            table.insert(generatedPositions, position)
        end
    end

    SetModelAsNoLongerNeeded(GRID_DRIVER_MODEL)

    -- Print positions so a developer can copy them into config/code.
    for _, position in ipairs(generatedPositions) do
        print(
            "vector4(" ..
            position.x .. "," ..
            position.y .. "," ..
            position.z .. "," ..
            gridHeading .. "),"
        )
    end
end


-- ============================================================================
-- 3D BOUNDS EDITOR
-- ============================================================================

-- All temporary state belonging to the bounds editor.
local boundsEditor = {
    moveSpeed = 50.0,
    mouseSpeed = 500.0,

    camera = nil,

    -- Two opposite corners of the box.
    min = nil,
    max = nil,

    -- "NONE", "MIN", or "MAX".
    selectedType = "NONE",

    -- How far the selected point is from the camera.
    selectedDistance = 0.0,

    -- Optional callback called when the editor closes.
    onClose = nil
}

---Create the eight corners of a rectangular box.
---@param min vector3
---@param max vector3
---@return table

-- === HELPER FUNCTION: getBoundsCorners(min, max) ===
local function getBoundsCorners(min, max)
    -- Tiny offset stops faces occupying the exact same plane.
    local epsilon = 0.001

    return {
        vector3(min.x - epsilon, min.y - epsilon, min.z - epsilon),
        vector3(max.x + epsilon, min.y - epsilon, min.z - epsilon),
        vector3(max.x + epsilon, max.y + epsilon, min.z - epsilon),
        vector3(min.x - epsilon, max.y + epsilon, min.z - epsilon),

        vector3(min.x - epsilon, min.y - epsilon, max.z + epsilon),
        vector3(max.x + epsilon, min.y - epsilon, max.z + epsilon),
        vector3(max.x + epsilon, max.y + epsilon, max.z + epsilon),
        vector3(min.x - epsilon, max.y + epsilon, max.z + epsilon)
    }
end

---Turn the 8 box corners into 12 triangles.
---A rectangular box has 6 sides, and each side is drawn with 2 triangles.
---@param corners table
---@return table

-- === HELPER FUNCTION: getBoundsTriangles(corners) ===
local function getBoundsTriangles(corners)
    return {
        { corners[3], corners[2], corners[1] },
        { corners[4], corners[3], corners[1] },

        { corners[5], corners[6], corners[7] },
        { corners[5], corners[7], corners[8] },

        { corners[3], corners[4], corners[7] },
        { corners[8], corners[7], corners[4] },

        { corners[1], corners[2], corners[5] },
        { corners[6], corners[5], corners[2] },

        { corners[2], corners[3], corners[6] },
        { corners[3], corners[7], corners[6] },

        { corners[5], corners[8], corners[4] },
        { corners[5], corners[4], corners[1] }
    }
end

---Draw the triangles that visually show the bounds box.
---@param triangles table

-- === HELPER FUNCTION: drawBoundsTriangles(triangles) ===
local function drawBoundsTriangles(triangles)
    for index, triangle in ipairs(triangles) do
        local a = triangle[1]
        local b = triangle[2]
        local c = triangle[3]

        -- The original changes the colour slightly for every triangle.
        local red = index * 19
        local green = 255 - (index * 19)

        DrawPoly(
            a.x, a.y, a.z,
            b.x, b.y, b.z,
            c.x, c.y, c.z,
            red, green, 0, 200
        )
    end
end

---Draw the complete bounds box.

-- === HELPER FUNCTION: drawBoundsBox(min, max) ===
local function drawBoundsBox(min, max)
    local corners = getBoundsCorners(min, max)
    local triangles = getBoundsTriangles(corners)
    drawBoundsTriangles(triangles)
end

---Move and rotate the free camera.

-- === HELPER FUNCTION: updateBoundsCamera() ===
local function updateBoundsCamera()
    local frameTime = GetFrameTime()

    -- GetCamMatrix returns:
    -- right direction, forward direction, up direction, camera position.
    local right, forward, up, cameraPosition = GetCamMatrix(boundsEditor.camera)
    local cameraRotation = GetCamRot(boundsEditor.camera, 2)

    -- W = move forward.
    DisableControlAction(0, 32, true)
    if IsDisabledControlPressed(0, 32) then
        cameraPosition = cameraPosition + (forward * boundsEditor.moveSpeed * frameTime)
    end

    -- A = move left.
    DisableControlAction(0, 34, true)
    if IsDisabledControlPressed(0, 34) then
        cameraPosition = cameraPosition - (right * boundsEditor.moveSpeed * frameTime)
    end

    -- S = move backwards.
    DisableControlAction(0, 33, true)
    if IsDisabledControlPressed(0, 33) then
        cameraPosition = cameraPosition - (forward * boundsEditor.moveSpeed * frameTime)
    end

    -- D = move right.
    DisableControlAction(0, 35, true)
    if IsDisabledControlPressed(0, 35) then
        cameraPosition = cameraPosition + (right * boundsEditor.moveSpeed * frameTime)
    end

    -- Space = move up.
    DisableControlAction(0, 22, true)
    if IsDisabledControlPressed(0, 22) then
        cameraPosition = cameraPosition + (up * boundsEditor.moveSpeed * frameTime)
    end

    -- Shift = move down in this editor.
    DisableControlAction(0, 21, true)
    if IsDisabledControlPressed(0, 21) then
        cameraPosition = cameraPosition - (up * boundsEditor.moveSpeed * frameTime)
    end

    -- Mouse X rotates camera left/right.
    DisableControlAction(0, 1, true)
    local mouseX = -GetDisabledControlNormal(0, 1)
    local yawChange = mouseX * boundsEditor.mouseSpeed * frameTime
    cameraRotation = cameraRotation + vector3(0.0, 0.0, yawChange)

    -- Mouse Y rotates camera up/down.
    DisableControlAction(0, 2, true)
    local mouseY = -GetDisabledControlNormal(0, 2)
    local pitchChange = mouseY * boundsEditor.mouseSpeed * frameTime

    -- Stop the camera from flipping upside down.
    if math.abs(cameraRotation.x + pitchChange) < 70.0 then
        cameraRotation = cameraRotation + vector3(pitchChange, 0.0, 0.0)
    end

    SetCamCoord(
        boundsEditor.camera,
        cameraPosition.x,
        cameraPosition.y,
        cameraPosition.z
    )

    SetCamRot(
        boundsEditor.camera,
        cameraRotation.x,
        cameraRotation.y,
        cameraRotation.z,
        2
    )
end

---Return true if a world-space point is roughly underneath the screen centre.
---@param point vector3

-- === HELPER FUNCTION: pointIsNearScreenCentre(point) ===
local function pointIsNearScreenCentre(point)
    local visible, screenX, screenY =
        GetScreenCoordFromWorldCoord(point.x, point.y, point.z)

    if not visible then
        return false
    end

    return math.abs(screenX - 0.5) < 0.02
       and math.abs(screenY - 0.5) < 0.05
end

---Allow the user to grab either the MIN or MAX corner with the mouse.

-- === HELPER FUNCTION: updateBoundsSelection() ===
local function updateBoundsSelection()
    -- Left mouse / attack.
    DisableControlAction(0, 24, true)

    if IsDisabledControlPressed(0, 24) then
        if boundsEditor.selectedType == "NONE" then
            -- First try selecting the minimum corner.
            if pointIsNearScreenCentre(boundsEditor.min) then
                boundsEditor.selectedType = "MIN"
                boundsEditor.selectedDistance =
                    #(GetCamCoord(boundsEditor.camera) - boundsEditor.min)
                return
            end

            -- Then try selecting the maximum corner.
            if pointIsNearScreenCentre(boundsEditor.max) then
                boundsEditor.selectedType = "MAX"
                boundsEditor.selectedDistance =
                    #(GetCamCoord(boundsEditor.camera) - boundsEditor.max)
                return
            end
        else
            -- While held, put the selected point directly in front of camera.
            local _, forward, _, cameraPosition = GetCamMatrix(boundsEditor.camera)
            local newPosition =
                cameraPosition + (forward * boundsEditor.selectedDistance)

            if boundsEditor.selectedType == "MIN" then
                boundsEditor.min = newPosition
            else
                boundsEditor.max = newPosition
            end
        end
    else
        -- Mouse released = stop dragging.
        boundsEditor.selectedType = "NONE"
    end

    -- Backspace closes the bounds editor.
    DisableControlAction(0, 177, true)

    if IsDisabledControlPressed(0, 177) then
        CMG.toggleBoundsEditor()
    end
end

---Draw the two draggable corner markers and the box itself.

-- === HELPER FUNCTION: drawBoundsEditor() ===
local function drawBoundsEditor()

    -- === HELPER FUNCTION: drawCornerMarker(position) ===
    local function drawCornerMarker(position)
        DrawMarker(
            28,
            position.x, position.y, position.z,
            0.0, 0.0, 0.0,
            0.0, 0.0, 0.0,
            3.0, 3.0, 3.0,
            0, 0, 255, 255,
            false, false, 2, false,
            nil, nil, false
        )
    end

    drawCornerMarker(boundsEditor.min)
    drawCornerMarker(boundsEditor.max)
    drawBoundsBox(boundsEditor.min, boundsEditor.max)
end

---Called every frame while the bounds editor is open.

-- === HELPER FUNCTION: updateBoundsEditor() ===
local function updateBoundsEditor()
    updateBoundsCamera()
    updateBoundsSelection()
    drawBoundsEditor()
end

---Clean up the camera and restore normal player controls.

-- === HELPER FUNCTION: destroyBoundsCamera() ===
local function destroyBoundsCamera()
    if not boundsEditor.camera then
        return
    end

    SetPlayerControl(PlayerId(), true, 0)
    RenderScriptCams(false, false, 0, false, false)

    SetCamActive(boundsEditor.camera, false)
    DestroyCam(boundsEditor.camera, false)

    boundsEditor.camera = nil
    boundsEditor.selectedType = "NONE"
end

---Finish the editor and keep the current min/max values.

-- === HELPER FUNCTION: finishBoundsEditor() ===
local function finishBoundsEditor()
    if not boundsEditor.camera then
        return
    end

    local min = boundsEditor.min
    local max = boundsEditor.max
    local onClose = boundsEditor.onClose

    boundsEditor.onClose = nil

    destroyBoundsCamera()

    if onClose then
        onClose(min, max)
    else
        -- If no callback was provided, simply show the result.
        CMG.clientPrompt(
            "Bounds",
            tostring(min) .. ", " .. tostring(max),
            function()
            end
        )
    end

    -- The original script hides the developer menu after closing.
    RageUI.Visible(RMenu:Get("devmenu", "main"), false)
end

---Open the bounds editor.
---
---options may contain:
---  options.min     = starting minimum vector
---  options.max     = starting maximum vector
---  options.onClose = function(min, max)
---@param options table|nil

-- === HELPER FUNCTION: startBoundsEditor(options) ===
local function startBoundsEditor(options)
    options = options or {}

    SetPlayerControl(PlayerId(), false, 0)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed, true)

    boundsEditor.camera = CreateCamWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        playerCoords.x,
        playerCoords.y,
        playerCoords.z,
        0.0,
        0.0,
        0.0,
        70.0,
        false,
        0
    )

    SetCamActive(boundsEditor.camera, true)
    RenderScriptCams(true, false, 0, false, false)

    if options.min and options.max then
        boundsEditor.min = options.min
        boundsEditor.max = options.max
    else
        -- Default to a box around/in front of the player.
        boundsEditor.min =
            GetOffsetFromEntityInWorldCoords(playerPed, -10.0, -10.0, 0.0)

        boundsEditor.max =
            GetOffsetFromEntityInWorldCoords(playerPed, 10.0, 10.0, 20.0)
    end

    boundsEditor.selectedType = "NONE"
    boundsEditor.onClose = options.onClose

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        while boundsEditor.camera do
            updateBoundsEditor()
            Citizen.Wait(0)
        end
    end)

    RageUI.Visible(RMenu:Get("devmenu", "main"), false)
end

---True when the bounds editor is currently running.

-- === HELPER FUNCTION: CMG.isBoundsEditorActive() ===
function CMG.isBoundsEditorActive()
    return boundsEditor.camera ~= nil
end

---Close the editor without saving.

-- === HELPER FUNCTION: CMG.cancelBoundsEditor() ===
function CMG.cancelBoundsEditor()
    if not boundsEditor.camera then
        return
    end

    local onClose = boundsEditor.onClose
    boundsEditor.onClose = nil

    destroyBoundsCamera()

    if onClose then
        onClose(nil, nil)
    end
end

---Open the editor and wait until the user closes it.
---
---This helper is useful from code that wants:
---    local min, max = CMG.runBoundsEditor(oldMin, oldMax)
---@return vector3|nil, vector3|nil

-- === HELPER FUNCTION: CMG.runBoundsEditor(min, max) ===
function CMG.runBoundsEditor(min, max)
    if boundsEditor.camera then
        return nil, nil
    end

    local finished = false
    local resultMin = nil
    local resultMax = nil

    startBoundsEditor({
        min = min,
        max = max,

        onClose = function(newMin, newMax)
            resultMin = newMin
            resultMax = newMax
            finished = true
        end
    })

    -- The original function waits here until the editor camera disappears.
    while boundsEditor.camera do
        Wait(0)
    end

    if not finished then
        return nil, nil
    end

    return resultMin, resultMax
end

---Open the editor if closed; finish/save it if already open.

-- === HELPER FUNCTION: CMG.toggleBoundsEditor() ===
function CMG.toggleBoundsEditor()
    if boundsEditor.camera then
        finishBoundsEditor()
    else
        startBoundsEditor()
    end
end


-- ============================================================================
-- DEVELOPER MENU: EDITOR BUTTONS
-- ============================================================================

CMG.registerDevMenuItems("Editors", function()
    RageUI.Button("Vector3 Coords Editor", nil, true, function(_, _, selected)
        if selected then
            CMG.clientPrompt("Enter Vector3 List", "", function(text)
                loadCoordinateList(text, 3)
            end)
        end
    end)

    RageUI.Button("Vector4 Coords Editor", nil, true, function(_, _, selected)
        if selected then
            CMG.clientPrompt("Enter Vector4 List", "", function(text)
                loadCoordinateList(text, 4)
            end)
        end
    end)

    RageUI.Button("Grid Position Saver", nil, true, function(_, _, selected)
        if not selected then
            return
        end

        CMG.clientPrompt("Vehicle Name", "", function(vehicleName)
            Wait(100)

            CMG.clientPrompt("Number of Rows", "", function(rows)
                Wait(100)

                CMG.clientPrompt("Number of Columns", "", function(columns)
                    Wait(100)
                    CMG.gridPositionSaver(vehicleName, rows, columns)
                end)
            end)
        end)
    end)

    RageUI.Button("Bounds Editor", nil, true, function(_, _, selected)
        if selected then
            CMG.toggleBoundsEditor()
        end
    end)

    RageUI.Button("Object Placement", nil, true, function(_, _, selected)
        if selected then
            CMG.clientPrompt("Prop Name", "", function(propName)
                CMG.createDebugObject(propName)
            end)
        end
    end)
end)


-- ============================================================================
-- DEBUG OBJECT PLACEMENT
-- ============================================================================

---Spawn a transparent local prop and let the developer move it precisely.
---
---Controls are the same numeric controls used by the original script.
---@param model string|number

-- === HELPER FUNCTION: CMG.createDebugObject(model) ===
function CMG.createDebugObject(model)
    local modelHash = CMG.loadModel(model)

    if not modelHash then
        return
    end

    local playerCoords = GetEntityCoords(PlayerPedId())

    local object = CreateObject(
        modelHash,
        playerCoords.x,
        playerCoords.y,
        playerCoords.z - 1.0,
        false,
        false,
        true
    )

    SetEntityInvincible(object, true)
    FreezeEntityPosition(object, true)
    SetEntityAlpha(object, 100, false)

    SetModelAsNoLongerNeeded(modelHash)

    local editing = true

    while editing do
        local coords = GetEntityCoords(object)
        local heading = GetEntityHeading(object)

        -- Move Z up.
        if IsControlPressed(0, 121) then
            SetEntityCoordsNoOffset(
                object,
                coords.x,
                coords.y,
                coords.z + 0.01,
                true,
                false,
                false
            )
        end

        -- Move Z down.
        if IsControlPressed(0, 178) then
            SetEntityCoordsNoOffset(
                object,
                coords.x,
                coords.y,
                coords.z - 0.01,
                true,
                false,
                false
            )
        end

        -- Move Y positive.
        if IsControlPressed(0, 111) then
            SetEntityCoordsNoOffset(
                object,
                coords.x,
                coords.y + 0.01,
                coords.z,
                true,
                false,
                false
            )
        end

        -- Move Y negative.
        if IsControlPressed(0, 110) then
            SetEntityCoordsNoOffset(
                object,
                coords.x,
                coords.y - 0.01,
                coords.z,
                true,
                false,
                false
            )
        end

        -- Move X negative.
        if IsControlPressed(0, 108) then
            SetEntityCoordsNoOffset(
                object,
                coords.x - 0.01,
                coords.y,
                coords.z,
                true,
                false,
                false
            )
        end

        -- Move X positive.
        if IsControlPressed(0, 107) then
            SetEntityCoordsNoOffset(
                object,
                coords.x + 0.01,
                coords.y,
                coords.z,
                true,
                false,
                false
            )
        end

        -- Rotate one direction.
        if IsControlPressed(0, 117) then
            SetEntityHeading(object, heading + 0.1)
        end

        -- Rotate the other direction.
        if IsControlPressed(0, 118) then
            SetEntityHeading(object, heading - 0.1)
        end

        -- Backspace = finish editing and leave the object in place.
        if IsControlJustPressed(0, 177) then
            local finalCoords = GetEntityCoords(object)
            local finalHeading = GetEntityHeading(object)

            print(finalCoords, finalHeading)

            SetEntityAlpha(object, 255, false)
            editing = false
        end

        Wait(0)
    end
end


-- ============================================================================
-- COORDINATE EDITOR TICK
-- ============================================================================

---Sort coordinates so the nearest points to the player come first.
---@param coords table
---@return table

-- === HELPER FUNCTION: sortCoordinatesByDistance(coords) ===
local function sortCoordinatesByDistance(coords)
    local playerCoords = CMG.getPlayerCoords()

    table.sort(coords, function(a, b)
        local aPosition = a.xyz or a
        local bPosition = b.xyz or b

        return #(playerCoords - aPosition) < #(playerCoords - bPosition)
    end)

    return coords
end

---Runs every developer-menu tick while a coordinate list is loaded.

-- === HELPER FUNCTION: coordinateEditorTick() ===
local function coordinateEditorTick()
    if not editedCoords then
        return
    end

    -- Sorting means the first 50 points are the 50 closest points.
    sortCoordinatesByDistance(editedCoords)

    for index, coords in pairs(editedCoords) do
        if index <= 50 then
            DrawMarker(
                28,
                coords.x, coords.y, coords.z,
                0.0, 0.0, 0.0,
                0.0, 0.0, 0.0,
                0.5, 0.5, 0.5,
                255, 0, 0, 100,
                false, false, 2, false,
                nil, nil, false
            )
        end
    end

    drawNativeText("Num Vectors: " .. tostring(#editedCoords))

    drawNativeNotification([[
Press ~INPUT_CONTEXT~ to place
Press ~INPUT_RELOAD~ to delete
Press ~INPUT_DETONATE~ to save file]])

    -- E / INPUT_CONTEXT: add the player's current coordinates.
    if IsControlJustPressed(0, 51) then
        local playerCoords = CMG.getPlayerCoords()

        -- Keep the same vector type as the existing list.
        if type(editedCoords[1]) == "vector3" then
            table.insert(editedCoords, playerCoords)
        else
            table.insert(editedCoords, vector4(
                playerCoords.x,
                playerCoords.y,
                playerCoords.z,
                GetEntityHeading(PlayerPedId())
            ))
        end

        refreshCoordinateBlips()
    end

    -- R / INPUT_RELOAD: remove the final coordinate.
    if IsControlJustPressed(0, 45) then
        table.remove(editedCoords, #editedCoords)
        refreshCoordinateBlips()
    end

    -- G / INPUT_DETONATE: send the list to the server to be saved.
    if IsControlJustPressed(0, 47) then
        -- Beginner: sends the "2b9c7299fb" event to the server.
        TriggerServerEvent("2b9c7299fb", editedCoords)

        -- This matches the original behaviour.
        -- It stops the editor after sending the list.
        editedCoords = nil
    end
end

CMG.registerDevMenuThread("Coords Editor", coordinateEditorTick)


-- ============================================================================
-- PROP ATTACHMENT / PROP PLACEMENT EDITOR
-- ============================================================================

-- Position choices: -5.00 through +5.00 in 0.01 steps.
local positionValues = {}

for value = -500, 500 do
    table.insert(positionValues, value / 100.0)
end

-- Rotation choices: -360 through +360 degrees.
local rotationValues = {}

for value = -360, 360 do
    table.insert(rotationValues, value)
end

-- Current prop-placement settings.
local propName = ""
local previewProp = 0

-- These are LIST INDICES, not actual position/rotation numbers.
-- The unusual defaults are preserved from the decompiled script.
local posXIndex = 500
local posYIndex = 500
local posZIndex = 500

local rotXIndex = 360
local rotYIndex = 360
local rotZIndex = 360

---Spawn a prop and attach it to a bone on the player's ped.
---@param modelName string
---@param boneId number
---@param posX number
---@param posY number
---@param posZ number
---@param rotX number
---@param rotY number
---@param rotZ number
---@return number
local function createAttachedProp(
    modelName,
    boneId,
    posX,
    posY,
    posZ,
    rotX,
    rotY,
    rotZ
)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    local loadedModel = CMG.loadModel(modelName)

    if not loadedModel then
        return 0
    end

    -- CMG.loadModel normally returns the model hash.
    local modelHash = loadedModel

    local object = CreateObject(
        modelHash,
        playerCoords.x,
        playerCoords.y,
        playerCoords.z + 0.2,
        false,
        true,
        true
    )

    AttachEntityToEntity(
        object,
        playerPed,
        GetPedBoneIndex(playerPed, boneId),
        posX,
        posY,
        posZ,
        rotX,
        rotY,
        rotZ,
        true,
        true,
        false,
        true,
        1,
        true
    )

    SetModelAsNoLongerNeeded(modelHash)

    return object
end

---Delete the old preview and create a new one using the menu values.

-- === HELPER FUNCTION: refreshAttachedPropPreview() ===
local function refreshAttachedPropPreview()
    if previewProp and previewProp ~= 0 then
        DeleteEntity(previewProp)
        previewProp = 0
    end

    if not propName or propName == "" then
        return
    end

    previewProp = createAttachedProp(
        propName,
        60309,
        positionValues[posXIndex],
        positionValues[posYIndex],
        positionValues[posZIndex],
        rotationValues[rotXIndex],
        rotationValues[rotYIndex],
        rotationValues[rotZIndex]
    )
end

---Small helper so the six RageUI.List callbacks do not contain the same
---30 lines of duplicated decompiled code.

-- === HELPER FUNCTION: handlePlacementListChange(isActive) ===
local function handlePlacementListChange(isActive)
    if isActive then
        refreshAttachedPropPreview()
    end
end

CMG.registerDevMenuItems("Editors/Prop Placement", function()
    RageUI.ButtonWithStyle(
        "Prop Name: " .. propName,
        "",
        {},
        true,
        function(_, _, selected)
            if selected then
                CMG.clientPrompt("Prop Name: ", "", function(value)
                    propName = value or ""
                end)
            end
        end
    )

    RageUI.List(
        "Pos X",
        positionValues,
        posXIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            posXIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )

    RageUI.List(
        "Pos Y",
        positionValues,
        posYIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            posYIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )

    RageUI.List(
        "Pos Z",
        positionValues,
        posZIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            posZIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )

    RageUI.List(
        "Rot X",
        rotationValues,
        rotXIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            rotXIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )

    RageUI.List(
        "Rot Y",
        rotationValues,
        rotYIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            rotYIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )

    RageUI.List(
        "Rot Z",
        rotationValues,
        rotZIndex,
        nil,
        {},
        true,
        function(_, active, _, index)
            rotZIndex = index
            handlePlacementListChange(active)
        end,
        function()
        end
    )
end)
