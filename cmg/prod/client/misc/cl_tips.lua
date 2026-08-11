--[[
    LEVEL 1 BEGINNER GUIDE — Tips
    ==================================

    File: cmg/prod/client/misc/cl_tips.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Tips feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
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
    Automatic CMG Tips
    ==================

    CMGTips is the list of rotating chat hints shown to players.

    The thread waits 100 seconds after the resource starts, then sends one
    random tip every 10 minutes.
]]

CMGTips = {
    "Watch out, there is more recoil than usual in this city",
    "Support CMG @store.cmgstudios.net for some cool VIP perks!",
    "Support CMG @store.cmgstudios.net for some cool VIP perks!",
    "Support CMG @store.cmgstudios.net for some cool VIP perks!",
    "Support CMG @store.cmgstudios.net for some cool VIP perks!",
    "Press L to open your inventory",
    "KOS is only allowed at redzones!",
    "You can point with B",
    "You can make your minimap bigger with Z",
    "You can perform CPR on your dead friends, with a small chance of resuscitation using /cpr",
    "You can get your GP to take a look at you and restore your health at any Hospital",
    "Check out our Website for whitelisted faction applications, https://www.cmgstudios.net",
    "Want to join the PD? Apply at https://www.cmgstudios.net",
    "Use /rp ask in character questions",
    "To call an admin, type /calladmin",
    "To report a player you can create a player report at https://www.cmgstudios.net/forums/",
    "You can lock your car with the comma key [,]",
    "If you are experiencing texture loss increase your Extended Texture Budget in video settings",
    "F5 to see your gang menu",
    "Join our discord for discussion & development news https://discord.gg/cmg",
    "Join our discord for discussion & development news https://discord.gg/cmg",
    "Join our discord for discussion & development news https://discord.gg/cmg",
    "Join our discord for discussion & development news https://discord.gg/cmg",
    "Register on our website for discussion and whitelisting applications https://www.cmgstudios.net",
    "If you're having issues with your map going blurry, try typing /reset",
    "If you're having issues with your map going blurry, try typing /reset",
    "If you're having issues with your map going blurry, try typing /reset",
    "If you're having issues with your map going blurry, try typing /reset",
    "If you're having issues with your map going blurry, try typing /reset",
    "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'",
    "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'",
    "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'",
    "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'",
    "You should use the dispute menu to resolve situations that require compensation. To open press 'ESC' then click 'Dispute'",
    "Link your YouTube account to get a free £500,000, type !linkyoutube in Discord to get started",
    "Link your YouTube account to get a free £500,000, type !linkyoutube in Discord to get started",
    "Link your YouTube account to get a free £500,000, type !linkyoutube in Discord to get started",
    "Link your YouTube account to get a free £500,000, type !linkyoutube in Discord to get started",
    "Link your YouTube account to get a free £500,000, type !linkyoutube in Discord to get started"
}

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    Wait(100000)

    while true do
        math.randomseed(
            GetGameTimer()
        )

        -- The decompiled file called math.random several times and ultimately
        -- only used the last result, so a single random choice is equivalent.
        local randomTipIndex =
            math.random(
                1,
                #CMGTips
            )

        TriggerEvent(
            "chatMessage",
            "^1[CMG Tips]^1  ^5"
                .. CMGTips[randomTipIndex]
                .. "^5"
        )

        Wait(600000)
    end
end)
