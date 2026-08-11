--[[
    LEVEL 1 BEGINNER GUIDE — Cctv
    ==================================

    File: cmg/prod/client/core/cl_cctv.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Cctv feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 11
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_cctv

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
    CCTV / Security Camera Client
    =============================

    Beginner overview:
      * Each configured location has a camera control box ("camBox").
      * Stand at the box and press E to open its first camera.
      * Left / Right moves between cameras.
      * Backspace closes CCTV.
      * Some cameras can rotate with movement controls.
      * The player's ped is frozen while watching CCTV.
      * A scanline timecycle and optional hidden radar make the view feel
        like a security camera.

    Config pieces used here:
      cctvConfig.Locations[index].camBox
          .position
          .label

      cctvConfig.Locations[index].cameras[n]
          .x .y .z
          .r          -- vector3 camera rotation
          .label
          .canRotate

    The helper function names ChangeSecurityCamera / CloseSecurityCamera /
    CreateInstuctionScaleform are kept global because other client files may
    call them.
]]

local activeLocationIndex = 0
local activeCameraIndex = 0
local securityCamera = 0

local cctvConfig = CMG.loadModule("cfg/cfg_cctv")
if not cctvConfig then
    return
end


-- ============================================================
-- SMALL NUI HELPERS
-- ============================================================

-- === HELPER FUNCTION: showCameraOverlay(location, camera) ===
local function showCameraOverlay(location, camera)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        type = "enablecam",
        label = camera.label,
        box = location.camBox.label
    })
end

-- === HELPER FUNCTION: updateCameraOverlay(camera) ===
local function updateCameraOverlay(camera)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        type = "updatecam",
        label = camera.label
    })
end

-- === HELPER FUNCTION: hideCameraOverlay() ===
local function hideCameraOverlay()
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        type = "disablecam"
    })
end


-- ============================================================
-- CAMERA CREATION / CLOSING
-- ============================================================

-- === HELPER FUNCTION: ChangeSecurityCamera(x, y, z, rotation) ===
function ChangeSecurityCamera(x, y, z, rotation)
    if securityCamera ~= 0 then
        DestroyCam(
            securityCamera,
            false
        )

        securityCamera = 0
    end

    local camera =
        CreateCam(
            "DEFAULT_SCRIPTED_CAMERA",
            true
        )

    SetCamCoord(
        camera,
        x,
        y,
        z
    )

    SetCamRot(
        camera,
        rotation.x,
        rotation.y,
        rotation.z,
        2
    )

    RenderScriptCams(
        true,
        false,
        0,
        true,
        true
    )

    Citizen.Wait(250)

    securityCamera = camera
end


-- === HELPER FUNCTION: CloseSecurityCamera() ===
function CloseSecurityCamera()
    if securityCamera ~= 0 then
        DestroyCam(
            securityCamera,
            false
        )
    end

    RenderScriptCams(
        false,
        false,
        1,
        true,
        true
    )

    securityCamera = 0

    ClearTimecycleModifier()

    local playerPed =
        GetPlayerPed(PlayerId())

    SetFocusEntity(playerPed)

    if cctvConfig.HideRadar then
        DisplayRadar(true)
    end

    FreezeEntityPosition(
        playerPed,
        false
    )

    activeLocationIndex = 0
    activeCameraIndex = 0
end


-- Called when the player leaves a CCTV control-box area.

-- === HELPER FUNCTION: leaveCameraBox() ===
local function leaveCameraBox()
    CloseSecurityCamera()
    hideCameraOverlay()
end


-- ============================================================
-- SWITCH TO ONE CONFIGURED CAMERA
-- ============================================================

