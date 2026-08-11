--[[
    LEVEL 1 BEGINNER GUIDE — Selfie
    ====================================

    File: cmg/prod/client/misc/cl_selfie.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Selfie feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
      * Background threads: 1
      * Always-running loops: 0
      * Commands: selfie
      * Incoming network events: lb-phone:toggleHud
      * Local event handlers: none found by static scan
      * Server events sent: 1c88547586
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
    Selfie / Phone Camera
    =====================

    /selfie opens GTA's mobile-phone camera.

    First use:
      * creates the phone
      * activates the mobile camera
      * starts a loop

    While the camera is open:
      BACKSPACE (control 177)
        closes/destroys the phone camera.

      ENTER / phone-select (control 176)
        uses GTA's high-quality-photo API:
          BeginTakeHighQualityPhoto
          GetStatusOfTakeHighQualityPhoto
          SaveHighQualityPhoto
          FreeMemoryForHighQualityPhoto

      /selfie again
        toggles the front-facing camera with CellFrontCamActivate.

    HUD/radar components are hidden while the camera is active.

    This file also contains LB Phone bridge exports used by the framework:
      lbGetCompanyData(callback)
      lbToggleDuty()
      lb-phone:toggleHud(hidden)

    CMG.setCanOpenPhone(enabled) uses a reference counter, allowing several
    independent systems to disable the phone without one system accidentally
    re-enabling it while another still needs it disabled.
]]

local cameraOpen = false

-- Phone type passed to CreateMobilePhone by the original file.
local mobilePhoneType = 0

-- True when front-facing camera is active.
local frontCameraActive = false

-- Kept because the decompiled source used this state before waiting 2.5s on
-- close. It is set by related phone-camera code elsewhere.
local waitAfterClosing = false


-- ============================================================
-- GTA CAMERA NATIVE ALIASES
-- ============================================================

-- === HELPER FUNCTION: CellFrontCamActivate(enabled) ===
local function CellFrontCamActivate(enabled)
    Citizen.InvokeNative(
        2635073306796480568,
        enabled
    )
end

local TakePhoto =
    BeginTakeHighQualityPhoto

local WasPhotoTaken =
    GetStatusOfTakeHighQualityPhoto

local SavePhoto =
    SaveHighQualityPhoto

local ClearPhoto =
    FreeMemoryForHighQualityPhoto


-- ============================================================
-- HELP TEXT
-- ============================================================

-- === HELPER FUNCTION: DisplayHelpText(text) ===
function DisplayHelpText(text)
    BeginTextCommandDisplayHelp(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        text
    )

    EndTextCommandDisplayHelp(
        0,
        false,
        true,
        -1
    )
end


-- ============================================================
-- SELFIE COMMAND
-- ============================================================

RegisterCommand(
    "selfie",
    function()
        DisplayHelpText(
            "Backspace to close camera, /selfie again to take a selfie"
        )

        -- Camera is already open: /selfie flips front/back camera.
        if cameraOpen then
            frontCameraActive =
                not frontCameraActive

            CellFrontCamActivate(
                frontCameraActive
            )

            return
        end

        CreateMobilePhone(
            mobilePhoneType
        )

        CellCamActivate(
            true,
            true
        )

        cameraOpen = true

        while cameraOpen do
            -- Backspace closes.
            if IsControlJustPressed(
                0,
                177
            ) then

                DestroyMobilePhone()

                cameraOpen = false

                CellCamActivate(
                    false,
                    false
                )

                if waitAfterClosing then
                    waitAfterClosing =
                        false

                    Citizen.Wait(2500)
                end
            end

            -- Phone select / enter takes a saved high-quality photo.
            if IsControlJustPressed(
                0,
                176
            ) then

                TakePhoto()

                if WasPhotoTaken() then
                    if SavePhoto(-1) then
                        ClearPhoto()
                    end
                end
            end

            for _, componentId
                in ipairs({
                    7,
                    8,
                    9,
                    6,
                    19
                }) do

                HideHudComponentThisFrame(
                    componentId
                )
            end

            HideHudAndRadarThisFrame()

            Wait(0)
        end
    end,
    false
)


-- Clean up any GTA phone object when the resource starts this file.

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    DestroyMobilePhone()
end)


-- ============================================================
-- LB PHONE BUSINESS/DUTY BRIDGE
-- ============================================================

local lbPhoneDuty = false


exports(
    "lbGetCompanyData",
    function(callback)
        callback({
            job = "Business",
            jobLabel = "Business",
            isBoss = false,
            duty = lbPhoneDuty
        })
    end
)


exports(
    "lbToggleDuty",
    function()
        TriggerServerEvent(
            "1c88547586"
        )

        return true
    end
)


RegisterNetEvent(
    "lb-phone:toggleHud",
    function(hidden)
        if hidden then
            CMG.hideAllDisplays(
                "lb-phone"
            )
        else
            CMG.showAllDisplays(
                "lb-phone"
            )
        end
    end
)


-- ============================================================
-- PHONE-ACCESS REFERENCE COUNTER
-- ============================================================

local phoneDisableReferences = 0


-- === HELPER FUNCTION: CMG.setCanOpenPhone(canOpen) ===
function CMG.setCanOpenPhone(canOpen)
    if canOpen then
        if phoneDisableReferences > 0 then
            phoneDisableReferences =
                phoneDisableReferences - 1
        end

        if phoneDisableReferences == 0 then
            if GetResourceState(
                "lb-phone"
            ) == "started" then

                exports["lb-phone"]:ToggleDisabled(
                    false
                )
            end
        else
            print(
                string.format(
                    "Can not setCanOpenPhone(true) as %d other references exist",
                    phoneDisableReferences
                )
            )
        end

        return
    end

    phoneDisableReferences =
        phoneDisableReferences + 1

    if GetResourceState(
        "lb-phone"
    ) == "started" then

        exports["lb-phone"]:ToggleDisabled(
            true
        )
    end
end


-- === HELPER FUNCTION: CMG.canOpenPhone() ===
function CMG.canOpenPhone()
    return
        phoneDisableReferences == 0
end
