--[[
    Home Door Peephole
    ==================

    Config: cfg/homes

    Homes can buy a door peephole for £50,000.

    Once owned, the home-exit menu receives:
      "View Peephole"

    Viewing:
      * creates a scripted camera at the home's outside entry point
      * hides normal HUD/displays
      * prevents the exit menu being forced open
      * disables normal controls
      * BACKSPACE exits
      * when editing rotation, horizontal mouse movement rotates the camera

    Home-customisation menu:
      no peephole -> "Purchase" (£50,000)
      owned       -> "Edit Rotation"

    Server events:
      65628adf18(heading) -> peephole now exists / set its heading
      97c2f3afb4          -> remove peephole
      12558d4fd3          -> purchase request
      536b0723e3(heading) -> save edited rotation

    Hash-looking event names are deliberately unchanged.
]]

local homesConfig =
    CMG.loadModule(
        "cfg/homes"
    )

local peepholeHeading = nil
local peepholeCamera = nil

local editingRotation = false


-- ============================================================
-- CLOSE CAMERA
-- ============================================================

local function closePeephole()
    if not peepholeCamera then
        return
    end

    CMG.showAllDisplays(
        "peephole"
    )

    CMG.setHomeExitForcesOpenMenu(
        true
    )

    RenderScriptCams(
        false,
        false,
        0,
        false,
        false
    )

    SetCamActive(
        peepholeCamera,
        false
    )

    DestroyCam(
        peepholeCamera,
        false
    )

    peepholeCamera = nil

    if editingRotation then
        TriggerServerEvent(
            "536b0723e3",
            peepholeHeading
        )
    end

    editingRotation = false
end


-- ============================================================
-- OPEN CAMERA
-- ============================================================

local function openPeephole()
    assert(
        peepholeHeading,
        "Peephole heading is required to enter camera"
    )

    local _, homeId =
        CMG.isInHouse()

    local home =
        homesConfig.homes[
            homeId
        ]

    if not home then
        return
    end

    local entryPoint =
        home.entry_point

    peepholeCamera =
        CreateCamWithParams(
            "DEFAULT_SCRIPTED_CAMERA",
            entryPoint[1],
            entryPoint[2],
            entryPoint[3] + 0.5,
            0.0,
            0.0,
            peepholeHeading,
            165.0,
            true,
            2
        )

    RenderScriptCams(
        true,
        false,
        0,
        false,
        false
    )

    CMG.hideAllDisplays(
        "peephole"
    )

    CMG.setHomeExitForcesOpenMenu(
        false
    )

    RageUI.CloseAll()

    while peepholeCamera do
        DisableAllControlActions(0)

        -- Back / ESC.
        if IsDisabledControlJustReleased(
            0,
            202
        ) then
            closePeephole()
        end

        if editingRotation
            and peepholeCamera then

            local mouseX =
                GetDisabledControlNormal(
                    0,
                    1
                )

            peepholeHeading =
                peepholeHeading
                + GetFrameTime()
                    * mouseX
                    * -150.0

            if peepholeHeading > 360.0 then
                peepholeHeading = 0.0

            elseif peepholeHeading < 0.0 then
                peepholeHeading = 360.0
            end

            SetCamRot(
                peepholeCamera,
                0.0,
                0.0,
                peepholeHeading,
                2
            )
        end

        Citizen.Wait(0)
    end
end


-- ============================================================
-- HOME CUSTOMISATION BUTTON
-- ============================================================

CMG.registerHomeCustomisationButtons(
    "Door Peephole",
    function()
        RageUI.Separator(
            "~y~Allows you to view through your door"
        )

        RageUI.Separator(
            "~y~This can be accessed by the exit"
        )

        if peepholeHeading then
            RageUI.ButtonWithStyle(
                "Edit Rotation",
                "",
                {RightLabel = "→→→"},
                true,
                function(_, _, selected)
                    if selected then
                        editingRotation =
                            true

                        Citizen.CreateThread(
                            openPeephole
                        )
                    end
                end
            )
        else
            RageUI.ButtonWithStyle(
                "Purchase",
                "",
                {RightLabel = "£50,000"},
                true,
                function(_, _, selected)
                    if selected then
                        TriggerServerEvent(
                            "12558d4fd3"
                        )
                    end
                end
            )
        end
    end
)


-- ============================================================
-- HOME EXIT BUTTON
-- ============================================================

local function drawPeepholeExitButton()
    RageUI.ButtonWithStyle(
        "View Peephole",
        nil,
        {RightLabel = "→→→"},
        true,
        function(_, _, selected)
            if selected
                and not peepholeCamera then

                Citizen.CreateThread(
                    openPeephole
                )
            end
        end
    )
end


-- Server says this home owns a peephole and supplies its saved heading.
RegisterNetEvent(
    "65628adf18",
    function(heading)
        peepholeHeading =
            heading

        CMG.registerHomeExitButtons(
            "peephole",
            drawPeepholeExitButton
        )
    end
)


-- Server removes the peephole.
RegisterNetEvent(
    "97c2f3afb4",
    function()
        closePeephole()

        peepholeHeading = nil

        CMG.unregisterHomeExitButtons(
            "peephole"
        )
    end
)
