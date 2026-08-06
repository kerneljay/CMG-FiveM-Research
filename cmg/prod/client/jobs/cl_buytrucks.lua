-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "buy-rent"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "~b~CMG Trucking"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_truckingjob"
SHX9_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "vehicle"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgtruckmenu"
SHX7_1 = "buy-rent"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = "CMG Trucking"
SHX6_1 = "~b~CMG Trucking"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_truckingjob"
SHX10_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "vehicles"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = "Your Trucks"
SHX5_1 = "~b~CMG Trucking"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_truckingjob"
SHX9_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "rented_trucks"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgtruckmenu"
SHX7_1 = "vehicles"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = "Rented Vehicles"
SHX6_1 = "~b~CMG Trucking"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_truckingjob"
SHX10_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgtruckmenu"
SHX2_1 = "owned_trucks"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgtruckmenu"
SHX7_1 = "vehicles"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = "Owned Vehicles"
SHX6_1 = "~b~CMG Trucking"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_truckingjob"
SHX10_1 = "cmg_truckingjob"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_trucking"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = SHX0_1.trucks
SHX2_1 = {}
SHX3_1 = nil
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "dad36733a1"
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "c0a43cc041"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "4fd18e8fe3"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX2_1.rented
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX5_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "cmgtruckmenu"
SHX11_1 = "buy-rent"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = nil
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgtruckmenu"
  SHX4_2 = "buy-rent"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = pairs
    SHX1_3 = SHX1_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.custom
      if not SHX6_3 then
        SHX6_3 = nil
        SHX7_3 = table
        SHX7_3 = SHX7_3.has
        SHX8_3 = SHX2_1.rented
        SHX9_3 = GetHashKey
        SHX10_3 = SHX4_3
        SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX9_3(SHX10_3)
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        if SHX7_3 then
          SHX7_3 = {}
          SHX8_3 = RageUI
          SHX8_3 = SHX8_3.BadgeStyle
          SHX8_3 = SHX8_3.Tick
          SHX7_3.RightBadge = SHX8_3
          SHX6_3 = SHX7_3
        else
          SHX7_3 = {}
          SHX8_3 = "\194\163"
          SHX9_3 = getMoneyStringFormatted
          SHX10_3 = SHX5_3.price
          SHX9_3 = SHX9_3(SHX10_3)
          SHX8_3 = SHX8_3 .. SHX9_3
          SHX7_3.RightLabel = SHX8_3
          SHX6_3 = SHX7_3
        end
        SHX7_3 = RageUI
        SHX7_3 = SHX7_3.ButtonWithStyle
        SHX8_3 = SHX5_3.name
        SHX9_3 = "Press to spawn."
        SHX10_3 = SHX6_3
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
            SHX3_4 = table
            SHX3_4 = SHX3_4.has
            SHX4_4 = SHX2_1.rented
            SHX5_4 = GetHashKey
            SHX6_4 = SHX4_3
            SHX5_4, SHX6_4 = SHX5_4(SHX6_4)
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            if not SHX3_4 then
              SHX3_4 = SHX4_1
              SHX4_4 = SHX4_3
              SHX5_4 = SHX5_3.price
              SHX3_4(SHX4_4, SHX5_4)
            else
              SHX3_4 = SHX5_1
              SHX4_4 = SHX4_3
              SHX3_4(SHX4_4)
            end
          end
        end
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "55dd309134"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX2_1.owned = SHX0_2
  SHX2_1.rented = SHX1_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = Citizen
SHX6_1 = SHX6_1.CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = 1
  SHX1_2 = SHX0_1.buylocations
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX0_1.buylocations
    SHX4_2 = SHX4_2[SHX3_2]
    SHX5_2 = SHX4_2.main
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.add3DTextForCoord
    SHX7_2 = "Truck Dealership"
    SHX8_2 = 895.5809
    SHX9_2 = -3187.351
    SHX10_2 = 5.808145
    SHX11_2 = 8.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.add3DTextForCoord
    SHX7_2 = "Truck Rental"
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 8.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addPropMarker
    SHX7_2 = "bzzz_marker_shop_blue_anim"
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = 50.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX5_2.x
    SHX8_2 = SHX5_2.y
    SHX9_2 = SHX5_2.z
    SHX10_2 = 67
    SHX11_2 = 5
    SHX12_2 = "Truck Rental"
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX6_1(SHX7_1)
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = IsPedInAnyVehicle
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = GetVehiclePedIsIn
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        SHX2_3 = SHX3_1
        if SHX1_3 ~= SHX2_3 then
          SHX1_3 = RageUI
          SHX1_3 = SHX1_3.CloseAll
          SHX1_3()
          SHX1_3 = RageUI
          SHX1_3 = SHX1_3.Visible
          SHX2_3 = RMenu
          SHX3_3 = SHX2_3
          SHX2_3 = SHX2_3.Get
          SHX4_3 = "cmgtruckmenu"
          SHX5_3 = "buy-rent"
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX3_3 = true
          SHX1_3(SHX2_3, SHX3_3)
        end
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
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.CloseAll
      SHX0_3()
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX5_2 = 1
    SHX6_2 = SHX0_1.buylocations
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = SHX0_1.buylocations
      SHX9_2 = SHX9_2[SHX8_2]
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "trucking_buy_"
      SHX12_2 = SHX8_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX12_2 = SHX9_2.main
      SHX13_2 = 1.15
      SHX14_2 = 6
      SHX15_2 = SHX2_2
      SHX16_2 = SHX3_2
      SHX17_2 = SHX4_2
      SHX18_2 = {}
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "cddad45dd3"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "buytrucks"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = GetEntityHeading
  SHX9_2 = SHX1_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX6_1(SHX7_1, SHX8_1)
