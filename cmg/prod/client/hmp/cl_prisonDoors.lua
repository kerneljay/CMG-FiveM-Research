-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_prison"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_factiongroups"
SHX1_1 = SHX1_1(SHX2_1)
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = ipairs
  SHX1_2 = SHX1_1.hmpRanks
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[3]
    if SHX6_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.hasClientPermission
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = true
        return SHX7_2
      end
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX3_1 = GetInteriorAtCoordsWithType
SHX4_1 = 1787.004
SHX5_1 = 2593.1984
SHX6_1 = 45.7978
SHX7_1 = "int_prison_main"
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = false
SHX5_1 = false
SHX6_1 = true
SHX7_1 = true
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = {}
SHX9_1.allEntranceDoors = SHX10_1
SHX10_1 = {}
SHX9_1.allPrisonCellDoors = SHX10_1
SHX10_1 = {}
SHX9_1.allSegregationDoors = SHX10_1
SHX10_1 = {}
SHX9_1.allOtherDoors = SHX10_1
SHX10_1 = {}
SHX9_1.outsideStairDoors = SHX10_1
SHX10_1 = false
SHX11_1 = SHX9_1.allEntranceDoors
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.doors
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = 1
    SHX8_2 = #SHX6_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = SHX6_2[SHX10_2]
      SHX11_2 = SHX11_2.doorHash
      if SHX11_2 == SHX0_2 then
        SHX11_2 = SHX6_2[SHX10_2]
        return SHX11_2
      end
    end
  end
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.gsub
  SHX3_2 = "%s+%(A%)$"
  SHX4_2 = ""
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  return SHX1_2
end
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.doors
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = 0
    SHX7_2 = 0.207
    SHX8_2 = 0.241
    SHX9_2 = 0.099
    SHX10_2 = 0.08
    SHX11_2 = 1
    SHX12_2 = #SHX5_2
    SHX13_2 = 1
    for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
      SHX15_2 = SHX5_2[SHX14_2]
      SHX15_2 = SHX15_2.pairedDoorHash
      if SHX15_2 then
        SHX15_2 = SHX5_2[SHX14_2]
        SHX15_2 = SHX15_2.doorHash
        SHX16_2 = SHX5_2[SHX14_2]
        SHX16_2 = SHX16_2.pairedDoorHash
        if SHX15_2 > SHX16_2 then
          goto SHX_LABEL_67
        end
      end
      SHX15_2 = SHX5_2[SHX14_2]
      SHX15_2 = SHX15_2.name
      SHX16_2 = SHX5_2[SHX14_2]
      SHX16_2 = SHX16_2.pairedDoorHash
      if SHX16_2 then
        SHX16_2 = SHX13_1
        SHX17_2 = SHX5_2[SHX14_2]
        SHX17_2 = SHX17_2.name
        SHX16_2 = SHX16_2(SHX17_2)
        SHX15_2 = SHX16_2
      end
      SHX16_2 = SHX9_1
      SHX16_2 = SHX16_2[SHX4_2]
      SHX17_2 = SHX9_1
      SHX17_2 = SHX17_2[SHX4_2]
      SHX17_2 = #SHX17_2
      SHX17_2 = SHX17_2 + 1
      SHX18_2 = {}
      SHX18_2.name = SHX15_2
      SHX18_2.x = SHX7_2
      SHX18_2.y = SHX8_2
      SHX19_2 = SHX5_2[SHX14_2]
      SHX19_2 = SHX19_2.doorHash
      SHX18_2.doorHash = SHX19_2
      SHX16_2[SHX17_2] = SHX18_2
      SHX6_2 = SHX6_2 + 1
      SHX16_2 = SHX9_2 / 2
      SHX16_2 = SHX7_2 + SHX16_2
      SHX7_2 = SHX16_2 + 0.06
      if 6 == SHX6_2 then
        SHX7_2 = 0.207
        SHX16_2 = SHX8_2 + SHX10_2
        SHX8_2 = SHX16_2 + 0.01
        SHX6_2 = 0
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
      ::SHX_LABEL_67::
    end
    SHX11_2 = SHX9_1
    SHX11_2 = SHX11_2[SHX4_2]
    SHX12_2 = SHX9_1
    SHX12_2 = SHX12_2[SHX4_2]
    SHX12_2 = #SHX12_2
    SHX12_2 = SHX12_2 + 1
    SHX13_2 = {}
    SHX13_2.name = "All"
    SHX13_2.x = 0.497
    SHX13_2.y = 0.819
    SHX13_2.doorHash = SHX4_2
    SHX11_2[SHX12_2] = SHX13_2
  end
