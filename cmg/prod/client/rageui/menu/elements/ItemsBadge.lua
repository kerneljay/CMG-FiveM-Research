--[[
    LEVEL 1 BEGINNER GUIDE - Items Badge

    RageUI.BadgeStyle contains small factory functions.
    Call a badge function with true when the menu item is selected.
]]

local function badge(texture, dictionary)
  local result = { BadgeTexture = texture }
  if dictionary then
    result.BadgeDictionary = dictionary
  end
  return result
end

local function selectedTextureBadge(isSelected, normalTexture, selectedTexture, dictionary)
  return badge(isSelected and selectedTexture or normalTexture, dictionary)
end

local function colouredBadge(isSelected, texture)
  local colour = isSelected
    and { R = 0, G = 0, B = 0, A = 255 }
    or { R = 255, G = 255, B = 255, A = 255 }

  return {
    BadgeTexture = texture,
    BadgeColour = colour
  }
end

RageUI.BadgeStyle = {
  None = function() return badge("", "commonmenu") end,
  BronzeMedal = function() return badge("mp_medal_bronze") end,
  GoldMedal = function() return badge("mp_medal_gold") end,
  SilverMedal = function() return badge("medal_silver") end,
  Alert = function() return badge("mp_alerttriangle") end,
  Crown = function(isSelected) return colouredBadge(isSelected, "mp_hostcrown") end,
  Ammo = function(isSelected) return selectedTextureBadge(isSelected, "shop_ammo_icon_a", "shop_ammo_icon_b") end,
  Armour = function(isSelected) return selectedTextureBadge(isSelected, "shop_armour_icon_a", "shop_armour_icon_b") end,
  Barber = function(isSelected) return selectedTextureBadge(isSelected, "shop_barber_icon_a", "shop_barber_icon_b") end,
  Clothes = function(isSelected) return selectedTextureBadge(isSelected, "shop_clothing_icon_a", "shop_clothing_icon_b") end,
  Franklin = function(isSelected) return selectedTextureBadge(isSelected, "shop_franklin_icon_a", "shop_franklin_icon_b") end,
  Bike = function(isSelected) return selectedTextureBadge(isSelected, "shop_garage_bike_icon_a", "shop_garage_bike_icon_b") end,
  Car = function(isSelected) return selectedTextureBadge(isSelected, "shop_garage_icon_a", "shop_garage_icon_b") end,
  CarWhite = function() return badge("shop_garage_icon_a") end,
  CarBlack = function() return badge("shop_garage_icon_b") end,
  Boat = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_boat", "mp_specitem_boat_black", "mpinventory") end,
  Heli = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_heli", "mp_specitem_heli_black", "mpinventory") end,
  Plane = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_plane", "mp_specitem_plane_black", "mpinventory") end,
  BoatPickup = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_boatpickup", "mp_specitem_boatpickup_black", "mpinventory") end,
  Card = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_keycard", "mp_specitem_keycard_black", "mpinventory") end,
  Gun = function(isSelected) return selectedTextureBadge(isSelected, "shop_gunclub_icon_a", "shop_gunclub_icon_b") end,
  Heart = function(isSelected) return selectedTextureBadge(isSelected, "shop_health_icon_a", "shop_health_icon_b") end,
  Makeup = function(isSelected) return selectedTextureBadge(isSelected, "shop_makeup_icon_a", "shop_makeup_icon_b") end,
  Mask = function(isSelected) return selectedTextureBadge(isSelected, "shop_mask_icon_a", "shop_mask_icon_b") end,
  Michael = function(isSelected) return selectedTextureBadge(isSelected, "shop_michael_icon_a", "shop_michael_icon_b") end,
  Star = function() return badge("shop_new_star") end,
  Tattoo = function(isSelected) return selectedTextureBadge(isSelected, "shop_tattoos_icon_a", "shop_tattoos_icon_b") end,
  Trevor = function(isSelected) return selectedTextureBadge(isSelected, "shop_trevor_icon_a", "shop_trevor_icon_b") end,
  Lock = function(isSelected) return colouredBadge(isSelected, "shop_lock") end,
  Tick = function(isSelected) return colouredBadge(isSelected, "shop_tick_icon") end,
  Key = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_cuffkeys", "mp_specitem_cuffkeys_black", "mpinventory") end,
  Coke = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_coke", "mp_specitem_coke_black", "mpinventory") end,
  Heroin = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_heroin", "mp_specitem_heroin_black", "mpinventory") end,
  Meth = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_meth", "mp_specitem_meth_black", "mpinventory") end,
  Weed = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_weed", "mp_specitem_weed_black", "mpinventory") end,
  Package = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_package", "mp_specitem_package_black", "mpinventory") end,
  Cash = function(isSelected) return selectedTextureBadge(isSelected, "mp_specitem_cash", "mp_specitem_cash_black", "mpinventory") end,
  RP = function() return badge("mp_anim_rp", "mphud") end,
  LSPD = function() return badge("mpgroundlogo_cops", "3dtextures") end,
  Vagos = function() return badge("mpgroundlogo_vagos", "3dtextures") end,
  Bikers = function() return badge("mpgroundlogo_bikers", "3dtextures") end,
  Badbeat = function() return badge("badbeat", "mpawardcasino") end,
  CashingOut = function() return badge("cashingout", "mpawardcasino") end,
  FullHouse = function() return badge("fullhouse", "mpawardcasino") end,
  HighRoller = function() return badge("highroller", "mpawardcasino") end,
  HouseKeeping = function() return badge("housekeeping", "mpawardcasino") end,
  LooseCheng = function() return badge("loosecheng", "mpawardcasino") end,
  LuckyLucky = function() return badge("luckylucky", "mpawardcasino") end,
  PlayToWin = function() return badge("playtowin", "mpawardcasino") end,
  StraightFlush = function() return badge("straightflush", "mpawardcasino") end,
  StrongArmTactics = function() return badge("strongarmtactics", "mpawardcasino") end,
  TopPair = function() return badge("toppair", "mpawardcasino") end,
}
