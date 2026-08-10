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
