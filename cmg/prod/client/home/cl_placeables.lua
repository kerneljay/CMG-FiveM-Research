-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_homecustomisation"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = false
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX4_2 = SHX1_1
  if not SHX4_2 then
    SHX4_2 = {}
    SHX1_1 = SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = CreateObjectNoOffset
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX4_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityRotation
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = 2
  SHX11_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = table
  SHX5_2 = SHX5_2.insert
  SHX6_2 = SHX1_1
  SHX7_2 = {}
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX3_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX7_2[5] = SHX12_2
  SHX5_2(SHX6_2, SHX7_2)
end
SHX5_1 = RegisterNetEvent
SHX6_1 = "41269ceaa6"
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_1
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = DeleteEntity
      SHX9_2 = SHX7_2[4]
      SHX8_2(SHX9_2)
    end
    SHX2_2 = nil
    SHX1_1 = SHX2_2
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX4_1
    SHX9_2 = SHX7_2[1]
    SHX10_2 = SHX7_2[2]
    SHX11_2 = SHX7_2[3]
    SHX12_2 = SHX7_2[4]
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
  SHX3_1 = SHX1_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "891add160c"
SHX7_1 = SHX4_1
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "04d1477f6f"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX1_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2[4]
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX1_1 = SHX0_2
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "5823396a12"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2[4]
  SHX1_2(SHX2_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.remove
  SHX2_2 = SHX1_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2[4]
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX1_2 = 0
  SHX2_2 = 5.0
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = pairs
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX9_2
    SHX12_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SHX3_2 - SHX10_2
    SHX10_2 = #SHX10_2
    if SHX2_2 > SHX10_2 then
      SHX2_2 = SHX10_2
      SHX1_2 = SHX9_2
    end
  end
  if 0 ~= SHX1_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getHomePlaceableIndex
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 > 0 then
      SHX5_2 = TriggerServerEvent
      SHX6_2 = "5823396a12"
      SHX7_2 = SHX4_2
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX1_2
      SHX10_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = SHX3_1
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.registerHomeCustomisationButtons
SHX7_1 = "Placeable Objects"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "~r~Enter Delete Mode"
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
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX2_3 then
      SHX3_3 = {}
      SHX4_3 = pairs
      SHX5_3 = SHX1_1
      SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
      for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
        SHX10_3 = table
        SHX10_3 = SHX10_3.insert
        SHX11_3 = SHX3_3
        SHX12_3 = SHX9_3[4]
        SHX10_3(SHX11_3, SHX12_3)
      end
      SHX4_3 = CMG
      SHX4_3 = SHX4_3.enterHomeDeletionPreview
      SHX5_3 = SHX3_3
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        SHX1_4 = CMG
        SHX1_4 = SHX1_4.getHomePlaceableIndex
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 > 0 then
          SHX2_4 = TriggerServerEvent
          SHX3_4 = "5823396a12"
          SHX4_4 = SHX1_4
          SHX5_4 = GetEntityCoords
          SHX6_4 = SHX0_4
          SHX7_4 = true
          SHX5_4 = SHX5_4(SHX6_4, SHX7_4)
          SHX6_4 = SHX3_1
          SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX4_3(SHX5_3, SHX6_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inHomeDeletionPreview
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.ButtonWithStyle
    SHX1_2 = "~r~Delete Closest Prop"
    SHX2_2 = "For those props that refuse to be selected (no confirmation). Use the mouse buttons to select and delete instead."
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
      
      local SHX3_3
      if SHX2_3 then
        SHX3_3 = SHX5_1
        SHX3_3()
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.ButtonWithStyle
    SHX1_2 = "~r~Restore Placeable Props"
    SHX2_2 = "Used to restore broken props after a robbery or raid."
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
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "aa0e6fb69e"
        SHX3_3(SHX4_3)
      end
    end
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = pairs
    SHX1_2 = SHX0_1.placeables
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.ButtonWithStyle
      SHX7_2 = SHX5_2[1]
      SHX8_2 = ""
      SHX9_2 = {}
      SHX10_2 = "\194\163"
      SHX11_2 = getMoneyStringFormatted
      SHX12_2 = SHX5_2[3]
      SHX11_2 = SHX11_2(SHX12_2)
      SHX10_2 = SHX10_2 .. SHX11_2
      SHX9_2.RightLabel = SHX10_2
      SHX10_2 = true
      function SHX11_2(SHX0_3, SHX1_3, SHX2_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_3, SHX4_3, SHX5_3
        if SHX1_3 then
          SHX3_3 = SHX4_2
          SHX4_3 = SHX2_1
          if SHX3_3 ~= SHX4_3 then
            SHX3_3 = SHX4_2
            SHX2_1 = SHX3_3
            SHX3_3 = CMG
            SHX3_3 = SHX3_3.enterHomePlacementPreview
            SHX4_3 = SHX5_2
            SHX4_3 = SHX4_3[2]
            function SHX5_3(SHX0_4, SHX1_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
              SHX2_4 = TriggerServerEvent
              SHX3_4 = "cd012390a5"
              SHX4_4 = SHX4_2
              SHX5_4 = SHX0_4
              SHX6_4 = SHX1_4
              SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
            end
            SHX3_3(SHX4_3, SHX5_3)
          end
        end
      end
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "onResourceStop"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX1_1
    if SHX1_2 then
      SHX1_2 = pairs
      SHX2_2 = SHX1_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_2[4]
        SHX7_2(SHX8_2)
      end
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
function SHX7_1()
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
SHX6_1.getHomePlaceableObjects = SHX7_1
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[4]
    if SHX0_2 == SHX7_2 then
      return SHX5_2
    end
  end
  SHX1_2 = -1
  return SHX1_2
end
SHX6_1.getHomePlaceableIndex = SHX7_1
SHX6_1 = RegisterNetEvent
SHX7_1 = "bb2ff71d8f"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2[5] = SHX1_2
end
SHX6_1(SHX7_1, SHX8_1)
