--[[
    LEVEL 1 BEGINNER GUIDE — Clothingrob
    =========================================

    File: cmg/prod/cfg/cfg_clothingrob.lua
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

cfg.locations = {
    ["Binco: Sinner"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(427.17364501953,-806.98022460938,28.482055664062,87.874015808105),
        hideDirection = "right",
    },
    ["Discount Store: Innocence"] = {
        model = `s_f_y_shop_low`,
        position = vector4(73.727478027344,-1392.1845703125,28.364135742188,272.1259765625),
        hideDirection = "right",
    },
    ["Ponsonbys: Portola"] = {
        model = `s_f_m_shop_high`,
        position = vector4(-708.81756591797,-151.54286193848,36.401489257812,116.22047424316),
        hideDirection = "left",
    },
    ["Ponsonbys: Lagunas"] = {
        model = `s_f_m_shop_high`,
        position = vector4(-165.30989074707,-303.1252746582,38.726684570312,252.28346252441),
        hideDirection = "left",
    },
    ["Binco: Palomino"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(-822.54064941406,-1071.6527099609,10.317993164062,209.76377868652),
        hideDirection = "right",
    },
    ["Sub Urban: Rockford"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(-1194.0659179688,-766.68133544922,16.299682617188,221.10237121582),
        hideDirection = "left",
    },
    ["Ponsonbys: Rockford"] = {
        model = `s_f_m_shop_high`,
        position = vector4(-1448.4395751953,-237.83735656738,48.802978515625,51.023624420166),
        hideDirection = "left",
    },
    ["Discount Store: Paleto"] = {
        model = `s_f_y_shop_low`,
        position = vector4(5.3538465499878,6510.6459960938,30.874755859375,42.519683837891),
        hideDirection = "right",
    },
    ["Discount Store: Grapeseed"] = {
        model = `s_f_y_shop_low`,
        position = vector4(1695.6395263672,4822.140625,41.052001953125,99.212593078613),
        hideDirection = "right",
    },
    ["Sub Urban: Alta"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(127.34505462646,-224.36044311523,53.554565429688,68.031494140625),
        hideDirection = "left",
    },
    ["Sub Urban: Route 68"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(612.65936279297,2762.6901855469,41.085693359375,280.62991333008),
        hideDirection = "left",
    },
    ["Discount Store: Route 68"] = {
        model = `s_f_y_shop_low`,
        position = vector4(1197.4285888672,2711.8549804688,37.210205078125,181.41732788086),
        hideDirection = "right",
    },
    ["Sub Urban: Great Ocean"] = {
        model = `s_f_y_shop_mid`,
        position = vector4(-3169.1604003906,1043.0900878906,19.85498046875,65.196853637695),
        hideDirection = "left",
    },
    ["Discount Store: Military Gate"] = {
        model = `s_f_y_shop_low`,
        position = vector4(-1101.9165039062,2712.31640625,18.1025390625,223.93701171875),
        hideDirection = "right",
    },
    ["Discount Store: Cayo Airport"] = {
        model = `s_f_y_shop_low`,
        position = vector4(4496.333984375,-4451.6704101562,3.3590087890625,204.09449768066),
        hideDirection = "right",
    },
    ["Convenience Store: Shank"] = {
        model = `ig_car3guy1`,
        position = vector4(-3173.2878417969,1089.7451171875,19.838134765625,246.61416625977),
        hideDirection = "right",
    },
}

return cfg
