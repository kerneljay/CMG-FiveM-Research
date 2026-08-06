-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = 127.98108673096
SHX4_1 = 290.15972900391
SHX5_1 = 110.05869293213
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = 50.0
SHX4_1 = 189
SHX5_1 = "Usual Suspect Gang"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = -287.86434936523
SHX5_1 = -927.96563720703
SHX6_1 = 30.989921569824
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = 50.0
SHX5_1 = 187
SHX6_1 = "Marketplace"
SHX7_1 = 161
SHX8_1 = 141.0
SHX9_1 = 112.0
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2057.8974609375
SHX6_1 = 5107.5805664062
SHX7_1 = 41.957500457764
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = 42.0
SHX6_1 = 205
SHX7_1 = "Lost MC"
SHX8_1 = 130
SHX9_1 = 140.0
SHX10_1 = 95.0
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = -199.15863037109
SHX7_1 = -1305.1937255859
SHX8_1 = 30.882265090942
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = 58.0
SHX7_1 = 188
SHX8_1 = "Hood Community"
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX4_1[4] = SHX8_1
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = -49.460006713867
SHX8_1 = 346.0344543457
SHX9_1 = 114.64958953857
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = 50.0
SHX8_1 = 197
SHX9_1 = "Sixth Sense Mob"
SHX10_1 = 155
SHX11_1 = 170.0
SHX12_1 = 80.0
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = -1039.9621582031
SHX9_1 = -1386.79296875
SHX10_1 = 5.3323001862
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = 86.0
SHX9_1 = 181
SHX10_1 = "LCF"
SHX11_1 = 167
SHX12_1 = 47.26
SHX13_1 = 157.07
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX6_1[4] = SHX10_1
SHX6_1[5] = SHX11_1
SHX6_1[6] = SHX12_1
SHX6_1[7] = SHX13_1
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = 2445.666015625
SHX10_1 = 4975.6484375
SHX11_1 = 52.111328125
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = 50.0
SHX10_1 = 184
SHX11_1 = "Redline"
SHX12_1 = 133
SHX13_1 = 100.0
SHX14_1 = 100.0
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX7_1[6] = SHX13_1
SHX7_1[7] = SHX14_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 2402.9499511719
SHX11_1 = 3088.978515625
SHX12_1 = 48.78178024292
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = 80.0
SHX11_1 = 685
SHX12_1 = "Roleplay Zone"
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX9_1 = {}
SHX10_1 = vector3
SHX11_1 = 3321.3889160156
SHX12_1 = 5156.1772460938
SHX13_1 = 18.380844116211
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = 80.0
SHX12_1 = 685
SHX13_1 = "Roleplay Zone"
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX9_1[4] = SHX13_1
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = -1086.5549316406
SHX13_1 = -827.99389648438
SHX14_1 = 19.511960983276
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = 80.0
SHX13_1 = 685
SHX14_1 = "Roleplay Zone"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX10_1[3] = SHX13_1
SHX10_1[4] = SHX14_1
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = -1661.9858398438
SHX14_1 = -3154.4782714844
SHX15_1 = 13.502897262573
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = 80.0
SHX14_1 = 685
SHX15_1 = "Roleplay Zone"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX11_1[4] = SHX15_1
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = -1686.3610839844
SHX15_1 = -293.0182800293
SHX16_1 = 51.891357421875
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = 80.0
SHX15_1 = 685
SHX16_1 = "Roleplay Zone"
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX12_1[4] = SHX16_1
SHX13_1 = {}
SHX14_1 = vector3
SHX15_1 = -457.80532836914
SHX16_1 = -1709.3931884766
SHX17_1 = 19.815269470215
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = 80.0
SHX16_1 = 685
SHX17_1 = "Roleplay Zone"
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
SHX0_1[9] = SHX9_1
SHX0_1[10] = SHX10_1
SHX0_1[11] = SHX11_1
SHX0_1[12] = SHX12_1
SHX0_1[13] = SHX13_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.name = 934417225
SHX3_1 = vector3
SHX4_1 = -290.36880493164
SHX5_1 = -922.52156982422
SHX6_1 = 33.551481246948
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX2_1.heading = 160.39868164062
SHX2_1.distance = 400.0
SHX1_1[1] = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2069.1391601562
SHX6_1 = 5117.2578125
SHX7_1 = 50.99206161499
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.radius = 8.8
SHX2_1[1] = SHX3_1
SHX3_1 = false
SHX4_1 = {}
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX3_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 5000
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = SHX3_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = drawNativeText
      SHX2_3 = "~q~Entered a Notable zone"
      SHX1_3(SHX2_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX3_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 5000
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = SHX3_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = drawNativeText
      SHX2_3 = "~q~Entered a Roleplay zone"
      SHX1_3(SHX2_3)
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX3_1 = SHX0_2
end
SHX9_1 = pairs
SHX10_1 = SHX0_1
SHX9_1, SHX10_1, SHX11_1, SHX12_1 = SHX9_1(SHX10_1)
for SHX13_1, SHX14_1 in SHX9_1, SHX10_1, SHX11_1, SHX12_1 do
  SHX15_1 = 0
  SHX16_1 = SHX14_1[5]
  if SHX16_1 then
    SHX16_1 = SHX14_1[6]
    if SHX16_1 then
      SHX16_1 = SHX14_1[7]
      if SHX16_1 then
        SHX16_1 = AddBlipForArea
        SHX17_1 = SHX14_1[1]
        SHX17_1 = SHX17_1.x
        SHX18_1 = SHX14_1[1]
        SHX18_1 = SHX18_1.y
        SHX19_1 = SHX14_1[1]
        SHX19_1 = SHX19_1.z
        SHX20_1 = SHX14_1[6]
        SHX21_1 = SHX14_1[7]
        SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1)
        SHX15_1 = SHX16_1
        SHX16_1 = SetBlipRotation
        SHX17_1 = SHX15_1
        SHX18_1 = SHX14_1[5]
        SHX16_1(SHX17_1, SHX18_1)
        SHX16_1 = SetBlipSprite
        SHX17_1 = SHX15_1
        SHX18_1 = 608
        SHX16_1(SHX17_1, SHX18_1)
    end
  end
  else
    SHX16_1 = AddBlipForRadius
    SHX17_1 = SHX14_1[1]
    SHX17_1 = SHX17_1.x
    SHX18_1 = SHX14_1[1]
    SHX18_1 = SHX18_1.y
    SHX19_1 = SHX14_1[1]
    SHX19_1 = SHX19_1.z
    SHX20_1 = SHX14_1[2]
    SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
    SHX15_1 = SHX16_1
  end
  SHX16_1 = SetBlipColour
  SHX17_1 = SHX15_1
  SHX18_1 = 27
  SHX16_1(SHX17_1, SHX18_1)
  SHX16_1 = SetBlipAlpha
  SHX17_1 = SHX15_1
  SHX18_1 = 180
  SHX16_1(SHX17_1, SHX18_1)
  SHX16_1 = SHX14_1[4]
  if "Roleplay Zone" == SHX16_1 then
    SHX16_1 = tCMG
    SHX16_1 = SHX16_1.addBlip
    SHX17_1 = SHX14_1[1]
    SHX17_1 = SHX17_1.x
    SHX18_1 = SHX14_1[1]
    SHX18_1 = SHX18_1.y
    SHX19_1 = SHX14_1[1]
    SHX19_1 = SHX19_1.z
    SHX20_1 = SHX14_1[3]
    SHX21_1 = 1
    SHX22_1 = SHX14_1[4]
    SHX23_1 = 1.0
    SHX24_1 = false
    SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
    SHX16_1 = CMG
    SHX16_1 = SHX16_1.createArea
    SHX17_1 = "notable_zone_"
    SHX18_1 = tostring
    SHX19_1 = SHX13_1
    SHX18_1 = SHX18_1(SHX19_1)
    SHX17_1 = SHX17_1 .. SHX18_1
    SHX18_1 = SHX14_1[1]
    SHX19_1 = SHX14_1[2]
    SHX20_1 = 100.0
    SHX21_1 = SHX7_1
    SHX22_1 = SHX8_1
    function SHX23_1()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_2, SHX1_2
    end
    SHX24_1 = {}
    SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
  else
    SHX16_1 = tCMG
    SHX16_1 = SHX16_1.addBlip
    SHX17_1 = SHX14_1[1]
    SHX17_1 = SHX17_1.x
    SHX18_1 = SHX14_1[1]
    SHX18_1 = SHX18_1.y
    SHX19_1 = SHX14_1[1]
    SHX19_1 = SHX19_1.z
    SHX20_1 = SHX14_1[3]
    SHX21_1 = 0
    SHX22_1 = SHX14_1[4]
    SHX23_1 = 1.0
    SHX24_1 = false
    SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
    SHX16_1 = CMG
    SHX16_1 = SHX16_1.createArea
    SHX17_1 = "notable_zone_"
    SHX18_1 = tostring
    SHX19_1 = SHX13_1
    SHX18_1 = SHX18_1(SHX19_1)
    SHX17_1 = SHX17_1 .. SHX18_1
    SHX18_1 = SHX14_1[1]
    SHX19_1 = SHX14_1[2]
    SHX20_1 = 100.0
    SHX21_1 = SHX5_1
    SHX22_1 = SHX6_1
    function SHX23_1()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_2, SHX1_2
    end
    SHX24_1 = {}
    SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2.info
  SHX2_2 = SHX2_2.name
  SHX1_2(SHX2_2)
  SHX1_2 = CreateObjectNoOffset
  SHX2_2 = SHX0_2.info
  SHX2_2 = SHX2_2.name
  SHX3_2 = SHX0_2.info
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.info
  SHX4_2 = SHX4_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.info
  SHX5_2 = SHX5_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.info
  SHX4_2 = SHX4_2.heading
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = SHX0_2.info
  SHX3_2 = SHX3_2.name
  SHX2_2(SHX3_2)
  SHX2_2 = SetEntityLodDist
  SHX3_2 = SHX1_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX0_2.info
  SHX5_2 = SHX5_2.distance
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX0_2.index
  SHX2_2 = SHX4_1
  SHX2_2[SHX3_2] = SHX1_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
    SHX3_2 = SHX0_2.index
    SHX2_2 = SHX4_1
    SHX2_2[SHX3_2] = nil
  end
