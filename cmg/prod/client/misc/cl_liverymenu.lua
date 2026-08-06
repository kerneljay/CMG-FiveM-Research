-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgliverymenu"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = "CMG Livery Menu"
SHX5_1 = "~b~CMG Livery Menu"
SHX3_1, SHX4_1, SHX5_1, SHX6_1 = SHX3_1(SHX4_1, SHX5_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1)
SHX0_1 = nil
SHX1_1 = RMenu
SHX2_1 = SHX1_1
SHX1_1 = SHX1_1.Get
SHX3_1 = "cmgliverymenu"
SHX4_1 = "main"
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = SHX1_1
SHX1_1 = SHX1_1.SetStyleSize
SHX3_1 = 90
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RageUI
SHX1_1 = SHX1_1.CreateWhile
SHX2_1 = 1.0
SHX3_1 = RMenu
SHX4_1 = SHX3_1
SHX3_1 = SHX3_1.Get
SHX5_1 = "cmgliverymenu"
SHX6_1 = "main"
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = nil
function SHX5_1()
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
  SHX3_2 = "cmgliverymenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX0_1
    if nil ~= SHX0_3 then
      SHX0_3 = 1
      SHX1_3 = GetVehicleLiveryCount
      SHX2_3 = SHX0_1
      SHX1_3 = SHX1_3(SHX2_3)
      SHX2_3 = 1
      for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
        SHX4_3 = RageUI
        SHX4_3 = SHX4_3.Button
        SHX5_3 = "Livery #"
        SHX6_3 = SHX3_3
        SHX5_3 = SHX5_3 .. SHX6_3
        SHX6_3 = nil
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
            SHX3_4 = SetVehicleLivery
            SHX4_4 = SHX0_1
            SHX5_4 = SHX3_3
            SHX5_4 = SHX5_4 - 1
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      end
      SHX0_3 = GetVehicleRoofLiveryCount
      SHX1_3 = SHX0_1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 > 0 then
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Separator
        SHX2_3 = "~y~Additional Liveries"
        SHX1_3(SHX2_3)
        SHX1_3 = 1
        SHX2_3 = SHX0_3
        SHX3_3 = 1
        for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
          SHX5_3 = RageUI
          SHX5_3 = SHX5_3.Button
          SHX6_3 = "Livery #"
          SHX7_3 = SHX4_3
          SHX6_3 = SHX6_3 .. SHX7_3
          SHX7_3 = nil
          SHX8_3 = true
          function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SetVehicleRoofLivery
              SHX4_4 = SHX0_1
              SHX5_4 = SHX4_3
              SHX5_4 = SHX5_4 - 1
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1)
SHX1_1 = RegisterKeyMapping
SHX2_1 = "livery"
SHX3_1 = "Livery Menu"
SHX4_1 = "keyboard"
SHX5_1 = "INSERT"
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1)
SHX1_1 = TriggerEvent
SHX2_1 = "chat:addSuggestion"
SHX3_1 = "/livery"
SHX4_1 = "Open the livery menu"
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX1_1 = RegisterCommand
SHX2_1 = "livery"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX1_2
    SHX4_2 = -1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 == SHX0_2 then
      SHX2_2 = GetVehicleLiveryCount
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 > 0 then
        SHX0_1 = SHX1_2
        SHX2_2 = RageUI
        SHX2_2 = SHX2_2.Visible
        SHX3_2 = RMenu
        SHX4_2 = SHX3_2
        SHX3_2 = SHX3_2.Get
        SHX5_2 = "cmgliverymenu"
        SHX6_2 = "main"
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX4_2 = RageUI
        SHX4_2 = SHX4_2.Visible
        SHX5_2 = RMenu
        SHX6_2 = SHX5_2
        SHX5_2 = SHX5_2.Get
        SHX7_2 = "cmgliverymenu"
        SHX8_2 = "main"
        SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX4_2 = not SHX4_2
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.isNewPlayer
        SHX2_2 = SHX2_2()
        if SHX2_2 then
          SHX2_2 = RageUI
          SHX2_2 = SHX2_2.Visible
          SHX3_2 = RMenu
          SHX4_2 = SHX3_2
          SHX3_2 = SHX3_2.Get
          SHX5_2 = "cmgliverymenu"
          SHX6_2 = "main"
          SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          if SHX2_2 then
            SHX2_2 = drawNativeNotification
            SHX3_2 = "Press ~INPUT_805D8F10~ to toggle the livery menu."
            SHX2_2(SHX3_2)
          end
        end
      else
        SHX2_2 = tCMG
        SHX2_2 = SHX2_2.notify
        SHX3_2 = "~r~This vehicle has no liveries!"
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
