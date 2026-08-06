-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1
SHX0_1 = nil
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = false
SHX6_1 = 0
SHX7_1 = nil
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = nil
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = nil
SHX14_1 = CMG
SHX14_1 = SHX14_1.registerHudTimerBarProvider
SHX15_1 = "businessCleanerJob"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX12_1
  if SHX1_2 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = SHX12_1
    SHX3_2 = SHX13_1
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX0_1 = SHX1_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = {}
  SHX1_1 = SHX0_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
  SHX0_2 = assert
  SHX1_2 = SHX0_1
  SHX2_2 = "initGround nil metadata"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.groundPoints
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_1.groundModels
    SHX8_2 = SHX0_1.groundModels
    SHX8_2 = #SHX8_2
    SHX8_2 = SHX5_2 % SHX8_2
    SHX8_2 = SHX8_2 + 1
    SHX7_2 = SHX7_2[SHX8_2]
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadModel
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
    SHX8_2 = CreateObject
    SHX9_2 = SHX7_2
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX12_2 = SHX12_2 - 1.0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX9_2 = SetEntityHeading
    SHX10_2 = SHX8_2
    SHX11_2 = math
    SHX11_2 = SHX11_2.random
    SHX12_2 = 1
    SHX13_2 = 360
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX9_2 = SetModelAsNoLongerNeeded
    SHX10_2 = SHX7_2
    SHX9_2(SHX10_2)
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX1_1
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addMarker
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX12_2 = SHX12_2 - 0.6
    SHX13_2 = 0.2
    SHX14_2 = 0.2
    SHX15_2 = 0.2
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 0
    SHX19_2 = 150
    SHX20_2 = 25.0
    SHX21_2 = 0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX2_1
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = "business_job_"
    SHX11_2 = tostring
    SHX12_2 = SHX5_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.createArea
    SHX12_2 = SHX10_2
    SHX13_2 = SHX6_2
    SHX14_2 = 1.0
    SHX15_2 = 1.5
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
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
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        SHX0_3 = SHX3_1
        if SHX0_3 then
          SHX1_3 = SHX5_2
          SHX0_3 = SHX3_1
          SHX0_3 = SHX0_3[SHX1_3]
          if SHX0_3 then
            SHX0_3 = drawNativeNotification
            SHX1_3 = "Press ~INPUT_CONTEXT~ to pick up the trash"
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
              SHX0_2 = SHX0_3
              SHX0_3 = tCMG
              SHX0_3 = SHX0_3.playAnim
              SHX1_3 = true
              SHX2_3 = {}
              SHX3_3 = {}
              SHX4_3 = "pickup_object"
              SHX5_3 = "pickup_low"
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
                SHX1_4 = 1500
                SHX0_4(SHX1_4)
                SHX0_4 = TriggerServerEvent
                SHX1_4 = "bf3f551598"
                SHX0_4(SHX1_4)
                SHX0_4 = DeleteEntity
                SHX1_4 = SHX8_2
                SHX0_4(SHX1_4)
                SHX0_4 = tCMG
                SHX0_4 = SHX0_4.removeMarker
                SHX1_4 = SHX9_2
                SHX0_4(SHX1_4)
                SHX0_4 = tCMG
                SHX0_4 = SHX0_4.removeArea
                SHX1_4 = SHX10_2
                SHX0_4(SHX1_4)
                SHX1_4 = SHX5_2
                SHX0_4 = SHX3_1
                SHX0_4[SHX1_4] = nil
                SHX0_4 = false
                SHX0_2 = SHX0_4
                SHX0_4 = tCMG
                SHX0_4 = SHX0_4.setCanAnim
                SHX1_4 = true
                SHX0_4(SHX1_4)
              end
              SHX0_3(SHX1_3)
            end
          end
        end
      end
    end
    SHX19_2 = {}
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX3_1
    SHX13_2 = SHX10_2
    SHX11_2(SHX12_2, SHX13_2)
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = drawNativeText
  SHX1_2 = "Locate the ~y~trash~w~ and clean it up"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = table
    SHX0_2 = SHX0_2.count
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  SHX0_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX1_2 = "~y~TRASH REMAINING"
  SHX12_1 = SHX1_2
  SHX1_2 = tostring
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX13_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHudTimerBarProviderActive
  SHX2_2 = "businessCleanerJob"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = 0 == SHX0_2
  return SHX1_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = nil
  SHX12_1 = SHX0_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "businessCleanerJob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX1_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX3_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
  SHX0_2 = assert
  SHX1_2 = SHX0_1
  SHX2_2 = "initSurface nil metadata"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.surfacePoints
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addMarker
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX10_2 = SHX10_2 - 0.6
    SHX11_2 = 0.2
    SHX12_2 = 0.2
    SHX13_2 = 0.2
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 0
    SHX17_2 = 150
    SHX18_2 = 25.0
    SHX19_2 = 0
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_1
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = "business_job_"
    SHX9_2 = tostring
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = SHX8_2
    SHX11_2 = SHX6_2
    SHX12_2 = 2.0
    SHX13_2 = 1.5
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
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        SHX0_3 = SHX3_1
        if SHX0_3 then
          SHX0_3 = SHX3_1
          if SHX0_3 then
            SHX1_3 = SHX5_2
            SHX0_3 = SHX3_1
            SHX0_3 = SHX0_3[SHX1_3]
            if SHX0_3 then
              SHX0_3 = drawNativeNotification
              SHX1_3 = "Press ~INPUT_CONTEXT~ to clean the table"
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
                SHX0_2 = SHX0_3
                SHX0_3 = PlayerPedId
                SHX0_3 = SHX0_3()
                SHX1_3 = tCMG
                SHX1_3 = SHX1_3.playAnim
                SHX2_3 = true
                SHX3_3 = {}
                SHX4_3 = {}
                SHX5_3 = "timetable@floyd@clean_kitchen@base"
                SHX6_3 = "base"
                SHX7_3 = 1
                SHX4_3[1] = SHX5_3
                SHX4_3[2] = SHX6_3
                SHX4_3[3] = SHX7_3
                SHX3_3[1] = SHX4_3
                SHX4_3 = false
                SHX1_3(SHX2_3, SHX3_3, SHX4_3)
                SHX1_3 = Citizen
                SHX1_3 = SHX1_3.CreateThread
                function SHX2_3()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_4, SHX1_4
                  SHX0_4 = Citizen
                  SHX0_4 = SHX0_4.Wait
                  SHX1_4 = 6000
                  SHX0_4(SHX1_4)
                  SHX0_4 = ClearPedSecondaryTask
                  SHX1_4 = SHX0_3
                  SHX0_4(SHX1_4)
                  SHX0_4 = ClearPedTasks
                  SHX1_4 = SHX0_3
                  SHX0_4(SHX1_4)
                  SHX0_4 = TriggerServerEvent
                  SHX1_4 = "bf3f551598"
                  SHX0_4(SHX1_4)
                  SHX0_4 = tCMG
                  SHX0_4 = SHX0_4.removeMarker
                  SHX1_4 = SHX7_2
                  SHX0_4(SHX1_4)
                  SHX0_4 = tCMG
                  SHX0_4 = SHX0_4.removeArea
                  SHX1_4 = SHX8_2
                  SHX0_4(SHX1_4)
                  SHX1_4 = SHX5_2
                  SHX0_4 = SHX3_1
                  SHX0_4[SHX1_4] = nil
                  SHX0_4 = false
                  SHX0_2 = SHX0_4
                  SHX0_4 = tCMG
                  SHX0_4 = SHX0_4.setCanAnim
                  SHX1_4 = true
                  SHX0_4(SHX1_4)
                end
                SHX1_3(SHX2_3)
              end
            end
          end
        end
      end
    end
    SHX17_2 = {}
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX3_1
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = drawNativeText
  SHX1_2 = "Clean the dirty ~y~tables~w~ and prepare for customers"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = table
    SHX0_2 = SHX0_2.count
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  SHX0_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX1_2 = "~y~TABLES REMAINING"
  SHX12_1 = SHX1_2
  SHX1_2 = tostring
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX13_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHudTimerBarProviderActive
  SHX2_2 = "businessCleanerJob"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = 0 == SHX0_2
  return SHX1_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = nil
  SHX12_1 = SHX0_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "businessCleanerJob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX3_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = "floor"
  SHX4_1 = SHX0_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
  SHX0_2 = 1
  SHX6_1 = SHX0_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX0_1.toiletPoints
    SHX1_2 = SHX6_1
    SHX0_2 = SHX0_2[SHX1_2]
    SHX7_1 = SHX0_2
  end
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX4_1
  if "floor" == SHX0_2 then
    SHX0_2 = SHX5_1
    if not SHX0_2 then
      SHX0_2 = {}
      SHX2_1 = SHX0_2
      SHX0_2 = {}
      SHX3_1 = SHX0_2
      SHX0_2 = assert
      SHX1_2 = SHX7_1
      SHX2_2 = "tickToilet nil metadata (floor)"
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = false
      SHX1_2 = pairs
      SHX2_2 = SHX7_1.liquidPoints
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.addMarker
        SHX8_2 = SHX6_2.x
        SHX9_2 = SHX6_2.y
        SHX10_2 = SHX6_2.z
        SHX10_2 = SHX10_2 - 0.6
        SHX11_2 = 0.2
        SHX12_2 = 0.2
        SHX13_2 = 0.2
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 0
        SHX17_2 = 150
        SHX18_2 = 25.0
        SHX19_2 = 0
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX8_2 = table
        SHX8_2 = SHX8_2.insert
        SHX9_2 = SHX2_1
        SHX10_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = "business_job_"
        SHX9_2 = tostring
        SHX10_2 = SHX5_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX8_2 = SHX8_2 .. SHX9_2
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.createArea
        SHX10_2 = SHX8_2
        SHX11_2 = SHX6_2
        SHX12_2 = 1.0
        SHX13_2 = 1.5
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
        function SHX16_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
          SHX0_3 = SHX0_2
          if not SHX0_3 then
            SHX0_3 = SHX3_1
            if SHX0_3 then
              SHX1_3 = SHX5_2
              SHX0_3 = SHX3_1
              SHX0_3 = SHX0_3[SHX1_3]
              if SHX0_3 then
                SHX0_3 = drawNativeNotification
                SHX1_3 = "Press ~INPUT_CONTEXT~ to mop the floor"
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
                  SHX0_2 = SHX0_3
                  SHX0_3 = tCMG
                  SHX0_3 = SHX0_3.playAnim
                  SHX1_3 = true
                  SHX2_3 = {}
                  SHX3_3 = {}
                  SHX4_3 = "move_mop"
                  SHX5_3 = "idle_scrub_small_player"
                  SHX6_3 = 1
                  SHX3_3[1] = SHX4_3
                  SHX3_3[2] = SHX5_3
                  SHX3_3[3] = SHX6_3
                  SHX2_3[1] = SHX3_3
                  SHX3_3 = false
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                  SHX0_3 = CMG
                  SHX0_3 = SHX0_3.loadModel
                  SHX1_3 = -320848029
                  SHX0_3(SHX1_3)
                  SHX0_3 = CMG
                  SHX0_3 = SHX0_3.getPlayerCoords
                  SHX0_3 = SHX0_3()
                  SHX1_3 = CMG
                  SHX1_3 = SHX1_3.requestEntitySpawn
                  SHX2_3 = "business_cleaner_mop"
                  SHX1_3(SHX2_3)
                  SHX1_3 = CreateObject
                  SHX2_3 = -320848029
                  SHX3_3 = SHX0_3.x
                  SHX4_3 = SHX0_3.y
                  SHX5_3 = SHX0_3.z
                  SHX6_3 = true
                  SHX7_3 = false
                  SHX8_3 = false
                  SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
                  SHX2_3 = PlayerPedId
                  SHX2_3 = SHX2_3()
                  SHX3_3 = AttachEntityToEntity
                  SHX4_3 = SHX1_3
                  SHX5_3 = SHX2_3
                  SHX6_3 = GetPedBoneIndex
                  SHX7_3 = SHX2_3
                  SHX8_3 = 28422
                  SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
                  SHX7_3 = 0.0
                  SHX8_3 = 0.0
                  SHX9_3 = 0.12
                  SHX10_3 = 0.0
                  SHX11_3 = 0.0
                  SHX12_3 = 0.0
                  SHX13_3 = true
                  SHX14_3 = true
                  SHX15_3 = false
                  SHX16_3 = true
                  SHX17_3 = 1
                  SHX18_3 = true
                  SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
                  SHX3_3 = SetModelAsNoLongerNeeded
                  SHX4_3 = -320848029
                  SHX3_3(SHX4_3)
                  SHX3_3 = Citizen
                  SHX3_3 = SHX3_3.CreateThread
                  function SHX4_3()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_4, SHX1_4
                    SHX0_4 = Citizen
                    SHX0_4 = SHX0_4.Wait
                    SHX1_4 = 4000
                    SHX0_4(SHX1_4)
                    SHX0_4 = DeleteEntity
                    SHX1_4 = SHX1_3
                    SHX0_4(SHX1_4)
                    SHX0_4 = TriggerServerEvent
                    SHX1_4 = "bf3f551598"
                    SHX0_4(SHX1_4)
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.removeMarker
                    SHX1_4 = SHX7_2
                    SHX0_4(SHX1_4)
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.removeArea
                    SHX1_4 = SHX8_2
                    SHX0_4(SHX1_4)
                    SHX1_4 = SHX5_2
                    SHX0_4 = SHX3_1
                    SHX0_4[SHX1_4] = nil
                    SHX0_4 = false
                    SHX0_2 = SHX0_4
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.setCanAnim
                    SHX1_4 = true
                    SHX0_4(SHX1_4)
                  end
                  SHX3_3(SHX4_3)
                end
              end
            end
          end
        end
        SHX17_2 = {}
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        SHX9_2 = table
        SHX9_2 = SHX9_2.insert
        SHX10_2 = SHX3_1
        SHX11_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
      end
      SHX1_2 = true
      SHX5_1 = SHX1_2
    end
    SHX0_2 = drawNativeText
    SHX1_2 = "Mop the ~y~pee~w~ on the toilet floor"
    SHX0_2(SHX1_2)
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = table
      SHX0_2 = SHX0_2.count
      SHX1_2 = SHX3_1
      SHX0_2 = SHX0_2(SHX1_2)
    end
    if 0 == SHX0_2 then
      SHX0_2 = SHX2_1
      if SHX0_2 then
        SHX0_2 = pairs
        SHX1_2 = SHX2_1
        SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
        for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
          SHX6_2 = tCMG
          SHX6_2 = SHX6_2.removeMarker
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
        end
      end
      SHX0_2 = SHX3_1
      if SHX0_2 then
        SHX0_2 = pairs
        SHX1_2 = SHX3_1
        SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
        for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
          SHX6_2 = tCMG
          SHX6_2 = SHX6_2.removeArea
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
        end
      end
      SHX0_2 = nil
      SHX2_1 = SHX0_2
      SHX0_2 = nil
      SHX3_1 = SHX0_2
      SHX0_2 = "scrub"
      SHX4_1 = SHX0_2
      SHX0_2 = false
      SHX5_1 = SHX0_2
    end
  else
    SHX0_2 = SHX4_1
    if "scrub" == SHX0_2 then
      SHX0_2 = SHX5_1
      if not SHX0_2 then
        SHX0_2 = {}
        SHX2_1 = SHX0_2
        SHX0_2 = {}
        SHX3_1 = SHX0_2
        SHX0_2 = assert
        SHX1_2 = SHX7_1
        SHX2_2 = "tickToilet nil metadata (scrub)"
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = false
        SHX1_2 = tCMG
        SHX1_2 = SHX1_2.addMarker
        SHX2_2 = SHX7_1.scrub
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX7_1.scrub
        SHX3_2 = SHX3_2.y
        SHX4_2 = SHX7_1.scrub
        SHX4_2 = SHX4_2.z
        SHX4_2 = SHX4_2 - 0.6
        SHX5_2 = 0.2
        SHX6_2 = 0.2
        SHX7_2 = 0.2
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 0
        SHX11_2 = 150
        SHX12_2 = 25.0
        SHX13_2 = 0
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX2_2 = table
        SHX2_2 = SHX2_2.insert
        SHX3_2 = SHX2_1
        SHX4_2 = SHX1_2
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = "business_job_"
        SHX3_2 = tostring
        SHX4_2 = 1
        SHX3_2 = SHX3_2(SHX4_2)
        SHX2_2 = SHX2_2 .. SHX3_2
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.createArea
        SHX4_2 = SHX2_2
        SHX5_2 = SHX7_1.scrub
        SHX5_2 = SHX5_2.xyz
        SHX6_2 = 1.0
        SHX7_2 = 1.5
        function SHX8_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
        end
        function SHX9_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
        end
        function SHX10_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
          SHX0_3 = SHX0_2
          if not SHX0_3 then
            SHX0_3 = SHX3_1
            if SHX0_3 then
              SHX0_3 = SHX3_1
              SHX0_3 = SHX0_3[1]
              if SHX0_3 then
                SHX0_3 = drawNativeNotification
                SHX1_3 = "Press ~INPUT_CONTEXT~ to plunge the toilet"
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
                  SHX0_2 = SHX0_3
                  SHX0_3 = tCMG
                  SHX0_3 = SHX0_3.playAnim
                  SHX1_3 = true
                  SHX2_3 = {}
                  SHX3_3 = {}
                  SHX4_3 = "switch@trevor@on_toilet"
                  SHX5_3 = "trev_on_toilet_loop"
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
                    SHX1_4 = 7500
                    SHX0_4(SHX1_4)
                    SHX0_4 = TriggerServerEvent
                    SHX1_4 = "bf3f551598"
                    SHX0_4(SHX1_4)
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.removeMarker
                    SHX1_4 = SHX1_2
                    SHX0_4(SHX1_4)
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.removeArea
                    SHX1_4 = SHX2_2
                    SHX0_4(SHX1_4)
                    SHX0_4 = SHX3_1
                    SHX0_4[1] = nil
                    SHX0_4 = false
                    SHX0_2 = SHX0_4
                    SHX0_4 = tCMG
                    SHX0_4 = SHX0_4.setCanAnim
                    SHX1_4 = true
                    SHX0_4(SHX1_4)
                  end
                  SHX0_3(SHX1_3)
                end
              end
            end
          end
        end
        SHX11_2 = {}
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX3_2 = table
        SHX3_2 = SHX3_2.insert
        SHX4_2 = SHX3_1
        SHX5_2 = SHX2_2
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = true
        SHX5_1 = SHX3_2
      end
      SHX0_2 = drawNativeText
      SHX1_2 = "Plunge the ~y~toilet~w~ to remove blockages"
      SHX0_2(SHX1_2)
      SHX0_2 = SHX3_1
      if SHX0_2 then
        SHX0_2 = table
        SHX0_2 = SHX0_2.count
        SHX1_2 = SHX3_1
        SHX0_2 = SHX0_2(SHX1_2)
      end
      if 0 == SHX0_2 then
        SHX0_2 = SHX2_1
        if SHX0_2 then
          SHX0_2 = pairs
          SHX1_2 = SHX2_1
          SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
          for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
            SHX6_2 = tCMG
            SHX6_2 = SHX6_2.removeMarker
            SHX7_2 = SHX5_2
            SHX6_2(SHX7_2)
          end
        end
        SHX0_2 = SHX3_1
        if SHX0_2 then
          SHX0_2 = pairs
          SHX1_2 = SHX3_1
          SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
          for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
            SHX6_2 = tCMG
            SHX6_2 = SHX6_2.removeArea
            SHX7_2 = SHX5_2
            SHX6_2(SHX7_2)
          end
        end
        SHX0_2 = nil
        SHX2_1 = SHX0_2
        SHX0_2 = nil
        SHX3_1 = SHX0_2
        SHX0_2 = "hands"
        SHX4_1 = SHX0_2
        SHX0_2 = false
        SHX5_1 = SHX0_2
      end
    else
      SHX0_2 = SHX4_1
      if "hands" == SHX0_2 then
        SHX0_2 = SHX5_1
        if not SHX0_2 then
          SHX0_2 = {}
          SHX2_1 = SHX0_2
          SHX0_2 = {}
          SHX3_1 = SHX0_2
          SHX0_2 = assert
          SHX1_2 = SHX7_1
          SHX2_2 = "tickToilet nil metadata (hands)"
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = false
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.addMarker
          SHX2_2 = SHX7_1.hands
          SHX2_2 = SHX2_2.x
          SHX3_2 = SHX7_1.hands
          SHX3_2 = SHX3_2.y
          SHX4_2 = SHX7_1.hands
          SHX4_2 = SHX4_2.z
          SHX4_2 = SHX4_2 - 0.6
          SHX5_2 = 0.2
          SHX6_2 = 0.2
          SHX7_2 = 0.2
          SHX8_2 = 255
          SHX9_2 = 255
          SHX10_2 = 0
          SHX11_2 = 150
          SHX12_2 = 25.0
          SHX13_2 = 0
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX2_2 = table
          SHX2_2 = SHX2_2.insert
          SHX3_2 = SHX2_1
          SHX4_2 = SHX1_2
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = "business_job_"
          SHX3_2 = tostring
          SHX4_2 = 1
          SHX3_2 = SHX3_2(SHX4_2)
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.createArea
          SHX4_2 = SHX2_2
          SHX5_2 = SHX7_1.hands
          SHX5_2 = SHX5_2.xyz
          SHX6_2 = 1.0
          SHX7_2 = 1.5
          function SHX8_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          function SHX9_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          function SHX10_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
            SHX0_3 = SHX0_2
            if not SHX0_3 then
              SHX0_3 = SHX3_1
              if SHX0_3 then
                SHX0_3 = SHX3_1
                SHX0_3 = SHX0_3[1]
                if SHX0_3 then
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
                    SHX0_2 = SHX0_3
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
                      SHX0_4 = tCMG
                      SHX0_4 = SHX0_4.removeMarker
                      SHX1_4 = SHX1_2
                      SHX0_4(SHX1_4)
                      SHX0_4 = tCMG
                      SHX0_4 = SHX0_4.removeArea
                      SHX1_4 = SHX2_2
                      SHX0_4(SHX1_4)
                      SHX0_4 = SHX3_1
                      SHX0_4[1] = nil
                      SHX0_4 = false
                      SHX0_2 = SHX0_4
                      SHX0_4 = tCMG
                      SHX0_4 = SHX0_4.setCanAnim
                      SHX1_4 = true
                      SHX0_4(SHX1_4)
                    end
                    SHX0_3(SHX1_3)
                  end
                end
              end
            end
          end
          SHX11_2 = {}
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX3_2 = table
          SHX3_2 = SHX3_2.insert
          SHX4_2 = SHX3_1
          SHX5_2 = SHX2_2
          SHX3_2(SHX4_2, SHX5_2)
          SHX3_2 = true
          SHX5_1 = SHX3_2
        end
        SHX0_2 = drawNativeText
        SHX1_2 = "Wash your hands and face at the ~y~sink~w~ thoroughly"
        SHX0_2(SHX1_2)
        SHX0_2 = SHX3_1
        if SHX0_2 then
          SHX0_2 = table
          SHX0_2 = SHX0_2.count
          SHX1_2 = SHX3_1
          SHX0_2 = SHX0_2(SHX1_2)
          if 0 ~= SHX0_2 then
            goto SHX_LABEL_380
          end
        end
        SHX0_2 = SHX2_1
        if SHX0_2 then
          SHX0_2 = pairs
          SHX1_2 = SHX2_1
          SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
          for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
            SHX6_2 = tCMG
            SHX6_2 = SHX6_2.removeMarker
            SHX7_2 = SHX5_2
            SHX6_2(SHX7_2)
          end
        end
        SHX0_2 = SHX3_1
        if SHX0_2 then
          SHX0_2 = pairs
          SHX1_2 = SHX3_1
          SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
          for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
            SHX6_2 = tCMG
            SHX6_2 = SHX6_2.removeArea
            SHX7_2 = SHX5_2
            SHX6_2(SHX7_2)
          end
        end
        SHX0_2 = nil
        SHX2_1 = SHX0_2
        SHX0_2 = nil
        SHX3_1 = SHX0_2
        SHX0_2 = SHX0_1
        if SHX0_2 then
          SHX0_2 = SHX6_1
          SHX1_2 = table
          SHX1_2 = SHX1_2.count
          SHX2_2 = SHX0_1.toiletPoints
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX0_2 == SHX1_2 then
            SHX0_2 = true
            return SHX0_2
        end
        else
          SHX0_2 = "floor"
          SHX4_1 = SHX0_2
          SHX0_2 = false
          SHX5_1 = SHX0_2
          SHX0_2 = SHX6_1
          SHX0_2 = SHX0_2 + 1
          SHX6_1 = SHX0_2
          SHX0_2 = SHX0_1
          if SHX0_2 then
            SHX0_2 = SHX0_1.toiletPoints
            SHX1_2 = SHX6_1
            SHX0_2 = SHX0_2[SHX1_2]
            SHX7_1 = SHX0_2
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_380:: outside nested blocks until all 'goto SHX_LABEL_380' can see it
  ::SHX_LABEL_380::
  SHX0_2 = false
  return SHX0_2
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX3_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = 0
  SHX6_1 = SHX0_2
  SHX0_2 = nil
  SHX7_1 = SHX0_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
  SHX0_2 = nil
  SHX4_1 = SHX0_2
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = 0
  SHX9_1 = SHX0_2
  SHX0_2 = assert
  SHX1_2 = SHX0_1
  SHX2_2 = "initBin nil metadata"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.binPoints
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addMarker
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX10_2 = SHX10_2 - 1.0
    SHX11_2 = 0.4
    SHX12_2 = 0.4
    SHX13_2 = 0.4
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 0
    SHX17_2 = 150
    SHX18_2 = 25.0
    SHX19_2 = 1
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_1
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = "business_job_"
    SHX9_2 = tostring
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = SHX8_2
    SHX11_2 = SHX6_2.xyz
    SHX12_2 = 1.0
    SHX13_2 = 1.5
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
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        SHX0_3 = SHX3_1
        if SHX0_3 then
          SHX0_3 = SHX3_1
          if SHX0_3 then
            SHX1_3 = SHX5_2
            SHX0_3 = SHX3_1
            SHX0_3 = SHX0_3[SHX1_3]
            if SHX0_3 then
              SHX0_3 = SHX8_1
              if not SHX0_3 then
                SHX0_3 = drawNativeNotification
                SHX1_3 = "Press ~INPUT_CONTEXT~ to replace the bin ban"
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
                  SHX0_2 = SHX0_3
                  SHX0_3 = tCMG
                  SHX0_3 = SHX0_3.playAnim
                  SHX1_3 = true
                  SHX2_3 = {}
                  SHX3_3 = {}
                  SHX4_3 = "anim@heists@narcotics@trash"
                  SHX5_3 = "walk"
                  SHX6_3 = 1
                  SHX3_3[1] = SHX4_3
                  SHX3_3[2] = SHX5_3
                  SHX3_3[3] = SHX6_3
                  SHX2_3[1] = SHX3_3
                  SHX3_3 = true
                  SHX0_3(SHX1_3, SHX2_3, SHX3_3)
                  SHX0_3 = CMG
                  SHX0_3 = SHX0_3.loadModel
                  SHX1_3 = 1138881502
                  SHX0_3(SHX1_3)
                  SHX0_3 = CMG
                  SHX0_3 = SHX0_3.getPlayerCoords
                  SHX0_3 = SHX0_3()
                  SHX1_3 = CMG
                  SHX1_3 = SHX1_3.requestEntitySpawn
                  SHX2_3 = "business_cleaner_binbag"
                  SHX1_3(SHX2_3)
                  SHX1_3 = CreateObject
                  SHX2_3 = 1138881502
                  SHX3_3 = SHX0_3.x
                  SHX4_3 = SHX0_3.y
                  SHX5_3 = SHX0_3.z
                  SHX6_3 = true
                  SHX7_3 = false
                  SHX8_3 = false
                  SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
                  SHX9_1 = SHX1_3
                  SHX1_3 = PlayerPedId
                  SHX1_3 = SHX1_3()
                  SHX2_3 = AttachEntityToEntity
                  SHX3_3 = SHX9_1
                  SHX4_3 = SHX1_3
                  SHX5_3 = GetPedBoneIndex
                  SHX6_3 = SHX1_3
                  SHX7_3 = 57005
                  SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                  SHX6_3 = 0.12
                  SHX7_3 = 0.0
                  SHX8_3 = 0.0
                  SHX9_3 = 25.0
                  SHX10_3 = 270.0
                  SHX11_3 = 180.0
                  SHX12_3 = true
                  SHX13_3 = true
                  SHX14_3 = false
                  SHX15_3 = true
                  SHX16_3 = 1
                  SHX17_3 = true
                  SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
                  SHX2_3 = SetModelAsNoLongerNeeded
                  SHX3_3 = 1138881502
                  SHX2_3(SHX3_3)
                  SHX2_3 = TriggerServerEvent
                  SHX3_3 = "bf3f551598"
                  SHX2_3(SHX3_3)
                  SHX2_3 = true
                  SHX8_1 = SHX2_3
                  SHX2_3 = tCMG
                  SHX2_3 = SHX2_3.removeMarker
                  SHX3_3 = SHX7_2
                  SHX2_3(SHX3_3)
                  SHX2_3 = tCMG
                  SHX2_3 = SHX2_3.removeArea
                  SHX3_3 = SHX8_2
                  SHX2_3(SHX3_3)
                  SHX3_3 = SHX5_2
                  SHX2_3 = SHX3_1
                  SHX2_3[SHX3_3] = nil
                  SHX2_3 = false
                  SHX0_2 = SHX2_3
                  SHX2_3 = tCMG
                  SHX2_3 = SHX2_3.setCanAnim
                  SHX3_3 = true
                  SHX2_3(SHX3_3)
                  SHX2_3 = notify
                  SHX3_3 = "~g~Picked up bin bag!"
                  SHX2_3(SHX3_3)
                end
              end
            end
          end
        end
      end
    end
    SHX17_2 = {}
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX3_1
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = "business_job_bin"
  SHX3_2 = SHX0_1.binDeliveryPoint
  SHX4_2 = 1.0
  SHX5_2 = 1.5
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
    SHX0_3 = SHX8_1
    if SHX0_3 then
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_CONTEXT~ to dispose of the bin bag"
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
        SHX0_2 = SHX0_3
        SHX0_3 = DeleteEntity
        SHX1_3 = SHX9_1
        SHX0_3(SHX1_3)
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.stopAnim
        SHX1_3 = false
        SHX0_3(SHX1_3)
        SHX0_3 = notify
        SHX1_3 = "~r~Thrown away bin bag."
        SHX0_3(SHX1_3)
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bf3f551598"
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX8_1 = SHX0_3
        SHX0_3 = false
        SHX0_2 = SHX0_3
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.setCanAnim
        SHX1_3 = true
        SHX0_3(SHX1_3)
      end
    end
  end
  SHX9_2 = {}
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX10_1 = SHX1_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX0_1.binDeliveryPoint
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_1.binDeliveryPoint
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_1.binDeliveryPoint
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
  SHX11_1 = SHX1_2
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = drawNativeText
    SHX1_2 = "Take the bin bag ~y~outside~w~ to the tip"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = drawNativeText
    SHX1_2 = "Locate the nearest ~y~bin~w~ and empty it"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = table
    SHX0_2 = SHX0_2.count
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_21
    end
  end
  SHX0_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX1_2 = "~y~BINS REMAINING"
  SHX12_1 = SHX1_2
  SHX1_2 = tostring
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX13_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHudTimerBarProviderActive
  SHX2_2 = "businessCleanerJob"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = 0 == SHX0_2
  return SHX1_2
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = nil
  SHX12_1 = SHX0_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "businessCleanerJob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX3_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeArea
    SHX1_2 = SHX10_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX9_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX11_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeMarker
    SHX1_2 = SHX11_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = nil
  SHX11_1 = SHX0_2
  SHX0_2 = 0
  SHX9_1 = SHX0_2
  SHX0_2 = nil
  SHX10_1 = SHX0_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = nil
  SHX0_1 = SHX0_2
end
SHX27_1 = {}
SHX28_1 = {}
SHX28_1.init = SHX15_1
SHX28_1.tick = SHX16_1
SHX28_1.finish = SHX17_1
SHX28_1.next = "surface"
SHX27_1.ground = SHX28_1
SHX28_1 = {}
SHX28_1.init = SHX18_1
SHX28_1.tick = SHX19_1
SHX28_1.finish = SHX20_1
SHX28_1.next = "toilet"
SHX27_1.surface = SHX28_1
SHX28_1 = {}
SHX28_1.init = SHX21_1
SHX28_1.tick = SHX22_1
SHX28_1.finish = SHX23_1
SHX28_1.next = "bin"
SHX27_1.toilet = SHX28_1
SHX28_1 = {}
SHX28_1.init = SHX24_1
SHX28_1.tick = SHX25_1
SHX28_1.finish = SHX26_1
SHX28_1.next = "ground"
SHX27_1.bin = SHX28_1
SHX28_1 = CMG
SHX28_1 = SHX28_1.registerBusinessJob
SHX29_1 = "cleaner"
SHX30_1 = SHX14_1
SHX31_1 = "ground"
SHX32_1 = SHX27_1
SHX33_1 = nil
SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1)
