-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_prison"
SHX0_1 = SHX0_1(SHX1_1)
globalInPrison = false
SHX1_1 = false
SHX2_1 = nil
SHX3_1 = {}
SHX4_1 = false
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = false
SHX8_1 = "anim@scripted@payphone_hits@male@"
SHX9_1 = "sf_prop_sf_phonebox_01b_s"
SHX10_1 = false
SHX11_1 = false
SHX12_1 = ""
SHX13_1 = "idle"
SHX14_1 = nil
SHX15_1 = "idle"
SHX16_1 = nil
SHX17_1 = "idle"
SHX18_1 = nil
SHX19_1 = false
SHX20_1 = 0
SHX21_1 = 0
SHX22_1 = 0
SHX23_1 = false
SHX24_1 = false
SHX25_1 = false
SHX26_1 = 0
SHX27_1 = 1
SHX28_1 = nil
SHX29_1 = 0
SHX30_1 = false
SHX31_1 = false
SHX32_1 = 3.0
SHX33_1 = RegisterNetEvent
SHX34_1 = "6d94081b17"
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SetPedToRagdollWithFall
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = 5000
  SHX4_2 = 5000
  SHX5_2 = 1
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX9_2 = 1000.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
end
SHX33_1(SHX34_1, SHX35_1)
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  while true do
    SHX1_2 = SHX23_1
    if not SHX1_2 then
      break
    end
    SHX1_2 = DrawRect
    SHX2_2 = 0.5
    SHX3_2 = 0.5
    SHX4_2 = 0.5
    SHX5_2 = 0.8
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 180
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX1_2 = 0.0
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.5
      SHX10_2 = 0.06 + SHX1_2
      SHX11_2 = 0.1
      SHX12_2 = 0.1
      SHX13_2 = 0.5
      SHX14_2 = string
      SHX14_2 = SHX14_2.format
      SHX15_2 = "Name: %s | Prisoner Number: %s | Cell Number: %s | Time Left: %s minutes | Location: %s"
      SHX16_2 = SHX7_2.prisonerName
      SHX17_2 = SHX7_2.prisonerSource
      SHX18_2 = SHX7_2.prisonerCellNumber
      SHX19_2 = SHX7_2.prisonerTimeLeft
      SHX20_2 = SHX7_2.location
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX15_2 = 200
      SHX16_2 = 200
      SHX17_2 = 200
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 0
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX1_2 = SHX1_2 + 0.05
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX34_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX0_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX0_2
      SHX3_2(SHX4_2)
    end
  end
  if SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = SetEntityVisible
      SHX4_2 = SHX2_2
      SHX5_2 = true
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX4_1 = SHX3_2
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX8_1
  SHX3_2(SHX4_2)
