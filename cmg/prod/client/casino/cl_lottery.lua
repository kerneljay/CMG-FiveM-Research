--[[
    Lottery Information Menu
    ========================

    /lottery opens a read-only lottery information menu and asks the server
    for fresh lottery data.

    Server event fd5f71f484 sends:
      ticketPrice
      totalTicketRevenue
      participantCount
      basePot

    The displayed pot is:
      basePot + totalTicketRevenue

    Server event e6b5e535c3 sends how many tickets THIS player owns.

    The menu also calculates the player's approximate percentage chance by:
      total tickets sold = floor(totalTicketRevenue / ticketPrice)
      chance %           = playerTickets / totalTicketsSold * 100

    CMG.getLotteryTicketPrice() exposes the latest ticket price to other
    client scripts.

    Hash-looking event names are deliberately unchanged.
]]

local ticketPrice = 0
local totalTicketRevenue = 0
local participantCount = 0
local playerTicketCount = 0
local basePot = 0


-- ============================================================
-- MENU
-- ============================================================

RMenu.Add(
    "lottery",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "Main Menu",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_lotteryui",
        "cmg_lotteryui"
    )
)

local lotteryMenu =
    RMenu:Get(
        "lottery",
        "mainmenu"
    )


RageUI.CreateWhile(
    1.0,
    lotteryMenu,
    nil,
    function()
        RageUI.IsVisible(
            lotteryMenu,
            true,
            true,
            true,
            function()
                RageUI.Separator(
                    "------------------"
                )

                RageUI.Separator(
                    "Pot £"
                    .. getMoneyStringFormatted(
                        basePot
                        + totalTicketRevenue
                    )
                )

                if participantCount > 0 then
                    RageUI.Separator(
                        tostring(
                            participantCount
                        )
                        .. " Participant"
                        .. (
                            participantCount > 1
                            and "s"
                            or ""
                        )
                    )
                else
                    RageUI.Separator(
                        "No Participants"
                    )
                end

                if playerTicketCount > 0
                    and ticketPrice > 0 then

                    local totalTicketsSold =
                        math.floor(
                            totalTicketRevenue
                            / ticketPrice
                        )

                    local ticketWord =
                        playerTicketCount > 1
                        and " tickets"
                        or " ticket"

                    local chancePercent = 0

                    if totalTicketsSold > 0 then
                        chancePercent =
                            math.floor(
                                playerTicketCount
                                / totalTicketsSold
                                * 100
                            )
                    end

                    RageUI.Separator(
                        "You have purchased "
                        .. tostring(
                            playerTicketCount
                        )
                        .. ticketWord
                        .. " ("
                        .. tostring(
                            chancePercent
                        )
                        .. "%)"
                    )
                else
                    RageUI.Separator(
                        "You haven't purchased any tickets"
                    )
                end

                RageUI.Separator(
                    "------------------"
                )

                RageUI.Separator(
                    "~y~Drawn on Sunday at 8:00PM UK Time"
                )

                RageUI.Separator(
                    "~y~Tickets can be purchased at a convenience store"
                )

                RageUI.Separator(
                    "~y~(You do not have to be online to be picked)"
                )
            end
        )
    end
)


-- ============================================================
-- SERVER DATA
-- ============================================================

RegisterNetEvent(
    "fd5f71f484",
    function(
        serverTicketPrice,
        serverTicketRevenue,
        serverParticipantCount,
        serverBasePot
    )
        ticketPrice =
            serverTicketPrice

        totalTicketRevenue =
            serverTicketRevenue

        participantCount =
            serverParticipantCount

        basePot =
            serverBasePot
    end
)


RegisterNetEvent(
    "e6b5e535c3",
    function(ticketCount)
        playerTicketCount =
            ticketCount
    end
)


-- ============================================================
-- COMMAND / PUBLIC API
-- ============================================================

RegisterCommand(
    "lottery",
    function()
        RageUI.Visible(
            lotteryMenu,
            true
        )

        TriggerServerEvent(
            "f27bf34089"
        )
    end,
    false
)


function CMG.getLotteryTicketPrice()
    return ticketPrice
end
