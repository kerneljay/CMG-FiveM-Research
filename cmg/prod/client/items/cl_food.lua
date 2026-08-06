-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_food"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 50
SHX2_1 = 50
SHX3_1 = 0.5555555555555556
SHX4_1 = 0.4166666666666667
SHX5_1 = "cmg_always_food_thirst"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetResourceKvpInt
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = 1 == SHX0_2
  return SHX0_2
end
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  return SHX0_2()
end
SHX7_1.getClientAlwaysFoodThirstHudPreference = SHX8_1
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isClientClockedOnOrganisation
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isEmergencyService
    SHX0_2 = SHX0_2()
  end
  return SHX0_2
end
SHX7_1.isFoodThirstForcedByRole = SHX8_1
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isFoodThirstForcedByRole
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = SHX6_1
    SHX0_2 = SHX0_2()
  end
  return SHX0_2
end
SHX7_1.isFoodEnabled = SHX8_1
SHX7_1 = false
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = false
  SHX7_1 = SHX0_2
  SHX0_2 = ClearTimecycleModifier
  SHX0_2()
  SHX0_2 = ShakeGameplayCam
  SHX1_2 = "SMALL_EXPLOSION_SHAKE"
  SHX2_2 = 0.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ResetPedMovementClipset
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isFoodEnabled
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_BAR_VISIBILITY"
  SHX3_2 = {}
  SHX3_2.type = "hunger"
  SHX3_2.value = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.sendHudNuiMessage
  SHX2_2 = "SET_BAR_VISIBILITY"
  SHX3_2 = {}
  SHX3_2.type = "thirst"
  SHX3_2.value = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  if not SHX0_2 then
    SHX1_2 = SHX8_1
    SHX1_2()
  end
end
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = true == SHX0_2 or 1 == SHX0_2
  SHX2_2 = SetResourceKvpInt
  SHX3_2 = SHX5_1
  if SHX1_2 then
    SHX4_2 = 1
    if SHX4_2 then
      goto SHX_LABEL_15
    end
  end
  SHX4_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX9_1
  SHX2_2()
end
SHX10_1.setClientAlwaysFoodThirstFromHud = SHX11_1
SHX10_1 = AddEventHandler
SHX11_1 = "b51e08118b"
SHX12_1 = SHX9_1
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "f7b3a54a8f"
SHX12_1 = SHX9_1
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "e892eba4b7"
SHX12_1 = SHX9_1
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "CMG:onClientSpawn"
function SHX12_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  while true do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isHudLoaded
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  if SHX2_2 then
    SHX3_2 = SHX9_1
    SHX3_2()
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "3cb2982220"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1 = SHX0_2
  SHX2_1 = SHX1_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX10_1.getHunger = SHX11_1
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX10_1.getHydration = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = Clamp
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX4_2 = 100
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_1 = SHX1_2
end
SHX10_1.setHunger = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = Clamp
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX4_2 = 100
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_1 = SHX1_2
end
SHX10_1.setHydration = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHunger
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2 + SHX0_2
  SHX1_2(SHX2_2)
end
SHX10_1.addHunger = SHX11_1
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHydration
  SHX2_2 = SHX2_1
  SHX2_2 = SHX2_2 + SHX0_2
  SHX1_2(SHX2_2)
