-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1
SHX0_1 = nil
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_trader"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = nil
SHX3_1 = nil
globalHeroinCommissionPercent = 0
globalLargeArmsCommission = 0
globalLSDNorthCommissionPercent = 0
globalLSDSouthCommissionPercent = 0
globalBlackMarketCommision = 0
SHX4_1 = {}
SHX4_1.Heroin = 0
SHX4_1.LSDNorth = 0
SHX4_1.LSDSouth = 0
SHX4_1.Gold = 0
SHX4_1.Diamond = 0
SHX5_1 = RegisterNetEvent
SHX6_1 = "5afc35de9e"
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  globalHeroinCommissionPercent = SHX0_2
  globalLargeArmsCommission = SHX1_2
  globalLSDNorthCommissionPercent = SHX2_2
  globalLSDSouthCommissionPercent = SHX3_2
  globalBlackMarketCommision = SHX4_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.trader
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 0.7
    SHX11_2 = 0.7
    SHX12_2 = 0.5
    SHX13_2 = SHX5_2.colour
    SHX13_2 = SHX13_2.r
    SHX14_2 = SHX5_2.colour
    SHX14_2 = SHX14_2.g
    SHX15_2 = SHX5_2.colour
    SHX15_2 = SHX15_2.b
    SHX16_2 = 125
    SHX17_2 = 50
    SHX18_2 = 29
    SHX19_2 = true
    SHX20_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createDynamicPed
    SHX7_2 = SHX5_2.dealerModel
    SHX8_2 = SHX5_2.dealerPos
    SHX9_2 = vector3
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = -1.0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX8_2 + SHX9_2
    SHX9_2 = SHX5_2.dealerHeading
    SHX10_2 = true
    SHX11_2 = "mini@strip_club@idles@bouncer@base"
    SHX12_2 = "base"
    SHX13_2 = 100
    SHX14_2 = false
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX5_1(SHX6_1)
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX2_1
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX2_1.name
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = tostring
  SHX2_2 = SHX2_1.name
  if not SHX2_2 then
    SHX2_2 = SHX0_2
  end
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = tonumber
  SHX3_2 = SHX2_1.nominal
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = tonumber
  SHX4_2 = SHX2_1.grindModifier
  if not SHX4_2 then
    SHX4_2 = 1.0
  end
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX2_1.static
  if not SHX5_2 then
    SHX5_2 = 0
  end
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = tonumber
  SHX6_2 = SHX2_1.commissionPercent
  if not SHX6_2 then
    SHX6_2 = 0
  end
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = tonumber
  SHX7_2 = SHX2_1.commissionAmount
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = SHX2_1.final
  if not SHX8_2 then
    SHX8_2 = 0
  end
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Separator
  SHX9_2 = "~b~%s Price Breakdown~s~"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = SHX1_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Separator
  SHX9_2 = "Base Price: \194\163%s"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = getMoneyStringFormatted
  SHX12_2 = SHX2_2
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Separator
  SHX9_2 = "Grind Boost: x%.2f"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = SHX3_2
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Separator
  SHX9_2 = "Static: \194\163%s"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = getMoneyStringFormatted
  SHX12_2 = SHX4_2
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  if SHX5_2 > 0 then
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Separator
    SHX9_2 = "Commission: %d%% ( \194\163%s )"
    SHX10_2 = SHX9_2
    SHX9_2 = SHX9_2.format
    SHX11_2 = SHX5_2
    SHX12_2 = getMoneyStringFormatted
    SHX13_2 = SHX6_2
    SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Separator
  SHX9_2 = "Final Sell Price: ~g~\194\163%s"
  SHX10_2 = SHX9_2
  SHX9_2 = SHX9_2.format
  SHX11_2 = getMoneyStringFormatted
  SHX12_2 = SHX7_2
  SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "trader"
