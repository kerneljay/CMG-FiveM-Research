--[[
    Beginner Guide: ItemsBadge.lua
    ==============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Items Badge
    ============================

    File: cmg/prod/client/rageui/menu/elements/ItemsBadge.lua
    Purpose: This file contains FiveM client/resource logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

]]
local rageUiCall, dataTable, workValue
rageUiCall = RageUI
dataTable = {}
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = ""
  arg1.BadgeDictionary = "commonmenu"
  return arg1
end
dataTable.None = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_medal_bronze"
  return arg1
end
dataTable.BronzeMedal = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_medal_gold"
  return arg1
end
dataTable.GoldMedal = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "medal_silver"
  return arg1
end
dataTable.SilverMedal = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mp_alerttriangle"
  return arg1
end
dataTable.Alert = workValue
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
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_garage_icon_a"
  return arg1
end
dataTable.CarWhite = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_garage_icon_b"
  return arg1
end
dataTable.CarBlack = workValue
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
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "shop_new_star"
  return arg1
end
dataTable.Star = workValue
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
function workValue(arg1)
  local dataTable2
  dataTable2 = {}
  dataTable2.BadgeTexture = "mp_anim_rp"
  dataTable2.BadgeDictionary = "mphud"
  return dataTable2
end
dataTable.RP = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_cops"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.LSPD = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_vagos"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.Vagos = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "mpgroundlogo_bikers"
  arg1.BadgeDictionary = "3dtextures"
  return arg1
end
dataTable.Bikers = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "badbeat"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.Badbeat = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "cashingout"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.CashingOut = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "fullhouse"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.FullHouse = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "highroller"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.HighRoller = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "housekeeping"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.HouseKeeping = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "loosecheng"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.LooseCheng = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "luckylucky"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.LuckyLucky = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "playtowin"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.PlayToWin = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "straightflush"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.StraightFlush = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "strongarmtactics"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.StrongArmTactics = workValue
function workValue()
  local arg1, dataTable2
  arg1 = {}
  arg1.BadgeTexture = "toppair"
  arg1.BadgeDictionary = "mpawardcasino"
  return arg1
end
dataTable.TopPair = workValue
rageUiCall.BadgeStyle = dataTable