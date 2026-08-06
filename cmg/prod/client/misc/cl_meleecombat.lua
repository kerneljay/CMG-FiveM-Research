-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = -50.477890014648
SHX5_1 = -1282.771484375
SHX6_1 = 29.429399490356
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.pos = SHX3_1
SHX2_1.radius = 2
SHX2_1.disableDamage = false
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = -575.4462890625
SHX6_1 = 286.91946411133
SHX7_1 = 94.939964294434
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.pos = SHX4_1
SHX3_1.radius = 2
SHX3_1.disableDamage = false
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = -294.72583007812
SHX7_1 = -1992.2838134766
SHX8_1 = 30.966064453125
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.pos = SHX5_1
SHX4_1.radius = 4
SHX4_1.disableDamage = false
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = -301.53894042969
SHX8_1 = 6267.5932617188
SHX9_1 = 24.484985351562
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.pos = SHX6_1
SHX5_1.radius = 2
SHX5_1.disableDamage = false
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 2094.1101074219
SHX9_1 = 5091.1928710938
SHX10_1 = 42.724578857422
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.pos = SHX7_1
SHX6_1.radius = 4.0
SHX6_1.disableDamage = false
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = 3911.664
SHX10_1 = 4875.601
SHX11_1 = 12.624
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.pos = SHX8_1
SHX7_1.radius = 3.8
SHX7_1.disableDamage = false
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 251.41473388672
SHX11_1 = 3032.279296875
SHX12_1 = 43.412635803223
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pos = SHX9_1
SHX8_1.radius = 3.8
SHX8_1.disableDamage = false
SHX9_1 = {}
SHX10_1 = vector3
SHX11_1 = -2974.4343261719
SHX12_1 = 48.462585449219
SHX13_1 = 12.358516693115
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.pos = SHX10_1
SHX9_1.radius = 3.8
SHX9_1.disableDamage = false
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = 1710.6134033203
SHX13_1 = 2524.2023925781
SHX14_1 = 42.9660034179695
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.pos = SHX11_1
SHX10_1.radius = 5.0
SHX10_1.disableDamage = false
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX2_1 = true
SHX3_1 = false
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = RegisterCommand
SHX7_1 = "cancelmelee"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if 1 ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getClientUserId
    SHX0_2 = SHX0_2()
    if 2 ~= SHX0_2 then
      goto SHX_LABEL_13
    end
  end
  SHX0_2 = true
  SHX3_1 = SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX6_1.enablePunching = SHX7_1
