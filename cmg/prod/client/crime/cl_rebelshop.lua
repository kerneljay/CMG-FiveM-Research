-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = vector3
SHX1_1 = 1416.8923339844
SHX2_1 = 6359.4326171875
SHX3_1 = 22.999128631592
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = vector4
SHX2_1 = 1416.2241210938
SHX3_1 = 6360.580078125
SHX4_1 = 24.005859375
SHX5_1 = 201.25984191895
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = nil
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to sell any Vigilante weapons."
  SHX0_2(SHX1_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 51
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = IsDisabledControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "3ba20beab5"
    SHX0_2(SHX1_2)
  end
end
SHX4_1 = CMG
SHX4_1 = SHX4_1.createArea
SHX5_1 = "rebel_token_selling"
SHX6_1 = SHX0_1
SHX7_1 = 2.0
SHX8_1 = 3.0
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX11_1 = SHX3_1
SHX12_1 = {}
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX4_1 = tCMG
SHX4_1 = SHX4_1.addMarker
SHX5_1 = SHX0_1.x
SHX6_1 = SHX0_1.y
SHX7_1 = SHX0_1.z
SHX8_1 = 1.0
SHX9_1 = 1.0
SHX10_1 = 1.0
SHX11_1 = 255
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = 170
SHX15_1 = 50
SHX16_1 = 27
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX4_1 = CMG
SHX4_1 = SHX4_1.createDynamicPed
SHX5_1 = 1161072059
SHX6_1 = SHX1_1.xyz
SHX7_1 = SHX1_1.w
SHX8_1 = true
SHX9_1 = nil
SHX10_1 = nil
SHX11_1 = 25.0
SHX12_1 = nil
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "545aed5eba"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.generateUUID
  SHX1_2 = "vigilante_sell"
  SHX2_2 = 10
  SHX3_2 = "alphanumeric"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX2_1 = SHX0_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = 30000
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = SHX2_1
    SHX1_3 = SHX0_2
    if SHX0_3 == SHX1_3 then
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "b8ae897759"
      SHX0_3(SHX1_3)
      SHX0_3 = nil
      SHX2_1 = SHX0_3
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCombatTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCombatTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.isInComa
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      SHX4_2 = IsEntityDead
      SHX5_2 = SHX1_2
      SHX4_2 = SHX4_2(SHX5_2)
      if not (SHX4_2 or SHX2_2 < SHX3_2) then
        goto SHX_LABEL_45
      end
    end
    SHX4_2 = notify
    SHX5_2 = "~r~Cancelling sell as you have been damaged."
    SHX4_2(SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.stopCircularProgressBar
    SHX4_2()
    SHX4_2 = nil
    SHX2_1 = SHX4_2
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
    ::SHX_LABEL_45::
    SHX2_2 = SHX3_2
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
