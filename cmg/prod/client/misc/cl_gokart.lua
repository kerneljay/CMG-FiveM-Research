-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = false
SHX1_1 = false
SHX2_1 = 0
SHX3_1 = {}
SHX4_1 = -1016.9984741211
SHX5_1 = -3493.4174804688
SHX6_1 = 14.143417358398
SHX7_1 = 58.0
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX4_1 = false
SHX5_1 = vector3
SHX6_1 = -1025.3901367188
SHX7_1 = -3474.9365234375
SHX8_1 = 14.229237937927
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = false
SHX7_1 = false
SHX8_1 = 1
SHX9_1 = 0
SHX10_1 = false
SHX11_1 = false
SHX12_1 = false
SHX13_1 = {}
SHX14_1 = {}
SHX15_1 = -1058.34765625
SHX16_1 = -3473.3583984375
SHX17_1 = 12.327661514282
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX15_1 = {}
SHX16_1 = -1035.6046142578
SHX17_1 = -3499.1516113281
SHX18_1 = 12.330018043518
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX16_1 = {}
SHX17_1 = -1074.3129882813
SHX18_1 = -3446.5241699219
SHX19_1 = 12.332399368286
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX17_1 = {}
SHX18_1 = -1118.0103759766
SHX19_1 = -3510.3559570313
SHX20_1 = 12.150929450989
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX18_1 = {}
SHX19_1 = -1077.2532958984
SHX20_1 = -3523.8186035156
SHX21_1 = 12.316527366638
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = -1059.4982910156
SHX21_1 = -3534.212890625
SHX22_1 = 18.846857070923
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = -1026.7734375
SHX22_1 = -3489.9467773438
SHX23_1 = 12.344030380249
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
SHX13_1[5] = SHX18_1
SHX13_1[6] = SHX19_1
SHX13_1[7] = SHX20_1
SHX14_1 = AddEventHandler
SHX15_1 = "CMG:onClientSpawn"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.createDynamicPed
    SHX3_2 = 2007797722
    SHX4_2 = vector3
    SHX5_2 = -1026.2969970703
    SHX6_2 = -3476.4011230469
    SHX7_2 = 14.329237937927
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = 0.0
    SHX6_2 = true
    SHX7_2 = nil
    SHX8_2 = nil
    SHX9_2 = 75.0
    SHX10_2 = nil
    function SHX11_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetEntityInvincible
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetBlockingOfNonTemporaryEvents
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addMarker
    SHX3_2 = SHX5_1.x
    SHX4_2 = SHX5_1.y
    SHX5_2 = SHX5_1.z
    SHX6_2 = 0.7
    SHX7_2 = 0.7
    SHX8_2 = 0.5
    SHX9_2 = 0
    SHX10_2 = 125
    SHX11_2 = 255
    SHX12_2 = 125
    SHX13_2 = 50
    SHX14_2 = 20
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "CMG:onClientSpawn"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX0_1
      if not SHX0_3 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = "Press ~INPUT_PICKUP~ to pay \194\1635,000 and compete in a race"
        SHX0_3(SHX1_3)
      else
        SHX0_3 = drawNativeNotification
        SHX1_3 = "~r~Race in progress, come back later!"
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
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX6_1
        if not SHX0_3 then
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "9ff5ff4d28"
          SHX0_3(SHX1_3)
        else
          SHX0_3 = tCMG
          SHX0_3 = SHX0_3.notify
          SHX1_3 = "~r~Please wait up to 60 seconds for us to refuel your kart."
          SHX0_3(SHX1_3)
        end
      end
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "gokart"
    SHX7_2 = SHX5_1
    SHX8_2 = 1.5
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = 55
SHX15_1 = 30
SHX16_1 = false
SHX17_1 = 0
SHX18_1 = Citizen
SHX18_1 = SHX18_1.CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX0_1
    if SHX0_2 then
      SHX0_2 = SHX16_1
      if SHX0_2 then
        SHX0_2 = SHX15_1
        SHX0_2 = SHX0_2 - 1
        SHX15_1 = SHX0_2
        SHX0_2 = SHX15_1
        if SHX0_2 < 1 then
          SHX0_2 = false
          SHX16_1 = SHX0_2
        end
      end
    end
    SHX0_2 = SHX11_1
    if SHX0_2 then
      SHX0_2 = SHX17_1
      SHX0_2 = SHX0_2 - 1
      SHX17_1 = SHX0_2
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 <= 0 then
    SHX2_2 = "00:00:00"
    return SHX2_2
  else
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = "%02.f"
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = SHX1_2 / 3600
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "%02.f"
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = SHX1_2 / 60
    SHX7_2 = SHX2_2 * 60
    SHX6_2 = SHX6_2 - SHX7_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "%02.f"
    SHX6_2 = math
    SHX6_2 = SHX6_2.floor
    SHX7_2 = SHX2_2 * 3600
    SHX7_2 = SHX1_2 - SHX7_2
    SHX8_2 = SHX3_2 * 60
    SHX7_2 = SHX7_2 - SHX8_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = SHX2_2
    SHX6_2 = ":"
    SHX7_2 = SHX3_2
    SHX8_2 = ":"
    SHX9_2 = SHX4_2
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2
    return SHX5_2
  end