SHX6_1 = CMG
SHX6_1 = SHX6_1.enablePunching
SHX7_1 = false
SHX6_1(SHX7_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_1
  if not SHX3_2 then
    SHX3_2 = SHX3_1
    if not SHX3_2 then
      SHX3_2 = GetSelectedPedWeapon
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if -1569615261 == SHX3_2 then
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 263
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 264
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 257
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 140
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 141
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 142
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 143
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 24
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = DisableControlAction
        SHX4_2 = 0
        SHX5_2 = 25
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
  SHX3_2 = SetPedCanBeDraggedOut
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX0_2
  SHX5_2 = 149
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX0_2
  SHX5_2 = 438
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX0_2
  SHX5_2 = 250
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX0_2
  SHX5_2 = 35
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPlayerTargetingMode
  SHX4_2 = 3
  SHX3_2(SHX4_2)
  SHX3_2 = GetSelectedPedWeapon
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = GetWeapontypeGroup
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if -1569615261 == SHX3_2 or -1609580060 == SHX4_2 or -728555052 == SHX4_2 then
    SHX5_2 = SetPlayerLockonRangeOverride
    SHX6_2 = SHX2_2
    SHX7_2 = 10.0
    SHX5_2(SHX6_2, SHX7_2)
  else
    SHX5_2 = SetPlayerLockonRangeOverride
    SHX6_2 = SHX2_2
    SHX7_2 = 0.0
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = RestorePlayerStamina
  SHX6_2 = SHX2_2
  SHX7_2 = 1.0
  SHX5_2(SHX6_2, SHX7_2)
  if 0 ~= SHX1_2 then
    SHX5_2 = SHX2_1
    if SHX5_2 then
      SHX5_2 = GetPedInVehicleSeat
      SHX6_2 = SHX1_2
      SHX7_2 = 0
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if SHX5_2 == SHX0_2 then
        SHX5_2 = GetIsTaskActive
        SHX6_2 = SHX0_2
        SHX7_2 = 165
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if SHX5_2 then
          SHX5_2 = SetPedIntoVehicle
          SHX6_2 = SHX0_2
          SHX7_2 = SHX1_2
          SHX8_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        end
      end
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Melee Combat"
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = AddEventHandler
SHX8_1 = "1e1208e937"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = SHX5_1
    if SHX1_2 > 0 then
      SHX1_2 = IsPedAPlayer
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX4_1
        SHX1_2 = SHX1_2 + 1
        SHX4_1 = SHX1_2
        SHX1_2 = SHX4_1
        SHX2_2 = SHX5_1
        if SHX1_2 >= SHX2_2 then
          SHX1_2 = 0
          SHX4_1 = SHX1_2
          SHX1_2 = TriggerEvent
          SHX2_2 = "8e08db8961"
          SHX1_2(SHX2_2)
          SHX1_2 = Citizen
          SHX1_2 = SHX1_2.Wait
          SHX2_2 = 15000
          SHX1_2(SHX2_2)
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.isKnockedOut
          SHX1_2 = SHX1_2()
          if SHX1_2 then
            SHX1_2 = TriggerEvent
            SHX2_2 = "259d5b120c"
            SHX1_2(SHX2_2)
          end
        end
      end
    end
  end
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX8_1 = AddEventHandler
SHX9_1 = "CMG:onClientSpawn"
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  if SHX1_2 then
    function SHX2_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = true
      SHX0_1 = SHX1_3
      SHX1_3 = SHX0_3.disableDamage
      if SHX1_3 then
        SHX1_3 = 0
        SHX4_1 = SHX1_3
        SHX1_3 = math
        SHX1_3 = SHX1_3.random
        SHX2_3 = 8
        SHX3_3 = 12
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        SHX5_1 = SHX1_3
      end
    end
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX1_3 = false
      SHX0_1 = SHX1_3
      SHX1_3 = SHX0_3.disableDamage
      if SHX1_3 then
        SHX1_3 = PlayerId
        SHX1_3 = SHX1_3()
        SHX2_3 = SetPlayerMeleeWeaponDamageModifier
        SHX3_3 = SHX1_3
        SHX4_3 = 1.0
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetPlayerWeaponDamageModifier
        SHX3_3 = SHX1_3
        SHX4_3 = 1.0
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetWeaponDamageModifier
        SHX3_3 = -1569615261
        SHX4_3 = 1.0
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetPedSuffersCriticalHits
        SHX3_3 = PlayerPedId
        SHX3_3 = SHX3_3()
        SHX4_3 = true
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = 0
        SHX4_1 = SHX2_3
        SHX2_3 = 0
        SHX5_1 = SHX2_3
      end
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX1_3 = SHX0_3.disableDamage
      if SHX1_3 then
        SHX1_3 = PlayerId
        SHX1_3 = SHX1_3()
        SHX2_3 = SetPlayerMeleeWeaponDamageModifier
        SHX3_3 = SHX1_3
        SHX4_3 = 0.01
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetPlayerWeaponDamageModifier
        SHX3_3 = SHX1_3
        SHX4_3 = 0.01
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetWeaponDamageModifier
        SHX3_3 = -1569615261
        SHX4_3 = 0.01
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = SetPedSuffersCriticalHits
        SHX3_3 = PlayerPedId
        SHX3_3 = SHX3_3()
        SHX4_3 = false
        SHX2_3(SHX3_3, SHX4_3)
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "boxing_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.pos
      SHX14_2 = SHX10_2.radius
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterCommand
SHX9_1 = "shuff"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsPedInAnyVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX7_1
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX7_1
    SHX1_2 = true
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CancelEvent
    SHX0_2()
  end
end
SHX11_1 = false
SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = -60.958786010742
SHX13_1 = -1291.7238769531
SHX14_1 = 29.905078887939
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 3913.345703125
SHX14_1 = 4882.3188476562
SHX15_1 = 12.603978157043
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = -2966.6594238281
SHX15_1 = 44.978782653809
SHX16_1 = 11.609387397766
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 1707.8901367188
SHX16_1 = 2519.1606445312
SHX17_1 = 44.566337585449
SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX10_1[5] = SHX15_1
SHX10_1[6] = SHX16_1
SHX10_1[7] = SHX17_1
SHX11_1 = {}
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = 335898267
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "boxing_glove_a"
  SHX3_2(SHX4_2)
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 + 0.5
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "boxing_glove_b"
  SHX4_2(SHX5_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX8_2 = SHX8_2 + 0.5
  SHX9_2 = true
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX11_1
  SHX7_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX11_1
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX3_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityCollision
  SHX6_2 = SHX3_2
  SHX7_2 = false
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = ActivatePhysics
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityCollision
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = ActivatePhysics
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  if not SHX0_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX0_2 = SHX5_2
  end
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2
  SHX8_2 = GetPedBoneIndex
  SHX9_2 = SHX0_2
  SHX10_2 = 61007
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = 0.05
  SHX10_2 = 0.0
  SHX11_2 = 0.04
  SHX12_2 = 0.0
  SHX13_2 = 90.0
  SHX14_2 = -90.0
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX18_2 = true
  SHX19_2 = 1
  SHX20_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2
  SHX8_2 = GetPedBoneIndex
  SHX9_2 = SHX0_2
  SHX10_2 = 43810
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = 0.05
  SHX10_2 = 0.0
  SHX11_2 = -0.04
  SHX12_2 = 0.0
  SHX13_2 = 90.0
  SHX14_2 = 90.0
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = false
  SHX18_2 = true
  SHX19_2 = 1
  SHX20_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteObject
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX11_1 = SHX0_2
end
SHX14_1 = AddEventHandler
SHX15_1 = "CMG:onClientSpawn"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX8_1
      if not SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = "Press ~INPUT_PICKUP~ to  pick up \240\159\165\138"
        SHX0_3(SHX1_3)
      else
        SHX0_3 = drawNativeNotification
        SHX1_3 = "Press ~INPUT_PICKUP~ to take off \240\159\165\138"
        SHX0_3(SHX1_3)
      end
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX8_1
        if not SHX0_3 then
          SHX0_3 = GetGameTimer
          SHX0_3 = SHX0_3()
          SHX1_3 = SHX9_1
          SHX0_3 = SHX0_3 - SHX1_3
          SHX1_3 = 5000
          if SHX0_3 > SHX1_3 then
            SHX0_3 = GetGameTimer
            SHX0_3 = SHX0_3()
            SHX9_1 = SHX0_3
            SHX0_3 = SHX12_1
            SHX0_3()
            SHX0_3 = true
            SHX8_1 = SHX0_3
          else
            SHX0_3 = notify
            SHX1_3 = "~r~Please wait before adding gloves again."
            SHX0_3(SHX1_3)
          end
        else
          SHX0_3 = SHX13_1
          SHX0_3()
          SHX0_3 = false
          SHX8_1 = SHX0_3
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX10_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 0
      SHX19_2 = 0
      SHX20_2 = 255
      SHX21_2 = 100
      SHX22_2 = 50
      SHX23_2 = 27
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = SHX9_2
      SHX13_2 = "_boxingGloves"
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX14_1.inBoxingZone = SHX15_1
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = GetSelectedPedWeapon
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if 203923196 == SHX0_2 or 818285584 == SHX0_2 then
    return
  end
  if -1569615261 ~= SHX0_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 140
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 141
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 142
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    return
  end
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 140
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 141
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 142
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 143
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 263
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 264
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 257
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 24
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 25
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX14_1.disableMeleeControls = SHX15_1