end
function SHX35_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX4_1
  if SHX3_2 then
    return
  end
  SHX3_2 = true
  SHX4_1 = SHX3_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX2_2
  if SHX4_2 and 0 ~= SHX4_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 and SHX4_2 then
      goto SHX_LABEL_22
      SHX5_2 = SHX4_2 or SHX5_2
    end
  end
  SHX5_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  if SHX5_2 then
    SHX6_2 = SetEntityVisible
    SHX7_2 = SHX4_2
    SHX8_2 = false
    SHX9_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX0_2 = SHX6_2
    SHX6_2 = GetEntityHeading
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX1_2 = SHX6_2
  end
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = GetHashKey
    SHX1_3 = SHX9_1
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = IsModelValid
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if not SHX1_3 then
      SHX1_3 = SHX5_2
      if SHX1_3 then
        SHX1_3 = SetEntityVisible
        SHX2_3 = SHX5_2
        SHX3_3 = true
        SHX4_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
      SHX1_3 = false
      SHX4_1 = SHX1_3
      return
    end
    SHX1_3 = RequestModel
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = GetGameTimer
    SHX1_3 = SHX1_3()
    SHX1_3 = SHX1_3 + 5000
    while true do
      SHX2_3 = HasModelLoaded
      SHX3_3 = SHX0_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        break
      end
      SHX2_3 = GetGameTimer
      SHX2_3 = SHX2_3()
      if SHX1_3 < SHX2_3 then
        SHX2_3 = SHX5_2
        if SHX2_3 then
          SHX2_3 = SetEntityVisible
          SHX3_3 = SHX5_2
          SHX4_3 = true
          SHX5_3 = false
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
        end
        SHX2_3 = false
        SHX4_1 = SHX2_3
        return
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.loadAnimDict
    SHX3_3 = SHX8_1
    SHX2_3 = SHX2_3(SHX3_3)
    if not SHX2_3 then
      SHX2_3 = SHX5_2
      if SHX2_3 then
        SHX2_3 = SetEntityVisible
        SHX3_3 = SHX5_2
        SHX4_3 = true
        SHX5_3 = false
        SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      end
      SHX2_3 = false
      SHX4_1 = SHX2_3
      return
    end
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.requestEntitySpawn
    SHX3_3 = "prison_payphone_prop"
    SHX4_3 = SHX0_2
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = CreateObjectNoOffset
    SHX3_3 = SHX0_3
    SHX4_3 = SHX0_2.x
    SHX5_3 = SHX0_2.y
    SHX6_3 = SHX0_2.z
    SHX7_3 = true
    SHX8_3 = true
    SHX9_3 = true
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX3_3 = SetModelAsNoLongerNeeded
    SHX4_3 = SHX0_3
    SHX3_3(SHX4_3)
    if SHX2_3 and 0 ~= SHX2_3 then
      SHX3_3 = DoesEntityExist
      SHX4_3 = SHX2_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        goto SHX_LABEL_105
      end
    end
    SHX3_3 = SHX5_2
    if SHX3_3 then
      SHX3_3 = SetEntityVisible
      SHX4_3 = SHX5_2
      SHX5_3 = true
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
    SHX3_3 = false
    SHX4_1 = SHX3_3
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_105:: outside nested blocks until all 'goto SHX_LABEL_105' can see it
    ::SHX_LABEL_105::
    SHX3_3 = SetEntityHeading
    SHX4_3 = SHX2_3
    SHX5_3 = SHX1_2
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = SetEntityCompletelyDisableCollision
    SHX4_3 = SHX2_3
    SHX5_3 = false
    SHX6_3 = false
    SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    SHX3_3 = SHX5_2
    if SHX3_3 then
      SHX3_3 = GetOffsetFromEntityInWorldCoords
      SHX4_3 = SHX5_2
      SHX5_3 = -0.1
      SHX6_3 = -0.85
      SHX7_3 = 0.0
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      if SHX3_3 then
        goto SHX_LABEL_131
      end
    end
    SHX3_3 = GetOffsetFromEntityInWorldCoords
    SHX4_3 = SHX2_3
    SHX5_3 = -0.1
    SHX6_3 = -0.85
    SHX7_3 = 0.0
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_131:: outside nested blocks until all 'goto SHX_LABEL_131' can see it
    ::SHX_LABEL_131::
    SHX4_3 = SetEntityCoords
    SHX5_3 = SHX3_2
    SHX6_3 = SHX3_3.x
    SHX7_3 = SHX3_3.y
    SHX8_3 = SHX3_3.z
    SHX9_3 = false
    SHX10_3 = false
    SHX11_3 = false
    SHX12_3 = false
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX4_3 = SetEntityHeading
    SHX5_3 = SHX3_2
    SHX6_3 = SHX1_2
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = PlayEntityAnim
    SHX5_3 = SHX2_3
    SHX6_3 = "fxfr_pcn_1_intro_phone"
    SHX7_3 = SHX8_1
    SHX8_3 = 10.0
    SHX9_3 = true
    SHX10_3 = true
    SHX11_3 = true
    SHX12_3 = 0.0
    SHX13_3 = false
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    SHX4_3 = TaskPlayAnim
    SHX5_3 = SHX3_2
    SHX6_3 = SHX8_1
    SHX7_3 = "fxfr_phl_1_intro_male"
    SHX8_3 = 8.0
    SHX9_3 = 8.0
    SHX10_3 = -1
    SHX11_3 = 14
    SHX12_3 = 0
    SHX13_3 = false
    SHX14_3 = false
    SHX15_3 = false
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    SHX5_1 = SHX2_3
    SHX4_3 = SHX5_2
    SHX6_1 = SHX4_3
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.Visible
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "cmgPayBailMenu"
    SHX8_3 = "main"
    SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX6_3 = true
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = Citizen
    SHX4_3 = SHX4_3.CreateThread
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4
      while true do
        SHX0_4 = RageUI
        SHX0_4 = SHX0_4.Visible
        SHX1_4 = RMenu
        SHX2_4 = SHX1_4
        SHX1_4 = SHX1_4.Get
        SHX3_4 = "cmgPayBailMenu"
        SHX4_4 = "main"
        SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4 = SHX1_4(SHX2_4, SHX3_4, SHX4_4)
        SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4)
        if not SHX0_4 then
          break
        end
        SHX0_4 = Wait
        SHX1_4 = 100
        SHX0_4(SHX1_4)
      end
      SHX0_4 = SHX5_1
      SHX1_4 = SHX6_1
      SHX2_4 = nil
      SHX5_1 = SHX2_4
      SHX2_4 = nil
      SHX6_1 = SHX2_4
      SHX2_4 = PlayerPedId
      SHX2_4 = SHX2_4()
      SHX3_4 = SHX7_1
      if not SHX3_4 then
        SHX3_4 = TaskPlayAnim
        SHX4_4 = SHX2_4
        SHX5_4 = SHX8_1
        SHX6_4 = "exit_left_male"
        SHX7_4 = 8.0
        SHX8_4 = 8.0
        SHX9_4 = -1
        SHX10_4 = 1
        SHX11_4 = 0
        SHX12_4 = false
        SHX13_4 = false
        SHX14_4 = false
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4)
        SHX3_4 = Wait
        SHX4_4 = 200
        SHX3_4(SHX4_4)
        if SHX0_4 then
          SHX3_4 = DoesEntityExist
          SHX4_4 = SHX0_4
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX3_4 = StopEntityAnim
            SHX4_4 = SHX0_4
            SHX5_4 = "fxfr_pcn_1_intro_phone"
            SHX6_4 = SHX8_1
            SHX7_4 = 1000.0
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
          end
        end
        SHX3_4 = StopAnimTask
        SHX4_4 = SHX2_4
        SHX5_4 = SHX8_1
        SHX6_4 = "fxfr_ptj_1_male"
        SHX7_4 = 1.0
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
        SHX3_4 = Wait
        SHX4_4 = 2800
        SHX3_4(SHX4_4)
      end
      SHX3_4 = false
      SHX7_1 = SHX3_4
      SHX3_4 = SHX34_1
      SHX4_4 = SHX0_4
      SHX5_4 = SHX2_4
      SHX6_4 = SHX1_4
      SHX3_4(SHX4_4, SHX5_4, SHX6_4)
    end
    SHX4_3(SHX5_3)
  end
  SHX6_2(SHX7_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.staticPrisonProps
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.isBailPhone
    if SHX7_2 then
      SHX0_2 = SHX0_2 + 1
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
        
        local SHX0_3, SHX1_3
      end
      function SHX9_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX1_3 = SHX4_1
        if SHX1_3 then
          return
        end
        SHX1_3 = drawNativeNotification
        SHX2_3 = "Press ~INPUT_CONTEXT~ to call your Lawyer"
        SHX1_3(SHX2_3)
        SHX1_3 = globalInPrison
        if SHX1_3 then
          SHX1_3 = IsControlJustPressed
          SHX2_3 = 0
          SHX3_3 = 38
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if SHX1_3 then
            SHX1_3 = SHX35_1
            SHX2_3 = SHX0_3.objectInfo
            SHX2_3 = SHX2_3.position
            SHX3_3 = SHX0_3.objectInfo
            SHX3_3 = SHX3_3.heading
            SHX4_3 = SHX0_3.objectInfo
            SHX4_3 = SHX4_3.Id
            SHX1_3(SHX2_3, SHX3_3, SHX4_3)
          end
        else
          SHX1_3 = IsControlJustPressed
          SHX2_3 = 0
          SHX3_3 = 38
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if SHX1_3 then
            SHX1_3 = tCMG
            SHX1_3 = SHX1_3.notify
            SHX2_3 = "~r~You need to be in prison to pay bail."
            SHX1_3(SHX2_3)
          end
        end
      end
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "prison_paybail_"
      SHX12_2 = SHX0_2
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX12_2 = SHX6_2.position
      SHX13_2 = 2.5
      SHX14_2 = 5.0
      SHX15_2 = SHX7_2
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = {}
      SHX18_2.objectInfo = SHX6_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX3_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX3_1 = SHX0_2
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX37_1
  SHX0_2()
  SHX0_2 = 1
  SHX1_2 = SHX0_1.prisonBlips
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX0_1.prisonBlips
    SHX4_2 = SHX4_2[SHX3_2]
    SHX5_2 = SHX4_2.scale
    if not SHX5_2 then
      SHX5_2 = 0.65
    end
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX4_2.coords
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX4_2.coords
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX4_2.coords
    SHX9_2 = SHX9_2.z
    SHX10_2 = SHX4_2.icon
    SHX11_2 = SHX4_2.colour
    SHX12_2 = SHX4_2.name
    SHX13_2 = SHX5_2
    SHX14_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX7_2 = SetBlipDisplay
    SHX8_2 = SHX6_2
    SHX9_2 = 4
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlipAsShortRange
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SHX3_1
    SHX7_2[SHX3_2] = SHX6_2
  end
  SHX0_2 = globalInPrison
  if SHX0_2 then
    SHX0_2 = SHX2_1
    if SHX0_2 then
      SHX0_2 = SHX0_1.prisonCells
      SHX1_2 = SHX2_1
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.addBlip
      SHX2_2 = SHX0_2.x
      SHX3_2 = SHX0_2.y
      SHX4_2 = SHX0_2.z
      SHX5_2 = 188
      SHX6_2 = 22
      SHX7_2 = "Your prison cell"
      SHX8_2 = 0.65
      SHX9_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX2_2 = SetBlipDisplay
      SHX3_2 = SHX1_2
      SHX4_2 = 4
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SetBlipAsShortRange
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SHX3_1
      SHX2_2 = #SHX2_2
      SHX3_2 = SHX2_2 + 1
      SHX2_2 = SHX3_1
      SHX2_2[SHX3_2] = SHX1_2
    end
  end
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = 10000.0
  SHX1_2 = SHX0_1.policeStationCinematics
  SHX1_2 = SHX1_2[1]
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.policeStationCinematics
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.getPlayerCoords
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX7_2.coords
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    if SHX0_2 > SHX8_2 then
      SHX0_2 = SHX8_2
      SHX1_2 = SHX7_2
    end
  end
  return SHX1_2
end
SHX40_1 = CMG
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = globalInPrison
  return SHX0_2
end
SHX40_1.isPlayerInPrison = SHX41_1
SHX40_1 = CMG
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX24_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPlayerInRedZone
    SHX0_2 = SHX0_2()
  end
  return SHX0_2
end
SHX40_1.isPlayerNearPrison = SHX41_1
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = 1
  SHX1_2 = SHX0_1.prisonPayPhones
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX0_1.prisonPayPhones
    SHX5_2 = SHX5_2[SHX3_2]
    SHX5_2 = SHX5_2.coords
    SHX4_2 = SHX4_2 - SHX5_2
    SHX4_2 = #SHX4_2
    SHX5_2 = SHX32_1
    if SHX4_2 <= SHX5_2 then
      SHX4_2 = true
      return SHX4_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = {}
  SHX28_1 = SHX0_2
  SHX0_2 = RequestScriptAudioBank
  SHX1_2 = "ALARM_BELL_02"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetTimeout
  SHX1_2 = 5000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = SHX28_1
    if SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX0_1.riotAlarmPositions
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = GetSoundId
        SHX6_3 = SHX6_3()
        SHX7_3 = PlaySoundFromCoord
        SHX8_3 = SHX6_3
        SHX9_3 = "Bell_02"
        SHX10_3 = SHX5_3.x
        SHX11_3 = SHX5_3.y
        SHX12_3 = SHX5_3.z
        SHX13_3 = "ALARMS_SOUNDSET"
        SHX14_3 = false
        SHX15_3 = 0
        SHX16_3 = false
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
        SHX7_3 = table
        SHX7_3 = SHX7_3.insert
        SHX8_3 = SHX28_1
        SHX9_3 = SHX6_3
        SHX7_3(SHX8_3, SHX9_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX28_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX28_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = StopSound
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
      SHX6_2 = ReleaseSoundId
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX28_1 = SHX0_2
end
SHX43_1 = AddEventHandler
SHX44_1 = "CMG:onClientSpawn"
function SHX45_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX24_1 = SHX0_3
      SHX0_3 = SHX38_1
      SHX0_3()
      SHX0_3 = SHX25_1
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.enablePunching
        SHX1_3 = true
        SHX0_3(SHX1_3)
        SHX0_3 = SHX41_1
        SHX0_3()
      end
      SHX0_3 = TriggerEvent
      SHX1_3 = "2324ddf647"
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = SHX1_1
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.isPrisonerTagged
        SHX0_3 = SHX0_3()
        if not SHX0_3 then
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 1000
          SHX0_3(SHX1_3)
          SHX0_3 = CMG
          SHX0_3 = SHX0_3.isPrisonerTagged
          SHX0_3 = SHX0_3()
          if not SHX0_3 then
            SHX0_3 = TriggerServerEvent
            SHX1_3 = "d656c383a2"
            SHX0_3(SHX1_3)
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.teleport
            SHX1_3 = SHX0_1.prisonCells
            SHX2_3 = SHX2_1
            SHX1_3 = SHX1_3[SHX2_3]
            SHX1_3 = SHX1_3.x
            SHX2_3 = SHX0_1.prisonCells
            SHX3_3 = SHX2_1
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.y
            SHX3_3 = SHX0_1.prisonCells
            SHX4_3 = SHX2_1
            SHX3_3 = SHX3_3[SHX4_3]
            SHX3_3 = SHX3_3.z
            SHX0_3(SHX1_3, SHX2_3, SHX3_3)
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~Naughty, go back."
            SHX0_3(SHX1_3)
          end
        end
      end
      SHX0_3 = SHX25_1
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.enablePunching
        SHX1_3 = false
        SHX0_3(SHX1_3)
        SHX0_3 = SHX42_1
        SHX0_3()
      end
      SHX0_3 = false
      SHX24_1 = SHX0_3
      SHX0_3 = globalInPrison
      if not SHX0_3 then
        SHX0_3 = SHX37_1
        SHX0_3()
      end
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
    SHX6_2 = "forceStayInPrison"
    SHX7_2 = SHX0_1.prisonMainCoords
    SHX8_2 = 225.0
    SHX9_2 = 100.0
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = SHX0_1.prisonJobs
    SHX5_2 = SHX5_2.woodworking
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "" == SHX0_3 then
          goto SHX_LABEL_8
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
      ::SHX_LABEL_8::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to start Woodworking"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "woodworking"
        SHX12_1 = SHX0_3
        SHX0_3 = "fetching"
        SHX13_1 = SHX0_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "8c4d6586a3"
        SHX2_3 = "woodworking"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Go to the storage room to fetch wood"
        SHX0_3(SHX1_3)
      end
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "woodworking" == SHX0_3 then
          SHX0_3 = SHX13_1
          if "fetching" == SHX0_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to pick up wood"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "carrying"
        SHX13_1 = SHX0_3
        SHX0_3 = PlayerPedId
        SHX0_3 = SHX0_3()
        SHX1_3 = 1302435108
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadModel
        SHX3_3 = SHX1_3
        SHX2_3(SHX3_3)
        SHX2_3 = GetEntityCoords
        SHX3_3 = SHX0_3
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.requestEntitySpawn
        SHX4_3 = "prison_woodworking_box"
        SHX5_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3)
        SHX3_3 = CreateObject
        SHX4_3 = SHX1_3
        SHX5_3 = SHX2_3.x
        SHX6_3 = SHX2_3.y
        SHX7_3 = SHX2_3.z
        SHX8_3 = true
        SHX9_3 = true
        SHX10_3 = false
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX14_1 = SHX3_3
        SHX3_3 = SetEntityAsMissionEntity
        SHX4_3 = SHX14_1
        SHX5_3 = true
        SHX6_3 = true
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = GetPedBoneIndex
        SHX4_3 = SHX0_3
        SHX5_3 = 28422
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        SHX4_3 = AttachEntityToEntity
        SHX5_3 = SHX14_1
        SHX6_3 = SHX0_3
        SHX7_3 = SHX3_3
        SHX8_3 = 0.0
        SHX9_3 = 0.02
        SHX10_3 = -0.02
        SHX11_3 = 0.0
        SHX12_3 = 0.0
        SHX13_3 = 0.0
        SHX14_3 = true
        SHX15_3 = true
        SHX16_3 = false
        SHX17_3 = true
        SHX18_3 = 1
        SHX19_3 = true
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX4_3 = SetModelAsNoLongerNeeded
        SHX5_3 = SHX1_3
        SHX4_3(SHX5_3)
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.loadAnimDict
        SHX5_3 = "anim@heists@box_carry@"
        SHX4_3(SHX5_3)
        SHX4_3 = TaskPlayAnim
        SHX5_3 = SHX0_3
        SHX6_3 = "anim@heists@box_carry@"
        SHX7_3 = "idle"
        SHX8_3 = 8.0
        SHX9_3 = 1.0
        SHX10_3 = -1
        SHX11_3 = 49
        SHX12_3 = 0
        SHX13_3 = false
        SHX14_3 = false
        SHX15_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX4_3 = Citizen
        SHX4_3 = SHX4_3.CreateThread
        function SHX5_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
          while true do
            SHX0_4 = SHX13_1
            if "carrying" ~= SHX0_4 then
              break
            end
            SHX0_4 = IsEntityPlayingAnim
            SHX1_4 = PlayerPedId
            SHX1_4 = SHX1_4()
            SHX2_4 = "anim@heists@box_carry@"
            SHX3_4 = "idle"
            SHX4_4 = 3
            SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            if not SHX0_4 then
              SHX0_4 = CMG
              SHX0_4 = SHX0_4.loadAnimDict
              SHX1_4 = "anim@heists@box_carry@"
              SHX0_4(SHX1_4)
              SHX0_4 = TaskPlayAnim
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = "anim@heists@box_carry@"
              SHX3_4 = "idle"
              SHX4_4 = 8.0
              SHX5_4 = 1.0
              SHX6_4 = -1
              SHX7_4 = 49
              SHX8_4 = 0
              SHX9_4 = false
              SHX10_4 = false
              SHX11_4 = false
              SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            end
            SHX0_4 = Wait
            SHX1_4 = 0
            SHX0_4(SHX1_4)
          end
          SHX0_4 = RemoveAnimDict
          SHX1_4 = "anim@heists@box_carry@"
          SHX0_4(SHX1_4)
        end
        SHX4_3(SHX5_3)
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~g~Take the wood to a workstation"
        SHX4_3(SHX5_3)
      end
    end
    function SHX8_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX1_3 = globalInPrison
      if SHX1_3 then
        SHX1_3 = SHX12_1
        if "woodworking" == SHX1_3 then
          SHX1_3 = SHX13_1
          if "carrying" == SHX1_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX1_3 = drawNativeNotification
      SHX2_3 = "Press ~INPUT_CONTEXT~ to start woodworking"
      SHX1_3(SHX2_3)
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX11_1
        if not SHX1_3 then
          SHX1_3 = true
          SHX11_1 = SHX1_3
          SHX1_3 = "working"
          SHX13_1 = SHX1_3
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX2_3 = SHX14_1
          if SHX2_3 then
            SHX2_3 = DoesEntityExist
            SHX3_3 = SHX14_1
            SHX2_3 = SHX2_3(SHX3_3)
            if SHX2_3 then
              SHX2_3 = DeleteEntity
              SHX3_3 = SHX14_1
              SHX2_3(SHX3_3)
            end
          end
          SHX2_3 = nil
          SHX14_1 = SHX2_3
          SHX2_3 = ClearPedTasks
          SHX3_3 = SHX1_3
          SHX2_3(SHX3_3)
          SHX2_3 = FreezeEntityPosition
          SHX3_3 = SHX1_3
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = SetEntityCoords
          SHX3_3 = SHX1_3
          SHX4_3 = SHX0_3.coords
          SHX4_3 = SHX4_3.x
          SHX5_3 = SHX0_3.coords
          SHX5_3 = SHX5_3.y
          SHX6_3 = SHX0_3.coords
          SHX6_3 = SHX6_3.z
          SHX6_3 = SHX6_3 - 1
          SHX7_3 = false
          SHX8_3 = false
          SHX9_3 = false
          SHX10_3 = false
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.setCanAnim
          SHX3_3 = false
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            while true do
              SHX0_4 = SHX13_1
              if "working" ~= SHX0_4 then
                break
              end
              SHX0_4 = IsPedUsingScenario
              SHX1_4 = SHX1_3
              SHX2_4 = SHX5_2.workScenario
              SHX0_4 = SHX0_4(SHX1_4, SHX2_4)
              if not SHX0_4 then
                SHX0_4 = TaskStartScenarioInPlace
                SHX1_4 = SHX1_3
                SHX2_4 = SHX5_2.workScenario
                SHX3_4 = 0
                SHX4_4 = true
                SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
              end
              SHX0_4 = Wait
              SHX1_4 = 200
              SHX0_4(SHX1_4)
            end
          end
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            SHX0_4 = CMG
            SHX0_4 = SHX0_4.startCircularProgressBar
            SHX1_4 = ""
            SHX2_4 = SHX5_2.workDuration
            SHX3_4 = nil
            function SHX4_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5
            end
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            SHX0_4 = SHX13_1
            if "working" ~= SHX0_4 then
              return
            end
            SHX0_4 = FreezeEntityPosition
            SHX1_4 = SHX1_3
            SHX2_4 = false
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = ClearPedTasks
            SHX1_4 = SHX1_3
            SHX0_4(SHX1_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.setCanAnim
            SHX1_4 = true
            SHX0_4(SHX1_4)
            SHX0_4 = "idle"
            SHX13_1 = SHX0_4
            SHX0_4 = ""
            SHX12_1 = SHX0_4
            SHX0_4 = false
            SHX11_1 = SHX0_4
            SHX0_4 = TriggerServerEvent
            SHX1_4 = "e942632666"
            SHX2_4 = "woodworking"
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.notify
            SHX1_4 = "~g~Woodworking complete!"
            SHX0_4(SHX1_4)
          end
          SHX2_3(SHX3_3)
        end
      end
    end
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "prisonJob_ww_start"
    SHX11_2 = SHX5_2.startCoords
    SHX12_2 = 2.0
    SHX13_2 = 5.0
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX16_2 = SHX6_2
    SHX17_2 = {}
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addPropMarker
    SHX10_2 = "bzzz_marker_point_blue_anim"
    SHX11_2 = SHX5_2.startCoords
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX5_2.startCoords
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX5_2.startCoords
    SHX13_2 = SHX13_2.z
    SHX14_2 = 20.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.add3DTextForCoord
    SHX10_2 = "Woodworking"
    SHX11_2 = SHX5_2.startCoords
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX5_2.startCoords
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX5_2.startCoords
    SHX13_2 = SHX13_2.z
    SHX14_2 = 2.2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "prisonJob_ww_storage"
    SHX11_2 = SHX5_2.storageCoords
    SHX12_2 = 2.0
    SHX13_2 = 5.0
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX16_2 = SHX7_2
    SHX17_2 = {}
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addPropMarker
    SHX10_2 = "bzzz_marker_point_blue_anim"
    SHX11_2 = SHX5_2.storageCoords
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX5_2.storageCoords
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX5_2.storageCoords
    SHX13_2 = SHX13_2.z
    SHX14_2 = 20.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.add3DTextForCoord
    SHX10_2 = "Wood Storage"
    SHX11_2 = SHX5_2.storageCoords
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX5_2.storageCoords
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX5_2.storageCoords
    SHX13_2 = SHX13_2.z
    SHX14_2 = 2.2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX9_2 = ipairs
    SHX10_2 = SHX5_2.stations
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
    for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
      SHX15_2 = CMG
      SHX15_2 = SHX15_2.createArea
      SHX16_2 = "prisonJob_ww_station_"
      SHX17_2 = SHX13_2
      SHX16_2 = SHX16_2 .. SHX17_2
      SHX17_2 = SHX14_2
      SHX18_2 = 2.0
      SHX19_2 = 5.0
      function SHX20_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX21_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX22_2 = SHX8_2
      SHX23_2 = {}
      SHX23_2.coords = SHX14_2
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX15_2 = tCMG
      SHX15_2 = SHX15_2.addPropMarker
      SHX16_2 = "bzzz_marker_point_blue_anim"
      SHX17_2 = SHX14_2.x
      SHX18_2 = SHX14_2.y
      SHX19_2 = SHX14_2.z
      SHX20_2 = 20.0
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    end
    SHX9_2 = SHX0_1.prisonJobs
    SHX9_2 = SHX9_2.metalworking
    function SHX10_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "" == SHX0_3 then
          goto SHX_LABEL_8
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
      ::SHX_LABEL_8::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to start Metalworking"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "metalworking"
        SHX12_1 = SHX0_3
        SHX0_3 = "fetching"
        SHX15_1 = SHX0_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "8c4d6586a3"
        SHX2_3 = "metalworking"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Go to the storage to fetch materials"
        SHX0_3(SHX1_3)
      end
    end
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "metalworking" == SHX0_3 then
          SHX0_3 = SHX15_1
          if "fetching" == SHX0_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to pick up materials"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "carrying"
        SHX15_1 = SHX0_3
        SHX0_3 = PlayerPedId
        SHX0_3 = SHX0_3()
        SHX1_3 = 1302435108
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadModel
        SHX3_3 = SHX1_3
        SHX2_3(SHX3_3)
        SHX2_3 = GetEntityCoords
        SHX3_3 = SHX0_3
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.requestEntitySpawn
        SHX4_3 = "prison_metalworking_box"
        SHX5_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3)
        SHX3_3 = CreateObject
        SHX4_3 = SHX1_3
        SHX5_3 = SHX2_3.x
        SHX6_3 = SHX2_3.y
        SHX7_3 = SHX2_3.z
        SHX8_3 = true
        SHX9_3 = true
        SHX10_3 = false
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX16_1 = SHX3_3
        SHX3_3 = SetEntityAsMissionEntity
        SHX4_3 = SHX16_1
        SHX5_3 = true
        SHX6_3 = true
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = GetPedBoneIndex
        SHX4_3 = SHX0_3
        SHX5_3 = 28422
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        SHX4_3 = AttachEntityToEntity
        SHX5_3 = SHX16_1
        SHX6_3 = SHX0_3
        SHX7_3 = SHX3_3
        SHX8_3 = 0.0
        SHX9_3 = 0.02
        SHX10_3 = -0.02
        SHX11_3 = 0.0
        SHX12_3 = 0.0
        SHX13_3 = 0.0
        SHX14_3 = true
        SHX15_3 = true
        SHX16_3 = false
        SHX17_3 = true
        SHX18_3 = 1
        SHX19_3 = true
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX4_3 = SetModelAsNoLongerNeeded
        SHX5_3 = SHX1_3
        SHX4_3(SHX5_3)
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.loadAnimDict
        SHX5_3 = "anim@heists@box_carry@"
        SHX4_3(SHX5_3)
        SHX4_3 = TaskPlayAnim
        SHX5_3 = SHX0_3
        SHX6_3 = "anim@heists@box_carry@"
        SHX7_3 = "idle"
        SHX8_3 = 8.0
        SHX9_3 = 1.0
        SHX10_3 = -1
        SHX11_3 = 49
        SHX12_3 = 0
        SHX13_3 = false
        SHX14_3 = false
        SHX15_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX4_3 = Citizen
        SHX4_3 = SHX4_3.CreateThread
        function SHX5_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
          while true do
            SHX0_4 = SHX15_1
            if "carrying" ~= SHX0_4 then
              break
            end
            SHX0_4 = IsEntityPlayingAnim
            SHX1_4 = PlayerPedId
            SHX1_4 = SHX1_4()
            SHX2_4 = "anim@heists@box_carry@"
            SHX3_4 = "idle"
            SHX4_4 = 3
            SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            if not SHX0_4 then
              SHX0_4 = CMG
              SHX0_4 = SHX0_4.loadAnimDict
              SHX1_4 = "anim@heists@box_carry@"
              SHX0_4(SHX1_4)
              SHX0_4 = TaskPlayAnim
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = "anim@heists@box_carry@"
              SHX3_4 = "idle"
              SHX4_4 = 8.0
              SHX5_4 = 1.0
              SHX6_4 = -1
              SHX7_4 = 49
              SHX8_4 = 0
              SHX9_4 = false
              SHX10_4 = false
              SHX11_4 = false
              SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            end
            SHX0_4 = Wait
            SHX1_4 = 0
            SHX0_4(SHX1_4)
          end
          SHX0_4 = RemoveAnimDict
          SHX1_4 = "anim@heists@box_carry@"
          SHX0_4(SHX1_4)
        end
        SHX4_3(SHX5_3)
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~g~Take the materials to a workstation"
        SHX4_3(SHX5_3)
      end
    end
    function SHX12_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX1_3 = globalInPrison
      if SHX1_3 then
        SHX1_3 = SHX12_1
        if "metalworking" == SHX1_3 then
          SHX1_3 = SHX15_1
          if "carrying" == SHX1_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX1_3 = drawNativeNotification
      SHX2_3 = "Press ~INPUT_CONTEXT~ to start metalworking"
      SHX1_3(SHX2_3)
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX11_1
        if not SHX1_3 then
          SHX1_3 = true
          SHX11_1 = SHX1_3
          SHX1_3 = "working"
          SHX15_1 = SHX1_3
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX2_3 = SHX16_1
          if SHX2_3 then
            SHX2_3 = DoesEntityExist
            SHX3_3 = SHX16_1
            SHX2_3 = SHX2_3(SHX3_3)
            if SHX2_3 then
              SHX2_3 = DeleteEntity
              SHX3_3 = SHX16_1
              SHX2_3(SHX3_3)
            end
          end
          SHX2_3 = nil
          SHX16_1 = SHX2_3
          SHX2_3 = ClearPedTasks
          SHX3_3 = SHX1_3
          SHX2_3(SHX3_3)
          SHX2_3 = FreezeEntityPosition
          SHX3_3 = SHX1_3
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = SetEntityCoords
          SHX3_3 = SHX1_3
          SHX4_3 = SHX0_3.coords
          SHX4_3 = SHX4_3.x
          SHX5_3 = SHX0_3.coords
          SHX5_3 = SHX5_3.y
          SHX6_3 = SHX0_3.coords
          SHX6_3 = SHX6_3.z
          SHX6_3 = SHX6_3 - 1
          SHX7_3 = false
          SHX8_3 = false
          SHX9_3 = false
          SHX10_3 = false
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.setCanAnim
          SHX3_3 = false
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            while true do
              SHX0_4 = SHX15_1
              if "working" ~= SHX0_4 then
                break
              end
              SHX0_4 = IsPedUsingScenario
              SHX1_4 = SHX1_3
              SHX2_4 = SHX9_2.workScenario
              SHX0_4 = SHX0_4(SHX1_4, SHX2_4)
              if not SHX0_4 then
                SHX0_4 = TaskStartScenarioInPlace
                SHX1_4 = SHX1_3
                SHX2_4 = SHX9_2.workScenario
                SHX3_4 = 0
                SHX4_4 = true
                SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
              end
              SHX0_4 = Wait
              SHX1_4 = 200
              SHX0_4(SHX1_4)
            end
          end
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            SHX0_4 = CMG
            SHX0_4 = SHX0_4.startCircularProgressBar
            SHX1_4 = ""
            SHX2_4 = SHX9_2.workDuration
            SHX3_4 = nil
            function SHX4_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5
            end
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            SHX0_4 = SHX15_1
            if "working" ~= SHX0_4 then
              return
            end
            SHX0_4 = FreezeEntityPosition
            SHX1_4 = SHX1_3
            SHX2_4 = false
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = ClearPedTasks
            SHX1_4 = SHX1_3
            SHX0_4(SHX1_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.setCanAnim
            SHX1_4 = true
            SHX0_4(SHX1_4)
            SHX0_4 = "idle"
            SHX15_1 = SHX0_4
            SHX0_4 = ""
            SHX12_1 = SHX0_4
            SHX0_4 = false
            SHX11_1 = SHX0_4
            SHX0_4 = TriggerServerEvent
            SHX1_4 = "e942632666"
            SHX2_4 = "metalworking"
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.notify
            SHX1_4 = "~g~Metalworking complete!"
            SHX0_4(SHX1_4)
          end
          SHX2_3(SHX3_3)
        end
      end
    end
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.createArea
    SHX14_2 = "prisonJob_mw_start"
    SHX15_2 = SHX9_2.startCoords
    SHX16_2 = 2.0
    SHX17_2 = 5.0
    function SHX18_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX19_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX20_2 = SHX10_2
    SHX21_2 = {}
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX13_2 = tCMG
    SHX13_2 = SHX13_2.addPropMarker
    SHX14_2 = "bzzz_marker_point_blue_anim"
    SHX15_2 = SHX9_2.startCoords
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX9_2.startCoords
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX9_2.startCoords
    SHX17_2 = SHX17_2.z
    SHX18_2 = 20.0
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.add3DTextForCoord
    SHX14_2 = "Metalworking"
    SHX15_2 = SHX9_2.startCoords
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX9_2.startCoords
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX9_2.startCoords
    SHX17_2 = SHX17_2.z
    SHX18_2 = 2.2
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.createArea
    SHX14_2 = "prisonJob_mw_storage"
    SHX15_2 = SHX9_2.storageCoords
    SHX16_2 = 2.0
    SHX17_2 = 5.0
    function SHX18_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX19_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX20_2 = SHX11_2
    SHX21_2 = {}
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX13_2 = tCMG
    SHX13_2 = SHX13_2.addPropMarker
    SHX14_2 = "bzzz_marker_point_blue_anim"
    SHX15_2 = SHX9_2.storageCoords
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX9_2.storageCoords
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX9_2.storageCoords
    SHX17_2 = SHX17_2.z
    SHX18_2 = 20.0
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.add3DTextForCoord
    SHX14_2 = "Metal Storage"
    SHX15_2 = SHX9_2.storageCoords
    SHX15_2 = SHX15_2.x
    SHX16_2 = SHX9_2.storageCoords
    SHX16_2 = SHX16_2.y
    SHX17_2 = SHX9_2.storageCoords
    SHX17_2 = SHX17_2.z
    SHX18_2 = 2.2
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX13_2 = ipairs
    SHX14_2 = SHX9_2.stations
    SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
    for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
      SHX19_2 = CMG
      SHX19_2 = SHX19_2.createArea
      SHX20_2 = "prisonJob_mw_station_"
      SHX21_2 = SHX17_2
      SHX20_2 = SHX20_2 .. SHX21_2
      SHX21_2 = SHX18_2
      SHX22_2 = 2.0
      SHX23_2 = 5.0
      function SHX24_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX25_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX26_2 = SHX12_2
      SHX27_2 = {}
      SHX27_2.coords = SHX18_2
      SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
      SHX19_2 = tCMG
      SHX19_2 = SHX19_2.addPropMarker
      SHX20_2 = "bzzz_marker_point_blue_anim"
      SHX21_2 = SHX18_2.x
      SHX22_2 = SHX18_2.y
      SHX23_2 = SHX18_2.z
      SHX24_2 = 20.0
      SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    end
    SHX13_2 = SHX0_1.prisonJobs
    SHX13_2 = SHX13_2.laundry
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "" == SHX0_3 then
          goto SHX_LABEL_8
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
      ::SHX_LABEL_8::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to start Laundry"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "laundry"
        SHX12_1 = SHX0_3
        SHX0_3 = "fetching"
        SHX17_1 = SHX0_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "8c4d6586a3"
        SHX2_3 = "laundry"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Go to the storage to fetch laundry"
        SHX0_3(SHX1_3)
      end
    end
    function SHX15_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
      SHX0_3 = globalInPrison
      if SHX0_3 then
        SHX0_3 = SHX12_1
        if "laundry" == SHX0_3 then
          SHX0_3 = SHX17_1
          if "fetching" == SHX0_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to pick up laundry"
      SHX0_3(SHX1_3)
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 38
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = "carrying"
        SHX17_1 = SHX0_3
        SHX0_3 = PlayerPedId
        SHX0_3 = SHX0_3()
        SHX1_3 = 1302435108
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadModel
        SHX3_3 = SHX1_3
        SHX2_3(SHX3_3)
        SHX2_3 = GetEntityCoords
        SHX3_3 = SHX0_3
        SHX2_3 = SHX2_3(SHX3_3)
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.requestEntitySpawn
        SHX4_3 = "prison_laundry_box"
        SHX5_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3)
        SHX3_3 = CreateObject
        SHX4_3 = SHX1_3
        SHX5_3 = SHX2_3.x
        SHX6_3 = SHX2_3.y
        SHX7_3 = SHX2_3.z
        SHX8_3 = true
        SHX9_3 = true
        SHX10_3 = false
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX18_1 = SHX3_3
        SHX3_3 = SetEntityAsMissionEntity
        SHX4_3 = SHX18_1
        SHX5_3 = true
        SHX6_3 = true
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = GetPedBoneIndex
        SHX4_3 = SHX0_3
        SHX5_3 = 28422
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        SHX4_3 = AttachEntityToEntity
        SHX5_3 = SHX18_1
        SHX6_3 = SHX0_3
        SHX7_3 = SHX3_3
        SHX8_3 = 0.0
        SHX9_3 = 0.02
        SHX10_3 = -0.02
        SHX11_3 = 0.0
        SHX12_3 = 0.0
        SHX13_3 = 0.0
        SHX14_3 = true
        SHX15_3 = true
        SHX16_3 = false
        SHX17_3 = true
        SHX18_3 = 1
        SHX19_3 = true
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX4_3 = SetModelAsNoLongerNeeded
        SHX5_3 = SHX1_3
        SHX4_3(SHX5_3)
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.loadAnimDict
        SHX5_3 = "anim@heists@box_carry@"
        SHX4_3(SHX5_3)
        SHX4_3 = TaskPlayAnim
        SHX5_3 = SHX0_3
        SHX6_3 = "anim@heists@box_carry@"
        SHX7_3 = "idle"
        SHX8_3 = 8.0
        SHX9_3 = 1.0
        SHX10_3 = -1
        SHX11_3 = 49
        SHX12_3 = 0
        SHX13_3 = false
        SHX14_3 = false
        SHX15_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
        SHX4_3 = Citizen
        SHX4_3 = SHX4_3.CreateThread
        function SHX5_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
          while true do
            SHX0_4 = SHX17_1
            if "carrying" ~= SHX0_4 then
              break
            end
            SHX0_4 = IsEntityPlayingAnim
            SHX1_4 = PlayerPedId
            SHX1_4 = SHX1_4()
            SHX2_4 = "anim@heists@box_carry@"
            SHX3_4 = "idle"
            SHX4_4 = 3
            SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            if not SHX0_4 then
              SHX0_4 = CMG
              SHX0_4 = SHX0_4.loadAnimDict
              SHX1_4 = "anim@heists@box_carry@"
              SHX0_4(SHX1_4)
              SHX0_4 = TaskPlayAnim
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = "anim@heists@box_carry@"
              SHX3_4 = "idle"
              SHX4_4 = 8.0
              SHX5_4 = 1.0
              SHX6_4 = -1
              SHX7_4 = 49
              SHX8_4 = 0
              SHX9_4 = false
              SHX10_4 = false
              SHX11_4 = false
              SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            end
            SHX0_4 = Wait
            SHX1_4 = 0
            SHX0_4(SHX1_4)
          end
          SHX0_4 = RemoveAnimDict
          SHX1_4 = "anim@heists@box_carry@"
          SHX0_4(SHX1_4)
        end
        SHX4_3(SHX5_3)
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~g~Take the laundry to a workstation"
        SHX4_3(SHX5_3)
      end
    end
    function SHX16_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX1_3 = globalInPrison
      if SHX1_3 then
        SHX1_3 = SHX12_1
        if "laundry" == SHX1_3 then
          SHX1_3 = SHX17_1
          if "carrying" == SHX1_3 then
            goto SHX_LABEL_11
          end
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
      ::SHX_LABEL_11::
      SHX1_3 = drawNativeNotification
      SHX2_3 = "Press ~INPUT_CONTEXT~ to start laundry"
      SHX1_3(SHX2_3)
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX11_1
        if not SHX1_3 then
          SHX1_3 = true
          SHX11_1 = SHX1_3
          SHX1_3 = "working"
          SHX17_1 = SHX1_3
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX2_3 = SHX18_1
          if SHX2_3 then
            SHX2_3 = DoesEntityExist
            SHX3_3 = SHX18_1
            SHX2_3 = SHX2_3(SHX3_3)
            if SHX2_3 then
              SHX2_3 = DeleteEntity
              SHX3_3 = SHX18_1
              SHX2_3(SHX3_3)
            end
          end
          SHX2_3 = nil
          SHX18_1 = SHX2_3
          SHX2_3 = ClearPedTasks
          SHX3_3 = SHX1_3
          SHX2_3(SHX3_3)
          SHX2_3 = FreezeEntityPosition
          SHX3_3 = SHX1_3
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = SetEntityCoords
          SHX3_3 = SHX1_3
          SHX4_3 = SHX0_3.coords
          SHX4_3 = SHX4_3.x
          SHX5_3 = SHX0_3.coords
          SHX5_3 = SHX5_3.y
          SHX6_3 = SHX0_3.coords
          SHX6_3 = SHX6_3.z
          SHX6_3 = SHX6_3 - 1
          SHX7_3 = false
          SHX8_3 = false
          SHX9_3 = false
          SHX10_3 = false
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
          SHX2_3 = tCMG
          SHX2_3 = SHX2_3.setCanAnim
          SHX3_3 = false
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            while true do
              SHX0_4 = SHX17_1
              if "working" ~= SHX0_4 then
                break
              end
              SHX0_4 = IsPedUsingScenario
              SHX1_4 = SHX1_3
              SHX2_4 = SHX13_2.workScenario
              SHX0_4 = SHX0_4(SHX1_4, SHX2_4)
              if not SHX0_4 then
                SHX0_4 = TaskStartScenarioInPlace
                SHX1_4 = SHX1_3
                SHX2_4 = SHX13_2.workScenario
                SHX3_4 = 0
                SHX4_4 = true
                SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
              end
              SHX0_4 = Wait
              SHX1_4 = 200
              SHX0_4(SHX1_4)
            end
          end
          SHX2_3(SHX3_3)
          SHX2_3 = Citizen
          SHX2_3 = SHX2_3.CreateThread
          function SHX3_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4
            SHX0_4 = CMG
            SHX0_4 = SHX0_4.startCircularProgressBar
            SHX1_4 = ""
            SHX2_4 = SHX13_2.workDuration
            SHX3_4 = nil
            function SHX4_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5
            end
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
            SHX0_4 = SHX17_1
            if "working" ~= SHX0_4 then
              return
            end
            SHX0_4 = FreezeEntityPosition
            SHX1_4 = SHX1_3
            SHX2_4 = false
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = ClearPedTasks
            SHX1_4 = SHX1_3
            SHX0_4(SHX1_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.setCanAnim
            SHX1_4 = true
            SHX0_4(SHX1_4)
            SHX0_4 = "idle"
            SHX17_1 = SHX0_4
            SHX0_4 = ""
            SHX12_1 = SHX0_4
            SHX0_4 = false
            SHX11_1 = SHX0_4
            SHX0_4 = TriggerServerEvent
            SHX1_4 = "e942632666"
            SHX2_4 = "laundry"
            SHX0_4(SHX1_4, SHX2_4)
            SHX0_4 = tCMG
            SHX0_4 = SHX0_4.notify
            SHX1_4 = "~g~Laundry complete!"
            SHX0_4(SHX1_4)
          end
          SHX2_3(SHX3_3)
        end
      end
    end
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.createArea
    SHX18_2 = "prisonJob_lw_start"
    SHX19_2 = SHX13_2.startCoords
    SHX20_2 = 2.0
    SHX21_2 = 5.0
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
    SHX24_2 = SHX14_2
    SHX25_2 = {}
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX17_2 = tCMG
    SHX17_2 = SHX17_2.addPropMarker
    SHX18_2 = "bzzz_marker_point_blue_anim"
    SHX19_2 = SHX13_2.startCoords
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX13_2.startCoords
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX13_2.startCoords
    SHX21_2 = SHX21_2.z
    SHX22_2 = 20.0
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.add3DTextForCoord
    SHX18_2 = "Laundry"
    SHX19_2 = SHX13_2.startCoords
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX13_2.startCoords
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX13_2.startCoords
    SHX21_2 = SHX21_2.z
    SHX22_2 = 2.2
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.createArea
    SHX18_2 = "prisonJob_lw_storage"
    SHX19_2 = SHX13_2.storageCoords
    SHX20_2 = 2.0
    SHX21_2 = 5.0
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
    SHX24_2 = SHX15_2
    SHX25_2 = {}
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX17_2 = tCMG
    SHX17_2 = SHX17_2.addPropMarker
    SHX18_2 = "bzzz_marker_point_blue_anim"
    SHX19_2 = SHX13_2.storageCoords
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX13_2.storageCoords
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX13_2.storageCoords
    SHX21_2 = SHX21_2.z
    SHX22_2 = 20.0
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.add3DTextForCoord
    SHX18_2 = "Laundry Storage"
    SHX19_2 = SHX13_2.storageCoords
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX13_2.storageCoords
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX13_2.storageCoords
    SHX21_2 = SHX21_2.z
    SHX22_2 = 2.2
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX17_2 = ipairs
    SHX18_2 = SHX13_2.stations
    SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2)
    for SHX21_2, SHX22_2 in SHX17_2, SHX18_2, SHX19_2, SHX20_2 do
      SHX23_2 = CMG
      SHX23_2 = SHX23_2.createArea
      SHX24_2 = "prisonJob_lw_station_"
      SHX25_2 = SHX21_2
      SHX24_2 = SHX24_2 .. SHX25_2
      SHX25_2 = SHX22_2
      SHX26_2 = 2.0
      SHX27_2 = 5.0
      function SHX28_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX29_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX30_2 = SHX16_2
      SHX31_2 = {}
      SHX31_2.coords = SHX22_2
      SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
      SHX23_2 = tCMG
      SHX23_2 = SHX23_2.addPropMarker
      SHX24_2 = "bzzz_marker_point_blue_anim"
      SHX25_2 = SHX22_2.x
      SHX26_2 = SHX22_2.y
      SHX27_2 = SHX22_2.z
      SHX28_2 = 20.0
      SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    end
  end
end
SHX43_1(SHX44_1, SHX45_1)
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to call the front desk"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "3c1b3ec57f"
    SHX0_2(SHX1_2)
  end
end
SHX44_1 = CreateThread
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX0_1.frontDeskCoords
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addPropMarker
  SHX2_2 = "bzzz_marker_point_blue_anim"
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 20.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "prisonFrontDesk"
  SHX3_2 = SHX0_2
  SHX4_2 = 2.0
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
  SHX8_2 = SHX43_1
  SHX9_2 = {}
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX44_1(SHX45_1)
SHX44_1 = RMenu
SHX44_1 = SHX44_1.Add
SHX45_1 = "cmgCanteenMenu"
SHX46_1 = "main"
SHX47_1 = RageUI
SHX47_1 = SHX47_1.CreateMenu
SHX48_1 = ""
SHX49_1 = "~b~Canteen"
SHX50_1 = CMG
SHX50_1 = SHX50_1.getRageUIMenuWidth
SHX50_1 = SHX50_1()
SHX51_1 = CMG
SHX51_1 = SHX51_1.getRageUIMenuHeight
SHX51_1 = SHX51_1()
SHX52_1 = "cmg_prisonui"
SHX53_1 = "cmg_prisonui"
SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX44_1(SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX44_1 = RageUI
SHX44_1 = SHX44_1.CreateWhile
SHX45_1 = 1.0
SHX46_1 = RMenu
SHX47_1 = SHX46_1
SHX46_1 = SHX46_1.Get
SHX48_1 = "cmgCanteenMenu"
SHX49_1 = "main"
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1)
SHX47_1 = nil
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgCanteenMenu"
  SHX4_2 = "main"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX0_2 then
    SHX0_2 = SHX0_1.canteen
    if SHX0_2 then
      SHX0_2 = SHX0_1.canteen
      SHX0_2 = SHX0_2.locations
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerCoords
        SHX0_2 = SHX0_2()
        SHX1_2 = math
        SHX1_2 = SHX1_2.huge
        SHX2_2 = ipairs
        SHX3_2 = SHX0_1.canteen
        SHX3_2 = SHX3_2.locations
        SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
        for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
          SHX8_2 = SHX7_2.markerCoords
          SHX8_2 = SHX0_2 - SHX8_2
          SHX8_2 = #SHX8_2
          if SHX1_2 > SHX8_2 then
            SHX1_2 = SHX8_2
          end
        end
        if SHX1_2 > 3.0 then
          SHX2_2 = RageUI
          SHX2_2 = SHX2_2.Visible
          SHX3_2 = RMenu
          SHX4_2 = SHX3_2
          SHX3_2 = SHX3_2.Get
          SHX5_2 = "cmgCanteenMenu"
          SHX6_2 = "main"
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX4_2 = false
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgCanteenMenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getClientDisplayMoney
    SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX0_3()
    SHX5_3 = RageUI
    SHX5_3 = SHX5_3.Separator
    SHX6_3 = "~y~Prison Cash: \194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX4_3
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3(SHX6_3)
    SHX5_3 = RageUI
    SHX5_3 = SHX5_3.Separator
    SHX6_3 = "--"
    SHX5_3(SHX6_3)
    SHX5_3 = SHX0_1.canteen
    if SHX5_3 then
      SHX5_3 = SHX0_1.canteen
      SHX5_3 = SHX5_3.items
      if SHX5_3 then
        SHX5_3 = ipairs
        SHX6_3 = SHX0_1.canteen
        SHX6_3 = SHX6_3.items
        SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
        for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
          SHX11_3 = RageUI
          SHX11_3 = SHX11_3.ButtonWithStyle
          SHX12_3 = SHX10_3.label
          SHX13_3 = ""
          SHX14_3 = {}
          SHX15_3 = "\194\163"
          SHX16_3 = getMoneyStringFormatted
          SHX17_3 = SHX10_3.price
          SHX16_3 = SHX16_3(SHX17_3)
          SHX15_3 = SHX15_3 .. SHX16_3
          SHX14_3.RightLabel = SHX15_3
          SHX15_3 = true
          function SHX16_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "da3fb82270"
              SHX5_4 = SHX10_3.itemId
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX17_3 = nil
          SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
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
SHX44_1(SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX44_1 = CreateThread
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX0_1.canteen
  if SHX0_2 then
    SHX0_2 = SHX0_1.canteen
    SHX0_2 = SHX0_2.locations
    if SHX0_2 then
      SHX0_2 = SHX0_1.canteen
      SHX0_2 = SHX0_2.locations
      SHX0_2 = #SHX0_2
      if 0 ~= SHX0_2 then
        goto SHX_LABEL_14
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = ipairs
  SHX1_2 = SHX0_1.canteen
  SHX1_2 = SHX1_2.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.npcCoords
    SHX7_2 = vector3
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX8_2 = SHX6_2.w
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createDynamicPed
    SHX10_2 = -1313105063
    SHX11_2 = SHX7_2
    SHX12_2 = SHX8_2
    SHX13_2 = true
    SHX14_2 = nil
    SHX15_2 = nil
    SHX16_2 = 100.0
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
    SHX9_2 = SHX5_2.markerCoords
    SHX10_2 = tCMG
    SHX10_2 = SHX10_2.addPropMarker
    SHX11_2 = "bzzz_marker_point_blue_anim"
    SHX12_2 = SHX9_2.x
    SHX13_2 = SHX9_2.y
    SHX14_2 = SHX9_2.z
    SHX15_2 = 20.0
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = "prisonCanteen_"
    SHX11_2 = SHX4_2
    SHX10_2 = SHX10_2 .. SHX11_2
    function SHX11_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = globalInPrison
      if not SHX0_3 then
        return
      end
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getPlayerCoords
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX9_2
      SHX1_3 = SHX0_3 - SHX1_3
      SHX1_3 = #SHX1_3
      if SHX1_3 < 2.0 then
        SHX2_3 = drawNativeNotification
        SHX3_3 = "Press ~INPUT_CONTEXT~ to use Canteen"
        SHX2_3(SHX3_3)
        SHX2_3 = IsControlJustPressed
        SHX3_3 = 0
        SHX4_3 = 38
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.Visible
          SHX3_3 = RMenu
          SHX4_3 = SHX3_3
          SHX3_3 = SHX3_3.Get
          SHX5_3 = "cmgCanteenMenu"
          SHX6_3 = "main"
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
        end
      end
    end
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.createArea
    SHX13_2 = SHX10_2
    SHX14_2 = SHX9_2
    SHX15_2 = 2.0
    SHX16_2 = 5.0
    function SHX17_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX18_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX19_2 = SHX11_2
    SHX20_2 = {}
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
end
SHX44_1(SHX45_1)
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerId
  SHX0_2 = SHX0_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = globalInPrison
  if SHX2_2 then
    SHX2_2 = GetInteriorFromEntity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 283138 == SHX2_2 then
      SHX2_2 = SetPlayerFallDistance
      SHX3_2 = SHX0_2
      SHX4_2 = 50.0
      SHX2_2(SHX3_2, SHX4_2)
  end
  else
    SHX2_2 = SetPlayerFallDistance
    SHX3_2 = SHX0_2
    SHX4_2 = 5.0
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX45_1 = RegisterNetEvent
SHX46_1 = "ec52c14caa"
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_1 = SHX0_2
  SHX1_2 = globalInPrison
  if SHX1_2 ~= SHX0_2 then
    if SHX0_2 then
      SHX1_2 = false
      SHX31_1 = SHX1_2
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setCanOpenPhone
    SHX2_2 = not SHX0_2
    SHX1_2(SHX2_2)
  end
  globalInPrison = SHX0_2
  SHX1_2 = SHX44_1
  SHX1_2()
  if SHX0_2 then
    SHX1_2 = SHX38_1
    SHX1_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.forceNearbyAreasReload
    SHX1_2()
  end
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "8528e00cf5"
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = false
  SHX19_1 = SHX1_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 60
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 < 60 then
    SHX21_1 = SHX1_2
    SHX2_2 = math
    SHX2_2 = SHX2_2.ceil
    SHX3_2 = SHX21_1
    SHX3_2 = SHX3_2 * 60
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX0_2 - SHX2_2
    SHX22_1 = SHX2_2
  else
    SHX2_2 = math
    SHX2_2 = SHX2_2.floor
    SHX3_2 = SHX1_2 / 60
    SHX2_2 = SHX2_2(SHX3_2)
    SHX20_1 = SHX2_2
    SHX2_2 = math
    SHX2_2 = SHX2_2.ceil
    SHX3_2 = SHX20_1
    SHX3_2 = SHX3_2 * 60
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2 = SHX1_2 - SHX2_2
    SHX21_1 = SHX2_2
    SHX2_2 = SHX1_2 * 60
    SHX2_2 = SHX0_2 - SHX2_2
    SHX22_1 = SHX2_2
  end
  SHX2_2 = true
  SHX19_1 = SHX2_2
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "22152713e0"
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = 0
  SHX20_1 = SHX0_2
  SHX0_2 = 0
  SHX21_1 = SHX0_2
  SHX0_2 = 0
  SHX22_1 = SHX0_2
  SHX0_2 = false
  SHX19_1 = SHX0_2
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = Citizen
SHX45_1 = SHX45_1.CreateThread
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SetAmbientZoneState
  SHX1_2 = "az_countryside_prison_01_announcer_general"
  SHX2_2 = false
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  while true do
    SHX0_2 = globalInPrison
    if SHX0_2 then
      SHX0_2 = SHX19_1
      if SHX0_2 then
        SHX0_2 = SHX22_1
        SHX0_2 = SHX0_2 - 1
        SHX22_1 = SHX0_2
        SHX0_2 = SHX22_1
        if SHX0_2 < 0 then
          SHX0_2 = 59
          SHX22_1 = SHX0_2
          SHX0_2 = SHX21_1
          SHX0_2 = SHX0_2 - 1
          SHX21_1 = SHX0_2
          SHX0_2 = SHX21_1
          if SHX0_2 < 0 then
            SHX0_2 = 59
            SHX21_1 = SHX0_2
            SHX0_2 = SHX20_1
            SHX0_2 = SHX0_2 - 1
            SHX20_1 = SHX0_2
            SHX0_2 = SHX20_1
            if SHX0_2 < 0 then
              SHX0_2 = false
              SHX19_1 = SHX0_2
            end
          end
        end
      end
      SHX0_2 = SHX40_1
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = SHX31_1
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.setCanOpenPhone
          SHX1_2 = true
          SHX0_2(SHX1_2)
          SHX0_2 = true
          SHX31_1 = SHX0_2
        end
      else
        SHX0_2 = SHX31_1
        if SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.setCanOpenPhone
          SHX1_2 = false
          SHX0_2(SHX1_2)
          SHX0_2 = false
          SHX31_1 = SHX0_2
        end
      end
    else
      SHX0_2 = SHX31_1
      if SHX0_2 then
        SHX0_2 = false
        SHX31_1 = SHX0_2
      end
    end
    SHX0_2 = SHX29_1
    if 0 ~= SHX0_2 then
      SHX0_2 = SHX0_1.segregationAreas
      SHX1_2 = SHX29_1
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerCoords
      SHX1_2 = SHX1_2()
      SHX1_2 = SHX1_2 - SHX0_2
      SHX1_2 = #SHX1_2
      if SHX1_2 > 10.0 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.teleport
        SHX3_2 = SHX0_2
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX45_1(SHX46_1)
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX20_1
  if 0 == SHX0_2 then
    SHX0_2 = SHX22_1
    if SHX0_2 < 10 then
      SHX0_2 = SHX21_1
      SHX1_2 = ":"
      SHX2_2 = "0"
      SHX3_2 = SHX22_1
      SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2 .. SHX3_2
      return SHX0_2
    end
    SHX0_2 = SHX21_1
    SHX1_2 = ":"
    SHX2_2 = SHX22_1
    SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2
    return SHX0_2
  end
  SHX0_2 = SHX21_1
  if SHX0_2 < 10 then
    SHX0_2 = SHX22_1
    if SHX0_2 < 10 then
      SHX0_2 = "0"
      SHX1_2 = SHX20_1
      SHX2_2 = ":"
      SHX3_2 = "0"
      SHX4_2 = SHX21_1
      SHX5_2 = ":"
      SHX6_2 = "0"
      SHX7_2 = SHX22_1
      SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
      return SHX0_2
    end
    SHX0_2 = "0"
    SHX1_2 = SHX20_1
    SHX2_2 = ":"
    SHX3_2 = "0"
    SHX4_2 = SHX21_1
    SHX5_2 = ":"
    SHX6_2 = SHX22_1
    SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
    return SHX0_2
  end
  SHX0_2 = "0"
  SHX1_2 = SHX20_1
  SHX2_2 = ":"
  SHX3_2 = SHX21_1
  SHX4_2 = ":"
  SHX5_2 = SHX22_1
  SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2
  return SHX0_2
end
SHX46_1 = CMG
SHX46_1 = SHX46_1.registerHudTimerBarProvider
SHX47_1 = "prisonHud"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = globalInPrison
  if SHX1_2 then
    SHX1_2 = SHX19_1
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPrisonerTagged
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = "Leg Tag: "
    SHX3_2 = "Active"
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "Time Left: "
  SHX3_2 = SHX45_1
  SHX3_2 = SHX3_2()
  SHX1_2(SHX2_2, SHX3_2)
end
SHX46_1(SHX47_1, SHX48_1)
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = globalInPrison
  if SHX0_2 then
    SHX0_2 = SHX44_1
    SHX0_2()
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "prisonHud"
  SHX2_2 = globalInPrison
  if SHX2_2 then
    SHX2_2 = SHX19_1
  end
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX25_1
  if SHX0_2 then
    SHX0_2 = SHX24_1
    if SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX26_1
      SHX1_2 = SHX0_2 - SHX1_2
      if SHX1_2 > 50 then
        SHX1_2 = SHX27_1
        SHX1_2 = SHX1_2 + 1
        SHX27_1 = SHX1_2
        SHX1_2 = SHX27_1
        SHX2_2 = SHX0_1.riotLightPositions
        SHX2_2 = #SHX2_2
        if SHX1_2 > SHX2_2 then
          SHX1_2 = 1
          SHX27_1 = SHX1_2
        end
        SHX1_2 = SHX0_1.riotLightPositions
        SHX2_2 = SHX27_1
        SHX1_2 = SHX1_2[SHX2_2]
        SHX2_2 = DrawLightWithRange
        SHX3_2 = SHX1_2.x
        SHX3_2 = SHX3_2 - 0.5
        SHX4_2 = SHX1_2.y
        SHX4_2 = SHX4_2 - 0.5
        SHX5_2 = SHX1_2.z
        SHX6_2 = 255
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 10.0
        SHX10_2 = 1.0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX2_2 = DrawLightWithRange
        SHX3_2 = SHX1_2.x
        SHX3_2 = SHX3_2 + 0.5
        SHX4_2 = SHX1_2.y
        SHX4_2 = SHX4_2 + 0.5
        SHX5_2 = SHX1_2.z
        SHX6_2 = 255
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 10.0
        SHX10_2 = 1.0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX2_2 = DrawLightWithRange
        SHX3_2 = SHX1_2.x
        SHX4_2 = SHX1_2.y
        SHX5_2 = SHX1_2.z
        SHX6_2 = 255
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 10.0
        SHX10_2 = 1.0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX26_1 = SHX0_2
      end
    end
  end
end
SHX47_1 = CMG
SHX47_1 = SHX47_1.createThreadOnTick
SHX48_1 = SHX46_1
SHX49_1 = "Prison Timer Bars"
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = RegisterNetEvent
SHX48_1 = "dacfb5dab5"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = false
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to start cutting the wires"
    SHX0_3(SHX1_3)
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
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX1_3 = IsControlJustPressed
    SHX2_3 = 0
    SHX3_3 = 38
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
    if SHX1_3 then
      SHX1_3 = SHX10_1
      if not SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.TriggerServerCallback
        SHX2_3 = "de93932868"
        SHX1_3 = SHX1_3(SHX2_3)
        if SHX1_3 then
          SHX1_3 = true
          SHX10_1 = SHX1_3
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.loadAnimDict
          SHX2_3 = "anim@gangops@facility@servers@"
          SHX1_3(SHX2_3)
          SHX1_3 = FreezeEntityPosition
          SHX2_3 = PlayerPedId
          SHX2_3 = SHX2_3()
          SHX3_3 = true
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = TaskPlayAnim
          SHX2_3 = PlayerPedId
          SHX2_3 = SHX2_3()
          SHX3_3 = "anim@gangops@facility@servers@"
          SHX4_3 = "hotwire"
          SHX5_3 = 8.0
          SHX6_3 = 1.0
          SHX7_3 = -1
          SHX8_3 = 1
          SHX9_3 = 0
          SHX10_3 = false
          SHX11_3 = false
          SHX12_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          SHX1_3 = SetEntityHeading
          SHX2_3 = PlayerPedId
          SHX2_3 = SHX2_3()
          SHX3_3 = SHX0_3.escapePoint
          SHX3_3 = SHX3_3.heading
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.notify
          SHX2_3 = "~g~Started wire cutting (Press X to cancel)"
          SHX1_3(SHX2_3)
          SHX1_3 = Citizen
          SHX1_3 = SHX1_3.CreateThread
          function SHX2_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
            SHX0_4 = SetTimeout
            SHX1_4 = 60000
            function SHX2_4()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_5, SHX1_5
              SHX0_5 = SHX10_1
              if SHX0_5 then
                SHX0_5 = true
                SHX0_2 = SHX0_5
                SHX0_5 = false
                SHX10_1 = SHX0_5
              end
            end
            SHX0_4(SHX1_4, SHX2_4)
            while true do
              SHX0_4 = SHX10_1
              if not SHX0_4 then
                break
              end
              SHX0_4 = IsEntityPlayingAnim
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = "anim@gangops@facility@servers@"
              SHX3_4 = "hotwire"
              SHX4_4 = 3
              SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
              if not SHX0_4 then
                SHX0_4 = TaskPlayAnim
                SHX1_4 = PlayerPedId
                SHX1_4 = SHX1_4()
                SHX2_4 = "anim@gangops@facility@servers@"
                SHX3_4 = "hotwire"
                SHX4_4 = 8.0
                SHX5_4 = 1.0
                SHX6_4 = -1
                SHX7_4 = 1
                SHX8_4 = 0
                SHX9_4 = false
                SHX10_4 = false
                SHX11_4 = false
                SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
              end
              SHX0_4 = Wait
              SHX1_4 = 200
              SHX0_4(SHX1_4)
            end
            SHX0_4 = RemoveAnimDict
            SHX1_4 = "anim@gangops@facility@servers@"
            SHX0_4(SHX1_4)
            SHX0_4 = SHX0_2
            if SHX0_4 then
              SHX0_4 = FreezeEntityPosition
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = false
              SHX0_4(SHX1_4, SHX2_4)
              SHX0_4 = ClearPedTasks
              SHX1_4 = PlayerPedId
              SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX1_4()
              SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
              SHX0_4 = TriggerServerEvent
              SHX1_4 = "7fce518417"
              SHX0_4(SHX1_4)
              SHX0_4 = GetOffsetFromEntityInWorldCoords
              SHX1_4 = PlayerPedId
              SHX1_4 = SHX1_4()
              SHX2_4 = 0.0
              SHX3_4 = 2.5
              SHX4_4 = 0.0
              SHX0_4 = SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4)
              SHX1_4 = tCMG
              SHX1_4 = SHX1_4.teleport
              SHX2_4 = SHX0_4.x
              SHX3_4 = SHX0_4.y
              SHX4_4 = SHX0_4.z
              SHX1_4(SHX2_4, SHX3_4, SHX4_4)
            end
          end
          SHX1_3(SHX2_3)
        else
          SHX1_3 = tCMG
          SHX1_3 = SHX1_3.notify
          SHX2_3 = "~r~You do not have the required equipment!"
          SHX1_3(SHX2_3)
        end
      end
    end
    SHX1_3 = IsControlJustPressed
    SHX2_3 = 0
    SHX3_3 = 73
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
    if SHX1_3 then
      SHX1_3 = SHX10_1
      if SHX1_3 then
        SHX1_3 = false
        SHX10_1 = SHX1_3
        SHX1_3 = ClearPedTasks
        SHX2_3 = PlayerPedId
        SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX2_3()
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        SHX1_3 = FreezeEntityPosition
        SHX2_3 = PlayerPedId
        SHX2_3 = SHX2_3()
        SHX3_3 = false
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = tCMG
        SHX1_3 = SHX1_3.notify
        SHX2_3 = "~r~Wire cutting cancelled!"
        SHX1_3(SHX2_3)
      end
    end
  end
  SHX4_2 = 1
  SHX5_2 = SHX0_1.escapePoints
  SHX5_2 = #SHX5_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = tCMG
    SHX8_2 = SHX8_2.addMarker
    SHX9_2 = SHX0_1.escapePoints
    SHX9_2 = SHX9_2[SHX7_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.x
    SHX10_2 = SHX0_1.escapePoints
    SHX10_2 = SHX10_2[SHX7_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.y
    SHX11_2 = SHX0_1.escapePoints
    SHX11_2 = SHX11_2[SHX7_2]
    SHX11_2 = SHX11_2.coords
    SHX11_2 = SHX11_2.z
    SHX12_2 = 0.6
    SHX13_2 = 0.6
    SHX14_2 = 0.6
    SHX15_2 = 200
    SHX16_2 = 0
    SHX17_2 = 0
    SHX18_2 = 255
    SHX19_2 = 70
    SHX20_2 = 0
    SHX21_2 = false
    SHX22_2 = true
    SHX23_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "prisonEscapeArea_"
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX0_1.escapePoints
    SHX10_2 = SHX10_2[SHX7_2]
    SHX10_2 = SHX10_2.coords
    SHX11_2 = 2.0
    SHX12_2 = 5.0
    SHX13_2 = SHX1_2
    SHX14_2 = SHX2_2
    SHX15_2 = SHX3_2
    SHX16_2 = {}
    SHX17_2 = SHX0_1.escapePoints
    SHX17_2 = SHX17_2[SHX7_2]
    SHX16_2.escapePoint = SHX17_2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
  SHX4_2 = TriggerEvent
  SHX5_2 = "aee0b08546"
  SHX4_2(SHX5_2)
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = RegisterNetEvent
SHX48_1 = "b296a71df4"
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "19f123276f"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = true
    SHX7_1 = SHX0_2
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "cmgPayBailMenu"
    SHX4_2 = "main"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = SHX31_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setCanOpenPhone
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX31_1 = SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPrisonerTagged
  SHX0_2 = SHX0_2()
  SHX1_2 = false
  SHX1_1 = SHX1_2
  SHX1_2 = globalInPrison
  if SHX1_2 then
    SHX1_2 = SHX30_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setCanOpenPhone
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX30_1 = SHX1_2
    end
  end
  SHX1_2 = 0
  SHX29_1 = SHX1_2
  globalInPrison = false
  SHX1_2 = SHX44_1
  SHX1_2()
  SHX1_2 = SHX12_1
  if "" ~= SHX1_2 then
    SHX1_2 = SHX14_1
    if SHX1_2 then
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX14_1
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = DeleteEntity
        SHX2_2 = SHX14_1
        SHX1_2(SHX2_2)
      end
    end
    SHX1_2 = nil
    SHX14_1 = SHX1_2
    SHX1_2 = "idle"
    SHX13_1 = SHX1_2
    SHX1_2 = SHX16_1
    if SHX1_2 then
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX16_1
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = DeleteEntity
        SHX2_2 = SHX16_1
        SHX1_2(SHX2_2)
      end
    end
    SHX1_2 = nil
    SHX16_1 = SHX1_2
    SHX1_2 = "idle"
    SHX15_1 = SHX1_2
    SHX1_2 = SHX18_1
    if SHX1_2 then
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX18_1
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = DeleteEntity
        SHX2_2 = SHX18_1
        SHX1_2(SHX2_2)
      end
    end
    SHX1_2 = nil
    SHX18_1 = SHX1_2
    SHX1_2 = "idle"
    SHX17_1 = SHX1_2
    SHX1_2 = ""
    SHX12_1 = SHX1_2
    SHX1_2 = false
    SHX11_1 = SHX1_2
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = ClearPedTasks
    SHX2_2 = PlayerPedId
    SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.setCanAnim
    SHX2_2 = true
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.stopCircularProgressBar
    SHX1_2()
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~g~You have been released!"
  SHX1_2(SHX2_2)
  if not SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.teleport
    SHX2_2 = SHX0_1.prisonLeaveCoords
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_1.prisonLeaveCoords
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_1.prisonLeaveCoords
    SHX4_2 = SHX4_2.z
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
    SHX1_2 = SetEntityHeading
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = 274.58
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX37_1
  SHX1_2()
  SHX1_2 = false
  SHX19_1 = SHX1_2
  SHX1_2 = 0
  SHX21_1 = SHX1_2
  SHX1_2 = 0
  SHX22_1 = SHX1_2
  if not SHX0_2 then
    SHX1_2 = GetResourceKvpString
    SHX2_2 = "cmg_customisation_before_prison"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = json
      SHX2_2 = SHX2_2.decode
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX3_2 = tCMG
        SHX3_2 = SHX3_2.setCustomization
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
      end
    end
  end
end
SHX47_1(SHX48_1, SHX49_1)
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetEntityModel
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if 1885233650 == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadCustomisationPreset
    SHX2_2 = "PrisonerMale"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadCustomisationPreset
    SHX2_2 = "PrisonerFemale"
    SHX1_2(SHX2_2)
  end
end
SHX48_1 = RegisterNetEvent
SHX49_1 = "d662821448"
function SHX50_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 5000
  SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2 - 5
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.teleport
  SHX3_2 = SHX0_1.prisonCells
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_1.prisonCells
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_1.prisonCells
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = true
  SHX1_1 = SHX2_2
  SHX2_2 = false
  SHX31_1 = SHX2_2
  SHX2_2 = globalInPrison
  if not SHX2_2 then
    SHX2_2 = SHX30_1
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.setCanOpenPhone
      SHX3_2 = false
      SHX2_2(SHX3_2)
      SHX2_2 = true
      SHX30_1 = SHX2_2
    end
  end
  globalInPrison = true
  SHX2_1 = SHX0_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 100
  SHX2_2(SHX3_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_1.prisonCells
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.w
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX38_1
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.forceNearbyAreasReload
  SHX2_2()
  SHX2_2 = GetEntityModel
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if 1885233650 ~= SHX2_2 and -1667301416 ~= SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.setCustomization
    SHX4_2 = {}
    SHX4_2.modelhash = 1885233650
    SHX3_2(SHX4_2)
  end
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 2000
  SHX3_2(SHX4_2)
  SHX3_2 = SHX47_1
  SHX3_2()
end
SHX48_1(SHX49_1, SHX50_1)
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.spawnVehicle
  SHX2_2 = -2007026063
  SHX3_2 = SHX0_2.vanPosition
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.vanPosition
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.vanPosition
  SHX5_2 = SHX5_2.z
  SHX6_2 = SHX0_2.vanPosition
  SHX6_2 = SHX6_2.w
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SetVehicleOnGroundProperly
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = 1456041926
  SHX2_2(SHX3_2)
  SHX2_2 = CreatePedInsideVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = 6
  SHX5_2 = 1456041926
  SHX6_2 = -1
  SHX7_2 = false
  SHX8_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = 1456041926
  SHX3_2(SHX4_2)
  SHX3_2 = TaskVehicleDriveToCoordLongrange
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX0_1.prisonArriveCoords
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX0_1.prisonArriveCoords
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX0_1.prisonArriveCoords
  SHX8_2 = SHX8_2.z
  SHX9_2 = 150.0
  SHX10_2 = 1
  SHX11_2 = 10
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = nil
  SHX5_2 = SHX0_2.type
  if "focus" == SHX5_2 then
    SHX5_2 = CreateCam
    SHX6_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX7_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2 = SHX5_2
    SHX5_2 = SetCamCoord
    SHX6_2 = SHX4_2
    SHX7_2 = SHX0_2.camPosition
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX0_2.camPosition
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX0_2.camPosition
    SHX9_2 = SHX9_2.z
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = PointCamAtEntity
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = RenderScriptCams
    SHX6_2 = true
    SHX7_2 = false
    SHX8_2 = 0
    SHX9_2 = false
    SHX10_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = SetPedIntoVehicle
    SHX6_2 = SHX3_2
    SHX7_2 = SHX1_2
    SHX8_2 = 1
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  else
    SHX5_2 = SetPedIntoVehicle
    SHX6_2 = SHX3_2
    SHX7_2 = SHX1_2
    SHX8_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SetEntityVisible
    SHX6_2 = SHX3_2
    SHX7_2 = false
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SetFollowVehicleCamViewMode
    SHX6_2 = 4
    SHX5_2(SHX6_2)
  end
  SHX5_2 = DoScreenFadeIn
  SHX6_2 = 500
  SHX5_2(SHX6_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  while true do
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    SHX7_2 = SHX0_2.durationMsec
    if not (SHX6_2 < SHX7_2) then
      break
    end
    SHX6_2 = GetEntityForwardVector
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX6_2 = 15.0 * SHX6_2
    SHX7_2 = SetEntityVelocity
    SHX8_2 = SHX1_2
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX6_2.z
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX6_2 = DoScreenFadeOut
  SHX7_2 = 500
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = IsScreenFadedOut
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  if SHX4_2 then
    SHX6_2 = RenderScriptCams
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = 0
    SHX10_2 = false
    SHX11_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SetCamActive
    SHX7_2 = SHX4_2
    SHX8_2 = false
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = DestroyCam
    SHX7_2 = SHX4_2
    SHX8_2 = false
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX6_2 = SetFollowVehicleCamViewMode
  SHX7_2 = 2
  SHX6_2(SHX7_2)
  SHX6_2 = DeleteEntity
  SHX7_2 = SHX2_2
  SHX6_2(SHX7_2)
  SHX6_2 = DeleteEntity
  SHX7_2 = SHX1_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityVisible
  SHX7_2 = SHX3_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetFollowPedCamViewMode
  SHX7_2 = 2
  SHX6_2(SHX7_2)
end
SHX49_1 = RegisterNetEvent
SHX50_1 = "c1a91c4aaa"
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = IsScreenFadedOut
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.getCustomization
  SHX1_2 = SHX1_2()
  SHX2_2 = SetResourceKvp
  SHX3_2 = "cmg_customisation_before_prison"
  SHX4_2 = json
  SHX4_2 = SHX4_2.encode
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DetachEntity
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX47_1
  SHX2_2()
  SHX2_2 = SHX39_1
  SHX2_2 = SHX2_2()
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.teleport
  SHX4_2 = SHX2_2.coords
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX2_2.coords
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX2_2.coords
  SHX6_2 = SHX6_2.z
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = SetPlayerControl
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = false
  SHX6_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hideAllDisplays
  SHX4_2 = "prisonbus"
  SHX3_2(SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.cinematics
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX48_1
    SHX10_2 = SHX8_2
    SHX9_2(SHX10_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = -2007026063
  SHX5_2 = SHX0_1.prisonArriveCoords
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX0_1.prisonArriveCoords
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX0_1.prisonArriveCoords
  SHX7_2 = SHX7_2.z
  SHX8_2 = SHX0_1.prisonArriveCoords
  SHX8_2 = SHX8_2.w
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetVehicleOnGroundProperly
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SetEntityCoords
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_1.prisonArrivePedStart
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX0_1.prisonArrivePedStart
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX0_1.prisonArrivePedStart
  SHX9_2 = SHX9_2.z
  SHX10_2 = true
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = TaskGoToCoordAnyMeans
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_1.prisonArriveMainDoor
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX0_1.prisonArriveMainDoor
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX0_1.prisonArriveMainDoor
  SHX9_2 = SHX9_2.z
  SHX10_2 = 1.0
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = 786603
  SHX14_2 = 0.0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  while true do
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    SHX7_2 = 8000
    if not (SHX6_2 < SHX7_2) then
      break
    end
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - SHX5_2
    SHX7_2 = 500
    if SHX6_2 > SHX7_2 then
      SHX6_2 = DoScreenFadeIn
      SHX7_2 = 500
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SetFollowPedCamViewMode
    SHX7_2 = 2
    SHX6_2(SHX7_2)
    SHX6_2 = SetGameplayCamRelativePitch
    SHX7_2 = 0.0
    SHX8_2 = 1.0
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetGameplayCamRelativeHeading
    SHX7_2 = 0.0
    SHX6_2(SHX7_2)
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = DoScreenFadeOut
  SHX7_2 = 500
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = IsScreenFadedOut
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = DeleteEntity
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.setCanAnim
  SHX7_2 = true
  SHX6_2(SHX7_2)
  SHX6_2 = SetPlayerControl
  SHX7_2 = PlayerId
  SHX7_2 = SHX7_2()
  SHX8_2 = true
  SHX9_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = SHX4_2
  SHX6_2(SHX7_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.teleport
  SHX7_2 = SHX0_1.prisonCells
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX0_1.prisonCells
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX0_1.prisonCells
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 100
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityHeading
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX0_1.prisonCells
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.w
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "37a28d3080"
  SHX6_2(SHX7_2)
  SHX6_2 = true
  SHX1_1 = SHX6_2
  SHX6_2 = false
  SHX31_1 = SHX6_2
  SHX6_2 = globalInPrison
  if not SHX6_2 then
    SHX6_2 = SHX30_1
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.setCanOpenPhone
      SHX7_2 = false
      SHX6_2(SHX7_2)
      SHX6_2 = true
      SHX30_1 = SHX6_2
    end
  end
  globalInPrison = true
  SHX2_1 = SHX0_2
  SHX6_2 = SHX38_1
  SHX6_2()
  SHX6_2 = DoScreenFadeIn
  SHX7_2 = 500
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.showAllDisplays
  SHX7_2 = "prisonbus"
  SHX6_2(SHX7_2)
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = RegisterNetEvent
SHX50_1 = "c1880029f0"
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX0_1.medicalBayBed
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = 300
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = true
  SHX1_1 = SHX2_2
  SHX2_2 = SHX38_1
  SHX2_2()
  SHX2_2 = SetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.w
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = TriggerEvent
  SHX3_2 = "5276360f55"
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = SHX0_1.medicalBayCamera
  SHX3_2 = CreateCameraWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 65.0
  SHX12_2 = false
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX8_2 = SHX8_2 + 0.3
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamActive
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = 500
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.isSittingOnChair
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 200
    SHX4_2(SHX5_2)
  end
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 2000
  SHX4_2(SHX5_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = false
  SHX6_2 = true
  SHX7_2 = 2000
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 2000
  SHX4_2(SHX5_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX1_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showHud
  SHX4_2()
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = RegisterNetEvent
SHX50_1 = "f8ff0f9e26"
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.teleport
  SHX1_2 = SHX0_1.prisonCells
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.x
  SHX2_2 = SHX0_1.prisonCells
  SHX3_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.y
  SHX3_2 = SHX0_1.prisonCells
  SHX4_2 = SHX2_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.z
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = true
  SHX1_1 = SHX0_2
  SHX0_2 = SHX38_1
  SHX0_2()
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = RMenu
SHX49_1 = SHX49_1.Add
SHX50_1 = "cmgPayBailMenu"
SHX51_1 = "main"
SHX52_1 = RageUI
SHX52_1 = SHX52_1.CreateMenu
SHX53_1 = ""
SHX54_1 = "~b~Pay Bail"
SHX55_1 = CMG
SHX55_1 = SHX55_1.getRageUIMenuWidth
SHX55_1 = SHX55_1()
SHX56_1 = CMG
SHX56_1 = SHX56_1.getRageUIMenuHeight
SHX56_1 = SHX56_1()
SHX57_1 = "cmg_prisonui"
SHX58_1 = "cmg_prisonui"
SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1)
SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX49_1 = RageUI
SHX49_1 = SHX49_1.CreateWhile
SHX50_1 = 1.0
SHX51_1 = RMenu
SHX52_1 = SHX51_1
SHX51_1 = SHX51_1.Get
SHX53_1 = "cmgPayBailMenu"
SHX54_1 = "main"
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX52_1 = nil
function SHX53_1()
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
  SHX3_2 = "cmgPayBailMenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX0_1.bailPricePerMinute
    SHX1_3 = SHX21_1
    SHX0_3 = SHX0_3 * SHX1_3
    if 0 == SHX0_3 then
      SHX0_3 = SHX0_1.bailPricePerMinute
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Pay your bail to get out of jail early"
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Bail price \194\163"
    SHX3_3 = getMoneyStringFormatted
    SHX4_3 = SHX0_3
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 .. SHX3_3
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "--"
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Pay Bail"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\240\159\145\174"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "34ab200e5c"
        SHX3_4(SHX4_4)
      end
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
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
SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX49_1 = RegisterCommand
SHX50_1 = "viewprisoners"
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "prisonguard.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX23_1
    if SHX0_2 then
      SHX0_2 = false
      SHX23_1 = SHX0_2
    else
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.TriggerServerCallback
      SHX1_2 = "794bd36646"
      SHX0_2 = SHX0_2(SHX1_2)
      if nil ~= SHX0_2 then
        SHX1_2 = true
        SHX23_1 = SHX1_2
        SHX1_2 = SHX33_1
        SHX2_2 = SHX0_2
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX52_1 = false
SHX49_1(SHX50_1, SHX51_1, SHX52_1)
SHX49_1 = exports
SHX50_1 = "isPlayerNearPrison"
SHX51_1 = CMG
SHX51_1 = SHX51_1.isPlayerNearPrison
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = exports
SHX50_1 = "isPlayerInPrison"
SHX51_1 = CMG
SHX51_1 = SHX51_1.isPlayerInPrison
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = true
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CanPedRagdoll
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX49_1 = SHX1_2
  SHX1_2 = SetPedCanRagdoll
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdollFromPlayerImpact
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetPedCanRagdoll
  SHX2_2 = SHX0_2
  SHX3_2 = SHX49_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdollFromPlayerImpact
  SHX2_2 = SHX0_2
  SHX3_2 = SHX49_1
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = IsPedRagdoll
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = IsPedBeingStunned
    SHX2_2 = SHX0_2
    SHX3_2 = 0
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasCustomStunEffect
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = ClearPedTasksImmediately
        SHX2_2 = SHX0_2
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX53_1 = CMG
SHX53_1 = SHX53_1.createArea
SHX54_1 = "prison_noragdoll"
SHX55_1 = vector3
SHX56_1 = 1763.9005126953
SHX57_1 = 2592.86328125
SHX58_1 = 50.549797058105
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1)
SHX56_1 = 7.5
SHX57_1 = 5.0
SHX58_1 = SHX50_1
SHX59_1 = SHX51_1
SHX60_1 = SHX52_1
SHX61_1 = {}
SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1)
SHX53_1 = vector3
SHX54_1 = 1684.822266
SHX55_1 = 2581.853516
SHX56_1 = 62.2134246
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1)
SHX54_1 = 230.0
SHX55_1 = 205.0
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tonumber
  SHX1_2 = GlobalState
  SHX1_2 = SHX1_2.cmgHackingPrisonNoFlyDisabledUntil
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = 0
  end
  if SHX0_2 <= 0 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getEstimatedServerOsTime
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX0_2 > SHX1_2
  return SHX1_2
end
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = SHX56_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 or not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX2_2.xy
  SHX4_2 = SHX53_1.xy
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = #SHX3_2
  SHX4_2 = SHX54_1
  if not (SHX3_2 > SHX4_2) then
    SHX4_2 = SHX2_2.z
    SHX5_2 = 45.2
    if not (SHX4_2 < SHX5_2) then
      goto SHX_LABEL_30
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX4_2 = GetEntityHeightAboveGround
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 < 5.0 then
    return
  end
  SHX5_2 = GetEntityModel
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = IsThisModelAHeli
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = IsThisModelAPlane
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      goto SHX_LABEL_50
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
  ::SHX_LABEL_50::
  SHX6_2 = SHX55_1
  SHX6_2 = SHX3_2 - SHX6_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.max
  SHX8_2 = SHX54_1
  SHX9_2 = SHX55_1
  SHX8_2 = SHX8_2 - SHX9_2
  SHX8_2 = SHX6_2 / SHX8_2
  SHX9_2 = 0.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = SHX7_2 * 111.76
  SHX9_2 = 1.0
  SHX9_2 = SHX9_2 - SHX7_2
  SHX9_2 = SHX9_2 * 25.0
  SHX10_2 = norm
  SHX11_2 = SHX53_1
  SHX11_2 = SHX11_2 - SHX2_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = GetEntityVelocity
  SHX12_2 = SHX0_2
  SHX11_2 = SHX11_2(SHX12_2)
  SHX11_2 = SHX11_2 * SHX10_2
  SHX11_2 = #SHX11_2
  if SHX8_2 < SHX11_2 then
    SHX12_2 = SHX10_2 * SHX8_2
    SHX13_2 = vector3
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = -1.0
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX13_2 = SHX13_2 * SHX9_2
    SHX12_2 = SHX12_2 + SHX13_2
    SHX13_2 = SetEntityVelocity
    SHX14_2 = SHX0_2
    SHX15_2 = SHX12_2.x
    SHX16_2 = SHX12_2.y
    SHX17_2 = SHX12_2.z
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
SHX58_1 = CMG
SHX58_1 = SHX58_1.createArea
SHX59_1 = "prison_nofly"
SHX60_1 = vector3
SHX61_1 = 1684.822266
SHX62_1 = 2581.853516
SHX63_1 = 62.797512
SHX60_1 = SHX60_1(SHX61_1, SHX62_1, SHX63_1)
SHX61_1 = 300.0
SHX62_1 = 1000.0
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX64_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX65_1 = SHX57_1
SHX66_1 = {}
SHX58_1(SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1)
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = GetGamePool
  SHX4_2 = "CPed"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX7_2 ~= SHX1_2 then
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX7_2
      SHX10_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SHX8_2.xy
      SHX9_2 = SHX0_2.xy
      SHX8_2 = SHX8_2 - SHX9_2
      SHX8_2 = #SHX8_2
      if SHX8_2 < 1.0 then
        SHX8_2 = true
        return SHX8_2
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX59_1 = false
function SHX60_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = TaskStartScenarioAtPosition
  SHX4_2 = SHX2_2
  SHX5_2 = "PROP_HUMAN_STAND_IMPATIENT"
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = SHX1_2.w
  SHX10_2 = 10000
  SHX11_2 = false
  SHX12_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "c5158af8ec"
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.getCustomization
  SHX3_2 = SHX3_2()
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 9
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 6
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getModelGender
  SHX7_2 = SHX7_2()
  if "male" == SHX7_2 then
    SHX7_2 = 34
    if SHX7_2 then
      goto SHX_LABEL_44
    end
  end
  SHX7_2 = 35
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 7
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 4
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getModelGender
  SHX7_2 = SHX7_2()
  if "male" == SHX7_2 then
    SHX7_2 = 61
    if SHX7_2 then
      goto SHX_LABEL_66
    end
  end
  SHX7_2 = 14
  -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
  ::SHX_LABEL_66::
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 5
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 11
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getModelGender
  SHX7_2 = SHX7_2()
  if "male" == SHX7_2 then
    SHX7_2 = 252
    if SHX7_2 then
      goto SHX_LABEL_88
    end
  end
  SHX7_2 = 74
  -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
  ::SHX_LABEL_88::
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 8
  SHX7_2 = 15
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetPedComponentVariation
  SHX5_2 = SHX2_2
  SHX6_2 = 3
  SHX7_2 = 15
  SHX8_2 = 0
  SHX9_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 20000
  SHX4_2(SHX5_2)
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 3000
  SHX4_2(SHX5_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = true
  SHX4_2(SHX5_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCustomization
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = false
  SHX59_1 = SHX4_2
end
function SHX61_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX58_1
  SHX2_2 = SHX0_2.position
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX59_1
    if not SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Press ~INPUT_CONTEXT~ to shower"
      SHX1_2(SHX2_2)
    end
  end
end
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 51
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX59_1
    if not SHX1_2 then
      SHX1_2 = SHX58_1
      SHX2_2 = SHX0_2.position
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = notify
        SHX2_2 = "~r~This shower is already occupied by another player."
        SHX1_2(SHX2_2)
      else
        SHX1_2 = true
        SHX59_1 = SHX1_2
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
          SHX0_3 = SHX60_1
          SHX1_3 = SHX0_2.index
          SHX2_3 = SHX0_2.position
          SHX0_3(SHX1_3, SHX2_3)
        end
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX63_1 = pairs
SHX64_1 = SHX0_1.showerCoords
SHX63_1, SHX64_1, SHX65_1, SHX66_1 = SHX63_1(SHX64_1)
for SHX67_1, SHX68_1 in SHX63_1, SHX64_1, SHX65_1, SHX66_1 do
  SHX69_1 = CMG
  SHX69_1 = SHX69_1.createArea
  SHX70_1 = "prisonshower_"
  SHX71_1 = tostring
  SHX72_1 = SHX67_1
  SHX71_1 = SHX71_1(SHX72_1)
  SHX70_1 = SHX70_1 .. SHX71_1
  SHX71_1 = SHX68_1.xyz
  SHX72_1 = 1.5
  SHX73_1 = 2.0
  SHX74_1 = SHX61_1
  function SHX75_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX76_1 = SHX62_1
  SHX77_1 = {}
  SHX77_1.index = SHX67_1
  SHX77_1.position = SHX68_1
  SHX69_1(SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
end
SHX63_1 = RegisterNetEvent
SHX64_1 = "c5158af8ec"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = SHX0_1.showerCoords
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = 8
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadPtfx
    SHX8_2 = "core"
    SHX7_2(SHX8_2)
    SHX7_2 = StartParticleFxLoopedAtCoord
    SHX8_2 = "ent_sht_water"
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX1_2.y
    SHX11_2 = SHX1_2.z
    SHX11_2 = SHX11_2 + 1.55
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 1.0
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX19_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 2500
    SHX8_2(SHX9_2)
  end
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = StopParticleFxLooped
    SHX10_2 = SHX8_2
    SHX11_2 = false
    SHX9_2(SHX10_2, SHX11_2)
  end
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "fc2357d33e"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX24_1
  if SHX1_2 then
    if SHX0_2 then
      SHX1_2 = SHX25_1
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.enablePunching
        SHX2_2 = true
        SHX1_2(SHX2_2)
        SHX1_2 = SHX41_1
        SHX1_2()
    end
    elseif not SHX0_2 then
      SHX1_2 = SHX25_1
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.enablePunching
        SHX2_2 = false
        SHX1_2(SHX2_2)
        SHX1_2 = SHX42_1
        SHX1_2()
      end
    end
  end
  SHX25_1 = SHX0_2
end
SHX63_1(SHX64_1, SHX65_1)
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = globalInPrison
  if SHX0_2 then
    SHX0_2 = SHX25_1
    if not SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getTakeHostagePlayerAndType
  SHX0_2, SHX1_2 = SHX0_2()
  if not SHX0_2 or "agressor" ~= SHX1_2 then
    return
  end
  SHX2_2 = drawNativeNotification
  SHX3_2 = "Press ~INPUT_CONTEXT_SECONDARY~ to start a riot"
  SHX2_2(SHX3_2)
  SHX2_2 = IsControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 52
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "dd273ed7d1"
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX64_1 = CMG
SHX64_1 = SHX64_1.createArea
SHX65_1 = "prisonRiotInitLocation"
SHX66_1 = SHX0_1.prisonMainCoords
SHX67_1 = 400.0
SHX68_1 = 5.0
function SHX69_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX70_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX71_1 = SHX63_1
SHX72_1 = {}
SHX64_1(SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1)
SHX64_1 = RegisterNetEvent
SHX65_1 = "a91c36f550"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX29_1 = SHX0_2
  SHX1_2 = SHX29_1
  if 0 ~= SHX1_2 then
    SHX1_2 = SHX0_1.segregationAreas
    SHX2_2 = SHX29_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.teleport
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = RegisterNetEvent
SHX65_1 = "ee56a72a5a"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = SHX31_1
    if SHX1_2 then
      SHX1_2 = false
      SHX31_1 = SHX1_2
    end
  end
  if SHX0_2 then
    SHX1_2 = SHX30_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setCanOpenPhone
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX30_1 = SHX1_2
    end
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.registerDevMenuItems
SHX65_1 = "Prison"
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Test Cinematic"
  SHX2_2 = "Plays the cinematic of driving from the cell to the prison"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "c1a91c4aaa"
      SHX5_3 = 1
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = AddEventHandler
SHX65_1 = "62fa42ee34"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "HMP Training Grounds" == SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "82dc3b07c6"
    SHX1_2(SHX2_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = {}
SHX65_1 = nil
SHX66_1 = false
SHX67_1 = 1885233650
SHX68_1 = 1672152130
SHX69_1 = {}
SHX69_1.version = 2
SHX69_1.modelHash = 1885233650
SHX69_1.build = 3258
SHX70_1 = {}
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 0
SHX70_1[1] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 7
SHX70_1[2] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = "Male_freemode_mpLTS"
SHX71_1.collectionIndex = 0
SHX70_1[3] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = "mp_m_clothing"
SHX71_1.collectionIndex = 48
SHX70_1[4] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 0
SHX70_1[5] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = "Male_Heist"
SHX71_1.collectionIndex = 0
SHX70_1[6] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 0
SHX70_1[7] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 15
SHX70_1[8] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 8
SHX71_1.collectionName = "mp_m_factions"
SHX71_1.collectionIndex = 17
SHX70_1[9] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 0
SHX70_1[10] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 1
SHX71_1.collectionName = "mp_m_factions"
SHX71_1.collectionIndex = 27
SHX70_1[11] = SHX71_1
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 0
SHX70_1[0] = SHX71_1
SHX69_1.components = SHX70_1
SHX70_1 = {}
SHX71_1 = {}
SHX71_1.textureIndex = 0
SHX71_1.collectionName = ""
SHX71_1.collectionIndex = 6
SHX70_1[1] = SHX71_1
SHX69_1.props = SHX70_1
function SHX70_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = false
  SHX66_1 = SHX0_2
  SHX0_2 = 1
  SHX1_2 = SHX64_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX64_1
    SHX4_2 = SHX4_2[SHX3_2]
    if SHX4_2 then
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = DeleteEntity
        SHX6_2 = SHX4_2
        SHX5_2(SHX6_2)
      end
    end
    SHX5_2 = SHX64_1
    SHX5_2[SHX3_2] = nil
  end
end
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX65_1
  if not SHX0_2 then
    SHX0_2 = AddRelationshipGroup
    SHX1_2 = "aiPrisonGuards"
    SHX0_2, SHX1_2 = SHX0_2(SHX1_2)
    SHX65_1 = SHX1_2
  end
  SHX0_2 = RequestModel
  SHX1_2 = SHX67_1
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = HasModelLoaded
    SHX1_2 = SHX67_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = 1
  SHX1_2 = SHX0_1.aiPrisonGuardSpawns
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX0_1.aiPrisonGuardSpawns
    SHX4_2 = SHX4_2[SHX3_2]
    SHX4_2 = SHX4_2.coords
    SHX5_2 = CreatePed
    SHX6_2 = 30
    SHX7_2 = SHX67_1
    SHX8_2 = SHX4_2.x
    SHX9_2 = SHX4_2.y
    SHX10_2 = SHX4_2.z
    SHX11_2 = 0.0
    SHX12_2 = false
    SHX13_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    while true do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SetEntityAsMissionEntity
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = SetEntityInvincible
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetPedRelationshipGroupHash
    SHX7_2 = SHX5_2
    SHX8_2 = SHX65_1
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetPedDropsWeaponsWhenDead
    SHX7_2 = SHX5_2
    SHX8_2 = false
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetPedAccuracy
    SHX7_2 = SHX5_2
    SHX8_2 = 100
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetPedArmour
    SHX7_2 = SHX5_2
    SHX8_2 = 100
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = GiveWeaponToPed
    SHX7_2 = SHX5_2
    SHX8_2 = SHX68_1
    SHX9_2 = 9999
    SHX10_2 = false
    SHX11_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = "{\"eyebrow\":18,\"dadmumpercent\":4,\"skinproblem\":0,\"hairtint\":0,\"facepaints\":0,\"dad\":12,\"eyeshadowcolour\":0,\"hair\":2,\"beard\":14,\"facepaintscolour\":0,\"eyeshadow\":0,\"beardopacity\":3,\"acne\":1,\"mum\":27,\"lipstick\":0,\"wrinkle\":0,\"haircolor\":0,\"freckle\":0,\"eyebrowopacity\":17,\"eyecolor\":5,\"wrinkleopacity\":0,\"beardcolor\":0,\"skin\":0,\"lipstickcolour\":0}"
    SHX7_2 = TriggerEvent
    SHX8_2 = "daf420849d"
    SHX9_2 = SHX6_2
    SHX10_2 = SHX6_2
    SHX11_2 = SHX5_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.setPedCustomization
    SHX8_2 = SHX5_2
    SHX9_2 = SHX69_1
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SHX64_1
    SHX7_2[SHX3_2] = SHX5_2
  end
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX67_1
  SHX0_2(SHX1_2)
end
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX64_1
  SHX0_2 = #SHX0_2
  if 0 == SHX0_2 then
    SHX0_2 = SHX71_1
    SHX0_2()
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetPedRelationshipGroupHash
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX65_1
  if not SHX2_2 then
    return
  end
  SHX2_2 = 1
  SHX3_2 = SHX64_1
  SHX3_2 = #SHX3_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX64_1
    SHX6_2 = SHX6_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = SetEntityInvincible
        SHX8_2 = SHX6_2
        SHX9_2 = true
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SetPedRelationshipGroupHash
        SHX8_2 = SHX6_2
        SHX9_2 = SHX65_1
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SetPedDropsWeaponsWhenDead
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SetPedAccuracy
        SHX8_2 = SHX6_2
        SHX9_2 = 100
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
  end
  SHX2_2 = SHX56_1
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = IsPedInAnyHeli
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasClientPermission
    SHX3_2 = "nhs.onduty.permission"
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.hasClientPermission
      SHX3_2 = "police.onduty.permission"
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.hasClientPermission
        SHX3_2 = "prisonguard.onduty.permission"
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = ClearRelationshipBetweenGroups
          SHX3_2 = 0
          SHX4_2 = SHX65_1
          SHX5_2 = SHX1_2
          SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX2_2 = ClearRelationshipBetweenGroups
          SHX3_2 = 0
          SHX4_2 = SHX1_2
          SHX5_2 = SHX65_1
          SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX2_2 = 1
          SHX3_2 = SHX64_1
          SHX3_2 = #SHX3_2
          SHX4_2 = 1
          for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
            SHX6_2 = SHX64_1
            SHX6_2 = SHX6_2[SHX5_2]
            if SHX6_2 then
              SHX7_2 = DoesEntityExist
              SHX8_2 = SHX6_2
              SHX7_2 = SHX7_2(SHX8_2)
              if SHX7_2 then
                SHX7_2 = TaskCombatPed
                SHX8_2 = SHX6_2
                SHX9_2 = SHX0_2
                SHX10_2 = 0
                SHX11_2 = 16
                SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
              end
            end
          end
      end
    end
  end
  else
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 0
    SHX4_2 = SHX65_1
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 0
    SHX4_2 = SHX1_2
    SHX5_2 = SHX65_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
end
function SHX73_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX70_1
  SHX0_2()
end
function SHX74_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX56_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX65_1
    if SHX1_2 then
      SHX1_2 = SHX64_1
      SHX1_2 = #SHX1_2
      if SHX1_2 > 0 then
        SHX1_2 = GetPedRelationshipGroupHash
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        SHX2_2 = SetRelationshipBetweenGroups
        SHX3_2 = 0
        SHX4_2 = SHX65_1
        SHX5_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = SetRelationshipBetweenGroups
        SHX3_2 = 0
        SHX4_2 = SHX1_2
        SHX5_2 = SHX65_1
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = 1
        SHX3_2 = SHX64_1
        SHX3_2 = #SHX3_2
        SHX4_2 = 1
        for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
          SHX6_2 = SHX64_1
          SHX6_2 = SHX6_2[SHX5_2]
          if SHX6_2 then
            SHX7_2 = DoesEntityExist
            SHX8_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2)
            if SHX7_2 then
              SHX7_2 = RemoveWeaponFromPed
              SHX8_2 = SHX6_2
              SHX9_2 = SHX68_1
              SHX7_2(SHX8_2, SHX9_2)
              SHX7_2 = ClearPedTasksImmediately
              SHX8_2 = SHX6_2
              SHX7_2(SHX8_2)
            end
          end
        end
        SHX2_2 = true
        SHX66_1 = SHX2_2
      end
    end
    return
  end
  SHX1_2 = SHX66_1
  if SHX1_2 then
    SHX1_2 = 1
    SHX2_2 = SHX64_1
    SHX2_2 = #SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX64_1
      SHX5_2 = SHX5_2[SHX4_2]
      if SHX5_2 then
        SHX6_2 = DoesEntityExist
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = GiveWeaponToPed
          SHX7_2 = SHX5_2
          SHX8_2 = SHX68_1
          SHX9_2 = 9999
          SHX10_2 = false
          SHX11_2 = true
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        end
      end
    end
    SHX1_2 = false
    SHX66_1 = SHX1_2
  end
  SHX1_2 = IsPedInAnyHeli
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "nhs.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "police.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientPermission
        SHX2_2 = "prisonguard.onduty.permission"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          SHX1_2 = SHX65_1
          if not SHX1_2 then
            return
          end
          SHX1_2 = ClearRelationshipBetweenGroups
          SHX2_2 = 0
          SHX3_2 = SHX65_1
          SHX4_2 = GetPedRelationshipGroupHash
          SHX5_2 = SHX0_2
          SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX1_2 = ClearRelationshipBetweenGroups
          SHX2_2 = 0
          SHX3_2 = GetPedRelationshipGroupHash
          SHX4_2 = SHX0_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = SHX65_1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX1_2 = 1
          SHX2_2 = SHX64_1
          SHX2_2 = #SHX2_2
          SHX3_2 = 1
          for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
            SHX5_2 = SHX64_1
            SHX5_2 = SHX5_2[SHX4_2]
            if SHX5_2 then
              SHX6_2 = DoesEntityExist
              SHX7_2 = SHX5_2
              SHX6_2 = SHX6_2(SHX7_2)
              if SHX6_2 then
                SHX6_2 = TaskCombatPed
                SHX7_2 = SHX5_2
                SHX8_2 = SHX0_2
                SHX9_2 = 0
                SHX10_2 = 16
                SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
              end
            end
          end
      end
    end
  end
  else
    SHX1_2 = 1
    SHX2_2 = SHX64_1
    SHX2_2 = #SHX2_2
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX64_1
      SHX5_2 = SHX5_2[SHX4_2]
      if SHX5_2 then
        SHX6_2 = DoesEntityExist
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = ClearPedTasks
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
        end
      end
    end
  end
end
SHX75_1 = CreateThread
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "prisonGuardShoot"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createArea
  SHX1_2 = "prisonGuardShoot"
  SHX2_2 = SHX0_1.prisonMainCoords
  SHX3_2 = 250.0
  SHX4_2 = 300.0
  SHX5_2 = SHX72_1
  SHX6_2 = SHX73_1
  SHX7_2 = SHX74_1
  SHX8_2 = {}
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX75_1(SHX76_1)
SHX75_1 = AddEventHandler
SHX76_1 = "onClientResourceStop"
function SHX77_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX70_1
    SHX1_2()
    SHX1_2 = nil
    SHX65_1 = SHX1_2
  end
end
SHX75_1(SHX76_1, SHX77_1)
SHX75_1 = CreateThread
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.staticPrisonProps
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.loadModel
    SHX7_2 = SHX5_2.model
    SHX6_2(SHX7_2)
    SHX6_2 = CreateObjectNoOffset
    SHX7_2 = SHX5_2.model
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX5_2.position
    SHX10_2 = SHX10_2.z
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2.Id = SHX6_2
    SHX6_2 = FreezeEntityPosition
    SHX7_2 = SHX5_2.Id
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetEntityHeading
    SHX7_2 = SHX5_2.Id
    SHX8_2 = SHX5_2.heading
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX0_2 = SHX36_1
  SHX0_2()
end
SHX75_1(SHX76_1)
SHX75_1 = AddEventHandler
SHX76_1 = "onResourceStop"
function SHX77_1(SHX0_2)
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
    SHX1_2 = pairs
    SHX2_2 = SHX0_1.staticPrisonProps
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.Id
      if SHX7_2 then
        SHX7_2 = DeleteObject
        SHX8_2 = SHX6_2.Id
        SHX7_2(SHX8_2)
      end
    end
  end
end
SHX75_1(SHX76_1, SHX77_1)