end
SHX19_1 = CMG
SHX19_1 = SHX19_1.registerHudTimerBarProvider
SHX20_1 = "goKart"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  if SHX1_2 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = "LAP:"
    SHX3_2 = SHX8_1
    SHX4_2 = "/3"
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.push
    SHX2_2 = "TIME:"
    SHX3_2 = SHX18_1
    SHX4_2 = SHX9_1
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
  SHX1_2 = SHX11_1
  if SHX1_2 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = "ENDING IN:"
    SHX3_2 = tostring
    SHX4_2 = SHX17_1
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = false
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = drawNativeNotification
    SHX2_2 = "Press ~INPUT_CELLPHONE_LEFT~ or ~INPUT_CELLPHONE_RIGHT~ to change colour!"
    SHX1_2(SHX2_2)
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 174
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX14_1
      SHX1_2 = SHX1_2 - 1
      SHX14_1 = SHX1_2
      SHX1_2 = SHX14_1
      if SHX1_2 < 29 then
        SHX1_2 = 140
        SHX14_1 = SHX1_2
      end
      SHX1_2 = SetVehicleColours
      SHX2_2 = GetVehiclePedIsIn
      SHX3_2 = SHX0_2
      SHX4_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = SHX14_1
      SHX4_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 175
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX14_1
      SHX1_2 = SHX1_2 + 1
      SHX14_1 = SHX1_2
      SHX1_2 = SHX14_1
      SHX2_2 = 140
      if SHX1_2 > SHX2_2 then
        SHX1_2 = 29
        SHX14_1 = SHX1_2
      end
      SHX1_2 = SetVehicleColours
      SHX2_2 = GetVehiclePedIsIn
      SHX3_2 = SHX0_2
      SHX4_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = SHX14_1
      SHX4_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  end
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = GetVehicleEngineHealth
    SHX1_2 = SHX2_1
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = 150
    if SHX0_2 <= SHX1_2 then
      SHX0_2 = SHX19_1
      if not SHX0_2 then
        SHX0_2 = true
        SHX19_1 = SHX0_2
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.CreateThread
        function SHX1_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.getPlayerPed
          SHX0_3 = SHX0_3()
          SHX1_3 = DoScreenFadeOut
          SHX2_3 = 2000
          SHX1_3(SHX2_3)
          SHX1_3 = NetworkFadeOutEntity
          SHX2_3 = SHX0_3
          SHX3_3 = true
          SHX4_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
          SHX1_3 = Wait
          SHX2_3 = 2000
          SHX1_3(SHX2_3)
          SHX1_3 = SetEntityCoords
          SHX2_3 = SHX2_1
          SHX3_3 = SHX3_1
          SHX3_3 = SHX3_3[1]
          SHX4_3 = SHX3_1
          SHX4_3 = SHX4_3[2]
          SHX5_3 = SHX3_1
          SHX5_3 = SHX5_3[3]
          SHX6_3 = false
          SHX7_3 = false
          SHX8_3 = false
          SHX9_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          SHX1_3 = SetEntityHeading
          SHX2_3 = SHX2_1
          SHX3_3 = SHX3_1
          SHX3_3 = SHX3_3[4]
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = SetEntityHeading
          SHX2_3 = SHX0_3
          SHX3_3 = SHX3_1
          SHX3_3 = SHX3_3[4]
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = SetVehicleEngineHealth
          SHX2_3 = SHX2_1
          SHX3_3 = 1000.0
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = NetworkFadeInEntity
          SHX2_3 = SHX0_3
          SHX3_3 = false
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = DoScreenFadeIn
          SHX2_3 = 2000
          SHX1_3(SHX2_3)
          SHX1_3 = false
          SHX19_1 = SHX1_3
        end
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 49
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX15_1
    if SHX0_2 > 0 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.6
      SHX2_2 = 0.88
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.64
      SHX6_2 = "Race starting in "
      SHX7_2 = SHX15_1
      SHX8_2 = "  seconds!"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 36
      SHX8_2 = 146
      SHX9_2 = 36
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "goKart"
  SHX2_2 = SHX7_1
  if not SHX2_2 then
    SHX2_2 = SHX11_1
  end
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX12_1
  if SHX0_2 then
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 0
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 1
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 2
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 3
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 4
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 5
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 7
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 245
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 246
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 249
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
SHX22_1 = SHX20_1
SHX23_1 = "Go Karting"
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "d627b794a4"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX15_1 = SHX0_2
  SHX1_2 = true
  SHX0_1 = SHX1_2
  SHX1_2 = true
  SHX16_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -1913161790
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.requestEntitySpawn
  SHX3_2 = "gokart"
  SHX2_2(SHX3_2)
  SHX2_2 = CreateVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = -1002.2916870117
  SHX5_2 = -3488.869140625
  SHX6_2 = 14.22924041748
  SHX7_2 = 0.0
  SHX8_2 = true
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.initLocalVehicle
  SHX3_2 = SHX2_1
  SHX2_2(SHX3_2)
  SHX2_2 = TaskWarpPedIntoVehicle
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX2_1
  SHX5_2 = -1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX2_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX1_1 = SHX2_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "1da4cc4327"
  SHX2_2(SHX3_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "d23cc66588"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2[1]
  SHX4_2 = SHX0_2[2]
  SHX5_2 = SHX0_2[3]
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX2_1
  SHX3_2 = SHX0_2[4]
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2[4]
  SHX1_2(SHX2_2, SHX3_2)
end
SHX21_1(SHX22_1, SHX23_1)
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX7_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX9_1
      SHX0_3 = SHX0_3 + 1
      SHX9_1 = SHX0_3
      SHX0_3 = Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = true
  SHX7_1 = SHX0_2
  SHX0_2 = 0
  SHX9_1 = SHX0_2
  SHX0_2 = SHX21_1
  SHX0_2()
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = 1
  SHX1_2 = 3
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX8_1 = SHX3_2
    SHX4_2 = pairs
    SHX5_2 = SHX13_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX11_2 = SHX8_2 + 1
      SHX10_2 = SHX13_1
      SHX10_2 = SHX10_2[SHX11_2]
      if nil ~= SHX10_2 then
        SHX10_2 = CreateCheckpoint
        SHX11_2 = 1
        SHX12_2 = SHX9_2[1]
        SHX13_2 = SHX9_2[2]
        SHX14_2 = SHX9_2[3]
        SHX16_2 = SHX8_2 + 1
        SHX15_2 = SHX13_1
        SHX15_2 = SHX15_2[SHX16_2]
        SHX15_2 = SHX15_2[1]
        SHX17_2 = SHX8_2 + 1
        SHX16_2 = SHX13_1
        SHX16_2 = SHX16_2[SHX17_2]
        SHX16_2 = SHX16_2[2]
        SHX18_2 = SHX8_2 + 1
        SHX17_2 = SHX13_1
        SHX17_2 = SHX17_2[SHX18_2]
        SHX17_2 = SHX17_2[3]
        SHX18_2 = 5.0
        SHX19_2 = 36
        SHX20_2 = 146
        SHX21_2 = 36
        SHX22_2 = 255
        SHX23_2 = 0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX11_2 = GetEntityCoords
        SHX12_2 = CMG
        SHX12_2 = SHX12_2.getPlayerPed
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX12_2()
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX12_2 = vector3
        SHX13_2 = SHX9_2[1]
        SHX14_2 = SHX9_2[2]
        SHX15_2 = SHX9_2[3]
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        SHX11_2 = SHX11_2 - SHX12_2
        SHX11_2 = #SHX11_2
        while SHX11_2 > 5 do
          SHX12_2 = GetEntityCoords
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.getPlayerPed
          SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX13_2()
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          SHX13_2 = vector3
          SHX14_2 = SHX9_2[1]
          SHX15_2 = SHX9_2[2]
          SHX16_2 = SHX9_2[3]
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          SHX12_2 = SHX12_2 - SHX13_2
          SHX11_2 = #SHX12_2
          SHX12_2 = Wait
          SHX13_2 = 100
          SHX12_2(SHX13_2)
          SHX12_2 = SHX10_1
          if SHX12_2 then
            SHX12_2 = false
            SHX10_1 = SHX12_2
            SHX12_2 = DeleteCheckpoint
            SHX13_2 = SHX10_2
            SHX12_2(SHX13_2)
            return
          end
        end
        SHX12_2 = DeleteCheckpoint
        SHX13_2 = SHX10_2
        SHX12_2(SHX13_2)
      else
        SHX10_2 = CreateCheckpoint
        SHX11_2 = 1
        SHX12_2 = SHX9_2[1]
        SHX13_2 = SHX9_2[2]
        SHX14_2 = SHX9_2[3]
        SHX15_2 = SHX13_1
        SHX15_2 = SHX15_2[1]
        SHX15_2 = SHX15_2[1]
        SHX16_2 = SHX13_1
        SHX16_2 = SHX16_2[1]
        SHX16_2 = SHX16_2[2]
        SHX17_2 = SHX13_1
        SHX17_2 = SHX17_2[1]
        SHX17_2 = SHX17_2[3]
        SHX18_2 = 5.0
        SHX19_2 = 36
        SHX20_2 = 146
        SHX21_2 = 36
        SHX22_2 = 255
        SHX23_2 = 0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX11_2 = GetEntityCoords
        SHX12_2 = CMG
        SHX12_2 = SHX12_2.getPlayerPed
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX12_2()
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX12_2 = vector3
        SHX13_2 = SHX9_2[1]
        SHX14_2 = SHX9_2[2]
        SHX15_2 = SHX9_2[3]
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        SHX11_2 = SHX11_2 - SHX12_2
        SHX11_2 = #SHX11_2
        while SHX11_2 > 5 do
          SHX12_2 = GetEntityCoords
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.getPlayerPed
          SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX13_2()
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          SHX13_2 = vector3
          SHX14_2 = SHX9_2[1]
          SHX15_2 = SHX9_2[2]
          SHX16_2 = SHX9_2[3]
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          SHX12_2 = SHX12_2 - SHX13_2
          SHX11_2 = #SHX12_2
          SHX12_2 = Wait
          SHX13_2 = 100
          SHX12_2(SHX13_2)
          SHX12_2 = SHX10_1
          if SHX12_2 then
            SHX12_2 = false
            SHX10_1 = SHX12_2
            SHX12_2 = DeleteCheckpoint
            SHX13_2 = SHX10_2
            SHX12_2(SHX13_2)
            return
          end
        end
        SHX12_2 = DeleteCheckpoint
        SHX13_2 = SHX10_2
        SHX12_2(SHX13_2)
      end
      SHX10_2 = {}
      SHX11_2 = SHX9_2[1]
      SHX12_2 = SHX9_2[2]
      SHX13_2 = SHX9_2[3]
      SHX14_2 = GetEntityHeading
      SHX15_2 = CMG
      SHX15_2 = SHX15_2.getPlayerPed
      SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX15_2()
      SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX10_2[1] = SHX11_2
      SHX10_2[2] = SHX12_2
      SHX10_2[3] = SHX13_2
      SHX10_2[4] = SHX14_2
      SHX10_2[5] = SHX15_2
      SHX10_2[6] = SHX16_2
      SHX10_2[7] = SHX17_2
      SHX10_2[8] = SHX18_2
      SHX10_2[9] = SHX19_2
      SHX10_2[10] = SHX20_2
      SHX10_2[11] = SHX21_2
      SHX10_2[12] = SHX22_2
      SHX10_2[13] = SHX23_2
      SHX3_1 = SHX10_2
      SHX10_2 = SetVehicleEngineHealth
      SHX11_2 = SHX2_1
      SHX12_2 = GetVehicleEngineHealth
      SHX13_2 = SHX2_1
      SHX12_2 = SHX12_2(SHX13_2)
      SHX12_2 = SHX12_2 + 150.0
      SHX10_2(SHX11_2, SHX12_2)
    end
    if 3 ~= SHX3_2 then
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
        SHX0_3 = true
        SHX1_3 = SetTimeout
        SHX2_3 = 1000
        function SHX3_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
          SHX0_4 = false
          SHX0_3 = SHX0_4
        end
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = RequestScaleformMovie
        SHX2_3 = "mp_big_message_freemode"
        SHX1_3 = SHX1_3(SHX2_3)
        while true do
          SHX2_3 = HasScaleformMovieLoaded
          SHX3_3 = SHX1_3
          SHX2_3 = SHX2_3(SHX3_3)
          if SHX2_3 then
            break
          end
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.Wait
          SHX3_3 = 0
          SHX2_3(SHX3_3)
        end
        SHX2_3 = BeginScaleformMovieMethod
        SHX3_3 = SHX1_3
        SHX4_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX2_3(SHX3_3, SHX4_3)
        SHX2_3 = _ENV
        SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX2_3 = SHX2_3[SHX3_3]
        SHX3_3 = "~g~LAP "
        SHX4_3 = tostring
        SHX5_3 = SHX3_2
        SHX5_3 = SHX5_3 + 1
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = "/3 "
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3
        SHX2_3(SHX3_3)
        SHX2_3 = EndScaleformMovieMethod
        SHX2_3()
        while SHX0_3 do
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.Wait
          SHX3_3 = 0
          SHX2_3(SHX3_3)
          SHX2_3 = DrawScaleformMovieFullscreen
          SHX3_3 = SHX1_3
          SHX4_3 = 255
          SHX5_3 = 255
          SHX6_3 = 255
          SHX7_3 = 255
          SHX8_3 = 0
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        end
      end
      SHX4_2(SHX5_2)
    end
  end
  SHX0_2 = false
  SHX7_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "ed2bdda7a0"
  SHX0_2(SHX1_2)
end
SHX23_1 = RegisterNetEvent
SHX24_1 = "efbc8f6d54"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX1_1 = SHX0_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "5s"
  SHX3_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = 5
    SHX1_3 = 1
    SHX2_3 = SHX0_3
    SHX3_3 = 1
    for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = true
      SHX6_3 = SetTimeout
      SHX7_3 = 1000
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
        SHX0_4 = false
        SHX5_3 = SHX0_4
      end
      SHX6_3(SHX7_3, SHX8_3)
      SHX6_3 = RequestScaleformMovie
      SHX7_3 = "mp_big_message_freemode"
      SHX6_3 = SHX6_3(SHX7_3)
      while true do
        SHX7_3 = HasScaleformMovieLoaded
        SHX8_3 = SHX6_3
        SHX7_3 = SHX7_3(SHX8_3)
        if SHX7_3 then
          break
        end
        SHX7_3 = Citizen
        SHX7_3 = SHX7_3.Wait
        SHX8_3 = 0
        SHX7_3(SHX8_3)
      end
      SHX7_3 = BeginScaleformMovieMethod
      SHX8_3 = SHX6_3
      SHX9_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      SHX7_3(SHX8_3, SHX9_3)
      SHX7_3 = 5
      SHX7_3 = SHX7_3 - SHX4_3
      if 0 == SHX7_3 then
        SHX7_3 = _ENV
        SHX8_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX7_3 = SHX7_3[SHX8_3]
        SHX8_3 = "~g~GO!"
        SHX7_3(SHX8_3)
      else
        SHX7_3 = _ENV
        SHX8_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX7_3 = SHX7_3[SHX8_3]
        SHX8_3 = "~g~"
        SHX9_3 = tostring
        SHX10_3 = 5
        SHX10_3 = SHX10_3 - SHX4_3
        SHX9_3 = SHX9_3(SHX10_3)
        SHX8_3 = SHX8_3 .. SHX9_3
        SHX7_3(SHX8_3)
      end
      SHX7_3 = EndScaleformMovieMethod
      SHX7_3()
      while SHX5_3 do
        SHX7_3 = Citizen
        SHX7_3 = SHX7_3.Wait
        SHX8_3 = 0
        SHX7_3(SHX8_3)
        SHX7_3 = DrawScaleformMovieFullscreen
        SHX8_3 = SHX6_3
        SHX9_3 = 255
        SHX10_3 = 255
        SHX11_3 = 255
        SHX12_3 = 255
        SHX13_3 = 0
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      end
    end
    SHX1_3 = true
    SHX4_1 = SHX1_3
    SHX1_3 = SHX22_1
    SHX1_3()
  end
  SHX0_2(SHX1_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "d99a1e4b69"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = true
  SHX12_1 = SHX0_2
  SHX0_2 = SetVehicleBrake
  SHX1_2 = SHX2_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = TaskLeaveVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX2_1
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = RequestAnimDict
  SHX1_2 = "anim@arena@celeb@flat@solo@no_props@"
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = HasAnimDictLoaded
    SHX1_2 = "anim@arena@celeb@flat@solo@no_props@"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = RequestAnimDict
    SHX1_2 = "anim@arena@celeb@flat@solo@no_props@"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = TaskPlayAnim
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "anim@arena@celeb@flat@solo@no_props@"
  SHX3_2 = "flip_a_player_a"
  SHX4_2 = 8.0
  SHX5_2 = 8.0
  SHX6_2 = -1
  SHX7_2 = 1
  SHX8_2 = 1.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "anim@arena@celeb@flat@solo@no_props@"
  SHX0_2(SHX1_2)
  SHX0_2 = SetVehicleBrake
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "5be4e0edba"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = true
  SHX12_1 = SHX0_2
  SHX0_2 = SetVehicleBrake
  SHX1_2 = SHX2_1
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = TaskLeaveVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX2_1
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = RequestAnimDict
  SHX1_2 = "anim@arena@celeb@podium@no_prop@"
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = HasAnimDictLoaded
    SHX1_2 = "anim@arena@celeb@podium@no_prop@"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = RequestAnimDict
    SHX1_2 = "anim@arena@celeb@podium@no_prop@"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = TaskPlayAnim
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "anim@arena@celeb@podium@no_prop@"
  SHX3_2 = "flip_off_a_1st"
  SHX4_2 = 8.0
  SHX5_2 = 8.0
  SHX6_2 = -1
  SHX7_2 = 1
  SHX8_2 = 1.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "anim@arena@celeb@podium@no_prop@"
  SHX0_2(SHX1_2)
  SHX0_2 = SetVehicleBrake
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "1fd09ec70e"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 1000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX10_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX11_1 = SHX0_2
  SHX0_2 = 0
  SHX17_1 = SHX0_2
  SHX0_2 = false
  SHX4_1 = SHX0_2
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = false
  SHX12_1 = SHX0_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityCoords
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = -1024.3458251953
  SHX3_2 = -3472.9282226563
  SHX4_2 = 14.329239845276
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = 1
  SHX8_1 = SHX0_2
  SHX0_2 = 0
  SHX9_1 = SHX0_2
  SHX0_2 = false
  SHX7_1 = SHX0_2
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "e074276d45"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX11_1 = SHX0_2
  SHX0_2 = 30
  SHX17_1 = SHX0_2
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = Citizen
SHX23_1 = SHX23_1.CreateThread
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = -1026.2969970703
  SHX2_2 = -3476.4011230469
  SHX3_2 = 13.329237937927
  SHX4_2 = 127
  SHX5_2 = 3
  SHX6_2 = "Go Karting"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = -1680.2836914063
  SHX2_2 = -913.97357177734
  SHX3_2 = 8.0451745986938
  SHX4_2 = 136
  SHX5_2 = 47
  SHX6_2 = "Beach Cinema"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX23_1(SHX24_1)
