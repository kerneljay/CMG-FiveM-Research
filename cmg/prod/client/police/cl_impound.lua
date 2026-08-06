-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_impound"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX1_1.owner_id = 0
SHX1_1.owner_name = ""
SHX1_1.vehicle = ""
SHX1_1.vehicle_name = ""
SHX2_1 = nil
SHX3_1 = {}
SHX4_1 = 786469
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createDynamicPed
  SHX1_2 = SHX0_1.ped
  SHX1_2 = SHX1_2.modelHash
  SHX2_2 = SHX0_1.ped
  SHX2_2 = SHX2_2.position
  SHX3_2 = 215.0
  SHX4_2 = true
  SHX5_2 = SHX0_1.ped
  SHX5_2 = SHX5_2.animDict
  SHX6_2 = SHX0_1.ped
  SHX6_2 = SHX6_2.animName
  SHX7_2 = 30
  SHX8_2 = false
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createDynamicPed
  SHX1_2 = SHX0_1.paletoPed
  SHX1_2 = SHX1_2.modelHash
  SHX2_2 = SHX0_1.paletoPed
  SHX2_2 = SHX2_2.position
  SHX3_2 = 315.0
  SHX4_2 = true
  SHX5_2 = SHX0_1.paletoPed
  SHX5_2 = SHX5_2.animDict
  SHX6_2 = SHX0_1.paletoPed
  SHX6_2 = SHX6_2.animName
  SHX7_2 = 30
  SHX8_2 = false
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = SHX0_1.ped
  SHX1_2 = SHX1_2.position
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.ped
  SHX2_2 = SHX2_2.position
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.ped
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.z
  SHX4_2 = 357
  SHX5_2 = 81
  SHX6_2 = "Vehicle Impound"
  SHX7_2 = 0.8
  SHX8_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = SHX0_1.paletoPed
  SHX1_2 = SHX1_2.position
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.paletoPed
  SHX2_2 = SHX2_2.position
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.paletoPed
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.z
  SHX4_2 = 357
  SHX5_2 = 81
  SHX6_2 = "Vehicle Impound"
  SHX7_2 = 0.8
  SHX8_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = Wait
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  function SHX0_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX1_3 = SHX0_3.type
    SHX2_1 = SHX1_3
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Visible
    SHX2_3 = RMenu
    SHX3_3 = SHX2_3
    SHX2_3 = SHX2_3.Get
    SHX4_3 = "cmgimpound"
    SHX5_3 = "main"
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX3_3 = true
    SHX1_3(SHX2_3, SHX3_3)
  end
  function SHX1_2()
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
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "vehicle_impound"
  SHX5_2 = SHX0_1.ped
  SHX5_2 = SHX5_2.position
  SHX6_2 = 3.0
  SHX7_2 = 6
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = {}
  SHX11_2.type = "city"
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "vehicle_paleto_impound"
  SHX5_2 = SHX0_1.paletoPed
  SHX5_2 = SHX5_2.position
  SHX6_2 = 3.0
  SHX7_2 = 6
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = {}
  SHX11_2.type = "paleto"
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX5_1(SHX6_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgimpound"
SHX7_1 = "reasons"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = "~b~Impounding Vehicle..."
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_jobselectorui"
SHX14_1 = "metpd"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgimpound"
SHX7_1 = "main"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = "~b~Your Impounded Vehicles"
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_jobselectorui"
SHX14_1 = "metpd"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgimpound"
SHX7_1 = "vehicle_information"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "cmgimpound"
SHX12_1 = "main"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgimpound"
SHX7_1 = "pay_fine_confirmation"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateSubMenu
SHX9_1 = RMenu
SHX10_1 = SHX9_1
SHX9_1 = SHX9_1.Get
SHX11_1 = "cmgimpound"
SHX12_1 = "vehicle_information"
SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = RMenu
SHX5_1 = SHX5_1.Add
SHX6_1 = "cmgimpound"
SHX7_1 = "requestvehicle"
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateMenu
SHX9_1 = ""
SHX10_1 = "~b~Request Impounded Vehicle"
SHX11_1 = CMG
SHX11_1 = SHX11_1.getRageUIMenuWidth
SHX11_1 = SHX11_1()
SHX12_1 = CMG
SHX12_1 = SHX12_1.getRageUIMenuHeight
SHX12_1 = SHX12_1()
SHX13_1 = "cmg_jobselectorui"
SHX14_1 = "metpd"
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX5_1 = nil
SHX6_1 = {}
SHX7_1 = 2
SHX8_1 = 4
SHX9_1 = 5
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX7_1 = 1
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = ipairs
  SHX1_2 = SHX0_1.reasonsForImpound
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2.checked = false
  end
end
SHX9_1 = RageUI
SHX9_1 = SHX9_1.CreateWhile
SHX10_1 = 1.0
SHX11_1 = RMenu
SHX12_1 = SHX11_1
SHX11_1 = SHX11_1.Get
SHX13_1 = "cmgimpound"
SHX14_1 = "main"
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = nil
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.BackspaceMenuCallback
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX8_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgimpound"
  SHX4_2 = "reasons"
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
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Vehicle: ~b~"
    SHX2_3 = SHX1_1.vehicle_name
    SHX3_3 = "~s~ | Owner: ~b~"
    SHX4_3 = SHX1_1.owner_name
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3 .. SHX4_3
    SHX0_3(SHX1_3)
    SHX0_3 = 1
    SHX1_3 = SHX0_1.reasonsForImpound
    SHX1_3 = #SHX1_3
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.Checkbox
      SHX5_3 = SHX0_1.reasonsForImpound
      SHX5_3 = SHX5_3[SHX3_3]
      SHX5_3 = SHX5_3.option
      SHX6_3 = ""
      SHX7_3 = SHX0_1.reasonsForImpound
      SHX7_3 = SHX7_3[SHX3_3]
      SHX7_3 = SHX7_3.checked
      SHX8_3 = {}
      SHX8_3.Style = 1
      function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4
        if SHX1_4 then
          SHX4_4 = SHX0_1.reasonsForImpound
          SHX5_4 = SHX3_3
          SHX4_4 = SHX4_4[SHX5_4]
          SHX4_4.checked = SHX3_4
        end
      end
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Confirm Selection"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4
      if SHX2_4 then
        SHX3_4 = {}
        SHX4_4 = ipairs
        SHX5_4 = SHX0_1.reasonsForImpound
        SHX4_4, SHX5_4, SHX6_4, SHX7_4 = SHX4_4(SHX5_4)
        for SHX8_4, SHX9_4 in SHX4_4, SHX5_4, SHX6_4, SHX7_4 do
          SHX10_4 = SHX9_4.checked
          if SHX10_4 then
            SHX10_4 = table
            SHX10_4 = SHX10_4.insert
            SHX11_4 = SHX3_4
            SHX12_4 = SHX8_4
            SHX10_4(SHX11_4, SHX12_4)
            SHX9_4.checked = false
          end
        end
        SHX4_4 = TriggerServerEvent
        SHX5_4 = "bd4dad4950"
        SHX6_4 = SHX1_1.owner_id
        SHX7_4 = SHX1_1.owner_name
        SHX8_4 = SHX1_1.vehicle
        SHX9_4 = SHX1_1.vehicle_name
        SHX10_4 = SHX3_4
        SHX11_4 = SHX1_1.vehicle_net_id
        SHX12_4 = SHX1_1.uuid
        SHX13_4 = SHX1_1.isEmergencyVehicle
        SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4)
        SHX4_4 = RageUI
        SHX4_4 = SHX4_4.CloseAll
        SHX4_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~r~Cancel"
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
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
  SHX3_2 = "cmgimpound"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "View your impounded vehicles here."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "You can pay the ~g~\194\16310,000~s~ fine to release your vehicle."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "---"
    SHX0_3(SHX1_3)
    SHX0_3 = SHX3_1
    if nil ~= SHX0_3 then
      SHX0_3 = SHX3_1
      SHX1_3 = {}
      if SHX0_3 ~= SHX1_3 then
        SHX0_3 = pairs
        SHX1_3 = SHX3_1
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = CMG
          SHX6_3 = SHX6_3.getVehicleInfoFromUUID
          SHX7_3 = SHX4_3
          SHX6_3 = SHX6_3(SHX7_3)
          if SHX6_3 then
            SHX7_3 = RageUI
            SHX7_3 = SHX7_3.ButtonWithStyle
            SHX8_3 = SHX6_3.name
            SHX9_3 = ""
            SHX10_3 = {}
            SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
            SHX11_3 = true
            function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4
              if SHX2_4 then
                SHX3_4 = SHX5_3
                SHX5_1 = SHX3_4
              end
            end
            SHX13_3 = RMenu
            SHX14_3 = SHX13_3
            SHX13_3 = SHX13_3.Get
            SHX15_3 = "cmgimpound"
            SHX16_3 = "vehicle_information"
            SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
          end
        end
    end
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~None of your vehicles are currently impounded."
      SHX0_3(SHX1_3)
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
  SHX3_2 = "cmgimpound"
  SHX4_2 = "vehicle_information"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = SHX5_1
    if 0 ~= SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getVehicleInfoFromUUID
      SHX2_3 = SHX5_1.uuid
      SHX1_3 = SHX1_3(SHX2_3)
      SHX1_3 = SHX1_3.name
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "This vehicle was impounded by ~b~"
      SHX2_3 = SHX5_1.impounded_by_name
      SHX3_3 = "(ID: "
      SHX4_3 = SHX5_1.impounder
      SHX5_3 = ") ~s~for:"
      SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
      SHX0_3(SHX1_3)
      SHX0_3 = json
      SHX0_3 = SHX0_3.decode
      SHX1_3 = SHX5_1.reasons
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        SHX1_3 = ipairs
        SHX2_3 = SHX0_3
        SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
        for SHX5_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.Separator
          SHX7_3 = "\194\187 "
          SHX8_3 = SHX0_1.reasonsForImpound
          SHX9_3 = SHX0_3[SHX5_3]
          SHX8_3 = SHX8_3[SHX9_3]
          SHX8_3 = SHX8_3.option
          SHX7_3 = SHX7_3 .. SHX8_3
          SHX6_3(SHX7_3)
        end
      end
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~g~Pay Fine"
      SHX3_3 = "Paying the fine will release your vehicle."
      SHX4_3 = {}
      SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX7_3 = RMenu
      SHX8_3 = SHX7_3
      SHX7_3 = SHX7_3.Get
      SHX9_3 = "cmgimpound"
      SHX10_3 = "pay_fine_confirmation"
      SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
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
  SHX3_2 = "cmgimpound"
  SHX4_2 = "pay_fine_confirmation"
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
    SHX0_3 = SHX5_1
    if 0 ~= SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "Would you like to release your vehicle?"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "This action will cost you ~g~\194\16310,000~s~."
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "---"
      SHX0_3(SHX1_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~g~Pay"
      SHX2_3 = "Pay the fine"
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
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8fff197382"
          SHX5_4 = SHX5_1.uuid
          SHX6_4 = SHX2_1
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgimpound"
      SHX9_3 = "main"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~r~Cancel"
      SHX2_3 = "Go back"
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
        
      end
      SHX6_3 = RMenu
      SHX7_3 = SHX6_3
      SHX6_3 = SHX6_3.Get
      SHX8_3 = "cmgimpound"
      SHX9_3 = "main"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmgimpound"
  SHX4_2 = "requestvehicle"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Minimum Seat Amount"
    SHX2_3 = SHX6_1
    SHX3_3 = SHX7_1
    SHX4_3 = "The minimum amount of seats this vehicle should have"
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX7_1 = SHX3_4
    end
    function SHX8_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Request Impounded Vehicle"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "007a0c4d08"
        SHX6_4 = SHX7_1
        SHX5_4 = SHX6_1
        SHX5_4 = SHX5_4[SHX6_4]
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "11cbf24793"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2
  SHX7_2 = {}
  SHX8_2 = tonumber
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX7_2.owner_id = SHX8_2
  SHX7_2.owner_name = SHX1_2
  SHX7_2.vehicle = SHX3_2
  SHX7_2.vehicle_name = SHX2_2
  SHX7_2.vehicle_net_id = SHX4_2
  SHX7_2.uuid = SHX5_2
  SHX7_2.isEmergencyVehicle = SHX6_2
  SHX1_1 = SHX7_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "e27c143134"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "f85a25a536"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getObjectId
  SHX9_2 = SHX0_2
  SHX10_2 = "CMG:impoundSuccess (1)"
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX8_2
  SHX11_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.requestEntitySpawn
  SHX11_2 = "impound_sticker_object"
  SHX12_2 = SHX9_2
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = CreateObject
  SHX11_2 = 1289584093
  SHX12_2 = SHX9_2.x
  SHX13_2 = SHX9_2.y
  SHX14_2 = SHX9_2.z
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = true
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.loadModel
  SHX12_2 = -1099035225
  SHX11_2(SHX12_2)
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = SHX8_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.requestEntitySpawn
  SHX12_2 = "impound_clamp_object"
  SHX13_2 = SHX9_2
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = CreateObject
  SHX12_2 = -1099035225
  SHX13_2 = SHX9_2.x
  SHX14_2 = SHX9_2.y
  SHX15_2 = SHX9_2.z
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = true
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX12_2 = SetModelAsNoLongerNeeded
  SHX13_2 = -1099035225
  SHX12_2(SHX13_2)
  SHX12_2 = GetEntityBoneIndexByName
  SHX13_2 = SHX8_2
  SHX14_2 = "wheel_lf"
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX13_2 = SetEntityHeading
  SHX14_2 = SHX11_2
  SHX15_2 = 0.0
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = AttachEntityToEntity
  SHX14_2 = SHX11_2
  SHX15_2 = SHX8_2
  SHX16_2 = SHX12_2
  SHX17_2 = -0.1
  SHX18_2 = 0.15
  SHX19_2 = -0.3
  SHX20_2 = 180.0
  SHX21_2 = 200.0
  SHX22_2 = 90.0
  SHX23_2 = true
  SHX24_2 = true
  SHX25_2 = false
  SHX26_2 = false
  SHX27_2 = 2
  SHX28_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX13_2 = FreezeEntityPosition
  SHX14_2 = SHX11_2
  SHX15_2 = true
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = IsVehicleWindowIntact
  SHX14_2 = SHX8_2
  SHX15_2 = 0
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  if SHX13_2 then
    SHX13_2 = GetEntityBoneIndexByName
    SHX14_2 = SHX8_2
    SHX15_2 = "windscreen"
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    SHX14_2 = FreezeEntityPosition
    SHX15_2 = SHX10_2
    SHX16_2 = true
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = AttachEntityToEntity
    SHX15_2 = SHX10_2
    SHX16_2 = SHX8_2
    SHX17_2 = SHX13_2
    SHX18_2 = 0.1
    SHX19_2 = -2.7
    SHX20_2 = -1.65
    SHX21_2 = -32.0
    SHX22_2 = 5.0
    SHX23_2 = 180.0
    SHX24_2 = true
    SHX25_2 = true
    SHX26_2 = false
    SHX27_2 = true
    SHX28_2 = 0
    SHX29_2 = true
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  end
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.notifyPicture
  SHX14_2 = "polnotification"
  SHX15_2 = "notification"
  SHX16_2 = "You have siezed a ~b~"
  SHX17_2 = SHX1_2
  SHX18_2 = "~s~ owned by ~b~"
  SHX19_2 = SHX2_2
  SHX20_2 = [[
~s~. 
 
A tow truck will pick up the vehicle shortly and take it to the impound.]]
  SHX16_2 = SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2
  SHX17_2 = "Metropolitan Police"
  SHX18_2 = "Impound"
  SHX19_2 = nil
  SHX20_2 = nil
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX13_2 = PlayerPedId
  SHX13_2 = SHX13_2()
  SHX14_2 = GetEntityCoords
  SHX15_2 = SHX13_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = GetClosestVehicleNodeWithHeading
  SHX16_2 = SHX14_2.x
  SHX17_2 = SHX14_2.y
  SHX18_2 = SHX14_2.z
  SHX19_2 = nil
  SHX20_2 = 8
  SHX21_2 = 8
  SHX22_2 = 8
  SHX23_2 = 8
  SHX15_2, SHX16_2, SHX17_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX18_2 = GetPointOnRoadSide
  SHX19_2 = SHX14_2.x
  SHX20_2 = SHX14_2.y
  SHX21_2 = SHX14_2.z
  SHX22_2 = 0.0
  SHX18_2, SHX19_2, SHX20_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX21_2 = GetNthClosestVehicleNode
  SHX22_2 = SHX14_2.x
  SHX23_2 = SHX14_2.y
  SHX24_2 = SHX14_2.z
  SHX25_2 = 15
  SHX21_2, SHX22_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2)
  SHX23_2 = nil
  SHX24_2 = nil
  SHX25_2 = vector3
  SHX26_2 = 0
  SHX27_2 = 0
  SHX28_2 = 0
  SHX25_2 = SHX25_2(SHX26_2, SHX27_2, SHX28_2)
  if SHX22_2 ~= SHX25_2 then
    SHX25_2 = vector3
    SHX26_2 = 0
    SHX27_2 = 0
    SHX28_2 = 0
    SHX25_2 = SHX25_2(SHX26_2, SHX27_2, SHX28_2)
    if SHX19_2 ~= SHX25_2 then
      SHX25_2 = CMG
      SHX25_2 = SHX25_2.loadModel
      SHX26_2 = 1353720154
      SHX25_2(SHX26_2)
      SHX25_2 = CMG
      SHX25_2 = SHX25_2.loadModel
      SHX26_2 = -1760377969
      SHX25_2(SHX26_2)
      SHX25_2 = CMG
      SHX25_2 = SHX25_2.requestEntitySpawn
      SHX26_2 = "impound_flatbed"
      SHX27_2 = SHX22_2
      SHX25_2(SHX26_2, SHX27_2)
      SHX25_2 = CMG
      SHX25_2 = SHX25_2.spawnVehicle
      SHX26_2 = 1353720154
      SHX27_2 = SHX22_2.x
      SHX28_2 = SHX22_2.y
      SHX29_2 = SHX22_2.z
      SHX30_2 = SHX17_2
      SHX31_2 = false
      SHX32_2 = true
      SHX33_2 = true
      SHX25_2 = SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX23_2 = SHX25_2
      SHX25_2 = NetworkGetNetworkIdFromEntity
      SHX26_2 = SHX23_2
      SHX25_2 = SHX25_2(SHX26_2)
      SHX26_2 = SetVehicleDoorsLocked
      SHX27_2 = SHX23_2
      SHX28_2 = 2
      SHX26_2(SHX27_2, SHX28_2)
      SHX26_2 = SetNetworkIdCanMigrate
      SHX27_2 = SHX25_2
      SHX28_2 = false
      SHX26_2(SHX27_2, SHX28_2)
      SHX26_2 = SetModelAsNoLongerNeeded
      SHX27_2 = 1353720154
      SHX26_2(SHX27_2)
      SHX26_2 = AddBlipForEntity
      SHX27_2 = SHX23_2
      SHX26_2 = SHX26_2(SHX27_2)
      SHX27_2 = SetBlipSprite
      SHX28_2 = SHX26_2
      SHX29_2 = 68
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = SetBlipDisplay
      SHX28_2 = SHX26_2
      SHX29_2 = 4
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = SetBlipScale
      SHX28_2 = SHX26_2
      SHX29_2 = 1.0
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = SetBlipColour
      SHX28_2 = SHX26_2
      SHX29_2 = 5
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = SetBlipAsShortRange
      SHX28_2 = SHX26_2
      SHX29_2 = true
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = CMG
      SHX27_2 = SHX27_2.requestEntitySpawn
      SHX28_2 = "impound_ped"
      SHX29_2 = SHX22_2
      SHX27_2(SHX28_2, SHX29_2)
      SHX27_2 = CreatePedInsideVehicle
      SHX28_2 = SHX23_2
      SHX29_2 = 1
      SHX30_2 = -1760377969
      SHX31_2 = -1
      SHX32_2 = true
      SHX33_2 = false
      SHX27_2 = SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
      SHX24_2 = SHX27_2
      SHX27_2 = NetworkGetNetworkIdFromEntity
      SHX28_2 = SHX24_2
      SHX27_2 = SHX27_2(SHX28_2)
      SHX28_2 = TaskVehicleDriveToCoord
      SHX29_2 = SHX24_2
      SHX30_2 = SHX23_2
      SHX31_2 = SHX19_2.x
      SHX32_2 = SHX19_2.y
      SHX33_2 = SHX19_2.z
      SHX34_2 = 15.0
      SHX35_2 = 1.0
      SHX36_2 = 1353720154
      SHX37_2 = SHX4_1
      SHX38_2 = 5.0
      SHX39_2 = 0.0
      SHX28_2(SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
      SHX28_2 = SetModelAsNoLongerNeeded
      SHX29_2 = -1760377969
      SHX28_2(SHX29_2)
      SHX28_2 = GetGameTimer
      SHX28_2 = SHX28_2()
      SHX29_2 = GetEntityCoords
      SHX30_2 = SHX8_2
      SHX29_2 = SHX29_2(SHX30_2)
      SHX30_2 = GetEntityCoords
      SHX31_2 = SHX23_2
      SHX30_2 = SHX30_2(SHX31_2)
      SHX29_2 = SHX29_2 - SHX30_2
      SHX29_2 = #SHX29_2
      while SHX29_2 > 15.0 do
        SHX30_2 = GetGameTimer
        SHX30_2 = SHX30_2()
        SHX30_2 = SHX30_2 - SHX28_2
        SHX31_2 = 20000
        if not (SHX30_2 < SHX31_2) then
          break
        end
        SHX30_2 = Wait
        SHX31_2 = 1000
        SHX30_2(SHX31_2)
        SHX30_2 = GetEntityCoords
        SHX31_2 = SHX8_2
        SHX30_2 = SHX30_2(SHX31_2)
        SHX31_2 = GetEntityCoords
        SHX32_2 = SHX23_2
        SHX31_2 = SHX31_2(SHX32_2)
        SHX30_2 = SHX30_2 - SHX31_2
        SHX29_2 = #SHX30_2
      end
      SHX30_2 = TriggerServerEvent
      SHX31_2 = "8e7fb83d26"
      SHX32_2 = SHX0_2
      SHX33_2 = NetworkGetNetworkIdFromEntity
      SHX34_2 = SHX11_2
      SHX33_2 = SHX33_2(SHX34_2)
      SHX34_2 = NetworkGetNetworkIdFromEntity
      SHX35_2 = SHX10_2
      SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2 = SHX34_2(SHX35_2)
      SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2)
      SHX30_2 = CMG
      SHX30_2 = SHX30_2.requestEntitySpawn
      SHX31_2 = "impound_vehicle"
      SHX30_2(SHX31_2)
      SHX30_2 = CMG
      SHX30_2 = SHX30_2.spawnVehicle
      SHX31_2 = SHX3_2
      SHX32_2 = SHX6_2.x
      SHX33_2 = SHX6_2.y
      SHX34_2 = SHX6_2.z
      SHX35_2 = SHX7_2
      SHX36_2 = false
      SHX37_2 = true
      SHX38_2 = false
      SHX30_2 = SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
      SHX8_2 = SHX30_2
      SHX30_2 = CMG
      SHX30_2 = SHX30_2.getNetId
      SHX31_2 = SHX8_2
      SHX32_2 = "CMG:impoundSuccess (2)"
      SHX30_2 = SHX30_2(SHX31_2, SHX32_2)
      SHX0_2 = SHX30_2
      SHX30_2 = SetVehicleDoorsLocked
      SHX31_2 = SHX8_2
      SHX32_2 = 2
      SHX30_2(SHX31_2, SHX32_2)
      SHX30_2 = SetNetworkIdCanMigrate
      SHX31_2 = SHX0_2
      SHX32_2 = false
      SHX30_2(SHX31_2, SHX32_2)
      SHX30_2 = SetVehicleColours
      SHX31_2 = SHX8_2
      SHX32_2 = SHX4_2
      SHX33_2 = SHX5_2
      SHX30_2(SHX31_2, SHX32_2, SHX33_2)
      SHX30_2 = AttachEntityToEntity
      SHX31_2 = SHX8_2
      SHX32_2 = SHX23_2
      SHX33_2 = 20
      SHX34_2 = -0.5
      SHX35_2 = -5.0
      SHX36_2 = 1.0
      SHX37_2 = 0.0
      SHX38_2 = 0.0
      SHX39_2 = 0.0
      SHX40_2 = false
      SHX41_2 = false
      SHX42_2 = false
      SHX43_2 = false
      SHX44_2 = 20
      SHX45_2 = true
      SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2)
      SHX30_2 = TriggerServerEvent
      SHX31_2 = "cd4e53e76b"
      SHX32_2 = SHX0_2
      SHX33_2 = SHX25_2
      SHX34_2 = SHX27_2
      SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2)
      SHX30_2 = TaskVehicleDriveToCoord
      SHX31_2 = SHX24_2
      SHX32_2 = SHX23_2
      SHX33_2 = SHX0_1.driveToPosition
      SHX33_2 = SHX33_2.x
      SHX34_2 = SHX0_1.driveToPosition
      SHX34_2 = SHX34_2.y
      SHX35_2 = SHX0_1.driveToPosition
      SHX35_2 = SHX35_2.z
      SHX36_2 = 15.0
      SHX37_2 = 1.0
      SHX38_2 = 1353720154
      SHX39_2 = SHX4_1
      SHX40_2 = 5.0
      SHX41_2 = 0.0
      SHX30_2(SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2)
      SHX30_2 = SetEntityInvincible
      SHX31_2 = SHX8_2
      SHX32_2 = true
      SHX30_2(SHX31_2, SHX32_2)
      SHX30_2 = SetEntityInvincible
      SHX31_2 = SHX23_2
      SHX32_2 = true
      SHX30_2(SHX31_2, SHX32_2)
    end
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "3cfe51923c"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getObjectId
  SHX3_2 = SHX0_2
  SHX4_2 = "CMG:attachVehToTowCl (vehicle)"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getObjectId
  SHX4_2 = SHX1_2
  SHX5_2 = "CMG:attachVehToTowCl (towTruck)"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX7_2 = 20
  SHX8_2 = -0.5
  SHX9_2 = -5.0
  SHX10_2 = 1.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = 20
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = -1
  SHX2_2 = GetVehicleMaxNumberOfPassengers
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 - 1
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = IsVehicleSeatFree
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if not SHX5_2 then
      SHX5_2 = true
      return SHX5_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX10_1 = CMG
