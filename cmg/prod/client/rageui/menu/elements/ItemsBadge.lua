-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = RageUI
SHX1_1 = {}
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = ""
  SHX0_2.BadgeDictionary = "commonmenu"
  return SHX0_2
end
SHX1_1.None = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mp_medal_bronze"
  return SHX0_2
end
SHX1_1.BronzeMedal = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mp_medal_gold"
  return SHX0_2
end
SHX1_1.GoldMedal = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "medal_silver"
  return SHX0_2
end
SHX1_1.SilverMedal = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mp_alerttriangle"
  return SHX0_2
end
SHX1_1.Alert = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  SHX1_2.BadgeTexture = "mp_hostcrown"
  if SHX0_2 then
    SHX2_2 = {}
    SHX2_2.R = 0
    SHX2_2.G = 0
    SHX2_2.B = 0
    SHX2_2.A = 255
    if SHX2_2 then
      goto SHX_LABEL_20
    end
  end
  SHX2_2 = {}
  SHX2_2.R = 255
  SHX2_2.G = 255
  SHX2_2.B = 255
  SHX2_2.A = 255
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX1_2.BadgeColour = SHX2_2
  return SHX1_2
end
SHX1_1.Crown = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_ammo_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_ammo_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Ammo = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_armour_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_armour_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Armour = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_barber_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_barber_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Barber = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_clothing_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_clothing_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Clothes = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_franklin_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_franklin_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Franklin = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_garage_bike_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_garage_bike_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Bike = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_garage_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_garage_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Car = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "shop_garage_icon_a"
  return SHX0_2
end
SHX1_1.CarWhite = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "shop_garage_icon_b"
  return SHX0_2
end
SHX1_1.CarBlack = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_boat_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_boat"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Boat = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_heli_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_heli"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Heli = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_plane_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_plane"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Plane = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_boatpickup_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_boatpickup"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.BoatPickup = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_keycard_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_keycard"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Card = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_gunclub_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_gunclub_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Gun = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_health_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_health_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Heart = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_makeup_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_makeup_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Makeup = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_mask_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_mask_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Mask = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_michael_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_michael_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Michael = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "shop_new_star"
  return SHX0_2
end
SHX1_1.Star = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_tattoos_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_tattoos_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Tattoo = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "shop_trevor_icon_b"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "shop_trevor_icon_a"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  return SHX1_2
end
SHX1_1.Trevor = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  SHX1_2.BadgeTexture = "shop_lock"
  if SHX0_2 then
    SHX2_2 = {}
    SHX2_2.R = 0
    SHX2_2.G = 0
    SHX2_2.B = 0
    SHX2_2.A = 255
    if SHX2_2 then
      goto SHX_LABEL_20
    end
  end
  SHX2_2 = {}
  SHX2_2.R = 255
  SHX2_2.G = 255
  SHX2_2.B = 255
  SHX2_2.A = 255
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX1_2.BadgeColour = SHX2_2
  return SHX1_2
end
SHX1_1.Lock = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  SHX1_2.BadgeTexture = "shop_tick_icon"
  if SHX0_2 then
    SHX2_2 = {}
    SHX2_2.R = 0
    SHX2_2.G = 0
    SHX2_2.B = 0
    SHX2_2.A = 255
    if SHX2_2 then
      goto SHX_LABEL_20
    end
  end
  SHX2_2 = {}
  SHX2_2.R = 255
  SHX2_2.G = 255
  SHX2_2.B = 255
  SHX2_2.A = 255
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX1_2.BadgeColour = SHX2_2
  return SHX1_2
end
SHX1_1.Tick = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_cuffkeys_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_cuffkeys"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Key = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_coke_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_coke"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Coke = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_heroin_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_heroin"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Heroin = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_meth_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_meth"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Meth = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_weed_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_weed"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Weed = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_package_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_package"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Package = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = {}
  if SHX0_2 then
    SHX2_2 = "mp_specitem_cash_black"
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = "mp_specitem_cash"
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2.BadgeTexture = SHX2_2
  SHX1_2.BadgeDictionary = "mpinventory"
  return SHX1_2
end
SHX1_1.Cash = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = {}
  SHX1_2.BadgeTexture = "mp_anim_rp"
  SHX1_2.BadgeDictionary = "mphud"
  return SHX1_2
end
SHX1_1.RP = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mpgroundlogo_cops"
  SHX0_2.BadgeDictionary = "3dtextures"
  return SHX0_2
end
SHX1_1.LSPD = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mpgroundlogo_vagos"
  SHX0_2.BadgeDictionary = "3dtextures"
  return SHX0_2
end
SHX1_1.Vagos = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "mpgroundlogo_bikers"
  SHX0_2.BadgeDictionary = "3dtextures"
  return SHX0_2
end
SHX1_1.Bikers = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "badbeat"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.Badbeat = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "cashingout"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.CashingOut = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "fullhouse"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.FullHouse = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "highroller"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.HighRoller = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "housekeeping"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.HouseKeeping = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "loosecheng"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.LooseCheng = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "luckylucky"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.LuckyLucky = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "playtowin"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.PlayToWin = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "straightflush"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.StraightFlush = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "strongarmtactics"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.StrongArmTactics = SHX2_1
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.BadgeTexture = "toppair"
  SHX0_2.BadgeDictionary = "mpawardcasino"
  return SHX0_2
end
SHX1_1.TopPair = SHX2_1
SHX0_1.BadgeStyle = SHX1_1
