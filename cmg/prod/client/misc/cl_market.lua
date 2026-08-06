-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgmarket"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "Items"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_marketui"
SHX9_1 = "cmg_marketui"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgmarket"
SHX2_1 = "amount"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgmarket"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = " "
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX8_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX0_1 = {}
SHX0_1.menuOpen = false
SHX0_1.currentMenu = 0
SHX1_1 = {}
SHX0_1.markets = SHX1_1
SHX1_1 = {}
SHX0_1.marketsTypes = SHX1_1
SHX0_1.distanceToMarket = 0
SHX1_1 = {}
SHX0_1.currentMarket = SHX1_1
SHX0_1.amountIndex = 1
SHX1_1 = {}
SHX0_1.selectedItem = SHX1_1
SHX1_1 = {}
SHX0_1.itemNames = SHX1_1
SHX0_1.currentMarketId = ""
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = 1
SHX7_1 = 100
SHX8_1 = 1
for SHX9_1 = SHX6_1, SHX7_1, SHX8_1 do
  SHX10_1 = table
  SHX10_1 = SHX10_1.insert
  SHX11_1 = SHX5_1
  SHX12_1 = tostring
  SHX13_1 = SHX9_1
  SHX12_1, SHX13_1 = SHX12_1(SHX13_1)
  SHX10_1(SHX11_1, SHX12_1, SHX13_1)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2
    SHX9_2 = 1
    SHX10_2 = type
    SHX11_2 = SHX7_2
    SHX10_2 = SHX10_2(SHX11_2)
    if "table" == SHX10_2 then
      SHX8_2 = SHX7_2.price
      SHX9_2 = SHX7_2.amountGiven
    end
    if "_config" ~= SHX6_2 then
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX1_2
      SHX12_2 = {}
      SHX12_2.itemId = SHX6_2
      SHX12_2.price = SHX8_2
      SHX12_2.amountGiven = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
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
    SHX2_3 = SHX0_3.price
    SHX3_3 = SHX1_3.price
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3 + 1
    SHX2_2 = SHX0_3
    SHX1_3 = SHX2_2
    SHX0_3 = SHX1_2
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX0_3 = 0
      SHX2_3 = SHX2_2
      SHX1_3 = SHX1_2
      SHX1_3 = SHX1_3[SHX2_3]
      return SHX0_3, SHX1_3
    else
      SHX0_3 = nil
      SHX1_3 = nil
      return SHX0_3, SHX1_3
    end
  end
  return SHX3_2