function SHX11_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getVehicleIdFromModel
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX9_1
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.notifyPicture
    SHX7_2 = "polnotification"
    SHX8_2 = "notification"
    SHX9_2 = "The vehicle cannot be impounded with a person inside."
    SHX10_2 = "Metropolitan Police"
    SHX11_2 = "Impound"
    SHX12_2 = nil
    SHX13_2 = nil
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    return
  end
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.getVehicleInfos
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = 0
  end
  SHX7_2 = GetVehicleClass
  SHX8_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = 18 == SHX7_2
  SHX9_2 = SHX0_1.disallowedVehicleClasses
  SHX9_2 = SHX9_2[SHX7_2]
  if SHX9_2 then
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.notifyPicture
    SHX10_2 = "polnotification"
    SHX11_2 = "notification"
    SHX12_2 = "That vehicle is too large to be impounded."
    SHX13_2 = "Metropolitan Police"
    SHX14_2 = "Impound"
    SHX15_2 = nil
    SHX16_2 = nil
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  else
    SHX9_2 = TriggerServerEvent
    SHX10_2 = "0a61d49b9d"
    SHX11_2 = SHX0_2
    SHX12_2 = SHX5_2
    SHX13_2 = SHX2_2
    SHX14_2 = SHX4_2
    SHX15_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX9_2 = RageUI
    SHX9_2 = SHX9_2.Visible
    SHX10_2 = RMenu
    SHX11_2 = SHX10_2
    SHX10_2 = SHX10_2.Get
    SHX12_2 = "cmgimpound"
    SHX13_2 = "reasons"
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX11_2 = true
    SHX9_2(SHX10_2, SHX11_2)
  end