-- === HELPER FUNCTION: useConfiguredCamera(cameraIndex) ===
local function useConfiguredCamera(cameraIndex)
    local location =
        cctvConfig.Locations[
            activeLocationIndex
        ]

    if not location then
        return
    end

    local camera =
        location.cameras[cameraIndex]

    if not camera then
        return
    end

    SetFocusPosAndVel(
        camera.x,
        camera.y,
        camera.z,
        camera.x,
        camera.y,
        camera.z
    )

    ChangeSecurityCamera(
        camera.x,
        camera.y,
        camera.z,
        camera.r
    )

    updateCameraOverlay(camera)

    activeCameraIndex =
        cameraIndex
end


-- ============================================================
-- CCTV BOX TICK
-- ============================================================

-- === HELPER FUNCTION: cctvBoxTick(areaData) ===
local function cctvBoxTick(areaData)
    local locationIndex =
        areaData.index

    local location =
        cctvConfig.Locations[
            locationIndex
        ]

    if not location then
        return
    end

    local camBox =
        location.camBox

    -- Show the E prompt only when no camera is active.
    if securityCamera == 0 then
        CMG.DrawText3D(
            vector3(
                camBox.position.x,
                camBox.position.y,
                camBox.position.z
            ),
            tostring(
                "~o~[E]~w~ Use " ..
                camBox.label ..
                " Cameras"
            ),
            0.35
        )
    end

    -- --------------------------------------------------------
    -- OPEN CCTV
    -- --------------------------------------------------------

    if IsControlJustPressed(1, 38)
        and securityCamera == 0 then

        local firstCamera =
            location.cameras[1]

        if not firstCamera then
            return
        end

        activeLocationIndex =
            locationIndex

        activeCameraIndex = 1

        SetFocusPosAndVel(
            firstCamera.x,
            firstCamera.y,
            firstCamera.z,
            firstCamera.x,
            firstCamera.y,
            firstCamera.z
        )

        ChangeSecurityCamera(
            firstCamera.x,
            firstCamera.y,
            firstCamera.z,
            firstCamera.r
        )

        showCameraOverlay(
            location,
            firstCamera
        )

        FreezeEntityPosition(
            GetPlayerPed(PlayerId()),
            true
        )
    end

    if securityCamera == 0 then
        return
    end

    -- --------------------------------------------------------
    -- CAMERA VIEW UI / EFFECT
    -- --------------------------------------------------------

    local instructional =
        CreateInstuctionScaleform(
            "instructional_buttons"
        )

    DrawScaleformMovieFullscreen(
        instructional,
        255,
        255,
        255,
        255,
        0
    )

    SetTimecycleModifier(
        "scanline_cam_cheap"
    )

    SetTimecycleModifierStrength(2.0)

    if cctvConfig.HideRadar then
        DisplayRadar(false)
    end

    -- --------------------------------------------------------
    -- BACKSPACE = CLOSE
    -- --------------------------------------------------------

    if IsControlJustPressed(
        1,
        194
    ) then
        CloseSecurityCamera()
        hideCameraOverlay()
        return
    end

    -- --------------------------------------------------------
    -- LEFT = PREVIOUS CAMERA
    -- --------------------------------------------------------

    if IsControlJustPressed(
        1,
        174
    ) then
        local previousIndex

        if activeCameraIndex == 1 then
            previousIndex =
                #location.cameras
        else
            previousIndex =
                activeCameraIndex - 1
        end

        useConfiguredCamera(
            previousIndex
        )
    end

    -- --------------------------------------------------------
    -- RIGHT = NEXT CAMERA
    -- --------------------------------------------------------

    if IsControlJustPressed(
        1,
        175
    ) then
        local nextIndex

        if activeCameraIndex
            == #location.cameras then
            nextIndex = 1
        else
            nextIndex =
                activeCameraIndex + 1
        end

        useConfiguredCamera(nextIndex)
    end

    -- --------------------------------------------------------
    -- OPTIONAL CAMERA ROTATION
    -- --------------------------------------------------------

    local currentCamera =
        location.cameras[
            activeCameraIndex
        ]

    if not currentCamera
        or not currentCamera.canRotate then
        return
    end

    local rotation =
        GetCamRot(
            securityCamera,
            2
        )

    -- W / S changes pitch.
    if IsControlPressed(1, 32)
        and rotation.x <= 50.0 then

        SetCamRot(
            securityCamera,
            rotation.x + 0.7,
            0.0,
            rotation.z,
            2
        )
    end

    if IsControlPressed(1, 33)
        and rotation.x >= -50.0 then

        SetCamRot(
            securityCamera,
            rotation.x - 0.7,
            0.0,
            rotation.z,
            2
        )
    end

    -- A / D changes yaw.
    if IsControlPressed(1, 34) then
        SetCamRot(
            securityCamera,
            rotation.x,
            0.0,
            rotation.z + 0.7,
            2
        )
    end

    if IsControlPressed(1, 35) then
        SetCamRot(
            securityCamera,
            rotation.x,
            0.0,
            rotation.z - 0.7,
            2
        )
    end
