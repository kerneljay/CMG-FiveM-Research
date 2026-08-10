--[[
    Business Manager Job
    ====================

    This client is the lightweight "manager" business job.

    When active, the manager menu offers:
      * View Stock
      * View Orders

    Server events:
      bf3f551598 = refresh manager/business data
      c195715473 = request stock view
      7aa155f442 = open the manager menu when the player is a manager

    The event hashes are deliberately preserved.
]]


-- ============================================================
-- BUSINESS-JOB LIFECYCLE
-- ============================================================

local function initialiseManagerJob()
    TriggerServerEvent(
        "bf3f551598"
    )
end


local function managerJobTick()
    -- The original decompiled client did not perform per-frame work here.
end


local function finishManagerJob()
    -- The original decompiled client did not need cleanup here.
end


-- ============================================================
-- MANAGER MENU
-- ============================================================

RMenu.Add(
    "business",
    "manager_mainmenu",
    RageUI.CreateMenu(
        "",
        "~b~CMG Business",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_marketui",
        "cmg_marketui"
    )
)

local managerMenu =
    RMenu:Get(
        "business",
        "manager_mainmenu"
    )


RageUI.CreateWhile(
    1.0,
    managerMenu,
    nil,
    function()
        RageUI.IsVisible(
            managerMenu,
            true,
            false,
            true,
            function()
                local managerData =
                    CMG.getUserBusinessData(
                        "manager"
                    )

                if not managerData then
                    RageUI.CloseAll()
                    return
                end

                RageUI.ButtonWithStyle(
                    "~g~View Stock",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent(
                                "c195715473",
                                true
                            )

                            RageUI.CloseAll()
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "~y~View Orders",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                        -- The generic business order-view submenu handles this.
                    end,
                    RMenu:Get(
                        "business",
                        "manager_vieworders"
                    )
                )
            end
        )
    end
)


RegisterNetEvent(
    "7aa155f442",
    function()
        if not CMG.getUserBusinessData(
            "manager"
        ) then
            return
        end

        RageUI.Visible(
            managerMenu,
            true
        )

        TriggerServerEvent(
            "bf3f551598"
        )
    end
)


-- ============================================================
-- REGISTER WITH THE BUSINESS FRAMEWORK
-- ============================================================

local managerJobStates = {
    main = {
        init = initialiseManagerJob,
        tick = managerJobTick,
        finish = finishManagerJob,
        next = "main"
    }
}

CMG.registerBusinessJob(
    "manager",
    nil,
    "main",
    managerJobStates,
    nil
)

Citizen.Wait(0)

CMG.addGenericBusinessOrderView(
    "manager",
    "manager_mainmenu"
)
