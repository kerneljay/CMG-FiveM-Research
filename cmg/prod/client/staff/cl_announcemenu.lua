--[[
    LEVEL 1 BEGINNER GUIDE — Announcemenu
    ==========================================

    File: cmg/prod/client/staff/cl_announcemenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Announcemenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 0
      * Always-running loops: 0
      * Commands: announcemenu
      * Incoming network events: 4a00c3ddb8, c567998c49
      * Local event handlers: none found by static scan
      * Server events sent: 74c2614a05
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


-- === HELPER FUNCTION: chooseAnnouncement(index) ===
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