end
SHX11_1 = pairs
SHX12_1 = SHX1_1
SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX11_1(SHX12_1)
for SHX15_1, SHX16_1 in SHX11_1, SHX12_1, SHX13_1, SHX14_1 do
  SHX17_1 = CMG
  SHX17_1 = SHX17_1.createArea
  SHX18_1 = "gang_model_"
  SHX19_1 = tostring
  SHX20_1 = SHX15_1
  SHX19_1 = SHX19_1(SHX20_1)
  SHX18_1 = SHX18_1 .. SHX19_1
  SHX19_1 = SHX16_1.position
  SHX20_1 = SHX16_1.distance
  SHX21_1 = SHX16_1.distance
  SHX22_1 = SHX9_1
  SHX23_1 = SHX10_1
  function SHX24_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX25_1 = {}
  SHX25_1.index = SHX15_1
  SHX25_1.info = SHX16_1
  SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
end
function SHX11_1()
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
SHX12_1 = pairs
SHX13_1 = SHX2_1
SHX12_1, SHX13_1, SHX14_1, SHX15_1 = SHX12_1(SHX13_1)
for SHX16_1, SHX17_1 in SHX12_1, SHX13_1, SHX14_1, SHX15_1 do
  SHX18_1 = CMG
  SHX18_1 = SHX18_1.createArea
  SHX19_1 = "no_climb_"
  SHX20_1 = tostring
  SHX21_1 = SHX16_1
  SHX20_1 = SHX20_1(SHX21_1)
  SHX19_1 = SHX19_1 .. SHX20_1
  SHX20_1 = SHX17_1.position
  SHX21_1 = SHX17_1.radius
  SHX22_1 = SHX17_1.radius
  function SHX23_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  function SHX24_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX25_1 = SHX11_1
  SHX18_1(SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
end
