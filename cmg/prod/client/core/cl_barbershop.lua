-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = {}
SHX1_1 = vector3
SHX2_1 = -815.59008789063
SHX3_1 = -182.16806030273
SHX4_1 = 37.568920135498
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = vector3
SHX3_1 = 139.21583557129
SHX4_1 = -1708.9689941406
SHX5_1 = 29.301620483398
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = vector3
SHX4_1 = -1281.9802246094
SHX5_1 = -1119.6861572266
SHX6_1 = 7.0001249313354
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = vector3
SHX5_1 = 1934.115234375
SHX6_1 = 3730.7399902344
SHX7_1 = 32.854434967041
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = vector3
SHX6_1 = 1211.0759277344
SHX7_1 = -475.00064086914
SHX8_1 = 66.218032836914
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = vector3
SHX7_1 = -34.97777557373
SHX8_1 = -150.9037322998
SHX9_1 = 57.086517333984
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = vector3
SHX8_1 = -280.37301635742
SHX9_1 = 6227.017578125
SHX10_1 = 31.705526351929
SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
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
SHX1_1 = AddEventHandler
SHX2_1 = "CMG:onClientSpawn"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX0_3 = drawNativeNotification
      SHX1_3 = "Press ~INPUT_PICKUP~ to get a haircut."
      SHX0_3(SHX1_3)
      SHX0_3 = PlaySound
      SHX1_3 = -1
      SHX2_3 = "SELECT"
      SHX3_3 = "HUD_MINI_GAME_SOUNDSET"
      SHX4_3 = false
      SHX5_3 = 0
      SHX6_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
      
      local SHX0_3, SHX1_3, SHX2_3
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 1
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = TriggerEvent
        SHX1_3 = "b0ae230dba"
        SHX0_3(SHX1_3)
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX0_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "barbershop_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.x
      SHX13_2 = SHX10_2.y
      SHX14_2 = SHX10_2.z
      SHX14_2 = SHX14_2 - 0.2
      SHX15_2 = 0.5
      SHX16_2 = 0.5
      SHX17_2 = 0.5
      SHX18_2 = 0
      SHX19_2 = 50
      SHX20_2 = 255
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 20
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
end
SHX1_1(SHX2_1, SHX3_1)
