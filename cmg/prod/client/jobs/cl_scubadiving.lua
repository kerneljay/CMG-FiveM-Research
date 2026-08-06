-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_scubadiving"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = ""
SHX5_1 = 0
SHX6_1 = nil
SHX7_1 = false
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "scubadiving"
SHX10_1 = "main"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = ""
SHX13_1 = ""
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1 = SHX15_1()
SHX16_1 = "cmg_scubajob"
SHX17_1 = "cmg_scubajob"
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "scubadiving"
SHX11_1 = "main"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.SetSubtitle
SHX10_1 = "~b~Scuba Diving"
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
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
  SHX3_2 = "scubadiving"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX9_1()
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
  SHX3_2 = "scubadiving"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX10_1 = AddEventHandler
SHX11_1 = "CMG:onClientSpawn"
function SHX12_1(SHX0_2, SHX1_2)
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
    SHX3_2 = SHX0_1.jobPedModel
    SHX4_2 = SHX0_1.jobPedPosition
    SHX5_2 = SHX0_1.jobPedHeading
    SHX6_2 = true
    SHX7_2 = "mini@strip_club@idles@bouncer@base"
    SHX8_2 = "base"
    SHX9_2 = 100
    SHX10_2 = false
    function SHX11_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX1_3 = math
      SHX1_3 = SHX1_3.random
      SHX2_3 = 1
      SHX3_3 = 15
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 11
      SHX5_3 = 243
      SHX6_3 = SHX1_3
      SHX7_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 3
      SHX5_3 = 123
      SHX6_3 = 0
      SHX7_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 4
      SHX5_3 = 94
      SHX6_3 = SHX1_3
      SHX7_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 6
      SHX5_3 = 67
      SHX6_3 = 1
      SHX7_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 7
      SHX5_3 = 40
      SHX6_3 = 1
      SHX7_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedComponentVariation
      SHX3_3 = SHX0_3
      SHX4_3 = 8
      SHX5_3 = 15
      SHX6_3 = 0
      SHX7_3 = 1
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX2_3 = SetPedScubaGearVariation
      SHX3_3 = SHX0_3
      SHX2_3(SHX3_3)
    end
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addBlip
    SHX3_2 = SHX0_1.jobPosition
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX0_1.jobPosition
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX0_1.jobPosition
    SHX5_2 = SHX5_2.z
    SHX6_2 = 308
    SHX7_2 = 0
    SHX8_2 = "Scuba Diving"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addMarker
    SHX3_2 = SHX0_1.jobPosition
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX0_1.jobPosition
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX0_1.jobPosition
    SHX5_2 = SHX5_2.z
    SHX5_2 = SHX5_2 - 0.2
    SHX6_2 = 0.5
    SHX7_2 = 0.5
    SHX8_2 = 0.5
    SHX9_2 = 0
    SHX10_2 = 50
    SHX11_2 = 255
    SHX12_2 = 170
    SHX13_2 = 50
    SHX14_2 = 20
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    function SHX2_2()
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
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX9_1
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
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "scubajob"
    SHX7_2 = SHX0_1.jobPosition
    SHX8_2 = 1.5
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = RageUI
SHX10_1 = SHX10_1.CreateWhile
SHX11_1 = 1.0
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "scubadiving"
SHX15_1 = "main"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = nil
function SHX14_1()
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
  SHX3_2 = "scubadiving"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Request Job"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX3_1
        if not SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "72d27dd1d1"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX2_1
    if 0 ~= SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Claim Reward"
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
          SHX4_4 = "e370842c85"
          SHX3_4(SHX4_4)
          SHX3_4 = 0
          SHX2_1 = SHX3_4
          SHX3_4 = false
          SHX3_1 = SHX3_4
          SHX3_4 = false
          SHX7_1 = SHX3_4
          SHX3_4 = DoesEntityExist
          SHX4_4 = SHX5_1
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX3_4 = DeleteVehicle
            SHX4_4 = SHX5_1
            SHX3_4(SHX4_4)
          end
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.setCustomization
          SHX4_4 = SHX6_1
          SHX3_4(SHX4_4)
          SHX3_4 = PlayerPedId
          SHX3_4 = SHX3_4()
          SHX4_4 = SetEnableScuba
          SHX5_4 = SHX3_4
          SHX6_4 = false
          SHX4_4(SHX5_4, SHX6_4)
          SHX4_4 = SetPedMaxTimeUnderwater
          SHX5_4 = SHX3_4
          SHX6_4 = 10.0
          SHX4_4(SHX5_4, SHX6_4)
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
end
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeMarker
    SHX7_2 = SHX5_2.objectMarker
    SHX6_2(SHX7_2)
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeArea
    SHX7_2 = SHX5_2.objectArea
    SHX6_2(SHX7_2)
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2.objectId
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2.objectId
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX1_1 = SHX0_2
end
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.InvokeNative
  SHX3_2 = 6304891098843168073
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "missheistchem2"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = NetworkGetNetworkIdFromEntity
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SetBoatAnchor
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX11_1
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetVehicleEngineOn
  SHX6_2 = SHX2_2
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = ClearPedTasksImmediately
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = CreateSynchronizedScene
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = TaskSynchronizedScene
  SHX7_2 = SHX1_2
  SHX8_2 = SHX5_2
  SHX9_2 = "missheistchem2"
  SHX10_2 = "Boat_Dive_Enter_Player"
  SHX11_2 = 1000.0
  SHX12_2 = -8.0
  SHX13_2 = 4
  SHX14_2 = 0
  SHX15_2 = 1148846080
  SHX16_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX6_2 = AttachSynchronizedSceneToEntity
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2
  SHX9_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = StartAudioScene
  SHX7_2 = "FBI_5_DIVE_IN_SYNC_SCENE"
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = IsSynchronizedSceneRunning
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      break
    end
    SHX6_2 = GetSynchronizedScenePhase
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not (SHX6_2 < 1.0) then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = CreateSynchronizedScene
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = TaskSynchronizedScene
  SHX8_2 = SHX1_2
  SHX9_2 = SHX6_2
  SHX10_2 = "missheistchem2"
  SHX11_2 = "Boat_Dive_Idle_Player"
  SHX12_2 = 8.0
  SHX13_2 = -8.0
  SHX14_2 = 4
  SHX15_2 = 0
  SHX16_2 = 8.0
  SHX17_2 = 1024
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX7_2 = AttachSynchronizedSceneToEntity
  SHX8_2 = SHX6_2
  SHX9_2 = SHX2_2
  SHX10_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetSynchronizedSceneLooped
  SHX8_2 = SHX6_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerCoords
  SHX7_2 = SHX7_2()
  SHX7_2 = #SHX7_2
  if SHX7_2 < 10.0 then
    SHX7_2 = SetEntityCoords
    SHX8_2 = SHX1_2
    SHX9_2 = SHX0_2.x
    SHX10_2 = SHX0_2.y
    SHX11_2 = SHX0_2.z
    SHX12_2 = true
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX7_2 = false
  SHX8_2 = SetPedScubaGearVariation
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX9_2()
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX8_2 = drawNativeNotification
  SHX9_2 = "Press ~INPUT_PICKUP~ to start Scuba Diving."
  SHX8_2(SHX9_2)
  while not SHX7_2 do
    SHX8_2 = IsControlJustReleased
    SHX9_2 = 1
    SHX10_2 = 38
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SetPlayerControl
  SHX9_2 = PlayerId
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX11_2 = 256
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = CreateSynchronizedScene
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX6_2 = SHX8_2
  SHX8_2 = TaskSynchronizedScene
  SHX9_2 = PlayerPedId
  SHX9_2 = SHX9_2()
  SHX10_2 = SHX6_2
  SHX11_2 = "missheistchem2"
  SHX12_2 = "Boat_Dive_Exit_Player"
  SHX13_2 = 1000.0
  SHX14_2 = -8.0
  SHX15_2 = 4
  SHX16_2 = 0
  SHX17_2 = 1148846080
  SHX18_2 = 0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX8_2 = AttachSynchronizedSceneToEntity
  SHX9_2 = SHX6_2
  SHX10_2 = SHX2_2
  SHX11_2 = 0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerCoords
  SHX12_2 = SHX12_2()
  SHX12_2 = #SHX12_2
  if SHX12_2 < 10.0 then
    SHX12_2 = SetEntityCoords
    SHX13_2 = SHX1_2
    SHX14_2 = SHX0_2.x
    SHX15_2 = SHX0_2.y
    SHX16_2 = SHX0_2.z
    SHX17_2 = true
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
  SHX12_2 = SetEnableScuba
  SHX13_2 = SHX1_2
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = SetPedMaxTimeUnderwater
  SHX13_2 = SHX1_2
  SHX14_2 = 400.0
  SHX12_2(SHX13_2, SHX14_2)
  while true do
    SHX12_2 = IsSynchronizedSceneRunning
    SHX13_2 = SHX6_2
    SHX12_2 = SHX12_2(SHX13_2)
    if not SHX12_2 then
      break
    end
    SHX12_2 = GetGameTimer
    SHX12_2 = SHX12_2()
    SHX12_2 = SHX12_2 - SHX8_2
    SHX13_2 = 20000
    if not (SHX12_2 < SHX13_2) then
      break
    end
    SHX12_2 = GetSynchronizedScenePhase
    SHX13_2 = SHX6_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = 0.147
    if SHX12_2 > SHX13_2 and not SHX9_2 then
      SHX12_2 = CMG
      SHX12_2 = SHX12_2.loadPtfx
      SHX13_2 = "scr_fbi5a"
      SHX12_2(SHX13_2)
      SHX12_2 = StartParticleFxNonLoopedOnEntity
      SHX13_2 = "scr_fbi5_ped_water_splash"
      SHX14_2 = PlayerPedId
      SHX14_2 = SHX14_2()
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 0.0
      SHX21_2 = 1065353216
      SHX22_2 = false
      SHX23_2 = false
      SHX24_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = RemoveNamedPtfxAsset
      SHX13_2 = "scr_fbi5a"
      SHX12_2(SHX13_2)
      SHX9_2 = true
    end
    SHX12_2 = GetSynchronizedScenePhase
    SHX13_2 = SHX6_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = 0.48
    if SHX12_2 > SHX13_2 and not SHX10_2 then
      SHX12_2 = CMG
      SHX12_2 = SHX12_2.loadPtfx
      SHX13_2 = "scr_fbi5a"
      SHX12_2(SHX13_2)
      SHX12_2 = StartParticleFxNonLoopedOnEntity
      SHX13_2 = "water_splash_ped_bubbles"
      SHX14_2 = PlayerPedId
      SHX14_2 = SHX14_2()
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 0.0
      SHX21_2 = 1065353216
      SHX22_2 = false
      SHX23_2 = false
      SHX24_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX10_2 = true
      SHX12_2 = DetachEntity
      SHX13_2 = PlayerPedId
      SHX13_2 = SHX13_2()
      SHX14_2 = false
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = RemoveNamedPtfxAsset
      SHX13_2 = "scr_fbi5a"
      SHX12_2(SHX13_2)
    end
    SHX12_2 = GetSynchronizedScenePhase
    SHX13_2 = SHX6_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = 0.65
    if SHX12_2 > SHX13_2 and not SHX11_2 then
      SHX11_2 = true
      SHX12_2 = DetachEntity
      SHX13_2 = PlayerPedId
      SHX13_2 = SHX13_2()
      SHX14_2 = false
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = TaskPlayAnim
      SHX13_2 = PlayerPedId
      SHX13_2 = SHX13_2()
      SHX14_2 = "SWIMMING@scuba"
      SHX15_2 = "dive_run"
      SHX16_2 = 4.0
      SHX17_2 = -1.5
      SHX18_2 = 1000
      SHX19_2 = 131081
      SHX20_2 = 0
      SHX21_2 = false
      SHX22_2 = false
      SHX23_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX12_2 = TaskForceMotionState
      SHX13_2 = PlayerPedId
      SHX13_2 = SHX13_2()
      SHX14_2 = -1855028596
      SHX15_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      SHX12_2 = TaskGoStraightToCoord
      SHX13_2 = PlayerPedId
      SHX13_2 = SHX13_2()
      SHX14_2 = SHX4_2.x
      SHX15_2 = SHX4_2.y
      SHX16_2 = SHX4_2.z
      SHX16_2 = SHX16_2 - 5.0
      SHX17_2 = -7.5
      SHX18_2 = 2
      SHX19_2 = -1
      SHX20_2 = 1193033728
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX12_2 = SetPlayerControl
      SHX13_2 = PlayerId
      SHX13_2 = SHX13_2()
      SHX14_2 = true
      SHX15_2 = 256
      SHX12_2(SHX13_2, SHX14_2, SHX15_2)
    end
    SHX12_2 = Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX12_2 = RemoveAnimDict
  SHX13_2 = "missheistchem2"
  SHX12_2(SHX13_2)
  SHX12_2 = DisposeSynchronizedScene
  SHX13_2 = SHX6_2
  SHX12_2(SHX13_2)
  SHX12_2 = ClearPedTasksImmediately
  SHX13_2 = SHX1_2
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerCoords
  SHX12_2 = SHX12_2()
  SHX12_2 = #SHX12_2
  if SHX12_2 < 10.0 then
    SHX12_2 = SetEntityCoords
    SHX13_2 = SHX1_2
    SHX14_2 = SHX0_2.x
    SHX15_2 = SHX0_2.y
    SHX16_2 = SHX0_2.z
    SHX17_2 = true
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
  SHX12_2 = false
  while true do
    SHX13_2 = GetVehiclePedIsIn
    SHX14_2 = PlayerPedId
    SHX14_2 = SHX14_2()
    SHX15_2 = false
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    if SHX13_2 == SHX2_2 then
      break
    end
    SHX13_2 = DoesEntityExist
    SHX14_2 = SHX2_2
    SHX13_2 = SHX13_2(SHX14_2)
    if not SHX13_2 then
      if not SHX12_2 then
        SHX13_2 = print
        SHX14_2 = "[Scuba] Boat has left scope. Previous Entity:"
        SHX15_2 = SHX2_2
        SHX16_2 = "NetID:"
        SHX17_2 = SHX3_2
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX12_2 = true
      end
      SHX13_2 = NetworkDoesEntityExistWithNetworkId
      SHX14_2 = SHX3_2
      SHX13_2 = SHX13_2(SHX14_2)
      if SHX13_2 then
        SHX13_2 = NetworkGetEntityFromNetworkId
        SHX14_2 = SHX3_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX2_2 = SHX13_2
        SHX14_2 = print
        SHX15_2 = "[Scuba] Boat has come back in to scope. Entity:"
        SHX16_2 = SHX2_2
        SHX17_2 = "NetID:"
        SHX18_2 = SHX3_2
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX12_2 = false
      end
    end
    SHX13_2 = Wait
    SHX14_2 = 250
    SHX13_2(SHX14_2)
  end
  SHX13_2 = SetBoatAnchor
  SHX14_2 = SHX2_2
  SHX15_2 = false
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SHX11_1
  SHX14_2 = SHX2_2
  SHX15_2 = false
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = tCMG
  SHX13_2 = SHX13_2.notify
  SHX14_2 = "~g~Scuba Diving job ended, return to HQ to get paid!"
  SHX13_2(SHX14_2)
  SHX13_2 = SetNewWaypoint
  SHX14_2 = -2195.6926269531
  SHX15_2 = -394.82040405273
  SHX13_2(SHX14_2, SHX15_2)
  SHX13_2 = SHX10_1
  SHX13_2()
  SHX13_2 = SHX2_1
  if SHX13_2 > 6 then
    SHX13_2 = 6
    SHX2_1 = SHX13_2
  end
  SHX13_2 = TriggerServerEvent
  SHX14_2 = "64b26a9931"
  SHX15_2 = SHX2_1
  SHX13_2(SHX14_2, SHX15_2)
