--[[
    LEVEL 1 BEGINNER GUIDE — Cidmenu
    =====================================

    File: cmg/prod/client/police/cl_cidmenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Cidmenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: f1c27e1bb0
      * Local event handlers: none found by static scan
      * Server events sent: c3dd198e75
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
    CID Identity Menu
    =================

    The server opens this menu and supplies the current CID identity details.

    Editable fields:
      firstName
      lastName
      birthday

    Selecting a field opens CMG.clientPrompt. After the local value changes,
    the full identity table is sent to the server using event c3dd198e75.

    Event f1c27e1bb0(identityData)
      Replaces the current identity and opens the menu.

    Hash event names are deliberately unchanged.
]]

local cidIdentity = {}


RMenu.Add(
    "cidmenu",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "CID Menu",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_jobselectorui",
        "metpd"
    )
)

local cidMenu =
    RMenu:Get(
        "cidmenu",
        "mainmenu"
    )


local function editIdentityField(
    promptLabel,
    currentValue,
    setter
)
    CMG.clientPrompt(
        promptLabel,
        currentValue or "",
        function(newValue)
            setter(newValue)

            TriggerServerEvent(
                "c3dd198e75",
                cidIdentity
            )
        end
    )
end


local function drawEditableField(
    label,
    fieldName
)
    RageUI.ButtonWithStyle(
        label,
        "",
        {
            RightLabel =
                cidIdentity[fieldName]
                or ""
        },
        true,
        function(_, _, selected)
            if selected then
                editIdentityField(
                    label,
                    cidIdentity[fieldName],
                    function(value)
                        cidIdentity[
                            fieldName
                        ] = value
                    end
                )
            end
        end
    )
end


RageUI.CreateWhile(
    1.0,
    cidMenu,
    nil,
    function()
        RageUI.IsVisible(
            cidMenu,
            true,
            true,
            true,
            function()
                drawEditableField(
                    "First Name",
                    "firstName"
                )

                drawEditableField(
                    "Last Name",
                    "lastName"
                )

                drawEditableField(
                    "Birthday",
                    "birthday"
                )
            end
        )
    end
)


RegisterNetEvent(
    "f1c27e1bb0",
    function(identityData)
        cidIdentity =
            identityData or {}

        RageUI.Visible(
            cidMenu,
            true
        )
    end
)
