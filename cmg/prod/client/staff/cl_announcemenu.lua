--[[
    Staff Announcement Menu
    =======================

    /announcemenu opens a RageUI list of announcement packages supplied by the
    server.

    Each announcement entry is expected to contain:
      name  = button title
      desc  = description
      price = purchase/use price

    Selecting an entry tells the server which list index was chosen.

    Hashed event names are kept unchanged.
]]

local announcements = {}

RMenu.Add(
    "cmgannouncemenu",
    "main",
    RageUI.CreateMenu(
        "",
        "~b~Announcement Menu",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_announceui",
        "cmg_announceui"
    )
)

local announcementMenu =
    RMenu:Get(
        "cmgannouncemenu",
        "main"
    )


local function chooseAnnouncement(index)
    TriggerServerEvent(
        "74c2614a05",
        index
    )
end


RageUI.CreateWhile(
    1.0,
    announcementMenu,
    nil,
    function()
        RageUI.IsVisible(
            announcementMenu,
            true,
            true,
            true,
            function()
                for index, announcement
                    in pairs(announcements) do

                    RageUI.Button(
                        announcement.name,
                        string.format(
                            "%s Price: £%s",
                            announcement.desc,
                            getMoneyStringFormatted(
                                announcement.price
                            )
                        ),
                        true,
                        function(_, _, selected)
                            if selected then
                                chooseAnnouncement(
                                    index
                                )
                            end
                        end
                    )
                end
            end
        )
    end
)


-- Replace the available announcement list.
RegisterNetEvent(
    "4a00c3ddb8",
    function(serverAnnouncements)
        announcements =
            serverAnnouncements
            or {}
    end
)


-- Display an announcement sent by the server.
RegisterNetEvent(
    "c567998c49",
    function(message, options)
        tCMG.announce(
            message,
            options
        )
    end
)


RegisterCommand(
    "announcemenu",
    function()
        RageUI.Visible(
            announcementMenu,
            not RageUI.Visible(
                announcementMenu
            )
        )
    end,
    false
)
