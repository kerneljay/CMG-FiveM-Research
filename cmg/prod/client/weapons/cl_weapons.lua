-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/weapons"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.createCircularBuffer
SHX2_1 = 25
SHX3_1 = {}
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = ""
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX1_1 = SHX1_1(SHX2_1, SHX3_1)
SHX2_1 = 0
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1.put
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX2_1
  SHX4_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2 + 1
  SHX2_1 = SHX1_2
end
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.weapons
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = AddTextEntry
    SHX7_2 = SHX4_2
    SHX8_2 = SHX5_2.name
    SHX6_2(SHX7_2, SHX8_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  if SHX1_2 then
    SHX3_2 = RemoveAllPedWeapons
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = GetHashKey
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX8_2.ammo
    if not SHX10_2 then
      SHX10_2 = 0
    end
    SHX11_2 = GiveWeaponToPed
    SHX12_2 = SHX2_2
    SHX13_2 = SHX9_2
    SHX14_2 = SHX10_2
    SHX15_2 = false
    SHX16_2 = false
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX11_2 = SHX8_2.attachments
    if not SHX11_2 then
      SHX11_2 = {}
    end
    SHX12_2 = pairs
    SHX13_2 = SHX11_2
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX18_2 = GiveWeaponComponentToPed
      SHX19_2 = SHX2_2
      SHX20_2 = SHX7_2
      SHX21_2 = SHX17_2
      SHX18_2(SHX19_2, SHX20_2, SHX21_2)
    end
  end
end
SHX4_1.giveWeapons = SHX5_1
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.weapons
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = HasPedGotWeapon
    SHX10_2 = SHX0_2
    SHX11_2 = SHX8_2.hash
    SHX12_2 = false
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    if SHX9_2 then
      SHX9_2 = SHX8_2.hash
      if -1569615261 ~= SHX9_2 then
        SHX9_2 = {}
        SHX10_2 = GetPedAmmoTypeFromWeapon
        SHX11_2 = SHX0_2
        SHX12_2 = SHX8_2.hash
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = SHX1_2[SHX10_2]
        if nil == SHX11_2 then
          SHX1_2[SHX10_2] = true
          SHX11_2 = GetAmmoInPedWeapon
          SHX12_2 = SHX0_2
          SHX13_2 = SHX8_2.hash
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          SHX9_2.ammo = SHX11_2
        else
          SHX9_2.ammo = 0
        end
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.getAllWeaponAttachments
        SHX12_2 = SHX7_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX9_2.attachments = SHX11_2
        SHX2_2[SHX7_2] = SHX9_2
      end
    end
  end
  return SHX2_2
end
SHX4_1.getWeapons = SHX5_1
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.weapons
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = HasPedGotWeapon
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2.hash
    SHX10_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX7_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX4_1.isPlayerArmed = SHX5_1
SHX4_1 = tCMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.weapons
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = HasPedGotWeapon
    SHX10_2 = SHX0_2
    SHX11_2 = SHX8_2.hash
    SHX12_2 = false
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    if SHX9_2 then
      SHX9_2 = SHX8_2.hash
      if -1569615261 ~= SHX9_2 then
        SHX9_2 = {}
        SHX10_2 = GetPedAmmoTypeFromWeapon
        SHX11_2 = SHX0_2
        SHX12_2 = SHX8_2.hash
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = SHX1_2[SHX10_2]
        if nil == SHX11_2 then
          SHX1_2[SHX10_2] = true
          SHX11_2 = GetAmmoInPedWeapon
          SHX12_2 = SHX0_2
          SHX13_2 = SHX8_2.hash
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          SHX9_2.ammo = SHX11_2
        else
          SHX9_2.ammo = 0
        end
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.getAllWeaponAttachments
        SHX12_2 = SHX7_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX9_2.attachments = SHX11_2
        SHX2_2[SHX7_2] = SHX9_2
      end
    end
  end
  return SHX2_2
end
SHX4_1.getWeapons = SHX5_1
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = 0
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX7_1.getCachedWeaponStore = SHX8_1
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetPedAmmoTypeFromWeapon
  SHX4_2 = SHX2_2
  SHX5_2 = GetHashKey
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = pairs
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getCachedWeaponStore
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetPedAmmoTypeFromWeapon
    SHX11_2 = SHX2_2
    SHX12_2 = SHX9_2.weaponHash
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX10_2 == SHX3_2 then
      SHX9_2.ammo = SHX1_2
      SHX10_2 = GetFrameCount
      SHX10_2 = SHX10_2()
      SHX9_2.setFrame = SHX10_2
    end
  end
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetPlayerPed
  SHX2_2 = -1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "(%s, %s, %s, %s, %s, %s, %s, %s)"
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = DoesEntityExist
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = DoesEntityExist
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = GetEntityHealth
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = GetEntityHealth
  SHX10_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = IsEntityDead
  SHX11_2 = SHX0_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = IsEntityDead
  SHX12_2 = SHX1_2
  SHX11_2, SHX12_2 = SHX11_2(SHX12_2)
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "d962c43598"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX5_2 = GiveWeaponToPed
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX1_2
  SHX8_2 = math
  SHX8_2 = SHX8_2.floor
  SHX9_2 = SHX2_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = false
  SHX10_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = SHX3_1
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "addWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX4_2
  SHX11_2 = json
  SHX11_2 = SHX11_2.encode
  SHX12_2 = SHX5_1
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = json
  SHX12_2 = SHX12_2.encode
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.getWeapons
  SHX13_2 = SHX13_2()
  SHX12_2 = SHX12_2(SHX13_2)
  SHX13_2 = SHX8_1
  SHX13_2 = SHX13_2()
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = SHX5_1
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    SHX5_2 = SHX5_1
    SHX6_2 = {}
    SHX6_2.weaponHash = SHX1_2
    SHX6_2.ammo = 0
    SHX7_2 = GetFrameCount
    SHX7_2 = SHX7_2()
    SHX6_2.setFrame = SHX7_2
    SHX5_2[SHX0_2] = SHX6_2
    SHX5_2 = SHX7_1
    SHX6_2 = SHX0_2
    SHX7_2 = 0
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX6_1 = SHX4_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "ae100d6cc6"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = RemoveWeaponFromPed
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetHashKey
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX3_1
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "removeWeaponStore(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = json
  SHX9_2 = SHX9_2.encode
  SHX10_2 = SHX5_1
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = json
  SHX10_2 = SHX10_2.encode
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getWeapons
  SHX11_2 = SHX11_2()
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX8_1
  SHX11_2 = SHX11_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX5_1
  SHX3_2[SHX0_2] = nil
  if SHX1_2 then
    SHX3_2 = SetPedAmmoByType
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = GetPedAmmoTypeFromWeapon
    SHX6_2 = PlayerPedId
    SHX6_2 = SHX6_2()
    SHX7_2 = GetHashKey
    SHX8_2 = SHX0_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2)
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX6_1 = SHX2_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "51f1965821"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = RemoveAllPedWeapons
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX3_1
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "clearWeaponStore(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  SHX4_2 = SHX0_2
  SHX5_2 = json
  SHX5_2 = SHX5_2.encode
  SHX6_2 = SHX5_1
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = json
  SHX6_2 = SHX6_2.encode
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getWeapons
  SHX7_2 = SHX7_2()
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX8_1
  SHX7_2 = SHX7_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = {}
  SHX5_1 = SHX1_2
  SHX6_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = {}
