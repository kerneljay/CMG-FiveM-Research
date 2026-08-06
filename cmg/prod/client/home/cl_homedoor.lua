-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/homes"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.showAllDisplays
    SHX1_2 = "peephole"
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setHomeExitForcesOpenMenu
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SetCamActive
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = nil
    SHX2_1 = SHX0_2
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "536b0723e3"
      SHX2_2 = SHX1_1
      SHX0_2(SHX1_2, SHX2_2)
    end
    SHX0_2 = false
    SHX3_1 = SHX0_2
  end
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = assert
  SHX1_2 = SHX1_1
  SHX2_2 = "Peephole heading is required to enter camera"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isInHouse
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = SHX0_1.homes
  SHX2_2 = SHX2_2[SHX1_2]
  SHX2_2 = SHX2_2.entry_point
  SHX3_2 = CreateCamWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = SHX2_2[1]
  SHX6_2 = SHX2_2[2]
  SHX7_2 = SHX2_2[3]
  SHX7_2 = SHX7_2 + 0.5
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = SHX1_1
  SHX11_2 = 165.0
  SHX12_2 = true
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_1 = SHX3_2
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = false
  SHX6_2 = 0
  SHX7_2 = false
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hideAllDisplays
  SHX4_2 = "peephole"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setHomeExitForcesOpenMenu
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.CloseAll
  SHX3_2()
  while true do
    SHX3_2 = SHX2_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = DisableAllControlActions
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = IsDisabledControlJustReleased
    SHX4_2 = 0
    SHX5_2 = 202
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = SHX4_1
      SHX3_2()
    end
    SHX3_2 = SHX3_1
    if SHX3_2 then
      SHX3_2 = GetDisabledControlNormal
      SHX4_2 = 0
      SHX5_2 = 1
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = SHX1_1
      SHX5_2 = GetFrameTime
      SHX5_2 = SHX5_2()
      SHX5_2 = SHX5_2 * SHX3_2
      SHX5_2 = SHX5_2 * -150.0
      SHX4_2 = SHX4_2 + SHX5_2
      SHX1_1 = SHX4_2
      SHX4_2 = SHX1_1
      SHX5_2 = 360.0
      if SHX4_2 > SHX5_2 then
        SHX4_2 = 0.0
        SHX1_1 = SHX4_2
      else
        SHX4_2 = SHX1_1
        if SHX4_2 < 0.0 then
          SHX4_2 = 360.0
          SHX1_1 = SHX4_2
        end
      end
      SHX4_2 = SetCamRot
      SHX5_2 = SHX2_1
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = SHX1_1
      SHX9_2 = 2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.registerHomeCustomisationButtons
SHX7_1 = "Door Peephole"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Allows you to view through your door"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~This can be accessed by the exit"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.ButtonWithStyle
    SHX1_2 = "Edit Rotation"
    SHX2_2 = ""
    SHX3_2 = {}
    SHX3_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_2 = true
    function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3
      if SHX2_3 then
        SHX3_3 = true
        SHX3_1 = SHX3_3
        SHX3_3 = Citizen
        SHX3_3 = SHX3_3.CreateThread
        SHX4_3 = SHX5_1
        SHX3_3(SHX4_3)
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.ButtonWithStyle
    SHX1_2 = "Purchase"
    SHX2_2 = ""
    SHX3_2 = {}
    SHX3_2.RightLabel = "\194\16350,000"
    SHX4_2 = true
    function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3
      if SHX2_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "12558d4fd3"
        SHX3_3(SHX4_3)
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "View Peephole"
  SHX2_2 = nil
  SHX3_2 = {}
  SHX3_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX2_1
      if not SHX3_3 then
        SHX3_3 = Citizen
        SHX3_3 = SHX3_3.CreateThread
        SHX4_3 = SHX5_1
        SHX3_3(SHX4_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX7_1 = RegisterNetEvent
SHX8_1 = "65628adf18"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.registerHomeExitButtons
  SHX2_2 = "peephole"
  SHX3_2 = SHX6_1
  SHX1_2(SHX2_2, SHX3_2)
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "97c2f3afb4"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.unregisterHomeExitButtons
  SHX1_2 = "peephole"
  SHX0_2(SHX1_2)
end
SHX7_1(SHX8_1, SHX9_1)