end
SHX7_1 = RageUI
SHX7_1 = SHX7_1.CreateWhile
SHX8_1 = 1.0
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "cmgmarket"
SHX12_1 = "main"
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = nil
function SHX11_1()
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
  SHX3_2 = "cmgmarket"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = false
    SHX1_3 = SHX6_1
    SHX2_3 = SHX0_1.currentMarket
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = SHX0_1.currentMarket
      SHX7_3 = SHX7_3._config
      SHX7_3 = SHX7_3.lottery
      if SHX7_3 and not SHX0_3 then
        SHX7_3 = SHX6_3.price
        SHX8_3 = CMG
        SHX8_3 = SHX8_3.getLotteryTicketPrice
        SHX8_3 = SHX8_3()
        if SHX7_3 > SHX8_3 then
          SHX7_3 = RageUI
          SHX7_3 = SHX7_3.ButtonWithStyle
          SHX8_3 = "Lottery Ticket"
          SHX9_3 = ""
          SHX10_3 = {}
          SHX11_3 = "\194\163"
          SHX12_3 = getMoneyStringFormatted
          SHX13_3 = CMG
          SHX13_3 = SHX13_3.getLotteryTicketPrice
          SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX13_3()
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
          SHX11_3 = SHX11_3 .. SHX12_3
          SHX10_3.RightLabel = SHX11_3
          SHX11_3 = true
          function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4
            if SHX2_4 then
              SHX3_4 = RMenu
              SHX4_4 = SHX3_4
              SHX3_4 = SHX3_4.Get
              SHX5_4 = "cmgmarket"
              SHX6_4 = "amount"
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              SHX4_4 = {}
              SHX4_4.item_id = "lottery"
              SHX5_4 = CMG
              SHX5_4 = SHX5_4.getLotteryTicketPrice
              SHX5_4 = SHX5_4()
              SHX4_4.price = SHX5_4
              SHX3_4.MetaData = SHX4_4
            end
          end
          SHX13_3 = RMenu
          SHX14_3 = SHX13_3
          SHX13_3 = SHX13_3.Get
          SHX15_3 = "cmgmarket"
          SHX16_3 = "amount"
          SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
          SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
          SHX0_3 = true
        end
      end
      SHX7_3 = SHX0_1.itemNames
      SHX8_3 = SHX0_1.currentMarketId
      SHX7_3 = SHX7_3[SHX8_3]
      SHX8_3 = SHX6_3.itemId
      SHX7_3 = SHX7_3[SHX8_3]
      SHX7_3 = SHX7_3[1]
      SHX8_3 = SHX6_3.amountGiven
      if SHX8_3 > 1 then
        SHX8_3 = tostring
        SHX9_3 = SHX6_3.amountGiven
        SHX8_3 = SHX8_3(SHX9_3)
        SHX9_3 = "x "
        SHX10_3 = SHX7_3
        SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3
        SHX7_3 = SHX8_3
      end
      SHX8_3 = SHX6_3.price
      SHX9_3 = SHX6_3.itemId
      if "burner_phone" == SHX9_3 then
        SHX9_3 = CMG
        SHX10_3 = "getMoneyLaunderingBurnerPhoneDiscountPercentClient"
        SHX9_3 = SHX9_3[SHX10_3]
        SHX9_3 = SHX9_3()
        if SHX9_3 > 0 then
          SHX10_3 = math
          SHX10_3 = SHX10_3.floor
          SHX11_3 = SHX6_3.price
          SHX12_3 = SHX9_3 / 100
          SHX13_3 = 1
          SHX12_3 = SHX13_3 - SHX12_3
          SHX11_3 = SHX11_3 * SHX12_3
          SHX10_3 = SHX10_3(SHX11_3)
          SHX8_3 = SHX10_3
        end
      end
      SHX9_3 = SHX6_3.itemId
      if "spraycan" == SHX9_3 then
        SHX9_3 = CMG
        SHX9_3 = SHX9_3.getClientGangRpSpraycanDiscountPercent
        SHX9_3 = SHX9_3()
        if SHX9_3 > 0 then
          SHX10_3 = math
          SHX10_3 = SHX10_3.floor
          SHX11_3 = SHX6_3.price
          SHX12_3 = SHX9_3 / 100
          SHX13_3 = 1
          SHX12_3 = SHX13_3 - SHX12_3
          SHX11_3 = SHX11_3 * SHX12_3
          SHX10_3 = SHX10_3(SHX11_3)
          SHX8_3 = SHX10_3
        end
      end
      SHX9_3 = {}
      SHX10_3 = SHX6_3.itemId
      SHX9_3.item_id = SHX10_3
      SHX9_3.price = SHX8_3
      SHX10_3 = SHX0_1.currentMarketId
      SHX9_3.marketId = SHX10_3
      SHX10_3 = SHX0_1.currentMarketId
      if "trapper" == SHX10_3 then
        SHX10_3 = CMG
        SHX10_3 = SHX10_3.getTrapperSupplyDiscountPercentClient
        SHX10_3 = SHX10_3()
        if SHX10_3 > 0 then
          SHX9_3.preTrapperUnitPrice = SHX8_3
          SHX9_3.trapperDiscountPct = SHX10_3
          SHX11_3 = math
          SHX11_3 = SHX11_3.max
          SHX12_3 = 1
          SHX13_3 = math
          SHX13_3 = SHX13_3.floor
          SHX14_3 = 100
          SHX14_3 = SHX14_3 - SHX10_3
          SHX14_3 = SHX8_3 * SHX14_3
          SHX14_3 = SHX14_3 / 100
          SHX14_3 = SHX14_3 + 0.5
          SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX13_3(SHX14_3)
          SHX11_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
          SHX8_3 = SHX11_3
        end
      end
      SHX10_3 = RageUI
      SHX10_3 = SHX10_3.ButtonWithStyle
      SHX11_3 = SHX7_3
      SHX12_3 = SHX0_1.itemNames
      SHX13_3 = SHX0_1.currentMarketId
      SHX12_3 = SHX12_3[SHX13_3]
      SHX13_3 = SHX6_3.itemId
      SHX12_3 = SHX12_3[SHX13_3]
      SHX12_3 = SHX12_3[3]
      SHX13_3 = {}
      SHX14_3 = "\194\163"
      SHX15_3 = getMoneyStringFormatted
      SHX16_3 = SHX8_3
      SHX15_3 = SHX15_3(SHX16_3)
      SHX14_3 = SHX14_3 .. SHX15_3
      SHX13_3.RightLabel = SHX14_3
      SHX14_3 = true
      function SHX15_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = RMenu
          SHX4_4 = SHX3_4
          SHX3_4 = SHX3_4.Get
          SHX5_4 = "cmgmarket"
          SHX6_4 = "amount"
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX4_4 = SHX9_3
          SHX3_4.MetaData = SHX4_4
        end
      end
      SHX16_3 = RMenu
      SHX17_3 = SHX16_3
      SHX16_3 = SHX16_3.Get
      SHX18_3 = "cmgmarket"
      SHX19_3 = "amount"
      SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX16_3(SHX17_3, SHX18_3, SHX19_3)
      SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
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
  SHX3_2 = "cmgmarket"
  SHX4_2 = "amount"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX1_3 = SHX0_3.price
    SHX2_3 = SHX0_1.amountIndex
    SHX1_3 = SHX1_3 * SHX2_3
    SHX2_3 = SHX0_3.preTrapperUnitPrice
    if SHX2_3 then
      SHX2_3 = SHX0_3.trapperDiscountPct
      if SHX2_3 then
        SHX2_3 = math
        SHX2_3 = SHX2_3.max
        SHX3_3 = 1
        SHX4_3 = math
        SHX4_3 = SHX4_3.floor
        SHX5_3 = SHX0_3.preTrapperUnitPrice
        SHX6_3 = SHX0_1.amountIndex
        SHX5_3 = SHX5_3 * SHX6_3
        SHX6_3 = SHX0_3.trapperDiscountPct
        SHX7_3 = 100
        SHX6_3 = SHX7_3 - SHX6_3
        SHX5_3 = SHX5_3 * SHX6_3
        SHX5_3 = SHX5_3 / 100
        SHX5_3 = SHX5_3 + 0.5
        SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX4_3(SHX5_3)
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX1_3 = SHX2_3
      end
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Amount"
    SHX4_3 = SHX5_1
    SHX5_3 = SHX0_1.amountIndex
    SHX6_3 = "Current Price: \194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX1_3
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX7_3 = {}
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      if SHX1_4 then
        SHX0_1.amountIndex = SHX3_4
      end
    end
    function SHX10_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX11_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Button
    SHX3_3 = "Buy"
    SHX4_3 = "Current Price: \194\163"
    SHX5_3 = getMoneyStringFormatted
    SHX6_3 = SHX1_3
    SHX5_3 = SHX5_3(SHX6_3)
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = SHX0_3.item_id
        if "lottery" == SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "a708fb421f"
          SHX5_4 = SHX0_1.amountIndex
          SHX3_4(SHX4_4, SHX5_4)
        else
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.purchaseFromMarket
          SHX4_4 = SHX0_3.marketId
          SHX5_4 = SHX0_3.item_id
          SHX6_4 = SHX0_1.amountIndex
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "f7338579d9"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = 1
  SHX2_2 = SHX3_1
  SHX2_2 = #SHX2_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.removeArea
    SHX6_2 = SHX3_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2(SHX6_2)
    SHX5_2 = SHX3_1
    SHX5_2[SHX4_2] = nil
  end
  SHX1_2 = 1
  SHX2_2 = SHX2_1
  SHX2_2 = #SHX2_2
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = tCMG
    SHX5_2 = SHX5_2.removeMarker
    SHX6_2 = SHX2_1
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2(SHX6_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX4_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.removeBlip
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  function SHX1_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX2_3 = SHX0_3.market_id
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX0_1.currentMarket = SHX1_3
    SHX1_3 = SHX0_3.market_id
    SHX0_1.currentMarketId = SHX1_3
    SHX0_1.menuOpen = true
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Visible
    SHX2_3 = RMenu
    SHX3_3 = SHX2_3
    SHX2_3 = SHX2_3.Get
    SHX4_3 = "cmgmarket"
    SHX5_3 = "main"
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = SHX0_1.currentMarket
    SHX1_3 = SHX1_3._config
    SHX1_3 = SHX1_3.policeEquipment
    if SHX1_3 then
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "cmgmarket"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.SetSpriteBanner
      SHX3_3 = "cmg_equipment"
      SHX4_3 = "cmg_equipment"
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    else
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "cmgmarket"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.SetSpriteBanner
      SHX3_3 = "cmg_marketui"
      SHX4_3 = "cmg_marketui"
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    end
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_1.menuOpen = false
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.IsAnyMenuOfTypeVisible
    SHX1_3 = "cmgmarket"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.CloseAll
      SHX0_3()
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
  SHX4_2 = 1
  SHX5_2 = #SHX0_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX0_2[SHX7_2]
    SHX9_2 = "market"
    SHX10_2 = SHX0_2[SHX7_2]
    SHX10_2 = SHX10_2[1]
    SHX11_2 = SHX7_2
    SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.createArea
    SHX11_2 = SHX9_2
    SHX12_2 = SHX8_2[2]
    SHX13_2 = 1.25
    SHX14_2 = 6
    SHX15_2 = SHX1_2
    SHX16_2 = SHX2_2
    SHX17_2 = SHX3_2
    SHX18_2 = {}
    SHX19_2 = SHX0_2[SHX7_2]
    SHX19_2 = SHX19_2[1]
    SHX18_2.market_id = SHX19_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX10_2 = tCMG
    SHX10_2 = SHX10_2.addMarker
    SHX11_2 = SHX8_2[2]
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX8_2[2]
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX8_2[2]
    SHX13_2 = SHX13_2.z
    SHX14_2 = 0.7
    SHX15_2 = 0.7
    SHX16_2 = 0.5
    SHX17_2 = 0
    SHX18_2 = 255
    SHX19_2 = 125
    SHX20_2 = 125
    SHX21_2 = 50
    SHX22_2 = 29
    SHX23_2 = true
    SHX24_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX11_2 = SHX3_1
    SHX11_2 = #SHX11_2
    SHX12_2 = SHX11_2 + 1
    SHX11_2 = SHX3_1
    SHX11_2[SHX12_2] = SHX9_2
    SHX11_2 = SHX2_1
    SHX11_2 = #SHX11_2
    SHX12_2 = SHX11_2 + 1
    SHX11_2 = SHX2_1
    SHX11_2[SHX12_2] = SHX10_2
    SHX12_2 = SHX8_2[1]
    SHX11_2 = SHX1_1
    SHX11_2 = SHX11_2[SHX12_2]
    if SHX11_2 then
      SHX12_2 = SHX11_2._config
      if SHX12_2 then
        SHX13_2 = SHX12_2.showBlip
        if SHX13_2 then
          SHX13_2 = table
          SHX13_2 = SHX13_2.insert
          SHX14_2 = SHX4_1
          SHX15_2 = tCMG
          SHX15_2 = SHX15_2.addBlip
          SHX16_2 = SHX8_2[2]
          SHX16_2 = SHX16_2.x
          SHX17_2 = SHX8_2[2]
          SHX17_2 = SHX17_2.y
          SHX18_2 = SHX8_2[2]
          SHX18_2 = SHX18_2.z
          SHX19_2 = SHX12_2.blipid
          SHX20_2 = SHX12_2.blipcolor
          SHX21_2 = nil
          SHX22_2 = 0.7
          SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        end
      end
    end
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "bc42cc0fbd"
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1 = SHX0_2
  SHX0_1.itemNames = SHX1_2
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "963a1f4ac7"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.transactionType = "playMoney"
  SHX0_2(SHX1_2)
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "0226731f8f"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
GetMarketRefund = SHX7_1
SHX7_1 = CMG
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "6f5c12edde"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX7_1.purchaseFromMarket = SHX8_1