end


-- ============================================================
-- CREATE ALL CCTV CONTROL BOX AREAS
-- ============================================================

for index, location
    in pairs(cctvConfig.Locations) do

    CMG.createArea(
        "cctv_" .. tostring(index),
        location.camBox.position,
        1.0,
        3.0,
        function()
            -- No special enter action.
        end,
        leaveCameraBox,
        cctvBoxTick,
        {index = index}
    )
end


-- ============================================================
-- INSTRUCTIONAL BUTTON SCALEFORM
-- ============================================================

-- Keep the original misspelt global name because another file may refer to it.

-- === HELPER FUNCTION: CreateInstuctionScaleform(scaleformName) ===
function CreateInstuctionScaleform(scaleformName)
    local scaleform =
        RequestScaleformMovie(
            scaleformName
        )

    while not HasScaleformMovieLoaded(
        scaleform
    ) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(
        scaleform,
        "CLEAR_ALL"
    )
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(
        scaleform,
        "SET_CLEAR_SPACE"
    )
    ScaleformMovieMethodAddParamInt(200)
    EndScaleformMovieMethod()

    -- Slot 0: next camera.
    BeginScaleformMovieMethod(
        scaleform,
        "SET_DATA_SLOT"
    )
    ScaleformMovieMethodAddParamInt(0)
    InstructionButton(
        GetControlInstructionalButton(
            1,
            175,
            true
        )
    )
    InstructionButtonMessage(
        "Go Forward"
    )
    EndScaleformMovieMethod()

    -- Slot 1: close.
    BeginScaleformMovieMethod(
        scaleform,
        "SET_DATA_SLOT"
    )
    ScaleformMovieMethodAddParamInt(1)
    InstructionButton(
        GetControlInstructionalButton(
            1,
            194,
            true
        )
    )
    InstructionButtonMessage(
        "Close Camera"
    )
    EndScaleformMovieMethod()

    -- Slot 2: previous camera.
    BeginScaleformMovieMethod(
        scaleform,
        "SET_DATA_SLOT"
    )
    ScaleformMovieMethodAddParamInt(2)
    InstructionButton(
        GetControlInstructionalButton(
            1,
            174,
            true
        )
    )
    InstructionButtonMessage(
        "Go Back"
    )
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(
        scaleform,
        "DRAW_INSTRUCTIONAL_BUTTONS"
    )
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(
        scaleform,
        "SET_BACKGROUND_COLOUR"
    )

    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(80)

    EndScaleformMovieMethod()

    return scaleform
end


-- === HELPER FUNCTION: InstructionButton(buttonText) ===
function InstructionButton(buttonText)
    ScaleformMovieMethodAddParamPlayerNameString(
        buttonText
    )
end


-- === HELPER FUNCTION: InstructionButtonMessage(message) ===
function InstructionButtonMessage(message)
    BeginTextCommandScaleformString(
        "STRING"
    )

    AddTextComponentSubstringKeyboardDisplay(
        message
    )

    EndTextCommandScaleformString()
end
