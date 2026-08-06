-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = 0
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = -933.89794921875
SHX5_1 = -808.49810791016
SHX6_1 = 15.908717155457
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX2_1.carName = "BMX"
SHX2_1.carID = "bmx"
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 1253.1735839844
SHX6_1 = 4804.3740234375
SHX7_1 = -39.328578948975
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.carName = "Caddy"
SHX3_1.carID = "caddy3"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX2_1 = AddEventHandler
SHX3_1 = "CMG:onClientSpawn"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  if SHX1_2 then
    function SHX2_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      SHX1_3 = PlaySound
      SHX2_3 = -1
      SHX3_3 = "Hit"
      SHX4_3 = "RESPAWN_SOUNDSET"
      SHX5_3 = false
      SHX6_3 = 0
      SHX7_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX1_3 = drawNativeNotification
      SHX2_3 = "Press ~INPUT_PICKUP~ spawn a "
      SHX4_3 = SHX0_3.skateparkId
      SHX3_3 = SHX1_1
      SHX3_3 = SHX3_3[SHX4_3]
      SHX3_3 = SHX3_3.carName
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3(SHX2_3)
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
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 1
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerVehicle
        SHX1_3 = SHX1_3()
        if 0 == SHX1_3 then
          SHX1_3 = GetGameTimer
          SHX1_3 = SHX1_3()
          SHX2_3 = SHX0_1
          SHX1_3 = SHX1_3 - SHX2_3
          SHX2_3 = 5000
          if SHX1_3 > SHX2_3 then
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.loadModel
            SHX3_3 = SHX0_3.skateparkId
            SHX2_3 = SHX1_1
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3 = SHX2_3.carID
            SHX1_3 = SHX1_3(SHX2_3)
            SHX2_3 = CMG
            SHX2_3 = SHX2_3.requestEntitySpawn
            SHX3_3 = "skatepark"
            SHX4_3 = SHX0_3.skateparkId
            SHX2_3(SHX3_3, SHX4_3)
            SHX2_3 = CreateVehicle
            SHX3_3 = SHX1_3
            SHX5_3 = SHX0_3.skateparkId
            SHX4_3 = SHX1_1
            SHX4_3 = SHX4_3[SHX5_3]
            SHX4_3 = SHX4_3.position
            SHX4_3 = SHX4_3.x
            SHX6_3 = SHX0_3.skateparkId
            SHX5_3 = SHX1_1
            SHX5_3 = SHX5_3[SHX6_3]
            SHX5_3 = SHX5_3.position
            SHX5_3 = SHX5_3.y
            SHX7_3 = SHX0_3.skateparkId
            SHX6_3 = SHX1_1
            SHX6_3 = SHX6_3[SHX7_3]
            SHX6_3 = SHX6_3.position
            SHX6_3 = SHX6_3.z
            SHX6_3 = SHX6_3 + 0.5
            SHX7_3 = 0.0
            SHX8_3 = true
            SHX9_3 = false
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
            SHX3_3 = CMG
            SHX3_3 = SHX3_3.initLocalVehicle
            SHX4_3 = SHX2_3
            SHX3_3(SHX4_3)
            SHX3_3 = SetVehicleOnGroundProperly
            SHX4_3 = SHX2_3
            SHX3_3(SHX4_3)
            SHX3_3 = SetEntityInvincible
            SHX4_3 = SHX2_3
            SHX5_3 = false
            SHX3_3(SHX4_3, SHX5_3)
            SHX3_3 = SetPedIntoVehicle
            SHX4_3 = CMG
            SHX4_3 = SHX4_3.getPlayerPed
            SHX4_3 = SHX4_3()
            SHX5_3 = SHX2_3
            SHX6_3 = -1
            SHX3_3(SHX4_3, SHX5_3, SHX6_3)
            SHX3_3 = SetModelAsNoLongerNeeded
            SHX4_3 = SHX1_3
            SHX3_3(SHX4_3)
            SHX3_3 = GetGameTimer
            SHX3_3 = SHX3_3()
            SHX0_1 = SHX3_3
          else
            SHX1_3 = notify
            SHX2_3 = "~r~Please wait before taking out another "
            SHX4_3 = SHX0_3.skateparkId
            SHX3_3 = SHX1_1
            SHX3_3 = SHX3_3[SHX4_3]
            SHX3_3 = SHX3_3.carName
            SHX2_3 = SHX2_3 .. SHX3_3
            SHX1_3(SHX2_3)
          end
        end
      end
    end
    SHX5_2 = pairs
    SHX6_2 = SHX1_1
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createArea
      SHX12_2 = "skatepark_"
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX13_2 = SHX10_2.position
      SHX14_2 = 1.5
      SHX15_2 = 6
      SHX16_2 = SHX2_2
      SHX17_2 = SHX3_2
      SHX18_2 = SHX4_2
      SHX19_2 = {}
      SHX19_2.skateparkId = SHX9_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.addMarker
      SHX12_2 = SHX10_2.position
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX10_2.position
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX10_2.position
      SHX14_2 = SHX14_2.z
      SHX15_2 = 1.0
      SHX16_2 = 1.0
      SHX17_2 = 1.0
      SHX18_2 = 255
      SHX19_2 = 0
      SHX20_2 = 0
      SHX21_2 = 170
      SHX22_2 = 50
      SHX23_2 = 38
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    end
  end
end
SHX2_1(SHX3_1, SHX4_1)
