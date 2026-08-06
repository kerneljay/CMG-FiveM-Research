-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_business"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = false
SHX3_1 = 0
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = nil
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = nil
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = nil
SHX17_1 = nil
SHX18_1 = nil
SHX19_1 = nil
SHX20_1 = nil
SHX21_1 = nil
SHX22_1 = nil
SHX23_1 = nil
SHX24_1 = nil
SHX25_1 = nil
SHX26_1 = nil
SHX27_1 = nil
SHX28_1 = nil
SHX29_1 = nil
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX1_1 = SHX1_2
  SHX1_2 = SHX1_1.washPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.washPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.washPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.washPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX4_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_wash"
    SHX3_2 = SHX1_1.washPosition
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to wash your hands"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.setCanAnim
        SHX1_3 = false
        SHX0_3(SHX1_3)
        SHX0_3 = true
        SHX2_1 = SHX0_3
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.playAnim
        SHX1_3 = true
        SHX2_3 = {}
        SHX3_3 = {}
        SHX4_3 = "switch@michael@wash_face"
        SHX5_3 = "loop_michael"
        SHX6_3 = 1
        SHX3_3[1] = SHX4_3
        SHX3_3[2] = SHX5_3
        SHX3_3[3] = SHX6_3
        SHX2_3[1] = SHX3_3
        SHX3_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.CreateThread
        function SHX1_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
          SHX0_4 = Citizen
          SHX0_4 = SHX0_4.Wait
          SHX1_4 = 3800
          SHX0_4(SHX1_4)
          SHX0_4 = TriggerServerEvent
          SHX1_4 = "bf3f551598"
          SHX0_4(SHX1_4)
          SHX0_4 = false
          SHX2_1 = SHX0_4
          SHX0_4 = tCMG
          SHX0_4 = SHX0_4.setCanAnim
          SHX1_4 = true
          SHX0_4(SHX1_4)
          SHX0_4 = 0
          SHX3_1 = SHX0_4
        end
        SHX0_3(SHX1_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.drinksDispensor
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.drinksDispensor
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.drinksDispensor
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.drinksDispensor
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_drinks"
    SHX3_2 = SHX1_1.drinksDispensor
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to pour a drink"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_drinks"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX7_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.frierPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.frierPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.frierPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.frierPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_frier"
    SHX3_2 = SHX1_1.frierPosition
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = [[
Press ~INPUT_CONTEXT~ to fry small fries
Press ~INPUT_CONTEXT_SECONDARY~ to fry large fries]]
      SHX0_3(SHX1_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 44
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 52
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      SHX1_3 = IsDisabledControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 52
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX0_3 or SHX1_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.disableSittingOnChairThisFrame
        SHX2_3()
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "bf3f551598"
        SHX2_3(SHX3_3)
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "c6cd1a916a"
        SHX4_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX9_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.grillPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.grillPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.grillPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.grillPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX10_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_grill"
    SHX3_2 = SHX1_1.grillPosition
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to grill the patties"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "88f2f7f0ea"
        SHX0_3(SHX1_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX11_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.burgerPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.burgerPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.burgerPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.burgerPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX12_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_burger"
    SHX3_2 = SHX1_1.burgerPosition
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = [[
Press ~INPUT_CONTEXT~ to add salad to small burger
Press ~INPUT_CONTEXT_SECONDARY~ to add salad to large burger]]
      SHX0_3(SHX1_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 44
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 52
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      SHX1_3 = IsDisabledControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 52
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX0_3 or SHX1_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.disableSittingOnChairThisFrame
        SHX2_3()
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "bf3f551598"
        SHX2_3(SHX3_3)
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "76d0a73816"
        SHX4_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX13_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.saucesPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.saucesPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.saucesPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.saucesPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX14_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_sauces"
    SHX3_2 = SHX1_1.saucesPosition
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to add the sauces"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "2d5eb5712c"
        SHX0_3(SHX1_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX15_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.ordersPosition
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.ordersPosition
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.ordersPosition
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.ordersPosition
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX16_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_orders"
    SHX3_2 = SHX1_1.ordersPosition
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
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
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to view the order list"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_vieworders"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX17_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.hotDrinksDispensor
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.hotDrinksDispensor
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.hotDrinksDispensor
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.hotDrinksDispensor
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX18_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_hotdrinks"
    SHX3_2 = SHX1_1.hotDrinksDispensor
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to pour a hot drink"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_hotdrinks"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX19_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.milkshakeMachine
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.milkshakeMachine
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.milkshakeMachine
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.milkshakeMachine
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX20_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_milkshakes"
    SHX3_2 = SHX1_1.milkshakeMachine
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to mix a milkshake"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_milkshakes"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX21_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.icecreamMachine
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.icecreamMachine
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.icecreamMachine
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.icecreamMachine
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX22_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_icecream"
    SHX3_2 = SHX1_1.icecreamMachine
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to create icecream"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_icecreams"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX23_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.cupcakeMachine
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.cupcakeMachine
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.cupcakeMachine
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.cupcakeMachine
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX24_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_cupcakes"
    SHX3_2 = SHX1_1.cupcakeMachine
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to create cupcakes"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_cupcakes"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX25_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.riceMachine
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.riceMachine
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.riceMachine
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.riceMachine
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX26_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_rice"
    SHX3_2 = SHX1_1.riceMachine
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to fry rice"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_rice"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX27_1 = SHX1_2
  end
  SHX1_2 = SHX1_1.chineseMachine
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX1_1.chineseMachine
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX1_1.chineseMachine
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX1_1.chineseMachine
    SHX4_2 = SHX4_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 0.4
    SHX6_2 = 0.4
    SHX7_2 = 0.4
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX11_2 = 150
    SHX12_2 = 25.0
    SHX13_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX28_1 = SHX1_2
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createArea
    SHX2_2 = "business_chinese"
    SHX3_2 = SHX1_1.chineseMachine
    SHX3_2 = SHX3_2.xyz
    SHX4_2 = 1.5
    SHX5_2 = 3.0
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX2_1
      if SHX0_3 then
        return
      end
      SHX0_3 = SHX3_1
      if SHX0_3 > 8 then
        SHX0_3 = notify
        SHX1_3 = "~r~Your hands are dirty. Please wash them."
        SHX0_3(SHX1_3)
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to cook food"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.disableSittingOnChairThisFrame
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Visible
        SHX1_3 = RMenu
        SHX2_3 = SHX1_3
        SHX1_3 = SHX1_3.Get
        SHX3_3 = "business"
        SHX4_3 = "chef_chinese"
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX2_3 = true
        SHX0_3(SHX1_3, SHX2_3)
      end
    end
    SHX9_2 = {}
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX29_1 = SHX1_2
  end
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = SHX5_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX4_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX5_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX6_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX7_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = SHX9_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX8_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX9_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX11_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX10_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX11_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX12_1
  if SHX0_2 then
    SHX0_2 = SHX13_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX12_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX13_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX14_1
  if SHX0_2 then
    SHX0_2 = SHX15_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX14_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX15_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX16_1
  if SHX0_2 then
    SHX0_2 = SHX17_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX16_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX17_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX18_1
  if SHX0_2 then
    SHX0_2 = SHX19_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX18_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX19_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX20_1
  if SHX0_2 then
    SHX0_2 = SHX21_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX20_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX21_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX22_1
  if SHX0_2 then
    SHX0_2 = SHX23_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX22_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX23_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX24_1
  if SHX0_2 then
    SHX0_2 = SHX25_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX24_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX25_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX26_1
  if SHX0_2 then
    SHX0_2 = SHX27_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX26_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX27_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX28_1
  if SHX0_2 then
    SHX0_2 = SHX29_1
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX28_1
      SHX0_2(SHX1_2)
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeArea
      SHX1_2 = SHX29_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = nil
  SHX4_1 = SHX0_2
  SHX0_2 = nil
  SHX5_1 = SHX0_2
  SHX0_2 = nil
  SHX6_1 = SHX0_2
  SHX0_2 = nil
  SHX7_1 = SHX0_2
  SHX0_2 = nil
  SHX8_1 = SHX0_2
  SHX0_2 = nil
  SHX9_1 = SHX0_2
  SHX0_2 = nil
  SHX10_1 = SHX0_2
  SHX0_2 = nil
  SHX11_1 = SHX0_2
  SHX0_2 = nil
  SHX12_1 = SHX0_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  SHX0_2 = nil
  SHX15_1 = SHX0_2
  SHX0_2 = nil
  SHX18_1 = SHX0_2
  SHX0_2 = nil
  SHX19_1 = SHX0_2
  SHX0_2 = nil
  SHX20_1 = SHX0_2
  SHX0_2 = nil
  SHX21_1 = SHX0_2
  SHX0_2 = nil
  SHX22_1 = SHX0_2
  SHX0_2 = nil
  SHX23_1 = SHX0_2
  SHX0_2 = nil
  SHX24_1 = SHX0_2
  SHX0_2 = nil
  SHX25_1 = SHX0_2
  SHX0_2 = false
  SHX2_1 = SHX0_2
  SHX0_2 = 0
  SHX3_1 = SHX0_2
  SHX0_2 = nil
  SHX1_1 = SHX0_2
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_drinks"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_hotdrinks"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_milkshakes"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_icecreams"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_cupcakes"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_rice"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1 = RMenu
SHX35_1 = SHX35_1.Add
SHX36_1 = "business"
SHX37_1 = "chef_chinese"
SHX38_1 = RageUI
SHX38_1 = SHX38_1.CreateMenu
SHX39_1 = ""
SHX40_1 = "~b~CMG Business"
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuWidth
SHX41_1 = SHX41_1()
SHX42_1 = CMG
SHX42_1 = SHX42_1.getRageUIMenuHeight
SHX42_1 = SHX42_1()
SHX43_1 = "cmg_marketui"
SHX44_1 = "cmg_marketui"
SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = "Requirements: "
  SHX3_2 = pairs
  SHX4_2 = SHX1_2.items
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX2_2
    SHX10_2 = "\n"
    SHX11_2 = tostring
    SHX12_2 = SHX8_2.amount
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = "x "
    SHX13_2 = SHX0_2.locationInfo
    SHX13_2 = SHX13_2.items
    SHX14_2 = SHX8_2.id
    SHX13_2 = SHX13_2[SHX14_2]
    SHX13_2 = SHX13_2[1]
    SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2
    SHX2_2 = SHX9_2
  end
  return SHX2_2
end
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_2.locationInfo
    SHX8_2 = SHX8_2.items
    SHX8_2 = SHX8_2[SHX6_2]
    if SHX8_2 then
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.ButtonWithStyle
      SHX10_2 = SHX8_2[1]
      SHX11_2 = SHX35_1
      SHX12_2 = SHX0_2
      SHX13_2 = SHX7_2
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = {}
      SHX12_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX13_2 = true
      function SHX14_2(SHX0_3, SHX1_3, SHX2_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_3, SHX4_3, SHX5_3
        if SHX2_3 then
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "db9a057a2d"
          SHX5_3 = SHX6_2
          SHX3_3(SHX4_3, SHX5_3)
        end
      end
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
  end
end
SHX37_1 = RageUI
SHX37_1 = SHX37_1.CreateWhile
SHX38_1 = 1.0
SHX39_1 = RMenu
SHX40_1 = SHX39_1
SHX39_1 = SHX39_1.Get
SHX41_1 = "business"
SHX42_1 = "chef_drinks"
SHX39_1 = SHX39_1(SHX40_1, SHX41_1, SHX42_1)
SHX40_1 = nil
function SHX41_1()
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
  SHX3_2 = "business"
  SHX4_2 = "chef_drinks"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.drinksMachine
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_hotdrinks"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.hotDrinksMachine
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_milkshakes"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.milkshakeMachine
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_icecreams"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.icecreamMachine
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_cupcakes"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.cupcakesMachine
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_rice"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.riceStation
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "chef_chinese"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "chef"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX36_1
    SHX2_3 = SHX0_3
    SHX3_3 = SHX0_1.chineseCookingStation
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX37_1(SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "6a31d41cc5"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCanAnim
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.playAnim
  SHX2_2 = true
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = "anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal"
  SHX6_2 = "pour_one"
  SHX7_2 = 1
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX3_2[1] = SHX4_2
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "c6cd1a916a"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "88f2f7f0ea"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "76d0a73816"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = RegisterNetEvent
SHX38_1 = "2d5eb5712c"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = {}
SHX38_1 = {}
SHX38_1.init = SHX32_1
SHX38_1.tick = SHX33_1
SHX38_1.finish = SHX34_1
SHX38_1.next = "main"
SHX37_1.main = SHX38_1
SHX38_1 = CMG
SHX38_1 = SHX38_1.registerBusinessJob
SHX39_1 = "chef"
SHX40_1 = SHX30_1
SHX41_1 = "main"
SHX42_1 = SHX37_1
SHX43_1 = SHX31_1
SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1)
SHX38_1 = Citizen
SHX38_1 = SHX38_1.Wait
SHX39_1 = 0
SHX38_1(SHX39_1)
SHX38_1 = CMG
SHX38_1 = SHX38_1.addGenericBusinessOrderView
SHX39_1 = "chef"
SHX40_1 = nil
SHX38_1(SHX39_1, SHX40_1)