end
SHX13_1 = {}
SHX14_1 = 2
SHX15_1 = 160
SHX16_1 = 161
SHX17_1 = 163
SHX18_1 = 167
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
SHX13_1[5] = SHX18_1
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.rewardObjects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadModel
    SHX8_2 = SHX6_2.objectModel
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = CreateObject
    SHX9_2 = SHX7_2
    SHX10_2 = SHX6_2.objectPosition
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX6_2.objectPosition
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX6_2.objectPosition
    SHX12_2 = SHX12_2.z
    SHX13_2 = false
    SHX14_2 = true
    SHX15_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX9_2 = SetModelAsNoLongerNeeded
    SHX10_2 = SHX7_2
    SHX9_2(SHX10_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addMarker
    SHX10_2 = SHX6_2.objectPosition
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX6_2.objectPosition
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX6_2.objectPosition
    SHX12_2 = SHX12_2.z
    SHX12_2 = SHX12_2 + 0.6
    SHX13_2 = 0.5
    SHX14_2 = 0.5
    SHX15_2 = 0.5
    SHX16_2 = 255
    SHX17_2 = 223
    SHX18_2 = 0
    SHX19_2 = 150
    SHX20_2 = 50.0
    SHX21_2 = 0
    SHX22_2 = false
    SHX23_2 = true
    SHX24_2 = true
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    function SHX10_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to collect!"
      SHX0_3(SHX1_3)
    end
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX12_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = IsControlJustReleased
      SHX2_3 = 1
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX3_1
        if SHX1_3 then
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.notify
          SHX2_3 = "~g~Item collected."
          SHX1_3(SHX2_3)
          SHX1_3 = SHX2_1
          SHX1_3 = SHX1_3 + 1
          SHX2_1 = SHX1_3
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.removeMarker
          SHX3_3 = SHX0_3.objectId
          SHX2_3 = SHX1_1
          SHX2_3 = SHX2_3[SHX3_3]
          SHX2_3 = SHX2_3.objectMarker
          SHX1_3(SHX2_3)
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.removeArea
          SHX3_3 = SHX0_3.objectId
          SHX2_3 = SHX1_1
          SHX2_3 = SHX2_3[SHX3_3]
          SHX2_3 = SHX2_3.objectArea
          SHX1_3(SHX2_3)
          SHX1_3 = DeleteEntity
          SHX3_3 = SHX0_3.objectId
          SHX2_3 = SHX1_1
          SHX2_3 = SHX2_3[SHX3_3]
          SHX2_3 = SHX2_3.objectId
          SHX1_3(SHX2_3)
          SHX2_3 = SHX0_3.objectId
          SHX1_3 = SHX1_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3.objectMarker = nil
          SHX2_3 = SHX0_3.objectId
          SHX1_3 = SHX1_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3.objectArea = nil
          SHX2_3 = SHX0_3.objectId
          SHX1_3 = SHX1_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3.objectId = nil
        end
      end
    end
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.createArea
    SHX14_2 = "scubajob_"
    SHX15_2 = SHX0_2.name
    SHX16_2 = "_obj_"
    SHX17_2 = SHX5_2
    SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2
    SHX15_2 = SHX6_2.objectPosition
    SHX16_2 = 3.0
    SHX17_2 = 3.0
    SHX18_2 = SHX10_2
    SHX19_2 = SHX11_2
    SHX20_2 = SHX12_2
    SHX21_2 = {}
    SHX21_2.objectId = SHX5_2
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX13_2 = SHX1_1
    SHX14_2 = {}
    SHX13_2[SHX5_2] = SHX14_2
    SHX13_2 = SHX1_1
    SHX13_2 = SHX13_2[SHX5_2]
    SHX13_2.objectId = SHX8_2
    SHX13_2 = SHX1_1
    SHX13_2 = SHX13_2[SHX5_2]
    SHX13_2.objectMarker = SHX9_2
    SHX13_2 = SHX1_1
    SHX13_2 = SHX13_2[SHX5_2]
    SHX14_2 = "scubajob_"
    SHX15_2 = SHX0_2.name
    SHX16_2 = "_obj_"
    SHX17_2 = SHX5_2
    SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2
    SHX13_2.objectArea = SHX14_2
  end
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "82c23c96fb"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = true
  SHX3_1 = SHX1_2
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 600
  SHX1_2(SHX2_2)
  SHX1_2 = AddBlipForRadius
  SHX2_2 = SHX0_2.position
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.z
  SHX5_2 = 250.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetBlipColour
  SHX3_2 = SHX1_2
  SHX4_2 = 30
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipAlpha
  SHX3_2 = SHX1_2
  SHX4_2 = 180
  SHX2_2(SHX3_2, SHX4_2)
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_DETONATE~ to begin diving!"
    SHX0_3(SHX1_3)
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = IsControlJustReleased
    SHX1_3 = 1
    SHX2_3 = 47
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if not SHX0_3 then
      return
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerPed
    SHX0_3 = SHX0_3()
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerVehicle
    SHX1_3 = SHX1_3()
    if 0 ~= SHX1_3 then
      SHX2_3 = DoesEntityExist
      SHX3_3 = SHX1_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        goto SHX_LABEL_26
      end
    end
    SHX2_3 = tCMG
    SHX2_3 = SHX2_3.notify
    SHX3_3 = "~r~You must be in a boat to start scuba diving!"
    SHX2_3(SHX3_3)
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
    ::SHX_LABEL_26::
    SHX2_3 = GetEntityModel
    SHX3_3 = SHX1_3
    SHX2_3 = SHX2_3(SHX3_3)
    if 1033245328 ~= SHX2_3 then
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.notify
      SHX3_3 = "~r~You must be in a dinghy to start scuba diving!"
      SHX2_3(SHX3_3)
      return
    end
    SHX2_3 = GetPedInVehicleSeat
    SHX3_3 = SHX1_3
    SHX4_3 = -1
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    if SHX2_3 ~= SHX0_3 then
      SHX2_3 = tCMG
      SHX2_3 = SHX2_3.notify
      SHX3_3 = "~r~You must be in the driver seat of the dinghy to start scuba diving!"
      SHX2_3(SHX3_3)
      return
    end
    SHX2_3 = pairs
    SHX3_3 = SHX13_1
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = GetIsTaskActive
      SHX9_3 = SHX0_3
      SHX10_3 = SHX7_3
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
      if SHX8_3 then
        SHX8_3 = tCMG
        SHX8_3 = SHX8_3.notify
        SHX9_3 = "~r~You must be stationary in the driver seat to start scuba diving!"
        SHX8_3(SHX9_3)
        return
      end
    end
    SHX2_3 = TriggerServerEvent
    SHX3_3 = "15464d9482"
    SHX2_3(SHX3_3)
    SHX2_3 = tCMG
    SHX2_3 = SHX2_3.removeArea
    SHX3_3 = "scubajob_"
    SHX4_3 = SHX0_2.name
    SHX3_3 = SHX3_3 .. SHX4_3
    SHX2_3(SHX3_3)
    SHX2_3 = "~y~Search for treasures and return to your boat when finished"
    SHX4_1 = SHX2_3
    SHX2_3 = SHX14_1
    SHX3_3 = SHX0_2
    SHX2_3(SHX3_3)
    SHX2_3 = CreateThread
    SHX3_3 = SHX12_1
    SHX2_3(SHX3_3)
  end
  SHX5_2 = SetWaypointOff
  SHX5_2()
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.addBlip
  SHX6_2 = SHX0_2.position
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX0_2.position
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX0_2.position
  SHX8_2 = SHX8_2.z
  SHX9_2 = SHX0_2.blipId
  SHX10_2 = SHX0_2.blipColour
  SHX11_2 = "Scuba Diving"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = SetNewWaypoint
  SHX7_2 = SHX0_2.position
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX0_2.position
  SHX8_2 = SHX8_2.y
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createArea
  SHX7_2 = "scubajob_"
  SHX8_2 = SHX0_2.name
  SHX7_2 = SHX7_2 .. SHX8_2
  SHX8_2 = SHX0_2.position
  SHX9_2 = 250
  SHX10_2 = 15
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = {}
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.getCustomization
  SHX6_2 = SHX6_2()
  SHX6_1 = SHX6_2
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.setCustomization
  SHX7_2 = {}
  SHX7_2.modelhash = 1885233650
  SHX6_2(SHX7_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.random
  SHX7_2 = 1
  SHX8_2 = 15
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 11
  SHX10_2 = 243
  SHX11_2 = SHX6_2
  SHX12_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 3
  SHX10_2 = 123
  SHX11_2 = 0
  SHX12_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 4
  SHX10_2 = 94
  SHX11_2 = SHX6_2
  SHX12_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 6
  SHX10_2 = 67
  SHX11_2 = 1
  SHX12_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 7
  SHX10_2 = 40
  SHX11_2 = 1
  SHX12_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedComponentVariation
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = 8
  SHX10_2 = 15
  SHX11_2 = 0
  SHX12_2 = 1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetPedScubaGearVariation
  SHX8_2 = PlayerPedId
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX8_2()
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX7_2 = Wait
  SHX8_2 = 0
  SHX7_2(SHX8_2)
  SHX7_2 = math
  SHX7_2 = SHX7_2.random
  SHX8_2 = SHX0_2.dinghySpawnPositions
  SHX8_2 = #SHX8_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX0_2.dinghySpawnPositions
  SHX8_2 = SHX8_2[SHX7_2]
  SHX9_2 = SetEntityCoords
  SHX10_2 = PlayerPedId
  SHX10_2 = SHX10_2()
  SHX11_2 = SHX8_2.x
  SHX12_2 = SHX8_2.y
  SHX13_2 = SHX8_2.z
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.requestEntitySpawn
  SHX10_2 = "scubajob"
  SHX11_2 = SHX0_2.dinghySpawnPositions
  SHX11_2 = SHX11_2[SHX7_2]
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.spawnVehicle
  SHX10_2 = 1033245328
  SHX11_2 = SHX0_2.dinghySpawnPositions
  SHX11_2 = SHX11_2[SHX7_2]
  SHX11_2 = SHX11_2.x
  SHX12_2 = SHX0_2.dinghySpawnPositions
  SHX12_2 = SHX12_2[SHX7_2]
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX0_2.dinghySpawnPositions
  SHX13_2 = SHX13_2[SHX7_2]
  SHX13_2 = SHX13_2.z
  SHX14_2 = SHX0_2.dinghySpawnHeading
  SHX15_2 = true
  SHX16_2 = true
  SHX17_2 = true
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX5_1 = SHX9_2
  SHX9_2 = AddBlipForEntity
  SHX10_2 = SHX5_1
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = SetBlipSprite
  SHX11_2 = SHX9_2
  SHX12_2 = 427
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlipDisplay
  SHX11_2 = SHX9_2
  SHX12_2 = 4
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlipScale
  SHX11_2 = SHX9_2
  SHX12_2 = 1.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlipColour
  SHX11_2 = SHX9_2
  SHX12_2 = 2
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlipAsShortRange
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = BeginTextCommandSetBlipName
  SHX11_2 = "STRING"
  SHX10_2(SHX11_2)
  SHX10_2 = AddTextComponentSubstringPlayerName
  SHX11_2 = "Scuba Dinghy"
  SHX10_2(SHX11_2)
  SHX10_2 = EndTextCommandSetBlipName
  SHX11_2 = SHX9_2
  SHX10_2(SHX11_2)
  SHX10_2 = Wait
  SHX11_2 = 2000
  SHX10_2(SHX11_2)
  SHX10_2 = NetworkGetNetworkIdFromEntity
  SHX11_2 = SHX5_1
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = TriggerServerEvent
  SHX12_2 = "78dddcfb46"
  SHX13_2 = SHX10_2
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = DoScreenFadeIn
  SHX12_2 = 2000
  SHX11_2(SHX12_2)
  SHX11_2 = SetPedScubaGearVariation
  SHX12_2 = PlayerPedId
  SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX12_2()
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.CreateThread
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX3_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX7_1
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.drawPlaneScaleForm
        SHX1_3 = "~r~MISSION FAILED"
        SHX2_3 = "Your boat has been destroyed, go get a new one!"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SHX3_1
        if SHX0_3 then
          SHX0_3 = SHX7_1
          if SHX0_3 then
            goto SHX_LABEL_19
          end
        end
        return
        -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
        ::SHX_LABEL_19::
        SHX0_3 = SetWaypointOff
        SHX0_3()
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "64b26a9931"
        SHX2_3 = 0
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "e370842c85"
        SHX0_3(SHX1_3)
        SHX0_3 = 0
        SHX2_1 = SHX0_3
        SHX0_3 = false
        SHX3_1 = SHX0_3
        SHX0_3 = false
        SHX7_1 = SHX0_3
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.setCustomization
        SHX1_3 = SHX6_1
        SHX0_3(SHX1_3)
        SHX0_3 = PlayerPedId
        SHX0_3 = SHX0_3()
        SHX1_3 = SetEnableScuba
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetPedMaxTimeUnderwater
        SHX2_3 = SHX0_3
        SHX3_3 = 10.0
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SHX10_1
        SHX1_3()
        break
      end
      SHX0_3 = Wait
      SHX1_3 = 250
      SHX0_3(SHX1_3)
    end
  end
  SHX11_2(SHX12_2)
  SHX11_2 = "~y~Head to the diving location: "
  SHX12_2 = SHX0_2.name
  SHX11_2 = SHX11_2 .. SHX12_2
  SHX4_1 = SHX11_2
  while true do
    SHX11_2 = SHX3_1
    if not SHX11_2 then
      break
    end
    SHX11_2 = drawNativeText
    SHX12_2 = SHX4_1
    SHX11_2(SHX12_2)
    SHX11_2 = Wait
    SHX12_2 = 0
    SHX11_2(SHX12_2)
  end
  SHX11_2 = tCMG
  SHX11_2 = SHX11_2.removeBlip
  SHX12_2 = SHX5_2
  SHX11_2(SHX12_2)
  SHX11_2 = RemoveBlip
  SHX12_2 = SHX1_2
  SHX11_2(SHX12_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX15_1.isScubaJobInProgress = SHX16_1