end
SHX10_1.impoundVehicleOptions = SHX11_1
SHX10_1 = RegisterCommand
SHX11_1 = "impound"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "cmgimpound"
    SHX4_2 = "requestvehicle"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX13_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX10_1 = tCMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetVehicleModelNumberOfSeats
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX1_2[SHX7_2] = SHX8_2
  end
  return SHX1_2
end
SHX10_1.getVehicleSeatAmountsFromList = SHX11_1
SHX10_1 = RegisterNetEvent
SHX11_1 = "ddf87b5c68"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetClosestVehicleNodeWithHeading
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX6_2 = nil
  SHX7_2 = 8
  SHX8_2 = 8
  SHX9_2 = 8
  SHX10_2 = 8
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = GetPointOnRoadSide
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = 0.0
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = GetNthClosestVehicleNode
  SHX8_2 = SHX1_2.x
  SHX9_2 = SHX1_2.y
  SHX10_2 = SHX1_2.z
  SHX11_2 = 15
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = vector3
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  if SHX8_2 ~= SHX9_2 then
    SHX9_2 = vector3
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    if SHX6_2 ~= SHX9_2 then
      goto SHX_LABEL_41
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.loadModel
  SHX10_2 = 1353720154
  SHX9_2(SHX10_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.requestEntitySpawn
  SHX10_2 = "impound_request_flatbed"
  SHX11_2 = SHX8_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.spawnVehicle
  SHX10_2 = 1353720154
  SHX11_2 = SHX8_2.x
  SHX12_2 = SHX8_2.y
  SHX13_2 = SHX8_2.z
  SHX14_2 = SHX4_2
  SHX15_2 = false
  SHX16_2 = true
  SHX17_2 = true
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = 1353720154
  SHX10_2(SHX11_2)
  SHX10_2 = SetVehicleDoorsLocked
  SHX11_2 = SHX9_2
  SHX12_2 = 2
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityInvincible
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = AddBlipForEntity
  SHX11_2 = SHX9_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SetBlipSprite
  SHX12_2 = SHX10_2
  SHX13_2 = 68
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetBlipDisplay
  SHX12_2 = SHX10_2
  SHX13_2 = 4
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetBlipScale
  SHX12_2 = SHX10_2
  SHX13_2 = 1.0
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetBlipColour
  SHX12_2 = SHX10_2
  SHX13_2 = 5
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetBlipAsShortRange
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.loadModel
  SHX12_2 = -1760377969
  SHX11_2(SHX12_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.requestEntitySpawn
  SHX12_2 = "impound_request_ped"
  SHX13_2 = SHX8_2
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = CreatePedInsideVehicle
  SHX12_2 = SHX9_2
  SHX13_2 = 1
  SHX14_2 = -1760377969
  SHX15_2 = -1
  SHX16_2 = true
  SHX17_2 = false
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX12_2 = SetModelAsNoLongerNeeded
  SHX13_2 = -1760377969
  SHX12_2(SHX13_2)
  SHX12_2 = SetEntityInvincible
  SHX13_2 = SHX11_2
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.loadModel
  SHX13_2 = SHX0_2
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.requestEntitySpawn
  SHX13_2 = "impound_request_vehicle"
  SHX14_2 = SHX8_2
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.spawnVehicle
  SHX13_2 = SHX0_2
  SHX14_2 = SHX8_2.x
  SHX15_2 = SHX8_2.y
  SHX16_2 = SHX8_2.z
  SHX17_2 = GetEntityHeading
  SHX18_2 = SHX9_2
  SHX17_2 = SHX17_2(SHX18_2)
  SHX18_2 = false
  SHX19_2 = true
  SHX20_2 = false
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX13_2 = SetModelAsNoLongerNeeded
  SHX14_2 = SHX0_2
  SHX13_2(SHX14_2)
  SHX13_2 = AttachEntityToEntity
  SHX14_2 = SHX12_2
  SHX15_2 = SHX9_2
  SHX16_2 = 20
  SHX17_2 = -0.5
  SHX18_2 = -5.0
  SHX19_2 = 1.0
  SHX20_2 = 0.0
  SHX21_2 = 0.0
  SHX22_2 = 0.0
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = false
  SHX27_2 = 20
  SHX28_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX13_2 = SetEntityInvincible
  SHX14_2 = SHX12_2
  SHX15_2 = true
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = TaskVehicleDriveToCoord
  SHX14_2 = SHX11_2
  SHX15_2 = SHX9_2
  SHX16_2 = SHX6_2.x
  SHX17_2 = SHX6_2.y
  SHX18_2 = SHX6_2.z
  SHX19_2 = 15.0
  SHX20_2 = 1.0
  SHX21_2 = 1353720154
  SHX22_2 = SHX4_1
  SHX23_2 = 5.0
  SHX24_2 = 0.0
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX13_2 = GetGameTimer
  SHX13_2 = SHX13_2()
  while true do
    SHX14_2 = GetGameTimer
    SHX14_2 = SHX14_2()
    SHX14_2 = SHX14_2 - SHX13_2
    SHX15_2 = 5000
    if not (SHX14_2 < SHX15_2) then
      break
    end
    SHX14_2 = NetworkGetNetworkIdFromEntity
    SHX15_2 = SHX9_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX15_2 = NetworkGetNetworkIdFromEntity
    SHX16_2 = SHX11_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = NetworkGetNetworkIdFromEntity
    SHX17_2 = SHX12_2
    SHX16_2 = SHX16_2(SHX17_2)
    if 0 ~= SHX14_2 and 0 ~= SHX15_2 and 0 ~= SHX16_2 then
      SHX17_2 = TriggerServerEvent
      SHX18_2 = "6d0044938f"
      SHX19_2 = SHX14_2
      SHX20_2 = SHX15_2
      SHX21_2 = SHX16_2
      SHX22_2 = SHX6_2
      SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      return
    end
    SHX17_2 = Citizen
    SHX17_2 = SHX17_2.Wait
    SHX18_2 = 0
    SHX17_2(SHX18_2)
  end
  SHX14_2 = DeleteEntity
  SHX15_2 = SHX9_2
  SHX14_2(SHX15_2)
  SHX14_2 = DeleteEntity
  SHX15_2 = SHX11_2
  SHX14_2(SHX15_2)
  SHX14_2 = DeleteEntity
  SHX15_2 = SHX12_2
  SHX14_2(SHX15_2)
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "09c0273fe4"
function SHX12_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    if 0 ~= SHX0_3 then
      SHX2_3 = DoesEntityExist
      SHX3_3 = SHX0_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        goto SHX_LABEL_10
      end
    end
    SHX2_3 = false
    return SHX2_3
    -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
    ::SHX_LABEL_10::
    SHX2_3 = NetworkRequestControlOfEntity
    SHX3_3 = SHX0_3
    SHX2_3(SHX3_3)
    SHX2_3 = GetGameTimer
    SHX2_3 = SHX2_3()
    SHX2_3 = SHX2_3 + SHX1_3
    while true do
      SHX3_3 = GetGameTimer
      SHX3_3 = SHX3_3()
      if not (SHX2_3 > SHX3_3) then
        break
      end
      SHX3_3 = NetworkHasControlOfEntity
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        break
      end
      SHX3_3 = NetworkRequestControlOfEntity
      SHX4_3 = SHX0_3
      SHX3_3(SHX4_3)
      SHX3_3 = Citizen
      SHX3_3 = SHX3_3.Wait
      SHX4_3 = 0
      SHX3_3(SHX4_3)
    end
    SHX3_3 = NetworkHasControlOfEntity
    SHX4_3 = SHX0_3
    return SHX3_3(SHX4_3)
  end
  SHX4_2 = 0
  SHX5_2 = NetworkDoesNetworkIdExist
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = NetworkDoesEntityExistWithNetworkId
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetworkGetEntityFromNetworkId
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX4_2 = SHX5_2
    end
  end
  if 0 ~= SHX4_2 then
    SHX5_2 = SHX3_2
    SHX6_2 = SHX4_2
    SHX7_2 = 1500
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = NetworkHasControlOfEntity
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = DetachEntity
      SHX6_2 = SHX4_2
      SHX7_2 = true
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SetEntityCoordsNoOffset
      SHX6_2 = SHX4_2
      SHX7_2 = SHX2_2.x
      SHX8_2 = SHX2_2.y
      SHX9_2 = SHX2_2.z
      SHX10_2 = true
      SHX11_2 = false
      SHX12_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX5_2 = pairs
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getAllVehicles
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2()
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX11_2 = SetEntityNoCollisionEntity
        SHX12_2 = SHX4_2
        SHX13_2 = SHX10_2
        SHX14_2 = false
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      end
      SHX5_2 = Wait
      SHX6_2 = 2000
      SHX5_2(SHX6_2)
      SHX5_2 = pairs
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getAllVehicles
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX6_2()
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
        SHX11_2 = SetEntityNoCollisionEntity
        SHX12_2 = SHX4_2
        SHX13_2 = SHX10_2
        SHX14_2 = true
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      end
      SHX5_2 = SetVehicleFixed
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
  SHX5_2 = NetworkDoesNetworkIdExist
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = NetworkDoesEntityExistWithNetworkId
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetworkGetEntityFromNetworkId
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      if 0 ~= SHX5_2 then
        SHX6_2 = SHX3_2
        SHX7_2 = SHX5_2
        SHX8_2 = 800
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = NetworkHasControlOfEntity
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = GetVehiclePedIsUsing
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if 0 ~= SHX6_2 then
            SHX7_2 = TaskVehicleDriveWander
            SHX8_2 = SHX5_2
            SHX9_2 = SHX6_2
            SHX10_2 = 15.0
            SHX11_2 = 786603
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          end
        end
      end
    end
  end
end
SHX10_1(SHX11_1, SHX12_1)
