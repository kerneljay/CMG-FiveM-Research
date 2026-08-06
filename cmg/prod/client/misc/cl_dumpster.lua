-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_dumpster"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientJob
  SHX1_2 = SHX1_2()
  if "Garbage" == SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getTunableValue
  SHX2_2 = "dumpster_enabled"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX1_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerVehicle
      SHX1_2 = SHX1_2()
      if 0 == SHX1_2 then
        SHX1_2 = drawNativeNotification
        SHX2_2 = "Press ~INPUT_CONTEXT~ to search the dumpster"
        SHX1_2(SHX2_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 0
        SHX3_2 = 51
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "211845115e"
          SHX3_2 = SHX0_2.index
          SHX1_2(SHX2_2, SHX3_2)
          SHX1_2 = true
          SHX1_1 = SHX1_2
        end
      end
    end
  end
end
SHX3_1 = pairs
SHX4_1 = SHX0_1.objects
SHX3_1, SHX4_1, SHX5_1, SHX6_1 = SHX3_1(SHX4_1)
for SHX7_1, SHX8_1 in SHX3_1, SHX4_1, SHX5_1, SHX6_1 do
  SHX9_1 = CMG
  SHX9_1 = SHX9_1.createArea
  SHX10_1 = "dumpster_"
  SHX11_1 = tostring
  SHX12_1 = SHX7_1
  SHX11_1 = SHX11_1(SHX12_1)
  SHX10_1 = SHX10_1 .. SHX11_1
  SHX11_1 = SHX8_1[2]
  SHX12_1 = 2.0
  SHX13_1 = 5.0
  function SHX14_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  function SHX15_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX16_1 = SHX2_1
  SHX17_1 = {}
  SHX17_1.index = SHX7_1
  SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
end
SHX3_1 = RegisterNetEvent
SHX4_1 = "222d547efd"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.setCanAnim
    SHX2_2 = false
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadAnimDict
    SHX2_2 = "amb@prop_human_bum_bin@base"
    SHX1_2(SHX2_2)
    SHX1_2 = TaskPlayAnim
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = "amb@prop_human_bum_bin@base"
    SHX4_2 = "base"
    SHX5_2 = 8.0
    SHX6_2 = 8.0
    SHX7_2 = 5000
    SHX8_2 = 1
    SHX9_2 = 1
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX1_2 = RemoveAnimDict
    SHX2_2 = "amb@prop_human_bum_bin@base"
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.startCircularProgressBar
    SHX2_2 = ""
    SHX3_2 = 5000
    SHX4_2 = nil
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.setCanAnim
    SHX2_2 = true
    SHX1_2(SHX2_2)
  end
  SHX1_2 = false
  SHX1_1 = SHX1_2
end
SHX3_1(SHX4_1, SHX5_1)
