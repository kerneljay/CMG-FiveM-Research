--[[
    LEVEL 1 BEGINNER GUIDE — Items Badge
    =========================================

    File: cmg/prod/client/rageui/menu/elements/ItemsBadge.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: RageUI menu framework/library code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 52
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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local rageUiCall, dataTable, workValue
rageUiCall = RageUI
dataTable = {}

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = ""
  arg1.BadgeDictionary = "commonmenu"
  return arg1
end
dataTable.None = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_medal_bronze"
  return arg1
end
dataTable.BronzeMedal = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_medal_gold"
  return arg1
end
dataTable.GoldMedal = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "medal_silver"
  return arg1
end
dataTable.SilverMedal = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_alerttriangle"
  return arg1
end
dataTable.Alert = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  dataTable2.BadgeTexture = "mp_hostcrown"
  if arg1 then
    dataTable3 = {}
    dataTable3.R = 0
    dataTable3.G = 0
    dataTable3.B = 0
    dataTable3.A = 255
    if dataTable3 then
      goto flow_label_20
    end
  end
  dataTable3 = {}
  dataTable3.R = 255
  dataTable3.G = 255
  dataTable3.B = 255
  dataTable3.A = 255
  ::flow_label_20::
  dataTable2.BadgeColour = dataTable3
  return dataTable2
end
dataTable.Crown = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_ammo_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_ammo_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Ammo = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_armour_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_armour_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Armour = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_barber_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_barber_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Barber = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_clothing_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_clothing_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Clothes = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_franklin_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_franklin_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Franklin = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_garage_bike_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_garage_bike_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Bike = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_garage_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_garage_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Car = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_garage_icon_a"
  return arg1
end
dataTable.CarWhite = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_garage_icon_b"
  return arg1
end
dataTable.CarBlack = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_boat_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_boat"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Boat = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_heli_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_heli"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Heli = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_plane_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_plane"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Plane = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_boatpickup_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_boatpickup"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.BoatPickup = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_keycard_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_keycard"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Card = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_gunclub_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_gunclub_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Gun = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_health_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_health_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Heart = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_makeup_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_makeup_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Makeup = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_mask_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_mask_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Mask = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_michael_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_michael_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Michael = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_new_star"
  return arg1
end
dataTable.Star = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_tattoos_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_tattoos_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Tattoo = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "shop_trevor_icon_b"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "shop_trevor_icon_a"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  return dataTable2
end
dataTable.Trevor = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  dataTable2.BadgeTexture = "shop_lock"
  if arg1 then
    dataTable3 = {}
    dataTable3.R = 0
    dataTable3.G = 0
    dataTable3.B = 0
    dataTable3.A = 255
    if dataTable3 then
      goto flow_label_20
    end
  end
  dataTable3 = {}
  dataTable3.R = 255
  dataTable3.G = 255
  dataTable3.B = 255
  dataTable3.A = 255
  ::flow_label_20::
  dataTable2.BadgeColour = dataTable3
  return dataTable2
end
dataTable.Lock = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  dataTable2.BadgeTexture = "shop_tick_icon"
  if arg1 then
    dataTable3 = {}
    dataTable3.R = 0
    dataTable3.G = 0
    dataTable3.B = 0
    dataTable3.A = 255
    if dataTable3 then
      goto flow_label_20
    end
  end
  dataTable3 = {}
  dataTable3.R = 255
  dataTable3.G = 255
  dataTable3.B = 255
  dataTable3.A = 255
  ::flow_label_20::
  dataTable2.BadgeColour = dataTable3
  return dataTable2
end
dataTable.Tick = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_cuffkeys_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_cuffkeys"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Key = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_coke_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_coke"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Coke = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_heroin_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_heroin"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Heroin = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_meth_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_meth"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Meth = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_weed_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_weed"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Weed = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_package_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_package"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Package = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2, dataTable3
  dataTable2 = {}
  if arg1 then
    dataTable3 = "mp_specitem_cash_black"
    if dataTable3 then
      goto flow_label_9
    end
  end
  dataTable3 = "mp_specitem_cash"
  ::flow_label_9::
  dataTable2.BadgeTexture = dataTable3
  dataTable2.BadgeDictionary = "mpinventory"
  return dataTable2
end
dataTable.Cash = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local dataTable2
  dataTable2 = {}
  dataTable2.BadgeTexture = "mp_anim_rp"
  dataTable2.BadgeDictionary = "mphud"
  return dataTable2
end
dataTable.RP = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_cops"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.LSPD = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_vagos"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.Vagos = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_bikers"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.Bikers = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "badbeat"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.Badbeat = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "cashingout"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.CashingOut = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "fullhouse"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.FullHouse = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "highroller"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.HighRoller = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "housekeeping"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.HouseKeeping = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "loosecheng"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.LooseCheng = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "luckylucky"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.LuckyLucky = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "playtowin"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.PlayToWin = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "straightflush"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.StraightFlush = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "strongarmtactics"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.StrongArmTactics = workValue

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "toppair"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.TopPair = workValue
rageUiCall.BadgeStyle = dataTable