end
SHX14_1(SHX15_1)
SHX14_1 = CMG
SHX14_1 = SHX14_1.registerCommand
SHX15_1 = "+openhmpmenu"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX10_1 = SHX0_2
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = CMG
SHX14_1 = SHX14_1.registerCommand
SHX15_1 = "-openhmpmenu"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX10_1 = SHX0_2
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterKeyMapping
SHX15_1 = "+openhmpmenu"
SHX16_1 = "HMP Control Panel"
SHX17_1 = "KEYBOARD"
SHX18_1 = "E"
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX14_1 = AddEventHandler
SHX15_1 = "CMG:onClientSpawn"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to open the control panel"
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
      SHX0_3 = false
      SHX5_1 = SHX0_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.setCursor
      SHX1_3 = 0
      SHX0_3(SHX1_3)
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.setInGUI
      SHX1_3 = false
      SHX0_3(SHX1_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = SHX10_1
      if SHX0_3 then
        SHX0_3 = SHX5_1
        if not SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.hasClientPermission
          SHX1_3 = "prisonguard.onduty.permission"
          SHX0_3 = SHX0_3(SHX1_3)
          if SHX0_3 then
            SHX0_3 = true
            SHX5_1 = SHX0_3
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.setCursor
            SHX1_3 = 1
            SHX0_3(SHX1_3)
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.setInGUI
            SHX1_3 = true
            SHX0_3(SHX1_3)
            SHX0_3 = false
            SHX10_1 = SHX0_3
          end
      end
      else
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 1
        SHX2_3 = 177
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if not SHX0_3 then
          SHX0_3 = SHX10_1
          if not SHX0_3 then
            goto SHX_LABEL_51
          end
          SHX0_3 = SHX5_1
          if not SHX0_3 then
            goto SHX_LABEL_51
          end
        end
        SHX0_3 = false
        SHX5_1 = SHX0_3
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.setInGUI
        SHX1_3 = false
        SHX0_3(SHX1_3)
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.setCursor
        SHX1_3 = 0
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX10_1 = SHX0_3
        goto SHX_LABEL_84
        -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
        ::SHX_LABEL_51::
        SHX0_3 = IsControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 168
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.getClientUserId
          SHX0_3 = SHX0_3()
          if SHX0_3 then
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.isDeveloper
            SHX2_3 = SHX0_3
            SHX1_3 = SHX1_3(SHX2_3)
            if SHX1_3 then
              SHX1_3 = CMG
              SHX1_3 = SHX1_3.hasClientPermission
              SHX2_3 = "prisonguard.onduty.permission"
              SHX1_3 = SHX1_3(SHX2_3)
              if SHX1_3 then
                SHX1_3 = true
                SHX5_1 = SHX1_3
                SHX1_3 = CMG
                SHX1_3 = SHX1_3.setCursor
                SHX2_3 = 1
                SHX1_3(SHX2_3)
                SHX1_3 = CMG
                SHX1_3 = SHX1_3.setInGUI
                SHX2_3 = true
                SHX1_3(SHX2_3)
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
      ::SHX_LABEL_84::
    end
    SHX5_2 = 1
    SHX6_2 = SHX0_1.controlPanels
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.createArea
      SHX10_2 = "prisonControlPanel_"
      SHX11_2 = SHX8_2
      SHX10_2 = SHX10_2 .. SHX11_2
      SHX11_2 = SHX0_1.controlPanels
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.coords
      SHX12_2 = 1.5
      SHX13_2 = 5
      SHX14_2 = SHX2_2
      SHX15_2 = SHX3_2
      SHX16_2 = SHX4_2
      SHX17_2 = {}
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.493
    SHX2_2 = 0.489
    SHX3_2 = 0.71
    SHX4_2 = 0.765
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.207
    SHX2_2 = 0.241
    SHX3_2 = 0.099
    SHX4_2 = 0.08
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.239
    SHX2_2 = 0.148
    SHX3_2 = 0.185
    SHX4_2 = 0.055
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.423
    SHX2_2 = 0.148
    SHX3_2 = 0.183
    SHX4_2 = 0.055
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.597
    SHX2_2 = 0.148
    SHX3_2 = 0.165
    SHX4_2 = 0.055
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.7605
    SHX2_2 = 0.148
    SHX3_2 = 0.162
    SHX4_2 = 0.055
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.239
    SHX3_2 = 0.148
    SHX4_2 = 0.185
    SHX5_2 = 0.055
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.341
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Entrance Doors"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_111
        end
      end
      SHX0_2 = SHX9_1.allEntranceDoors
      SHX11_1 = SHX0_2
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_111:: outside nested blocks until all 'goto SHX_LABEL_111' can see it
      ::SHX_LABEL_111::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.341
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Entrance Doors"
      SHX7_2 = 138
      SHX8_2 = 138
      SHX9_2 = 138
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.423
    SHX3_2 = 0.148
    SHX4_2 = 0.183
    SHX5_2 = 0.056
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.513
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Prison Cell Doors"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_172
        end
      end
      SHX0_2 = SHX9_1.allPrisonCellDoors
      SHX11_1 = SHX0_2
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_172:: outside nested blocks until all 'goto SHX_LABEL_172' can see it
      ::SHX_LABEL_172::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.513
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Prison Cell Doors"
      SHX7_2 = 138
      SHX8_2 = 138
      SHX9_2 = 138
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.597
    SHX3_2 = 0.148
    SHX4_2 = 0.166
    SHX5_2 = 0.055
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.691
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Segregation Doors"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_233
        end
      end
      SHX0_2 = SHX9_1.allSegregationDoors
      SHX11_1 = SHX0_2
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_233:: outside nested blocks until all 'goto SHX_LABEL_233' can see it
      ::SHX_LABEL_233::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.691
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Segregation Doors"
      SHX7_2 = 138
      SHX8_2 = 138
      SHX9_2 = 138
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.761
    SHX3_2 = 0.148
    SHX4_2 = 0.162
    SHX5_2 = 0.055
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.857
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Other Doors"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_301
        end
      end
      SHX0_2 = SHX11_1
      SHX1_2 = SHX9_1.allOtherDoors
      if SHX0_2 == SHX1_2 then
        SHX0_2 = SHX9_1.outsideStairDoors
        SHX11_1 = SHX0_2
      else
        SHX0_2 = SHX9_1.allOtherDoors
        SHX11_1 = SHX0_2
      end
      SHX0_2 = PlaySound
      SHX1_2 = -1
      SHX2_2 = "SELECT"
      SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_301:: outside nested blocks until all 'goto SHX_LABEL_301' can see it
      ::SHX_LABEL_301::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.857
      SHX2_2 = 0.15
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Other Doors"
      SHX7_2 = 138
      SHX8_2 = 138
      SHX9_2 = 138
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX0_2 = 1
    SHX1_2 = SHX11_1
    SHX1_2 = #SHX1_2
    SHX2_2 = 1
    for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
      SHX4_2 = SHX11_1
      SHX4_2 = SHX4_2[SHX3_2]
      SHX4_2 = SHX4_2.name
      if "All" == SHX4_2 then
        SHX4_2 = SHX11_1
        SHX4_2 = SHX4_2[SHX3_2]
        SHX5_2 = SHX4_2.doorHash
        SHX4_2 = SHX8_1
        SHX4_2 = SHX4_2[SHX5_2]
        SHX4_2 = SHX4_2.currentState
        if 5 ~= SHX4_2 then
          SHX4_2 = SHX11_1
          SHX4_2 = SHX4_2[SHX3_2]
          SHX5_2 = SHX4_2.doorHash
          SHX4_2 = SHX8_1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2.currentState
          if 0 ~= SHX4_2 then
            goto SHX_LABEL_352
          end
        end
        SHX4_2 = DrawRect
        SHX5_2 = 0.497
        SHX6_2 = 0.819
        SHX7_2 = 0.185
        SHX8_2 = 0.058
        SHX9_2 = 0
        SHX10_2 = 180
        SHX11_2 = 0
        SHX12_2 = 150
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        goto SHX_LABEL_362
        -- [FIX IF ERROR] Move ::SHX_LABEL_352:: outside nested blocks until all 'goto SHX_LABEL_352' can see it
        ::SHX_LABEL_352::
        SHX4_2 = DrawRect
        SHX5_2 = 0.497
        SHX6_2 = 0.819
        SHX7_2 = 0.185
        SHX8_2 = 0.058
        SHX9_2 = 180
        SHX10_2 = 0
        SHX11_2 = 0
        SHX12_2 = 150
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_362:: outside nested blocks until all 'goto SHX_LABEL_362' can see it
        ::SHX_LABEL_362::
        SHX4_2 = CursorInArea
        SHX5_2 = GetArea
        SHX6_2 = 0.497
        SHX7_2 = 0.819
        SHX8_2 = 0.185
        SHX9_2 = 0.058
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        if not SHX4_2 then
          SHX4_2 = DrawAdvancedText
          SHX5_2 = 0.592
          SHX6_2 = 0.82
          SHX7_2 = 0.005
          SHX8_2 = 0.0028
          SHX9_2 = 0.4
          SHX10_2 = "All"
          SHX11_2 = 255
          SHX12_2 = 255
          SHX13_2 = 255
          SHX14_2 = 255
          SHX15_2 = 0
          SHX16_2 = 0
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        else
          SHX4_2 = SHX7_1
          if SHX4_2 then
            SHX4_2 = IsControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 329
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if not SHX4_2 then
              SHX4_2 = IsDisabledControlJustPressed
              SHX5_2 = 1
              SHX6_2 = 329
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
              if not SHX4_2 then
                goto SHX_LABEL_447
              end
            end
            SHX4_2 = SHX11_1
            SHX4_2 = SHX4_2[SHX3_2]
            SHX5_2 = SHX4_2.doorHash
            SHX4_2 = SHX8_1
            SHX4_2 = SHX4_2[SHX5_2]
            SHX4_2 = SHX4_2.currentState
            if 5 ~= SHX4_2 then
              SHX4_2 = SHX11_1
              SHX4_2 = SHX4_2[SHX3_2]
              SHX5_2 = SHX4_2.doorHash
              SHX4_2 = SHX8_1
              SHX4_2 = SHX4_2[SHX5_2]
              SHX4_2 = SHX4_2.currentState
              if 0 ~= SHX4_2 then
                goto SHX_LABEL_426
              end
            end
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "e1a464cf07"
            SHX6_2 = SHX11_1
            SHX6_2 = SHX6_2[SHX3_2]
            SHX6_2 = SHX6_2.doorHash
            SHX7_2 = 4
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            goto SHX_LABEL_433
            -- [FIX IF ERROR] Move ::SHX_LABEL_426:: outside nested blocks until all 'goto SHX_LABEL_426' can see it
            ::SHX_LABEL_426::
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "e1a464cf07"
            SHX6_2 = SHX11_1
            SHX6_2 = SHX6_2[SHX3_2]
            SHX6_2 = SHX6_2.doorHash
            SHX7_2 = 5
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_433:: outside nested blocks until all 'goto SHX_LABEL_433' can see it
            ::SHX_LABEL_433::
            SHX4_2 = PlaySound
            SHX5_2 = -1
            SHX6_2 = "SELECT"
            SHX7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX8_2 = false
            SHX9_2 = 0
            SHX10_2 = true
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            SHX4_2 = false
            SHX7_1 = SHX4_2
            SHX4_2 = SetTimeout
            SHX5_2 = 500
            function SHX6_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = true
              SHX7_1 = SHX0_3
            end
            SHX4_2(SHX5_2, SHX6_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_447:: outside nested blocks until all 'goto SHX_LABEL_447' can see it
            ::SHX_LABEL_447::
            SHX4_2 = DrawAdvancedText
            SHX5_2 = 0.592
            SHX6_2 = 0.82
            SHX7_2 = 0.005
            SHX8_2 = 0.0028
            SHX9_2 = 0.4
            SHX10_2 = "All"
            SHX11_2 = 138
            SHX12_2 = 138
            SHX13_2 = 138
            SHX14_2 = 255
            SHX15_2 = 0
            SHX16_2 = 0
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          else
            SHX4_2 = DrawAdvancedText
            SHX5_2 = 0.592
            SHX6_2 = 0.82
            SHX7_2 = 0.005
            SHX8_2 = 0.0028
            SHX9_2 = 0.4
            SHX10_2 = "All"
            SHX11_2 = 255
            SHX12_2 = 255
            SHX13_2 = 255
            SHX14_2 = 255
            SHX15_2 = 0
            SHX16_2 = 0
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          end
        end
      else
        SHX4_2 = SHX11_1
        SHX4_2 = SHX4_2[SHX3_2]
        SHX5_2 = SHX4_2.doorHash
        SHX4_2 = SHX8_1
        SHX4_2 = SHX4_2[SHX5_2]
        SHX4_2 = SHX4_2.currentState
        if 5 ~= SHX4_2 then
          SHX4_2 = SHX11_1
          SHX4_2 = SHX4_2[SHX3_2]
          SHX5_2 = SHX4_2.doorHash
          SHX4_2 = SHX8_1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2.currentState
          if 0 ~= SHX4_2 then
            goto SHX_LABEL_508
          end
        end
        SHX4_2 = DrawRect
        SHX5_2 = SHX11_1
        SHX5_2 = SHX5_2[SHX3_2]
        SHX5_2 = SHX5_2.x
        SHX6_2 = SHX11_1
        SHX6_2 = SHX6_2[SHX3_2]
        SHX6_2 = SHX6_2.y
        SHX7_2 = 0.099
        SHX8_2 = 0.08
        SHX9_2 = 0
        SHX10_2 = 180
        SHX11_2 = 0
        SHX12_2 = 150
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        goto SHX_LABEL_522
        -- [FIX IF ERROR] Move ::SHX_LABEL_508:: outside nested blocks until all 'goto SHX_LABEL_508' can see it
        ::SHX_LABEL_508::
        SHX4_2 = DrawRect
        SHX5_2 = SHX11_1
        SHX5_2 = SHX5_2[SHX3_2]
        SHX5_2 = SHX5_2.x
        SHX6_2 = SHX11_1
        SHX6_2 = SHX6_2[SHX3_2]
        SHX6_2 = SHX6_2.y
        SHX7_2 = 0.099
        SHX8_2 = 0.08
        SHX9_2 = 180
        SHX10_2 = 0
        SHX11_2 = 0
        SHX12_2 = 150
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_522:: outside nested blocks until all 'goto SHX_LABEL_522' can see it
        ::SHX_LABEL_522::
        SHX4_2 = CursorInArea
        SHX5_2 = GetArea
        SHX6_2 = SHX11_1
        SHX6_2 = SHX6_2[SHX3_2]
        SHX6_2 = SHX6_2.x
        SHX7_2 = SHX11_1
        SHX7_2 = SHX7_2[SHX3_2]
        SHX7_2 = SHX7_2.y
        SHX8_2 = 0.099
        SHX9_2 = 0.08
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        if not SHX4_2 then
          SHX4_2 = DrawAdvancedText
          SHX5_2 = SHX11_1
          SHX5_2 = SHX5_2[SHX3_2]
          SHX5_2 = SHX5_2.x
          SHX5_2 = SHX5_2 + 0.0967
          SHX6_2 = SHX11_1
          SHX6_2 = SHX6_2[SHX3_2]
          SHX6_2 = SHX6_2.y
          SHX6_2 = SHX6_2 + 0.0098
          SHX7_2 = 0.001
          SHX8_2 = 0.001
          SHX9_2 = 0.25
          SHX10_2 = SHX11_1
          SHX10_2 = SHX10_2[SHX3_2]
          SHX10_2 = SHX10_2.name
          SHX11_2 = 255
          SHX12_2 = 255
          SHX13_2 = 255
          SHX14_2 = 255
          SHX15_2 = 0
          SHX16_2 = 0
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        else
          SHX4_2 = SHX7_1
          if SHX4_2 then
            SHX4_2 = IsControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 329
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if not SHX4_2 then
              SHX4_2 = IsDisabledControlJustPressed
              SHX5_2 = 1
              SHX6_2 = 329
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
              if not SHX4_2 then
                goto SHX_LABEL_613
              end
            end
            SHX4_2 = SHX11_1
            SHX4_2 = SHX4_2[SHX3_2]
            SHX5_2 = SHX4_2.doorHash
            SHX4_2 = SHX8_1
            SHX4_2 = SHX4_2[SHX5_2]
            SHX4_2 = SHX4_2.currentState
            if 4 == SHX4_2 then
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "e1a464cf07"
              SHX6_2 = SHX11_1
              SHX6_2 = SHX6_2[SHX3_2]
              SHX6_2 = SHX6_2.doorHash
              SHX7_2 = 5
              SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            else
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "e1a464cf07"
              SHX6_2 = SHX11_1
              SHX6_2 = SHX6_2[SHX3_2]
              SHX6_2 = SHX6_2.doorHash
              SHX7_2 = 4
              SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            end
            SHX4_2 = PlaySound
            SHX5_2 = -1
            SHX6_2 = "SELECT"
            SHX7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX8_2 = false
            SHX9_2 = 0
            SHX10_2 = true
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            SHX4_2 = false
            SHX7_1 = SHX4_2
            SHX4_2 = SetTimeout
            SHX5_2 = 500
            function SHX6_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = true
              SHX7_1 = SHX0_3
            end
            SHX4_2(SHX5_2, SHX6_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_613:: outside nested blocks until all 'goto SHX_LABEL_613' can see it
            ::SHX_LABEL_613::
            SHX4_2 = DrawAdvancedText
            SHX5_2 = SHX11_1
            SHX5_2 = SHX5_2[SHX3_2]
            SHX5_2 = SHX5_2.x
            SHX5_2 = SHX5_2 + 0.0967
            SHX6_2 = SHX11_1
            SHX6_2 = SHX6_2[SHX3_2]
            SHX6_2 = SHX6_2.y
            SHX6_2 = SHX6_2 + 0.0098
            SHX7_2 = 0.001
            SHX8_2 = 0.001
            SHX9_2 = 0.25
            SHX10_2 = SHX11_1
            SHX10_2 = SHX10_2[SHX3_2]
            SHX10_2 = SHX10_2.name
            SHX11_2 = 138
            SHX12_2 = 138
            SHX13_2 = 138
            SHX14_2 = 255
            SHX15_2 = 0
            SHX16_2 = 0
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          else
            SHX4_2 = DrawAdvancedText
            SHX5_2 = SHX11_1
            SHX5_2 = SHX5_2[SHX3_2]
            SHX5_2 = SHX5_2.x
            SHX5_2 = SHX5_2 + 0.0967
            SHX6_2 = SHX11_1
            SHX6_2 = SHX6_2[SHX3_2]
            SHX6_2 = SHX6_2.y
            SHX6_2 = SHX6_2 + 0.0098
            SHX7_2 = 0.001
            SHX8_2 = 0.001
            SHX9_2 = 0.25
            SHX10_2 = SHX11_1
            SHX10_2 = SHX10_2[SHX3_2]
            SHX10_2 = SHX10_2.name
            SHX11_2 = 255
            SHX12_2 = 255
            SHX13_2 = 255
            SHX14_2 = 255
            SHX15_2 = 0
            SHX16_2 = 0
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          end
        end
      end
    end
    SHX0_2 = SHX4_1
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.791
      SHX2_2 = 0.819
      SHX3_2 = 0.081
      SHX4_2 = 0.06
      SHX5_2 = 180
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.791
      SHX2_2 = 0.819
      SHX3_2 = 0.081
      SHX4_2 = 0.06
      SHX5_2 = 0
      SHX6_2 = 180
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX0_2 = CursorInArea
    SHX1_2 = GetArea
    SHX2_2 = 0.791
    SHX3_2 = 0.819
    SHX4_2 = 0.081
    SHX5_2 = 0.06
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.886
      SHX2_2 = 0.82
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "LOCKDOWN"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX0_2 = SHX6_1
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_734
          end
        end
        SHX0_2 = SHX4_1
        SHX0_2 = not SHX0_2
        SHX4_1 = SHX0_2
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "1bfa3cabbc"
        SHX2_2 = SHX4_1
        SHX0_2(SHX1_2, SHX2_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_734:: outside nested blocks until all 'goto SHX_LABEL_734' can see it
        ::SHX_LABEL_734::
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.886
        SHX2_2 = 0.82
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.4
        SHX6_2 = "LOCKDOWN"
        SHX7_2 = 0
        SHX8_2 = 138
        SHX9_2 = 138
        SHX10_2 = 138
        SHX11_2 = 0
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      else
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.886
        SHX2_2 = 0.82
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.4
        SHX6_2 = "LOCKDOWN"
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 0
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
    end
  end
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "a93701fa04"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX4_1 = SHX0_2
  SHX1_2 = SHX4_1
  if SHX1_2 then
    SHX1_2 = RefreshInterior
    SHX2_2 = SHX3_1
    SHX1_2(SHX2_2)
    SHX1_2 = ActivateInteriorEntitySet
    SHX2_2 = SHX3_1
    SHX3_2 = "prison_alarm"
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
      
      local SHX0_3, SHX1_3, SHX2_3
      while true do
        SHX0_3 = PrepareAlarm
        SHX1_3 = "PRISON_ALARMS"
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          break
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 100
        SHX0_3(SHX1_3)
      end
      SHX0_3 = StartAlarm
      SHX1_3 = "PRISON_ALARMS"
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
    end
    SHX1_2(SHX2_2)
  else
    SHX1_2 = RefreshInterior
    SHX2_2 = SHX3_1
    SHX1_2(SHX2_2)
    SHX1_2 = DeactivateInteriorEntitySet
    SHX2_2 = SHX3_1
    SHX3_2 = "prison_alarm"
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
      
      local SHX0_3, SHX1_3
      while true do
        SHX0_3 = PrepareAlarm
        SHX1_3 = "PRISON_ALARMS"
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          break
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 100
        SHX0_3(SHX1_3)
      end
      SHX0_3 = StopAllAlarms
      SHX1_3 = true
      SHX0_3(SHX1_3)
    end
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX4_1
  if false == SHX1_2 then
    SHX1_2 = false
    SHX6_1 = SHX1_2
    SHX1_2 = SetTimeout
    SHX2_2 = 300000
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX6_1 = SHX0_3
    end
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Prison Control Panels"
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 22
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX16_1 = AddEventHandler
SHX17_1 = "CMG:onClientSpawn"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    while true do
      SHX2_2 = table
      SHX2_2 = SHX2_2.count
      SHX3_2 = SHX8_1
      SHX2_2 = SHX2_2(SHX3_2)
      if 0 ~= SHX2_2 then
        break
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
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
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX1_3 = ""
      SHX2_3 = false
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.hasClientPermission
      SHX4_3 = "police.onduty.permission"
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = SHX0_3.isAllowlisted
      if SHX4_3 then
        SHX4_3 = SHX2_1
        SHX4_3 = SHX4_3()
      end
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.isStaffedOnClient
      SHX5_3 = SHX5_3()
      if not SHX5_3 and not SHX4_3 then
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.hasClientPermission
        SHX6_3 = "prisonguard.onduty.permission"
        SHX5_3 = SHX5_3(SHX6_3)
        if not SHX5_3 then
          SHX5_3 = CMG
          SHX5_3 = SHX5_3.hasClientPermission
          SHX6_3 = "borderforce.onduty.permission"
          SHX5_3 = SHX5_3(SHX6_3)
          if not SHX5_3 and not SHX3_3 then
            SHX5_3 = CMG
            SHX5_3 = SHX5_3.hasClientPermission
            SHX6_3 = "nhs.onduty.permission"
            SHX5_3 = SHX5_3(SHX6_3)
            if not SHX5_3 then
              SHX5_3 = CMG
              SHX5_3 = SHX5_3.hasClientPermission
              SHX6_3 = "lfb.onduty.permission"
              SHX5_3 = SHX5_3(SHX6_3)
              if not SHX5_3 then
                goto SHX_LABEL_50
              end
            end
            SHX5_3 = SHX0_3.nhsOpen
            if not SHX5_3 then
              goto SHX_LABEL_50
            end
          end
        end
      end
      SHX1_3 = " (E to toggle lock) "
      SHX2_3 = true
      -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
      ::SHX_LABEL_50::
      SHX6_3 = SHX0_3.doorHash
      SHX5_3 = SHX8_1
      SHX5_3 = SHX5_3[SHX6_3]
      SHX5_3 = SHX5_3.currentState
      if 5 ~= SHX5_3 then
        SHX6_3 = SHX0_3.doorHash
        SHX5_3 = SHX8_1
        SHX5_3 = SHX5_3[SHX6_3]
        SHX5_3 = SHX5_3.currentState
        if 0 ~= SHX5_3 then
          goto SHX_LABEL_73
        end
      end
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.DrawText3D
      SHX6_3 = SHX0_3.coords
      SHX7_3 = SHX0_3.doorName
      SHX8_3 = SHX1_3
      SHX9_3 = " \240\159\148\147"
      SHX7_3 = SHX7_3 .. SHX8_3 .. SHX9_3
      SHX8_3 = 0.45
      SHX9_3 = 4
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      goto SHX_LABEL_83
      -- [FIX IF ERROR] Move ::SHX_LABEL_73:: outside nested blocks until all 'goto SHX_LABEL_73' can see it
      ::SHX_LABEL_73::
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.DrawText3D
      SHX6_3 = SHX0_3.coords
      SHX7_3 = SHX0_3.doorName
      SHX8_3 = SHX1_3
      SHX9_3 = " \240\159\148\146"
      SHX7_3 = SHX7_3 .. SHX8_3 .. SHX9_3
      SHX8_3 = 0.45
      SHX9_3 = 4
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_83:: outside nested blocks until all 'goto SHX_LABEL_83' can see it
      ::SHX_LABEL_83::
      SHX5_3 = IsControlJustPressed
      SHX6_3 = 0
      SHX7_3 = 38
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      if SHX5_3 then
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.isStaffedOnClient
        SHX5_3 = SHX5_3()
        if not SHX5_3 and not SHX4_3 then
          SHX5_3 = CMG
          SHX5_3 = SHX5_3.hasClientPermission
          SHX6_3 = "prisonguard.onduty.permission"
          SHX5_3 = SHX5_3(SHX6_3)
          if not SHX5_3 then
            SHX5_3 = CMG
            SHX5_3 = SHX5_3.hasClientPermission
            SHX6_3 = "borderforce.onduty.permission"
            SHX5_3 = SHX5_3(SHX6_3)
            if not (SHX5_3 or SHX3_3) then
              goto SHX_LABEL_115
            end
          end
          if not SHX2_3 then
            SHX5_3 = SHX0_3.overrideLock
            -- [FIX IF ERROR] Move ::SHX_LABEL_115:: outside nested blocks until all 'goto SHX_LABEL_115' can see it
            ::SHX_LABEL_115::
            if not SHX5_3 then
              if SHX3_3 then
                SHX5_3 = SHX0_3.pdOpen
                if SHX5_3 then
                  goto SHX_LABEL_135
                end
              end
              SHX5_3 = CMG
              SHX5_3 = SHX5_3.hasClientPermission
              SHX6_3 = "nhs.onduty.permission"
              SHX5_3 = SHX5_3(SHX6_3)
              if not SHX5_3 then
                SHX5_3 = CMG
                SHX5_3 = SHX5_3.hasClientPermission
                SHX6_3 = "lfb.onduty.permission"
                SHX5_3 = SHX5_3(SHX6_3)
                if not SHX5_3 then
                  goto SHX_LABEL_170
                end
              end
              SHX5_3 = SHX0_3.nhsOpen
              if not SHX5_3 then
                goto SHX_LABEL_170
              end
            end
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_135:: outside nested blocks until all 'goto SHX_LABEL_135' can see it
        ::SHX_LABEL_135::
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.setIgnoreRadialInputThisFrame
        SHX5_3()
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getSelectedEntity
        SHX5_3, SHX6_3 = SHX5_3()
        if not SHX5_3 or 1 ~= SHX6_3 then
          SHX7_3 = CMG
          SHX7_3 = SHX7_3.loadAnimDict
          SHX8_3 = "anim@heists@keycard@"
          SHX7_3(SHX8_3)
          SHX7_3 = Citizen
          SHX7_3 = SHX7_3.CreateThread
          function SHX8_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
            SHX0_4 = TaskPlayAnim
            SHX1_4 = PlayerPedId
            SHX1_4 = SHX1_4()
            SHX2_4 = "anim@heists@keycard@"
            SHX3_4 = "exit"
            SHX4_4 = 5.0
            SHX5_4 = 1.0
            SHX6_4 = -1
            SHX7_4 = 48
            SHX8_4 = 0
            SHX9_4 = false
            SHX10_4 = false
            SHX11_4 = false
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            SHX0_4 = Wait
            SHX1_4 = 1200
            SHX0_4(SHX1_4)
            SHX0_4 = ClearPedTasks
            SHX1_4 = PlayerPedId
            SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX1_4()
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            SHX0_4 = RemoveAnimDict
            SHX1_4 = "anim@heists@keycard@"
            SHX0_4(SHX1_4)
          end
          SHX7_3(SHX8_3)
          SHX8_3 = SHX0_3.doorHash
          SHX7_3 = SHX8_1
          SHX7_3 = SHX7_3[SHX8_3]
          SHX7_3 = SHX7_3.currentState
          if 4 == SHX7_3 then
            SHX7_3 = TriggerServerEvent
            SHX8_3 = "e1a464cf07"
            SHX9_3 = SHX0_3.doorHash
            SHX10_3 = 5
            SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          else
            SHX7_3 = TriggerServerEvent
            SHX8_3 = "e1a464cf07"
            SHX9_3 = SHX0_3.doorHash
            SHX10_3 = 4
            SHX7_3(SHX8_3, SHX9_3, SHX10_3)
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_170:: outside nested blocks until all 'goto SHX_LABEL_170' can see it
      ::SHX_LABEL_170::
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1.doors
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = 1
      SHX12_2 = #SHX10_2
      SHX13_2 = 1
      for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
        SHX15_2 = SHX10_2[SHX14_2]
        SHX15_2 = SHX15_2.pairedDoorHash
        if SHX15_2 then
          SHX15_2 = SHX10_2[SHX14_2]
          SHX15_2 = SHX15_2.doorHash
          SHX16_2 = SHX10_2[SHX14_2]
          SHX16_2 = SHX16_2.pairedDoorHash
          if SHX15_2 > SHX16_2 then
            goto SHX_LABEL_149
          end
        end
        SHX15_2 = SHX10_2[SHX14_2]
        SHX15_2 = SHX15_2.coords
        SHX16_2 = SHX10_2[SHX14_2]
        SHX16_2 = SHX16_2.pairedDoorHash
        if SHX16_2 then
          SHX16_2 = SHX12_1
          SHX17_2 = SHX10_2[SHX14_2]
          SHX17_2 = SHX17_2.pairedDoorHash
          SHX16_2 = SHX16_2(SHX17_2)
          if SHX16_2 then
            SHX17_2 = vector3
            SHX18_2 = SHX10_2[SHX14_2]
            SHX18_2 = SHX18_2.coords
            SHX18_2 = SHX18_2.x
            SHX19_2 = SHX16_2.coords
            SHX19_2 = SHX19_2.x
            SHX18_2 = SHX18_2 + SHX19_2
            SHX18_2 = SHX18_2 * 0.5
            SHX19_2 = SHX10_2[SHX14_2]
            SHX19_2 = SHX19_2.coords
            SHX19_2 = SHX19_2.y
            SHX20_2 = SHX16_2.coords
            SHX20_2 = SHX20_2.y
            SHX19_2 = SHX19_2 + SHX20_2
            SHX19_2 = SHX19_2 * 0.5
            SHX20_2 = SHX10_2[SHX14_2]
            SHX20_2 = SHX20_2.coords
            SHX20_2 = SHX20_2.z
            SHX21_2 = SHX16_2.coords
            SHX21_2 = SHX21_2.z
            SHX20_2 = SHX20_2 + SHX21_2
            SHX20_2 = SHX20_2 * 0.5
            SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
            SHX15_2 = SHX17_2
          end
        end
        SHX16_2 = SHX10_2[SHX14_2]
        SHX16_2 = SHX16_2.name
        SHX17_2 = SHX10_2[SHX14_2]
        SHX17_2 = SHX17_2.pairedDoorHash
        if SHX17_2 then
          SHX17_2 = SHX13_1
          SHX18_2 = SHX10_2[SHX14_2]
          SHX18_2 = SHX18_2.name
          SHX17_2 = SHX17_2(SHX18_2)
          SHX16_2 = SHX17_2
        end
        SHX17_2 = CMG
        SHX17_2 = SHX17_2.createArea
        SHX18_2 = "openPrisonDoor_"
        SHX19_2 = SHX10_2[SHX14_2]
        SHX19_2 = SHX19_2.doorHash
        SHX18_2 = SHX18_2 .. SHX19_2
        SHX19_2 = SHX15_2
        SHX20_2 = 1.5
        SHX21_2 = 5
        SHX22_2 = SHX2_2
        SHX23_2 = SHX3_2
        SHX24_2 = SHX4_2
        SHX25_2 = {}
        SHX25_2.doorName = SHX16_2
        SHX26_2 = SHX10_2[SHX14_2]
        SHX26_2 = SHX26_2.doorHash
        SHX25_2.doorHash = SHX26_2
        SHX25_2.coords = SHX15_2
        SHX26_2 = SHX10_2[SHX14_2]
        SHX26_2 = SHX26_2.overrideLocks
        if not SHX26_2 then
          SHX26_2 = false
        end
        SHX25_2.overrideLock = SHX26_2
        SHX26_2 = SHX10_2[SHX14_2]
        SHX26_2 = SHX26_2.nhsOpen
        if not SHX26_2 then
          SHX26_2 = false
        end
        SHX25_2.nhsOpen = SHX26_2
        SHX26_2 = SHX10_2[SHX14_2]
        SHX26_2 = SHX26_2.pdOpen
        if not SHX26_2 then
          SHX26_2 = false
        end
        SHX25_2.pdOpen = SHX26_2
        SHX26_2 = SHX10_2[SHX14_2]
        SHX26_2 = SHX26_2.isAllowlisted
        SHX25_2.isAllowlisted = SHX26_2
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        SHX17_2 = SHX10_2[SHX14_2]
        SHX17_2 = SHX17_2.disableClimb
        if SHX17_2 then
          SHX17_2 = CMG
          SHX17_2 = SHX17_2.createArea
          SHX18_2 = "prisonDoorDisableClimb_"
          SHX19_2 = SHX10_2[SHX14_2]
          SHX19_2 = SHX19_2.doorHash
          SHX18_2 = SHX18_2 .. SHX19_2
          SHX19_2 = SHX10_2[SHX14_2]
          SHX19_2 = SHX19_2.coords
          SHX20_2 = 10.0
          SHX21_2 = 25.0
          function SHX22_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          function SHX23_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          SHX24_2 = SHX15_1
          SHX25_2 = {}
          SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_149:: outside nested blocks until all 'goto SHX_LABEL_149' can see it
        ::SHX_LABEL_149::
      end
    end
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.TriggerServerCallback
      SHX1_3 = "6d3dee7984"
      SHX0_3 = SHX0_3(SHX1_3)
      SHX8_1 = SHX0_3
      SHX0_3 = pairs
      SHX1_3 = SHX8_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = DoorSystemSetDoorState
        SHX7_3 = SHX4_3
        SHX8_3 = SHX5_3.currentState
        SHX9_3 = false
        SHX10_3 = false
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX6_3 = SHX5_3.currentState
        if 0 ~= SHX6_3 then
          SHX6_3 = SHX5_3.currentState
          if 5 ~= SHX6_3 then
            goto SHX_LABEL_27
          end
        end
        SHX6_3 = DoorSystemSetHoldOpen
        SHX7_3 = SHX4_3
        SHX8_3 = true
        SHX6_3(SHX7_3, SHX8_3)
        goto SHX_LABEL_31
        -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
        ::SHX_LABEL_27::
        SHX6_3 = DoorSystemSetHoldOpen
        SHX7_3 = SHX4_3
        SHX8_3 = false
        SHX6_3(SHX7_3, SHX8_3)
        -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
        ::SHX_LABEL_31::
      end
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "prisonSyncDoorsOnAreaEnter"
    SHX8_2 = SHX0_1.prisonMainCoords
    SHX9_2 = 250
    SHX10_2 = 250
    SHX11_2 = SHX5_2
    function SHX12_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX13_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX14_2 = {}
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "0fad7a76a8"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX8_1 = SHX0_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.doors
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = 1
    SHX8_2 = #SHX6_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = AddDoorToSystem
      SHX12_2 = SHX6_2[SHX10_2]
      SHX12_2 = SHX12_2.doorHash
      SHX13_2 = SHX6_2[SHX10_2]
      SHX13_2 = SHX13_2.modelHash
      SHX14_2 = SHX6_2[SHX10_2]
      SHX14_2 = SHX14_2.coords
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX6_2[SHX10_2]
      SHX15_2 = SHX15_2.coords
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX6_2[SHX10_2]
      SHX16_2 = SHX16_2.coords
      SHX16_2 = SHX16_2.z
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = DoorSystemSetDoorState
      SHX12_2 = SHX6_2[SHX10_2]
      SHX12_2 = SHX12_2.doorHash
      SHX13_2 = SHX6_2[SHX10_2]
      SHX14_2 = SHX13_2.doorHash
      SHX13_2 = SHX8_1
      SHX13_2 = SHX13_2[SHX14_2]
      SHX13_2 = SHX13_2.currentState
      SHX14_2 = false
      SHX15_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX11_2 = SHX6_2[SHX10_2]
      SHX12_2 = SHX11_2.doorHash
      SHX11_2 = SHX8_1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX11_2 = SHX11_2.currentState
      if 0 ~= SHX11_2 then
        SHX11_2 = SHX6_2[SHX10_2]
        SHX12_2 = SHX11_2.doorHash
        SHX11_2 = SHX8_1
        SHX11_2 = SHX11_2[SHX12_2]
        SHX11_2 = SHX11_2.currentState
        if 5 ~= SHX11_2 then
          goto SHX_LABEL_59
        end
      end
      SHX11_2 = DoorSystemSetHoldOpen
      SHX12_2 = SHX6_2[SHX10_2]
      SHX12_2 = SHX12_2.doorHash
      SHX13_2 = true
      SHX11_2(SHX12_2, SHX13_2)
      goto SHX_LABEL_64
      -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
      ::SHX_LABEL_59::
      SHX11_2 = DoorSystemSetHoldOpen
      SHX12_2 = SHX6_2[SHX10_2]
      SHX12_2 = SHX12_2.doorHash
      SHX13_2 = false
      SHX11_2(SHX12_2, SHX13_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
      ::SHX_LABEL_64::
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "62bd2178cb"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if nil ~= SHX0_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX8_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX6_2.currentState = SHX0_2
      SHX7_2 = DoorSystemSetDoorState
      SHX8_2 = SHX5_2
      SHX9_2 = SHX0_2
      SHX10_2 = false
      SHX11_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if 0 == SHX0_2 or 5 == SHX0_2 then
        SHX7_2 = DoorSystemSetHoldOpen
        SHX8_2 = SHX5_2
        SHX9_2 = true
        SHX7_2(SHX8_2, SHX9_2)
      else
        SHX7_2 = DoorSystemSetHoldOpen
        SHX8_2 = SHX5_2
        SHX9_2 = false
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
  else
    SHX1_2 = pairs
    SHX2_2 = SHX8_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.defaultState
      SHX6_2.currentState = SHX7_2
      SHX7_2 = DoorSystemSetDoorState
      SHX8_2 = SHX5_2
      SHX9_2 = SHX6_2.defaultState
      SHX10_2 = false
      SHX11_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX7_2 = SHX6_2.defaultState
      if 0 ~= SHX7_2 then
        SHX7_2 = SHX6_2.defaultState
        if 5 ~= SHX7_2 then
          goto SHX_LABEL_54
        end
      end
      SHX7_2 = DoorSystemSetHoldOpen
      SHX8_2 = SHX5_2
      SHX9_2 = true
      SHX7_2(SHX8_2, SHX9_2)
      goto SHX_LABEL_58
      -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
      ::SHX_LABEL_54::
      SHX7_2 = DoorSystemSetHoldOpen
      SHX8_2 = SHX5_2
      SHX9_2 = false
      SHX7_2(SHX8_2, SHX9_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
      ::SHX_LABEL_58::
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "c5dd6087ae"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = DoorSystemSetDoorState
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if 0 == SHX1_2 or 5 == SHX1_2 then
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX8_1
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    SHX2_2 = SHX8_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.currentState = SHX1_2
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RMenu
SHX16_1 = SHX16_1.Add
SHX17_1 = "prison"
SHX18_1 = "keyfob"
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateMenu
SHX20_1 = ""
SHX21_1 = "~b~Gate Keyfob Menu"
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuWidth
SHX22_1 = SHX22_1()
SHX23_1 = CMG
SHX23_1 = SHX23_1.getRageUIMenuHeight
SHX23_1 = SHX23_1()
SHX24_1 = "cmg_prisonui"
SHX25_1 = "cmg_prisonui"
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateWhile
SHX17_1 = 1.0
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "prison"
SHX21_1 = "keyfob"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = nil
function SHX20_1()
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
  SHX3_2 = "prison"
  SHX4_2 = "keyfob"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Front Gate"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerVehicle
        SHX3_4 = SHX3_4()
        if 0 == SHX3_4 then
          SHX4_4 = notify
          SHX5_4 = "~r~You must be in your vehicle to use the fob."
          SHX4_4(SHX5_4)
          return
        end
        SHX4_4 = false
        SHX5_4 = pairs
        SHX6_4 = SHX0_1.frontFobCoords
        SHX5_4, SHX6_4, SHX7_4, SHX8_4 = SHX5_4(SHX6_4)
        for SHX9_4, SHX10_4 in SHX5_4, SHX6_4, SHX7_4, SHX8_4 do
          SHX11_4 = CMG
          SHX11_4 = SHX11_4.getPlayerCoords
          SHX11_4 = SHX11_4()
          SHX11_4 = SHX11_4 - SHX10_4
          SHX11_4 = #SHX11_4
          SHX12_4 = 7.5
          if SHX11_4 < SHX12_4 then
            SHX4_4 = true
            break
          end
        end
        if not SHX4_4 then
          SHX5_4 = notify
          SHX6_4 = "~r~You are not close enough to the gate to use this."
          SHX5_4(SHX6_4)
          return
        end
        SHX5_4 = SHX8_1.mainGate1
        if SHX5_4 then
          SHX5_4 = SHX8_1.mainGate1
          SHX5_4 = SHX5_4.currentState
          if 5 == SHX5_4 then
            SHX5_4 = 4
            if SHX5_4 then
              goto SHX_LABEL_48
            end
          end
          SHX5_4 = 5
          -- [FIX IF ERROR] Move ::SHX_LABEL_48:: outside nested blocks until all 'goto SHX_LABEL_48' can see it
          ::SHX_LABEL_48::
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "e1a464cf07"
          SHX8_4 = "mainGate1"
          SHX9_4 = SHX5_4
          SHX6_4(SHX7_4, SHX8_4, SHX9_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Rear Gate"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerVehicle
        SHX3_4 = SHX3_4()
        if 0 == SHX3_4 then
          SHX4_4 = notify
          SHX5_4 = "~r~You must be in your vehicle to use the fob."
          SHX4_4(SHX5_4)
          return
        end
        SHX4_4 = false
        SHX5_4 = pairs
        SHX6_4 = SHX0_1.rearFobCoords
        SHX5_4, SHX6_4, SHX7_4, SHX8_4 = SHX5_4(SHX6_4)
        for SHX9_4, SHX10_4 in SHX5_4, SHX6_4, SHX7_4, SHX8_4 do
          SHX11_4 = CMG
          SHX11_4 = SHX11_4.getPlayerCoords
          SHX11_4 = SHX11_4()
          SHX11_4 = SHX11_4 - SHX10_4
          SHX11_4 = #SHX11_4
          SHX12_4 = 7.5
          if SHX11_4 < SHX12_4 then
            SHX4_4 = true
            break
          end
        end
        if not SHX4_4 then
          SHX5_4 = notify
          SHX6_4 = "~r~You are not close enough to the gate to use this."
          SHX5_4(SHX6_4)
          return
        end
        SHX5_4 = SHX8_1.mainGate2
        if SHX5_4 then
          SHX5_4 = SHX8_1.mainGate2
          SHX5_4 = SHX5_4.currentState
          if 5 == SHX5_4 then
            SHX5_4 = 4
            if SHX5_4 then
              goto SHX_LABEL_48
            end
          end
          SHX5_4 = 5
          -- [FIX IF ERROR] Move ::SHX_LABEL_48:: outside nested blocks until all 'goto SHX_LABEL_48' can see it
          ::SHX_LABEL_48::
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "e1a464cf07"
          SHX8_4 = "mainGate2"
          SHX9_4 = SHX5_4
          SHX6_4(SHX7_4, SHX8_4, SHX9_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Side Gate"
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
        SHX3_4 = SHX3_4.getPlayerVehicle
        SHX3_4 = SHX3_4()
        if 0 == SHX3_4 then
          SHX4_4 = notify
          SHX5_4 = "~r~You must be in your vehicle to use the fob."
          SHX4_4(SHX5_4)
          return
        end
        SHX4_4 = SHX12_1
        SHX5_4 = "mainEntranceDoorE4"
        SHX4_4 = SHX4_4(SHX5_4)
        if not SHX4_4 then
          return
        end
        SHX5_4 = CMG
        SHX5_4 = SHX5_4.getPlayerCoords
        SHX5_4 = SHX5_4()
        SHX6_4 = SHX4_4.coords
        SHX5_4 = SHX5_4 - SHX6_4
        SHX5_4 = #SHX5_4
        SHX6_4 = 7.5
        if SHX5_4 >= SHX6_4 then
          SHX5_4 = notify
          SHX6_4 = "~r~You are not close enough to the gate to use this."
          SHX5_4(SHX6_4)
          return
        end
        SHX5_4 = SHX8_1.mainEntranceDoorE4
        if SHX5_4 then
          SHX5_4 = SHX8_1.mainEntranceDoorE4
          SHX5_4 = SHX5_4.currentState
          if 5 == SHX5_4 then
            SHX5_4 = 4
            if SHX5_4 then
              goto SHX_LABEL_43
            end
          end
          SHX5_4 = 5
          -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
          ::SHX_LABEL_43::
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "e1a464cf07"
          SHX8_4 = "mainEntranceDoorE4"
          SHX9_4 = SHX5_4
          SHX6_4(SHX7_4, SHX8_4, SHX9_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Garage Gate"
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
        SHX3_4 = SHX3_4.getPlayerVehicle
        SHX3_4 = SHX3_4()
        if 0 == SHX3_4 then
          SHX4_4 = notify
          SHX5_4 = "~r~You must be in your vehicle to use the fob."
          SHX4_4(SHX5_4)
          return
        end
        SHX4_4 = SHX12_1
        SHX5_4 = "garage1_1"
        SHX4_4 = SHX4_4(SHX5_4)
        if not SHX4_4 then
          return
        end
        SHX5_4 = CMG
        SHX5_4 = SHX5_4.getPlayerCoords
        SHX5_4 = SHX5_4()
        SHX6_4 = SHX4_4.coords
        SHX5_4 = SHX5_4 - SHX6_4
        SHX5_4 = #SHX5_4
        SHX6_4 = 7.5
        if SHX5_4 >= SHX6_4 then
          SHX5_4 = notify
          SHX6_4 = "~r~You are not close enough to the gate to use this."
          SHX5_4(SHX6_4)
          return
        end
        SHX5_4 = SHX8_1.garage1_1
        if SHX5_4 then
          SHX5_4 = SHX8_1.garage1_1
          SHX5_4 = SHX5_4.currentState
          if 5 == SHX5_4 then
            SHX5_4 = 4
            if SHX5_4 then
              goto SHX_LABEL_43
            end
          end
          SHX5_4 = 5
          -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
          ::SHX_LABEL_43::
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "e1a464cf07"
          SHX8_4 = "garage1_1"
          SHX9_4 = SHX5_4
          SHX6_4(SHX7_4, SHX8_4, SHX9_4)
        end
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
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "6c335938c2"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    SHX0_2 = notify
    SHX1_2 = "~r~You must be in your vehicle to use the fob."
    SHX0_2(SHX1_2)
  else
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "prison"
    SHX4_2 = "keyfob"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterCommand
SHX17_1 = "hmpkeyfob"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMGclient
  SHX0_2 = SHX0_2.useInventoryItem
  SHX1_2 = {}
  SHX2_2 = "hmpgatekeyfob"
  SHX3_2 = 1
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX0_2(SHX1_2)
end
SHX19_1 = false
SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX16_1 = RegisterKeyMapping
SHX17_1 = "hmpkeyfob"
SHX18_1 = "HMP Gate Keyfob"
SHX19_1 = "KEYBOARD"
SHX20_1 = ""
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
