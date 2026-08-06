-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_taco"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = nil
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = {}
SHX6_1.isSellingTacos = false
SHX6_1.tacoBoxObj = nil
SHX6_1.carryingBox = false
SHX7_1 = SHX0_1.tacoPrice
SHX7_1 = SHX7_1[1]
SHX6_1.tacoPrice = SHX7_1
SHX6_1.lastSentPayEvent = 0
SHX6_1.sellerMenu = false
SHX6_1.firstTimeTacoTruck = false
SHX7_1 = nil
SHX8_1 = {}
SHX9_1 = 1
SHX10_1 = 1
SHX11_1 = 100
SHX12_1 = 1
for SHX13_1 = SHX10_1, SHX11_1, SHX12_1 do
  SHX14_1 = table
  SHX14_1 = SHX14_1.insert
  SHX15_1 = SHX8_1
  SHX16_1 = SHX13_1
  SHX14_1(SHX15_1, SHX16_1)
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~Now selling tacos!"
  SHX1_2(SHX2_2)
  SHX1_2 = SetVehicleDoorOpen
  SHX2_2 = SHX0_2
  SHX3_2 = 5
  SHX4_2 = true
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX7_1 = SHX0_2
  SHX6_1.isSellingTacos = true
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = GetVehiclePedIsIn
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3 = SHX1_3()
      SHX2_3 = false
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      SHX1_3 = SHX7_1
      if SHX0_3 ~= SHX1_3 then
        break
      end
      SHX0_3 = SHX6_1.isSellingTacos
      if not SHX0_3 then
        break
      end
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
    end
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.notify
    SHX1_3 = "~r~Stopped selling tacos!"
    SHX0_3(SHX1_3)
    SHX0_3 = SetVehicleDoorShut
    SHX1_3 = SHX0_2
    SHX2_3 = 5
    SHX3_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = FreezeEntityPosition
    SHX1_3 = SHX0_2
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = nil
    SHX7_1 = SHX0_3
    SHX6_1.isSellingTacos = false
    SHX0_3 = TriggerServerEvent
    SHX1_3 = "269fa358fc"
    SHX0_3(SHX1_3)
    SHX0_3 = Wait
    SHX1_3 = 100
    SHX0_3(SHX1_3)
  end
  SHX1_2(SHX2_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SetVehicleDoorShut
  SHX2_2 = SHX0_2
  SHX3_2 = 5
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = nil
  SHX7_1 = SHX1_2
  SHX6_1.isSellingTacos = false
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "269fa358fc"
  SHX1_2(SHX2_2)
end
SHX12_1 = RMenu
SHX12_1 = SHX12_1.Add
SHX13_1 = "tacojob"
SHX14_1 = ""
SHX15_1 = RageUI
SHX15_1 = SHX15_1.CreateMenu
SHX16_1 = ""
SHX17_1 = "Taco Job"
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuWidth
SHX18_1 = SHX18_1()
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuHeight
SHX19_1 = SHX19_1()
SHX20_1 = "cmg_taco"
SHX21_1 = "tacos_menu"
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX12_1 = RMenu
SHX12_1 = SHX12_1.Add
SHX13_1 = "tacocustomer"
SHX14_1 = ""
SHX15_1 = RageUI
SHX15_1 = SHX15_1.CreateMenu
SHX16_1 = ""
SHX17_1 = "Tacos"
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuWidth
SHX18_1 = SHX18_1()
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuHeight
SHX19_1 = SHX19_1()
SHX20_1 = "cmg_taco"
SHX21_1 = "tacos_menu"
SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_1.tacoPrice
  SHX1_2 = SHX1_2[1]
  if SHX0_2 < SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~r~The minimum price per taco is \194\163"
    SHX3_2 = getMoneyStringFormatted
    SHX4_2 = tostring
    SHX5_2 = SHX0_1.tacoPrice
    SHX5_2 = SHX5_2[1]
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = "!"
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2)
    SHX1_2 = SHX0_1.tacoPrice
    SHX1_2 = SHX1_2[1]
    return SHX1_2
  end
  SHX1_2 = SHX0_1.tacoPrice
  SHX1_2 = SHX1_2[2]
  if SHX0_2 > SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~r~The maximum price per taco is \194\163"
    SHX3_2 = getMoneyStringFormatted
    SHX4_2 = tostring
    SHX5_2 = SHX0_1.tacoPrice
    SHX5_2 = SHX5_2[2]
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = "!"
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2)
    SHX1_2 = SHX0_1.tacoPrice
    SHX1_2 = SHX1_2[2]
    return SHX1_2
  end
  return SHX0_2