end
SHX10_1.addHydration = SHX11_1
SHX10_1 = CreateThread
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isFoodEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isStaffedOnClient
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.addHydration
        SHX1_2 = SHX3_1
        SHX1_2 = -SHX1_2
        SHX0_2(SHX1_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.addHunger
        SHX1_2 = SHX4_1
        SHX1_2 = -SHX1_2
        SHX0_2(SHX1_2)
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "3772ce2897"
        SHX2_2 = SHX1_1
        SHX3_2 = SHX2_1
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 60000
    SHX0_2(SHX1_2)
  end
end
SHX10_1(SHX11_1)
SHX10_1 = CreateThread
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isFoodEnabled
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isStaffedOnClient
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX1_1
        if not (SHX0_2 <= 1) then
          SHX0_2 = SHX2_1
          if not (SHX0_2 <= 1) then
            goto SHX_LABEL_36
          end
        end
        SHX0_2 = true
        SHX7_1 = SHX0_2
        SHX0_2 = SetTimecycleModifier
        SHX1_2 = "spectator5"
        SHX0_2(SHX1_2)
        SHX0_2 = SetTimecycleModifierStrength
        SHX1_2 = 0.4
        SHX0_2(SHX1_2)
        SHX0_2 = ShakeGameplayCam
        SHX1_2 = "SMALL_EXPLOSION_SHAKE"
        SHX2_2 = 0.03
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = SetPedMovementClipset
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = "move_m@sad@c"
        SHX3_2 = 0.2
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        goto SHX_LABEL_47
        -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
        ::SHX_LABEL_36::
        SHX0_2 = SHX1_1
        if SHX0_2 > 1 then
          SHX0_2 = SHX2_1
          if SHX0_2 > 1 then
            SHX0_2 = SHX8_1
            SHX0_2()
          end
        end
    end
    else
      SHX0_2 = SHX8_1
      SHX0_2()
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
  end
end
SHX10_1(SHX11_1)
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = SHX0_2
  SHX5_2 = "_"
  SHX6_2 = GetHashKey
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = SHX0_2.vending
  if SHX1_2 then
    SHX2_2 = SHX1_2.anim
    if SHX2_2 then
      SHX2_2 = SHX1_2.prop
      if SHX2_2 then
        goto SHX_LABEL_11
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.anim
  SHX3_2 = SHX3_2.dict
  SHX4_2 = SHX1_2.anim
  SHX4_2 = SHX4_2.clip
  SHX5_2 = type
  SHX6_2 = SHX1_2.prop
  SHX6_2 = SHX6_2.model
  SHX5_2 = SHX5_2(SHX6_2)
  if "string" == SHX5_2 then
    SHX5_2 = GetHashKey
    SHX6_2 = SHX1_2.prop
    SHX6_2 = SHX6_2.model
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      goto SHX_LABEL_31
    end
  end
  SHX5_2 = SHX1_2.prop
  SHX5_2 = SHX5_2.model
  -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
  ::SHX_LABEL_31::
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerCoords
  SHX6_2 = SHX6_2()
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.requestEntitySpawn
  SHX8_2 = "vending_pickup"
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = SHX3_2
  SHX7_2(SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadModel
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = CreateObject
  SHX8_2 = SHX5_2
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX8_2 = SHX1_2.prop
  SHX8_2 = SHX8_2.bone
  if not SHX8_2 then
    SHX8_2 = 18905
  end
  SHX9_2 = AttachEntityToEntity
  SHX10_2 = SHX7_2
  SHX11_2 = SHX2_2
  SHX12_2 = GetPedBoneIndex
  SHX13_2 = SHX2_2
  SHX14_2 = SHX8_2
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX13_2 = SHX1_2.prop
  SHX13_2 = SHX13_2.pos
  SHX13_2 = SHX13_2.x
  SHX14_2 = SHX1_2.prop
  SHX14_2 = SHX14_2.pos
  SHX14_2 = SHX14_2.y
  SHX15_2 = SHX1_2.prop
  SHX15_2 = SHX15_2.pos
  SHX15_2 = SHX15_2.z
  SHX16_2 = SHX1_2.prop
  SHX16_2 = SHX16_2.rot
  SHX16_2 = SHX16_2.x
  SHX17_2 = SHX1_2.prop
  SHX17_2 = SHX17_2.rot
  SHX17_2 = SHX17_2.y
  SHX18_2 = SHX1_2.prop
  SHX18_2 = SHX18_2.rot
  SHX18_2 = SHX18_2.z
  SHX19_2 = true
  SHX20_2 = true
  SHX21_2 = false
  SHX22_2 = true
  SHX23_2 = 1
  SHX24_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX9_2 = TaskPlayAnim
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = 8.0
  SHX14_2 = -8.0
  SHX15_2 = SHX1_2.usetime
  if not SHX15_2 then
    SHX15_2 = 2500
  end
  SHX16_2 = 49
  SHX17_2 = 0
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = SHX1_2.usetime
  if not SHX10_2 then
    SHX10_2 = 2500
  end
  SHX9_2(SHX10_2)
  SHX9_2 = DeleteEntity
  SHX10_2 = SHX7_2
  SHX9_2(SHX10_2)
  SHX9_2 = RemoveAnimDict
  SHX10_2 = SHX3_2
  SHX9_2(SHX10_2)
end
SHX12_1 = false
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX12_1
  if SHX1_2 then
    SHX1_2 = 0
    SHX2_2 = 0
    return SHX1_2, SHX2_2
  end
  SHX1_2 = true
  SHX12_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_1.food
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.setCanAnim
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_2 = false
    SHX12_1 = SHX3_2
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "f675f1a973"
    SHX3_2(SHX4_2)
    SHX3_2 = 0
    SHX4_2 = 0
    return SHX3_2, SHX4_2
  end
  SHX3_2 = SHX2_2.vending
  if SHX3_2 then
    SHX3_2 = SHX11_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  else
    SHX3_2 = type
    SHX4_2 = SHX2_2.props
    SHX3_2 = SHX3_2(SHX4_2)
    if "table" == SHX3_2 then
      SHX3_2 = ipairs
      SHX4_2 = SHX2_2.props
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX9_2 = SHX10_1
        SHX10_2 = SHX0_2
        SHX11_2 = SHX8_2
        SHX12_2 = SHX1_2
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      end
    end
    SHX3_2 = SHX2_2.use
    if SHX3_2 then
      SHX4_2 = SHX3_2.res
      if SHX4_2 then
        SHX4_2 = SHX3_2.fn
        if SHX4_2 then
          SHX4_2 = exports
          SHX5_2 = SHX3_2.res
          SHX4_2 = SHX4_2[SHX5_2]
          if SHX4_2 then
            SHX4_2 = exports
            SHX5_2 = SHX3_2.res
            SHX4_2 = SHX4_2[SHX5_2]
            SHX5_2 = SHX3_2.fn
            SHX4_2 = SHX4_2[SHX5_2]
            if SHX4_2 then
              SHX4_2 = exports
              SHX5_2 = SHX3_2.res
              SHX4_2 = SHX4_2[SHX5_2]
              SHX5_2 = SHX3_2.fn
              SHX4_2 = SHX4_2[SHX5_2]
              SHX4_2()
            end
          end
        end
      end
    end
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX2_2.hunger
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX2_2.hydration
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.setCanAnim
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = false
  SHX12_1 = SHX5_2
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "f675f1a973"
  SHX5_2(SHX6_2)
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "c82f62b8de"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.addHunger
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.addHydration
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX14_1(SHX15_1, SHX16_1)