SHX8_1 = "seller"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = "CMG Trader"
SHX11_1 = " "
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = 0
SHX17_1 = 0
SHX18_1 = 255
SHX19_1 = 255
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "trader"
SHX8_1 = "gold"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = "CMG Trader"
SHX11_1 = " "
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = 0
SHX17_1 = 0
SHX18_1 = 255
SHX19_1 = 255
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1 = RMenu
SHX6_1 = SHX6_1.Add
SHX7_1 = "trader"
SHX8_1 = "diamond"
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateMenu
SHX10_1 = "CMG Trader"
SHX11_1 = " "
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuWidth
SHX12_1 = SHX12_1()
SHX13_1 = CMG
SHX13_1 = SHX13_1.getRageUIMenuHeight
SHX13_1 = SHX13_1()
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = 0
SHX17_1 = 0
SHX18_1 = 255
SHX19_1 = 255
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "trader"
SHX11_1 = "seller"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = nil
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "trader"
  SHX4_2 = "gold"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX3_1
    if "Gold" == SHX0_3 then
      SHX0_3 = SHX5_1
      SHX1_3 = "Gold"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Sell Gold"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = GetVehiclePedIsIn
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "76484dfadb"
            SHX5_4 = false
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Exit your vehicle."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Sell All Gold"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = GetVehiclePedIsIn
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "76484dfadb"
            SHX5_4 = true
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Exit your vehicle."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "trader"
  SHX4_2 = "diamond"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX3_1
    if "Diamond" == SHX0_3 then
      SHX0_3 = SHX5_1
      SHX1_3 = "Diamond"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Sell Diamond"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = GetVehiclePedIsIn
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "5560f9a59e"
            SHX5_4 = false
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Exit your vehicle."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Sell All Diamond"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = GetVehiclePedIsIn
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4 = SHX4_4()
          SHX5_4 = false
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "5560f9a59e"
            SHX5_4 = true
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Exit your vehicle."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "trader"
  SHX4_2 = "seller"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX0_1
    if "Legal" == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Gold"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = "Gold"
          SHX3_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "c9a176b26c"
          SHX5_4 = "Gold"
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "trader"
      SHX9_3 = "gold"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Diamond"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = "Diamond"
          SHX3_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "c9a176b26c"
          SHX5_4 = "Diamond"
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "trader"
      SHX9_3 = "diamond"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    else
      SHX0_3 = SHX0_1
      if "Heroin" == SHX0_3 then
        SHX0_3 = SHX5_1
        SHX1_3 = "Heroin"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Sell Heroin"
        SHX2_3 = "\194\163"
        SHX3_3 = getMoneyStringFormatted
        SHX4_3 = SHX4_1.Heroin
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX3_3 = SHX3_3(SHX4_3)
        SHX2_3 = SHX2_3 .. SHX3_3
        SHX3_3 = {}
        SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX4_3 = true
        function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = GetVehiclePedIsIn
            SHX4_4 = CMG
            SHX4_4 = SHX4_4.getPlayerPed
            SHX4_4 = SHX4_4()
            SHX5_4 = false
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            if 0 == SHX3_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "9c236f5bf4"
              SHX5_4 = false
              SHX3_4(SHX4_4, SHX5_4)
            else
              SHX3_4 = tCMG
              SHX3_4 = SHX3_4.notify
              SHX4_4 = "~r~Exit your vehicle."
              SHX3_4(SHX4_4)
            end
          end
        end
        SHX6_3 = RMenu
        SHX7_3 = SHX6_3
        SHX6_3 = SHX6_3.Get
        SHX8_3 = "trader"
        SHX9_3 = "seller"
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Sell All Heroin"
        SHX2_3 = "\194\163"
        SHX3_3 = getMoneyStringFormatted
        SHX4_3 = SHX4_1.Heroin
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX3_3 = SHX3_3(SHX4_3)
        SHX2_3 = SHX2_3 .. SHX3_3
        SHX3_3 = {}
        SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX4_3 = true
        function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = GetVehiclePedIsIn
            SHX4_4 = CMG
            SHX4_4 = SHX4_4.getPlayerPed
            SHX4_4 = SHX4_4()
            SHX5_4 = false
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            if 0 == SHX3_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "9c236f5bf4"
              SHX5_4 = true
              SHX3_4(SHX4_4, SHX5_4)
            else
              SHX3_4 = tCMG
              SHX3_4 = SHX3_4.notify
              SHX4_4 = "~r~Exit your vehicle."
              SHX3_4(SHX4_4)
            end
          end
        end
        SHX6_3 = RMenu
        SHX7_3 = SHX6_3
        SHX6_3 = SHX6_3.Get
        SHX8_3 = "trader"
        SHX9_3 = "seller"
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      else
        SHX0_3 = SHX0_1
        if "LSDNorth" == SHX0_3 then
          SHX0_3 = SHX5_1
          SHX1_3 = "LSDNorth"
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "Sell LSD"
          SHX2_3 = "\194\163"
          SHX3_3 = getMoneyStringFormatted
          SHX4_3 = SHX4_1.LSDNorth
          if not SHX4_3 then
            SHX4_3 = 0
          end
          SHX3_3 = SHX3_3(SHX4_3)
          SHX2_3 = SHX2_3 .. SHX3_3
          SHX3_3 = {}
          SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX4_3 = true
          function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = GetVehiclePedIsIn
              SHX4_4 = CMG
              SHX4_4 = SHX4_4.getPlayerPed
              SHX4_4 = SHX4_4()
              SHX5_4 = false
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              if 0 == SHX3_4 then
                SHX3_4 = TriggerServerEvent
                SHX4_4 = "e430f7bf39"
                SHX5_4 = false
                SHX3_4(SHX4_4, SHX5_4)
              else
                SHX3_4 = tCMG
                SHX3_4 = SHX3_4.notify
                SHX4_4 = "~r~Exit your vehicle."
                SHX3_4(SHX4_4)
              end
            end
          end
          SHX6_3 = RMenu
          SHX7_3 = SHX6_3
          SHX6_3 = SHX6_3.Get
          SHX8_3 = "trader"
          SHX9_3 = "seller"
          SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "Sell All LSD"
          SHX2_3 = "\194\163"
          SHX3_3 = getMoneyStringFormatted
          SHX4_3 = SHX4_1.LSDNorth
          if not SHX4_3 then
            SHX4_3 = 0
          end
          SHX3_3 = SHX3_3(SHX4_3)
          SHX2_3 = SHX2_3 .. SHX3_3
          SHX3_3 = {}
          SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX4_3 = true
          function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = GetVehiclePedIsIn
              SHX4_4 = CMG
              SHX4_4 = SHX4_4.getPlayerPed
              SHX4_4 = SHX4_4()
              SHX5_4 = false
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              if 0 == SHX3_4 then
                SHX3_4 = TriggerServerEvent
                SHX4_4 = "e430f7bf39"
                SHX5_4 = true
                SHX3_4(SHX4_4, SHX5_4)
              else
                SHX3_4 = tCMG
                SHX3_4 = SHX3_4.notify
                SHX4_4 = "~r~Exit your vehicle."
                SHX3_4(SHX4_4)
              end
            end
          end
          SHX6_3 = RMenu
          SHX7_3 = SHX6_3
          SHX6_3 = SHX6_3.Get
          SHX8_3 = "trader"
          SHX9_3 = "seller"
          SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        else
          SHX0_3 = SHX0_1
          if "LSDSouth" == SHX0_3 then
            SHX0_3 = SHX5_1
            SHX1_3 = "LSDSouth"
            SHX0_3(SHX1_3)
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.ButtonWithStyle
            SHX1_3 = "Sell LSD"
            SHX2_3 = "\194\163"
            SHX3_3 = getMoneyStringFormatted
            SHX4_3 = SHX4_1.LSDSouth
            if not SHX4_3 then
              SHX4_3 = 0
            end
            SHX3_3 = SHX3_3(SHX4_3)
            SHX2_3 = SHX2_3 .. SHX3_3
            SHX3_3 = {}
            SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
            SHX4_3 = true
            function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4
              if SHX2_4 then
                SHX3_4 = GetVehiclePedIsIn
                SHX4_4 = CMG
                SHX4_4 = SHX4_4.getPlayerPed
                SHX4_4 = SHX4_4()
                SHX5_4 = false
                SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                if 0 == SHX3_4 then
                  SHX3_4 = TriggerServerEvent
                  SHX4_4 = "78aa10bf20"
                  SHX5_4 = false
                  SHX3_4(SHX4_4, SHX5_4)
                else
                  SHX3_4 = tCMG
                  SHX3_4 = SHX3_4.notify
                  SHX4_4 = "~r~Exit your vehicle."
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX6_3 = RMenu
            SHX7_3 = SHX6_3
            SHX6_3 = SHX6_3.Get
            SHX8_3 = "trader"
            SHX9_3 = "seller"
            SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.ButtonWithStyle
            SHX1_3 = "Sell All LSD"
            SHX2_3 = "\194\163"
            SHX3_3 = getMoneyStringFormatted
            SHX4_3 = SHX4_1.LSDSouth
            if not SHX4_3 then
              SHX4_3 = 0
            end
            SHX3_3 = SHX3_3(SHX4_3)
            SHX2_3 = SHX2_3 .. SHX3_3
            SHX3_3 = {}
            SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
            SHX4_3 = true
            function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4
              if SHX2_4 then
                SHX3_4 = GetVehiclePedIsIn
                SHX4_4 = CMG
                SHX4_4 = SHX4_4.getPlayerPed
                SHX4_4 = SHX4_4()
                SHX5_4 = false
                SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                if 0 == SHX3_4 then
                  SHX3_4 = TriggerServerEvent
                  SHX4_4 = "78aa10bf20"
                  SHX5_4 = true
                  SHX3_4(SHX4_4, SHX5_4)
                else
                  SHX3_4 = tCMG
                  SHX3_4 = SHX3_4.notify
                  SHX4_4 = "~r~Exit your vehicle."
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX6_3 = RMenu
            SHX7_3 = SHX6_3
            SHX6_3 = SHX6_3.Get
            SHX8_3 = "trader"
            SHX9_3 = "seller"
            SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          else
            SHX0_3 = SHX0_1
            if "Fish" == SHX0_3 then
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Common Fish"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "common"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Uncommon Fish"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "uncommon"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Rare Fish"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "rare"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Very Rare Fish"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "veryrare"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Ultra Rare Fish"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "ultrarare"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Small Shark Fin"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "smallshark"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Medium Shark Fin"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "mediumshark"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Sell Large Shark Fin"
              SHX2_3 = ""
              SHX3_3 = {}
              SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
              SHX4_3 = true
              function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = GetVehiclePedIsIn
                  SHX4_4 = CMG
                  SHX4_4 = SHX4_4.getPlayerPed
                  SHX4_4 = SHX4_4()
                  SHX5_4 = false
                  SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
                  if 0 == SHX3_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "2270f7a009"
                    SHX5_4 = "largeshark"
                    SHX3_4(SHX4_4, SHX5_4)
                  else
                    SHX3_4 = tCMG
                    SHX3_4 = SHX3_4.notify
                    SHX4_4 = "~r~Exit your vehicle."
                    SHX3_4(SHX4_4)
                  end
                end
              end
              SHX6_3 = RMenu
              SHX7_3 = SHX6_3
              SHX6_3 = SHX6_3.Get
              SHX8_3 = "trader"
              SHX9_3 = "seller"
              SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
            end
          end
        end
      end
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "trader"
      SHX4_3 = "seller"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.CloseAll
      SHX0_3()
      SHX0_3 = nil
      SHX2_1 = SHX0_3
      SHX0_3 = nil
      SHX3_1 = SHX0_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 1
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX0_3.traderName
        SHX0_1 = SHX1_3
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Visible
        SHX2_3 = RMenu
        SHX3_3 = SHX2_3
        SHX2_3 = SHX2_3.Get
        SHX4_3 = "trader"
        SHX5_3 = "seller"
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        SHX3_3 = RageUI
        SHX3_3 = SHX3_3.Visible
        SHX4_3 = RMenu
        SHX5_3 = SHX4_3
        SHX4_3 = SHX4_3.Get
        SHX6_3 = "trader"
        SHX7_3 = "seller"
        SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX3_3 = not SHX3_3
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = TriggerServerEvent
        SHX2_3 = "c9a176b26c"
        SHX3_3 = SHX0_1
        SHX1_3(SHX2_3, SHX3_3)
      end
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.DrawText3D
      SHX2_3 = SHX1_1.trader
      SHX3_3 = SHX0_3.traderId
      SHX2_3 = SHX2_3[SHX3_3]
      SHX2_3 = SHX2_3.position
      SHX3_3 = "Press [E] to open seller"
      SHX4_3 = 0.2
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1.trader
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "trader_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.position
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX19_2.traderId = SHX9_2
      SHX20_2 = SHX10_2.type
      SHX19_2.traderName = SHX20_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "bbd7e56d6b"
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2
  SHX5_2 = SHX0_2 or nil
  if not SHX0_2 then
    SHX5_2 = 0
  end
  SHX4_1.Heroin = SHX5_2
  SHX5_2 = SHX1_2 or SHX5_2
  if not SHX1_2 then
    SHX5_2 = 0
  end
  SHX4_1.LSDNorth = SHX5_2
  SHX5_2 = SHX2_2 or SHX5_2
  if not SHX2_2 then
    SHX5_2 = 0
  end
  SHX4_1.LSDSouth = SHX5_2
  SHX5_2 = SHX3_2 or SHX5_2
  if not SHX3_2 then
    SHX5_2 = 0
  end
  SHX4_1.Gold = SHX5_2
  SHX5_2 = SHX4_2 or SHX5_2
  if not SHX4_2 then
    SHX5_2 = 0
  end
  SHX4_1.Diamond = SHX5_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "83b7436490"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
