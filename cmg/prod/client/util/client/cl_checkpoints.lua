-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
SHX0_1 = {}
SHX1_1 = CMG
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX15_2 = SHX0_1
  SHX15_2 = SHX15_2[SHX0_2]
  if nil == SHX15_2 then
    SHX15_2 = SHX0_1
    SHX16_2 = {}
    SHX15_2[SHX0_2] = SHX16_2
  end
  SHX15_2 = "checkpoint_"
  SHX16_2 = CMG
  SHX16_2 = SHX16_2.generateUUID
  SHX17_2 = "checkpoints"
  SHX18_2 = 7
  SHX19_2 = "alphanumeric"
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
  SHX15_2 = SHX15_2 .. SHX16_2
  SHX16_2 = CreateCheckpoint
  SHX17_2 = SHX1_2
  SHX18_2 = SHX2_2
  SHX19_2 = SHX3_2
  SHX20_2 = SHX4_2
  SHX21_2 = SHX5_2
  SHX22_2 = SHX6_2
  SHX23_2 = SHX7_2
  SHX24_2 = SHX8_2
  SHX25_2 = SHX9_2
  SHX26_2 = SHX10_2
  SHX27_2 = SHX11_2
  SHX28_2 = SHX12_2
  SHX29_2 = SHX13_2
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX17_2 = SetCheckpointRgba2
  SHX18_2 = SHX16_2
  SHX19_2 = 0
  SHX20_2 = 204
  SHX21_2 = 204
  SHX22_2 = 150
  SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX17_2 = tCMG
  SHX17_2 = SHX17_2.addBlip
  SHX18_2 = SHX2_2
  SHX19_2 = SHX3_2
  SHX20_2 = SHX4_2
  SHX21_2 = 570
  SHX22_2 = 5
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX18_2 = SHX0_1
  SHX18_2 = SHX18_2[SHX0_2]
  SHX19_2 = {}
  SHX19_2.checkpointId = SHX16_2
  SHX19_2.blipId = SHX17_2
  SHX18_2[SHX15_2] = SHX19_2
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
  function SHX20_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX14_2
    SHX1_3 = SHX15_2
    SHX2_3 = SHX16_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX21_2 = CMG
  SHX21_2 = SHX21_2.useIncreasedAreaRefreshRate
  SHX22_2 = true
  SHX21_2(SHX22_2)
  SHX21_2 = CMG
  SHX21_2 = SHX21_2.createArea
  SHX22_2 = SHX15_2
  SHX23_2 = vector3
  SHX24_2 = SHX2_2
  SHX25_2 = SHX3_2
  SHX26_2 = SHX4_2
  SHX23_2 = SHX23_2(SHX24_2, SHX25_2, SHX26_2)
  SHX24_2 = SHX8_2 * 1.25
  SHX25_2 = 10
  SHX26_2 = SHX20_2
  SHX27_2 = SHX18_2
  SHX28_2 = SHX19_2
  SHX29_2 = {}
  SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX21_2 = SHX16_2
  SHX22_2 = SHX15_2
  return SHX21_2, SHX22_2
end
SHX1_1.createCheckpoint = SHX2_1
SHX1_1 = CMG
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = SHX0_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2 = SHX2_2.checkpointId
      if SHX2_2 then
        SHX2_2 = DeleteCheckpoint
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX3_2 = SHX3_2[SHX1_2]
        SHX3_2 = SHX3_2.checkpointId
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = SHX0_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2[SHX1_2]
      SHX2_2 = SHX2_2.blipId
      if SHX2_2 then
        SHX2_2 = tCMG
        SHX2_2 = SHX2_2.removeBlip
        SHX3_2 = SHX0_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX3_2 = SHX3_2[SHX1_2]
        SHX3_2 = SHX3_2.blipId
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeArea
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2[SHX1_2] = nil
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_1
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.useIncreasedAreaRefreshRate
      SHX3_2 = false
      SHX2_2(SHX3_2)
    end
  else
    SHX2_2 = print
    SHX3_2 = SHX0_2
    SHX4_2 = " is not valid."
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX2_2(SHX3_2)
  end
end
SHX1_1.deleteCheckpoint = SHX2_1
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerCommand
SHX2_1 = "previewcheckpointstypes"
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = 1
  SHX1_2 = 100
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CreateCheckpoint
    SHX5_2 = SHX3_2
    SHX6_2 = SHX3_2 * 25
    SHX6_2 = 475.82565307617 + SHX6_2
    SHX7_2 = 5562.2729492188
    SHX8_2 = 794.68963623047
    SHX9_2 = 475.82565307617
    SHX10_2 = 5562.2729492188
    SHX11_2 = 794.68963623047
    SHX12_2 = 10.0
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 0
    SHX16_2 = 127
    SHX17_2 = 0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX5_2 = print
    SHX6_2 = "made"
    SHX7_2 = SHX3_2
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = Wait
    SHX6_2 = 250
    SHX5_2(SHX6_2)
  end
end
SHX4_1 = false
SHX1_1(SHX2_1, SHX3_1, SHX4_1)
