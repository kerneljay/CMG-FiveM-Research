-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/atms"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = "bzzz_marker_atm_green_anim"
SHX2_1 = 20.0
SHX3_1 = false
SHX4_1 = false
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgatm"
SHX7_1 = "mainmenu"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = ""
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_atmui"
SHX14_1 = "cmg_atmui"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "cmgatm"
SHX8_1 = "mainmenu"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.SetSubtitle
SHX7_1 = "~b~ATM"
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = true
    SHX4_1 = SHX0_2
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.CreateThread
    function SHX1_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.loadModel
      SHX2_3 = -121386306
      SHX1_3(SHX2_3)
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerCoords
      SHX1_3 = SHX1_3()
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.requestEntitySpawn
      SHX3_3 = "atm_object"
      SHX2_3(SHX3_3)
      SHX2_3 = CreateObject
      SHX3_3 = -121386306
      SHX4_3 = SHX1_3.x
      SHX5_3 = SHX1_3.y
      SHX6_3 = SHX1_3.z
      SHX7_3 = true
      SHX8_3 = false
      SHX9_3 = false
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX3_3 = AttachEntityToEntity
      SHX4_3 = SHX2_3
      SHX5_3 = SHX0_3
      SHX6_3 = GetPedBoneIndex
      SHX7_3 = SHX0_3
      SHX8_3 = 57005
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
      SHX7_3 = 0.14
      SHX8_3 = 0.04
      SHX9_3 = -0.02
      SHX10_3 = 318.0
      SHX11_3 = 22.0
      SHX12_3 = 2.0
      SHX13_3 = false
      SHX14_3 = false
      SHX15_3 = false
      SHX16_3 = true
      SHX17_3 = 2
      SHX18_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
      SHX3_3 = SetModelAsNoLongerNeeded
      SHX4_3 = -121386306
      SHX3_3(SHX4_3)
      SHX3_3 = Citizen
      SHX3_3 = SHX3_3.Wait
      SHX4_3 = 5000
      SHX3_3(SHX4_3)
      SHX3_3 = DeleteEntity
      SHX4_3 = SHX2_3
      SHX3_3(SHX4_3)
      SHX3_3 = false
      SHX4_1 = SHX3_3
    end
    SHX0_2(SHX1_2)
  end
