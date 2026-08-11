--[[
    LEVEL 1 BEGINNER GUIDE — Adminmenu
    =======================================

    File: cmg/prod/cfg/cfg_adminmenu.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
    Purpose: configuration/data used by other scripts.

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
      * Background threads: 0
      * Always-running loops: 0
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
local cfg = {}

cfg.banReasons = {
    ["trolling"] = {name="1.0 Trolling",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["trollingminor"] = {name="1.0 Trolling (Minor)",offense1 = 2,offense2 = 12,offense3 = 24,offense4 = 24,selected = false},
    ["metagaming"] = {name="1.1 Metagaming",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["powergaming"] = {name="1.2 Power Gaming ",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["failrp"] = {name="1.3 Fail RP",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["rdm"] = {name="1.4 RDM",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["massrdm"] = {name="1.4.1 Mass RDM",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
    ["nrti"] = {name="1.5 No Reason to Initiate (NRTI)",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["vdm"] = {name="1.6 VDM",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["massvdm"] = {name="1.6.1 Mass VDM",offense1 = 168,offense2 = 730,offense3 = -1,offense4 = -1,selected = false},
	["offlanguageminor"] = {name="1.7 Offensive Language/Toxicity (Minor)",offense1 = 2,offense2 = 24,offense3 = 72,offense4 = 72,selected = false},
	["offlanguagestandard"] = {name="1.7 Offensive Language/Toxicity (Standard)",offense1 = 48,offense2 = 72,offense3 = 168,offense4 = 168,selected = false},
	["offlanguagesevere"] = {name="1.7 Offensive Language/Toxicity (Severe)",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["breakrp"] = {name="1.8 Breaking Character",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
    ["combatlog"] = {name="1.9 Combat logging",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["combatstore"] = {name="1.10 Combat storing",offense1 = 24,offense2 = 48,offense3 = 168,offense4 = 168,selected = false},
    ["exploitingstandard"] = {name="1.11 Exploiting (Standard)",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
    ["exploitingsevere"] = {name="1.11 Exploiting (Severe)",offense1 = 168,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
    ["oogt"] = {name="1.12 Out of game transactions (OOGT)",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["spitereport"] = {name="1.13 Spite Reports ",offense1 = 24,offense2 = 48,offense3 = 168,offense4 = 168,selected = false},
	["scamming"] = {name="1.14 Scamming",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["loans"] = {name="1.15 Loans",offense1 = 48,offense2 = 168,offense3 = -1,offense4 = -1,selected = false},
	["wastingadmintime"] = {name="1.16 Wasting Admin Time",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["ftvl"] = {name="2.1 Value of Life",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["sexualrp"] = {name="2.2 Sexual RP",offense1 = 168,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["sexualrpminor"] = {name="2.2 Sexual RP (Minor)",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["terrorrp"] = {name="2.3 Terrorist RP",offense1 = 168,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["impwhitelisted"] = {name="2.4 Impersonation of Whitelisted Factions",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["gtadriving"] = {name="2.5 GTA Online Driving",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["nlr"] = {name="2.6 NLR",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["badrp"] = {name="2.7 Bad RP",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["kidnapping"] = {name="2.8 Kidnapping",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["stealingems"] = {name="3.0 Theft of Emergency Vehicles",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["whitelistabusestandard"] = {name="3.1 Whitelist Abuse (Standard)",offense1 = 24,offense2 = 72,offense3 = 168,offense4 = 168,selected = false},
	["whitelistabusesevere"] = {name="3.1 Whitelist Abuse (Severe)",offense1 = 168,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["copbaiting"] = {name="3.2 Cop Baiting",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["pdkidnapping"] = {name="3.3 Faction Kidnapping",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["unrealisticrevival"] = {name="3.4 Unrealistic Revival",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["combatrev"] = {name="3.5 Combat reviving",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["interjectingrobbery"] = {name="Interjection of Robberies",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["interjectingrp"] = {name="Interjection of RP",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["gangcap"] = {name="3.7 Gang Cap",offense1 = 24,offense2 = 72,offense3 = 168,offense4 = 168,selected = false},
	["gangalliance"] = {name="3.9 Gang Alliance",offense1 = 24,offense2 = 72,offense3 = 168,offense4 = 168,selected = false},
	["impgang"] = {name="3.11 Impersonation of Gangs",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["gzstealing"] = {name="4.1 Stealing Vehicles in Greenzone",offense1 = 2,offense2 = 12,offense3 = 24,offense4 = 24,selected = false},
	["gzstealinglockpick"] = {name="4.1 Stealing Vehicles in Greenzone and Lockpicking",offense1 = 24,offense2 = 48,offense3 = 168,offense4 = 168,selected = false},
	["gzillegal"] = {name="4.2 Selling/Buying Illegal Items in Greenzone",offense1 = 12,offense2 = 24,offense3 = 48,offense4 = 48,selected = false},
	["gzretretreating"] = {name="4.3 Greenzone Retreating ",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["rzhostage"] = {name="4.5 Taking Hostage into Redzone",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["rzretreating"] = {name="4.6 Redzone Retreating",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["advert"] = {name="1.1 Advertising",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["bullying"] = {name="1.2 Bullying ",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["impersonationrule"] = {name="1.3 Impersonation",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["language"] = {name="1.4 Language",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["discrim"] = {name="1.5 Discrimination",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["attacks"] = {name="1.6 Malicious Attacks",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["PIIstandard"] = {name="1.7 PII (Personally Identifiable Information) (Standard)",offense1 = 168,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["PIIsevere"] = {name="1.7 PII (Personally Identifiable Information) (Severe)",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["chargeback"] = {name="1.8 Chargeback",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["discretion"] = {name="1.9 Staff Discretion",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["cheating"] = {name="1.10 Cheating",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["banevading"] = {name="1.11 Ban Evading ",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["fivemcheats"] = {name="1.12 Withholding/Storing FiveM Cheats",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["altaccount"] = {name="1.13 Multi-Accounting",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["association"] = {name="1.14 Association with External Modifications",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["pov"] = {name="1.15 Failure to provide POV",offense1 = 24,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["withholdinginfostandard"] = {name="1.16 Withholding Information From Staff (Standard)",offense1 = 48,offense2 = 72,offense3 = 168,offense4 = 168,selected = false},
	["withholdinginfosevere"] = {name="1.16 Withholding Information From Staff (Severe)",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["blackmail"] = {name="1.17 Blackmailing (Standard)",offense1 = 24,offense2 = 48,offense3 = 72,offense4 = 96,selected = false},
	["blackmailsevere"] = {name="1.17 Blackmailing (Severe)",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false},
	["offensivename"] = {name="Offensive Name",offense1 = -1,offense2 = -1,offense3 = -1,offense4 = -1,selected = false,hide = true},
}

cfg.eventBucketId = 2

-- Users who can **give** car dev import slot compensation (must also have superadmin or ha group)
cfg.canGiveCarDevImportSlots = {
	[1] = true,
	[2] = true,
	[9] = true,
}

cfg.adminLocations = {
	{name = "PD (Mission Row)", coords = vector3(446.72503662109,-982.44342041016,30.68931579589)},
	{name = "PD (Sandy)", coords = vector3(1839.3137207031,3671.0014648438,34.310436248779)},
	{name = "PD (Paleto)", coords = vector3(-437.32931518555,6021.2114257813,31.490119934082)},
	{name = "PD (RPU)", coords = vector3(1552.3885498047,824.07373046875,78.693199157715)},
	{name = "City Hall", coords = vector3(-551.08221435547,-194.19259643555,38.219661712646)},
	{name = "Airport", coords = vector3(-1142.0673828125,-2851.802734375,13.94624710083)},
	{name = "HMP", coords = vector3(1848.2724609375,2586.7385253906,45.671997070313)},
	{name = "Rebel Diner", coords = vector3(1588.3441162109,6439.3696289063,25.123600006104)},
	{name = "St Thomas", coords = vector3(283.37664794922,-579.45318603516,43.219303131104)},
	{name = "Tutorial Spawn", coords = vector3(-1031.0992431641,-2727.9765625,13.740306854248)},
	{name = "VIP Island", coords = vector3(-2147.6516113281,5195.7778320312,15.71883392334)},
	{name = "Legion", coords = vector3(157.10432434082,-1040.2922363281,29.267738342285)},
	{name = "Truck Spawn", coords = vector3(864.33184814453,-3189.8889160156,6.1460704803467)},
}

cfg.vipIslandCoords = vector3(-2147.6516113281,5195.7778320312,15.71883392334)

cfg.banMessage = [[You have been %s

If you believe this action was unfair, you may appeal through the CMG forums:
https://cmgstudios.net/forums

Warning Appeals must be submitted within 14 days:
https://cmgstudios.net/forums/index.php?/forum/11-warning-appeal/

Ban Appeals:
https://cmgstudios.net/forums/index.php?/forum/10-unban-appeal/

Please also read the CMG FiveM Rules and Community Guidelines to understand what is expected of you.

FiveM Rules:
https://cmgstudios.net/forums/index.php?/fivem-rules/

Community Guidelines:
https://cmgstudios.net/forums/index.php?/community-rules/%s
]]


cfg.educationMessage = [[You have received an education message from CMG staff.

**Rule broken:** %s
%sThis is not a ban or formal warning, but please take this seriously and review the rules before continuing to play.

Please read the CMG FiveM rules at https://cmgstudios.net/forums/index.php?/fivem-rules/

Community Guidelines: https://cmgstudios.net/forums/index.php?/community-rules/

If you have any questions, join our TeamSpeak at ts.cmgstudios.net or open a support ticket on the forums.%s
]]

return cfg