end
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateWhile
SHX14_1 = 1.0
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "tacojob"
SHX18_1 = ""
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = nil
function SHX17_1()
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
  SHX3_2 = "tacojob"
  SHX4_2 = ""
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
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Price Per Taco"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX4_3 = "\194\163"
    SHX5_3 = getMoneyStringFormatted
    SHX6_3 = SHX6_1.tacoPrice
    SHX5_3 = SHX5_3(SHX6_3)
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3.RightLabel = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = tonumber
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.GetRageInputText
        SHX5_4 = "Price Per Taco"
        SHX4_4, SHX5_4, SHX6_4 = SHX4_4(SHX5_4)
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        if SHX3_4 then
          SHX4_4 = SHX12_1
          SHX5_4 = SHX3_4
          SHX4_4 = SHX4_4(SHX5_4)
          SHX6_1.tacoPrice = SHX4_4
          SHX4_4 = SHX6_1.isSellingTacos
          if SHX4_4 then
            SHX4_4 = TriggerServerEvent
            SHX5_4 = "b5d6ea283f"
            SHX6_4 = SHX6_1.tacoPrice
            SHX4_4(SHX5_4, SHX6_4)
          end
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX6_1.isSellingTacos
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Start Selling"
      SHX2_3 = ""
      SHX3_3 = {}
      SHX3_3.RightLabel = ""
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        if SHX2_4 then
          SHX3_4 = GetEntityCoords
          SHX4_4 = CMG
          SHX4_4 = SHX4_4.getPlayerPed
          SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4 = SHX4_4()
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          SHX4_4 = GetVehiclePedIsIn
          SHX5_4 = CMG
          SHX5_4 = SHX5_4.getPlayerPed
          SHX5_4 = SHX5_4()
          SHX6_4 = false
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          SHX5_4 = TriggerServerEvent
          SHX6_4 = "5b71435d4a"
          SHX7_4 = SHX3_4
          SHX8_4 = SHX6_1.tacoPrice
          SHX5_4(SHX6_4, SHX7_4, SHX8_4)
          SHX5_4 = SHX10_1
          SHX6_4 = SHX4_4
          SHX5_4(SHX6_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getClientUserId
      SHX0_3 = SHX0_3()
      SHX1_3 = 0
      SHX2_3 = 0
      SHX3_3 = SHX3_1
      SHX3_3 = SHX3_3[SHX0_3]
      if SHX3_3 then
        SHX3_3 = SHX3_1
        SHX3_3 = SHX3_3[SHX0_3]
        SHX1_3 = SHX3_3.currentStock
        SHX3_3 = SHX3_1
        SHX3_3 = SHX3_3[SHX0_3]
        SHX2_3 = SHX3_3.totalMoneyMade
      end
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Current Stock:"
      SHX5_3 = ""
      SHX6_3 = {}
      SHX6_3.RightLabel = SHX1_3
      SHX7_3 = true
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Total money made:"
      SHX5_3 = ""
      SHX6_3 = {}
      SHX7_3 = "\194\163"
      SHX8_3 = getMoneyStringFormatted
      SHX9_3 = SHX2_3
      SHX8_3 = SHX8_3(SHX9_3)
      SHX7_3 = SHX7_3 .. SHX8_3
      SHX6_3.RightLabel = SHX7_3
      SHX7_3 = true
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Stop Selling"
      SHX5_3 = ""
      SHX6_3 = {}
      SHX6_3.RightLabel = ""
      SHX7_3 = true
      function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
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
          SHX4_4 = SHX11_1
          SHX5_4 = SHX3_4
          SHX4_4(SHX5_4)
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
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
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateWhile
SHX14_1 = 1.0
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "tacocustomer"
SHX18_1 = ""
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = nil
function SHX17_1()
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
  SHX3_2 = "tacocustomer"
  SHX4_2 = ""
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX6_1.isSellingTacos
    if not SHX0_3 then
      SHX0_3 = SHX2_1
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Price Per Taco"
        SHX2_3 = ""
        SHX3_3 = {}
        SHX4_3 = "\194\163"
        SHX5_3 = getMoneyStringFormatted
        SHX7_3 = SHX2_1
        SHX6_3 = SHX3_1
        SHX6_3 = SHX6_3[SHX7_3]
        SHX6_3 = SHX6_3.amount
        SHX5_3 = SHX5_3(SHX6_3)
        SHX4_3 = SHX4_3 .. SHX5_3
        SHX3_3.RightLabel = SHX4_3
        SHX4_3 = true
        function SHX5_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.List
        SHX1_3 = "Amount of tacos"
        SHX2_3 = SHX8_1
        SHX3_3 = SHX9_1
        SHX4_3 = ""
        SHX5_3 = {}
        SHX6_3 = true
        function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX4_4
          SHX4_4 = SHX9_1
          if SHX3_4 ~= SHX4_4 then
            SHX9_1 = SHX3_4
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Purchase tacos"
        SHX2_3 = ""
        SHX3_3 = {}
        SHX3_3.RightLabel = ""
        SHX4_3 = true
        function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4
          if SHX2_4 then
            SHX3_4 = GetGameTimer
            SHX3_4 = SHX3_4()
            SHX4_4 = SHX6_1.lastSentPayEvent
            SHX3_4 = SHX3_4 - SHX4_4
            if SHX3_4 > 50 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "868ed10012"
              SHX5_4 = SHX2_1
              SHX6_4 = SHX9_1
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              SHX3_4 = GetGameTimer
              SHX3_4 = SHX3_4()
              SHX6_1.lastSentPayEvent = SHX3_4
            end
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "tacocustomer"
      SHX4_3 = ""
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
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
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "f53a9c58a9"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX6_1.isSellingTacos
  if SHX2_2 then
    SHX3_2 = SHX2_1
    SHX2_2 = SHX3_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2.currentStock = SHX0_2
    SHX3_2 = SHX2_1
    SHX2_2 = SHX3_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2.totalMoneyMade = SHX1_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "a269383e94"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.amount = SHX1_2
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX6_1.isSellingTacos
    if not SHX0_3 then
      SHX0_3 = SHX2_1
      if SHX0_3 then
        SHX0_3 = SHX2_1
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getClientUserId
        SHX1_3 = SHX1_3()
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = drawNativeNotification
          SHX1_3 = "Press ~INPUT_CONTEXT~ to buy tacos"
          SHX0_3(SHX1_3)
          SHX0_3 = IsControlJustPressed
          SHX1_3 = 0
          SHX2_3 = 38
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if SHX0_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Visible
            SHX1_3 = RMenu
            SHX2_3 = SHX1_3
            SHX1_3 = SHX1_3.Get
            SHX3_3 = "tacocustomer"
            SHX4_3 = ""
            SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
            SHX2_3 = true
            SHX0_3(SHX1_3, SHX2_3)
          end
        end
      end
    end
  end
  if SHX0_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeArea
    SHX3_2 = "tacopurchase_"
    SHX4_2 = tostring
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
  else
    SHX2_2 = pairs
    SHX3_2 = SHX3_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.removeArea
      SHX9_2 = "tacopurchase_"
      SHX10_2 = tostring
      SHX11_2 = SHX6_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX8_2(SHX9_2)
      SHX8_2 = SHX7_2.position
      if SHX8_2 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.createArea
        SHX9_2 = "tacopurchase_"
        SHX10_2 = tostring
        SHX11_2 = SHX6_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX9_2 = SHX9_2 .. SHX10_2
        SHX10_2 = SHX7_2.position
        SHX11_2 = 7.0
        SHX12_2 = 5.0
        SHX13_2 = nil
        SHX14_2 = nil
        SHX15_2 = SHX1_2
        SHX16_2 = nil
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
    end
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeMarker
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX5_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX4_1 = SHX0_2
  SHX0_2 = {}
  SHX5_1 = SHX0_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.insert
  SHX1_2 = SHX5_1
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addBlip
  SHX3_2 = SHX0_1.boxPickup
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_1.boxPickup
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_1.boxPickup
  SHX5_2 = SHX5_2.z
  SHX6_2 = 52
  SHX7_2 = 17
  SHX8_2 = "Taco Bomb"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "tacomarker"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "tacomarker"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX3_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.position
    if SHX6_2 then
      SHX6_2 = table
      SHX6_2 = SHX6_2.insert
      SHX7_2 = SHX5_1
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.addBlip
      SHX9_2 = SHX5_2.position
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX5_2.position
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX5_2.position
      SHX11_2 = SHX11_2.z
      SHX12_2 = 52
      SHX13_2 = 17
      SHX14_2 = "Taco Seller"
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX6_2 = GetPlayerFromServerId
      SHX7_2 = SHX5_2.source
      SHX6_2 = SHX6_2(SHX7_2)
      if -1 ~= SHX6_2 then
        SHX7_2 = GetVehiclePedIsIn
        SHX8_2 = GetPlayerPed
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = false
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        SHX8_2 = GetOffsetFromEntityInWorldCoords
        SHX9_2 = SHX7_2
        SHX10_2 = 0.0
        SHX11_2 = -2.0
        SHX12_2 = 0.0
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX5_2.position = SHX8_2
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX4_1
        SHX10_2 = tCMG
        SHX10_2 = SHX10_2.addMarker
        SHX11_2 = SHX5_2.position
        SHX11_2 = SHX11_2.x
        SHX12_2 = SHX5_2.position
        SHX12_2 = SHX12_2.y
        SHX13_2 = SHX5_2.position
        SHX13_2 = SHX13_2.z
        SHX13_2 = SHX13_2 + 2.5
        SHX14_2 = 1.0
        SHX15_2 = 1.0
        SHX16_2 = 1.0
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 255
        SHX21_2 = 30
        SHX22_2 = 9
        SHX23_2 = true
        SHX24_2 = true
        SHX25_2 = true
        SHX26_2 = "tacomarker"
        SHX27_2 = "taco"
        SHX28_2 = 90.0
        SHX29_2 = 0.0
        SHX30_2 = 0.0
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      end
    end
  end
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "fc102d5e13"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX2_1
  if SHX0_2 == SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "tacocustomer"
    SHX5_2 = ""
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX3_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = SHX13_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX14_1
  SHX1_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "36bd827f27"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
  SHX1_2 = SHX13_1
  SHX1_2()
  SHX1_2 = SHX14_1
  SHX1_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterCommand
SHX16_1 = "taco"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = GetVehiclePedIsIn
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_1
  if SHX2_2 then
    if 1951180813 == SHX1_2 then
      SHX6_1.sellerMenu = true
      SHX2_2 = RageUI
      SHX2_2 = SHX2_2.Visible
      SHX3_2 = RMenu
      SHX4_2 = SHX3_2
      SHX3_2 = SHX3_2.Get
      SHX5_2 = "tacojob"
      SHX6_2 = ""
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    else
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = "~r~You need to be in the taco truck!"
      SHX2_2(SHX3_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~You do not have the taco seller job!"
    SHX2_2(SHX3_2)
  end
end
SHX18_1 = false
SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX15_1 = Citizen
SHX15_1 = SHX15_1.CreateThread
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = GetEntityCoords
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX1_2 = pairs
    SHX2_2 = SHX3_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.position
      if SHX7_2 then
        SHX7_2 = SHX6_2.position
        SHX7_2 = SHX0_2 - SHX7_2
        SHX7_2 = #SHX7_2
        if SHX7_2 < 7 then
          SHX2_1 = SHX5_2
          while true do
            SHX8_2 = GetEntityCoords
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.getPlayerPed
            SHX9_2 = SHX9_2()
            SHX8_2 = SHX8_2(SHX9_2)
            SHX9_2 = SHX6_2.position
            SHX8_2 = SHX8_2 - SHX9_2
            SHX8_2 = #SHX8_2
            if not (SHX8_2 <= 7) then
              break
            end
            SHX8_2 = Wait
            SHX9_2 = 100
            SHX8_2(SHX9_2)
          end
        end
        SHX8_2 = nil
        SHX2_1 = SHX8_2
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 3000
    SHX1_2(SHX2_2)
  end
end
SHX15_1(SHX16_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = SetVehicleEngineOn
    SHX1_2 = SHX7_1
    SHX2_2 = false
    SHX3_2 = true
    SHX4_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = GetEntityModel
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerVehicle
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if 1951180813 == SHX1_2 then
      SHX1_2 = SHX6_1.firstTimeTacoTruck
      if not SHX1_2 then
        SHX6_1.firstTimeTacoTruck = true
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.initializeInstructionalJobScaleform
        SHX2_2 = "Taco Seller"
        SHX3_2 = "Head to Taco Bomb to stock up!"
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SetNewWaypoint
        SHX2_2 = SHX0_1.boxPickup
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX0_1.boxPickup
        SHX3_2 = SHX3_2.y
        SHX1_2(SHX2_2, SHX3_2)
      end
    else
      SHX1_2 = SHX6_1.sellerMenu
      if SHX1_2 then
        SHX6_1.sellerMenu = false
        SHX1_2 = RageUI
        SHX1_2 = SHX1_2.Visible
        SHX2_2 = RMenu
        SHX3_2 = SHX2_2
        SHX2_2 = SHX2_2.Get
        SHX4_2 = "tacojob"
        SHX5_2 = ""
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  else
    SHX1_2 = SHX6_1.sellerMenu
    if SHX1_2 then
      SHX6_1.sellerMenu = false
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "tacojob"
      SHX5_2 = ""
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityBoneIndexByName
  SHX2_2 = SHX0_2
  SHX3_2 = "door_pside_r"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetWorldPositionOfEntityBone
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX2_2 - SHX3_2
  SHX3_2 = #SHX3_2
  SHX4_2 = 2.5
  SHX3_2 = SHX3_2 < SHX4_2
  return SHX3_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX6_1.carryingBox
  if SHX1_2 then
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2
    SHX3_2 = "anim@heists@box_carry@"
    SHX4_2 = "idle"
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX1_2 then
      SHX1_2 = TaskPlayAnim
      SHX2_2 = SHX0_2
      SHX3_2 = "anim@heists@box_carry@"
      SHX4_2 = "idle"
      SHX5_2 = 2.0
      SHX6_2 = 2.0
      SHX7_2 = -1
      SHX8_2 = 51
      SHX9_2 = 0
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getClosestVehicle
    SHX2_2 = 7.0
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetEntityModel
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 1951180813 ~= SHX2_2 then
      return
    end
    SHX2_2 = SHX16_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      return
    end
    SHX2_2 = drawNativeNotification
    SHX3_2 = "Press ~INPUT_CONTEXT~ to stock tacos."
    SHX2_2(SHX3_2)
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 38
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "d4d2503493"
      SHX2_2(SHX3_2)
      SHX2_2 = SetVehicleDoorOpen
      SHX3_2 = SHX1_2
      SHX4_2 = 2
      SHX5_2 = false
      SHX6_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetVehicleDoorOpen
      SHX3_2 = SHX1_2
      SHX4_2 = 3
      SHX5_2 = false
      SHX6_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetTimeout
      SHX3_2 = 1000
      function SHX4_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3
        SHX0_3 = SetVehicleDoorShut
        SHX1_3 = SHX1_2
        SHX2_3 = 2
        SHX3_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = SetVehicleDoorShut
        SHX1_3 = SHX1_2
        SHX2_3 = 3
        SHX3_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      end
      SHX2_2(SHX3_2, SHX4_2)
    end
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.deleteThreadOnTick
    SHX2_2 = SHX17_1
    SHX1_2(SHX2_2)
  end
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "taco_box"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = CreateObject
  SHX3_2 = SHX0_1.boxHash
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_1.tacoBoxObj = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "anim@heists@box_carry@"
  SHX2_2(SHX3_2)
  SHX2_2 = AttachEntityToEntity
  SHX3_2 = SHX6_1.tacoBoxObj
  SHX4_2 = SHX0_2
  SHX5_2 = GetPedBoneIndex
  SHX6_2 = SHX0_2
  SHX7_2 = 60309
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = 0.025
  SHX7_2 = 0.08
  SHX8_2 = 0.255
  SHX9_2 = -145.0
  SHX10_2 = 290.0
  SHX11_2 = 0.0
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = false
  SHX15_2 = true
  SHX16_2 = 1
  SHX17_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_1.carryingBox = true
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createThreadOnTick
  SHX3_2 = SHX17_1
  SHX4_2 = "Taco Box Carry"
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX0_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.len
    SHX2_2 = string
    SHX2_2 = SHX2_2.gsub
    SHX3_2 = SHX0_2
    SHX4_2 = "~%a~"
    SHX5_2 = ""
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2 = SetTextFont
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SetTextScale
    SHX3_2 = 0.5
    SHX4_2 = 0.5
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetTextCentre
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = SetTextColour
    SHX3_2 = 255
    SHX4_2 = 255
    SHX5_2 = 255
    SHX6_2 = 255
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetTextJustification
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = BeginTextCommandDisplayText
    SHX3_2 = "STRING"
    SHX2_2(SHX3_2)
    SHX2_2 = AddTextComponentSubstringPlayerName
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
    SHX2_2 = EndTextCommandDisplayText
    SHX3_2 = 0.5
    SHX4_2 = 0.925
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = DrawRect
    SHX3_2 = 0.5
    SHX4_2 = 0.945
    SHX5_2 = SHX1_2 * 0.0095
    SHX6_2 = 0.045
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = 72
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1
  SHX1_2 = "Drop the ~y~box~w~ off at the back of your ~y~taco truck~w~"
  SHX0_2(SHX1_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX6_1.tacoBoxObj
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX6_1.tacoBoxObj
    SHX0_2(SHX1_2)
    SHX0_2 = ClearPedTasks
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX20_1
  SHX0_2(SHX1_2)
  SHX6_1.carryingBox = false
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getModelGender
  SHX0_2 = SHX0_2()
  if "male" == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "TacoSellerMale"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "TacoSellerFemale"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addMarker
  SHX1_2 = SHX0_1.boxPickup
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.boxPickup
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.boxPickup
  SHX3_2 = SHX3_2.z
  SHX4_2 = 1.0
  SHX5_2 = 1.0
  SHX6_2 = 1.0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 255
  SHX10_2 = 100
  SHX11_2 = 25
  SHX12_2 = 27
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerVehicle
    SHX0_3 = SHX0_3()
    SHX0_3 = not SHX0_3
    if 0 == SHX0_3 then
      return
    end
    SHX0_3 = SHX6_1.carryingBox
    if SHX0_3 then
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to return the tacos."
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "9ae8558098"
        SHX0_3(SHX1_3)
        SHX0_3 = SHX21_1
        SHX0_3()
      end
    else
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to grab a box of tacos."
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "35bd0a4535"
        SHX0_3(SHX1_3)
        SHX0_3 = SHX18_1
        SHX0_3()
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.createThreadOnTick
        SHX1_3 = SHX20_1
        SHX2_3 = "Taco Stock Text"
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "tacostockup"
  SHX3_2 = SHX0_1.boxPickup
  SHX4_2 = 1.5
  SHX5_2 = 5.0
  SHX6_2 = nil
  SHX7_2 = nil
  SHX8_2 = SHX0_2
  SHX9_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX23_1 = RegisterNetEvent
SHX24_1 = "9023541965"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = SHX22_1
    SHX1_2()
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = CMG
function SHX24_1()
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
SHX23_1.isOnTacoDuty = SHX24_1
SHX23_1 = RegisterNetEvent
SHX24_1 = "d4d2503493"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX21_1
  SHX0_2()
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = CMG
SHX23_1 = SHX23_1.createThreadOnTick
SHX24_1 = SHX15_1
SHX25_1 = "Taco Truck Tick"
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = RegisterNetEvent
SHX24_1 = "2dc4a53756"
function SHX25_1()
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
SHX23_1(SHX24_1, SHX25_1)
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlaySound
  SHX1_2 = -1
  SHX2_2 = "CHECKPOINT_BEHIND"
  SHX3_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initializeInstructionalJobScaleform
  SHX1_2 = "Taco Seller"
  SHX2_2 = "Buy a Taco truck at Simeons!"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNewWaypoint
  SHX1_2 = -47.174137115479
  SHX2_2 = -1109.6021728516
  SHX0_2(SHX1_2, SHX2_2)
end
SHX24_1 = RegisterNetEvent
SHX25_1 = "e3a2b4bde0"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "Taco Seller" == SHX0_2 then
    SHX1_2 = SHX23_1
    SHX1_2()
  end
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = AddEventHandler
SHX25_1 = "onResourceStop"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX21_1
    SHX1_2()
  end
end
SHX24_1(SHX25_1, SHX26_1)