SHX10_1 = 911657153
SHX9_1[SHX10_1] = true
SHX10_1 = 1843015545
SHX9_1[SHX10_1] = true
SHX10_1 = 1953687840
SHX9_1[SHX10_1] = true
SHX10_1 = 126349499
SHX9_1[SHX10_1] = true
SHX10_1 = -2076048660
SHX9_1[SHX10_1] = true
SHX10_1 = 0
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = {}
  SHX2_2 = SHX1_1.iterator
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2[1]
    if 0 ~= SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3[1]
    SHX3_3 = SHX1_3[1]
    if SHX2_3 == SHX3_3 then
      SHX2_3 = SHX0_3[2]
      SHX3_3 = SHX1_3[2]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    else
      SHX2_3 = SHX0_3[1]
      SHX3_3 = SHX1_3[1]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
  end
  SHX2_2(SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "b46b0f245b"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = print
      SHX9_2 = string
      SHX9_2 = SHX9_2.format
      SHX10_2 = "[DEBUG] %s (%s) -> %s"
      SHX11_2 = SHX7_2[1]
      SHX12_2 = SHX7_2[2]
      SHX13_2 = SHX7_2[3]
      SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
end
SHX12_1 = Citizen
SHX12_1 = SHX12_1.CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlayerCustomisationSetup
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = Wait
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getCachedWeaponStore
    SHX0_2 = SHX0_2()
    SHX1_2 = GetFrameCount
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isPedScriptGuidChanging
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isPoliceHorse
      SHX2_2 = SHX2_2()
    end
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = {}
    SHX5_2 = pairs
    SHX6_2 = SHX0_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = GetPedAmmoTypeFromWeapon
      SHX12_2 = SHX3_2
      SHX13_2 = SHX10_2.weaponHash
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      if 0 ~= SHX11_2 then
        SHX12_2 = HasPedGotWeapon
        SHX13_2 = SHX3_2
        SHX14_2 = SHX10_2.weaponHash
        SHX15_2 = false
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        if SHX12_2 then
          SHX12_2 = SHX4_2[SHX11_2]
          if nil == SHX12_2 then
            SHX4_2[SHX11_2] = true
            SHX12_2 = SHX0_2[SHX9_2]
            SHX12_2 = SHX12_2.setFrame
            if SHX1_2 > SHX12_2 and not SHX2_2 then
              SHX12_2 = CMG
              SHX12_2 = SHX12_2.isInPaintball
              SHX12_2 = SHX12_2()
              if not SHX12_2 then
                SHX12_2 = GetAmmoInPedWeapon
                SHX13_2 = SHX3_2
                SHX14_2 = SHX10_2.weaponHash
                SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
                SHX13_2 = SHX0_2[SHX9_2]
                SHX13_2 = SHX13_2.ammo
                if SHX12_2 > SHX13_2 then
                  SHX14_2 = SHX10_2.weaponHash
                  SHX13_2 = SHX9_1
                  SHX13_2 = SHX13_2[SHX14_2]
                  if not SHX13_2 then
                    SHX13_2 = CMG
                    SHX13_2 = SHX13_2.isAimTraining
                    SHX13_2 = SHX13_2()
                    if not SHX13_2 then
                      SHX13_2 = CMG
                      SHX13_2 = SHX13_2.inArena
                      SHX13_2 = SHX13_2()
                      if not SHX13_2 then
                        SHX13_2 = CMG
                        SHX13_2 = SHX13_2.inArenaWarmup
                        SHX13_2 = SHX13_2()
                        if not SHX13_2 then
                          SHX13_2 = TriggerServerEvent
                          SHX14_2 = "101039c9d0"
                          SHX15_2 = SHX9_2
                          SHX16_2 = SHX12_2
                          SHX17_2 = SHX0_2[SHX9_2]
                          SHX17_2 = SHX17_2.ammo
                          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                          SHX13_2 = SHX11_1
                          SHX14_2 = true
                          SHX13_2(SHX14_2)
                        end
                      end
                    end
                  end
                end
                if SHX12_2 >= 0 then
                  SHX13_2 = SHX0_2[SHX9_2]
                  SHX13_2.ammo = SHX12_2
                end
              end
            end
          else
            SHX12_2 = SHX0_2[SHX9_2]
            SHX12_2.ammo = 0
          end
        end
      end
    end
    SHX5_2 = table
    SHX5_2 = SHX5_2.contentEquals
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_1
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if not SHX5_2 then
      SHX5_2 = GetGameTimer
      SHX5_2 = SHX5_2()
      SHX6_2 = SHX10_1
      SHX5_2 = SHX5_2 - SHX6_2
      SHX6_2 = 5000
      if SHX5_2 >= SHX6_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.isInPaintball
        SHX5_2 = SHX5_2()
        if not SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.inArena
          SHX5_2 = SHX5_2()
          if not SHX5_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.inArenaWarmup
            SHX5_2 = SHX5_2()
            if not SHX5_2 then
              SHX5_2 = TriggerServerEvent
              SHX6_2 = "7f0ac25257"
              SHX7_2 = SHX0_2
              SHX8_2 = SHX6_1
              SHX5_2(SHX6_2, SHX7_2, SHX8_2)
              SHX5_2 = GetGameTimer
              SHX5_2 = SHX5_2()
              SHX10_1 = SHX5_2
            end
          end
        end
      end
    end
    SHX5_2 = table
    SHX5_2 = SHX5_2.copy
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX4_1 = SHX5_2
    SHX5_2 = Wait
    SHX6_2 = 2000
    SHX5_2(SHX6_2)
  end
end
SHX12_1(SHX13_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.registerCommand
SHX13_1 = "printweapondebug"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX11_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX15_1 = false
SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RemoveAllPedWeapons
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX12_1.removeAllWeapons = SHX13_1
SHX12_1 = GetGameTimer
SHX12_1 = SHX12_1()
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = HasPedGotWeapon
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = -1716589765
  SHX3_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  if not SHX0_2 then
    SHX0_2 = HasPedGotWeapon
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = -619010992
    SHX3_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    if not SHX0_2 then
      goto SHX_LABEL_19
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHandcuffed
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = true
  return SHX0_2
end
SHX14_1 = RegisterCommand
SHX15_1 = "storecurrentweapon"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2 + 3000
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  if SHX0_2 < SHX1_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX12_1 = SHX0_2
    SHX0_2 = SHX13_1
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      return
    end
    SHX0_2 = GetCurrentPedWeapon
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = 0
    SHX3_2 = false
    SHX0_2, SHX1_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX2_2 = SHX0_1.weaponHashToModels
    SHX2_2 = SHX2_2[SHX1_2]
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "23e533401c"
    SHX5_2 = true
    SHX6_2 = false
    SHX7_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = SHX3_1
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "forceStoreSingleWeapon(%s) cachedWeaponStore was %s getWeapons was %s ped is %s"
    SHX6_2 = SHX2_2
    SHX7_2 = json
    SHX7_2 = SHX7_2.encode
    SHX8_2 = SHX5_1
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = json
    SHX8_2 = SHX8_2.encode
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getWeapons
    SHX9_2 = SHX9_2()
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX8_1
    SHX9_2 = SHX9_2()
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Store weapons cooldown, please wait."
    SHX0_2(SHX1_2)
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterCommand
SHX15_1 = "storeallweapons"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2 + 3000
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  if SHX0_2 < SHX1_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX12_1 = SHX0_2
    SHX0_2 = SHX13_1
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      return
    end
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "868d29c333"
    SHX2_2 = true
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX3_1
    SHX1_2 = string
    SHX1_2 = SHX1_2.format
    SHX2_2 = "forceStoreWeapons() cachedWeaponStore was %s getWeapons was %s ped is %s"
    SHX3_2 = json
    SHX3_2 = SHX3_2.encode
    SHX4_2 = SHX5_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = json
    SHX4_2 = SHX4_2.encode
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getWeapons
    SHX5_2 = SHX5_2()
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX8_1
    SHX5_2 = SHX5_2()
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Store weapons cooldown, please wait."
    SHX0_2(SHX1_2)
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "cd72e00d12"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = SHX3_1
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "addStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = json
  SHX9_2 = SHX9_2.encode
  SHX10_2 = SHX5_1
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = json
  SHX10_2 = SHX10_2.encode
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getWeapons
  SHX11_2 = SHX11_2()
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX8_1
  SHX11_2 = SHX11_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX5_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX3_2 = SHX5_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX4_2 = SHX5_1
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.ammo
    SHX4_2 = SHX4_2 + SHX1_2
    SHX3_2.ammo = SHX4_2
    SHX3_2 = SHX5_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX4_2 = GetFrameCount
    SHX4_2 = SHX4_2()
    SHX3_2.setFrame = SHX4_2
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.logError
    SHX4_2 = "cd72e00d12"
    SHX5_2 = "Failed to add "
    SHX6_2 = tostring
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = " ammo to "
    SHX8_2 = SHX0_2
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
    SHX6_2 = json
    SHX6_2 = SHX6_2.encode
    SHX7_2 = SHX5_1
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = ""
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX6_1 = SHX2_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "6af7c62f30"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = SetPedAmmo
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetHashKey
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX3_1
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "setStoredAmmo(%s, %s, %s) cachedWeaponStore was %s getWeapons was %s ped is %s"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = json
  SHX9_2 = SHX9_2.encode
  SHX10_2 = SHX5_1
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = json
  SHX10_2 = SHX10_2.encode
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getWeapons
  SHX11_2 = SHX11_2()
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX8_1
  SHX11_2 = SHX11_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX5_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX3_2 = SHX7_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.logError
    SHX4_2 = "6af7c62f30"
    SHX5_2 = "Failed to set the ammo of "
    SHX6_2 = SHX0_2
    SHX7_2 = " to "
    SHX8_2 = tostring
    SHX9_2 = SHX1_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
    SHX6_2 = json
    SHX6_2 = SHX6_2.encode
    SHX7_2 = SHX5_1
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = ""
    end
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX6_1 = SHX2_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "onResourceStop"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = RemoveAllPedWeapons
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "4d5264442d"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = IsEntityDead
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = print
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "[Headshot Fix] Ignoring, local player is already dead."
    SHX6_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    return
  end
  SHX3_2 = select
  SHX4_2 = 2
  SHX5_2 = GetEntityProofs
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if 1 ~= SHX3_2 then
    SHX3_2 = GetEntityCanBeDamaged
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = GetPlayerInvincible
      SHX4_2 = PlayerId
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2()
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if not SHX3_2 then
        goto SHX_LABEL_43
      end
    end
  end
  SHX3_2 = print
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "[Headshot Fix] Ignoring, local player can not be damaged."
  SHX6_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
  ::SHX_LABEL_43::
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    SHX4_2 = print
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "[Headshot Fix] Could not find attacker player index. Player source was %s."
    SHX7_2 = SHX0_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    SHX5_2 = print
    SHX6_2 = string
    SHX6_2 = SHX6_2.format
    SHX7_2 = "[Headshot Fix] Could not find attacker player ped. Player source was %s, player index was %s."
    SHX8_2 = SHX0_2
    SHX9_2 = SHX3_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setPedAndWeaponKilledByOverride
  SHX6_2 = SHX4_2
  SHX7_2 = GetHashKey
  SHX8_2 = SHX1_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = ApplyDamageToPed
  SHX6_2 = SHX2_2
  SHX7_2 = 500
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = print
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "[Headshot Fix] Attacking local player with a %s. Player source was %s, player index was %s, player ped was %s."
  SHX8_2 = SHX1_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX14_1(SHX15_1, SHX16_1)