end
SHX6_1 = RageUI
SHX6_1 = SHX6_1.CreateWhile
SHX7_1 = 1.0
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "cmgatm"
SHX11_1 = "mainmenu"
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
  SHX3_2 = "cmgatm"
  SHX4_2 = "mainmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Deposit"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter amount"
        SHX3_4 = SHX3_4(SHX4_4)
        SHX4_4 = tonumber
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = GetVehiclePedIsIn
          SHX5_4 = PlayerPedId
          SHX5_4 = SHX5_4()
          SHX6_4 = false
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          if 0 == SHX4_4 then
            SHX4_4 = SHX3_1
            if SHX4_4 then
              SHX4_4 = SHX5_1
              SHX4_4()
              SHX4_4 = tCMG
              SHX4_4 = SHX4_4.playAnim
              SHX5_4 = false
              SHX6_4 = {}
              SHX7_4 = {}
              SHX8_4 = "amb@prop_human_atm@male@exit"
              SHX9_4 = "exit"
              SHX7_4[1] = SHX8_4
              SHX7_4[2] = SHX9_4
              SHX6_4[1] = SHX7_4
              SHX7_4 = false
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
              SHX4_4 = TriggerServerEvent
              SHX5_4 = "2898c283c7"
              SHX6_4 = SHX3_4
              SHX4_4(SHX5_4, SHX6_4)
            else
              SHX4_4 = tCMG
              SHX4_4 = SHX4_4.notify
              SHX5_4 = "~r~Not near ATM."
              SHX4_4(SHX5_4)
            end
          else
            SHX4_4 = tCMG
            SHX4_4 = SHX4_4.notify
            SHX5_4 = "~r~Get out your vehicle to use the ATM"
            SHX4_4(SHX5_4)
          end
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Withdraw"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputText
        SHX4_4 = "Enter amount"
        SHX3_4 = SHX3_4(SHX4_4)
        SHX4_4 = tonumber
        SHX5_4 = SHX3_4
        SHX4_4 = SHX4_4(SHX5_4)
        if SHX4_4 then
          SHX4_4 = GetVehiclePedIsIn
          SHX5_4 = PlayerPedId
          SHX5_4 = SHX5_4()
          SHX6_4 = false
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4)
          if 0 == SHX4_4 then
            SHX4_4 = SHX3_1
            if SHX4_4 then
              SHX4_4 = SHX5_1
              SHX4_4()
              SHX4_4 = tCMG
              SHX4_4 = SHX4_4.playAnim
              SHX5_4 = false
              SHX6_4 = {}
              SHX7_4 = {}
              SHX8_4 = "amb@prop_human_atm@male@exit"
              SHX9_4 = "exit"
              SHX7_4[1] = SHX8_4
              SHX7_4[2] = SHX9_4
              SHX6_4[1] = SHX7_4
              SHX7_4 = false
              SHX4_4(SHX5_4, SHX6_4, SHX7_4)
              SHX4_4 = TriggerServerEvent
              SHX5_4 = "de2d3b354c"
              SHX6_4 = SHX3_4
              SHX4_4(SHX5_4, SHX6_4)
            else
              SHX4_4 = tCMG
              SHX4_4 = SHX4_4.notify
              SHX5_4 = "~r~Not near ATM."
              SHX4_4(SHX5_4)
            end
          else
            SHX4_4 = tCMG
            SHX4_4 = SHX4_4.notify
            SHX5_4 = "~r~Get out your vehicle to use the ATM"
            SHX4_4(SHX5_4)
          end
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Deposit All"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      if SHX2_4 then
        SHX3_4 = GetVehiclePedIsIn
        SHX4_4 = PlayerPedId
        SHX4_4 = SHX4_4()
        SHX5_4 = false
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
        if 0 == SHX3_4 then
          SHX3_4 = SHX3_1
          if SHX3_4 then
            SHX3_4 = SHX5_1
            SHX3_4()
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.playAnim
            SHX4_4 = false
            SHX5_4 = {}
            SHX6_4 = {}
            SHX7_4 = "amb@prop_human_atm@male@exit"
            SHX8_4 = "exit"
            SHX6_4[1] = SHX7_4
            SHX6_4[2] = SHX8_4
            SHX5_4[1] = SHX6_4
            SHX6_4 = false
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "ae86725473"
            SHX3_4(SHX4_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Not near ATM."
            SHX3_4(SHX4_4)
          end
        else
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~Get out your vehicle to use the ATM"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Withdraw All"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      if SHX2_4 then
        SHX3_4 = GetVehiclePedIsIn
        SHX4_4 = PlayerPedId
        SHX4_4 = SHX4_4()
        SHX5_4 = false
        SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
        if 0 == SHX3_4 then
          SHX3_4 = SHX3_1
          if SHX3_4 then
            SHX3_4 = SHX5_1
            SHX3_4()
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.playAnim
            SHX4_4 = false
            SHX5_4 = {}
            SHX6_4 = {}
            SHX7_4 = "amb@prop_human_atm@male@exit"
            SHX8_4 = "exit"
            SHX6_4[1] = SHX7_4
            SHX6_4[2] = SHX8_4
            SHX5_4[1] = SHX6_4
            SHX6_4 = false
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "dabab3db32"
            SHX3_4(SHX4_4)
          else
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Not near ATM."
            SHX3_4(SHX4_4)
          end
        else
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~Get out your vehicle to use the ATM"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgatm"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgatm"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = SHX6_1
    SHX0_3()
    SHX0_3 = true
    SHX3_1 = SHX0_3
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX7_1
    SHX0_3()
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX3_1 = SHX0_3
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.atms
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "atm_"
    SHX11_2 = SHX7_2
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = SHX8_2
    SHX12_2 = 1.5
    SHX13_2 = 6
    SHX14_2 = SHX0_2
    SHX15_2 = SHX1_2
    SHX16_2 = SHX2_2
    SHX17_2 = {}
    SHX17_2.atmId = SHX7_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addBlip
    SHX10_2 = SHX8_2.x
    SHX11_2 = SHX8_2.y
    SHX12_2 = SHX8_2.z
    SHX13_2 = 108
    SHX14_2 = 4
    SHX15_2 = "ATM"
    SHX16_2 = 0.8
    SHX17_2 = true
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX10_2 = tCMG
    SHX10_2 = SHX10_2.addPropMarker
    SHX11_2 = SHX1_1
    SHX12_2 = SHX8_2.x
    SHX13_2 = SHX8_2.y
    SHX14_2 = SHX8_2.z
    SHX15_2 = SHX2_1
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = pairs
    SHX11_2 = SHX0_1.robberyAtms
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX15_2.xyz
      SHX16_2 = SHX8_2 - SHX16_2
      SHX16_2 = #SHX16_2
      if SHX16_2 < 5.0 then
        SHX16_2 = SetBlipColour
        SHX17_2 = SHX9_2
        SHX18_2 = 1
        SHX16_2(SHX17_2, SHX18_2)
      end
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.casinoAtms
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "atm_casino_"
    SHX11_2 = SHX7_2
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = SHX8_2
    SHX12_2 = 1.5
    SHX13_2 = 6
    SHX14_2 = SHX0_2
    SHX15_2 = SHX1_2
    SHX16_2 = SHX2_2
    SHX17_2 = {}
    SHX17_2.atmId = SHX7_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addBlip
    SHX10_2 = SHX8_2.x
    SHX11_2 = SHX8_2.y
    SHX12_2 = SHX8_2.z
    SHX13_2 = 108
    SHX14_2 = 4
    SHX15_2 = "ATM"
    SHX16_2 = 0.8
    SHX17_2 = true
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addPropMarker
    SHX10_2 = SHX1_1
    SHX11_2 = SHX8_2.x
    SHX12_2 = SHX8_2.y
    SHX13_2 = SHX8_2.z
    SHX14_2 = SHX2_1
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.casinoAtmPeds
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createDynamicPed
    SHX10_2 = -1156746507
    SHX11_2 = SHX8_2.xyz
    SHX12_2 = SHX8_2.w
    SHX13_2 = true
    SHX14_2 = "mini@strip_club@idles@bouncer@base"
    SHX15_2 = "base"
    SHX16_2 = 75.0
    SHX17_2 = nil
    function SHX18_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = {}
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = SHX6_1
    SHX0_3()
    SHX0_3 = true
    SHX3_1 = SHX0_3
  end
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX7_1
    SHX0_3()
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.setCanAnim
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX3_1 = SHX0_3
  end
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "atm_%s"
  SHX6_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createArea
  SHX6_2 = SHX4_2
  SHX7_2 = SHX1_2
  SHX8_2 = 1.5
  SHX9_2 = 6
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.addPropMarker
  SHX6_2 = SHX1_1
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = SHX2_1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX8_1
  SHX7_2 = {}
  SHX7_2.area = SHX4_2
  SHX7_2.marker = SHX5_2
  SHX6_2[SHX0_2] = SHX7_2
end
SHX9_1.createAtm = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX8_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeMarker
    SHX3_2 = SHX1_2.marker
    SHX2_2(SHX3_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeArea
    SHX3_2 = SHX1_2.area
    SHX2_2(SHX3_2)
    SHX2_2 = SHX8_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX9_1.deleteAtm = SHX10_1
SHX9_1 = false
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0
  end
  if SHX2_2 < 0 then
    SHX2_2 = 0
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 3
  SHX5_2 = 4
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 > 0 then
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = SHX2_2 / SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_25
    end
  end
  SHX4_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX6_2
      if SHX0_3 then
        break
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_JUMP~ in the correct area to cut the wire."
      SHX0_3(SHX1_3)
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX7_2(SHX8_2)
  SHX7_2 = 1
  SHX8_2 = SHX3_2
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = math
    SHX11_2 = SHX11_2.random
    SHX12_2 = 1
    SHX13_2 = 4
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    if SHX11_2 <= 3 then
      SHX11_2 = "Easy"
      if SHX11_2 then
        goto SHX_LABEL_46
      end
    end
    SHX11_2 = "Medium"
    -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
    ::SHX_LABEL_46::
    SHX12_2 = true
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.minigameCircularProgressBar
    SHX14_2 = {}
    SHX14_2.Difficulty = SHX11_2
    SHX15_2 = math
    SHX15_2 = SHX15_2.max
    SHX16_2 = 4000
    SHX17_2 = 25000
    SHX17_2 = SHX17_2 - SHX4_2
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
    SHX14_2.Timeout = SHX15_2
    function SHX15_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3
      SHX5_2 = SHX0_3
      SHX1_3 = false
      SHX12_2 = SHX1_3
    end
    SHX14_2.onComplete = SHX15_2
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = false
      SHX5_2 = SHX0_3
      SHX0_3 = false
      SHX12_2 = SHX0_3
    end
    SHX14_2.onTimeout = SHX15_2
    SHX13_2(SHX14_2)
    while SHX12_2 do
      SHX13_2 = drawNativeText
      SHX14_2 = "Cut the wires"
      SHX13_2(SHX14_2)
      SHX13_2 = Citizen
      SHX13_2 = SHX13_2.Wait
      SHX14_2 = 0
      SHX13_2(SHX14_2)
    end
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.setPlayerCombatTimer
    SHX14_2 = 30
    SHX15_2 = false
    SHX13_2(SHX14_2, SHX15_2)
    if not SHX5_2 then
      SHX13_2 = PlaySoundFrontend
      SHX14_2 = -1
      SHX15_2 = "HACKING_CLICK_BAD"
      SHX16_2 = ""
      SHX17_2 = false
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      break
    else
      SHX13_2 = PlaySoundFrontend
      SHX14_2 = -1
      SHX15_2 = "HACKING_SUCCESS"
      SHX16_2 = ""
      SHX17_2 = true
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX13_2 = Citizen
      SHX13_2 = SHX13_2.Wait
      SHX14_2 = 2000
      SHX13_2(SHX14_2)
      SHX13_2 = GetGameTimer
      SHX13_2 = SHX13_2()
      while true do
        SHX14_2 = CMG
        SHX14_2 = SHX14_2.isProgressBarRunning
        SHX14_2 = SHX14_2()
        if not SHX14_2 then
          break
        end
        SHX14_2 = assert
        SHX15_2 = GetGameTimer
        SHX15_2 = SHX15_2()
        SHX15_2 = SHX15_2 - SHX13_2
        SHX16_2 = 5000
        SHX15_2 = SHX15_2 < SHX16_2
        SHX16_2 = "Timed out whilst waiting for progress bar to finished"
        SHX14_2(SHX15_2, SHX16_2)
        SHX14_2 = Wait
        SHX15_2 = 0
        SHX14_2(SHX15_2)
      end
      SHX14_2 = PlaySoundFrontend
      SHX15_2 = -1
      SHX16_2 = "HACKING_CLICK"
      SHX17_2 = ""
      SHX18_2 = true
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.startCircularProgressBar
      SHX15_2 = ""
      SHX16_2 = 2000
      SHX17_2 = nil
      function SHX18_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX14_2 = TriggerServerEvent
      SHX15_2 = "d96c9842ab"
      SHX16_2 = SHX0_2
      SHX17_2 = false
      SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX14_2 = Citizen
      SHX14_2 = SHX14_2.Wait
      SHX15_2 = 2000
      SHX14_2(SHX15_2)
    end
  end
  SHX6_2 = true
  return SHX5_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.rad
  SHX2_2 = -0.8738472
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.rad
  SHX3_2 = SHX0_2.w
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = vector3
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = -SHX4_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.abs
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2 * SHX5_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.cos
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.abs
  SHX7_2 = math
  SHX7_2 = SHX7_2.cos
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX5_2 = SHX5_2 * SHX6_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.sin
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX0_2.xyz
  SHX5_2 = SHX3_2 * 0.65
  SHX4_2 = SHX4_2 + SHX5_2
  return SHX4_2
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "c80193f4f4"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX0_1.robberyAtms
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX11_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxNonLoopedAtCoord
  SHX4_2 = "ent_sht_electrical_box"
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 0.5
  SHX8_2 = SHX1_2.w
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 2.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveNamedPtfxAsset
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = "scr_xs_celebration"
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxLoopedAtCoord
  SHX4_2 = "scr_xs_money_rain"
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 0.2
  SHX8_2 = SHX1_2.w
  SHX8_2 = SHX8_2 + 90.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 1.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveNamedPtfxAsset
  SHX5_2 = "scr_xs_celebration"
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 15000
  SHX4_2(SHX5_2)
  SHX4_2 = StopParticleFxLooped
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "0d0bba08e3"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = 0
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX2_2 - SHX0_2
    SHX4_2 = 15000
    if SHX3_2 > SHX4_2 then
      break
    end
    SHX3_2 = SHX2_2 - SHX1_2
    SHX4_2 = math
    SHX4_2 = SHX4_2.random
    SHX5_2 = 150
    SHX6_2 = 650
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX3_2 >= SHX4_2 then
      SHX3_2 = PlaySoundFrontend
      SHX4_2 = -1
      SHX5_2 = "Bus_Schedule_Pickup"
      SHX6_2 = "DLC_PRISON_BREAK_HEIST_SOUNDS"
      SHX7_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = SHX2_2
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "d96c9842ab"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX0_1.robberyAtms
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX11_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxNonLoopedAtCoord
  SHX4_2 = "ent_dst_electrical"
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX7_2 = SHX7_2 - 0.5
  SHX8_2 = SHX1_2.w
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 2.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveNamedPtfxAsset
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "0b6d9ff2bc"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setPlayerCombatTimer
  SHX3_2 = 60
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 10000
    if SHX3_2 >= SHX4_2 then
      SHX4_2 = TriggerEvent
      SHX5_2 = "dba3e00154"
      SHX6_2 = SHX0_2 + SHX1_2
      SHX4_2(SHX5_2, SHX6_2)
      break
    else
      SHX4_2 = SHX3_2 / 10000
      SHX5_2 = TriggerEvent
      SHX6_2 = "dba3e00154"
      SHX7_2 = math
      SHX7_2 = SHX7_2.floor
      SHX8_2 = SHX1_2 * SHX4_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX7_2 = SHX0_2 + SHX7_2
      SHX5_2(SHX6_2, SHX7_2)
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "c63557b5fa"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = true
  SHX9_1 = SHX2_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_1.robberyAtms
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setPlayerCombatTimer
  SHX5_2 = 30
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setWeapon
  SHX5_2 = SHX2_2
  SHX6_2 = -1569615261
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = ClearPedTasksImmediately
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = TaskGoStraightToCoord
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX9_2 = 1.0
  SHX10_2 = 5000
  SHX11_2 = SHX3_2.w
  SHX12_2 = 0.1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  while true do
    SHX4_2 = GetScriptTaskStatus
    SHX5_2 = SHX2_2
    SHX6_2 = 2106541073
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if 7 == SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadClipSet
  SHX5_2 = "move_ped_crouched"
  SHX4_2(SHX5_2)
  SHX4_2 = SetPedCanPlayAmbientAnims
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedCanPlayAmbientBaseAnims
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedMovementClipset
  SHX5_2 = SHX2_2
  SHX6_2 = "move_ped_crouched"
  SHX7_2 = 0.35
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetPedStrafeClipset
  SHX5_2 = SHX2_2
  SHX6_2 = "move_ped_crouched_strafing"
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RemoveClipSet
  SHX5_2 = "move_ped_crouched"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "mini@repair"
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX2_2
  SHX6_2 = "mini@repair"
  SHX7_2 = "fixing_a_ped"
  SHX8_2 = 8.0
  SHX9_2 = -8.0
  SHX10_2 = -1
  SHX11_2 = 17
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "mini@repair"
  SHX4_2(SHX5_2)
  SHX4_2 = SHX10_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "6c81c57c72"
  SHX7_2 = SHX0_2
  SHX8_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = StopAnimTask
  SHX6_2 = SHX2_2
  SHX7_2 = "mini@repair"
  SHX8_2 = "fixing_a_ped"
  SHX9_2 = 1.0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = ResetPedStrafeClipset
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
  SHX5_2 = ResetPedMovementClipset
  SHX6_2 = SHX2_2
  SHX7_2 = 0.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCanPlayAmbientAnims
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCanPlayAmbientBaseAnims
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.setCanAnim
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = false
  SHX9_1 = SHX5_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "f0b274ca98"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = SHX0_1.robberyAtms
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadPtfx
  SHX3_2 = "veh_xs_vehicle_mods"
  SHX2_2(SHX3_2)
  SHX2_2 = 1
  SHX3_2 = 10
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = UseParticleFxAsset
    SHX7_2 = "veh_xs_vehicle_mods"
    SHX6_2(SHX7_2)
    SHX6_2 = StartParticleFxNonLoopedAtCoord
    SHX7_2 = "exp_xs_mine_tar"
    SHX8_2 = SHX1_2.x
    SHX9_2 = SHX1_2.y
    SHX10_2 = SHX1_2.z
    SHX10_2 = SHX10_2 - 0.5
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 1.0
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 50
    SHX6_2(SHX7_2)
  end
  SHX2_2 = RemoveNamedPtfxAsset
  SHX3_2 = "veh_xs_vehicle_mods"
  SHX2_2(SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "9b400f568d"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_1.robberyAtms
  SHX1_2 = SHX1_2[SHX0_2]
  while true do
    SHX2_2 = RequestScriptAudioBank
    SHX3_2 = "Alarms"
    SHX4_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = GetSoundId
  SHX2_2 = SHX2_2()
  SHX3_2 = PlaySoundFromCoord
  SHX4_2 = SHX2_2
  SHX5_2 = "Burglar_Bell"
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = "Generic_Alarms"
  SHX10_2 = false
  SHX11_2 = 0.05
  SHX12_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 60000
  SHX3_2(SHX4_2)
  SHX3_2 = StopSound
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = ReleaseSoundId
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = false
SHX15_1 = 0
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.random
  SHX2_2 = 6
  SHX3_2 = 12
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX12_1 = SHX1_2
  SHX1_2 = 0
  SHX15_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "f448952ef9"
  SHX3_2 = SHX0_2.robberyId
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX9_1
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "ec10dc3f68"
    SHX3_2 = SHX0_2.robberyId
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = 0
  SHX13_1 = SHX1_2
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = RequestScriptAudioBank
  SHX1_2 = "NIGEL_02_CRASH_A"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RequestScriptAudioBank
  SHX1_2 = "NIGEL_02_CRASH_B"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = math
  SHX1_2 = SHX1_2.random
  SHX2_2 = 1
  SHX3_2 = 10
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 >= 8 then
    SHX1_2 = "WINDOW_CRASH"
    if SHX1_2 then
      goto SHX_LABEL_27
    end
  end
  SHX1_2 = "WALL_CRASH"
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX2_2 = PlaySoundFromCoord
  SHX3_2 = -1
  SHX4_2 = SHX1_2
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = "NIGEL_02_SOUNDSET"
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1500
  SHX2_2(SHX3_2)
  SHX2_2 = ReleaseNamedScriptAudioBank
  SHX3_2 = "NIGEL_02_CRASH_B"
  SHX2_2(SHX3_2)
  SHX2_2 = ReleaseNamedScriptAudioBank
  SHX3_2 = "NIGEL_02_CRASH_A"
  SHX2_2(SHX3_2)
end
SHX19_1 = {}
SHX20_1 = {}
SHX21_1 = "des_vaultdoor"
SHX22_1 = "ent_ray_pro1_concrete_impacts"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX21_1 = {}
SHX22_1 = "des_fib_glass"
SHX23_1 = "ent_ray_fbi2_window_break"
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = SHX19_1
  SHX2_2 = #SHX2_2
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SHX19_1
  SHX0_2 = SHX1_2[SHX0_2]
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = SHX0_2[1]
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = SHX0_2[1]
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityForwardVector
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = SHX2_2 * 1.0
  SHX1_2 = SHX1_2 + SHX2_2
  SHX2_2 = StartParticleFxNonLoopedAtCoord
  SHX3_2 = SHX0_2[2]
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 1.0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = RemoveNamedPtfxAsset
  SHX3_2 = SHX0_2[1]
  SHX2_2(SHX3_2)
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX9_1
  if SHX1_2 then
    return
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = select
  SHX3_2 = 2
  SHX4_2 = GetCurrentPedWeapon
  SHX5_2 = SHX1_2
  SHX6_2 = 0
  SHX7_2 = false
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if -2067956739 == SHX2_2 then
    SHX2_2 = SHX15_1
    if SHX2_2 > 0 then
      SHX2_2 = SHX15_1
      SHX2_2 = SHX2_2 + 900000
      SHX3_2 = GetNetworkTime
      SHX3_2 = SHX3_2()
      SHX2_2 = SHX2_2 - SHX3_2
      if SHX2_2 > 0 then
        SHX3_2 = formatTimeString
        SHX4_2 = formatTime
        SHX5_2 = SHX2_2 / 1000
        SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = drawNativeNotification
        SHX5_2 = "This ATM has been robbed recently. You can rob it in "
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2 .. SHX6_2
        SHX6_2 = true
        SHX4_2(SHX5_2, SHX6_2)
      end
      return
    end
    SHX2_2 = drawNativeNotification
    SHX3_2 = "Hit the ATM with ~INPUT_ATTACK~ to begin breaking the door."
    SHX2_2(SHX3_2)
    SHX2_2 = SHX13_1
    if SHX2_2 > 0 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.floor
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX3_2 = SHX3_2 / SHX4_2
      SHX3_2 = SHX3_2 * 100
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 > 100 then
        SHX2_2 = 100
      end
      SHX3_2 = subtitleText
      SHX4_2 = "~r~ATM door damage "
      SHX5_2 = tostring
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "%"
      SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
      SHX3_2(SHX4_2)
    end
    SHX2_2 = RageUI
    SHX2_2 = SHX2_2.Visible
    SHX3_2 = RMenu
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.Get
    SHX5_2 = "cmgatm"
    SHX6_2 = "mainmenu"
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if SHX2_2 then
      SHX2_2 = RageUI
      SHX2_2 = SHX2_2.Visible
      SHX3_2 = RMenu
      SHX4_2 = SHX3_2
      SHX3_2 = SHX3_2.Get
      SHX5_2 = "cmgatm"
      SHX6_2 = "mainmenu"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 24
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = IsDisabledControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 24
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = SHX14_1
      if not SHX2_2 then
        SHX2_2 = Citizen
        SHX2_2 = SHX2_2.CreateThreadNow
        function SHX3_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
          SHX0_3 = true
          SHX14_1 = SHX0_3
          SHX0_3 = SHX0_1.robberyAtms
          SHX1_3 = SHX0_2.robberyId
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = ClearPedTasks
          SHX2_3 = SHX1_2
          SHX1_3(SHX2_3)
          SHX1_3 = TaskGoStraightToCoord
          SHX2_3 = SHX1_2
          SHX3_3 = SHX0_3.x
          SHX4_3 = SHX0_3.y
          SHX5_3 = SHX0_3.z
          SHX6_3 = 1.0
          SHX7_3 = 3000
          SHX8_3 = SHX0_3.w
          SHX9_3 = 0.35
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
          while true do
            SHX1_3 = GetScriptTaskStatus
            SHX2_3 = SHX1_2
            SHX3_3 = 2106541073
            SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
            if 7 == SHX1_3 then
              break
            end
            SHX1_3 = Citizen
            SHX1_3 = SHX1_3.Wait
            SHX2_3 = 0
            SHX1_3(SHX2_3)
          end
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.loadAnimDict
          SHX2_3 = "melee@small_wpn@streamed_core"
          SHX1_3(SHX2_3)
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX1_2 = SHX1_3
          SHX1_3 = TaskPlayAnim
          SHX2_3 = SHX1_2
          SHX3_3 = "melee@small_wpn@streamed_core"
          SHX4_3 = "ground_attack_on_spot"
          SHX5_3 = 8.0
          SHX6_3 = 8.0
          SHX7_3 = -1
          SHX8_3 = 1
          SHX9_3 = 1.0
          SHX10_3 = false
          SHX11_3 = false
          SHX12_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          SHX1_3 = RemoveAnimDict
          SHX2_3 = "melee@small_wpn@streamed_core"
          SHX1_3(SHX2_3)
          SHX1_3 = Citizen
          SHX1_3 = SHX1_3.CreateThread
          SHX2_3 = SHX18_1
          SHX1_3(SHX2_3)
          SHX1_3 = Citizen
          SHX1_3 = SHX1_3.CreateThread
          SHX2_3 = SHX20_1
          SHX1_3(SHX2_3)
          SHX1_3 = Citizen
          SHX1_3 = SHX1_3.Wait
          SHX2_3 = 2000
          SHX1_3(SHX2_3)
          SHX1_3 = ClearPedTasks
          SHX2_3 = SHX1_2
          SHX1_3(SHX2_3)
          SHX1_3 = SHX13_1
          SHX1_3 = SHX1_3 + 1
          SHX13_1 = SHX1_3
          SHX1_3 = SHX13_1
          SHX2_3 = SHX12_1
          if SHX1_3 >= SHX2_3 then
            SHX1_3 = TriggerServerEvent
            SHX2_3 = "c63557b5fa"
            SHX3_3 = SHX0_2.robberyId
            SHX1_3(SHX2_3, SHX3_3)
          end
          SHX1_3 = TaskPedSlideToCoord
          SHX2_3 = SHX1_2
          SHX3_3 = SHX0_3.x
          SHX4_3 = SHX0_3.y
          SHX5_3 = SHX0_3.z
          SHX6_3 = SHX0_3.w
          SHX7_3 = 2000
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
          while true do
            SHX1_3 = GetScriptTaskStatus
            SHX2_3 = SHX1_2
            SHX3_3 = 1045468327
            SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
            if 7 == SHX1_3 then
              break
            end
            SHX1_3 = Citizen
            SHX1_3 = SHX1_3.Wait
            SHX2_3 = 0
            SHX1_3(SHX2_3)
          end
          SHX1_3 = false
          SHX14_1 = SHX1_3
        end
        SHX2_2(SHX3_2)
      end
    end
  end
end
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.robberyAtms
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "atmrobbery_"
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2.xyz
    SHX9_2 = 1.5
    SHX10_2 = 6
    SHX11_2 = SHX16_1
    SHX12_2 = SHX17_1
    SHX13_2 = SHX21_1
    SHX14_2 = {}
    SHX14_2.robberyId = SHX4_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX22_1(SHX23_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "de574bb3d5"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX15_1 = SHX0_2
end
SHX22_1(SHX23_1, SHX24_1)
